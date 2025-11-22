.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.extern ?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z
.extern _jmp_addr_0x00465ab0
.extern _jmp_addr_0x00479eb0
.extern _jmp_addr_0x0047ab90
.extern _jmp_addr_0x0047b140
.extern _jmp_addr_0x004f6850
.extern _jmp_addr_0x004f6b60
.extern _jmp_addr_0x004f6e30
.extern _jmp_addr_0x004f6f10
.extern _jmp_addr_0x0050c3d0
.extern _jmp_addr_0x00519320
.extern _jmp_addr_0x005198f0
.extern ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z
.extern _jmp_addr_0x00530510
.extern ?GetFlockPos@Flock@@QAEPAUMapCoords@@XZ
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?ClearAllText@HelpSystem@@QAEXXZ
.extern _jmp_addr_0x005c5f90
.extern _jmp_addr_0x005c6100
.extern _jmp_addr_0x005c64e0
.extern @SetWideScreen__10HelpSystemFiUl@16
.extern ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z
.extern _jmp_addr_0x005e6540
.extern @SetState__12LivingActionFUlUc@16
.extern @SetupMoveToPos__6LivingFRC9MapCoordsUc@13
.extern @GetNearestTown__9MapCoordsCFf@12
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern _jmp_addr_0x00604370
.extern @GetLHPoint__9MapCoordsCFv@12
.extern @AreWeThere__13MobileWallHugFf@12
.extern _jmp_addr_0x00658510
.extern _jmp_addr_0x00681230
.extern _jmp_addr_0x00681260
.extern _jmp_addr_0x006d6cc0
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?ScriptWarningMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x006f69f0
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f6bd0
.extern _jmp_addr_0x006f6d00
.extern _jmp_addr_0x0070d1a0
.extern _jmp_addr_0x0070d220
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern _jmp_addr_0x0073e600
.extern _jmp_addr_0x0073e6e0
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern _jmp_addr_0x0074cde0
.extern _jmp_addr_0x00774550
.extern @GetTotemPos__11WorshipSiteFv@12
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0081f1a0
.extern _jmp_addr_0x0081f1d0
.extern _CHAR2WCHAR__FPc

.globl _jmp_addr_0x006f6fa0
.globl _jmp_addr_0x006f7280
.globl _jmp_addr_0x006f72e0
.globl _jmp_addr_0x006f8260
.globl _jmp_addr_0x006f82c0
.globl _jmp_addr_0x006f82e0

.globl _globl_ct_0x006f7b70
.globl _globl_ct_0x006f7ba0
.globl _globl_ct_0x006f7bc0

start_0x006f6fa0_0x006f94a0:
// Snippet: asm, [0x006f6fa0, 0x006f948f)
_jmp_addr_0x006f6fa0:    push               esi                                           // 0x006f6fa0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f6fa1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f6fa5    8b06
                         push               edi                                           // 0x006f6fa7    57
                         mov.s              ecx, esi                                      // 0x006f6fa8    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006f6faa    ff90e8040000
                         cmp                eax, dword ptr [esp + 0x10]                   // 0x006f6fb0    3b442410
                         {disp8} jne        _jmp_addr_0x006f6fe6                          // 0x006f6fb4    7530
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x006f6fb6    8b7c2414
                         cmp                edi, 0x00001388                               // 0x006f6fba    81ff88130000
                         {disp8} je         _jmp_addr_0x006f6fde                          // 0x006f6fc0    741c
                         push               esi                                           // 0x006f6fc2    56
                         call               _jmp_addr_0x006f6d00                          // 0x006f6fc3    e838fdffff
                         add                esp, 0x04                                     // 0x006f6fc8    83c404
                         cmp                eax, 0x0000270f                               // 0x006f6fcb    3d0f270000
                         {disp8} je         _jmp_addr_0x006f6fe6                          // 0x006f6fd0    7414
                         xor.s              ecx, ecx                                      // 0x006f6fd2    33c9
                         cmp.s              edi, eax                                      // 0x006f6fd4    3bf8
                         sete               cl                                            // 0x006f6fd6    0f94c1
                         pop                edi                                           // 0x006f6fd9    5f
                         pop                esi                                           // 0x006f6fda    5e
                         mov.s              eax, ecx                                      // 0x006f6fdb    8bc1
                         ret                                                              // 0x006f6fdd    c3
_jmp_addr_0x006f6fde:    pop                edi                                           // 0x006f6fde    5f
                         mov                eax, 0x00000001                               // 0x006f6fdf    b801000000
                         pop                esi                                           // 0x006f6fe4    5e
                         ret                                                              // 0x006f6fe5    c3
_jmp_addr_0x006f6fe6:    pop                edi                                           // 0x006f6fe6    5f
                         xor.s              eax, eax                                      // 0x006f6fe7    33c0
                         pop                esi                                           // 0x006f6fe9    5e
                         ret                                                              // 0x006f6fea    c3
                         nop                                                              // 0x006f6feb    90
                         nop                                                              // 0x006f6fec    90
                         nop                                                              // 0x006f6fed    90
                         nop                                                              // 0x006f6fee    90
                         nop                                                              // 0x006f6fef    90
_jmp_addr_0x006f6ff0:    push               esi                                           // 0x006f6ff0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f6ff1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f6ff5    8b06
                         mov.s              ecx, esi                                      // 0x006f6ff7    8bce
                         call               dword ptr [eax + 0x4a4]                       // 0x006f6ff9    ff90a4040000
                         test               al, al                                        // 0x006f6fff    84c0
                         {disp8} je         _jmp_addr_0x006f7021                          // 0x006f7001    741e
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7003    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7007    8b54240c
                         push               ecx                                           // 0x006f700b    51
                         push               edx                                           // 0x006f700c    52
                         push               esi                                           // 0x006f700d    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f700e    e88dffffff
                         add                esp, 0x0c                                     // 0x006f7013    83c40c
                         test               eax, eax                                      // 0x006f7016    85c0
                         {disp8} je         _jmp_addr_0x006f7021                          // 0x006f7018    7407
                         mov                eax, 0x00000001                               // 0x006f701a    b801000000
                         pop                esi                                           // 0x006f701f    5e
                         ret                                                              // 0x006f7020    c3
_jmp_addr_0x006f7021:    xor.s              eax, eax                                      // 0x006f7021    33c0
                         pop                esi                                           // 0x006f7023    5e
                         ret                                                              // 0x006f7024    c3
                         nop                                                              // 0x006f7025    90
                         nop                                                              // 0x006f7026    90
                         nop                                                              // 0x006f7027    90
                         nop                                                              // 0x006f7028    90
                         nop                                                              // 0x006f7029    90
                         nop                                                              // 0x006f702a    90
                         nop                                                              // 0x006f702b    90
                         nop                                                              // 0x006f702c    90
                         nop                                                              // 0x006f702d    90
                         nop                                                              // 0x006f702e    90
                         nop                                                              // 0x006f702f    90
_jmp_addr_0x006f7030:    push               esi                                           // 0x006f7030    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7031    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7035    8b06
                         mov.s              ecx, esi                                      // 0x006f7037    8bce
                         call               dword ptr [eax + 0x4a4]                       // 0x006f7039    ff90a4040000
                         test               al, al                                        // 0x006f703f    84c0
                         {disp8} jne        _jmp_addr_0x006f7061                          // 0x006f7041    751e
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7043    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7047    8b54240c
                         push               ecx                                           // 0x006f704b    51
                         push               edx                                           // 0x006f704c    52
                         push               esi                                           // 0x006f704d    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f704e    e84dffffff
                         add                esp, 0x0c                                     // 0x006f7053    83c40c
                         test               eax, eax                                      // 0x006f7056    85c0
                         {disp8} je         _jmp_addr_0x006f7061                          // 0x006f7058    7407
                         mov                eax, 0x00000001                               // 0x006f705a    b801000000
                         pop                esi                                           // 0x006f705f    5e
                         ret                                                              // 0x006f7060    c3
_jmp_addr_0x006f7061:    xor.s              eax, eax                                      // 0x006f7061    33c0
                         pop                esi                                           // 0x006f7063    5e
                         ret                                                              // 0x006f7064    c3
                         nop                                                              // 0x006f7065    90
                         nop                                                              // 0x006f7066    90
                         nop                                                              // 0x006f7067    90
                         nop                                                              // 0x006f7068    90
                         nop                                                              // 0x006f7069    90
                         nop                                                              // 0x006f706a    90
                         nop                                                              // 0x006f706b    90
                         nop                                                              // 0x006f706c    90
                         nop                                                              // 0x006f706d    90
                         nop                                                              // 0x006f706e    90
                         nop                                                              // 0x006f706f    90
_jmp_addr_0x006f7070:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7070    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f7074    8b4c2408
                         sub                esp, 0x0c                                     // 0x006f7078    83ec0c
                         push               esi                                           // 0x006f707b    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x006f707c    8b742414
                         push               eax                                           // 0x006f7080    50
                         push               ecx                                           // 0x006f7081    51
                         push               esi                                           // 0x006f7082    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f7083    e818ffffff
                         add                esp, 0x0c                                     // 0x006f7088    83c40c
                         test               eax, eax                                      // 0x006f708b    85c0
                         {disp8} je         _jmp_addr_0x006f70f7                          // 0x006f708d    7468
                         mov                edx, dword ptr [esi]                          // 0x006f708f    8b16
                         mov.s              ecx, esi                                      // 0x006f7091    8bce
                         call               dword ptr [edx + 0x304]                       // 0x006f7093    ff9204030000
                         test               eax, eax                                      // 0x006f7099    85c0
                         {disp8} je         _jmp_addr_0x006f70bc                          // 0x006f709b    741f
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f709d    8d442404
                         push               eax                                           // 0x006f70a1    50
                         mov.s              ecx, esi                                      // 0x006f70a2    8bce
                         call               @GetTotemPos__11WorshipSiteFv@12              // 0x006f70a4    e8875e0800
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f70a9    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f70af    8b9190002500
                         push               eax                                           // 0x006f70b5    50
                         add                edx, 0x14                                     // 0x006f70b6    83c214
                         push               edx                                           // 0x006f70b9    52
                         {disp8} jmp        _jmp_addr_0x006f70cf                          // 0x006f70ba    eb13
_jmp_addr_0x006f70bc:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f70bc    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f70c1    8b8890002500
                         add                esi, 0x14                                     // 0x006f70c7    83c614
                         push               esi                                           // 0x006f70ca    56
                         add                ecx, 0x14                                     // 0x006f70cb    83c114
                         push               ecx                                           // 0x006f70ce    51
_jmp_addr_0x006f70cf:    call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f70cf    e89c5c0500
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f70d4    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f70da    8b8290002500
                         {disp8} fcomp      dword ptr [eax + 0x20]                        // 0x006f70e0    d85820
                         add                esp, 0x08                                     // 0x006f70e3    83c408
                         fnstsw             ax                                            // 0x006f70e6    dfe0
                         test               ah, 0x41                                      // 0x006f70e8    f6c441
                         {disp8} je         _jmp_addr_0x006f70f7                          // 0x006f70eb    740a
                         mov                eax, 0x00000001                               // 0x006f70ed    b801000000
                         pop                esi                                           // 0x006f70f2    5e
                         add                esp, 0x0c                                     // 0x006f70f3    83c40c
                         ret                                                              // 0x006f70f6    c3
_jmp_addr_0x006f70f7:    xor.s              eax, eax                                      // 0x006f70f7    33c0
                         pop                esi                                           // 0x006f70f9    5e
                         add                esp, 0x0c                                     // 0x006f70fa    83c40c
                         ret                                                              // 0x006f70fd    c3
                         nop                                                              // 0x006f70fe    90
                         nop                                                              // 0x006f70ff    90
                         sub                esp, 0x0c                                     // 0x006f7100    83ec0c
                         push               esi                                           // 0x006f7103    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x006f7104    8b742414
                         mov                eax, dword ptr [esi]                          // 0x006f7108    8b06
                         push               0x0                                           // 0x006f710a    6a00
                         mov.s              ecx, esi                                      // 0x006f710c    8bce
                         call               dword ptr [eax + 0x298]                       // 0x006f710e    ff9098020000
                         test               eax, eax                                      // 0x006f7114    85c0
                         {disp8} je         _jmp_addr_0x006f7180                          // 0x006f7116    7468
                         mov                edx, dword ptr [esi]                          // 0x006f7118    8b16
                         mov.s              ecx, esi                                      // 0x006f711a    8bce
                         call               dword ptr [edx + 0x304]                       // 0x006f711c    ff9204030000
                         test               eax, eax                                      // 0x006f7122    85c0
                         {disp8} je         _jmp_addr_0x006f7145                          // 0x006f7124    741f
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f7126    8d442404
                         push               eax                                           // 0x006f712a    50
                         mov.s              ecx, esi                                      // 0x006f712b    8bce
                         call               @GetTotemPos__11WorshipSiteFv@12              // 0x006f712d    e8fe5d0800
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7132    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f7138    8b9190002500
                         push               eax                                           // 0x006f713e    50
                         add                edx, 0x14                                     // 0x006f713f    83c214
                         push               edx                                           // 0x006f7142    52
                         {disp8} jmp        _jmp_addr_0x006f7158                          // 0x006f7143    eb13
_jmp_addr_0x006f7145:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f7145    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f714a    8b8890002500
                         add                esi, 0x14                                     // 0x006f7150    83c614
                         push               esi                                           // 0x006f7153    56
                         add                ecx, 0x14                                     // 0x006f7154    83c114
                         push               ecx                                           // 0x006f7157    51
_jmp_addr_0x006f7158:    call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f7158    e8135c0500
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f715d    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f7163    8b8290002500
                         {disp8} fcomp      dword ptr [eax + 0x20]                        // 0x006f7169    d85820
                         add                esp, 0x08                                     // 0x006f716c    83c408
                         fnstsw             ax                                            // 0x006f716f    dfe0
                         test               ah, 0x41                                      // 0x006f7171    f6c441
                         {disp8} je         _jmp_addr_0x006f7180                          // 0x006f7174    740a
                         mov                eax, 0x00000001                               // 0x006f7176    b801000000
                         pop                esi                                           // 0x006f717b    5e
                         add                esp, 0x0c                                     // 0x006f717c    83c40c
                         ret                                                              // 0x006f717f    c3
_jmp_addr_0x006f7180:    xor.s              eax, eax                                      // 0x006f7180    33c0
                         pop                esi                                           // 0x006f7182    5e
                         add                esp, 0x0c                                     // 0x006f7183    83c40c
                         ret                                                              // 0x006f7186    c3
                         nop                                                              // 0x006f7187    90
                         nop                                                              // 0x006f7188    90
                         nop                                                              // 0x006f7189    90
                         nop                                                              // 0x006f718a    90
                         nop                                                              // 0x006f718b    90
                         nop                                                              // 0x006f718c    90
                         nop                                                              // 0x006f718d    90
                         nop                                                              // 0x006f718e    90
                         nop                                                              // 0x006f718f    90
_jmp_addr_0x006f7190:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7190    8b44240c
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f7194    8b4c2408
                         sub                esp, 0x0c                                     // 0x006f7198    83ec0c
                         push               esi                                           // 0x006f719b    56
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x006f719c    8b742414
                         push               eax                                           // 0x006f71a0    50
                         push               ecx                                           // 0x006f71a1    51
                         push               esi                                           // 0x006f71a2    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f71a3    e8f8fdffff
                         add                esp, 0x0c                                     // 0x006f71a8    83c40c
                         test               eax, eax                                      // 0x006f71ab    85c0
                         {disp8} je         _jmp_addr_0x006f7217                          // 0x006f71ad    7468
                         mov                edx, dword ptr [esi]                          // 0x006f71af    8b16
                         mov.s              ecx, esi                                      // 0x006f71b1    8bce
                         call               dword ptr [edx + 0x304]                       // 0x006f71b3    ff9204030000
                         test               eax, eax                                      // 0x006f71b9    85c0
                         {disp8} je         _jmp_addr_0x006f71dc                          // 0x006f71bb    741f
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f71bd    8d442404
                         push               eax                                           // 0x006f71c1    50
                         mov.s              ecx, esi                                      // 0x006f71c2    8bce
                         call               @GetTotemPos__11WorshipSiteFv@12              // 0x006f71c4    e8675d0800
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f71c9    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f71cf    8b9190002500
                         push               eax                                           // 0x006f71d5    50
                         add                edx, 0x14                                     // 0x006f71d6    83c214
                         push               edx                                           // 0x006f71d9    52
                         {disp8} jmp        _jmp_addr_0x006f71ef                          // 0x006f71da    eb13
_jmp_addr_0x006f71dc:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f71dc    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f71e1    8b8890002500
                         add                esi, 0x14                                     // 0x006f71e7    83c614
                         push               esi                                           // 0x006f71ea    56
                         add                ecx, 0x14                                     // 0x006f71eb    83c114
                         push               ecx                                           // 0x006f71ee    51
_jmp_addr_0x006f71ef:    call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f71ef    e87c5b0500
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f71f4    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f71fa    8b8290002500
                         {disp8} fcomp      dword ptr [eax + 0x20]                        // 0x006f7200    d85820
                         add                esp, 0x08                                     // 0x006f7203    83c408
                         fnstsw             ax                                            // 0x006f7206    dfe0
                         test               ah, 0x41                                      // 0x006f7208    f6c441
                         {disp8} jne        _jmp_addr_0x006f7217                          // 0x006f720b    750a
                         mov                eax, 0x00000001                               // 0x006f720d    b801000000
                         pop                esi                                           // 0x006f7212    5e
                         add                esp, 0x0c                                     // 0x006f7213    83c40c
                         ret                                                              // 0x006f7216    c3
_jmp_addr_0x006f7217:    xor.s              eax, eax                                      // 0x006f7217    33c0
                         pop                esi                                           // 0x006f7219    5e
                         add                esp, 0x0c                                     // 0x006f721a    83c40c
                         ret                                                              // 0x006f721d    c3
                         nop                                                              // 0x006f721e    90
                         nop                                                              // 0x006f721f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7220    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00250090]             // 0x006f7225    8b9090002500
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f722b    8b4c2404
                         push               esi                                           // 0x006f722f    56
                         add                edx, 0x14                                     // 0x006f7230    83c214
                         mov.s              eax, ecx                                      // 0x006f7233    8bc1
                         mov                esi, dword ptr [eax]                          // 0x006f7235    8b30
                         mov                dword ptr [edx], esi                          // 0x006f7237    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x006f7239    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x006f723c    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006f723f    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x006f7242    894208
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f7245    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f724b    8b8290002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f7251    8b542414
                         push               0x3f800000                                    // 0x006f7255    680000803f
                         push               edx                                           // 0x006f725a    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f725b    8b542414
                         {disp8} mov        dword ptr [eax + 0x20], 0x3f800000            // 0x006f725f    c740200000803f
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x006f7266    8b442418
                         push               eax                                           // 0x006f726a    50
                         push               edx                                           // 0x006f726b    52
                         call               _jmp_addr_0x00604370                          // 0x006f726c    e8ffd0f0ff
                         pop                esi                                           // 0x006f7271    5e
                         ret                                                              // 0x006f7272    c3
                         nop                                                              // 0x006f7273    90
                         nop                                                              // 0x006f7274    90
                         nop                                                              // 0x006f7275    90
                         nop                                                              // 0x006f7276    90
                         nop                                                              // 0x006f7277    90
                         nop                                                              // 0x006f7278    90
                         nop                                                              // 0x006f7279    90
                         nop                                                              // 0x006f727a    90
                         nop                                                              // 0x006f727b    90
                         nop                                                              // 0x006f727c    90
                         nop                                                              // 0x006f727d    90
                         nop                                                              // 0x006f727e    90
                         nop                                                              // 0x006f727f    90
_jmp_addr_0x006f7280:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f7280    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00250090]             // 0x006f7285    8b9090002500
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f728b    8b4c2404
                         push               esi                                           // 0x006f728f    56
                         add                edx, 0x14                                     // 0x006f7290    83c214
                         mov.s              eax, ecx                                      // 0x006f7293    8bc1
                         mov                esi, dword ptr [eax]                          // 0x006f7295    8b30
                         mov                dword ptr [edx], esi                          // 0x006f7297    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x006f7299    8b7004
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x006f729c    897204
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006f729f    8b4008
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x006f72a2    894208
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f72a5    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f72ab    8b8290002500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f72b1    8b542418
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x006f72b5    895020
                         mov.s              eax, edx                                      // 0x006f72b8    8bc2
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f72ba    8b542414
                         push               eax                                           // 0x006f72be    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006f72bf    8b442414
                         push               edx                                           // 0x006f72c3    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f72c4    8b542414
                         push               eax                                           // 0x006f72c8    50
                         push               edx                                           // 0x006f72c9    52
                         call               _jmp_addr_0x00604370                          // 0x006f72ca    e8a1d0f0ff
                         pop                esi                                           // 0x006f72cf    5e
                         ret                                                              // 0x006f72d0    c3
                         nop                                                              // 0x006f72d1    90
                         nop                                                              // 0x006f72d2    90
                         nop                                                              // 0x006f72d3    90
                         nop                                                              // 0x006f72d4    90
                         nop                                                              // 0x006f72d5    90
                         nop                                                              // 0x006f72d6    90
                         nop                                                              // 0x006f72d7    90
                         nop                                                              // 0x006f72d8    90
                         nop                                                              // 0x006f72d9    90
                         nop                                                              // 0x006f72da    90
                         nop                                                              // 0x006f72db    90
                         nop                                                              // 0x006f72dc    90
                         nop                                                              // 0x006f72dd    90
                         nop                                                              // 0x006f72de    90
                         nop                                                              // 0x006f72df    90
_jmp_addr_0x006f72e0:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f72e0    8b4c240c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f72e4    8b442408
                         push               esi                                           // 0x006f72e8    56
                         {disp32} mov       esi, dword ptr [ecx + 0x00000a50]             // 0x006f72e9    8bb1500a0000
                         push               edi                                           // 0x006f72ef    57
                         xor.s              edi, edi                                      // 0x006f72f0    33ff
                         test               esi, esi                                      // 0x006f72f2    85f6
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f72f4    89442410
                         {disp8} je         _jmp_addr_0x006f7331                          // 0x006f72f8    7437
                         push               ebx                                           // 0x006f72fa    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x006f72fb    8b5c2410
_jmp_addr_0x006f72ff:    {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x006f72ff    8d5614
                         push               edx                                           // 0x006f7302    52
                         push               ebx                                           // 0x006f7303    53
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f7304    e8675a0500
                         {disp8} fcom       dword ptr [esp + 0x1c]                        // 0x006f7309    d854241c
                         add                esp, 0x08                                     // 0x006f730d    83c408
                         fnstsw             ax                                            // 0x006f7310    dfe0
                         test               ah, 0x41                                      // 0x006f7312    f6c441
                         {disp8} je         _jmp_addr_0x006f731f                          // 0x006f7315    7408
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006f7317    d95c2414
                         mov.s              edi, esi                                      // 0x006f731b    8bfe
                         {disp8} jmp        _jmp_addr_0x006f7321                          // 0x006f731d    eb02
_jmp_addr_0x006f731f:    fstp               st(0)                                         // 0x006f731f    ddd8
_jmp_addr_0x006f7321:    {disp32} mov       esi, dword ptr [esi + 0x0000075c]             // 0x006f7321    8bb65c070000
                         test               esi, esi                                      // 0x006f7327    85f6
                         {disp8} jne        _jmp_addr_0x006f72ff                          // 0x006f7329    75d4
                         pop                ebx                                           // 0x006f732b    5b
                         mov.s              eax, edi                                      // 0x006f732c    8bc7
                         pop                edi                                           // 0x006f732e    5f
                         pop                esi                                           // 0x006f732f    5e
                         ret                                                              // 0x006f7330    c3
_jmp_addr_0x006f7331:    mov.s              eax, edi                                      // 0x006f7331    8bc7
                         pop                edi                                           // 0x006f7333    5f
                         pop                esi                                           // 0x006f7334    5e
                         ret                                                              // 0x006f7335    c3
                         nop                                                              // 0x006f7336    90
                         nop                                                              // 0x006f7337    90
                         nop                                                              // 0x006f7338    90
                         nop                                                              // 0x006f7339    90
                         nop                                                              // 0x006f733a    90
                         nop                                                              // 0x006f733b    90
                         nop                                                              // 0x006f733c    90
                         nop                                                              // 0x006f733d    90
                         nop                                                              // 0x006f733e    90
                         nop                                                              // 0x006f733f    90
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7340    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7344    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f7348    8b542408
                         push               0x41200000                                    // 0x006f734c    6800002041
                         push               eax                                           // 0x006f7351    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7352    8b44240c
                         push               ecx                                           // 0x006f7356    51
                         push               edx                                           // 0x006f7357    52
                         push               eax                                           // 0x006f7358    50
                         call               _jmp_addr_0x006f7370                          // 0x006f7359    e812000000
                         add                esp, 0x14                                     // 0x006f735e    83c414
                         ret                                                              // 0x006f7361    c3
                         nop                                                              // 0x006f7362    90
                         nop                                                              // 0x006f7363    90
                         nop                                                              // 0x006f7364    90
                         nop                                                              // 0x006f7365    90
                         nop                                                              // 0x006f7366    90
                         nop                                                              // 0x006f7367    90
                         nop                                                              // 0x006f7368    90
                         nop                                                              // 0x006f7369    90
                         nop                                                              // 0x006f736a    90
                         nop                                                              // 0x006f736b    90
                         nop                                                              // 0x006f736c    90
                         nop                                                              // 0x006f736d    90
                         nop                                                              // 0x006f736e    90
                         nop                                                              // 0x006f736f    90
_jmp_addr_0x006f7370:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006f7370    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f7374    8b4c2404
                         push               eax                                           // 0x006f7378    50
                         call               @GetNearestTown__9MapCoordsCFf@12             // 0x006f7379    e862adf0ff
                         ret                                                              // 0x006f737e    c3
                         nop                                                              // 0x006f737f    90
                         push               ebx                                           // 0x006f7380    53
                         push               esi                                           // 0x006f7381    56
                         {disp32} mov       esi, dword ptr [_CreatureList]                // 0x006f7382    8b35f8fcc500
                         test               esi, esi                                      // 0x006f7388    85f6
                         push               edi                                           // 0x006f738a    57
                         {disp8} je         _jmp_addr_0x006f73b4                          // 0x006f738b    7427
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x006f738d    8b5c2410
_jmp_addr_0x006f7391:    {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x006f7391    8b7e04
                         {disp8} lea        eax, dword ptr [edi + 0x14]                   // 0x006f7394    8d4714
                         push               eax                                           // 0x006f7397    50
                         push               ebx                                           // 0x006f7398    53
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f7399    e8d2590500
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f739e    d81d90a38a00
                         add                esp, 0x08                                     // 0x006f73a4    83c408
                         fnstsw             ax                                            // 0x006f73a7    dfe0
                         test               ah, 0x41                                      // 0x006f73a9    f6c441
                         {disp8} jne        _jmp_addr_0x006f73ba                          // 0x006f73ac    750c
                         mov                esi, dword ptr [esi]                          // 0x006f73ae    8b36
                         test               esi, esi                                      // 0x006f73b0    85f6
                         {disp8} jne        _jmp_addr_0x006f7391                          // 0x006f73b2    75dd
_jmp_addr_0x006f73b4:    pop                edi                                           // 0x006f73b4    5f
                         pop                esi                                           // 0x006f73b5    5e
                         xor.s              eax, eax                                      // 0x006f73b6    33c0
                         pop                ebx                                           // 0x006f73b8    5b
                         ret                                                              // 0x006f73b9    c3
_jmp_addr_0x006f73ba:    mov.s              eax, edi                                      // 0x006f73ba    8bc7
                         pop                edi                                           // 0x006f73bc    5f
                         pop                esi                                           // 0x006f73bd    5e
                         pop                ebx                                           // 0x006f73be    5b
                         ret                                                              // 0x006f73bf    c3
                         push               ebx                                           // 0x006f73c0    53
                         push               ebp                                           // 0x006f73c1    55
                         push               esi                                           // 0x006f73c2    56
                         {disp32} mov       esi, dword ptr [_CreatureList]                // 0x006f73c3    8b35f8fcc500
                         test               esi, esi                                      // 0x006f73c9    85f6
                         push               edi                                           // 0x006f73cb    57
                         {disp8} je         _jmp_addr_0x006f7402                          // 0x006f73cc    7434
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x006f73ce    8b5c2420
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x006f73d2    8b6c2414
_jmp_addr_0x006f73d6:    {disp8} mov        edi, dword ptr [esi + 0x04]                   // 0x006f73d6    8b7e04
                         {disp8} mov        eax, dword ptr [edi + 0x28]                   // 0x006f73d9    8b4728
                         cmp                dword ptr [eax + 0x000001f4], ebx             // 0x006f73dc    3998f4010000
                         {disp8} jne        _jmp_addr_0x006f73fc                          // 0x006f73e2    7518
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                   // 0x006f73e4    8d4f14
                         push               ecx                                           // 0x006f73e7    51
                         push               ebp                                           // 0x006f73e8    55
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x006f73e9    e882590500
                         {disp8} fcomp      dword ptr [esp + 0x2c]                        // 0x006f73ee    d85c242c
                         add                esp, 0x08                                     // 0x006f73f2    83c408
                         fnstsw             ax                                            // 0x006f73f5    dfe0
                         test               ah, 0x41                                      // 0x006f73f7    f6c441
                         {disp8} jne        _jmp_addr_0x006f7409                          // 0x006f73fa    750d
_jmp_addr_0x006f73fc:    mov                esi, dword ptr [esi]                          // 0x006f73fc    8b36
                         test               esi, esi                                      // 0x006f73fe    85f6
                         {disp8} jne        _jmp_addr_0x006f73d6                          // 0x006f7400    75d4
_jmp_addr_0x006f7402:    pop                edi                                           // 0x006f7402    5f
                         pop                esi                                           // 0x006f7403    5e
                         pop                ebp                                           // 0x006f7404    5d
                         xor.s              eax, eax                                      // 0x006f7405    33c0
                         pop                ebx                                           // 0x006f7407    5b
                         ret                                                              // 0x006f7408    c3
_jmp_addr_0x006f7409:    mov.s              eax, edi                                      // 0x006f7409    8bc7
                         pop                edi                                           // 0x006f740b    5f
                         pop                esi                                           // 0x006f740c    5e
                         pop                ebp                                           // 0x006f740d    5d
                         pop                ebx                                           // 0x006f740e    5b
                         ret                                                              // 0x006f740f    c3

?FindInTown@GScript@@QAEPAVAbode@@PAVGameThingWithPos@@P6AH0W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7410    8b44240c
                         cmp                eax, 0x04                                     // 0x006f7414    83f804
                         {disp8} je         _jmp_addr_0x006f7457                          // 0x006f7417    743e
                         cmp                eax, 0x05                                     // 0x006f7419    83f805
                         {disp8} je         _jmp_addr_0x006f7457                          // 0x006f741c    7439
                         cmp                eax, 0x06                                     // 0x006f741e    83f806
                         {disp8} jne        _jmp_addr_0x006f7439                          // 0x006f7421    7516
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7423    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f7427    8b4c2408
                         push               eax                                           // 0x006f742b    50
                         push               0x6                                           // 0x006f742c    6a06
                         push               ecx                                           // 0x006f742e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f742f    8b4c2410
                         call               _jmp_addr_0x0073e6e0                          // 0x006f7433    e8a8720400
                         ret                                                              // 0x006f7438    c3
_jmp_addr_0x006f7439:    cmp                eax, 0x10                                     // 0x006f7439    83f810
                         {disp8} jne        _jmp_addr_0x006f7447                          // 0x006f743c    7509
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f743e    8b4c2404
                         {disp32} jmp       ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ     // 0x006f7442    e969410400
_jmp_addr_0x006f7447:    push               0x00c0d390                                    // 0x006f7447    6890d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f744c    e85feeffff
                         add                esp, 0x04                                     // 0x006f7451    83c404
                         xor.s              eax, eax                                      // 0x006f7454    33c0
                         ret                                                              // 0x006f7456    c3
_jmp_addr_0x006f7457:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f7457    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f745b    8b4c2404
                         push               edx                                           // 0x006f745f    52
                         push               eax                                           // 0x006f7460    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7461    8b442410
                         push               eax                                           // 0x006f7465    50
                         call               _jmp_addr_0x0073e600                          // 0x006f7466    e895710400
                         ret                                                              // 0x006f746b    c3
                         nop                                                              // 0x006f746c    90
                         nop                                                              // 0x006f746d    90
                         nop                                                              // 0x006f746e    90
                         nop                                                              // 0x006f746f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7470    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7475    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f747b    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f747f    8b02
                         add                ecx, 0x14                                     // 0x006f7481    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f7484    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f7486    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f7489    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f748c    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f748f    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7492    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7497    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f749d    8b44240c
                         cmp                eax, 0x04                                     // 0x006f74a1    83f804
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f74a4    8b542418
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f74a8    895120
                         {disp8} je         _jmp_addr_0x006f74dd                          // 0x006f74ab    7430
                         cmp                eax, 0x05                                     // 0x006f74ad    83f805
                         {disp8} je         _jmp_addr_0x006f74dd                          // 0x006f74b0    742b
                         cmp                eax, 0x06                                     // 0x006f74b2    83f806
                         {disp8} jne        _jmp_addr_0x006f74cd                          // 0x006f74b5    7516
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f74b7    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f74bb    8b4c2408
                         push               eax                                           // 0x006f74bf    50
                         push               0x6                                           // 0x006f74c0    6a06
                         push               ecx                                           // 0x006f74c2    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f74c3    8b4c2410
                         call               _jmp_addr_0x0073e6e0                          // 0x006f74c7    e814720400
                         ret                                                              // 0x006f74cc    c3
_jmp_addr_0x006f74cd:    push               0x00c0d390                                    // 0x006f74cd    6890d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f74d2    e8d9edffff
                         add                esp, 0x04                                     // 0x006f74d7    83c404
                         xor.s              eax, eax                                      // 0x006f74da    33c0
                         ret                                                              // 0x006f74dc    c3
_jmp_addr_0x006f74dd:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f74dd    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f74e1    8b4c2404
                         push               edx                                           // 0x006f74e5    52
                         push               eax                                           // 0x006f74e6    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f74e7    8b442410
                         push               eax                                           // 0x006f74eb    50
                         call               _jmp_addr_0x0073e600                          // 0x006f74ec    e80f710400
                         ret                                                              // 0x006f74f1    c3
                         nop                                                              // 0x006f74f2    90
                         nop                                                              // 0x006f74f3    90
                         nop                                                              // 0x006f74f4    90
                         nop                                                              // 0x006f74f5    90
                         nop                                                              // 0x006f74f6    90
                         nop                                                              // 0x006f74f7    90
                         nop                                                              // 0x006f74f8    90
                         nop                                                              // 0x006f74f9    90
                         nop                                                              // 0x006f74fa    90
                         nop                                                              // 0x006f74fb    90
                         nop                                                              // 0x006f74fc    90
                         nop                                                              // 0x006f74fd    90
                         nop                                                              // 0x006f74fe    90
                         nop                                                              // 0x006f74ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7500    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7504    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f7508    8b542408
                         push               eax                                           // 0x006f750c    50
                         push               ecx                                           // 0x006f750d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f750e    8b4c240c
                         push               edx                                           // 0x006f7512    52
                         call               _jmp_addr_0x00530510                          // 0x006f7513    e8f88fe3ff
                         ret                                                              // 0x006f7518    c3
                         nop                                                              // 0x006f7519    90
                         nop                                                              // 0x006f751a    90
                         nop                                                              // 0x006f751b    90
                         nop                                                              // 0x006f751c    90
                         nop                                                              // 0x006f751d    90
                         nop                                                              // 0x006f751e    90
                         nop                                                              // 0x006f751f    90
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7520    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7524    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f7528    8b542408
                         push               eax                                           // 0x006f752c    50
                         push               ecx                                           // 0x006f752d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f752e    8b4c240c
                         push               edx                                           // 0x006f7532    52
                         call               _jmp_addr_0x0050c3d0                          // 0x006f7533    e8984ee1ff
                         ret                                                              // 0x006f7538    c3
                         nop                                                              // 0x006f7539    90
                         nop                                                              // 0x006f753a    90
                         nop                                                              // 0x006f753b    90
                         nop                                                              // 0x006f753c    90
                         nop                                                              // 0x006f753d    90
                         nop                                                              // 0x006f753e    90
                         nop                                                              // 0x006f753f    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7540    8b44240c
                         cmp                eax, 0x04                                     // 0x006f7544    83f804
                         {disp8} je         _jmp_addr_0x006f7551                          // 0x006f7547    7408
                         cmp                eax, 0x05                                     // 0x006f7549    83f805
                         {disp8} je         _jmp_addr_0x006f7551                          // 0x006f754c    7403
                         xor.s              eax, eax                                      // 0x006f754e    33c0
                         ret                                                              // 0x006f7550    c3
_jmp_addr_0x006f7551:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7551    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f7555    8b542408
                         push               ecx                                           // 0x006f7559    51
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f755a    8b4c2408
                         push               eax                                           // 0x006f755e    50
                         push               edx                                           // 0x006f755f    52
                         call               ?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z                          // 0x006f7560    e85bf4d0ff
                         ret                                                              // 0x006f7565    c3
                         nop                                                              // 0x006f7566    90
                         nop                                                              // 0x006f7567    90
                         nop                                                              // 0x006f7568    90
                         nop                                                              // 0x006f7569    90
                         nop                                                              // 0x006f756a    90
                         nop                                                              // 0x006f756b    90
                         nop                                                              // 0x006f756c    90
                         nop                                                              // 0x006f756d    90
                         nop                                                              // 0x006f756e    90
                         nop                                                              // 0x006f756f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7570    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7575    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f757b    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f757f    8b02
                         add                ecx, 0x14                                     // 0x006f7581    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f7584    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f7586    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f7589    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f758c    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f758f    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7592    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7597    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f759d    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f75a1    8b442410
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f75a5    895120
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f75a8    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f75ac    8b542408
                         push               eax                                           // 0x006f75b0    50
                         push               ecx                                           // 0x006f75b1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f75b2    8b4c240c
                         push               edx                                           // 0x006f75b6    52
                         call               _jmp_addr_0x00530510                          // 0x006f75b7    e8548fe3ff
                         ret                                                              // 0x006f75bc    c3
                         nop                                                              // 0x006f75bd    90
                         nop                                                              // 0x006f75be    90
                         nop                                                              // 0x006f75bf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f75c0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f75c5    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f75cb    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f75cf    8b02
                         add                ecx, 0x14                                     // 0x006f75d1    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f75d4    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f75d6    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f75d9    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f75dc    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f75df    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f75e2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f75e7    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f75ed    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f75f1    8b442410
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f75f5    895120
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f75f8    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f75fc    8b542408
                         push               eax                                           // 0x006f7600    50
                         push               ecx                                           // 0x006f7601    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7602    8b4c240c
                         push               edx                                           // 0x006f7606    52
                         call               _jmp_addr_0x0050c3d0                          // 0x006f7607    e8c44de1ff
                         ret                                                              // 0x006f760c    c3
                         nop                                                              // 0x006f760d    90
                         nop                                                              // 0x006f760e    90
                         nop                                                              // 0x006f760f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7610    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7615    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f761b    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f761f    8b02
                         add                ecx, 0x14                                     // 0x006f7621    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f7624    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f7626    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f7629    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f762c    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f762f    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7632    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7637    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f763d    8b44240c
                         cmp                eax, 0x04                                     // 0x006f7641    83f804
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f7644    8b542418
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f7648    895120
                         {disp8} je         _jmp_addr_0x006f7655                          // 0x006f764b    7408
                         cmp                eax, 0x05                                     // 0x006f764d    83f805
                         {disp8} je         _jmp_addr_0x006f7655                          // 0x006f7650    7403
                         xor.s              eax, eax                                      // 0x006f7652    33c0
                         ret                                                              // 0x006f7654    c3
_jmp_addr_0x006f7655:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7655    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f7659    8b542408
                         push               ecx                                           // 0x006f765d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f765e    8b4c2408
                         push               eax                                           // 0x006f7662    50
                         push               edx                                           // 0x006f7663    52
                         call               ?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z                          // 0x006f7664    e857f3d0ff
                         ret                                                              // 0x006f7669    c3
                         nop                                                              // 0x006f766a    90
                         nop                                                              // 0x006f766b    90
                         nop                                                              // 0x006f766c    90
                         nop                                                              // 0x006f766d    90
                         nop                                                              // 0x006f766e    90
                         nop                                                              // 0x006f766f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7670    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7675    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f767b    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f767f    8b02
                         add                ecx, 0x14                                     // 0x006f7681    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f7684    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f7686    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f7689    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f768c    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f768f    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7692    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7697    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f769d    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f76a1    8b442410
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f76a5    895120
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f76a8    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f76ac    8b542408
                         push               eax                                           // 0x006f76b0    50
                         push               ecx                                           // 0x006f76b1    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f76b2    8b4c240c
                         push               edx                                           // 0x006f76b6    52
                         call               _jmp_addr_0x00530510                          // 0x006f76b7    e8548ee3ff
                         ret                                                              // 0x006f76bc    c3
                         nop                                                              // 0x006f76bd    90
                         nop                                                              // 0x006f76be    90
                         nop                                                              // 0x006f76bf    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f76c0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f76c5    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f76cb    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f76cf    8b02
                         add                ecx, 0x14                                     // 0x006f76d1    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f76d4    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f76d6    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f76d9    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f76dc    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f76df    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f76e2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f76e7    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f76ed    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f76f1    8b442410
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f76f5    895120
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f76f8    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f76fc    8b542408
                         push               eax                                           // 0x006f7700    50
                         push               ecx                                           // 0x006f7701    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7702    8b4c240c
                         push               edx                                           // 0x006f7706    52
                         call               _jmp_addr_0x0050c3d0                          // 0x006f7707    e8c44ce1ff
                         ret                                                              // 0x006f770c    c3
                         nop                                                              // 0x006f770d    90
                         nop                                                              // 0x006f770e    90
                         nop                                                              // 0x006f770f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7710    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7715    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f771b    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f771f    8b02
                         add                ecx, 0x14                                     // 0x006f7721    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f7724    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f7726    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f7729    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f772c    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f772f    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7732    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7737    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f773d    8b44240c
                         cmp                eax, 0x04                                     // 0x006f7741    83f804
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f7744    8b542418
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f7748    895120
                         {disp8} je         _jmp_addr_0x006f777d                          // 0x006f774b    7430
                         cmp                eax, 0x05                                     // 0x006f774d    83f805
                         {disp8} je         _jmp_addr_0x006f777d                          // 0x006f7750    742b
                         cmp                eax, 0x06                                     // 0x006f7752    83f806
                         {disp8} jne        _jmp_addr_0x006f776d                          // 0x006f7755    7516
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7757    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f775b    8b4c2408
                         push               eax                                           // 0x006f775f    50
                         push               0x6                                           // 0x006f7760    6a06
                         push               ecx                                           // 0x006f7762    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7763    8b4c2410
                         call               _jmp_addr_0x0073e6e0                          // 0x006f7767    e8746f0400
                         ret                                                              // 0x006f776c    c3
_jmp_addr_0x006f776d:    push               0x00c0d390                                    // 0x006f776d    6890d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7772    e839ebffff
                         add                esp, 0x04                                     // 0x006f7777    83c404
                         xor.s              eax, eax                                      // 0x006f777a    33c0
                         ret                                                              // 0x006f777c    c3
_jmp_addr_0x006f777d:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f777d    8b542410
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f7781    8b4c2404
                         push               edx                                           // 0x006f7785    52
                         push               eax                                           // 0x006f7786    50
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f7787    8b442410
                         push               eax                                           // 0x006f778b    50
                         call               _jmp_addr_0x0073e600                          // 0x006f778c    e86f6e0400
                         ret                                                              // 0x006f7791    c3
                         nop                                                              // 0x006f7792    90
                         nop                                                              // 0x006f7793    90
                         nop                                                              // 0x006f7794    90
                         nop                                                              // 0x006f7795    90
                         nop                                                              // 0x006f7796    90
                         nop                                                              // 0x006f7797    90
                         nop                                                              // 0x006f7798    90
                         nop                                                              // 0x006f7799    90
                         nop                                                              // 0x006f779a    90
                         nop                                                              // 0x006f779b    90
                         nop                                                              // 0x006f779c    90
                         nop                                                              // 0x006f779d    90
                         nop                                                              // 0x006f779e    90
                         nop                                                              // 0x006f779f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f77a0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f77a5    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f77ab    8b542414
                         mov                eax, dword ptr [edx]                          // 0x006f77af    8b02
                         add                ecx, 0x14                                     // 0x006f77b1    83c114
                         mov                dword ptr [ecx], eax                          // 0x006f77b4    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x006f77b6    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f77b9    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f77bc    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f77bf    895108
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f77c2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f77c7    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f77cd    8b44240c
                         cmp                eax, 0x04                                     // 0x006f77d1    83f804
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f77d4    8b542418
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x006f77d8    895120
                         {disp8} je         _jmp_addr_0x006f77e5                          // 0x006f77db    7408
                         cmp                eax, 0x05                                     // 0x006f77dd    83f805
                         {disp8} je         _jmp_addr_0x006f77e5                          // 0x006f77e0    7403
                         xor.s              eax, eax                                      // 0x006f77e2    33c0
                         ret                                                              // 0x006f77e4    c3
_jmp_addr_0x006f77e5:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f77e5    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f77e9    8b542408
                         push               ecx                                           // 0x006f77ed    51
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f77ee    8b4c2408
                         push               eax                                           // 0x006f77f2    50
                         push               edx                                           // 0x006f77f3    52
                         call               ?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z                          // 0x006f77f4    e8c7f1d0ff
                         ret                                                              // 0x006f77f9    c3
                         nop                                                              // 0x006f77fa    90
                         nop                                                              // 0x006f77fb    90
                         nop                                                              // 0x006f77fc    90
                         nop                                                              // 0x006f77fd    90
                         nop                                                              // 0x006f77fe    90
                         nop                                                              // 0x006f77ff    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7800    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7805    8b8890002500
                         {disp8} mov        eax, dword ptr [ecx + 0x3c]                   // 0x006f780b    8b413c
                         test               eax, eax                                      // 0x006f780e    85c0
                         push               esi                                           // 0x006f7810    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7811    8b742408
                         {disp8} je         _jmp_addr_0x006f7823                          // 0x006f7815    740c
                         mov                edx, dword ptr [esi]                          // 0x006f7817    8b16
                         push               0x1                                           // 0x006f7819    6a01
                         mov.s              ecx, esi                                      // 0x006f781b    8bce
                         call               dword ptr [edx + 0x440]                       // 0x006f781d    ff9240040000
_jmp_addr_0x006f7823:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f7823    a15c19d000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f7828    8b542410
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f782c    8b8890002500
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f7832    8b44240c
                         push               edx                                           // 0x006f7836    52
                         push               eax                                           // 0x006f7837    50
                         push               esi                                           // 0x006f7838    56
                         call               dword ptr [ecx + 0x6c]                        // 0x006f7839    ff516c
                         add                esp, 0x0c                                     // 0x006f783c    83c40c
                         pop                esi                                           // 0x006f783f    5e
                         ret                                                              // 0x006f7840    c3
                         nop                                                              // 0x006f7841    90
                         nop                                                              // 0x006f7842    90
                         nop                                                              // 0x006f7843    90
                         nop                                                              // 0x006f7844    90
                         nop                                                              // 0x006f7845    90
                         nop                                                              // 0x006f7846    90
                         nop                                                              // 0x006f7847    90
                         nop                                                              // 0x006f7848    90
                         nop                                                              // 0x006f7849    90
                         nop                                                              // 0x006f784a    90
                         nop                                                              // 0x006f784b    90
                         nop                                                              // 0x006f784c    90
                         nop                                                              // 0x006f784d    90
                         nop                                                              // 0x006f784e    90
                         nop                                                              // 0x006f784f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7850    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7855    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f785b    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f785f    8b442410
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                   // 0x006f7863    89516c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7866    8b4c240c
                         push               eax                                           // 0x006f786a    50
                         push               ecx                                           // 0x006f786b    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f786c    8b4c240c
                         push               0x006f7800                                    // 0x006f7870    6800786f00
                         call               _jmp_addr_0x0073e600                          // 0x006f7875    e8866d0400
                         ret                                                              // 0x006f787a    c3
                         nop                                                              // 0x006f787b    90
                         nop                                                              // 0x006f787c    90
                         nop                                                              // 0x006f787d    90
                         nop                                                              // 0x006f787e    90
                         nop                                                              // 0x006f787f    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7880    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f7885    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f788b    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f788f    8b442410
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                   // 0x006f7893    89516c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f7896    8b4c240c
                         push               eax                                           // 0x006f789a    50
                         push               ecx                                           // 0x006f789b    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f789c    8b4c240c
                         push               0x006f7800                                    // 0x006f78a0    6800786f00
                         call               ?FindVillager@Abode@@QAEPAVVillager@@P6AHPAVGameThingWithPos@@W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z                          // 0x006f78a5    e816f1d0ff
                         ret                                                              // 0x006f78aa    c3
                         nop                                                              // 0x006f78ab    90
                         nop                                                              // 0x006f78ac    90
                         nop                                                              // 0x006f78ad    90
                         nop                                                              // 0x006f78ae    90
                         nop                                                              // 0x006f78af    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f78b0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f78b5    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f78bb    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f78bf    8b442410
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                   // 0x006f78c3    89516c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f78c6    8b4c240c
                         push               eax                                           // 0x006f78ca    50
                         push               ecx                                           // 0x006f78cb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f78cc    8b4c240c
                         push               0x006f7800                                    // 0x006f78d0    6800786f00
                         call               _jmp_addr_0x00530510                          // 0x006f78d5    e8368ce3ff
                         ret                                                              // 0x006f78da    c3
                         nop                                                              // 0x006f78db    90
                         nop                                                              // 0x006f78dc    90
                         nop                                                              // 0x006f78dd    90
                         nop                                                              // 0x006f78de    90
                         nop                                                              // 0x006f78df    90
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f78e0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f78e5    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f78eb    8b542408
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f78ef    8b442410
                         {disp8} mov        dword ptr [ecx + 0x6c], edx                   // 0x006f78f3    89516c
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f78f6    8b4c240c
                         push               eax                                           // 0x006f78fa    50
                         push               ecx                                           // 0x006f78fb    51
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f78fc    8b4c240c
                         push               0x006f7800                                    // 0x006f7900    6800786f00
                         call               _jmp_addr_0x0050c3d0                          // 0x006f7905    e8c64ae1ff
                         ret                                                              // 0x006f790a    c3
                         nop                                                              // 0x006f790b    90
                         nop                                                              // 0x006f790c    90
                         nop                                                              // 0x006f790d    90
                         nop                                                              // 0x006f790e    90
                         nop                                                              // 0x006f790f    90
                         sub                esp, 0x20                                     // 0x006f7910    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7913    8b0d105cd900
                         push               esi                                           // 0x006f7919    56
                         push               edi                                           // 0x006f791a    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f791b    8d44240c
                         push               eax                                           // 0x006f791f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7920    e89bf2ffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f7925    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f792b    8d4c2408
                         mov.s              edi, eax                                      // 0x006f792f    8bf8
                         push               ecx                                           // 0x006f7931    51
                         mov.s              ecx, esi                                      // 0x006f7932    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x006f7934    897c2410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7938    e883f2ffff
                         mov.s              edx, eax                                      // 0x006f793d    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f793f    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f7943    8d442408
                         push               eax                                           // 0x006f7947    50
                         mov.s              ecx, esi                                      // 0x006f7948    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x006f794a    8954241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f794e    e86df2ffff
                         mov.s              ecx, eax                                      // 0x006f7953    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f7955    8d542408
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006f7959    894c2414
                         push               edx                                           // 0x006f795d    52
                         mov.s              ecx, esi                                      // 0x006f795e    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f7960    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7964    e857f2ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x006f7969    8d4c2410
                         push               ecx                                           // 0x006f796d    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f796e    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f7972    8944240c
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f7976    89442414
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f797a    e8e1b7f0ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f797f    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x006f7985    8b8a90002500
                         mov                edx, dword ptr [eax]                          // 0x006f798b    8b10
                         add                ecx, 0x14                                     // 0x006f798d    83c114
                         mov                dword ptr [ecx], edx                          // 0x006f7990    8911
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x006f7992    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x006f7995    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006f7998    8b4008
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x006f799b    894108
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f799e    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f79a4    8b9190002500
                         push               edi                                           // 0x006f79aa    57
                         mov.s              eax, edi                                      // 0x006f79ab    8bc7
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x006f79ad    894220
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f79b0    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x006f79b6    8b8990002500
                         push               0x0                                           // 0x006f79bc    6a00
                         push               0x0                                           // 0x006f79be    6a00
                         push               0x006f7100                                    // 0x006f79c0    6800716f00
                         add                ecx, 0x14                                     // 0x006f79c5    83c114
                         call               _jmp_addr_0x00604370                          // 0x006f79c8    e8a3c9f0ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f79cd    8b0d105cd900
                         neg                eax                                           // 0x006f79d3    f7d8
                         sbb.s              eax, eax                                      // 0x006f79d5    1bc0
                         neg                eax                                           // 0x006f79d7    f7d8
                         push               0x6                                           // 0x006f79d9    6a06
                         push               eax                                           // 0x006f79db    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f79dc    e8bff1ffff
                         pop                edi                                           // 0x006f79e1    5f
                         pop                esi                                           // 0x006f79e2    5e
                         add                esp, 0x20                                     // 0x006f79e3    83c420
                         ret                                                              // 0x006f79e6    c3
                         nop                                                              // 0x006f79e7    90
                         nop                                                              // 0x006f79e8    90
                         nop                                                              // 0x006f79e9    90
                         nop                                                              // 0x006f79ea    90
                         nop                                                              // 0x006f79eb    90
                         nop                                                              // 0x006f79ec    90
                         nop                                                              // 0x006f79ed    90
                         nop                                                              // 0x006f79ee    90
                         nop                                                              // 0x006f79ef    90
                         push               esi                                           // 0x006f79f0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f79f1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f79f5    8b06
                         mov.s              ecx, esi                                      // 0x006f79f7    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f79f9    ff9048040000
                         test               eax, eax                                      // 0x006f79ff    85c0
                         {disp8} jne        _jmp_addr_0x006f7a18                          // 0x006f7a01    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7a03    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7a07    8b54240c
                         push               ecx                                           // 0x006f7a0b    51
                         push               edx                                           // 0x006f7a0c    52
                         push               esi                                           // 0x006f7a0d    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f7a0e    e88df5ffff
                         add                esp, 0x0c                                     // 0x006f7a13    83c40c
                         pop                esi                                           // 0x006f7a16    5e
                         ret                                                              // 0x006f7a17    c3
_jmp_addr_0x006f7a18:    xor.s              eax, eax                                      // 0x006f7a18    33c0
                         pop                esi                                           // 0x006f7a1a    5e
                         ret                                                              // 0x006f7a1b    c3
                         nop                                                              // 0x006f7a1c    90
                         nop                                                              // 0x006f7a1d    90
                         nop                                                              // 0x006f7a1e    90
                         nop                                                              // 0x006f7a1f    90
                         push               esi                                           // 0x006f7a20    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7a21    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7a25    8b06
                         mov.s              ecx, esi                                      // 0x006f7a27    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f7a29    ff9048040000
                         test               eax, eax                                      // 0x006f7a2f    85c0
                         {disp8} jne        _jmp_addr_0x006f7a48                          // 0x006f7a31    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7a33    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7a37    8b54240c
                         push               ecx                                           // 0x006f7a3b    51
                         push               edx                                           // 0x006f7a3c    52
                         push               esi                                           // 0x006f7a3d    56
                         call               _jmp_addr_0x006f7070                          // 0x006f7a3e    e82df6ffff
                         add                esp, 0x0c                                     // 0x006f7a43    83c40c
                         pop                esi                                           // 0x006f7a46    5e
                         ret                                                              // 0x006f7a47    c3
_jmp_addr_0x006f7a48:    xor.s              eax, eax                                      // 0x006f7a48    33c0
                         pop                esi                                           // 0x006f7a4a    5e
                         ret                                                              // 0x006f7a4b    c3
                         nop                                                              // 0x006f7a4c    90
                         nop                                                              // 0x006f7a4d    90
                         nop                                                              // 0x006f7a4e    90
                         nop                                                              // 0x006f7a4f    90
                         push               esi                                           // 0x006f7a50    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7a51    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7a55    8b06
                         mov.s              ecx, esi                                      // 0x006f7a57    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f7a59    ff9048040000
                         test               eax, eax                                      // 0x006f7a5f    85c0
                         {disp8} jne        _jmp_addr_0x006f7a78                          // 0x006f7a61    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7a63    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7a67    8b54240c
                         push               ecx                                           // 0x006f7a6b    51
                         push               edx                                           // 0x006f7a6c    52
                         push               esi                                           // 0x006f7a6d    56
                         call               _jmp_addr_0x006f7190                          // 0x006f7a6e    e81df7ffff
                         add                esp, 0x0c                                     // 0x006f7a73    83c40c
                         pop                esi                                           // 0x006f7a76    5e
                         ret                                                              // 0x006f7a77    c3
_jmp_addr_0x006f7a78:    xor.s              eax, eax                                      // 0x006f7a78    33c0
                         pop                esi                                           // 0x006f7a7a    5e
                         ret                                                              // 0x006f7a7b    c3
                         nop                                                              // 0x006f7a7c    90
                         nop                                                              // 0x006f7a7d    90
                         nop                                                              // 0x006f7a7e    90
                         nop                                                              // 0x006f7a7f    90
                         push               esi                                           // 0x006f7a80    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7a81    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7a85    8b06
                         mov.s              ecx, esi                                      // 0x006f7a87    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f7a89    ff9048040000
                         test               eax, eax                                      // 0x006f7a8f    85c0
                         {disp8} jne        _jmp_addr_0x006f7aa8                          // 0x006f7a91    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7a93    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7a97    8b54240c
                         push               ecx                                           // 0x006f7a9b    51
                         push               edx                                           // 0x006f7a9c    52
                         push               esi                                           // 0x006f7a9d    56
                         call               _jmp_addr_0x006f6ff0                          // 0x006f7a9e    e84df5ffff
                         add                esp, 0x0c                                     // 0x006f7aa3    83c40c
                         pop                esi                                           // 0x006f7aa6    5e
                         ret                                                              // 0x006f7aa7    c3
_jmp_addr_0x006f7aa8:    xor.s              eax, eax                                      // 0x006f7aa8    33c0
                         pop                esi                                           // 0x006f7aaa    5e
                         ret                                                              // 0x006f7aab    c3
                         nop                                                              // 0x006f7aac    90
                         nop                                                              // 0x006f7aad    90
                         nop                                                              // 0x006f7aae    90
                         nop                                                              // 0x006f7aaf    90
                         push               esi                                           // 0x006f7ab0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7ab1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7ab5    8b06
                         mov.s              ecx, esi                                      // 0x006f7ab7    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f7ab9    ff9048040000
                         test               eax, eax                                      // 0x006f7abf    85c0
                         {disp8} jne        _jmp_addr_0x006f7ad8                          // 0x006f7ac1    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7ac3    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7ac7    8b54240c
                         push               ecx                                           // 0x006f7acb    51
                         push               edx                                           // 0x006f7acc    52
                         push               esi                                           // 0x006f7acd    56
                         call               _jmp_addr_0x006f7030                          // 0x006f7ace    e85df5ffff
                         add                esp, 0x0c                                     // 0x006f7ad3    83c40c
                         pop                esi                                           // 0x006f7ad6    5e
                         ret                                                              // 0x006f7ad7    c3
_jmp_addr_0x006f7ad8:    xor.s              eax, eax                                      // 0x006f7ad8    33c0
                         pop                esi                                           // 0x006f7ada    5e
                         ret                                                              // 0x006f7adb    c3
                         nop                                                              // 0x006f7adc    90
                         nop                                                              // 0x006f7add    90
                         nop                                                              // 0x006f7ade    90
                         nop                                                              // 0x006f7adf    90
_jmp_addr_0x006f7ae0:    push               esi                                           // 0x006f7ae0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7ae1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7ae5    8b06
                         mov.s              ecx, esi                                      // 0x006f7ae7    8bce
                         call               dword ptr [eax + 0x3c4]                       // 0x006f7ae9    ff90c4030000
                         test               eax, eax                                      // 0x006f7aef    85c0
                         {disp8} je         _jmp_addr_0x006f7b33                          // 0x006f7af1    7440
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7af3    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7af7    8b54240c
                         push               ecx                                           // 0x006f7afb    51
                         push               edx                                           // 0x006f7afc    52
                         push               esi                                           // 0x006f7afd    56
                         call               _jmp_addr_0x006f6fa0                          // 0x006f7afe    e89df4ffff
                         add                esp, 0x0c                                     // 0x006f7b03    83c40c
                         test               eax, eax                                      // 0x006f7b06    85c0
                         {disp8} je         _jmp_addr_0x006f7b33                          // 0x006f7b08    7429
                         mov                eax, dword ptr [esi]                          // 0x006f7b0a    8b06
                         mov.s              ecx, esi                                      // 0x006f7b0c    8bce
                         call               dword ptr [eax + 0xb04]                       // 0x006f7b0e    ff90040b0000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7b14    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f7b1a    8b9190002500
                         {disp8} mov        ecx, dword ptr [edx + 0x24]                   // 0x006f7b20    8b4a24
                         and                eax, 0x000000ff                               // 0x006f7b23    25ff000000
                         cmp.s              eax, ecx                                      // 0x006f7b28    3bc1
                         {disp8} jne        _jmp_addr_0x006f7b33                          // 0x006f7b2a    7507
                         mov                eax, 0x00000001                               // 0x006f7b2c    b801000000
                         pop                esi                                           // 0x006f7b31    5e
                         ret                                                              // 0x006f7b32    c3
_jmp_addr_0x006f7b33:    xor.s              eax, eax                                      // 0x006f7b33    33c0
                         pop                esi                                           // 0x006f7b35    5e
                         ret                                                              // 0x006f7b36    c3
                         nop                                                              // 0x006f7b37    90
                         nop                                                              // 0x006f7b38    90
                         nop                                                              // 0x006f7b39    90
                         nop                                                              // 0x006f7b3a    90
                         nop                                                              // 0x006f7b3b    90
                         nop                                                              // 0x006f7b3c    90
                         nop                                                              // 0x006f7b3d    90
                         nop                                                              // 0x006f7b3e    90
                         nop                                                              // 0x006f7b3f    90
                         push               esi                                           // 0x006f7b40    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f7b41    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f7b45    8b06
                         mov.s              ecx, esi                                      // 0x006f7b47    8bce
                         call               dword ptr [eax + 0x448]                       // 0x006f7b49    ff9048040000
                         test               eax, eax                                      // 0x006f7b4f    85c0
                         {disp8} jne        _jmp_addr_0x006f7b68                          // 0x006f7b51    7515
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f7b53    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f7b57    8b54240c
                         push               ecx                                           // 0x006f7b5b    51
                         push               edx                                           // 0x006f7b5c    52
                         push               esi                                           // 0x006f7b5d    56
                         call               _jmp_addr_0x006f7ae0                          // 0x006f7b5e    e87dffffff
                         add                esp, 0x0c                                     // 0x006f7b63    83c40c
                         pop                esi                                           // 0x006f7b66    5e
                         ret                                                              // 0x006f7b67    c3
_jmp_addr_0x006f7b68:    xor.s              eax, eax                                      // 0x006f7b68    33c0
                         pop                esi                                           // 0x006f7b6a    5e
                         ret                                                              // 0x006f7b6b    c3
                         nop                                                              // 0x006f7b6c    90
                         nop                                                              // 0x006f7b6d    90
                         nop                                                              // 0x006f7b6e    90
                         nop                                                              // 0x006f7b6f    90
_globl_ct_0x006f7b70:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x006f7b70    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x006f7b76    b001
                         test               al, cl                                        // 0x006f7b78    84c8
                         {disp8} jne        _jmp_addr_0x006f7b84                          // 0x006f7b7a    7508
                         or.s               cl, al                                        // 0x006f7b7c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x006f7b7e    880d34c9fa00
_jmp_addr_0x006f7b84:    {disp32} jmp       _jmp_addr_0x006f7b90                          // 0x006f7b84    e907000000
                         nop                                                              // 0x006f7b89    90
                         nop                                                              // 0x006f7b8a    90
                         nop                                                              // 0x006f7b8b    90
                         nop                                                              // 0x006f7b8c    90
                         nop                                                              // 0x006f7b8d    90
                         nop                                                              // 0x006f7b8e    90
                         nop                                                              // 0x006f7b8f    90
_jmp_addr_0x006f7b90:    push               0x00407870                                    // 0x006f7b90    6870784000
                         call               _atexit                                       // 0x006f7b95    e8f7db0c00
                         pop                ecx                                           // 0x006f7b9a    59
                         ret                                                              // 0x006f7b9b    c3
                         nop                                                              // 0x006f7b9c    90
                         nop                                                              // 0x006f7b9d    90
                         nop                                                              // 0x006f7b9e    90
                         nop                                                              // 0x006f7b9f    90
_globl_ct_0x006f7ba0:    {disp32} jmp       _jmp_addr_0x006f7bb0                          // 0x006f7ba0    e90b000000
                         nop                                                              // 0x006f7ba5    90
                         nop                                                              // 0x006f7ba6    90
                         nop                                                              // 0x006f7ba7    90
                         nop                                                              // 0x006f7ba8    90
                         nop                                                              // 0x006f7ba9    90
                         nop                                                              // 0x006f7baa    90
                         nop                                                              // 0x006f7bab    90
                         nop                                                              // 0x006f7bac    90
                         nop                                                              // 0x006f7bad    90
                         nop                                                              // 0x006f7bae    90
                         nop                                                              // 0x006f7baf    90
_jmp_addr_0x006f7bb0:    {disp32} mov       dword ptr [data_bytes + 0x3d0268], 0xffffffff // 0x006f7bb0    c7056862d900ffffffff
                         ret                                                              // 0x006f7bba    c3
                         nop                                                              // 0x006f7bbb    90
                         nop                                                              // 0x006f7bbc    90
                         nop                                                              // 0x006f7bbd    90
                         nop                                                              // 0x006f7bbe    90
                         nop                                                              // 0x006f7bbf    90
_globl_ct_0x006f7bc0:    {disp32} jmp       _jmp_addr_0x006f7bd0                          // 0x006f7bc0    e90b000000
                         nop                                                              // 0x006f7bc5    90
                         nop                                                              // 0x006f7bc6    90
                         nop                                                              // 0x006f7bc7    90
                         nop                                                              // 0x006f7bc8    90
                         nop                                                              // 0x006f7bc9    90
                         nop                                                              // 0x006f7bca    90
                         nop                                                              // 0x006f7bcb    90
                         nop                                                              // 0x006f7bcc    90
                         nop                                                              // 0x006f7bcd    90
                         nop                                                              // 0x006f7bce    90
                         nop                                                              // 0x006f7bcf    90
_jmp_addr_0x006f7bd0:    {disp32} fld       dword ptr [rdata_bytes + 0x9921c]             // 0x006f7bd0    d9051c229400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99218]             // 0x006f7bd6    d80d18229400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d0264]             // 0x006f7bdc    d91d6462d900
                         ret                                                              // 0x006f7be2    c3
                         nop                                                              // 0x006f7be3    90
                         nop                                                              // 0x006f7be4    90
                         nop                                                              // 0x006f7be5    90
                         nop                                                              // 0x006f7be6    90
                         nop                                                              // 0x006f7be7    90
                         nop                                                              // 0x006f7be8    90
                         nop                                                              // 0x006f7be9    90
                         nop                                                              // 0x006f7bea    90
                         nop                                                              // 0x006f7beb    90
                         nop                                                              // 0x006f7bec    90
                         nop                                                              // 0x006f7bed    90
                         nop                                                              // 0x006f7bee    90
                         nop                                                              // 0x006f7bef    90
                         push               ecx                                           // 0x006f7bf0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7bf1    8b0d105cd900
                         push               ebx                                           // 0x006f7bf7    53
                         push               esi                                           // 0x006f7bf8    56
                         push               edi                                           // 0x006f7bf9    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f7bfa    8d44240c
                         push               eax                                           // 0x006f7bfe    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7bff    e8bcefffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7c04    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x0025005c]             // 0x006f7c0a    8b915c002500
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7c10    8b0d105cd900
                         {disp32} mov       esi, dword ptr [edx + 0x000045ec]             // 0x006f7c16    8bb2ec450000
                         mov.s              edi, eax                                      // 0x006f7c1c    8bf8
                         call               _jmp_addr_0x006f69f0                          // 0x006f7c1e    e8cdedffff
                         test               edi, edi                                      // 0x006f7c23    85ff
                         mov.s              ebx, eax                                      // 0x006f7c25    8bd8
                         {disp8} je         _jmp_addr_0x006f7c3a                          // 0x006f7c27    7411
                         cmp.s              esi, ebx                                      // 0x006f7c29    3bf3
                         {disp8} jne        _jmp_addr_0x006f7c3a                          // 0x006f7c2b    750d
                         push               0x00c0d3b4                                    // 0x006f7c2d    68b4d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7c32    e879e6ffff
                         add                esp, 0x04                                     // 0x006f7c37    83c404
_jmp_addr_0x006f7c3a:    test               esi, esi                                      // 0x006f7c3a    85f6
                         {disp8} je         _jmp_addr_0x006f7c42                          // 0x006f7c3c    7404
                         cmp.s              esi, ebx                                      // 0x006f7c3e    3bf3
                         {disp8} jne        _jmp_addr_0x006f7c5f                          // 0x006f7c40    751d
_jmp_addr_0x006f7c42:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7c42    8b0d105cd900
                         call               _jmp_addr_0x006f69f0                          // 0x006f7c48    e8a3edffff
                         push               eax                                           // 0x006f7c4d    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7c4e    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7c53    8b885c002500
                         push               edi                                           // 0x006f7c59    57
                         call               @SetWideScreen__10HelpSystemFiUl@16           // 0x006f7c5a    e871eeecff
_jmp_addr_0x006f7c5f:    pop                edi                                           // 0x006f7c5f    5f
                         pop                esi                                           // 0x006f7c60    5e
                         pop                ebx                                           // 0x006f7c61    5b
                         pop                ecx                                           // 0x006f7c62    59
                         ret                                                              // 0x006f7c63    c3
                         nop                                                              // 0x006f7c64    90
                         nop                                                              // 0x006f7c65    90
                         nop                                                              // 0x006f7c66    90
                         nop                                                              // 0x006f7c67    90
                         nop                                                              // 0x006f7c68    90
                         nop                                                              // 0x006f7c69    90
                         nop                                                              // 0x006f7c6a    90
                         nop                                                              // 0x006f7c6b    90
                         nop                                                              // 0x006f7c6c    90
                         nop                                                              // 0x006f7c6d    90
                         nop                                                              // 0x006f7c6e    90
                         nop                                                              // 0x006f7c6f    90
                         push               ecx                                           // 0x006f7c70    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7c71    8b0d105cd900
                         push               ebx                                           // 0x006f7c77    53
                         push               ebp                                           // 0x006f7c78    55
                         push               esi                                           // 0x006f7c79    56
                         push               edi                                           // 0x006f7c7a    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f7c7b    8d442410
                         push               eax                                           // 0x006f7c7f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7c80    e83befffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7c85    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f7c8b    8d542410
                         push               edx                                           // 0x006f7c8f    52
                         mov.s              ebx, eax                                      // 0x006f7c90    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7c92    e829efffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7c97    8b0d105cd900
                         mov.s              ebp, eax                                      // 0x006f7c9d    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f7c9f    8d442410
                         push               eax                                           // 0x006f7ca3    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7ca4    e817efffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7ca9    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f7caf    8d542410
                         push               edx                                           // 0x006f7cb3    52
                         mov.s              esi, eax                                      // 0x006f7cb4    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7cb6    e805efffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7cbb    8b0d5c19d000
                         mov.s              edi, eax                                      // 0x006f7cc1    8bf8
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7cc3    e8b8b2e5ff
                         test               eax, eax                                      // 0x006f7cc8    85c0
                         {disp8} je         _jmp_addr_0x006f7cdd                          // 0x006f7cca    7411
                         test               ebx, ebx                                      // 0x006f7ccc    85db
                         {disp8} je         _jmp_addr_0x006f7cdd                          // 0x006f7cce    740d
                         push               0x00c0c1a8                                    // 0x006f7cd0    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7cd5    e8d6e5ffff
                         add                esp, 0x04                                     // 0x006f7cda    83c404
_jmp_addr_0x006f7cdd:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7cdd    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7ce3    e898b2e5ff
                         cmp                esi, 0x00001b3e                               // 0x006f7ce8    81fe3e1b0000
                         .byte              0x72, 0xf// {disp8} jb _jmp_addr_0x006f7cff   // 0x006f7cee    720f
                         push               0x00c0d3e8                                    // 0x006f7cf0    68e8d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7cf5    e8b6e5ffff
                         add                esp, 0x04                                     // 0x006f7cfa    83c404
                         xor.s              esi, esi                                      // 0x006f7cfd    33f6
_jmp_addr_0x006f7cff:    test               edi, edi                                      // 0x006f7cff    85ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7d01    a15c19d000
                         {disp8} jne        _jmp_addr_0x006f7d1b                          // 0x006f7d06    7513
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7d08    8b885c002500
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x006f7d0e    8b5114
                         {disp32} mov       ecx, dword ptr [edx + 0x000000b0]             // 0x006f7d11    8b8ab0000000
                         test               ecx, ecx                                      // 0x006f7d17    85c9
                         {disp8} je         _jmp_addr_0x006f7d2b                          // 0x006f7d19    7410
_jmp_addr_0x006f7d1b:    {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7d1b    8b885c002500
                         call               ?ClearAllText@HelpSystem@@QAEXXZ              // 0x006f7d21    e82ad8ecff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7d26    a15c19d000
_jmp_addr_0x006f7d2b:    {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x006f7d2b    8b805c002500
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006f7d31    8b4814
                         push               0x1                                           // 0x006f7d34    6a01
                         push               ebp                                           // 0x006f7d36    55
                         {disp32} mov       dword ptr [ecx + 0x000000b0], edi             // 0x006f7d37    89b9b0000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f7d3d    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x006f7d43    8b8a5c002500
                         push               ebx                                           // 0x006f7d49    53
                         push               esi                                           // 0x006f7d4a    56
                         call               _jmp_addr_0x005c5f90                          // 0x006f7d4b    e840e2ecff
                         pop                edi                                           // 0x006f7d50    5f
                         pop                esi                                           // 0x006f7d51    5e
                         pop                ebp                                           // 0x006f7d52    5d
                         pop                ebx                                           // 0x006f7d53    5b
                         pop                ecx                                           // 0x006f7d54    59
                         ret                                                              // 0x006f7d55    c3
                         nop                                                              // 0x006f7d56    90
                         nop                                                              // 0x006f7d57    90
                         nop                                                              // 0x006f7d58    90
                         nop                                                              // 0x006f7d59    90
                         nop                                                              // 0x006f7d5a    90
                         nop                                                              // 0x006f7d5b    90
                         nop                                                              // 0x006f7d5c    90
                         nop                                                              // 0x006f7d5d    90
                         nop                                                              // 0x006f7d5e    90
                         nop                                                              // 0x006f7d5f    90
                         push               ecx                                           // 0x006f7d60    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7d61    8b0d105cd900
                         push               ebx                                           // 0x006f7d67    53
                         push               esi                                           // 0x006f7d68    56
                         push               edi                                           // 0x006f7d69    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f7d6a    8d44240c
                         push               eax                                           // 0x006f7d6e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7d6f    e84ceeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7d74    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f7d7a    8d54240c
                         push               edx                                           // 0x006f7d7e    52
                         mov.s              ebx, eax                                      // 0x006f7d7f    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7d81    e83aeeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7d86    8b0d105cd900
                         mov.s              esi, eax                                      // 0x006f7d8c    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f7d8e    8d44240c
                         push               eax                                           // 0x006f7d92    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7d93    e828eeffff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7d98    8b0d5c19d000
                         mov.s              edi, eax                                      // 0x006f7d9e    8bf8
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7da0    e8dbb1e5ff
                         test               eax, eax                                      // 0x006f7da5    85c0
                         {disp8} je         _jmp_addr_0x006f7dba                          // 0x006f7da7    7411
                         test               ebx, ebx                                      // 0x006f7da9    85db
                         {disp8} je         _jmp_addr_0x006f7dba                          // 0x006f7dab    740d
                         push               0x00c0c1a8                                    // 0x006f7dad    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7db2    e8f9e4ffff
                         add                esp, 0x04                                     // 0x006f7db7    83c404
_jmp_addr_0x006f7dba:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7dba    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7dc0    e8bbb1e5ff
                         cmp                esi, 0x00001b3e                               // 0x006f7dc5    81fe3e1b0000
                         .byte              0x72, 0xf// {disp8} jb _jmp_addr_0x006f7ddc   // 0x006f7dcb    720f
                         push               0x00c0d3e8                                    // 0x006f7dcd    68e8d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7dd2    e8d9e4ffff
                         add                esp, 0x04                                     // 0x006f7dd7    83c404
                         xor.s              esi, esi                                      // 0x006f7dda    33f6
_jmp_addr_0x006f7ddc:    test               edi, edi                                      // 0x006f7ddc    85ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7dde    a15c19d000
                         {disp8} jne        _jmp_addr_0x006f7df8                          // 0x006f7de3    7513
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7de5    8b885c002500
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x006f7deb    8b5114
                         {disp32} mov       ecx, dword ptr [edx + 0x000000b0]             // 0x006f7dee    8b8ab0000000
                         test               ecx, ecx                                      // 0x006f7df4    85c9
                         {disp8} je         _jmp_addr_0x006f7e08                          // 0x006f7df6    7410
_jmp_addr_0x006f7df8:    {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7df8    8b885c002500
                         call               ?ClearAllText@HelpSystem@@QAEXXZ              // 0x006f7dfe    e84dd7ecff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7e03    a15c19d000
_jmp_addr_0x006f7e08:    {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x006f7e08    8b805c002500
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006f7e0e    8b4814
                         push               0x1                                           // 0x006f7e11    6a01
                         push               0x0                                           // 0x006f7e13    6a00
                         {disp32} mov       dword ptr [ecx + 0x000000b0], edi             // 0x006f7e15    89b9b0000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f7e1b    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x006f7e21    8b8a5c002500
                         push               ebx                                           // 0x006f7e27    53
                         push               esi                                           // 0x006f7e28    56
                         call               _jmp_addr_0x005c5f90                          // 0x006f7e29    e862e1ecff
                         pop                edi                                           // 0x006f7e2e    5f
                         pop                esi                                           // 0x006f7e2f    5e
                         pop                ebx                                           // 0x006f7e30    5b
                         pop                ecx                                           // 0x006f7e31    59
                         ret                                                              // 0x006f7e32    c3
                         nop                                                              // 0x006f7e33    90
                         nop                                                              // 0x006f7e34    90
                         nop                                                              // 0x006f7e35    90
                         nop                                                              // 0x006f7e36    90
                         nop                                                              // 0x006f7e37    90
                         nop                                                              // 0x006f7e38    90
                         nop                                                              // 0x006f7e39    90
                         nop                                                              // 0x006f7e3a    90
                         nop                                                              // 0x006f7e3b    90
                         nop                                                              // 0x006f7e3c    90
                         nop                                                              // 0x006f7e3d    90
                         nop                                                              // 0x006f7e3e    90
                         nop                                                              // 0x006f7e3f    90
                         push               ecx                                           // 0x006f7e40    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7e41    8b0d105cd900
                         push               ebx                                           // 0x006f7e47    53
                         push               esi                                           // 0x006f7e48    56
                         push               edi                                           // 0x006f7e49    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f7e4a    8d44240c
                         push               eax                                           // 0x006f7e4e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7e4f    e86cedffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f7e54    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006f7e5a    8d4c240c
                         push               ecx                                           // 0x006f7e5e    51
                         mov.s              ecx, esi                                      // 0x006f7e5f    8bce
                         mov.s              ebx, eax                                      // 0x006f7e61    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7e63    e858edffff
                         push               eax                                           // 0x006f7e68    50
                         mov.s              ecx, esi                                      // 0x006f7e69    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x006f7e6b    e860edffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7e70    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f7e76    8d54240c
                         push               edx                                           // 0x006f7e7a    52
                         mov.s              esi, eax                                      // 0x006f7e7b    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7e7d    e83eedffff
                         push               esi                                           // 0x006f7e82    56
                         mov.s              edi, eax                                      // 0x006f7e83    8bf8
                         call               _CHAR2WCHAR__FPc                              // 0x006f7e85    e816821300
                         add                esp, 0x04                                     // 0x006f7e8a    83c404
                         push               eax                                           // 0x006f7e8d    50
                         push               0x00c0d420                                    // 0x006f7e8e    6820d4c000
                         push               0x00d96164                                    // 0x006f7e93    686461d900
                         call               dword ptr [rdata_bytes + 0x360]               // 0x006f7e98    ff1560938a00
                         push               0x00c0d3f8                                    // 0x006f7e9e    68f8d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7ea3    e808e4ffff
                         add                esp, 0x10                                     // 0x006f7ea8    83c410
                         test               esi, esi                                      // 0x006f7eab    85f6
                         {disp8} jne        _jmp_addr_0x006f7ebc                          // 0x006f7ead    750d
                         push               0x00c0c714                                    // 0x006f7eaf    6814c7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7eb4    e8f7e3ffff
                         add                esp, 0x04                                     // 0x006f7eb9    83c404
_jmp_addr_0x006f7ebc:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7ebc    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7ec2    e8b9b0e5ff
                         test               eax, eax                                      // 0x006f7ec7    85c0
                         {disp8} je         _jmp_addr_0x006f7edc                          // 0x006f7ec9    7411
                         test               ebx, ebx                                      // 0x006f7ecb    85db
                         {disp8} je         _jmp_addr_0x006f7edc                          // 0x006f7ecd    740d
                         push               0x00c0c1a8                                    // 0x006f7ecf    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7ed4    e8d7e3ffff
                         add                esp, 0x04                                     // 0x006f7ed9    83c404
_jmp_addr_0x006f7edc:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7edc    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7ee2    e899b0e5ff
                         push               esi                                           // 0x006f7ee7    56
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z      // 0x006f7ee8    e8d3e3ffff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7eed    a15c19d000
                         add                esp, 0x04                                     // 0x006f7ef2    83c404
                         test               edi, edi                                      // 0x006f7ef5    85ff
                         {disp8} jne        _jmp_addr_0x006f7f0c                          // 0x006f7ef7    7513
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7ef9    8b885c002500
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x006f7eff    8b5114
                         {disp32} mov       ecx, dword ptr [edx + 0x000000b0]             // 0x006f7f02    8b8ab0000000
                         test               ecx, ecx                                      // 0x006f7f08    85c9
                         {disp8} je         _jmp_addr_0x006f7f1c                          // 0x006f7f0a    7410
_jmp_addr_0x006f7f0c:    {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f7f0c    8b885c002500
                         call               ?ClearAllText@HelpSystem@@QAEXXZ              // 0x006f7f12    e839d6ecff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f7f17    a15c19d000
_jmp_addr_0x006f7f1c:    {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x006f7f1c    8b805c002500
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006f7f22    8b4814
                         push               0x0                                           // 0x006f7f25    6a00
                         push               0x1                                           // 0x006f7f27    6a01
                         push               0x0                                           // 0x006f7f29    6a00
                         {disp32} mov       dword ptr [ecx + 0x000000b0], edi             // 0x006f7f2b    89b9b0000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f7f31    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x006f7f37    8b8a5c002500
                         push               ebx                                           // 0x006f7f3d    53
                         push               0x00d96164                                    // 0x006f7f3e    686461d900
                         call               _jmp_addr_0x005c6100                          // 0x006f7f43    e8b8e1ecff
                         pop                edi                                           // 0x006f7f48    5f
                         pop                esi                                           // 0x006f7f49    5e
                         pop                ebx                                           // 0x006f7f4a    5b
                         pop                ecx                                           // 0x006f7f4b    59
                         ret                                                              // 0x006f7f4c    c3
                         nop                                                              // 0x006f7f4d    90
                         nop                                                              // 0x006f7f4e    90
                         nop                                                              // 0x006f7f4f    90
                         push               ecx                                           // 0x006f7f50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7f51    8b0d105cd900
                         push               ebx                                           // 0x006f7f57    53
                         push               ebp                                           // 0x006f7f58    55
                         push               esi                                           // 0x006f7f59    56
                         push               edi                                           // 0x006f7f5a    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f7f5b    8d442410
                         push               eax                                           // 0x006f7f5f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7f60    e85becffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7f65    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f7f6b    8d542410
                         push               edx                                           // 0x006f7f6f    52
                         mov.s              ebx, eax                                      // 0x006f7f70    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7f72    e849ecffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f7f77    8b35105cd900
                         mov.s              ebp, eax                                      // 0x006f7f7d    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f7f7f    8d442410
                         push               eax                                           // 0x006f7f83    50
                         mov.s              ecx, esi                                      // 0x006f7f84    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7f86    e835ecffff
                         push               eax                                           // 0x006f7f8b    50
                         mov.s              ecx, esi                                      // 0x006f7f8c    8bce
                         call               _jmp_addr_0x006f6bd0                          // 0x006f7f8e    e83decffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f7f93    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f7f99    8d542410
                         push               edx                                           // 0x006f7f9d    52
                         mov.s              esi, eax                                      // 0x006f7f9e    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f7fa0    e81becffff
                         push               esi                                           // 0x006f7fa5    56
                         mov.s              edi, eax                                      // 0x006f7fa6    8bf8
                         call               _CHAR2WCHAR__FPc                              // 0x006f7fa8    e8f3801300
                         add                esp, 0x04                                     // 0x006f7fad    83c404
                         push               eax                                           // 0x006f7fb0    50
                         push               0x00c0d420                                    // 0x006f7fb1    6820d4c000
                         push               0x00d96064                                    // 0x006f7fb6    686460d900
                         call               dword ptr [rdata_bytes + 0x360]               // 0x006f7fbb    ff1560938a00
                         add                esp, 0x0c                                     // 0x006f7fc1    83c40c
                         test               esi, esi                                      // 0x006f7fc4    85f6
                         {disp8} jne        _jmp_addr_0x006f7fd5                          // 0x006f7fc6    750d
                         push               0x00c0c714                                    // 0x006f7fc8    6814c7c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7fcd    e8dee2ffff
                         add                esp, 0x04                                     // 0x006f7fd2    83c404
_jmp_addr_0x006f7fd5:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7fd5    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7fdb    e8a0afe5ff
                         test               eax, eax                                      // 0x006f7fe0    85c0
                         {disp8} je         _jmp_addr_0x006f7ff5                          // 0x006f7fe2    7411
                         test               ebx, ebx                                      // 0x006f7fe4    85db
                         {disp8} je         _jmp_addr_0x006f7ff5                          // 0x006f7fe6    740d
                         push               0x00c0c1a8                                    // 0x006f7fe8    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f7fed    e8bee2ffff
                         add                esp, 0x04                                     // 0x006f7ff2    83c404
_jmp_addr_0x006f7ff5:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f7ff5    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f7ffb    e880afe5ff
                         test               edi, edi                                      // 0x006f8000    85ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f8002    a15c19d000
                         {disp8} jne        _jmp_addr_0x006f801c                          // 0x006f8007    7513
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f8009    8b885c002500
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x006f800f    8b5114
                         {disp32} mov       ecx, dword ptr [edx + 0x000000b0]             // 0x006f8012    8b8ab0000000
                         test               ecx, ecx                                      // 0x006f8018    85c9
                         {disp8} je         _jmp_addr_0x006f802c                          // 0x006f801a    7410
_jmp_addr_0x006f801c:    {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f801c    8b885c002500
                         call               ?ClearAllText@HelpSystem@@QAEXXZ              // 0x006f8022    e829d5ecff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f8027    a15c19d000
_jmp_addr_0x006f802c:    {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x006f802c    8b805c002500
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x006f8032    8b4814
                         push               0x0                                           // 0x006f8035    6a00
                         push               0x1                                           // 0x006f8037    6a01
                         push               ebp                                           // 0x006f8039    55
                         {disp32} mov       dword ptr [ecx + 0x000000b0], edi             // 0x006f803a    89b9b0000000
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f8040    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x0025005c]             // 0x006f8046    8b8a5c002500
                         push               ebx                                           // 0x006f804c    53
                         push               0x00d96064                                    // 0x006f804d    686460d900
                         call               _jmp_addr_0x005c6100                          // 0x006f8052    e8a9e0ecff
                         pop                edi                                           // 0x006f8057    5f
                         pop                esi                                           // 0x006f8058    5e
                         pop                ebp                                           // 0x006f8059    5d
                         pop                ebx                                           // 0x006f805a    5b
                         pop                ecx                                           // 0x006f805b    59
                         ret                                                              // 0x006f805c    c3
                         nop                                                              // 0x006f805d    90
                         nop                                                              // 0x006f805e    90
                         nop                                                              // 0x006f805f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f8060    8b0d5c19d000
                         sub                esp, 0x10                                     // 0x006f8066    83ec10
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f8069    e812afe5ff
                         test               eax, eax                                      // 0x006f806e    85c0
                         {disp8} je         _jmp_addr_0x006f807f                          // 0x006f8070    740d
                         push               0x00c0c1a8                                    // 0x006f8072    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8077    e834e2ffff
                         add                esp, 0x04                                     // 0x006f807c    83c404
_jmp_addr_0x006f807f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f807f    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f8085    e8f6aee5ff
                         test               eax, eax                                      // 0x006f808a    85c0
                         {disp8} je         _jmp_addr_0x006f80a1                          // 0x006f808c    7413
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f808e    8b0d105cd900
                         push               0x6                                           // 0x006f8094    6a06
                         push               0x1                                           // 0x006f8096    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8098    e803ebffff
                         add                esp, 0x10                                     // 0x006f809d    83c410
                         ret                                                              // 0x006f80a0    c3
_jmp_addr_0x006f80a1:    push               esi                                           // 0x006f80a1    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f80a2    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f80a8    8d442404
                         push               eax                                           // 0x006f80ac    50
                         mov.s              ecx, esi                                      // 0x006f80ad    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f80af    e80cebffff
                         mov.s              ecx, eax                                      // 0x006f80b4    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f80b6    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006f80ba    894c2410
                         push               edx                                           // 0x006f80be    52
                         mov.s              ecx, esi                                      // 0x006f80bf    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f80c1    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f80c5    e8f6eaffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f80ca    8d4c2404
                         push               ecx                                           // 0x006f80ce    51
                         mov.s              ecx, esi                                      // 0x006f80cf    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f80d1    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f80d5    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f80d9    e8e2eaffff
                         mov.s              edx, eax                                      // 0x006f80de    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f80e0    89442404
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f80e4    a15c19d000
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x006f80e9    89542408
                         cmp                dword ptr [eax + 0x00205a28], 0x01            // 0x006f80ed    83b8285a200001
                         pop                esi                                           // 0x006f80f4    5e
                         {disp8} jne        _jmp_addr_0x006f810a                          // 0x006f80f5    7513
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f80f7    8b0d105cd900
                         push               0x6                                           // 0x006f80fd    6a06
                         push               0x0                                           // 0x006f80ff    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8101    e89aeaffff
                         add                esp, 0x10                                     // 0x006f8106    83c410
                         ret                                                              // 0x006f8109    c3
_jmp_addr_0x006f810a:    {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f810a    8d4c2404
                         push               ecx                                           // 0x006f810e    51
                         call               _jmp_addr_0x0081f1d0                          // 0x006f810f    e8bc701200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8114    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f811a    83c404
                         push               0x6                                           // 0x006f811d    6a06
                         push               eax                                           // 0x006f811f    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8120    e87beaffff
                         add                esp, 0x10                                     // 0x006f8125    83c410
                         ret                                                              // 0x006f8128    c3
                         nop                                                              // 0x006f8129    90
                         nop                                                              // 0x006f812a    90
                         nop                                                              // 0x006f812b    90
                         nop                                                              // 0x006f812c    90
                         nop                                                              // 0x006f812d    90
                         nop                                                              // 0x006f812e    90
                         nop                                                              // 0x006f812f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f8130    8b0d5c19d000
                         sub                esp, 0x14                                     // 0x006f8136    83ec14
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f8139    e842aee5ff
                         test               eax, eax                                      // 0x006f813e    85c0
                         {disp8} je         _jmp_addr_0x006f814f                          // 0x006f8140    740d
                         push               0x00c0c1a8                                    // 0x006f8142    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8147    e864e1ffff
                         add                esp, 0x04                                     // 0x006f814c    83c404
_jmp_addr_0x006f814f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f814f    8b0d5c19d000
                         push               esi                                           // 0x006f8155    56
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x006f8156    e825aee5ff
                         test               eax, eax                                      // 0x006f815b    85c0
                         {disp8} je         _jmp_addr_0x006f8173                          // 0x006f815d    7414
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f815f    8b0d105cd900
                         push               0x6                                           // 0x006f8165    6a06
                         push               0x1                                           // 0x006f8167    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8169    e832eaffff
                         pop                esi                                           // 0x006f816e    5e
                         add                esp, 0x14                                     // 0x006f816f    83c414
                         ret                                                              // 0x006f8172    c3
_jmp_addr_0x006f8173:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8173    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f8179    8d442408
                         push               eax                                           // 0x006f817d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f817e    e83deaffff
                         push               eax                                           // 0x006f8183    50
                         call               _jmp_addr_0x0070d220                          // 0x006f8184    e897500100
                         mov.s              esi, eax                                      // 0x006f8189    8bf0
                         add                esp, 0x04                                     // 0x006f818b    83c404
                         test               esi, esi                                      // 0x006f818e    85f6
                         {disp8} jne        _jmp_addr_0x006f819f                          // 0x006f8190    750d
                         push               0x00c0d428                                    // 0x006f8192    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8197    e814e1ffff
                         add                esp, 0x04                                     // 0x006f819c    83c404
_jmp_addr_0x006f819f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x006f819f    8b0d5c19d000
                         cmp                dword ptr [ecx + 0x00205a28], 0x01            // 0x006f81a5    83b9285a200001
                         {disp32} je        _jmp_addr_0x006f8246                          // 0x006f81ac    0f8494000000
                         test               esi, esi                                      // 0x006f81b2    85f6
                         {disp32} je        _jmp_addr_0x006f8246                          // 0x006f81b4    0f848c000000
                         push               0x0                                           // 0x006f81ba    6a00
                         push               0x009c7f50                                    // 0x006f81bc    68507f9c00
                         push               0x009c7f30                                    // 0x006f81c1    68307f9c00
                         push               0x0                                           // 0x006f81c6    6a00
                         push               esi                                           // 0x006f81c8    56
                         call               ___RTDynamicCast                              // 0x006f81c9    e84bd80c00
                         add                esp, 0x14                                     // 0x006f81ce    83c414
                         test               eax, eax                                      // 0x006f81d1    85c0
                         {disp8} je         _jmp_addr_0x006f81f4                          // 0x006f81d3    741f
                         {disp8} mov        edx, dword ptr [eax + 0x40]                   // 0x006f81d5    8b5040
                         push               edx                                           // 0x006f81d8    52
                         call               _jmp_addr_0x0081f1a0                          // 0x006f81d9    e8c26f1200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f81de    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f81e4    83c404
                         push               0x6                                           // 0x006f81e7    6a06
                         push               eax                                           // 0x006f81e9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f81ea    e8b1e9ffff
                         pop                esi                                           // 0x006f81ef    5e
                         add                esp, 0x14                                     // 0x006f81f0    83c414
                         ret                                                              // 0x006f81f3    c3
_jmp_addr_0x006f81f4:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x006f81f4    8b461c
                         add                esi, 0x14                                     // 0x006f81f7    83c614
                         mov.s              ecx, esi                                      // 0x006f81fa    8bce
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f81fc    89442404
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f8200    e88bae1000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f8205    d8442404
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006f8209    8d4c240c
                         push               ecx                                           // 0x006f820d    51
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006f820e    d95c2414
                         fild               dword ptr [esi]                               // 0x006f8212    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f8214    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006f821a    d95c2410
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x006f821e    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f8221    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006f8227    d95c2418
                         call               _jmp_addr_0x0081f1d0                          // 0x006f822b    e8a06f1200
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8230    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f8236    83c404
                         push               0x6                                           // 0x006f8239    6a06
                         push               eax                                           // 0x006f823b    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f823c    e85fe9ffff
                         pop                esi                                           // 0x006f8241    5e
                         add                esp, 0x14                                     // 0x006f8242    83c414
                         ret                                                              // 0x006f8245    c3
_jmp_addr_0x006f8246:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8246    8b0d105cd900
                         push               0x6                                           // 0x006f824c    6a06
                         push               0x0                                           // 0x006f824e    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8250    e84be9ffff
                         pop                esi                                           // 0x006f8255    5e
                         add                esp, 0x14                                     // 0x006f8256    83c414
                         ret                                                              // 0x006f8259    c3
                         nop                                                              // 0x006f825a    90
                         nop                                                              // 0x006f825b    90
                         nop                                                              // 0x006f825c    90
                         nop                                                              // 0x006f825d    90
                         nop                                                              // 0x006f825e    90
                         nop                                                              // 0x006f825f    90
_jmp_addr_0x006f8260:    {disp32} mov       eax, dword ptr [_game]                        // 0x006f8260    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x0025005c]             // 0x006f8265    8b885c002500
                         call               _jmp_addr_0x005c64e0                          // 0x006f826b    e870e2ecff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8270    8b0d105cd900
                         push               0x6                                           // 0x006f8276    6a06
                         push               eax                                           // 0x006f8278    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8279    e822e9ffff
                         ret                                                              // 0x006f827e    c3
                         nop                                                              // 0x006f827f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f8280    8b442404
                         push               0x0                                           // 0x006f8284    6a00
                         push               0x009c8de8                                    // 0x006f8286    68e88d9c00
                         push               0x009c7f30                                    // 0x006f828b    68307f9c00
                         push               0x0                                           // 0x006f8290    6a00
                         push               eax                                           // 0x006f8292    50
                         call               ___RTDynamicCast                              // 0x006f8293    e881d70c00
                         add                esp, 0x14                                     // 0x006f8298    83c414
                         test               eax, eax                                      // 0x006f829b    85c0
                         {disp8} je         _jmp_addr_0x006f82b8                          // 0x006f829d    7419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f829f    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f82a5    8b9190002500
                         {disp8} mov        ecx, dword ptr [edx + 0x24]                   // 0x006f82ab    8b4a24
                         push               ecx                                           // 0x006f82ae    51
                         push               eax                                           // 0x006f82af    50
                         call               _jmp_addr_0x006f82e0                          // 0x006f82b0    e82b000000
                         add                esp, 0x08                                     // 0x006f82b5    83c408
_jmp_addr_0x006f82b8:    xor.s              eax, eax                                      // 0x006f82b8    33c0
                         ret                                                              // 0x006f82ba    c3
                         nop                                                              // 0x006f82bb    90
                         nop                                                              // 0x006f82bc    90
                         nop                                                              // 0x006f82bd    90
                         nop                                                              // 0x006f82be    90
                         nop                                                              // 0x006f82bf    90
_jmp_addr_0x006f82c0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f82c0    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f82c4    8b4c2404
                         push               eax                                           // 0x006f82c8    50
                         push               0x2                                           // 0x006f82c9    6a02
                         add                ecx, 0x0000008c                               // 0x006f82cb    81c18c000000
                         call               @SetState__12LivingActionFUlUc@16             // 0x006f82d1    e8ba49efff
                         ret                                                              // 0x006f82d6    c3
                         nop                                                              // 0x006f82d7    90
                         nop                                                              // 0x006f82d8    90
                         nop                                                              // 0x006f82d9    90
                         nop                                                              // 0x006f82da    90
                         nop                                                              // 0x006f82db    90
                         nop                                                              // 0x006f82dc    90
                         nop                                                              // 0x006f82dd    90
                         nop                                                              // 0x006f82de    90
                         nop                                                              // 0x006f82df    90
_jmp_addr_0x006f82e0:    push               esi                                           // 0x006f82e0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f82e1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f82e5    8b06
                         push               edi                                           // 0x006f82e7    57
                         mov.s              ecx, esi                                      // 0x006f82e8    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f82ea    ff5034
                         test               eax, eax                                      // 0x006f82ed    85c0
                         {disp8} je         _jmp_addr_0x006f831e                          // 0x006f82ef    742d
                         {disp32} mov       edi, dword ptr [esi + 0x0000128c]             // 0x006f82f1    8bbe8c120000
                         push               edi                                           // 0x006f82f7    57
                         mov.s              ecx, esi                                      // 0x006f82f8    8bce
                         call               _jmp_addr_0x0047b140                          // 0x006f82fa    e8412ed8ff
                         test               eax, eax                                      // 0x006f82ff    85c0
                         {disp8} je         _jmp_addr_0x006f830e                          // 0x006f8301    740b
                         push               edi                                           // 0x006f8303    57
                         mov.s              ecx, esi                                      // 0x006f8304    8bce
                         call               _jmp_addr_0x004f6e30                          // 0x006f8306    e825ebdfff
                         pop                edi                                           // 0x006f830b    5f
                         pop                esi                                           // 0x006f830c    5e
                         ret                                                              // 0x006f830d    c3
_jmp_addr_0x006f830e:    push               0x41200000                                    // 0x006f830e    6800002041
                         push               edi                                           // 0x006f8313    57
                         mov.s              ecx, esi                                      // 0x006f8314    8bce
                         call               _jmp_addr_0x004f6f10                          // 0x006f8316    e8f5ebdfff
                         pop                edi                                           // 0x006f831b    5f
                         pop                esi                                           // 0x006f831c    5e
                         ret                                                              // 0x006f831d    c3
_jmp_addr_0x006f831e:    mov                edx, dword ptr [esi]                          // 0x006f831e    8b16
                         mov.s              ecx, esi                                      // 0x006f8320    8bce
                         call               dword ptr [edx + 0x2c]                        // 0x006f8322    ff522c
                         test               eax, eax                                      // 0x006f8325    85c0
                         {disp8} je         _jmp_addr_0x006f836d                          // 0x006f8327    7444
                         mov                eax, dword ptr [esi]                          // 0x006f8329    8b06
                         mov.s              ecx, esi                                      // 0x006f832b    8bce
                         call               dword ptr [eax + 0x178]                       // 0x006f832d    ff9078010000
                         test               eax, eax                                      // 0x006f8333    85c0
                         {disp8} je         _jmp_addr_0x006f836d                          // 0x006f8335    7436
                         mov                edx, dword ptr [esi]                          // 0x006f8337    8b16
                         mov.s              ecx, esi                                      // 0x006f8339    8bce
                         call               dword ptr [edx + 0x8ec]                       // 0x006f833b    ff92ec080000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x006f8341    8b7c2410
                         mov                eax, dword ptr [esi]                          // 0x006f8345    8b06
                         push               edi                                           // 0x006f8347    57
                         mov.s              ecx, esi                                      // 0x006f8348    8bce
                         call               dword ptr [eax + 0x904]                       // 0x006f834a    ff9004090000
                         mov                edx, dword ptr [esi]                          // 0x006f8350    8b16
                         push               edi                                           // 0x006f8352    57
                         mov.s              ecx, esi                                      // 0x006f8353    8bce
                         call               dword ptr [edx + 0x90c]                       // 0x006f8355    ff920c090000
                         mov                eax, dword ptr [esi]                          // 0x006f835b    8b06
                         push               0x1                                           // 0x006f835d    6a01
                         mov.s              ecx, esi                                      // 0x006f835f    8bce
                         call               dword ptr [eax + 0x8fc]                       // 0x006f8361    ff90fc080000
                         {disp8} mov        word ptr [esi + 0x58], 0x0000                 // 0x006f8367    66c746580000
_jmp_addr_0x006f836d:    pop                edi                                           // 0x006f836d    5f
                         pop                esi                                           // 0x006f836e    5e
                         ret                                                              // 0x006f836f    c3
                         push               ecx                                           // 0x006f8370    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8371    8b0d105cd900
                         push               esi                                           // 0x006f8377    56
                         push               edi                                           // 0x006f8378    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f8379    8d442408
                         push               eax                                           // 0x006f837d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f837e    e83de8ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8383    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f8389    8d542408
                         push               edx                                           // 0x006f838d    52
                         mov.s              edi, eax                                      // 0x006f838e    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8390    e82be8ffff
                         push               eax                                           // 0x006f8395    50
                         call               _jmp_addr_0x0070d220                          // 0x006f8396    e8854e0100
                         mov.s              esi, eax                                      // 0x006f839b    8bf0
                         add                esp, 0x04                                     // 0x006f839d    83c404
                         test               esi, esi                                      // 0x006f83a0    85f6
                         {disp8} jne        _jmp_addr_0x006f83b5                          // 0x006f83a2    7511
                         push               0x00c0d428                                    // 0x006f83a4    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f83a9    e802dfffff
                         add                esp, 0x04                                     // 0x006f83ae    83c404
                         pop                edi                                           // 0x006f83b1    5f
                         pop                esi                                           // 0x006f83b2    5e
                         pop                ecx                                           // 0x006f83b3    59
                         ret                                                              // 0x006f83b4    c3
_jmp_addr_0x006f83b5:    mov                eax, dword ptr [esi]                          // 0x006f83b5    8b06
                         mov.s              ecx, esi                                      // 0x006f83b7    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x006f83b9    ff90f8030000
                         test               eax, eax                                      // 0x006f83bf    85c0
                         {disp8} je         _jmp_addr_0x006f840e                          // 0x006f83c1    744b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f83c3    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f83c9    8b9190002500
                         {disp8} mov        dword ptr [edx + 0x24], edi                   // 0x006f83cf    897a24
                         mov                eax, dword ptr [esi]                          // 0x006f83d2    8b06
                         mov.s              ecx, esi                                      // 0x006f83d4    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006f83d6    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x006f83dc    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]       // 0x006f83df    8b04cd3cc7c000
                         test               eax, eax                                      // 0x006f83e6    85c0
                         {disp8} je         _jmp_addr_0x006f83fd                          // 0x006f83e8    7413
                         push               0x0                                           // 0x006f83ea    6a00
                         push               0x0                                           // 0x006f83ec    6a00
                         push               0x006f8280                                    // 0x006f83ee    6880826f00
                         push               esi                                           // 0x006f83f3    56
                         call               eax                                           // 0x006f83f4    ffd0
                         add                esp, 0x10                                     // 0x006f83f6    83c410
                         pop                edi                                           // 0x006f83f9    5f
                         pop                esi                                           // 0x006f83fa    5e
                         pop                ecx                                           // 0x006f83fb    59
                         ret                                                              // 0x006f83fc    c3
_jmp_addr_0x006f83fd:    push               0x00c0c688                                    // 0x006f83fd    6888c6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8402    e8a9deffff
                         add                esp, 0x04                                     // 0x006f8407    83c404
                         pop                edi                                           // 0x006f840a    5f
                         pop                esi                                           // 0x006f840b    5e
                         pop                ecx                                           // 0x006f840c    59
                         ret                                                              // 0x006f840d    c3
_jmp_addr_0x006f840e:    push               0x0                                           // 0x006f840e    6a00
                         push               0x009c8de8                                    // 0x006f8410    68e88d9c00
                         push               0x009c7f30                                    // 0x006f8415    68307f9c00
                         push               0x0                                           // 0x006f841a    6a00
                         push               esi                                           // 0x006f841c    56
                         call               ___RTDynamicCast                              // 0x006f841d    e8f7d50c00
                         mov.s              esi, eax                                      // 0x006f8422    8bf0
                         add                esp, 0x14                                     // 0x006f8424    83c414
                         test               esi, esi                                      // 0x006f8427    85f6
                         {disp8} je         _jmp_addr_0x006f8447                          // 0x006f8429    741c
                         mov                edx, dword ptr [esi]                          // 0x006f842b    8b16
                         mov.s              ecx, esi                                      // 0x006f842d    8bce
                         call               dword ptr [edx + 0x17c]                       // 0x006f842f    ff927c010000
                         test               eax, eax                                      // 0x006f8435    85c0
                         {disp8} jne        _jmp_addr_0x006f8447                          // 0x006f8437    750e
                         push               edi                                           // 0x006f8439    57
                         push               esi                                           // 0x006f843a    56
                         call               _jmp_addr_0x006f82e0                          // 0x006f843b    e8a0feffff
                         add                esp, 0x08                                     // 0x006f8440    83c408
                         pop                edi                                           // 0x006f8443    5f
                         pop                esi                                           // 0x006f8444    5e
                         pop                ecx                                           // 0x006f8445    59
                         ret                                                              // 0x006f8446    c3
_jmp_addr_0x006f8447:    push               0x00c0d440                                    // 0x006f8447    6840d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f844c    e85fdeffff
                         add                esp, 0x04                                     // 0x006f8451    83c404
                         pop                edi                                           // 0x006f8454    5f
                         pop                esi                                           // 0x006f8455    5e
                         pop                ecx                                           // 0x006f8456    59
                         ret                                                              // 0x006f8457    c3
                         nop                                                              // 0x006f8458    90
                         nop                                                              // 0x006f8459    90
                         nop                                                              // 0x006f845a    90
                         nop                                                              // 0x006f845b    90
                         nop                                                              // 0x006f845c    90
                         nop                                                              // 0x006f845d    90
                         nop                                                              // 0x006f845e    90
                         nop                                                              // 0x006f845f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f8460    8b442404
                         sub                esp, 0x0c                                     // 0x006f8464    83ec0c
                         push               esi                                           // 0x006f8467    56
                         push               0x0                                           // 0x006f8468    6a00
                         push               0x009cafc8                                    // 0x006f846a    68c8af9c00
                         push               0x009c7f30                                    // 0x006f846f    68307f9c00
                         push               0x0                                           // 0x006f8474    6a00
                         push               eax                                           // 0x006f8476    50
                         call               ___RTDynamicCast                              // 0x006f8477    e89dd50c00
                         mov.s              esi, eax                                      // 0x006f847c    8bf0
                         add                esp, 0x14                                     // 0x006f847e    83c414
                         test               esi, esi                                      // 0x006f8481    85f6
                         {disp8} je         _jmp_addr_0x006f84ae                          // 0x006f8483    7429
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f8485    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f848b    8b9190002500
                         add                edx, 0x40                                     // 0x006f8491    83c240
                         push               edx                                           // 0x006f8494    52
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f8495    8d4c2408
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f8499    e8c2acf0ff
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f849e    8d442404
                         push               eax                                           // 0x006f84a2    50
                         {disp32} lea       ecx, dword ptr [esi + 0x0000010c]             // 0x006f84a3    8d8e0c010000
                         call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z    // 0x006f84a9    e85294eeff
_jmp_addr_0x006f84ae:    xor.s              eax, eax                                      // 0x006f84ae    33c0
                         pop                esi                                           // 0x006f84b0    5e
                         add                esp, 0x0c                                     // 0x006f84b1    83c40c
                         ret                                                              // 0x006f84b4    c3
                         nop                                                              // 0x006f84b5    90
                         nop                                                              // 0x006f84b6    90
                         nop                                                              // 0x006f84b7    90
                         nop                                                              // 0x006f84b8    90
                         nop                                                              // 0x006f84b9    90
                         nop                                                              // 0x006f84ba    90
                         nop                                                              // 0x006f84bb    90
                         nop                                                              // 0x006f84bc    90
                         nop                                                              // 0x006f84bd    90
                         nop                                                              // 0x006f84be    90
                         nop                                                              // 0x006f84bf    90
                         sub                esp, 0x1c                                     // 0x006f84c0    83ec1c
                         push               esi                                           // 0x006f84c3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f84c4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f84ca    8d442404
                         push               eax                                           // 0x006f84ce    50
                         mov.s              ecx, esi                                      // 0x006f84cf    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f84d1    e8eae6ffff
                         mov.s              ecx, eax                                      // 0x006f84d6    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f84d8    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006f84dc    894c2410
                         push               edx                                           // 0x006f84e0    52
                         mov.s              ecx, esi                                      // 0x006f84e1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f84e3    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f84e7    e8d4e6ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f84ec    8d4c2404
                         push               ecx                                           // 0x006f84f0    51
                         mov.s              ecx, esi                                      // 0x006f84f1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f84f3    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f84f7    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f84fb    e8c0e6ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8500    8b0d105cd900
                         mov.s              edx, eax                                      // 0x006f8506    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f8508    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f850c    8d442404
                         push               eax                                           // 0x006f8510    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006f8511    8954240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8515    e8a6e6ffff
                         push               eax                                           // 0x006f851a    50
                         call               _jmp_addr_0x0070d220                          // 0x006f851b    e8004d0100
                         mov.s              esi, eax                                      // 0x006f8520    8bf0
                         add                esp, 0x04                                     // 0x006f8522    83c404
                         test               esi, esi                                      // 0x006f8525    85f6
                         {disp8} jne        _jmp_addr_0x006f853b                          // 0x006f8527    7512
                         push               0x00c0d428                                    // 0x006f8529    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f852e    e87dddffff
                         add                esp, 0x04                                     // 0x006f8533    83c404
                         pop                esi                                           // 0x006f8536    5e
                         add                esp, 0x1c                                     // 0x006f8537    83c41c
                         ret                                                              // 0x006f853a    c3
_jmp_addr_0x006f853b:    mov                edx, dword ptr [esi]                          // 0x006f853b    8b16
                         mov.s              ecx, esi                                      // 0x006f853d    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006f853f    ff92f8030000
                         test               eax, eax                                      // 0x006f8545    85c0
                         {disp8} je         _jmp_addr_0x006f85a9                          // 0x006f8547    7460
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f8549    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f854e    8b8890002500
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x006f8554    8b542408
                         add                ecx, 0x40                                     // 0x006f8558    83c140
                         mov                dword ptr [ecx], edx                          // 0x006f855b    8911
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f855d    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x006f8561    894104
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f8564    8b542410
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x006f8568    895108
                         mov                eax, dword ptr [esi]                          // 0x006f856b    8b06
                         mov.s              ecx, esi                                      // 0x006f856d    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006f856f    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x006f8575    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]       // 0x006f8578    8b04cd3cc7c000
                         test               eax, eax                                      // 0x006f857f    85c0
                         {disp8} je         _jmp_addr_0x006f8597                          // 0x006f8581    7414
                         push               0x0                                           // 0x006f8583    6a00
                         push               0x0                                           // 0x006f8585    6a00
                         push               0x006f8460                                    // 0x006f8587    6860846f00
                         push               esi                                           // 0x006f858c    56
                         call               eax                                           // 0x006f858d    ffd0
                         add                esp, 0x10                                     // 0x006f858f    83c410
                         pop                esi                                           // 0x006f8592    5e
                         add                esp, 0x1c                                     // 0x006f8593    83c41c
                         ret                                                              // 0x006f8596    c3
_jmp_addr_0x006f8597:    push               0x00c0c688                                    // 0x006f8597    6888c6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f859c    e80fddffff
                         add                esp, 0x04                                     // 0x006f85a1    83c404
                         pop                esi                                           // 0x006f85a4    5e
                         add                esp, 0x1c                                     // 0x006f85a5    83c41c
                         ret                                                              // 0x006f85a8    c3
_jmp_addr_0x006f85a9:    push               0x0                                           // 0x006f85a9    6a00
                         push               0x009cafc8                                    // 0x006f85ab    68c8af9c00
                         push               0x009c7f30                                    // 0x006f85b0    68307f9c00
                         push               0x0                                           // 0x006f85b5    6a00
                         push               esi                                           // 0x006f85b7    56
                         call               ___RTDynamicCast                              // 0x006f85b8    e85cd40c00
                         mov.s              esi, eax                                      // 0x006f85bd    8bf0
                         add                esp, 0x14                                     // 0x006f85bf    83c414
                         test               esi, esi                                      // 0x006f85c2    85f6
                         {disp8} je         _jmp_addr_0x006f85e9                          // 0x006f85c4    7423
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f85c6    8d542408
                         push               edx                                           // 0x006f85ca    52
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x006f85cb    8d4c2418
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f85cf    e88cabf0ff
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f85d4    8d442414
                         push               eax                                           // 0x006f85d8    50
                         {disp32} lea       ecx, dword ptr [esi + 0x0000010c]             // 0x006f85d9    8d8e0c010000
                         call               ?Init@JustWholeMapXZ@@QAEXABUMapCoords@@@Z    // 0x006f85df    e81c93eeff
                         pop                esi                                           // 0x006f85e4    5e
                         add                esp, 0x1c                                     // 0x006f85e5    83c41c
                         ret                                                              // 0x006f85e8    c3
_jmp_addr_0x006f85e9:    push               0x00c0d460                                    // 0x006f85e9    6860d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f85ee    e8bddcffff
                         add                esp, 0x04                                     // 0x006f85f3    83c404
                         pop                esi                                           // 0x006f85f6    5e
                         add                esp, 0x1c                                     // 0x006f85f7    83c41c
                         ret                                                              // 0x006f85fa    c3
                         nop                                                              // 0x006f85fb    90
                         nop                                                              // 0x006f85fc    90
                         nop                                                              // 0x006f85fd    90
                         nop                                                              // 0x006f85fe    90
                         nop                                                              // 0x006f85ff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f8600    8b442404
                         push               0x0                                           // 0x006f8604    6a00
                         push               0x009cafc8                                    // 0x006f8606    68c8af9c00
                         push               0x009c7f30                                    // 0x006f860b    68307f9c00
                         push               0x0                                           // 0x006f8610    6a00
                         push               eax                                           // 0x006f8612    50
                         call               ___RTDynamicCast                              // 0x006f8613    e801d40c00
                         add                esp, 0x14                                     // 0x006f8618    83c414
                         test               eax, eax                                      // 0x006f861b    85c0
                         {disp8} je         _jmp_addr_0x006f8634                          // 0x006f861d    7415
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f861f    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f8625    8b9190002500
                         {disp8} fld        dword ptr [edx + 0x20]                        // 0x006f862b    d94220
                         {disp32} fstp      dword ptr [eax + 0x00000118]                  // 0x006f862e    d99818010000
_jmp_addr_0x006f8634:    xor.s              eax, eax                                      // 0x006f8634    33c0
                         ret                                                              // 0x006f8636    c3
                         nop                                                              // 0x006f8637    90
                         nop                                                              // 0x006f8638    90
                         nop                                                              // 0x006f8639    90
                         nop                                                              // 0x006f863a    90
                         nop                                                              // 0x006f863b    90
                         nop                                                              // 0x006f863c    90
                         nop                                                              // 0x006f863d    90
                         nop                                                              // 0x006f863e    90
                         nop                                                              // 0x006f863f    90
                         sub                esp, 0x08                                     // 0x006f8640    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8643    8b0d105cd900
                         push               esi                                           // 0x006f8649    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f864a    8d442404
                         push               eax                                           // 0x006f864e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f864f    e86ce5ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8654    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f865a    8d542408
                         push               edx                                           // 0x006f865e    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f865f    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8663    e858e5ffff
                         push               eax                                           // 0x006f8668    50
                         call               _jmp_addr_0x0070d220                          // 0x006f8669    e8b24b0100
                         mov.s              esi, eax                                      // 0x006f866e    8bf0
                         add                esp, 0x04                                     // 0x006f8670    83c404
                         test               esi, esi                                      // 0x006f8673    85f6
                         {disp8} jne        _jmp_addr_0x006f8689                          // 0x006f8675    7512
                         push               0x00c0d428                                    // 0x006f8677    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f867c    e82fdcffff
                         add                esp, 0x04                                     // 0x006f8681    83c404
                         pop                esi                                           // 0x006f8684    5e
                         add                esp, 0x08                                     // 0x006f8685    83c408
                         ret                                                              // 0x006f8688    c3
_jmp_addr_0x006f8689:    mov                eax, dword ptr [esi]                          // 0x006f8689    8b06
                         mov.s              ecx, esi                                      // 0x006f868b    8bce
                         call               dword ptr [eax + 0x3f8]                       // 0x006f868d    ff90f8030000
                         test               eax, eax                                      // 0x006f8693    85c0
                         {disp8} je         _jmp_addr_0x006f86e8                          // 0x006f8695    7451
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f8697    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f869d    8b9190002500
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f86a3    8b442404
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x006f86a7    894220
                         mov                edx, dword ptr [esi]                          // 0x006f86aa    8b16
                         mov.s              ecx, esi                                      // 0x006f86ac    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x006f86ae    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006f86b4    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006f86b7    8b04c53cc7c000
                         test               eax, eax                                      // 0x006f86be    85c0
                         {disp8} je         _jmp_addr_0x006f86d6                          // 0x006f86c0    7414
                         push               0x0                                           // 0x006f86c2    6a00
                         push               0x0                                           // 0x006f86c4    6a00
                         push               0x006f8600                                    // 0x006f86c6    6800866f00
                         push               esi                                           // 0x006f86cb    56
                         call               eax                                           // 0x006f86cc    ffd0
                         add                esp, 0x10                                     // 0x006f86ce    83c410
                         pop                esi                                           // 0x006f86d1    5e
                         add                esp, 0x08                                     // 0x006f86d2    83c408
                         ret                                                              // 0x006f86d5    c3
_jmp_addr_0x006f86d6:    push               0x00c0c688                                    // 0x006f86d6    6888c6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f86db    e8d0dbffff
                         add                esp, 0x04                                     // 0x006f86e0    83c404
                         pop                esi                                           // 0x006f86e3    5e
                         add                esp, 0x08                                     // 0x006f86e4    83c408
                         ret                                                              // 0x006f86e7    c3
_jmp_addr_0x006f86e8:    push               0x0                                           // 0x006f86e8    6a00
                         push               0x009cafc8                                    // 0x006f86ea    68c8af9c00
                         push               0x009c7f30                                    // 0x006f86ef    68307f9c00
                         push               0x0                                           // 0x006f86f4    6a00
                         push               esi                                           // 0x006f86f6    56
                         call               ___RTDynamicCast                              // 0x006f86f7    e81dd30c00
                         add                esp, 0x14                                     // 0x006f86fc    83c414
                         test               eax, eax                                      // 0x006f86ff    85c0
                         {disp8} je         _jmp_addr_0x006f8712                          // 0x006f8701    740f
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f8703    8b4c2404
                         {disp32} mov       dword ptr [eax + 0x00000118], ecx             // 0x006f8707    898818010000
                         pop                esi                                           // 0x006f870d    5e
                         add                esp, 0x08                                     // 0x006f870e    83c408
                         ret                                                              // 0x006f8711    c3
_jmp_addr_0x006f8712:    push               0x00c0d460                                    // 0x006f8712    6860d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8717    e894dbffff
                         add                esp, 0x04                                     // 0x006f871c    83c404
                         pop                esi                                           // 0x006f871f    5e
                         add                esp, 0x08                                     // 0x006f8720    83c408
                         ret                                                              // 0x006f8723    c3
                         nop                                                              // 0x006f8724    90
                         nop                                                              // 0x006f8725    90
                         nop                                                              // 0x006f8726    90
                         nop                                                              // 0x006f8727    90
                         nop                                                              // 0x006f8728    90
                         nop                                                              // 0x006f8729    90
                         nop                                                              // 0x006f872a    90
                         nop                                                              // 0x006f872b    90
                         nop                                                              // 0x006f872c    90
                         nop                                                              // 0x006f872d    90
                         nop                                                              // 0x006f872e    90
                         nop                                                              // 0x006f872f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f8730    8b442404
                         push               0x0                                           // 0x006f8734    6a00
                         push               0x009cafc8                                    // 0x006f8736    68c8af9c00
                         push               0x009c7f30                                    // 0x006f873b    68307f9c00
                         push               0x0                                           // 0x006f8740    6a00
                         push               eax                                           // 0x006f8742    50
                         call               ___RTDynamicCast                              // 0x006f8743    e8d1d20c00
                         add                esp, 0x14                                     // 0x006f8748    83c414
                         test               eax, eax                                      // 0x006f874b    85c0
                         {disp8} je         _jmp_addr_0x006f876d                          // 0x006f874d    741e
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f874f    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x006f8755    8b8990002500
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x006f875b    8b5128
                         {disp8} mov        ecx, dword ptr [ecx + 0x24]                   // 0x006f875e    8b4924
                         {disp32} mov       dword ptr [eax + 0x0000011c], ecx             // 0x006f8761    89881c010000
                         {disp32} mov       dword ptr [eax + 0x00000120], edx             // 0x006f8767    899020010000
_jmp_addr_0x006f876d:    xor.s              eax, eax                                      // 0x006f876d    33c0
                         ret                                                              // 0x006f876f    c3
                         push               ecx                                           // 0x006f8770    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8771    8b0d105cd900
                         push               ebx                                           // 0x006f8777    53
                         push               esi                                           // 0x006f8778    56
                         push               edi                                           // 0x006f8779    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f877a    8d44240c
                         push               eax                                           // 0x006f877e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f877f    e83ce4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8784    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f878a    8d54240c
                         push               edx                                           // 0x006f878e    52
                         mov.s              edi, eax                                      // 0x006f878f    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8791    e82ae4ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8796    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006f879c    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f879e    8d44240c
                         push               eax                                           // 0x006f87a2    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f87a3    e818e4ffff
                         push               eax                                           // 0x006f87a8    50
                         call               _jmp_addr_0x0070d220                          // 0x006f87a9    e8724a0100
                         mov.s              esi, eax                                      // 0x006f87ae    8bf0
                         add                esp, 0x04                                     // 0x006f87b0    83c404
                         test               esi, esi                                      // 0x006f87b3    85f6
                         {disp8} jne        _jmp_addr_0x006f87c9                          // 0x006f87b5    7512
                         push               0x00c0d428                                    // 0x006f87b7    6828d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f87bc    e8efdaffff
                         add                esp, 0x04                                     // 0x006f87c1    83c404
                         pop                edi                                           // 0x006f87c4    5f
                         pop                esi                                           // 0x006f87c5    5e
                         pop                ebx                                           // 0x006f87c6    5b
                         pop                ecx                                           // 0x006f87c7    59
                         ret                                                              // 0x006f87c8    c3
_jmp_addr_0x006f87c9:    mov                edx, dword ptr [esi]                          // 0x006f87c9    8b16
                         mov.s              ecx, esi                                      // 0x006f87cb    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006f87cd    ff92f8030000
                         test               eax, eax                                      // 0x006f87d3    85c0
                         {disp8} je         _jmp_addr_0x006f8832                          // 0x006f87d5    745b
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f87d7    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f87dc    8b8890002500
                         {disp8} mov        dword ptr [ecx + 0x24], ebx                   // 0x006f87e2    895924
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f87e5    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]             // 0x006f87eb    8b8290002500
                         {disp8} mov        dword ptr [eax + 0x28], edi                   // 0x006f87f1    897828
                         mov                edx, dword ptr [esi]                          // 0x006f87f4    8b16
                         mov.s              ecx, esi                                      // 0x006f87f6    8bce
                         call               dword ptr [edx + 0x4e8]                       // 0x006f87f8    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x006f87fe    8d0440
                         {disp32} mov       eax, dword ptr [eax * 0x8 + 0x00c0c73c]       // 0x006f8801    8b04c53cc7c000
                         test               eax, eax                                      // 0x006f8808    85c0
                         {disp8} je         _jmp_addr_0x006f8820                          // 0x006f880a    7414
                         push               0x0                                           // 0x006f880c    6a00
                         push               0x0                                           // 0x006f880e    6a00
                         push               0x006f8730                                    // 0x006f8810    6830876f00
                         push               esi                                           // 0x006f8815    56
                         call               eax                                           // 0x006f8816    ffd0
                         add                esp, 0x10                                     // 0x006f8818    83c410
                         pop                edi                                           // 0x006f881b    5f
                         pop                esi                                           // 0x006f881c    5e
                         pop                ebx                                           // 0x006f881d    5b
                         pop                ecx                                           // 0x006f881e    59
                         ret                                                              // 0x006f881f    c3
_jmp_addr_0x006f8820:    push               0x00c0c688                                    // 0x006f8820    6888c6c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8825    e886daffff
                         add                esp, 0x04                                     // 0x006f882a    83c404
                         pop                edi                                           // 0x006f882d    5f
                         pop                esi                                           // 0x006f882e    5e
                         pop                ebx                                           // 0x006f882f    5b
                         pop                ecx                                           // 0x006f8830    59
                         ret                                                              // 0x006f8831    c3
_jmp_addr_0x006f8832:    push               0x0                                           // 0x006f8832    6a00
                         push               0x009cafc8                                    // 0x006f8834    68c8af9c00
                         push               0x009c7f30                                    // 0x006f8839    68307f9c00
                         push               0x0                                           // 0x006f883e    6a00
                         push               esi                                           // 0x006f8840    56
                         call               ___RTDynamicCast                              // 0x006f8841    e8d3d10c00
                         add                esp, 0x14                                     // 0x006f8846    83c414
                         test               eax, eax                                      // 0x006f8849    85c0
                         {disp8} je         _jmp_addr_0x006f885e                          // 0x006f884b    7411
                         {disp32} mov       dword ptr [eax + 0x00000120], edi             // 0x006f884d    89b820010000
                         pop                edi                                           // 0x006f8853    5f
                         pop                esi                                           // 0x006f8854    5e
                         {disp32} mov       dword ptr [eax + 0x0000011c], ebx             // 0x006f8855    89981c010000
                         pop                ebx                                           // 0x006f885b    5b
                         pop                ecx                                           // 0x006f885c    59
                         ret                                                              // 0x006f885d    c3
_jmp_addr_0x006f885e:    push               0x0                                           // 0x006f885e    6a00
                         push               0x009c8060                                    // 0x006f8860    6860809c00
                         push               0x009c7f30                                    // 0x006f8865    68307f9c00
                         push               0x0                                           // 0x006f886a    6a00
                         push               esi                                           // 0x006f886c    56
                         call               ___RTDynamicCast                              // 0x006f886d    e8a7d10c00
                         add                esp, 0x14                                     // 0x006f8872    83c414
                         test               eax, eax                                      // 0x006f8875    85c0
                         {disp8} jne        _jmp_addr_0x006f888b                          // 0x006f8877    7512
                         push               0x00c0d484                                    // 0x006f8879    6884d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f887e    e82ddaffff
                         add                esp, 0x04                                     // 0x006f8883    83c404
                         pop                edi                                           // 0x006f8886    5f
                         pop                esi                                           // 0x006f8887    5e
                         pop                ebx                                           // 0x006f8888    5b
                         pop                ecx                                           // 0x006f8889    59
                         ret                                                              // 0x006f888a    c3
_jmp_addr_0x006f888b:    {disp32} mov       dword ptr [eax + 0x00001290], edi             // 0x006f888b    89b890120000
                         pop                edi                                           // 0x006f8891    5f
                         pop                esi                                           // 0x006f8892    5e
                         {disp32} mov       dword ptr [eax + 0x0000128c], ebx             // 0x006f8893    89988c120000
                         pop                ebx                                           // 0x006f8899    5b
                         pop                ecx                                           // 0x006f889a    59
                         ret                                                              // 0x006f889b    c3
                         nop                                                              // 0x006f889c    90
                         nop                                                              // 0x006f889d    90
                         nop                                                              // 0x006f889e    90
                         nop                                                              // 0x006f889f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f88a0    8b0d105cd900
                         sub                esp, 0x14                                     // 0x006f88a6    83ec14
                         push               esi                                           // 0x006f88a9    56
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f88aa    8d442408
                         push               eax                                           // 0x006f88ae    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f88af    e80ce3ffff
                         push               eax                                           // 0x006f88b4    50
                         call               _jmp_addr_0x0070d220                          // 0x006f88b5    e866490100
                         mov.s              esi, eax                                      // 0x006f88ba    8bf0
                         add                esp, 0x04                                     // 0x006f88bc    83c404
                         test               esi, esi                                      // 0x006f88bf    85f6
                         {disp8} jne        _jmp_addr_0x006f8923                          // 0x006f88c1    7560
                         push               0x00c0c258                                    // 0x006f88c3    6858c2c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f88c8    e8e3d9ffff
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x006f88cd    d90598a38a00
                         add                esp, 0x04                                     // 0x006f88d3    83c404
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x006f88d6    89742414
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x006f88da    89742410
_jmp_addr_0x006f88de:    {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f88de    8b35105cd900
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x006f88e4    d95c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f88e8    8b4c2404
                         push               0x3                                           // 0x006f88ec    6a03
                         push               ecx                                           // 0x006f88ee    51
                         mov.s              ecx, esi                                      // 0x006f88ef    8bce
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f88f1    e8aae2ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f88f6    8b542410
                         push               0x3                                           // 0x006f88fa    6a03
                         mov.s              eax, edx                                      // 0x006f88fc    8bc2
                         push               eax                                           // 0x006f88fe    50
                         mov.s              ecx, esi                                      // 0x006f88ff    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006f8901    8954240c
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8905    e896e2ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006f890a    8b4c2414
                         mov.s              edx, ecx                                      // 0x006f890e    8bd1
                         push               0x3                                           // 0x006f8910    6a03
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x006f8912    894c2408
                         push               edx                                           // 0x006f8916    52
                         mov.s              ecx, esi                                      // 0x006f8917    8bce
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8919    e882e2ffff
                         pop                esi                                           // 0x006f891e    5e
                         add                esp, 0x14                                     // 0x006f891f    83c414
                         ret                                                              // 0x006f8922    c3
_jmp_addr_0x006f8923:    mov                edx, dword ptr [esi]                          // 0x006f8923    8b16
                         mov.s              ecx, esi                                      // 0x006f8925    8bce
                         call               dword ptr [edx + 0x3ec]                       // 0x006f8927    ff92ec030000
                         test               eax, eax                                      // 0x006f892d    85c0
                         {disp8} je         _jmp_addr_0x006f8973                          // 0x006f892f    7442
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x006f8931    8b4640
                         test               eax, eax                                      // 0x006f8934    85c0
                         {disp8} je         _jmp_addr_0x006f8956                          // 0x006f8936    741e
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006f8938    8b4008
                         test               eax, eax                                      // 0x006f893b    85c0
                         {disp8} je         _jmp_addr_0x006f8956                          // 0x006f893d    7417
                         {disp8} lea        esi, dword ptr [eax + 0x14]                   // 0x006f893f    8d7014
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f8942    8b4608
                         mov.s              ecx, esi                                      // 0x006f8945    8bce
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f8947    89442404
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f894b    e840a71000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f8950    d8442404
                         {disp8} jmp        _jmp_addr_0x006f89ca                          // 0x006f8954    eb74
_jmp_addr_0x006f8956:    mov.s              ecx, esi                                      // 0x006f8956    8bce
                         call               ?GetFlockPos@Flock@@QAEPAUMapCoords@@XZ       // 0x006f8958    e8137ce3ff
                         mov.s              esi, eax                                      // 0x006f895d    8bf0
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f895f    8b4e08
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x006f8962    894c2404
                         mov.s              ecx, esi                                      // 0x006f8966    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f8968    e823a71000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f896d    d8442404
                         {disp8} jmp        _jmp_addr_0x006f89ca                          // 0x006f8971    eb57
_jmp_addr_0x006f8973:    mov                edx, dword ptr [esi]                          // 0x006f8973    8b16
                         mov.s              ecx, esi                                      // 0x006f8975    8bce
                         call               dword ptr [edx + 0x408]                       // 0x006f8977    ff9208040000
                         test               eax, eax                                      // 0x006f897d    85c0
                         {disp8} je         _jmp_addr_0x006f89e8                          // 0x006f897f    7467
                         mov                eax, dword ptr [esi]                          // 0x006f8981    8b06
                         mov.s              ecx, esi                                      // 0x006f8983    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f8985    ff5034
                         test               eax, eax                                      // 0x006f8988    85c0
                         {disp8} jne        _jmp_addr_0x006f89e8                          // 0x006f898a    755c
                         push               eax                                           // 0x006f898c    50
                         mov.s              ecx, esi                                      // 0x006f898d    8bce
                         call               @AreWeThere__13MobileWallHugFf@12             // 0x006f898f    e8ac23f1ff
                         test               eax, eax                                      // 0x006f8994    85c0
                         {disp8} je         _jmp_addr_0x006f89b5                          // 0x006f8996    741d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000088]             // 0x006f8998    8b8e88000000
                         add                esi, 0x00000080                               // 0x006f899e    81c680000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x006f89a4    894c2404
                         mov.s              ecx, esi                                      // 0x006f89a8    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f89aa    e8e1a61000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f89af    d8442404
                         {disp8} jmp        _jmp_addr_0x006f89ca                          // 0x006f89b3    eb15
_jmp_addr_0x006f89b5:    {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x006f89b5    8b561c
                         add                esi, 0x14                                     // 0x006f89b8    83c614
                         mov.s              ecx, esi                                      // 0x006f89bb    8bce
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x006f89bd    89542404
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f89c1    e8caa61000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f89c6    d8442404
_jmp_addr_0x006f89ca:    {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006f89ca    d95c2410
                         fild               dword ptr [esi]                               // 0x006f89ce    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f89d0    d80da4a38a00
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x006f89d6    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f89d9    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006f89df    d95c2414
                         {disp32} jmp       _jmp_addr_0x006f88de                          // 0x006f89e3    e9f6feffff
_jmp_addr_0x006f89e8:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x006f89e8    8b461c
                         add                esi, 0x14                                     // 0x006f89eb    83c614
                         mov.s              ecx, esi                                      // 0x006f89ee    8bce
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f89f0    89442404
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f89f4    e897a61000
                         {disp8} fadd       dword ptr [esp + 0x04]                        // 0x006f89f9    d8442404
                         {disp8} jmp        _jmp_addr_0x006f89ca                          // 0x006f89fd    ebcb
                         nop                                                              // 0x006f89ff    90
                         sub                esp, 0x34                                     // 0x006f8a00    83ec34
                         push               ebx                                           // 0x006f8a03    53
                         push               esi                                           // 0x006f8a04    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f8a05    8b35105cd900
                         push               edi                                           // 0x006f8a0b    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f8a0c    8d442414
                         push               eax                                           // 0x006f8a10    50
                         mov.s              ecx, esi                                      // 0x006f8a11    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8a13    e8a8e1ffff
                         mov.s              ecx, eax                                      // 0x006f8a18    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x006f8a1a    8d542414
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x006f8a1e    894c243c
                         push               edx                                           // 0x006f8a22    52
                         mov.s              ecx, esi                                      // 0x006f8a23    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f8a25    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8a29    e892e1ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006f8a2e    8d4c2414
                         push               ecx                                           // 0x006f8a32    51
                         mov.s              ecx, esi                                      // 0x006f8a33    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f8a35    89442414
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x006f8a39    8944243c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8a3d    e87ee1ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8a42    8b0d105cd900
                         mov.s              edx, eax                                      // 0x006f8a48    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f8a4a    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x006f8a4e    8d442418
                         push               eax                                           // 0x006f8a52    50
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x006f8a53    89542438
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8a57    e864e1ffff
                         push               eax                                           // 0x006f8a5c    50
                         call               _jmp_addr_0x0070d220                          // 0x006f8a5d    e8be470100
                         mov.s              edi, eax                                      // 0x006f8a62    8bf8
                         add                esp, 0x04                                     // 0x006f8a64    83c404
                         test               edi, edi                                      // 0x006f8a67    85ff
                         {disp8} jne        _jmp_addr_0x006f8a7f                          // 0x006f8a69    7514
                         push               0x00c0c258                                    // 0x006f8a6b    6858c2c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8a70    e83bd8ffff
                         add                esp, 0x04                                     // 0x006f8a75    83c404
                         pop                edi                                           // 0x006f8a78    5f
                         pop                esi                                           // 0x006f8a79    5e
                         pop                ebx                                           // 0x006f8a7a    5b
                         add                esp, 0x34                                     // 0x006f8a7b    83c434
                         ret                                                              // 0x006f8a7e    c3
_jmp_addr_0x006f8a7f:    test               byte ptr [edi + 0x24], 0x04                   // 0x006f8a7f    f6472404
                         {disp8} je         _jmp_addr_0x006f8a92                          // 0x006f8a83    740d
                         push               0x00c0d520                                    // 0x006f8a85    6820d5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8a8a    e821d8ffff
                         add                esp, 0x04                                     // 0x006f8a8f    83c404
_jmp_addr_0x006f8a92:    test               byte ptr [edi + 0x24], 0x40                   // 0x006f8a92    f6472440
                         {disp8} je         _jmp_addr_0x006f8aa5                          // 0x006f8a96    740d
                         push               0x00c0d4f4                                    // 0x006f8a98    68f4d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8a9d    e80ed8ffff
                         add                esp, 0x04                                     // 0x006f8aa2    83c404
_jmp_addr_0x006f8aa5:    test               byte ptr [edi + 0x24], 0x44                   // 0x006f8aa5    f6472444
                         {disp32} jne       _jmp_addr_0x006f8c8b                          // 0x006f8aa9    0f85dc010000
                         push               0x0                                           // 0x006f8aaf    6a00
                         push               0x009c7f50                                    // 0x006f8ab1    68507f9c00
                         push               0x009c7f30                                    // 0x006f8ab6    68307f9c00
                         push               0x0                                           // 0x006f8abb    6a00
                         push               edi                                           // 0x006f8abd    57
                         call               ___RTDynamicCast                              // 0x006f8abe    e856cf0c00
                         add                esp, 0x14                                     // 0x006f8ac3    83c414
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x006f8ac6    8d4c2434
                         push               ecx                                           // 0x006f8aca    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f8acb    8d4c2420
                         mov.s              esi, eax                                      // 0x006f8acf    8bf0
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f8ad1    e88aa6f0ff
                         mov                edx, dword ptr [edi]                          // 0x006f8ad6    8b17
                         mov.s              ecx, edi                                      // 0x006f8ad8    8bcf
                         call               dword ptr [edx + 0x488]                       // 0x006f8ada    ff9288040000
                         test               eax, eax                                      // 0x006f8ae0    85c0
                         {disp8} jne        _jmp_addr_0x006f8ae8                          // 0x006f8ae2    7504
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006f8ae4    89442424
_jmp_addr_0x006f8ae8:    test               esi, esi                                      // 0x006f8ae8    85f6
                         {disp32} je        _jmp_addr_0x006f8c7c                          // 0x006f8aea    0f848c010000
                         {disp8} mov        al, byte ptr [esi + 0x24]                     // 0x006f8af0    8a4624
                         mov                bl, 0x01                                      // 0x006f8af3    b301
                         test               bl, al                                        // 0x006f8af5    84c3
                         {disp8} jne        _jmp_addr_0x006f8b11                          // 0x006f8af7    7518
                         push               0x00c0d4c8                                    // 0x006f8af9    68c8d4c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8afe    e8add7ffff
                         {disp8} mov        al, byte ptr [esi + 0x24]                     // 0x006f8b03    8a4624
                         add                esp, 0x04                                     // 0x006f8b06    83c404
                         test               bl, al                                        // 0x006f8b09    84c3
                         {disp32} je        _jmp_addr_0x006f8c8b                          // 0x006f8b0b    0f847a010000
_jmp_addr_0x006f8b11:    mov                eax, dword ptr [esi]                          // 0x006f8b11    8b06
                         mov.s              ecx, esi                                      // 0x006f8b13    8bce
                         call               dword ptr [eax + 0xa4]                        // 0x006f8b15    ff90a4000000
                         test               eax, eax                                      // 0x006f8b1b    85c0
                         {disp8} je         _jmp_addr_0x006f8b32                          // 0x006f8b1d    7413
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x006f8b1f    8d4c241c
                         push               ecx                                           // 0x006f8b23    51
                         mov.s              ecx, eax                                      // 0x006f8b24    8bc8
                         call               _jmp_addr_0x00479eb0                          // 0x006f8b26    e88513d8ff
                         pop                edi                                           // 0x006f8b2b    5f
                         pop                esi                                           // 0x006f8b2c    5e
                         pop                ebx                                           // 0x006f8b2d    5b
                         add                esp, 0x34                                     // 0x006f8b2e    83c434
                         ret                                                              // 0x006f8b31    c3
_jmp_addr_0x006f8b32:    mov                edx, dword ptr [esi]                          // 0x006f8b32    8b16
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006f8b34    8d44241c
                         push               eax                                           // 0x006f8b38    50
                         mov.s              ecx, esi                                      // 0x006f8b39    8bce
                         call               dword ptr [edx + 0x55c]                       // 0x006f8b3b    ff925c050000
                         {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x006f8b41    8b4640
                         test               eax, eax                                      // 0x006f8b44    85c0
                         {disp32} je        _jmp_addr_0x006f8c40                          // 0x006f8b46    0f84f4000000
                         mov                edx, dword ptr [esi]                          // 0x006f8b4c    8b16
                         push               ebp                                           // 0x006f8b4e    55
                         mov.s              ecx, esi                                      // 0x006f8b4f    8bce
                         call               dword ptr [edx + 0x120]                       // 0x006f8b51    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x006f8b57    d95c2410
                         mov                eax, dword ptr [esi]                          // 0x006f8b5b    8b06
                         mov.s              ecx, esi                                      // 0x006f8b5d    8bce
                         call               dword ptr [eax + 0x508]                       // 0x006f8b5f    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006f8b65    d95c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x006f8b69    8b4c2428
                         {disp8} mov        ebx, dword ptr [esi + 0x40]                   // 0x006f8b6d    8b5e40
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x006f8b70    894c2418
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f8b74    8d4c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f8b78    e813a51000
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x006f8b7d    d8442418
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x006f8b81    d95c2430
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x006f8b85    db442420
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f8b89    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x006f8b8f    d95c242c
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x006f8b93    db442424
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f8b97    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x006f8b9d    d95c2434
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x006f8ba1    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006f8ba5    d81d98a38a00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x006f8bab    d9442410
                         fnstsw             ax                                            // 0x006f8baf    dfe0
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x006f8bb1    d81d90a38a00
                         test               ah, 0x40                                      // 0x006f8bb7    f6c440
                         fnstsw             ax                                            // 0x006f8bba    dfe0
                         {disp8} jne        _jmp_addr_0x006f8c04                          // 0x006f8bbc    7546
                         test               ah, 0x40                                      // 0x006f8bbe    f6c440
                         {disp8} lea        ebp, dword ptr [ebx + 0x14]                   // 0x006f8bc1    8d6b14
                         {disp8} jne        _jmp_addr_0x006f8beb                          // 0x006f8bc4    7525
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f8bc6    8b542410
                         push               edx                                           // 0x006f8bca    52
                         mov.s              ecx, ebp                                      // 0x006f8bcb    8bcd
                         call               _jmp_addr_0x00519320                          // 0x006f8bcd    e84e07e2ff
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x006f8bd2    8d54242c
                         mov.s              ecx, ebp                                      // 0x006f8bd6    8bcd
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x006f8bd8    e893a9d0ff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006f8bdd    8b442414
                         push               eax                                           // 0x006f8be1    50
                         mov.s              ecx, ebp                                      // 0x006f8be2    8bcd
                         call               _jmp_addr_0x005198f0                          // 0x006f8be4    e8070de2ff
                         {disp8} jmp        _jmp_addr_0x006f8c31                          // 0x006f8be9    eb46
_jmp_addr_0x006f8beb:    {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x006f8beb    8d54242c
                         mov.s              ecx, ebp                                      // 0x006f8bef    8bcd
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x006f8bf1    e83aa9d0ff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006f8bf6    8b4c2414
                         push               ecx                                           // 0x006f8bfa    51
                         mov.s              ecx, ebp                                      // 0x006f8bfb    8bcd
                         call               _jmp_addr_0x005198f0                          // 0x006f8bfd    e8ee0ce2ff
                         {disp8} jmp        _jmp_addr_0x006f8c31                          // 0x006f8c02    eb2d
_jmp_addr_0x006f8c04:    test               ah, 0x40                                      // 0x006f8c04    f6c440
                         {disp8} jne        _jmp_addr_0x006f8c25                          // 0x006f8c07    751c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x006f8c09    8b542410
                         {disp8} lea        ebp, dword ptr [ebx + 0x14]                   // 0x006f8c0d    8d6b14
                         push               edx                                           // 0x006f8c10    52
                         mov.s              ecx, ebp                                      // 0x006f8c11    8bcd
                         call               _jmp_addr_0x00519320                          // 0x006f8c13    e80807e2ff
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x006f8c18    8d54242c
                         mov.s              ecx, ebp                                      // 0x006f8c1c    8bcd
                         call               ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z      // 0x006f8c1e    e84da9d0ff
                         {disp8} jmp        _jmp_addr_0x006f8c31                          // 0x006f8c23    eb0c
_jmp_addr_0x006f8c25:    {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x006f8c25    8d54242c
                         {disp8} lea        ecx, dword ptr [ebx + 0x14]                   // 0x006f8c29    8d4b14
                         call               ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z     // 0x006f8c2c    e8ffa8d0ff
_jmp_addr_0x006f8c31:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f8c31    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006f8c35    8b4c2414
                         {disp8} mov        dword ptr [ebx + 0x44], eax                   // 0x006f8c39    894344
                         {disp8} mov        dword ptr [ebx + 0x48], ecx                   // 0x006f8c3c    894b48
                         pop                ebp                                           // 0x006f8c3f    5d
_jmp_addr_0x006f8c40:    {disp8} lea        edx, dword ptr [esi + 0x14]                   // 0x006f8c40    8d5614
                         mov                ecx, dword ptr [edx]                          // 0x006f8c43    8b0a
                         {disp8} lea        eax, dword ptr [esi + 0x2c]                   // 0x006f8c45    8d462c
                         mov                dword ptr [eax], ecx                          // 0x006f8c48    8908
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x006f8c4a    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x006f8c4d    8b5208
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x006f8c50    894804
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x006f8c53    895008
                         mov                eax, dword ptr [esi]                          // 0x006f8c56    8b06
                         mov.s              ecx, esi                                      // 0x006f8c58    8bce
                         call               dword ptr [eax + 0x3c4]                       // 0x006f8c5a    ff90c4030000
                         test               eax, eax                                      // 0x006f8c60    85c0
                         {disp8} je         _jmp_addr_0x006f8c8b                          // 0x006f8c62    7427
                         test               byte ptr [edi + 0x25], 0x04                   // 0x006f8c64    f6472504
                         {disp8} je         _jmp_addr_0x006f8c8b                          // 0x006f8c68    7421
                         push               0x4                                           // 0x006f8c6a    6a04
                         push               edi                                           // 0x006f8c6c    57
                         call               _jmp_addr_0x006f82e0                          // 0x006f8c6d    e86ef6ffff
                         add                esp, 0x08                                     // 0x006f8c72    83c408
                         pop                edi                                           // 0x006f8c75    5f
                         pop                esi                                           // 0x006f8c76    5e
                         pop                ebx                                           // 0x006f8c77    5b
                         add                esp, 0x34                                     // 0x006f8c78    83c434
                         ret                                                              // 0x006f8c7b    c3
_jmp_addr_0x006f8c7c:    mov                edx, dword ptr [edi]                          // 0x006f8c7c    8b17
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006f8c7e    8d44241c
                         push               eax                                           // 0x006f8c82    50
                         mov.s              ecx, edi                                      // 0x006f8c83    8bcf
                         call               dword ptr [edx + 0xfc]                        // 0x006f8c85    ff92fc000000
_jmp_addr_0x006f8c8b:    pop                edi                                           // 0x006f8c8b    5f
                         pop                esi                                           // 0x006f8c8c    5e
                         pop                ebx                                           // 0x006f8c8d    5b
                         add                esp, 0x34                                     // 0x006f8c8e    83c434
                         ret                                                              // 0x006f8c91    c3
                         nop                                                              // 0x006f8c92    90
                         nop                                                              // 0x006f8c93    90
                         nop                                                              // 0x006f8c94    90
                         nop                                                              // 0x006f8c95    90
                         nop                                                              // 0x006f8c96    90
                         nop                                                              // 0x006f8c97    90
                         nop                                                              // 0x006f8c98    90
                         nop                                                              // 0x006f8c99    90
                         nop                                                              // 0x006f8c9a    90
                         nop                                                              // 0x006f8c9b    90
                         nop                                                              // 0x006f8c9c    90
                         nop                                                              // 0x006f8c9d    90
                         nop                                                              // 0x006f8c9e    90
                         nop                                                              // 0x006f8c9f    90
                         sub                esp, 0x30                                     // 0x006f8ca0    83ec30
                         push               esi                                           // 0x006f8ca3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f8ca4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x006f8caa    8d442418
                         push               eax                                           // 0x006f8cae    50
                         mov.s              ecx, esi                                      // 0x006f8caf    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8cb1    e80adfffff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x006f8cb6    8d4c2414
                         push               ecx                                           // 0x006f8cba    51
                         mov.s              ecx, esi                                      // 0x006f8cbb    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f8cbd    8944241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8cc1    e8fadeffff
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f8cc6    8d542410
                         push               edx                                           // 0x006f8cca    52
                         mov.s              ecx, esi                                      // 0x006f8ccb    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x006f8ccd    89442418
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8cd1    e8eadeffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f8cd6    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f8cdc    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f8ce0    8d44240c
                         push               eax                                           // 0x006f8ce4    50
                         mov.s              ecx, esi                                      // 0x006f8ce5    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8ce7    e8d4deffff
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f8cec    8d4c2408
                         push               ecx                                           // 0x006f8cf0    51
                         mov.s              ecx, esi                                      // 0x006f8cf1    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f8cf3    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8cf7    e8c4deffff
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f8cfc    8d542404
                         push               edx                                           // 0x006f8d00    52
                         mov.s              ecx, esi                                      // 0x006f8d01    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f8d03    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8d07    e8b4deffff
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f8d0c    8b4c2408
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f8d10    8b54240c
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f8d14    89442404
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x006f8d18    8944241c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f8d1c    8b442410
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x006f8d20    894c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x006f8d24    8b4c2414
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x006f8d28    89442428
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006f8d2c    8d44241c
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x006f8d30    894c242c
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x006f8d34    89542424
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006f8d38    8b542418
                         push               eax                                           // 0x006f8d3c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x006f8d3d    8d4c242c
                         push               ecx                                           // 0x006f8d41    51
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x006f8d42    89542438
                         call               _jmp_addr_0x0074cde0                          // 0x006f8d46    e895400500
                         {disp32} fcom      dword ptr [_rdata_float0p5]                   // 0x006f8d4b    d815b4a38a00
                         add                esp, 0x08                                     // 0x006f8d51    83c408
                         pop                esi                                           // 0x006f8d54    5e
                         fnstsw             ax                                            // 0x006f8d55    dfe0
                         test               ah, 0x01                                      // 0x006f8d57    f6c401
                         {disp8} je         _jmp_addr_0x006f8d7c                          // 0x006f8d5a    7420
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8d5c    8b0d105cd900
                         fstp               st(0)                                         // 0x006f8d62    ddd8
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x006f8d64    c744241400000000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x006f8d6c    8b542414
                         push               0x2                                           // 0x006f8d70    6a02
                         push               edx                                           // 0x006f8d72    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8d73    e828deffff
                         add                esp, 0x30                                     // 0x006f8d78    83c430
                         ret                                                              // 0x006f8d7b    c3
_jmp_addr_0x006f8d7c:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8d7c    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x006f8d82    d95c2414
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x006f8d86    8b442414
                         push               0x2                                           // 0x006f8d8a    6a02
                         push               eax                                           // 0x006f8d8c    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8d8d    e80edeffff
                         add                esp, 0x30                                     // 0x006f8d92    83c430
                         ret                                                              // 0x006f8d95    c3
                         nop                                                              // 0x006f8d96    90
                         nop                                                              // 0x006f8d97    90
                         nop                                                              // 0x006f8d98    90
                         nop                                                              // 0x006f8d99    90
                         nop                                                              // 0x006f8d9a    90
                         nop                                                              // 0x006f8d9b    90
                         nop                                                              // 0x006f8d9c    90
                         nop                                                              // 0x006f8d9d    90
                         nop                                                              // 0x006f8d9e    90
                         nop                                                              // 0x006f8d9f    90
                         sub                esp, 0x08                                     // 0x006f8da0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8da3    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f8da9    8d442404
                         push               eax                                           // 0x006f8dad    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8dae    e80ddeffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8db3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x006f8db9    8d542400
                         push               edx                                           // 0x006f8dbd    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f8dbe    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8dc2    e8f9ddffff
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006f8dc7    d9442404
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x006f8dcb    89442400
                         {disp8} fsub       dword ptr [esp + 0x00]                        // 0x006f8dcf    d8642400
                         push               0x000002aa                                    // 0x006f8dd3    68aa020000
                         push               0x00c0d548                                    // 0x006f8dd8    6848d5c000
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x006f8ddd    d80590a38a00
                         push               ecx                                           // 0x006f8de3    51
                         fstp               dword ptr [esp]                               // 0x006f8de4    d91c24
                         call               ?GameFloatRand@GRand@@SAMM@Z                  // 0x006f8de7    e84457feff
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x006f8dec    d844240c
                         add                esp, 0x0c                                     // 0x006f8df0    83c40c
                         call               _jmp_addr_0x007a1400                          // 0x006f8df3    e808860a00
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8df8    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f8dfe    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x006f8e02    db442404
                         push               0x2                                           // 0x006f8e06    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x006f8e08    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f8e0c    8b442408
                         push               eax                                           // 0x006f8e10    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8e11    e88addffff
                         add                esp, 0x08                                     // 0x006f8e16    83c408
                         ret                                                              // 0x006f8e19    c3
                         nop                                                              // 0x006f8e1a    90
                         nop                                                              // 0x006f8e1b    90
                         nop                                                              // 0x006f8e1c    90
                         nop                                                              // 0x006f8e1d    90
                         nop                                                              // 0x006f8e1e    90
                         nop                                                              // 0x006f8e1f    90
                         push               ecx                                           // 0x006f8e20    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8e21    8b0d105cd900
                         push               esi                                           // 0x006f8e27    56
                         push               edi                                           // 0x006f8e28    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f8e29    8d442408
                         push               eax                                           // 0x006f8e2d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8e2e    e88dddffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8e33    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f8e39    8d542408
                         push               edx                                           // 0x006f8e3d    52
                         mov.s              esi, eax                                      // 0x006f8e3e    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8e40    e87bddffff
                         mov.s              edi, eax                                      // 0x006f8e45    8bf8
                         push               0x000002b9                                    // 0x006f8e47    68b9020000
                         sub.s              esi, edi                                      // 0x006f8e4c    2bf7
                         push               0x00c0d548                                    // 0x006f8e4e    6848d5c000
                         inc                esi                                           // 0x006f8e53    46
                         push               esi                                           // 0x006f8e54    56
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x006f8e55    e8b656feff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8e5a    8b0d105cd900
                         add                esp, 0x0c                                     // 0x006f8e60    83c40c
                         add.s              eax, edi                                      // 0x006f8e63    03c7
                         push               0x1                                           // 0x006f8e65    6a01
                         push               eax                                           // 0x006f8e67    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f8e68    e833ddffff
                         pop                edi                                           // 0x006f8e6d    5f
                         pop                esi                                           // 0x006f8e6e    5e
                         pop                ecx                                           // 0x006f8e6f    59
                         ret                                                              // 0x006f8e70    c3
                         nop                                                              // 0x006f8e71    90
                         nop                                                              // 0x006f8e72    90
                         nop                                                              // 0x006f8e73    90
                         nop                                                              // 0x006f8e74    90
                         nop                                                              // 0x006f8e75    90
                         nop                                                              // 0x006f8e76    90
                         nop                                                              // 0x006f8e77    90
                         nop                                                              // 0x006f8e78    90
                         nop                                                              // 0x006f8e79    90
                         nop                                                              // 0x006f8e7a    90
                         nop                                                              // 0x006f8e7b    90
                         nop                                                              // 0x006f8e7c    90
                         nop                                                              // 0x006f8e7d    90
                         nop                                                              // 0x006f8e7e    90
                         nop                                                              // 0x006f8e7f    90
                         sub                esp, 0x1c                                     // 0x006f8e80    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8e83    8b0d105cd900
                         push               ebx                                           // 0x006f8e89    53
                         push               esi                                           // 0x006f8e8a    56
                         push               edi                                           // 0x006f8e8b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f8e8c    8d44240c
                         push               eax                                           // 0x006f8e90    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8e91    e82addffff
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f8e96    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006f8e9c    8d4c240c
                         push               ecx                                           // 0x006f8ea0    51
                         mov.s              ecx, esi                                      // 0x006f8ea1    8bce
                         mov.s              ebx, eax                                      // 0x006f8ea3    8bd8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8ea5    e816ddffff
                         mov.s              edx, eax                                      // 0x006f8eaa    8bd0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f8eac    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f8eb0    8d44240c
                         push               eax                                           // 0x006f8eb4    50
                         mov.s              ecx, esi                                      // 0x006f8eb5    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x006f8eb7    8954241c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8ebb    e800ddffff
                         mov.s              ecx, eax                                      // 0x006f8ec0    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f8ec2    8d54240c
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x006f8ec6    894c2414
                         push               edx                                           // 0x006f8eca    52
                         mov.s              ecx, esi                                      // 0x006f8ecb    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f8ecd    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8ed1    e8eadcffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f8ed6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f8edc    8d54240c
                         push               edx                                           // 0x006f8ee0    52
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f8ee1    89442410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x006f8ee5    89442414
                         call               _jmp_addr_0x006f6bc0                          // 0x006f8ee9    e8d2dcffff
                         push               eax                                           // 0x006f8eee    50
                         call               _jmp_addr_0x0070d220                          // 0x006f8eef    e82c430100
                         mov.s              esi, eax                                      // 0x006f8ef4    8bf0
                         add                esp, 0x04                                     // 0x006f8ef6    83c404
                         test               esi, esi                                      // 0x006f8ef9    85f6
                         {disp8} jne        _jmp_addr_0x006f8f11                          // 0x006f8efb    7514
                         push               0x00c0c258                                    // 0x006f8efd    6858c2c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8f02    e8a9d3ffff
                         add                esp, 0x04                                     // 0x006f8f07    83c404
                         pop                edi                                           // 0x006f8f0a    5f
                         pop                esi                                           // 0x006f8f0b    5e
                         pop                ebx                                           // 0x006f8f0c    5b
                         add                esp, 0x1c                                     // 0x006f8f0d    83c41c
                         ret                                                              // 0x006f8f10    c3
_jmp_addr_0x006f8f11:    mov                eax, dword ptr [esi]                          // 0x006f8f11    8b06
                         mov.s              ecx, esi                                      // 0x006f8f13    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f8f15    ff5034
                         test               eax, eax                                      // 0x006f8f18    85c0
                         {disp8} je         _jmp_addr_0x006f8f6c                          // 0x006f8f1a    7450
                         push               0x0                                           // 0x006f8f1c    6a00
                         push               0x009c8060                                    // 0x006f8f1e    6860809c00
                         push               0x009c7f30                                    // 0x006f8f23    68307f9c00
                         push               0x0                                           // 0x006f8f28    6a00
                         push               esi                                           // 0x006f8f2a    56
                         call               ___RTDynamicCast                              // 0x006f8f2b    e8e9ca0c00
                         mov.s              edi, eax                                      // 0x006f8f30    8bf8
                         add                esp, 0x14                                     // 0x006f8f32    83c414
                         test               edi, edi                                      // 0x006f8f35    85ff
                         {disp8} jne        _jmp_addr_0x006f8f46                          // 0x006f8f37    750d
                         push               0x00c0d598                                    // 0x006f8f39    6898d5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f8f3e    e86dd3ffff
                         add                esp, 0x04                                     // 0x006f8f43    83c404
_jmp_addr_0x006f8f46:    mov                edx, dword ptr [esi]                          // 0x006f8f46    8b16
                         mov.s              ecx, esi                                      // 0x006f8f48    8bce
                         call               dword ptr [edx + 0x178]                       // 0x006f8f4a    ff9278010000
                         test               eax, eax                                      // 0x006f8f50    85c0
                         {disp32} je        _jmp_addr_0x006f907e                          // 0x006f8f52    0f8426010000
                         push               ebx                                           // 0x006f8f58    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f8f59    8d442414
                         push               eax                                           // 0x006f8f5d    50
                         mov.s              ecx, edi                                      // 0x006f8f5e    8bcf
                         call               _jmp_addr_0x004f6b60                          // 0x006f8f60    e8fbdbdfff
                         pop                edi                                           // 0x006f8f65    5f
                         pop                esi                                           // 0x006f8f66    5e
                         pop                ebx                                           // 0x006f8f67    5b
                         add                esp, 0x1c                                     // 0x006f8f68    83c41c
                         ret                                                              // 0x006f8f6b    c3
_jmp_addr_0x006f8f6c:    mov                edx, dword ptr [esi]                          // 0x006f8f6c    8b16
                         mov.s              ecx, esi                                      // 0x006f8f6e    8bce
                         call               dword ptr [edx + 0x3c4]                       // 0x006f8f70    ff92c4030000
                         test               eax, eax                                      // 0x006f8f76    85c0
                         {disp8} je         _jmp_addr_0x006f8fe6                          // 0x006f8f78    746c
                         mov                eax, dword ptr [esi]                          // 0x006f8f7a    8b06
                         mov.s              ecx, esi                                      // 0x006f8f7c    8bce
                         call               dword ptr [eax + 0x178]                       // 0x006f8f7e    ff9078010000
                         test               eax, eax                                      // 0x006f8f84    85c0
                         {disp32} je        _jmp_addr_0x006f907e                          // 0x006f8f86    0f84f2000000
                         mov                edx, dword ptr [esi]                          // 0x006f8f8c    8b16
                         mov.s              ecx, esi                                      // 0x006f8f8e    8bce
                         call               dword ptr [edx + 0x17c]                       // 0x006f8f90    ff927c010000
                         test               eax, eax                                      // 0x006f8f96    85c0
                         {disp32} jne       _jmp_addr_0x006f907e                          // 0x006f8f98    0f85e0000000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f8f9e    8d442410
                         push               eax                                           // 0x006f8fa2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f8fa3    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f8fa7    e8b4a1f0ff
                         mov                edx, dword ptr [esi]                          // 0x006f8fac    8b16
                         push               0x0                                           // 0x006f8fae    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x006f8fb0    8d442420
                         push               eax                                           // 0x006f8fb4    50
                         mov.s              ecx, esi                                      // 0x006f8fb5    8bce
                         call               dword ptr [edx + 0x85c]                       // 0x006f8fb7    ff925c080000
                         test               eax, eax                                      // 0x006f8fbd    85c0
                         push               0x4                                           // 0x006f8fbf    6a04
                         {disp8} jne        _jmp_addr_0x006f8fd6                          // 0x006f8fc1    7513
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f8fc3    8d4c2420
                         push               ecx                                           // 0x006f8fc7    51
                         mov.s              ecx, esi                                      // 0x006f8fc8    8bce
                         call               @SetupMoveToPos__6LivingFRC9MapCoordsUc@13    // 0x006f8fca    e86198efff
                         pop                edi                                           // 0x006f8fcf    5f
                         pop                esi                                           // 0x006f8fd0    5e
                         pop                ebx                                           // 0x006f8fd1    5b
                         add                esp, 0x1c                                     // 0x006f8fd2    83c41c
                         ret                                                              // 0x006f8fd5    c3
_jmp_addr_0x006f8fd6:    push               esi                                           // 0x006f8fd6    56
                         call               _jmp_addr_0x006f82e0                          // 0x006f8fd7    e804f3ffff
                         add                esp, 0x08                                     // 0x006f8fdc    83c408
                         pop                edi                                           // 0x006f8fdf    5f
                         pop                esi                                           // 0x006f8fe0    5e
                         pop                ebx                                           // 0x006f8fe1    5b
                         add                esp, 0x1c                                     // 0x006f8fe2    83c41c
                         ret                                                              // 0x006f8fe5    c3
_jmp_addr_0x006f8fe6:    mov                edx, dword ptr [esi]                          // 0x006f8fe6    8b16
                         mov.s              ecx, esi                                      // 0x006f8fe8    8bce
                         call               dword ptr [edx + 0x3ec]                       // 0x006f8fea    ff92ec030000
                         test               eax, eax                                      // 0x006f8ff0    85c0
                         {disp8} je         _jmp_addr_0x006f9011                          // 0x006f8ff2    741d
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f8ff4    8d442410
                         push               eax                                           // 0x006f8ff8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f8ff9    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f8ffd    e85ea1f0ff
                         push               eax                                           // 0x006f9002    50
                         mov.s              ecx, esi                                      // 0x006f9003    8bce
                         call               ?SetDomainCentrePos@Flock@@QAEXABUMapCoords@@@Z                          // 0x006f9005    e8166ce3ff
                         pop                edi                                           // 0x006f900a    5f
                         pop                esi                                           // 0x006f900b    5e
                         pop                ebx                                           // 0x006f900c    5b
                         add                esp, 0x1c                                     // 0x006f900d    83c41c
                         ret                                                              // 0x006f9010    c3
_jmp_addr_0x006f9011:    mov                edx, dword ptr [esi]                          // 0x006f9011    8b16
                         mov.s              ecx, esi                                      // 0x006f9013    8bce
                         call               dword ptr [edx + 0x3fc]                       // 0x006f9015    ff92fc030000
                         test               eax, eax                                      // 0x006f901b    85c0
                         {disp8} je         _jmp_addr_0x006f9032                          // 0x006f901d    7413
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f901f    8d442410
                         push               eax                                           // 0x006f9023    50
                         mov.s              ecx, esi                                      // 0x006f9024    8bce
                         call               _jmp_addr_0x00774550                          // 0x006f9026    e825b50700
                         pop                edi                                           // 0x006f902b    5f
                         pop                esi                                           // 0x006f902c    5e
                         pop                ebx                                           // 0x006f902d    5b
                         add                esp, 0x1c                                     // 0x006f902e    83c41c
                         ret                                                              // 0x006f9031    c3
_jmp_addr_0x006f9032:    mov                edx, dword ptr [esi]                          // 0x006f9032    8b16
                         mov.s              ecx, esi                                      // 0x006f9034    8bce
                         call               dword ptr [edx + 0x4b8]                       // 0x006f9036    ff92b8040000
                         test               eax, eax                                      // 0x006f903c    85c0
                         {disp8} je         _jmp_addr_0x006f9058                          // 0x006f903e    7418
                         push               0x42700000                                    // 0x006f9040    6800007042
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f9045    8d442414
                         push               eax                                           // 0x006f9049    50
                         mov.s              ecx, esi                                      // 0x006f904a    8bce
                         call               _jmp_addr_0x00658510                          // 0x006f904c    e8bff4f5ff
                         pop                edi                                           // 0x006f9051    5f
                         pop                esi                                           // 0x006f9052    5e
                         pop                ebx                                           // 0x006f9053    5b
                         add                esp, 0x1c                                     // 0x006f9054    83c41c
                         ret                                                              // 0x006f9057    c3
_jmp_addr_0x006f9058:    push               0x00c0d56c                                    // 0x006f9058    686cd5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f905d    e84ed2ffff
                         mov                edi, dword ptr [esi]                          // 0x006f9062    8b3e
                         add                esp, 0x04                                     // 0x006f9064    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x006f9067    8d4c2410
                         push               ecx                                           // 0x006f906b    51
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x006f906c    8d4c2420
                         call               @__ct__9MapCoordsFRC7LHPoint@12               // 0x006f9070    e8eba0f0ff
                         push               eax                                           // 0x006f9075    50
                         mov.s              ecx, esi                                      // 0x006f9076    8bce
                         call               dword ptr [edi + 0xfc]                        // 0x006f9078    ff97fc000000
_jmp_addr_0x006f907e:    pop                edi                                           // 0x006f907e    5f
                         pop                esi                                           // 0x006f907f    5e
                         pop                ebx                                           // 0x006f9080    5b
                         add                esp, 0x1c                                     // 0x006f9081    83c41c
                         ret                                                              // 0x006f9084    c3
                         nop                                                              // 0x006f9085    90
                         nop                                                              // 0x006f9086    90
                         nop                                                              // 0x006f9087    90
                         nop                                                              // 0x006f9088    90
                         nop                                                              // 0x006f9089    90
                         nop                                                              // 0x006f908a    90
                         nop                                                              // 0x006f908b    90
                         nop                                                              // 0x006f908c    90
                         nop                                                              // 0x006f908d    90
                         nop                                                              // 0x006f908e    90
                         nop                                                              // 0x006f908f    90
                         {disp32} mov       edx, dword ptr [_game]                        // 0x006f9090    8b155c19d000
                         {disp32} mov       edx, dword ptr [edx + 0x00250090]             // 0x006f9096    8b9290002500
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f909c    8b4c2404
                         mov                eax, dword ptr [ecx]                          // 0x006f90a0    8b01
                         add                edx, 0x40                                     // 0x006f90a2    83c240
                         push               edx                                           // 0x006f90a5    52
                         call               dword ptr [eax + 0x510]                       // 0x006f90a6    ff9010050000
                         xor.s              eax, eax                                      // 0x006f90ac    33c0
                         ret                                                              // 0x006f90ae    c3
                         nop                                                              // 0x006f90af    90
                         sub                esp, 0x10                                     // 0x006f90b0    83ec10
                         push               esi                                           // 0x006f90b3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f90b4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f90ba    8d442404
                         push               eax                                           // 0x006f90be    50
                         mov.s              ecx, esi                                      // 0x006f90bf    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f90c1    e8fadaffff
                         mov.s              ecx, eax                                      // 0x006f90c6    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f90c8    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006f90cc    894c2410
                         push               edx                                           // 0x006f90d0    52
                         mov.s              ecx, esi                                      // 0x006f90d1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f90d3    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f90d7    e8e4daffff
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f90dc    8d4c2404
                         push               ecx                                           // 0x006f90e0    51
                         mov.s              ecx, esi                                      // 0x006f90e1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f90e3    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f90e7    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f90eb    e8d0daffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f90f0    8b0d105cd900
                         mov.s              edx, eax                                      // 0x006f90f6    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f90f8    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f90fc    8d442404
                         push               eax                                           // 0x006f9100    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006f9101    8954240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9105    e8b6daffff
                         push               eax                                           // 0x006f910a    50
                         call               _jmp_addr_0x0070d220                          // 0x006f910b    e810410100
                         mov.s              esi, eax                                      // 0x006f9110    8bf0
                         add                esp, 0x04                                     // 0x006f9112    83c404
                         test               esi, esi                                      // 0x006f9115    85f6
                         {disp8} jne        _jmp_addr_0x006f912b                          // 0x006f9117    7512
                         push               0x00c0c258                                    // 0x006f9119    6858c2c000
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z      // 0x006f911e    e89dd1ffff
                         add                esp, 0x04                                     // 0x006f9123    83c404
                         pop                esi                                           // 0x006f9126    5e
                         add                esp, 0x10                                     // 0x006f9127    83c410
                         ret                                                              // 0x006f912a    c3
_jmp_addr_0x006f912b:    mov                edx, dword ptr [esi]                          // 0x006f912b    8b16
                         mov.s              ecx, esi                                      // 0x006f912d    8bce
                         call               dword ptr [edx + 0x3f8]                       // 0x006f912f    ff92f8030000
                         test               eax, eax                                      // 0x006f9135    85c0
                         {disp8} je         _jmp_addr_0x006f9188                          // 0x006f9137    744f
                         mov                eax, dword ptr [esi]                          // 0x006f9139    8b06
                         mov.s              ecx, esi                                      // 0x006f913b    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006f913d    ff90e8040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f9143    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]             // 0x006f9149    8b9190002500
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f914f    8b4c2408
                         add                edx, 0x40                                     // 0x006f9153    83c240
                         mov                dword ptr [edx], ecx                          // 0x006f9156    890a
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x006f9158    8b4c240c
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x006f915c    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x006f915f    8b4c2410
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x006f9163    894a08
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x006f9166    8d1440
                         {disp32} mov       eax, dword ptr [edx * 0x8 + 0x00c0c73c]       // 0x006f9169    8b04d53cc7c000
                         test               eax, eax                                      // 0x006f9170    85c0
                         {disp8} je         _jmp_addr_0x006f91dd                          // 0x006f9172    7469
                         push               0x0                                           // 0x006f9174    6a00
                         push               0x0                                           // 0x006f9176    6a00
                         push               0x006f9090                                    // 0x006f9178    6890906f00
                         push               esi                                           // 0x006f917d    56
                         call               eax                                           // 0x006f917e    ffd0
                         add                esp, 0x10                                     // 0x006f9180    83c410
                         pop                esi                                           // 0x006f9183    5e
                         add                esp, 0x10                                     // 0x006f9184    83c410
                         ret                                                              // 0x006f9187    c3
_jmp_addr_0x006f9188:    push               0x0                                           // 0x006f9188    6a00
                         push               0x009c7f50                                    // 0x006f918a    68507f9c00
                         push               0x009c7f30                                    // 0x006f918f    68307f9c00
                         push               0x0                                           // 0x006f9194    6a00
                         push               esi                                           // 0x006f9196    56
                         call               ___RTDynamicCast                              // 0x006f9197    e87dc80c00
                         mov.s              esi, eax                                      // 0x006f919c    8bf0
                         add                esp, 0x14                                     // 0x006f919e    83c414
                         test               esi, esi                                      // 0x006f91a1    85f6
                         {disp8} je         _jmp_addr_0x006f91d0                          // 0x006f91a3    742b
                         mov                eax, dword ptr [esi]                          // 0x006f91a5    8b06
                         mov.s              ecx, esi                                      // 0x006f91a7    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f91a9    ff5034
                         test               eax, eax                                      // 0x006f91ac    85c0
                         {disp8} je         _jmp_addr_0x006f91bc                          // 0x006f91ae    740c
                         mov                edx, dword ptr [esi]                          // 0x006f91b0    8b16
                         push               0x1                                           // 0x006f91b2    6a01
                         mov.s              ecx, esi                                      // 0x006f91b4    8bce
                         call               dword ptr [edx + 0x440]                       // 0x006f91b6    ff9240040000
_jmp_addr_0x006f91bc:    mov                eax, dword ptr [esi]                          // 0x006f91bc    8b06
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x006f91be    8d4c2408
                         push               ecx                                           // 0x006f91c2    51
                         mov.s              ecx, esi                                      // 0x006f91c3    8bce
                         call               dword ptr [eax + 0x510]                       // 0x006f91c5    ff9010050000
                         pop                esi                                           // 0x006f91cb    5e
                         add                esp, 0x10                                     // 0x006f91cc    83c410
                         ret                                                              // 0x006f91cf    c3
_jmp_addr_0x006f91d0:    push               0x00c0d5b0                                    // 0x006f91d0    68b0d5c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f91d5    e8d6d0ffff
                         add                esp, 0x04                                     // 0x006f91da    83c404
_jmp_addr_0x006f91dd:    pop                esi                                           // 0x006f91dd    5e
                         add                esp, 0x10                                     // 0x006f91de    83c410
                         ret                                                              // 0x006f91e1    c3
                         nop                                                              // 0x006f91e2    90
                         nop                                                              // 0x006f91e3    90
                         nop                                                              // 0x006f91e4    90
                         nop                                                              // 0x006f91e5    90
                         nop                                                              // 0x006f91e6    90
                         nop                                                              // 0x006f91e7    90
                         nop                                                              // 0x006f91e8    90
                         nop                                                              // 0x006f91e9    90
                         nop                                                              // 0x006f91ea    90
                         nop                                                              // 0x006f91eb    90
                         nop                                                              // 0x006f91ec    90
                         nop                                                              // 0x006f91ed    90
                         nop                                                              // 0x006f91ee    90
                         nop                                                              // 0x006f91ef    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f91f0    8b0d105cd900
                         sub                esp, 0x14                                     // 0x006f91f6    83ec14
                         push               ebx                                           // 0x006f91f9    53
                         push               esi                                           // 0x006f91fa    56
                         push               edi                                           // 0x006f91fb    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f91fc    8d442410
                         push               eax                                           // 0x006f9200    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f9201    e8bad9ffff
                         push               eax                                           // 0x006f9206    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9207    e814400100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f920c    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f9212    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f9215    8d54240c
                         push               edx                                           // 0x006f9219    52
                         mov.s              edi, eax                                      // 0x006f921a    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f921c    e89fd9ffff
                         push               eax                                           // 0x006f9221    50
                         call               _jmp_addr_0x0070d220                          // 0x006f9222    e8f93f0100
                         mov.s              esi, eax                                      // 0x006f9227    8bf0
                         add                esp, 0x04                                     // 0x006f9229    83c404
                         test               esi, esi                                      // 0x006f922c    85f6
                         {disp8} je         _jmp_addr_0x006f9234                          // 0x006f922e    7404
                         test               edi, edi                                      // 0x006f9230    85ff
                         {disp8} jne        _jmp_addr_0x006f9241                          // 0x006f9232    750d
_jmp_addr_0x006f9234:    push               0x00c0cfac                                    // 0x006f9234    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f9239    e872d0ffff
                         add                esp, 0x04                                     // 0x006f923e    83c404
_jmp_addr_0x006f9241:    test               esi, esi                                      // 0x006f9241    85f6
                         {disp8} je         _jmp_addr_0x006f92c1                          // 0x006f9243    747c
                         test               edi, edi                                      // 0x006f9245    85ff
                         {disp8} je         _jmp_addr_0x006f92c1                          // 0x006f9247    7478
                         mov                eax, dword ptr [esi]                          // 0x006f9249    8b06
                         mov.s              ecx, esi                                      // 0x006f924b    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f924d    ff5034
                         test               eax, eax                                      // 0x006f9250    85c0
                         {disp8} je         _jmp_addr_0x006f9263                          // 0x006f9252    740f
                         push               edi                                           // 0x006f9254    57
                         mov.s              ecx, esi                                      // 0x006f9255    8bce
                         call               _jmp_addr_0x004f6850                          // 0x006f9257    e8f4d5dfff
                         pop                edi                                           // 0x006f925c    5f
                         pop                esi                                           // 0x006f925d    5e
                         pop                ebx                                           // 0x006f925e    5b
                         add                esp, 0x14                                     // 0x006f925f    83c414
                         ret                                                              // 0x006f9262    c3
_jmp_addr_0x006f9263:    push               0x0                                           // 0x006f9263    6a00
                         push               0x009c7f50                                    // 0x006f9265    68507f9c00
                         push               0x009c7f30                                    // 0x006f926a    68307f9c00
                         push               0x0                                           // 0x006f926f    6a00
                         push               esi                                           // 0x006f9271    56
                         call               ___RTDynamicCast                              // 0x006f9272    e8a2c70c00
                         mov.s              ebx, eax                                      // 0x006f9277    8bd8
                         add                esp, 0x14                                     // 0x006f9279    83c414
                         test               ebx, ebx                                      // 0x006f927c    85db
                         {disp8} je         _jmp_addr_0x006f92c1                          // 0x006f927e    7441
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x006f9280    8b4f1c
                         {disp8} lea        esi, dword ptr [edi + 0x14]                   // 0x006f9283    8d7714
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x006f9286    894c240c
                         mov.s              ecx, esi                                      // 0x006f928a    8bce
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x006f928c    e8ff9d1000
                         {disp8} fadd       dword ptr [esp + 0x0c]                        // 0x006f9291    d844240c
                         mov                edx, dword ptr [ebx]                          // 0x006f9295    8b13
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f9297    8d442414
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006f929b    d95c2418
                         push               eax                                           // 0x006f929f    50
                         fild               dword ptr [esi]                               // 0x006f92a0    db06
                         mov.s              ecx, ebx                                      // 0x006f92a2    8bcb
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f92a4    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x006f92aa    d95c2418
                         {disp8} fild       dword ptr [esi + 0x04]                        // 0x006f92ae    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]       // 0x006f92b1    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x006f92b7    d95c2420
                         call               dword ptr [edx + 0x510]                       // 0x006f92bb    ff9210050000
_jmp_addr_0x006f92c1:    pop                edi                                           // 0x006f92c1    5f
                         pop                esi                                           // 0x006f92c2    5e
                         pop                ebx                                           // 0x006f92c3    5b
                         add                esp, 0x14                                     // 0x006f92c4    83c414
                         ret                                                              // 0x006f92c7    c3
                         nop                                                              // 0x006f92c8    90
                         nop                                                              // 0x006f92c9    90
                         nop                                                              // 0x006f92ca    90
                         nop                                                              // 0x006f92cb    90
                         nop                                                              // 0x006f92cc    90
                         nop                                                              // 0x006f92cd    90
                         nop                                                              // 0x006f92ce    90
                         nop                                                              // 0x006f92cf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f92d0    8b0d105cd900
                         sub                esp, 0x10                                     // 0x006f92d6    83ec10
                         push               ebx                                           // 0x006f92d9    53
                         push               esi                                           // 0x006f92da    56
                         push               edi                                           // 0x006f92db    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f92dc    8d44240c
                         push               eax                                           // 0x006f92e0    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f92e1    e8dad8ffff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f92e6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f92ec    8d54240c
                         push               edx                                           // 0x006f92f0    52
                         mov.s              edi, eax                                      // 0x006f92f1    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f92f3    e8c8d8ffff
                         mov.s              ebx, eax                                      // 0x006f92f8    8bd8
                         push               ebx                                           // 0x006f92fa    53
                         call               _jmp_addr_0x0070d220                          // 0x006f92fb    e8203f0100
                         mov.s              esi, eax                                      // 0x006f9300    8bf0
                         add                esp, 0x04                                     // 0x006f9302    83c404
                         test               esi, esi                                      // 0x006f9305    85f6
                         {disp32} je        _jmp_addr_0x006f9488                          // 0x006f9307    0f847b010000
                         mov                eax, dword ptr [esi]                          // 0x006f930d    8b06
                         mov.s              ecx, esi                                      // 0x006f930f    8bce
                         call               dword ptr [eax + 0x498]                       // 0x006f9311    ff9098040000
                         test               eax, eax                                      // 0x006f9317    85c0
                         {disp8} je         _jmp_addr_0x006f9334                          // 0x006f9319    7419
                         push               ebx                                           // 0x006f931b    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f931c    e87f3e0100
                         add                esp, 0x04                                     // 0x006f9321    83c404
                         push               0x0                                           // 0x006f9324    6a00
                         mov.s              ecx, esi                                      // 0x006f9326    8bce
                         call               _jmp_addr_0x006d6cc0                          // 0x006f9328    e893d9fdff
                         pop                edi                                           // 0x006f932d    5f
                         pop                esi                                           // 0x006f932e    5e
                         pop                ebx                                           // 0x006f932f    5b
                         add                esp, 0x10                                     // 0x006f9330    83c410
                         ret                                                              // 0x006f9333    c3
_jmp_addr_0x006f9334:    cmp                edi, 0x03                                     // 0x006f9334    83ff03
                         {disp32} ja        _jmp_addr_0x006f947f                          // 0x006f9337    0f8742010000
                         jmp                dword ptr [edi*4 + 0x6f9490]                  // 0x006f933d    ff24bd90946f00
                         mov                edx, dword ptr [esi]                          // 0x006f9344    8b16
                         push               0x0                                           // 0x006f9346    6a00
                         mov.s              ecx, esi                                      // 0x006f9348    8bce
                         call               dword ptr [edx + 0xc]                         // 0x006f934a    ff520c
                         push               ebx                                           // 0x006f934d    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f934e    e84d3e0100
                         add                esp, 0x04                                     // 0x006f9353    83c404
                         pop                edi                                           // 0x006f9356    5f
                         pop                esi                                           // 0x006f9357    5e
                         pop                ebx                                           // 0x006f9358    5b
                         add                esp, 0x10                                     // 0x006f9359    83c410
                         ret                                                              // 0x006f935c    c3
                         mov                eax, dword ptr [esi]                          // 0x006f935d    8b06
                         mov.s              ecx, esi                                      // 0x006f935f    8bce
                         call               dword ptr [eax + 0x460]                       // 0x006f9361    ff9060040000
                         test               eax, eax                                      // 0x006f9367    85c0
                         {disp32} je        _jmp_addr_0x006f947f                          // 0x006f9369    0f8410010000
                         mov                edx, dword ptr [esi]                          // 0x006f936f    8b16
                         mov.s              ecx, esi                                      // 0x006f9371    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f9373    ff5234
                         test               eax, eax                                      // 0x006f9376    85c0
                         {disp8} je         _jmp_addr_0x006f93b8                          // 0x006f9378    743e
                         push               0x0                                           // 0x006f937a    6a00
                         push               0x009c8060                                    // 0x006f937c    6860809c00
                         push               0x009c7f50                                    // 0x006f9381    68507f9c00
                         push               0x0                                           // 0x006f9386    6a00
                         push               esi                                           // 0x006f9388    56
                         call               ___RTDynamicCast                              // 0x006f9389    e88bc60c00
                         add                esp, 0x14                                     // 0x006f938e    83c414
                         test               eax, eax                                      // 0x006f9391    85c0
                         {disp8} je         _jmp_addr_0x006f93b8                          // 0x006f9393    7423
                         push               0x1                                           // 0x006f9395    6a01
                         push               0x40000000                                    // 0x006f9397    6800000040
                         push               0x3f800000                                    // 0x006f939c    680000803f
                         mov.s              ecx, eax                                      // 0x006f93a1    8bc8
                         call               _jmp_addr_0x0047ab90                          // 0x006f93a3    e8e817d8ff
                         push               ebx                                           // 0x006f93a8    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f93a9    e8f23d0100
                         add                esp, 0x04                                     // 0x006f93ae    83c404
                         pop                edi                                           // 0x006f93b1    5f
                         pop                esi                                           // 0x006f93b2    5e
                         pop                ebx                                           // 0x006f93b3    5b
                         add                esp, 0x10                                     // 0x006f93b4    83c410
                         ret                                                              // 0x006f93b7    c3
_jmp_addr_0x006f93b8:    push               esi                                           // 0x006f93b8    56
                         call               _jmp_addr_0x005e6540                          // 0x006f93b9    e882d1eeff
                         mov                eax, dword ptr [esi]                          // 0x006f93be    8b06
                         add                esp, 0x04                                     // 0x006f93c0    83c404
                         push               0x0                                           // 0x006f93c3    6a00
                         mov.s              ecx, esi                                      // 0x006f93c5    8bce
                         call               dword ptr [eax + 0xc]                         // 0x006f93c7    ff500c
                         push               ebx                                           // 0x006f93ca    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f93cb    e8d03d0100
                         add                esp, 0x04                                     // 0x006f93d0    83c404
                         pop                edi                                           // 0x006f93d3    5f
                         pop                esi                                           // 0x006f93d4    5e
                         pop                ebx                                           // 0x006f93d5    5b
                         add                esp, 0x10                                     // 0x006f93d6    83c410
                         ret                                                              // 0x006f93d9    c3
                         mov                edx, dword ptr [esi]                          // 0x006f93da    8b16
                         mov.s              ecx, esi                                      // 0x006f93dc    8bce
                         call               dword ptr [edx + 0x460]                       // 0x006f93de    ff9260040000
                         test               eax, eax                                      // 0x006f93e4    85c0
                         {disp32} je        _jmp_addr_0x006f947f                          // 0x006f93e6    0f8493000000
                         push               0x0                                           // 0x006f93ec    6a00
                         push               esi                                           // 0x006f93ee    56
                         call               _jmp_addr_0x00681230                          // 0x006f93ef    e83c7ef8ff
                         mov                eax, dword ptr [esi]                          // 0x006f93f4    8b06
                         add                esp, 0x08                                     // 0x006f93f6    83c408
                         push               0x0                                           // 0x006f93f9    6a00
                         mov.s              ecx, esi                                      // 0x006f93fb    8bce
                         call               dword ptr [eax + 0xc]                         // 0x006f93fd    ff500c
                         push               ebx                                           // 0x006f9400    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f9401    e89a3d0100
                         add                esp, 0x04                                     // 0x006f9406    83c404
                         pop                edi                                           // 0x006f9409    5f
                         pop                esi                                           // 0x006f940a    5e
                         pop                ebx                                           // 0x006f940b    5b
                         add                esp, 0x10                                     // 0x006f940c    83c410
                         ret                                                              // 0x006f940f    c3
                         mov                edx, dword ptr [esi]                          // 0x006f9410    8b16
                         mov.s              ecx, esi                                      // 0x006f9412    8bce
                         call               dword ptr [edx + 0x460]                       // 0x006f9414    ff9260040000
                         test               eax, eax                                      // 0x006f941a    85c0
                         {disp8} je         _jmp_addr_0x006f947f                          // 0x006f941c    7461
                         push               0x0                                           // 0x006f941e    6a00
                         push               0x009ce8a8                                    // 0x006f9420    68a8e89c00
                         push               0x009c7f30                                    // 0x006f9425    68307f9c00
                         push               0x0                                           // 0x006f942a    6a00
                         push               esi                                           // 0x006f942c    56
                         call               ___RTDynamicCast                              // 0x006f942d    e8e7c50c00
                         mov.s              esi, eax                                      // 0x006f9432    8bf0
                         add                esp, 0x14                                     // 0x006f9434    83c414
                         test               esi, esi                                      // 0x006f9437    85f6
                         {disp8} je         _jmp_addr_0x006f947f                          // 0x006f9439    7444
                         {disp32} mov       al, byte ptr [esi + 0x000000b8]               // 0x006f943b    8a86b8000000
                         test               al, al                                        // 0x006f9441    84c0
                         {disp8} je         _jmp_addr_0x006f9478                          // 0x006f9443    7433
                         push               0x0                                           // 0x006f9445    6a00
                         push               0x40400000                                    // 0x006f9447    6800004040
                         push               0x42a00000                                    // 0x006f944c    680000a042
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x006f9451    8d44241c
                         push               eax                                           // 0x006f9455    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x006f9456    8d4e14
                         call               @GetLHPoint__9MapCoordsCFv@12                 // 0x006f9459    e8e2c7f0ff
                         push               eax                                           // 0x006f945e    50
                         push               esi                                           // 0x006f945f    56
                         call               _jmp_addr_0x00681260                          // 0x006f9460    e8fb7df8ff
                         add                esp, 0x14                                     // 0x006f9465    83c414
                         push               ebx                                           // 0x006f9468    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f9469    e8323d0100
                         add                esp, 0x04                                     // 0x006f946e    83c404
                         pop                edi                                           // 0x006f9471    5f
                         pop                esi                                           // 0x006f9472    5e
                         pop                ebx                                           // 0x006f9473    5b
                         add                esp, 0x10                                     // 0x006f9474    83c410
                         ret                                                              // 0x006f9477    c3
_jmp_addr_0x006f9478:    mov.s              ecx, esi                                      // 0x006f9478    8bce
                         call               _jmp_addr_0x00465ab0                          // 0x006f947a    e831c6d6ff
_jmp_addr_0x006f947f:    push               ebx                                           // 0x006f947f    53
                         call               _jmp_addr_0x0070d1a0                          // 0x006f9480    e81b3d0100
                         add                esp, 0x04                                     // 0x006f9485    83c404
_jmp_addr_0x006f9488:    pop                edi                                           // 0x006f9488    5f
                         pop                esi                                           // 0x006f9489    5e
                         pop                ebx                                           // 0x006f948a    5b
                         add                esp, 0x10                                     // 0x006f948b    83c410
                         ret                                                              // 0x006f948e    c3

// Snippet: db, [0x006f948f, 0x006f9490)
.byte 0x90                        // 0x006f948f

// Snippet: jmptbl, [0x006f9490, 0x006f94a0)
.byte 0x44, 0x93, 0x6f, 0x00      // 0x006f9490
.byte 0x5d, 0x93, 0x6f, 0x00      // 0x006f9494
.byte 0xda, 0x93, 0x6f, 0x00      // 0x006f9498
.byte 0x10, 0x94, 0x6f, 0x00      // 0x006f949c

