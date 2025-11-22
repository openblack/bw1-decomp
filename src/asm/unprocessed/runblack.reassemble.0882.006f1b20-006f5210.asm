.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00424e00
.extern _jmp_addr_0x00424e70
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00463ad0
.extern _jmp_addr_0x0047b1c0
.extern _jmp_addr_0x0047bee0
.extern _jmp_addr_0x004c59c0
.extern _jmp_addr_0x004cf060
.extern _jmp_addr_0x004dcdd0
.extern _jmp_addr_0x004dce20
.extern _jmp_addr_0x004dcf20
.extern _jmp_addr_0x004de780
.extern _jmp_addr_0x004e28c0
.extern _jmp_addr_0x004f6610
.extern _jmp_addr_0x004f6930
.extern _jmp_addr_0x004f6950
.extern _jmp_addr_0x004f6980
.extern _jmp_addr_0x004f7000
.extern _jmp_addr_0x004f7080
.extern _jmp_addr_0x004f7090
.extern _jmp_addr_0x004f70f0
.extern @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24
.extern _jmp_addr_0x0052fa50
.extern ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x005551d0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x0056fa70
.extern ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z
.extern _jmp_addr_0x005d06e0
.extern _jmp_addr_0x005d0730
.extern ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005e6bd0
.extern _jmp_addr_0x005e6ea0
.extern _jmp_addr_0x005e6f70
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern _jmp_addr_0x00606380
.extern _jmp_addr_0x00646980
.extern _jmp_addr_0x0064a9f0
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern _jmp_addr_0x006e4870
.extern _jmp_addr_0x006e58c0
.extern _jmp_addr_0x006eb9a0
.extern _jmp_addr_0x006f11a0
.extern ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.extern ?ScriptWarningMessage@GScript@@QAEXPAD@Z
.extern _jmp_addr_0x006f6a10
.extern ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.extern _jmp_addr_0x006f6bc0
.extern _jmp_addr_0x006f7280
.extern _jmp_addr_0x006f72e0
.extern _jmp_addr_0x006f82e0
.extern _jmp_addr_0x00709a40
.extern _jmp_addr_0x0070cf90
.extern _jmp_addr_0x0070d0f0
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x007115a0
.extern _jmp_addr_0x00740b40
.extern ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern ___RTDynamicCast
.extern _wcscpy
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z

.globl _globl_ct_0x006f3650
.globl _globl_ct_0x006f3680
.globl _globl_ct_0x006f36a0
.globl _globl_ct_0x006f36d0
.globl ?GetBaseInfo@GScriptOpposingCreature@@UAEPAVGBaseInfo@@AAI@Z
.globl ??_GGScriptOpposingCreature@@UAEPAXI@Z

start_0x006f1b20_0x006f5210:
// Snippet: asm, [0x006f1b20, 0x006f51db)
                         sub                esp, 0x10                                            // 0x006f1b20    83ec10
                         push               esi                                                  // 0x006f1b23    56
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f1b24    8b35105cd900
                         push               edi                                                  // 0x006f1b2a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f1b2b    8d442408
                         push               eax                                                  // 0x006f1b2f    50
                         mov.s              ecx, esi                                             // 0x006f1b30    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1b32    e889500000
                         mov.s              ecx, eax                                             // 0x006f1b37    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f1b39    8d542408
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x006f1b3d    894c2414
                         push               edx                                                  // 0x006f1b41    52
                         mov.s              ecx, esi                                             // 0x006f1b42    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1b44    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1b48    e873500000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x006f1b4d    8d4c2408
                         push               ecx                                                  // 0x006f1b51    51
                         mov.s              ecx, esi                                             // 0x006f1b52    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1b54    8944240c
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f1b58    89442414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1b5c    e85f500000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1b61    8b0d105cd900
                         mov.s              edx, eax                                             // 0x006f1b67    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f1b69    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f1b6d    8d442408
                         push               eax                                                  // 0x006f1b71    50
                         {disp8} mov        dword ptr [esp + 0x10], edx                          // 0x006f1b72    89542410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1b76    e845500000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1b7b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f1b81    8d542408
                         push               edx                                                  // 0x006f1b85    52
                         mov.s              edi, eax                                             // 0x006f1b86    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1b88    e833500000
                         mov.s              esi, eax                                             // 0x006f1b8d    8bf0
                         test               esi, esi                                             // 0x006f1b8f    85f6
                         {disp8} jle        _jmp_addr_0x006f1b98                                 // 0x006f1b91    7e05
                         cmp                esi, 0x2a                                            // 0x006f1b93    83fe2a
                         {disp8} jl         _jmp_addr_0x006f1ba5                                 // 0x006f1b96    7c0d
_jmp_addr_0x006f1b98:    push               0x00c0cc08                                           // 0x006f1b98    6808ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1b9d    e80e470000
                         add                esp, 0x04                                            // 0x006f1ba2    83c404
_jmp_addr_0x006f1ba5:    test               esi, esi                                             // 0x006f1ba5    85f6
                         {disp8} jle        _jmp_addr_0x006f1c09                                 // 0x006f1ba7    7e60
                         cmp                esi, 0x2a                                            // 0x006f1ba9    83fe2a
                         {disp8} jge        _jmp_addr_0x006f1c09                                 // 0x006f1bac    7d5b
                         push               0x3f800000                                           // 0x006f1bae    680000803f
                         push               0x0                                                  // 0x006f1bb3    6a00
                         push               edi                                                  // 0x006f1bb5    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x006f1bb6    8d442418
                         push               esi                                                  // 0x006f1bba    56
                         push               eax                                                  // 0x006f1bbb    50
                         call               _jmp_addr_0x006f11a0                                 // 0x006f1bbc    e8dff5ffff
                         mov.s              esi, eax                                             // 0x006f1bc1    8bf0
                         add                esp, 0x14                                            // 0x006f1bc3    83c414
                         test               esi, esi                                             // 0x006f1bc6    85f6
                         {disp8} je         _jmp_addr_0x006f1bfc                                 // 0x006f1bc8    7432
                         push               0x1                                                  // 0x006f1bca    6a01
                         push               esi                                                  // 0x006f1bcc    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f1bcd    e81eb50100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1bd2    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f1bd8    83c408
                         push               0x4                                                  // 0x006f1bdb    6a04
                         push               eax                                                  // 0x006f1bdd    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1bde    e8bd4f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1be3    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f1be9    e8224e0000
                         push               eax                                                  // 0x006f1bee    50
                         mov.s              ecx, esi                                             // 0x006f1bef    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f1bf1    e87adee7ff
                         pop                edi                                                  // 0x006f1bf6    5f
                         pop                esi                                                  // 0x006f1bf7    5e
                         add                esp, 0x10                                            // 0x006f1bf8    83c410
                         ret                                                                     // 0x006f1bfb    c3
_jmp_addr_0x006f1bfc:    push               0x00c0cbf4                                           // 0x006f1bfc    68f4cbc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1c01    e8aa460000
                         add                esp, 0x04                                            // 0x006f1c06    83c404
_jmp_addr_0x006f1c09:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1c09    8b0d105cd900
                         push               0x4                                                  // 0x006f1c0f    6a04
                         push               0x0                                                  // 0x006f1c11    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1c13    e8884f0000
                         pop                edi                                                  // 0x006f1c18    5f
                         pop                esi                                                  // 0x006f1c19    5e
                         add                esp, 0x10                                            // 0x006f1c1a    83c410
                         ret                                                                     // 0x006f1c1d    c3
                         nop                                                                     // 0x006f1c1e    90
                         nop                                                                     // 0x006f1c1f    90
                         sub                esp, 0x1c                                            // 0x006f1c20    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1c23    8b0d105cd900
                         push               esi                                                  // 0x006f1c29    56
                         push               edi                                                  // 0x006f1c2a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f1c2b    8d442408
                         push               eax                                                  // 0x006f1c2f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1c30    e88b4f0000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f1c35    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x006f1c3b    8d4c2408
                         push               ecx                                                  // 0x006f1c3f    51
                         mov.s              ecx, esi                                             // 0x006f1c40    8bce
                         mov.s              edi, eax                                             // 0x006f1c42    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1c44    e8774f0000
                         mov.s              edx, eax                                             // 0x006f1c49    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f1c4b    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f1c4f    8d442408
                         push               eax                                                  // 0x006f1c53    50
                         mov.s              ecx, esi                                             // 0x006f1c54    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x006f1c56    89542418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1c5a    e8614f0000
                         mov.s              ecx, eax                                             // 0x006f1c5f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f1c61    8d542408
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x006f1c65    894c2410
                         push               edx                                                  // 0x006f1c69    52
                         mov.s              ecx, esi                                             // 0x006f1c6a    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1c6c    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1c70    e84b4f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1c75    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f1c7b    8d542408
                         push               edx                                                  // 0x006f1c7f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1c80    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f1c84    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1c88    e8334f0000
                         mov.s              ecx, eax                                             // 0x006f1c8d    8bc8
                         shl                ecx, 4                                               // 0x006f1c8f    c1e104
                         push               0x3f800000                                           // 0x006f1c92    680000803f
                         add.s              ecx, eax                                             // 0x006f1c97    03c8
                         push               0x0                                                  // 0x006f1c99    6a00
                         shl                ecx, 4                                               // 0x006f1c9b    c1e104
                         push               edi                                                  // 0x006f1c9e    57
                         add                ecx, 0x00d96390                                      // 0x006f1c9f    81c19063d900
                         push               ecx                                                  // 0x006f1ca5    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f1ca6    8d54241c
                         push               edx                                                  // 0x006f1caa    52
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                          // 0x006f1cab    8d4c242c
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f1caf    e8ac14f1ff
                         push               eax                                                  // 0x006f1cb4    50
                         call               _jmp_addr_0x00709a40                                 // 0x006f1cb5    e8867d0100
                         mov.s              esi, eax                                             // 0x006f1cba    8bf0
                         add                esp, 0x14                                            // 0x006f1cbc    83c414
                         test               esi, esi                                             // 0x006f1cbf    85f6
                         {disp8} je         _jmp_addr_0x006f1cf5                                 // 0x006f1cc1    7432
                         push               0x1                                                  // 0x006f1cc3    6a01
                         push               esi                                                  // 0x006f1cc5    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f1cc6    e825b40100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1ccb    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f1cd1    83c408
                         push               0x4                                                  // 0x006f1cd4    6a04
                         push               eax                                                  // 0x006f1cd6    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1cd7    e8c44e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1cdc    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f1ce2    e8294d0000
                         push               eax                                                  // 0x006f1ce7    50
                         mov.s              ecx, esi                                             // 0x006f1ce8    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f1cea    e881dde7ff
                         pop                edi                                                  // 0x006f1cef    5f
                         pop                esi                                                  // 0x006f1cf0    5e
                         add                esp, 0x1c                                            // 0x006f1cf1    83c41c
                         ret                                                                     // 0x006f1cf4    c3
_jmp_addr_0x006f1cf5:    push               0x00c0cc18                                           // 0x006f1cf5    6818ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1cfa    e8b1450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1cff    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f1d05    83c404
                         push               0x4                                                  // 0x006f1d08    6a04
                         push               0x0                                                  // 0x006f1d0a    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1d0c    e88f4e0000
                         pop                edi                                                  // 0x006f1d11    5f
                         pop                esi                                                  // 0x006f1d12    5e
                         add                esp, 0x1c                                            // 0x006f1d13    83c41c
                         ret                                                                     // 0x006f1d16    c3
                         nop                                                                     // 0x006f1d17    90
                         nop                                                                     // 0x006f1d18    90
                         nop                                                                     // 0x006f1d19    90
                         nop                                                                     // 0x006f1d1a    90
                         nop                                                                     // 0x006f1d1b    90
                         nop                                                                     // 0x006f1d1c    90
                         nop                                                                     // 0x006f1d1d    90
                         nop                                                                     // 0x006f1d1e    90
                         nop                                                                     // 0x006f1d1f    90
                         push               ecx                                                  // 0x006f1d20    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1d21    8b0d105cd900
                         push               esi                                                  // 0x006f1d27    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f1d28    8d442404
                         push               eax                                                  // 0x006f1d2c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1d2d    e88e4e0000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f1d32    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x006f1d36    d9442404
                         push               ecx                                                  // 0x006f1d3a    51
                         fstp               dword ptr [esp]                                      // 0x006f1d3b    d91c24
                         call               _jmp_addr_0x007115a0                                 // 0x006f1d3e    e85df80100
                         mov.s              esi, eax                                             // 0x006f1d43    8bf0
                         add                esp, 0x04                                            // 0x006f1d45    83c404
                         test               esi, esi                                             // 0x006f1d48    85f6
                         {disp8} je         _jmp_addr_0x006f1d7b                                 // 0x006f1d4a    742f
                         push               0x1                                                  // 0x006f1d4c    6a01
                         push               esi                                                  // 0x006f1d4e    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f1d4f    e89cb30100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1d54    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f1d5a    83c408
                         push               0x4                                                  // 0x006f1d5d    6a04
                         push               eax                                                  // 0x006f1d5f    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1d60    e83b4e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1d65    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f1d6b    e8a04c0000
                         push               eax                                                  // 0x006f1d70    50
                         mov.s              ecx, esi                                             // 0x006f1d71    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f1d73    e8f8dce7ff
                         pop                esi                                                  // 0x006f1d78    5e
                         pop                ecx                                                  // 0x006f1d79    59
                         ret                                                                     // 0x006f1d7a    c3
_jmp_addr_0x006f1d7b:    push               0x00c0cbf4                                           // 0x006f1d7b    68f4cbc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1d80    e82b450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1d85    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f1d8b    83c404
                         push               0x4                                                  // 0x006f1d8e    6a04
                         push               0x0                                                  // 0x006f1d90    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1d92    e8094e0000
                         pop                esi                                                  // 0x006f1d97    5e
                         pop                ecx                                                  // 0x006f1d98    59
                         ret                                                                     // 0x006f1d99    c3
                         nop                                                                     // 0x006f1d9a    90
                         nop                                                                     // 0x006f1d9b    90
                         nop                                                                     // 0x006f1d9c    90
                         nop                                                                     // 0x006f1d9d    90
                         nop                                                                     // 0x006f1d9e    90
                         nop                                                                     // 0x006f1d9f    90
                         sub                esp, 0x34                                            // 0x006f1da0    83ec34
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1da3    8b0d105cd900
                         push               esi                                                  // 0x006f1da9    56
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f1daa    8d44241c
                         push               eax                                                  // 0x006f1dae    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1daf    e80c4e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1db4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f1dba    8d54241c
                         push               edx                                                  // 0x006f1dbe    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1dbf    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1dc3    e8f84d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1dc8    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f1dce    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f1dd2    8d44241c
                         push               eax                                                  // 0x006f1dd6    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1dd7    e8e44d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1ddc    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f1de2    8d54241c
                         push               edx                                                  // 0x006f1de6    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f1de7    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1deb    e8d04d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1df0    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f1df6    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f1dfa    8d44241c
                         push               eax                                                  // 0x006f1dfe    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1dff    e8bc4d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1e04    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f1e0a    8d54241c
                         push               edx                                                  // 0x006f1e0e    52
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x006f1e0f    8944241c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1e13    e8a84d0000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f1e18    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x006f1e1e    8944241c
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f1e22    8d442404
                         push               eax                                                  // 0x006f1e26    50
                         mov.s              ecx, esi                                             // 0x006f1e27    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1e29    e8924d0000
                         mov.s              ecx, eax                                             // 0x006f1e2e    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f1e30    8d542404
                         {disp8} mov        dword ptr [esp + 0x28], ecx                          // 0x006f1e34    894c2428
                         push               edx                                                  // 0x006f1e38    52
                         mov.s              ecx, esi                                             // 0x006f1e39    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f1e3b    89442408
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1e3f    e87c4d0000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x006f1e44    8d4c2404
                         push               ecx                                                  // 0x006f1e48    51
                         mov.s              ecx, esi                                             // 0x006f1e49    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f1e4b    89442408
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x006f1e4f    89442428
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1e53    e8684d0000
                         {disp32} fld       dword ptr [_rdata_float1p0]                          // 0x006f1e58    d90590a38a00
                         {disp8} fdiv       dword ptr [esp + 0x08]                               // 0x006f1e5e    d8742408
                         push               ecx                                                  // 0x006f1e62    51
                         mov.s              edx, eax                                             // 0x006f1e63    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f1e65    89442408
                         {disp8} mov        dword ptr [esp + 0x24], edx                          // 0x006f1e69    89542424
                         fstp               dword ptr [esp]                                      // 0x006f1e6d    d91c24
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x006f1e70    d9442410
                         {disp32} fmul      dword ptr [__real@437f0000]                          // 0x006f1e74    d80d70b28a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f1e7a    e881f50a00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x006f1e7f    d9442414
                         push               eax                                                  // 0x006f1e83    50
                         call               _jmp_addr_0x007a1400                                 // 0x006f1e84    e877f50a00
                         {disp8} fld        dword ptr [esp + 0x1c]                               // 0x006f1e89    d944241c
                         push               eax                                                  // 0x006f1e8d    50
                         call               _jmp_addr_0x007a1400                                 // 0x006f1e8e    e86df50a00
                         {disp8} fld        dword ptr [esp + 0x24]                               // 0x006f1e93    d9442424
                         push               eax                                                  // 0x006f1e97    50
                         call               _jmp_addr_0x007a1400                                 // 0x006f1e98    e863f50a00
                         {disp8} fld        dword ptr [esp + 0x2c]                               // 0x006f1e9d    d944242c
                         push               eax                                                  // 0x006f1ea1    50
                         push               ecx                                                  // 0x006f1ea2    51
                         {disp8} lea        eax, dword ptr [esp + 0x38]                          // 0x006f1ea3    8d442438
                         fstp               dword ptr [esp]                                      // 0x006f1ea7    d91c24
                         push               eax                                                  // 0x006f1eaa    50
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                          // 0x006f1eab    8d4c2448
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f1eaf    e8ac12f1ff
                         push               eax                                                  // 0x006f1eb4    50
                         call               _jmp_addr_0x00606380                                 // 0x006f1eb5    e8c644f1ff
                         mov.s              esi, eax                                             // 0x006f1eba    8bf0
                         add                esp, 0x1c                                            // 0x006f1ebc    83c41c
                         test               esi, esi                                             // 0x006f1ebf    85f6
                         {disp8} je         _jmp_addr_0x006f1ef4                                 // 0x006f1ec1    7431
                         push               0x1                                                  // 0x006f1ec3    6a01
                         push               esi                                                  // 0x006f1ec5    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f1ec6    e825b20100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1ecb    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f1ed1    83c408
                         push               0x4                                                  // 0x006f1ed4    6a04
                         push               eax                                                  // 0x006f1ed6    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1ed7    e8c44c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1edc    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f1ee2    e8294b0000
                         push               eax                                                  // 0x006f1ee7    50
                         mov.s              ecx, esi                                             // 0x006f1ee8    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f1eea    e881dbe7ff
                         pop                esi                                                  // 0x006f1eef    5e
                         add                esp, 0x34                                            // 0x006f1ef0    83c434
                         ret                                                                     // 0x006f1ef3    c3
_jmp_addr_0x006f1ef4:    push               0x00c0cbf4                                           // 0x006f1ef4    68f4cbc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1ef9    e8b2430000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1efe    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f1f04    83c404
                         push               0x4                                                  // 0x006f1f07    6a04
                         push               0x0                                                  // 0x006f1f09    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1f0b    e8904c0000
                         pop                esi                                                  // 0x006f1f10    5e
                         add                esp, 0x34                                            // 0x006f1f11    83c434
                         ret                                                                     // 0x006f1f14    c3
                         nop                                                                     // 0x006f1f15    90
                         nop                                                                     // 0x006f1f16    90
                         nop                                                                     // 0x006f1f17    90
                         nop                                                                     // 0x006f1f18    90
                         nop                                                                     // 0x006f1f19    90
                         nop                                                                     // 0x006f1f1a    90
                         nop                                                                     // 0x006f1f1b    90
                         nop                                                                     // 0x006f1f1c    90
                         nop                                                                     // 0x006f1f1d    90
                         nop                                                                     // 0x006f1f1e    90
                         nop                                                                     // 0x006f1f1f    90
                         sub                esp, 0x00000434                                      // 0x006f1f20    81ec34040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1f26    8b0d105cd900
                         push               ebx                                                  // 0x006f1f2c    53
                         push               ebp                                                  // 0x006f1f2d    55
                         push               esi                                                  // 0x006f1f2e    56
                         push               edi                                                  // 0x006f1f2f    57
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f1f30    8d44241c
                         push               eax                                                  // 0x006f1f34    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1f35    e8864c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1f3a    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f1f40    8d54241c
                         push               edx                                                  // 0x006f1f44    52
                         {disp8} mov        dword ptr [esp + 0x40], eax                          // 0x006f1f45    89442440
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1f49    e8724c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1f4e    8b0d105cd900
                         mov.s              ebx, eax                                             // 0x006f1f54    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f1f56    8d44241c
                         push               eax                                                  // 0x006f1f5a    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1f5b    e8604c0000
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f1f60    89442414
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x006f1f64    d9442414
                         call               _jmp_addr_0x007a1400                                 // 0x006f1f68    e893f40a00
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1f6d    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f1f73    8d542414
                         mov.s              edi, eax                                             // 0x006f1f77    8bf8
                         push               edx                                                  // 0x006f1f79    52
                         {disp8} mov        dword ptr [esp + 0x20], edi                          // 0x006f1f7a    897c2420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f1f7e    e83d4c0000
                         push               eax                                                  // 0x006f1f83    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f1f84    e897b20100
                         add                esp, 0x04                                            // 0x006f1f89    83c404
                         test               ebx, ebx                                             // 0x006f1f8c    85db
                         mov.s              ebp, eax                                             // 0x006f1f8e    8be8
                         {disp8} jle        _jmp_addr_0x006f1f97                                 // 0x006f1f90    7e05
                         cmp                ebx, 0x2a                                            // 0x006f1f92    83fb2a
                         {disp8} jl         _jmp_addr_0x006f1fb1                                 // 0x006f1f95    7c1a
_jmp_addr_0x006f1f97:    push               ebx                                                  // 0x006f1f97    53
                         {disp8} lea        eax, dword ptr [esp + 0x44]                          // 0x006f1f98    8d442444
                         push               0x00c0cb48                                           // 0x006f1f9c    6848cbc000
                         push               eax                                                  // 0x006f1fa1    50
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]          // 0x006f1fa2    ff155c938a00
                         push               eax                                                  // 0x006f1fa8    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1fa9    e802430000
                         add                esp, 0x10                                            // 0x006f1fae    83c410
_jmp_addr_0x006f1fb1:    test               ebx, ebx                                             // 0x006f1fb1    85db
                         {disp8} jle        _jmp_addr_0x006f1fba                                 // 0x006f1fb3    7e05
                         cmp                ebx, 0x2a                                            // 0x006f1fb5    83fb2a
                         {disp8} jl         _jmp_addr_0x006f1fd4                                 // 0x006f1fb8    7c1a
_jmp_addr_0x006f1fba:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f1fba    8b0d105cd900
                         push               0x4                                                  // 0x006f1fc0    6a04
                         push               0x0                                                  // 0x006f1fc2    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f1fc4    e8d74b0000
                         pop                edi                                                  // 0x006f1fc9    5f
                         pop                esi                                                  // 0x006f1fca    5e
                         pop                ebp                                                  // 0x006f1fcb    5d
                         pop                ebx                                                  // 0x006f1fcc    5b
                         add                esp, 0x00000434                                      // 0x006f1fcd    81c434040000
                         ret                                                                     // 0x006f1fd3    c3
_jmp_addr_0x006f1fd4:    test               ebp, ebp                                             // 0x006f1fd4    85ed
                         {disp8} jne        _jmp_addr_0x006f1ff0                                 // 0x006f1fd6    7518
                         push               0x00c0ccc0                                           // 0x006f1fd8    68c0ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f1fdd    e8ce420000
                         add                esp, 0x04                                            // 0x006f1fe2    83c404
                         pop                edi                                                  // 0x006f1fe5    5f
                         pop                esi                                                  // 0x006f1fe6    5e
                         pop                ebp                                                  // 0x006f1fe7    5d
                         pop                ebx                                                  // 0x006f1fe8    5b
                         add                esp, 0x00000434                                      // 0x006f1fe9    81c434040000
                         ret                                                                     // 0x006f1fef    c3
_jmp_addr_0x006f1ff0:    {disp8} mov        ecx, dword ptr [ebp + 0x1c]                          // 0x006f1ff0    8b4d1c
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x006f1ff3    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x006f1ff7    c744241800000000
                         {disp8} fild       qword ptr [esp + 0x14]                               // 0x006f1fff    df6c2414
                         {disp8} lea        esi, dword ptr [ebp + 0x14]                          // 0x006f2003    8d7514
                         {disp8} mov        dword ptr [esp + 0x14], ecx                          // 0x006f2006    894c2414
                         {disp32} fmul      qword ptr [rdata_bytes + 0x20d40]                    // 0x006f200a    dc0d409d8c00
                         mov.s              ecx, esi                                             // 0x006f2010    8bce
                         {disp32} fadd      qword ptr [rdata_bytes + 0x991b0]                    // 0x006f2012    dc05b0219400
                         {disp8} fstp       dword ptr [esp + 0x20]                               // 0x006f2018    d95c2420
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x006f201c    e86f101100
                         test               edi, edi                                             // 0x006f2021    85ff
                         {disp8} fadd       dword ptr [esp + 0x14]                               // 0x006f2023    d8442414
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000                   // 0x006f2027    c744241400000000
                         {disp8} fstp       dword ptr [esp + 0x34]                               // 0x006f202f    d95c2434
                         fild               dword ptr [esi]                                      // 0x006f2033    db06
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x006f2035    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x30]                               // 0x006f203b    d95c2430
                         {disp8} fild       dword ptr [esi + 0x04]                               // 0x006f203f    db4604
                         {disp32} fmul      dword ptr [_rdata_float_coord_to_point]              // 0x006f2042    d80da4a38a00
                         {disp8} fstp       dword ptr [esp + 0x38]                               // 0x006f2048    d95c2438
                         {disp32} jbe       _jmp_addr_0x006f21e2                                 // 0x006f204c    0f8690010000
                         {disp8} fld        dword ptr [esp + 0x20]                               // 0x006f2052    d9442420
                         fadd.s             st(0), st(0)                                         // 0x006f2056    dcc0
                         {disp8} fstp       dword ptr [esp + 0x10]                               // 0x006f2058    d95c2410
                         {disp8} mov        edi, dword ptr [esp + 0x10]                          // 0x006f205c    8b7c2410
_jmp_addr_0x006f2060:    push               0x00000243                                           // 0x006f2060    6843020000
                         push               0x00c0cc98                                           // 0x006f2065    6898ccc000
                         push               edi                                                  // 0x006f206a    57
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x006f206b    e8c0c4feff
                         {disp8} fsub       dword ptr [esp + 0x2c]                               // 0x006f2070    d864242c
                         push               0x00000244                                           // 0x006f2074    6844020000
                         push               0x00c0cc98                                           // 0x006f2079    6898ccc000
                         push               edi                                                  // 0x006f207e    57
                         {disp8} fstp       dword ptr [esp + 0x28]                               // 0x006f207f    d95c2428
                         call               ?GameFloatRand@GRand@@SAMM@Z                         // 0x006f2083    e8a8c4feff
                         {disp8} mov        edx, dword ptr [esp + 0x48]                          // 0x006f2088    8b542448
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                          // 0x006f208c    8b44244c
                         {disp8} mov        ecx, dword ptr [esp + 0x50]                          // 0x006f2090    8b4c2450
                         {disp8} fsub       dword ptr [esp + 0x38]                               // 0x006f2094    d8642438
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x006f2098    d9442448
                         {disp8} mov        dword ptr [esp + 0x3c], edx                          // 0x006f209c    8954243c
                         {disp8} fadd       dword ptr [esp + 0x28]                               // 0x006f20a0    d8442428
                         {disp8} mov        edx, dword ptr [esp + 0x54]                          // 0x006f20a4    8b542454
                         {disp8} mov        dword ptr [esp + 0x40], eax                          // 0x006f20a8    89442440
                         push               0x3f800000                                           // 0x006f20ac    680000803f
                         {disp8} fstp       dword ptr [esp + 0x40]                               // 0x006f20b1    d95c2440
                         push               0x0                                                  // 0x006f20b5    6a00
                         {disp8} fld        dword ptr [esp + 0x48]                               // 0x006f20b7    d9442448
                         push               edx                                                  // 0x006f20bb    52
                         fadd               st, st(1)                                            // 0x006f20bc    d8c1
                         {disp8} lea        eax, dword ptr [esp + 0x48]                          // 0x006f20be    8d442448
                         push               ebx                                                  // 0x006f20c2    53
                         push               eax                                                  // 0x006f20c3    50
                         {disp8} fstp       dword ptr [esp + 0x54]                               // 0x006f20c4    d95c2454
                         {disp8} mov        dword ptr [esp + 0x58], ecx                          // 0x006f20c8    894c2458
                         fstp               st(0)                                                // 0x006f20cc    ddd8
                         call               _jmp_addr_0x006f11a0                                 // 0x006f20ce    e8cdf0ffff
                         mov.s              esi, eax                                             // 0x006f20d3    8bf0
                         add                esp, 0x2c                                            // 0x006f20d5    83c42c
                         test               esi, esi                                             // 0x006f20d8    85f6
                         {disp32} je        _jmp_addr_0x006f21d5                                 // 0x006f20da    0f84f5000000
                         mov                edx, dword ptr [esi]                                 // 0x006f20e0    8b16
                         mov.s              ecx, esi                                             // 0x006f20e2    8bce
                         call               dword ptr [edx + 0x3c4]                              // 0x006f20e4    ff92c4030000
                         test               eax, eax                                             // 0x006f20ea    85c0
                         {disp32} je        _jmp_addr_0x006f219c                                 // 0x006f20ec    0f84aa000000
                         push               0x1                                                  // 0x006f20f2    6a01
                         push               esi                                                  // 0x006f20f4    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f20f5    e8f6af0100
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f20fa    89442418
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                          // 0x006f20fe    8b4500
                         add                esp, 0x08                                            // 0x006f2101    83c408
                         mov.s              ecx, ebp                                             // 0x006f2104    8bcd
                         call               dword ptr [eax + 0x3f0]                              // 0x006f2106    ff90f0030000
                         test               eax, eax                                             // 0x006f210c    85c0
                         {disp8} je         _jmp_addr_0x006f2127                                 // 0x006f210e    7417
                         push               esi                                                  // 0x006f2110    56
                         mov.s              ecx, ebp                                             // 0x006f2111    8bcd
                         call               ?FindDanceGroup@GroupBehaviour@@QAE_NPAVLiving@@@Z   // 0x006f2113    e8e852eaff
                         push               0x5                                                  // 0x006f2118    6a05
                         push               esi                                                  // 0x006f211a    56
                         call               _jmp_addr_0x006f82e0                                 // 0x006f211b    e8c0610000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                          // 0x006f2120    8b4c2418
                         push               ecx                                                  // 0x006f2124    51
                         {disp8} jmp        _jmp_addr_0x006f215c                                 // 0x006f2125    eb35
_jmp_addr_0x006f2127:    {disp8} mov        edx, dword ptr [ebp + 0x00]                          // 0x006f2127    8b5500
                         mov.s              ecx, ebp                                             // 0x006f212a    8bcd
                         call               dword ptr [edx + 0x3ec]                              // 0x006f212c    ff92ec030000
                         test               eax, eax                                             // 0x006f2132    85c0
                         {disp8} je         _jmp_addr_0x006f2184                                 // 0x006f2134    744e
                         push               esi                                                  // 0x006f2136    56
                         mov.s              ecx, ebp                                             // 0x006f2137    8bcd
                         call               _jmp_addr_0x0052fa50                                 // 0x006f2139    e812d9e3ff
                         test               eax, eax                                             // 0x006f213e    85c0
                         {disp8} jne        _jmp_addr_0x006f214f                                 // 0x006f2140    750d
                         push               0x00c0c3cc                                           // 0x006f2142    68ccc3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2147    e864410000
                         add                esp, 0x04                                            // 0x006f214c    83c404
_jmp_addr_0x006f214f:    push               0x1b                                                 // 0x006f214f    6a1b
                         push               esi                                                  // 0x006f2151    56
                         call               _jmp_addr_0x006f82e0                                 // 0x006f2152    e889610000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x006f2157    8b442418
                         push               eax                                                  // 0x006f215b    50
_jmp_addr_0x006f215c:    call               _jmp_addr_0x0070cf90                                 // 0x006f215c    e82fae0100
                         {disp8} mov        eax, dword ptr [esp + 0x20]                          // 0x006f2161    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                          // 0x006f2165    8b4c2428
                         add                esp, 0x0c                                            // 0x006f2169    83c40c
                         inc                eax                                                  // 0x006f216c    40
                         cmp.s              eax, ecx                                             // 0x006f216d    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f216f    89442414
                         {disp32} jb        _jmp_addr_0x006f2060                                 // 0x006f2173    0f82e7feffff
                         pop                edi                                                  // 0x006f2179    5f
                         pop                esi                                                  // 0x006f217a    5e
                         pop                ebp                                                  // 0x006f217b    5d
                         pop                ebx                                                  // 0x006f217c    5b
                         add                esp, 0x00000434                                      // 0x006f217d    81c434040000
                         ret                                                                     // 0x006f2183    c3
_jmp_addr_0x006f2184:    push               0x00c0cc70                                           // 0x006f2184    6870ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2189    e822410000
                         add                esp, 0x04                                            // 0x006f218e    83c404
                         pop                edi                                                  // 0x006f2191    5f
                         pop                esi                                                  // 0x006f2192    5e
                         pop                ebp                                                  // 0x006f2193    5d
                         pop                ebx                                                  // 0x006f2194    5b
                         add                esp, 0x00000434                                      // 0x006f2195    81c434040000
                         ret                                                                     // 0x006f219b    c3
_jmp_addr_0x006f219c:    mov                edx, dword ptr [esi]                                 // 0x006f219c    8b16
                         mov.s              ecx, esi                                             // 0x006f219e    8bce
                         call               dword ptr [edx + 0x3c4]                              // 0x006f21a0    ff92c4030000
                         test               eax, eax                                             // 0x006f21a6    85c0
                         {disp8} jne        _jmp_addr_0x006f21b7                                 // 0x006f21a8    750d
                         push               0x00c0cc54                                           // 0x006f21aa    6854ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f21af    e8fc400000
                         add                esp, 0x04                                            // 0x006f21b4    83c404
_jmp_addr_0x006f21b7:    mov                eax, dword ptr [esi]                                 // 0x006f21b7    8b06
                         mov.s              ecx, esi                                             // 0x006f21b9    8bce
                         call               dword ptr [eax + 0x3c4]                              // 0x006f21bb    ff90c4030000
                         mov                edx, dword ptr [esi]                                 // 0x006f21c1    8b16
                         push               0x0                                                  // 0x006f21c3    6a00
                         mov.s              ecx, esi                                             // 0x006f21c5    8bce
                         call               dword ptr [edx + 0xc]                                // 0x006f21c7    ff520c
                         pop                edi                                                  // 0x006f21ca    5f
                         pop                esi                                                  // 0x006f21cb    5e
                         pop                ebp                                                  // 0x006f21cc    5d
                         pop                ebx                                                  // 0x006f21cd    5b
                         add                esp, 0x00000434                                      // 0x006f21ce    81c434040000
                         ret                                                                     // 0x006f21d4    c3
_jmp_addr_0x006f21d5:    push               0x00c0cc30                                           // 0x006f21d5    6830ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f21da    e8d1400000
                         add                esp, 0x04                                            // 0x006f21df    83c404
_jmp_addr_0x006f21e2:    pop                edi                                                  // 0x006f21e2    5f
                         pop                esi                                                  // 0x006f21e3    5e
                         pop                ebp                                                  // 0x006f21e4    5d
                         pop                ebx                                                  // 0x006f21e5    5b
                         add                esp, 0x00000434                                      // 0x006f21e6    81c434040000
                         ret                                                                     // 0x006f21ec    c3
                         nop                                                                     // 0x006f21ed    90
                         nop                                                                     // 0x006f21ee    90
                         nop                                                                     // 0x006f21ef    90
                         sub                esp, 0x1c                                            // 0x006f21f0    83ec1c
                         push               esi                                                  // 0x006f21f3    56
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f21f4    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f21fa    8d442404
                         push               eax                                                  // 0x006f21fe    50
                         mov.s              ecx, esi                                             // 0x006f21ff    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2201    e8ba490000
                         mov.s              ecx, eax                                             // 0x006f2206    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f2208    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x006f220c    894c2410
                         push               edx                                                  // 0x006f2210    52
                         mov.s              ecx, esi                                             // 0x006f2211    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2213    89442408
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2217    e8a4490000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x006f221c    8d4c2404
                         push               ecx                                                  // 0x006f2220    51
                         mov.s              ecx, esi                                             // 0x006f2221    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2223    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2227    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f222b    e890490000
                         mov.s              edx, eax                                             // 0x006f2230    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f2232    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f2236    8d442408
                         push               eax                                                  // 0x006f223a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x006f223b    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x0c], edx                          // 0x006f223f    8954240c
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f2243    e8180ff1ff
                         push               0x00000286                                           // 0x006f2248    6886020000
                         push               0x00c0cc98                                           // 0x006f224d    6898ccc000
                         push               0x00000090                                           // 0x006f2252    6890000000
                         call               ?__nw@Base@@SAPAXK@Z                                 // 0x006f2257    e89444d4ff
                         add                esp, 0x0c                                            // 0x006f225c    83c40c
                         test               eax, eax                                             // 0x006f225f    85c0
                         {disp8} je         _jmp_addr_0x006f229e                                 // 0x006f2261    743b
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2263    8b0d5c19d000
                         xor.s              edx, edx                                             // 0x006f2269    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x00205a5b]                      // 0x006f226b    8a915b5a2000
                         push               0x000aba52                                           // 0x006f2271    6852ba0a00
                         lea                esi, dword ptr [edx + edx * 0x4]                     // 0x006f2276    8d3492
                         lea                esi, dword ptr [edx + esi * 0x8]                     // 0x006f2279    8d34f2
                         lea                edx, dword ptr [edx + esi * 0x2]                     // 0x006f227c    8d1472
                         shl                edx, 5                                               // 0x006f227f    c1e205
                         {disp8} lea        ecx, dword ptr [edx + ecx * 0x1 + 0x18]              // 0x006f2282    8d4c0a18
                         push               ecx                                                  // 0x006f2286    51
                         push               0x00c5e624                                           // 0x006f2287    6824e6c500
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x006f228c    8d542420
                         push               edx                                                  // 0x006f2290    52
                         mov.s              ecx, eax                                             // 0x006f2291    8bc8
                         call               @__ct__5FlockFRC9MapCoordsPC10GFlockInfoP7GPlayerUl@24                                 // 0x006f2293    e8e8d4e3ff
                         mov.s              esi, eax                                             // 0x006f2298    8bf0
                         test               esi, esi                                             // 0x006f229a    85f6
                         {disp8} jne        _jmp_addr_0x006f22bf                                 // 0x006f229c    7521
_jmp_addr_0x006f229e:    push               0x00c0cbf4                                           // 0x006f229e    68f4cbc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f22a3    e808400000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f22a8    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f22ae    83c404
                         push               0x4                                                  // 0x006f22b1    6a04
                         push               0x0                                                  // 0x006f22b3    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f22b5    e8e6480000
                         pop                esi                                                  // 0x006f22ba    5e
                         add                esp, 0x1c                                            // 0x006f22bb    83c41c
                         ret                                                                     // 0x006f22be    c3
_jmp_addr_0x006f22bf:    push               0x1                                                  // 0x006f22bf    6a01
                         push               esi                                                  // 0x006f22c1    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f22c2    e829ae0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f22c7    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f22cd    83c408
                         push               0x4                                                  // 0x006f22d0    6a04
                         push               eax                                                  // 0x006f22d2    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f22d3    e8c8480000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f22d8    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f22de    e82d470000
                         push               eax                                                  // 0x006f22e3    50
                         mov.s              ecx, esi                                             // 0x006f22e4    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f22e6    e885d7e7ff
                         pop                esi                                                  // 0x006f22eb    5e
                         add                esp, 0x1c                                            // 0x006f22ec    83c41c
                         ret                                                                     // 0x006f22ef    c3
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f22f0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f22f6    83ec08
                         push               ebx                                                  // 0x006f22f9    53
                         push               ebp                                                  // 0x006f22fa    55
                         push               esi                                                  // 0x006f22fb    56
                         push               edi                                                  // 0x006f22fc    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f22fd    8d442410
                         push               eax                                                  // 0x006f2301    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2302    e8b9480000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2307    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f230d    8d542410
                         push               edx                                                  // 0x006f2311    52
                         mov.s              ebp, eax                                             // 0x006f2312    8be8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2314    e8a7480000
                         push               eax                                                  // 0x006f2319    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f231a    e801af0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f231f    8b0d105cd900
                         mov.s              esi, eax                                             // 0x006f2325    8bf0
                         add                esp, 0x04                                            // 0x006f2327    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f232a    8d442414
                         push               eax                                                  // 0x006f232e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f232f    e88c480000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2334    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f233a    8d542414
                         push               edx                                                  // 0x006f233e    52
                         mov.s              edi, eax                                             // 0x006f233f    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2341    e87a480000
                         test               esi, esi                                             // 0x006f2346    85f6
                         mov.s              ebx, eax                                             // 0x006f2348    8bd8
                         {disp8} je         _jmp_addr_0x006f23ae                                 // 0x006f234a    7462
                         mov                eax, dword ptr [esi]                                 // 0x006f234c    8b06
                         mov.s              ecx, esi                                             // 0x006f234e    8bce
                         call               dword ptr [eax + 0x4e8]                              // 0x006f2350    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x006f2356    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c730]              // 0x006f2359    8b04cd30c7c000
                         test               eax, eax                                             // 0x006f2360    85c0
                         {disp8} je         _jmp_addr_0x006f23a1                                 // 0x006f2362    743d
                         test               ebp, ebp                                             // 0x006f2364    85ed
                         push               edi                                                  // 0x006f2366    57
                         push               ebx                                                  // 0x006f2367    53
                         {disp8} je         _jmp_addr_0x006f2371                                 // 0x006f2368    7407
                         push               0x006f79f0                                           // 0x006f236a    68f0796f00
                         {disp8} jmp        _jmp_addr_0x006f2376                                 // 0x006f236f    eb05
_jmp_addr_0x006f2371:    push               0x006f6fa0                                           // 0x006f2371    68a06f6f00
_jmp_addr_0x006f2376:    push               esi                                                  // 0x006f2376    56
                         call               eax                                                  // 0x006f2377    ffd0
                         add                esp, 0x10                                            // 0x006f2379    83c410
                         test               eax, eax                                             // 0x006f237c    85c0
                         {disp8} je         _jmp_addr_0x006f23ae                                 // 0x006f237e    742e
                         push               0x0                                                  // 0x006f2380    6a00
                         push               eax                                                  // 0x006f2382    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2383    e868ad0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2388    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f238e    83c408
                         push               0x4                                                  // 0x006f2391    6a04
                         push               eax                                                  // 0x006f2393    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2394    e807480000
                         pop                edi                                                  // 0x006f2399    5f
                         pop                esi                                                  // 0x006f239a    5e
                         pop                ebp                                                  // 0x006f239b    5d
                         pop                ebx                                                  // 0x006f239c    5b
                         add                esp, 0x08                                            // 0x006f239d    83c408
                         ret                                                                     // 0x006f23a0    c3
_jmp_addr_0x006f23a1:    push               0x00c0cce4                                           // 0x006f23a1    68e4ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f23a6    e8053f0000
                         add                esp, 0x04                                            // 0x006f23ab    83c404
_jmp_addr_0x006f23ae:    push               0x00c0ccd4                                           // 0x006f23ae    68d4ccc000
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f23b3    e8083f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f23b8    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f23be    83c404
                         push               0x4                                                  // 0x006f23c1    6a04
                         push               0x0                                                  // 0x006f23c3    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f23c5    e8d6470000
                         pop                edi                                                  // 0x006f23ca    5f
                         pop                esi                                                  // 0x006f23cb    5e
                         pop                ebp                                                  // 0x006f23cc    5d
                         pop                ebx                                                  // 0x006f23cd    5b
                         add                esp, 0x08                                            // 0x006f23ce    83c408
                         ret                                                                     // 0x006f23d1    c3
                         nop                                                                     // 0x006f23d2    90
                         nop                                                                     // 0x006f23d3    90
                         nop                                                                     // 0x006f23d4    90
                         nop                                                                     // 0x006f23d5    90
                         nop                                                                     // 0x006f23d6    90
                         nop                                                                     // 0x006f23d7    90
                         nop                                                                     // 0x006f23d8    90
                         nop                                                                     // 0x006f23d9    90
                         nop                                                                     // 0x006f23da    90
                         nop                                                                     // 0x006f23db    90
                         nop                                                                     // 0x006f23dc    90
                         nop                                                                     // 0x006f23dd    90
                         nop                                                                     // 0x006f23de    90
                         nop                                                                     // 0x006f23df    90
                         push               ecx                                                  // 0x006f23e0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f23e1    8b0d105cd900
                         push               esi                                                  // 0x006f23e7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f23e8    8d442404
                         push               eax                                                  // 0x006f23ec    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f23ed    e8ce470000
                         push               eax                                                  // 0x006f23f2    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f23f3    e828ae0100
                         mov.s              esi, eax                                             // 0x006f23f8    8bf0
                         add                esp, 0x04                                            // 0x006f23fa    83c404
                         test               esi, esi                                             // 0x006f23fd    85f6
                         {disp8} je         _jmp_addr_0x006f2431                                 // 0x006f23ff    7430
                         mov                edx, dword ptr [esi]                                 // 0x006f2401    8b16
                         mov.s              ecx, esi                                             // 0x006f2403    8bce
                         call               dword ptr [edx + 0x3c4]                              // 0x006f2405    ff92c4030000
                         test               eax, eax                                             // 0x006f240b    85c0
                         {disp8} je         _jmp_addr_0x006f2431                                 // 0x006f240d    7422
                         {disp32} mov       esi, dword ptr [esi + 0x000000b8]                    // 0x006f240f    8bb6b8000000
                         push               0x0                                                  // 0x006f2415    6a00
                         push               esi                                                  // 0x006f2417    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2418    e8d3ac0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f241d    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2423    83c408
                         push               0x4                                                  // 0x006f2426    6a04
                         push               eax                                                  // 0x006f2428    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2429    e872470000
                         pop                esi                                                  // 0x006f242e    5e
                         pop                ecx                                                  // 0x006f242f    59
                         ret                                                                     // 0x006f2430    c3
_jmp_addr_0x006f2431:    push               0x00c0ccfc                                           // 0x006f2431    68fcccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2436    e8753e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f243b    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f2441    83c404
                         push               0x4                                                  // 0x006f2444    6a04
                         push               0x0                                                  // 0x006f2446    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2448    e853470000
                         pop                esi                                                  // 0x006f244d    5e
                         pop                ecx                                                  // 0x006f244e    59
                         ret                                                                     // 0x006f244f    c3
                         sub                esp, 0x00000428                                      // 0x006f2450    81ec28040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2456    8b0d105cd900
                         push               ebx                                                  // 0x006f245c    53
                         push               ebp                                                  // 0x006f245d    55
                         push               esi                                                  // 0x006f245e    56
                         push               edi                                                  // 0x006f245f    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f2460    8d442414
                         push               eax                                                  // 0x006f2464    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2465    e856470000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f246a    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f2470    8d542410
                         push               edx                                                  // 0x006f2474    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f2475    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2479    e842470000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f247e    8b35105cd900
                         mov.s              ebp, eax                                             // 0x006f2484    8be8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f2486    8d442410
                         push               eax                                                  // 0x006f248a    50
                         mov.s              ecx, esi                                             // 0x006f248b    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f248d    e82e470000
                         mov.s              ecx, eax                                             // 0x006f2492    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f2494    8d542410
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x006f2498    894c2424
                         push               edx                                                  // 0x006f249c    52
                         mov.s              ecx, esi                                             // 0x006f249d    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f249f    89442414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f24a3    e818470000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x006f24a8    8d4c2410
                         push               ecx                                                  // 0x006f24ac    51
                         mov.s              ecx, esi                                             // 0x006f24ad    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f24af    89442414
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x006f24b3    89442424
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f24b7    e804470000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f24bc    8b0d105cd900
                         mov.s              edx, eax                                             // 0x006f24c2    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f24c4    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f24c8    8d442410
                         push               eax                                                  // 0x006f24cc    50
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x006f24cd    89542420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f24d1    e8ea460000
                         push               eax                                                  // 0x006f24d6    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f24d7    e844ad0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f24dc    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f24e2    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x006f24e5    8d542418
                         push               edx                                                  // 0x006f24e9    52
                         mov.s              esi, eax                                             // 0x006f24ea    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f24ec    e8cf460000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f24f1    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f24f7    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x006f24f9    8d442418
                         push               eax                                                  // 0x006f24fd    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f24fe    e8bd460000
                         test               esi, esi                                             // 0x006f2503    85f6
                         mov.s              ebx, eax                                             // 0x006f2505    8bd8
                         {disp32} je        _jmp_addr_0x006f259c                                 // 0x006f2507    0f848f000000
                         mov                edx, dword ptr [esi]                                 // 0x006f250d    8b16
                         mov.s              ecx, esi                                             // 0x006f250f    8bce
                         call               dword ptr [edx + 0x4e8]                              // 0x006f2511    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x006f2517    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c0c734]              // 0x006f251a    8b0cc534c7c000
                         test               ecx, ecx                                             // 0x006f2521    85c9
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2523    89442410
                         {disp8} je         _jmp_addr_0x006f258f                                 // 0x006f2527    7466
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x006f2529    8b442414
                         test               eax, eax                                             // 0x006f252d    85c0
                         push               ebp                                                  // 0x006f252f    55
                         {disp8} je         _jmp_addr_0x006f2556                                 // 0x006f2530    7424
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x006f2532    8d442420
                         push               eax                                                  // 0x006f2536    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x006f2537    8d4c2430
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f253b    e8200cf1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x006f2540    8b4c2414
                         push               eax                                                  // 0x006f2544    50
                         push               edi                                                  // 0x006f2545    57
                         push               ebx                                                  // 0x006f2546    53
                         push               0x006f7a20                                           // 0x006f2547    68207a6f00
                         push               esi                                                  // 0x006f254c    56
                         call               dword ptr [ecx*8 + data_bytes + 0x246734]            // 0x006f254d    ff14cd34c7c000
                         {disp8} jmp        _jmp_addr_0x006f2578                                 // 0x006f2554    eb22
_jmp_addr_0x006f2556:    {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x006f2556    8d542420
                         push               edx                                                  // 0x006f255a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x006f255b    8d4c2430
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f255f    e8fc0bf1ff
                         push               eax                                                  // 0x006f2564    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x006f2565    8b442418
                         push               edi                                                  // 0x006f2569    57
                         push               ebx                                                  // 0x006f256a    53
                         push               0x006f7070                                           // 0x006f256b    6870706f00
                         push               esi                                                  // 0x006f2570    56
                         call               dword ptr [eax*8 + data_bytes + 0x246734]            // 0x006f2571    ff14c534c7c000
_jmp_addr_0x006f2578:    add                esp, 0x18                                            // 0x006f2578    83c418
                         test               eax, eax                                             // 0x006f257b    85c0
                         {disp8} je         _jmp_addr_0x006f259c                                 // 0x006f257d    741d
                         push               0x0                                                  // 0x006f257f    6a00
                         push               eax                                                  // 0x006f2581    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2582    e869ab0100
                         add                esp, 0x08                                            // 0x006f2587    83c408
                         push               0x4                                                  // 0x006f258a    6a04
                         push               eax                                                  // 0x006f258c    50
                         {disp8} jmp        _jmp_addr_0x006f25bb                                 // 0x006f258d    eb2c
_jmp_addr_0x006f258f:    push               0x00c0cce4                                           // 0x006f258f    68e4ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2594    e8173d0000
                         add                esp, 0x04                                            // 0x006f2599    83c404
_jmp_addr_0x006f259c:    push               edi                                                  // 0x006f259c    57
                         push               ebx                                                  // 0x006f259d    53
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                          // 0x006f259e    8d4c243c
                         push               0x00c0cd10                                           // 0x006f25a2    6810cdc000
                         push               ecx                                                  // 0x006f25a7    51
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]          // 0x006f25a8    ff155c938a00
                         push               eax                                                  // 0x006f25ae    50
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f25af    e80c3d0000
                         add                esp, 0x14                                            // 0x006f25b4    83c414
                         push               0x4                                                  // 0x006f25b7    6a04
                         push               0x0                                                  // 0x006f25b9    6a00
_jmp_addr_0x006f25bb:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f25bb    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f25c1    e8da450000
                         pop                edi                                                  // 0x006f25c6    5f
                         pop                esi                                                  // 0x006f25c7    5e
                         pop                ebp                                                  // 0x006f25c8    5d
                         pop                ebx                                                  // 0x006f25c9    5b
                         add                esp, 0x00000428                                      // 0x006f25ca    81c428040000
                         ret                                                                     // 0x006f25d0    c3
                         nop                                                                     // 0x006f25d1    90
                         nop                                                                     // 0x006f25d2    90
                         nop                                                                     // 0x006f25d3    90
                         nop                                                                     // 0x006f25d4    90
                         nop                                                                     // 0x006f25d5    90
                         nop                                                                     // 0x006f25d6    90
                         nop                                                                     // 0x006f25d7    90
                         nop                                                                     // 0x006f25d8    90
                         nop                                                                     // 0x006f25d9    90
                         nop                                                                     // 0x006f25da    90
                         nop                                                                     // 0x006f25db    90
                         nop                                                                     // 0x006f25dc    90
                         nop                                                                     // 0x006f25dd    90
                         nop                                                                     // 0x006f25de    90
                         nop                                                                     // 0x006f25df    90
                         sub                esp, 0x24                                            // 0x006f25e0    83ec24
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f25e3    8b0d105cd900
                         push               ebx                                                  // 0x006f25e9    53
                         push               ebp                                                  // 0x006f25ea    55
                         push               esi                                                  // 0x006f25eb    56
                         push               edi                                                  // 0x006f25ec    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f25ed    8d442414
                         push               eax                                                  // 0x006f25f1    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f25f2    e8c9450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f25f7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f25fd    8d542410
                         push               edx                                                  // 0x006f2601    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f2602    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2606    e8b5450000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f260b    8b35105cd900
                         mov.s              edi, eax                                             // 0x006f2611    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f2613    8d442410
                         push               eax                                                  // 0x006f2617    50
                         mov.s              ecx, esi                                             // 0x006f2618    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f261a    e8a1450000
                         mov.s              ecx, eax                                             // 0x006f261f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f2621    8d542410
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x006f2625    894c2424
                         push               edx                                                  // 0x006f2629    52
                         mov.s              ecx, esi                                             // 0x006f262a    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f262c    89442414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2630    e88b450000
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x006f2635    8d4c2410
                         push               ecx                                                  // 0x006f2639    51
                         mov.s              ecx, esi                                             // 0x006f263a    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f263c    89442414
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x006f2640    89442424
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2644    e877450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2649    8b0d105cd900
                         mov.s              edx, eax                                             // 0x006f264f    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2651    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f2655    8d442410
                         push               eax                                                  // 0x006f2659    50
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x006f265a    89542420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f265e    e85d450000
                         push               eax                                                  // 0x006f2663    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f2664    e8b7ab0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2669    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f266f    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x18]                          // 0x006f2672    8d542418
                         push               edx                                                  // 0x006f2676    52
                         mov.s              esi, eax                                             // 0x006f2677    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2679    e842450000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f267e    8b0d105cd900
                         mov.s              ebx, eax                                             // 0x006f2684    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x006f2686    8d442418
                         push               eax                                                  // 0x006f268a    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f268b    e830450000
                         test               esi, esi                                             // 0x006f2690    85f6
                         mov.s              ebp, eax                                             // 0x006f2692    8be8
                         {disp32} je        _jmp_addr_0x006f273a                                 // 0x006f2694    0f84a0000000
                         mov                edx, dword ptr [esi]                                 // 0x006f269a    8b16
                         mov.s              ecx, esi                                             // 0x006f269c    8bce
                         call               dword ptr [edx + 0x4e8]                              // 0x006f269e    ff92e8040000
                         lea                eax, dword ptr [eax + eax * 0x2]                     // 0x006f26a4    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x8 + 0x00c0c738]              // 0x006f26a7    8b0cc538c7c000
                         test               ecx, ecx                                             // 0x006f26ae    85c9
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f26b0    89442410
                         {disp8} je         _jmp_addr_0x006f272d                                 // 0x006f26b4    7477
                         {disp8} mov        eax, dword ptr [esp + 0x14]                          // 0x006f26b6    8b442414
                         test               eax, eax                                             // 0x006f26ba    85c0
                         push               edi                                                  // 0x006f26bc    57
                         {disp8} je         _jmp_addr_0x006f26e3                                 // 0x006f26bd    7424
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x006f26bf    8d442420
                         push               eax                                                  // 0x006f26c3    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x006f26c4    8d4c2430
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f26c8    e8930af1ff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x006f26cd    8b4c2414
                         push               eax                                                  // 0x006f26d1    50
                         push               ebx                                                  // 0x006f26d2    53
                         push               ebp                                                  // 0x006f26d3    55
                         push               0x006f7a50                                           // 0x006f26d4    68507a6f00
                         push               esi                                                  // 0x006f26d9    56
                         call               dword ptr [ecx*8 + data_bytes + 0x246738]            // 0x006f26da    ff14cd38c7c000
                         {disp8} jmp        _jmp_addr_0x006f2705                                 // 0x006f26e1    eb22
_jmp_addr_0x006f26e3:    {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x006f26e3    8d542420
                         push               edx                                                  // 0x006f26e7    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                          // 0x006f26e8    8d4c2430
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f26ec    e86f0af1ff
                         push               eax                                                  // 0x006f26f1    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                          // 0x006f26f2    8b442418
                         push               ebx                                                  // 0x006f26f6    53
                         push               ebp                                                  // 0x006f26f7    55
                         push               0x006f7190                                           // 0x006f26f8    6890716f00
                         push               esi                                                  // 0x006f26fd    56
                         call               dword ptr [eax*8 + data_bytes + 0x246738]            // 0x006f26fe    ff14c538c7c000
_jmp_addr_0x006f2705:    add                esp, 0x18                                            // 0x006f2705    83c418
                         test               eax, eax                                             // 0x006f2708    85c0
                         {disp8} je         _jmp_addr_0x006f273a                                 // 0x006f270a    742e
                         push               0x0                                                  // 0x006f270c    6a00
                         push               eax                                                  // 0x006f270e    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f270f    e8dca90100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2714    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f271a    83c408
                         push               0x4                                                  // 0x006f271d    6a04
                         push               eax                                                  // 0x006f271f    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2720    e87b440000
                         pop                edi                                                  // 0x006f2725    5f
                         pop                esi                                                  // 0x006f2726    5e
                         pop                ebp                                                  // 0x006f2727    5d
                         pop                ebx                                                  // 0x006f2728    5b
                         add                esp, 0x24                                            // 0x006f2729    83c424
                         ret                                                                     // 0x006f272c    c3
_jmp_addr_0x006f272d:    push               0x00c0cce4                                           // 0x006f272d    68e4ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2732    e8793b0000
                         add                esp, 0x04                                            // 0x006f2737    83c404
_jmp_addr_0x006f273a:    push               0x00c0cd2c                                           // 0x006f273a    682ccdc000
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f273f    e87c3b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2744    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f274a    83c404
                         push               0x4                                                  // 0x006f274d    6a04
                         push               0x0                                                  // 0x006f274f    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2751    e84a440000
                         pop                edi                                                  // 0x006f2756    5f
                         pop                esi                                                  // 0x006f2757    5e
                         pop                ebp                                                  // 0x006f2758    5d
                         pop                ebx                                                  // 0x006f2759    5b
                         add                esp, 0x24                                            // 0x006f275a    83c424
                         ret                                                                     // 0x006f275d    c3
                         nop                                                                     // 0x006f275e    90
                         nop                                                                     // 0x006f275f    90
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2760    8b0d5c19d000
                         push               esi                                                  // 0x006f2766    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x006f2767    e8e430e6ff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f276c    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [eax + 0x000003c8]                    // 0x006f2772    8bb0c8030000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ                    // 0x006f2778    e80308e6ff
                         test               eax, eax                                             // 0x006f277d    85c0
                         {disp8} je         _jmp_addr_0x006f278e                                 // 0x006f277f    740d
                         push               0x00c0c1a8                                           // 0x006f2781    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2786    e8253b0000
                         add                esp, 0x04                                            // 0x006f278b    83c404
_jmp_addr_0x006f278e:    {disp32} mov       ecx, dword ptr [_game]                               // 0x006f278e    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ                    // 0x006f2794    e8e707e6ff
                         test               esi, esi                                             // 0x006f2799    85f6
                         {disp8} je         _jmp_addr_0x006f27b8                                 // 0x006f279b    741b
                         push               0x0                                                  // 0x006f279d    6a00
                         push               esi                                                  // 0x006f279f    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f27a0    e84ba90100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f27a5    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f27ab    83c408
                         push               0x4                                                  // 0x006f27ae    6a04
                         push               eax                                                  // 0x006f27b0    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f27b1    e8ea430000
                         pop                esi                                                  // 0x006f27b6    5e
                         ret                                                                     // 0x006f27b7    c3
_jmp_addr_0x006f27b8:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f27b8    8b0d105cd900
                         push               0x4                                                  // 0x006f27be    6a04
                         push               0x0                                                  // 0x006f27c0    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f27c2    e8d9430000
                         pop                esi                                                  // 0x006f27c7    5e
                         ret                                                                     // 0x006f27c8    c3
                         nop                                                                     // 0x006f27c9    90
                         nop                                                                     // 0x006f27ca    90
                         nop                                                                     // 0x006f27cb    90
                         nop                                                                     // 0x006f27cc    90
                         nop                                                                     // 0x006f27cd    90
                         nop                                                                     // 0x006f27ce    90
                         nop                                                                     // 0x006f27cf    90
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f27d0    8b0d5c19d000
                         push               esi                                                  // 0x006f27d6    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x006f27d7    e87430e6ff
                         {disp32} mov       ecx, dword ptr [eax + 0x0000039c]                    // 0x006f27dc    8b889c030000
                         call               ?GetFirstObjectInCurrentHand@GInterfaceStatus@@QAEPAVObject@@XZ                                 // 0x006f27e2    e84999eeff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f27e7    8b0d5c19d000
                         mov.s              esi, eax                                             // 0x006f27ed    8bf0
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ                    // 0x006f27ef    e88c07e6ff
                         test               eax, eax                                             // 0x006f27f4    85c0
                         {disp8} je         _jmp_addr_0x006f2805                                 // 0x006f27f6    740d
                         push               0x00c0c1a8                                           // 0x006f27f8    68a8c1c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f27fd    e8ae3a0000
                         add                esp, 0x04                                            // 0x006f2802    83c404
_jmp_addr_0x006f2805:    {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2805    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ                    // 0x006f280b    e87007e6ff
                         test               esi, esi                                             // 0x006f2810    85f6
                         {disp8} je         _jmp_addr_0x006f282f                                 // 0x006f2812    741b
                         push               0x0                                                  // 0x006f2814    6a00
                         push               esi                                                  // 0x006f2816    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2817    e8d4a80100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f281c    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2822    83c408
                         push               0x4                                                  // 0x006f2825    6a04
                         push               eax                                                  // 0x006f2827    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2828    e873430000
                         pop                esi                                                  // 0x006f282d    5e
                         ret                                                                     // 0x006f282e    c3
_jmp_addr_0x006f282f:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f282f    8b0d105cd900
                         push               0x4                                                  // 0x006f2835    6a04
                         push               0x0                                                  // 0x006f2837    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2839    e862430000
                         pop                esi                                                  // 0x006f283e    5e
                         ret                                                                     // 0x006f283f    c3
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2840    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f2846    83ec08
                         push               ebx                                                  // 0x006f2849    53
                         push               ebp                                                  // 0x006f284a    55
                         push               esi                                                  // 0x006f284b    56
                         push               edi                                                  // 0x006f284c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f284d    8d442410
                         push               eax                                                  // 0x006f2851    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2852    e869430000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2857    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f285d    8d542410
                         push               edx                                                  // 0x006f2861    52
                         mov.s              ebp, eax                                             // 0x006f2862    8be8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2864    e857430000
                         push               eax                                                  // 0x006f2869    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f286a    e8b1a90100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f286f    8b0d105cd900
                         mov.s              esi, eax                                             // 0x006f2875    8bf0
                         add                esp, 0x04                                            // 0x006f2877    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f287a    8d442414
                         push               eax                                                  // 0x006f287e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f287f    e83c430000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2884    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f288a    8d542414
                         push               edx                                                  // 0x006f288e    52
                         mov.s              edi, eax                                             // 0x006f288f    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2891    e82a430000
                         test               esi, esi                                             // 0x006f2896    85f6
                         mov.s              ebx, eax                                             // 0x006f2898    8bd8
                         {disp8} je         _jmp_addr_0x006f28fe                                 // 0x006f289a    7462
                         mov                eax, dword ptr [esi]                                 // 0x006f289c    8b06
                         mov.s              ecx, esi                                             // 0x006f289e    8bce
                         call               dword ptr [eax + 0x4e8]                              // 0x006f28a0    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x006f28a6    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]              // 0x006f28a9    8b04cd3cc7c000
                         test               eax, eax                                             // 0x006f28b0    85c0
                         {disp8} je         _jmp_addr_0x006f28f1                                 // 0x006f28b2    743d
                         test               ebp, ebp                                             // 0x006f28b4    85ed
                         push               edi                                                  // 0x006f28b6    57
                         push               ebx                                                  // 0x006f28b7    53
                         {disp8} je         _jmp_addr_0x006f28c1                                 // 0x006f28b8    7407
                         push               0x006f7a80                                           // 0x006f28ba    68807a6f00
                         {disp8} jmp        _jmp_addr_0x006f28c6                                 // 0x006f28bf    eb05
_jmp_addr_0x006f28c1:    push               0x006f6ff0                                           // 0x006f28c1    68f06f6f00
_jmp_addr_0x006f28c6:    push               esi                                                  // 0x006f28c6    56
                         call               eax                                                  // 0x006f28c7    ffd0
                         add                esp, 0x10                                            // 0x006f28c9    83c410
                         test               eax, eax                                             // 0x006f28cc    85c0
                         {disp8} je         _jmp_addr_0x006f28fe                                 // 0x006f28ce    742e
                         push               0x0                                                  // 0x006f28d0    6a00
                         push               eax                                                  // 0x006f28d2    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f28d3    e818a80100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f28d8    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f28de    83c408
                         push               0x4                                                  // 0x006f28e1    6a04
                         push               eax                                                  // 0x006f28e3    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f28e4    e8b7420000
                         pop                edi                                                  // 0x006f28e9    5f
                         pop                esi                                                  // 0x006f28ea    5e
                         pop                ebp                                                  // 0x006f28eb    5d
                         pop                ebx                                                  // 0x006f28ec    5b
                         add                esp, 0x08                                            // 0x006f28ed    83c408
                         ret                                                                     // 0x006f28f0    c3
_jmp_addr_0x006f28f1:    push               0x00c0cce4                                           // 0x006f28f1    68e4ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f28f6    e8b5390000
                         add                esp, 0x04                                            // 0x006f28fb    83c404
_jmp_addr_0x006f28fe:    push               0x00c0cd40                                           // 0x006f28fe    6840cdc000
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f2903    e8b8390000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2908    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f290e    83c404
                         push               0x4                                                  // 0x006f2911    6a04
                         push               0x0                                                  // 0x006f2913    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2915    e886420000
                         pop                edi                                                  // 0x006f291a    5f
                         pop                esi                                                  // 0x006f291b    5e
                         pop                ebp                                                  // 0x006f291c    5d
                         pop                ebx                                                  // 0x006f291d    5b
                         add                esp, 0x08                                            // 0x006f291e    83c408
                         ret                                                                     // 0x006f2921    c3
                         nop                                                                     // 0x006f2922    90
                         nop                                                                     // 0x006f2923    90
                         nop                                                                     // 0x006f2924    90
                         nop                                                                     // 0x006f2925    90
                         nop                                                                     // 0x006f2926    90
                         nop                                                                     // 0x006f2927    90
                         nop                                                                     // 0x006f2928    90
                         nop                                                                     // 0x006f2929    90
                         nop                                                                     // 0x006f292a    90
                         nop                                                                     // 0x006f292b    90
                         nop                                                                     // 0x006f292c    90
                         nop                                                                     // 0x006f292d    90
                         nop                                                                     // 0x006f292e    90
                         nop                                                                     // 0x006f292f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2930    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f2936    83ec08
                         push               ebx                                                  // 0x006f2939    53
                         push               ebp                                                  // 0x006f293a    55
                         push               esi                                                  // 0x006f293b    56
                         push               edi                                                  // 0x006f293c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f293d    8d442410
                         push               eax                                                  // 0x006f2941    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2942    e879420000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2947    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f294d    8d542410
                         push               edx                                                  // 0x006f2951    52
                         mov.s              ebp, eax                                             // 0x006f2952    8be8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2954    e867420000
                         push               eax                                                  // 0x006f2959    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f295a    e8c1a80100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f295f    8b0d105cd900
                         mov.s              esi, eax                                             // 0x006f2965    8bf0
                         add                esp, 0x04                                            // 0x006f2967    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f296a    8d442414
                         push               eax                                                  // 0x006f296e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f296f    e84c420000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2974    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f297a    8d542414
                         push               edx                                                  // 0x006f297e    52
                         mov.s              edi, eax                                             // 0x006f297f    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2981    e83a420000
                         test               esi, esi                                             // 0x006f2986    85f6
                         mov.s              ebx, eax                                             // 0x006f2988    8bd8
                         {disp8} je         _jmp_addr_0x006f29ee                                 // 0x006f298a    7462
                         mov                eax, dword ptr [esi]                                 // 0x006f298c    8b06
                         mov.s              ecx, esi                                             // 0x006f298e    8bce
                         call               dword ptr [eax + 0x4e8]                              // 0x006f2990    ff90e8040000
                         lea                ecx, dword ptr [eax + eax * 0x2]                     // 0x006f2996    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x8 + 0x00c0c73c]              // 0x006f2999    8b04cd3cc7c000
                         test               eax, eax                                             // 0x006f29a0    85c0
                         {disp8} je         _jmp_addr_0x006f29e1                                 // 0x006f29a2    743d
                         test               ebp, ebp                                             // 0x006f29a4    85ed
                         push               edi                                                  // 0x006f29a6    57
                         push               ebx                                                  // 0x006f29a7    53
                         {disp8} je         _jmp_addr_0x006f29b1                                 // 0x006f29a8    7407
                         push               0x006f7ab0                                           // 0x006f29aa    68b07a6f00
                         {disp8} jmp        _jmp_addr_0x006f29b6                                 // 0x006f29af    eb05
_jmp_addr_0x006f29b1:    push               0x006f7030                                           // 0x006f29b1    6830706f00
_jmp_addr_0x006f29b6:    push               esi                                                  // 0x006f29b6    56
                         call               eax                                                  // 0x006f29b7    ffd0
                         add                esp, 0x10                                            // 0x006f29b9    83c410
                         test               eax, eax                                             // 0x006f29bc    85c0
                         {disp8} je         _jmp_addr_0x006f29ee                                 // 0x006f29be    742e
                         push               0x0                                                  // 0x006f29c0    6a00
                         push               eax                                                  // 0x006f29c2    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f29c3    e828a70100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f29c8    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f29ce    83c408
                         push               0x4                                                  // 0x006f29d1    6a04
                         push               eax                                                  // 0x006f29d3    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f29d4    e8c7410000
                         pop                edi                                                  // 0x006f29d9    5f
                         pop                esi                                                  // 0x006f29da    5e
                         pop                ebp                                                  // 0x006f29db    5d
                         pop                ebx                                                  // 0x006f29dc    5b
                         add                esp, 0x08                                            // 0x006f29dd    83c408
                         ret                                                                     // 0x006f29e0    c3
_jmp_addr_0x006f29e1:    push               0x00c0cce4                                           // 0x006f29e1    68e4ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f29e6    e8c5380000
                         add                esp, 0x04                                            // 0x006f29eb    83c404
_jmp_addr_0x006f29ee:    push               0x00c0cd58                                           // 0x006f29ee    6858cdc000
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f29f3    e8c8380000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f29f8    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f29fe    83c404
                         push               0x4                                                  // 0x006f2a01    6a04
                         push               0x0                                                  // 0x006f2a03    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2a05    e896410000
                         pop                edi                                                  // 0x006f2a0a    5f
                         pop                esi                                                  // 0x006f2a0b    5e
                         pop                ebp                                                  // 0x006f2a0c    5d
                         pop                ebx                                                  // 0x006f2a0d    5b
                         add                esp, 0x08                                            // 0x006f2a0e    83c408
                         ret                                                                     // 0x006f2a11    c3
                         nop                                                                     // 0x006f2a12    90
                         nop                                                                     // 0x006f2a13    90
                         nop                                                                     // 0x006f2a14    90
                         nop                                                                     // 0x006f2a15    90
                         nop                                                                     // 0x006f2a16    90
                         nop                                                                     // 0x006f2a17    90
                         nop                                                                     // 0x006f2a18    90
                         nop                                                                     // 0x006f2a19    90
                         nop                                                                     // 0x006f2a1a    90
                         nop                                                                     // 0x006f2a1b    90
                         nop                                                                     // 0x006f2a1c    90
                         nop                                                                     // 0x006f2a1d    90
                         nop                                                                     // 0x006f2a1e    90
                         nop                                                                     // 0x006f2a1f    90
                         sub                esp, 0x20                                            // 0x006f2a20    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2a23    8b0d105cd900
                         push               esi                                                  // 0x006f2a29    56
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f2a2a    8d442414
                         push               eax                                                  // 0x006f2a2e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2a2f    e88c410000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2a34    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f2a3a    8d542408
                         push               edx                                                  // 0x006f2a3e    52
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f2a3f    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2a43    e878410000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f2a48    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2a4e    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f2a52    8d442404
                         push               eax                                                  // 0x006f2a56    50
                         mov.s              ecx, esi                                             // 0x006f2a57    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2a59    e862410000
                         mov.s              ecx, eax                                             // 0x006f2a5e    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f2a60    8d542404
                         {disp8} mov        dword ptr [esp + 0x20], ecx                          // 0x006f2a64    894c2420
                         push               edx                                                  // 0x006f2a68    52
                         mov.s              ecx, esi                                             // 0x006f2a69    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2a6b    89442408
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2a6f    e84c410000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x006f2a74    8d4c2404
                         push               ecx                                                  // 0x006f2a78    51
                         mov.s              ecx, esi                                             // 0x006f2a79    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2a7b    89442408
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x006f2a7f    89442420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2a83    e838410000
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f2a88    d9442408
                         mov.s              edx, eax                                             // 0x006f2a8c    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f2a8e    89442404
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x006f2a92    89542418
                         call               _jmp_addr_0x007a1400                                 // 0x006f2a96    e865e90a00
                         push               eax                                                  // 0x006f2a9b    50
                         call               _jmp_addr_0x006eb9a0                                 // 0x006f2a9c    e8ff8effff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2aa1    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000                   // 0x006f2aa5    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                               // 0x006f2aad    df6c240c
                         add                esp, 0x04                                            // 0x006f2ab1    83c404
                         call               _jmp_addr_0x007a1400                                 // 0x006f2ab4    e847e90a00
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2ab9    8b0d5c19d000
                         push               eax                                                  // 0x006f2abf    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z                 // 0x006f2ac0    e8ebdee5ff
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x006f2ac5    d9442414
                         push               eax                                                  // 0x006f2ac9    50
                         push               ecx                                                  // 0x006f2aca    51
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x006f2acb    8d442420
                         fstp               dword ptr [esp]                                      // 0x006f2acf    d91c24
                         push               eax                                                  // 0x006f2ad2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x006f2ad3    8d4c2414
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f2ad7    e88406f1ff
                         push               eax                                                  // 0x006f2adc    50
                         call               _jmp_addr_0x006f72e0                                 // 0x006f2add    e8fe470000
                         add                esp, 0x0c                                            // 0x006f2ae2    83c40c
                         test               eax, eax                                             // 0x006f2ae5    85c0
                         pop                esi                                                  // 0x006f2ae7    5e
                         {disp8} jne        _jmp_addr_0x006f2b0a                                 // 0x006f2ae8    7520
                         push               0x00c0cd74                                           // 0x006f2aea    6874cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2aef    e8bc370000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2af4    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f2afa    83c404
                         push               0x4                                                  // 0x006f2afd    6a04
                         push               0x0                                                  // 0x006f2aff    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2b01    e89a400000
                         add                esp, 0x20                                            // 0x006f2b06    83c420
                         ret                                                                     // 0x006f2b09    c3
_jmp_addr_0x006f2b0a:    push               0x0                                                  // 0x006f2b0a    6a00
                         push               eax                                                  // 0x006f2b0c    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2b0d    e8dea50100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2b12    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2b18    83c408
                         push               0x4                                                  // 0x006f2b1b    6a04
                         push               eax                                                  // 0x006f2b1d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2b1e    e87d400000
                         add                esp, 0x20                                            // 0x006f2b23    83c420
                         ret                                                                     // 0x006f2b26    c3
                         nop                                                                     // 0x006f2b27    90
                         nop                                                                     // 0x006f2b28    90
                         nop                                                                     // 0x006f2b29    90
                         nop                                                                     // 0x006f2b2a    90
                         nop                                                                     // 0x006f2b2b    90
                         nop                                                                     // 0x006f2b2c    90
                         nop                                                                     // 0x006f2b2d    90
                         nop                                                                     // 0x006f2b2e    90
                         nop                                                                     // 0x006f2b2f    90
                         sub                esp, 0x1c                                            // 0x006f2b30    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2b33    8b0d105cd900
                         push               esi                                                  // 0x006f2b39    56
                         push               edi                                                  // 0x006f2b3a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f2b3b    8d442408
                         push               eax                                                  // 0x006f2b3f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2b40    e87b400000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f2b45    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                          // 0x006f2b4b    8d4c2408
                         push               ecx                                                  // 0x006f2b4f    51
                         mov.s              ecx, esi                                             // 0x006f2b50    8bce
                         mov.s              edi, eax                                             // 0x006f2b52    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2b54    e867400000
                         mov.s              edx, eax                                             // 0x006f2b59    8bd0
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2b5b    89442408
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f2b5f    8d442408
                         push               eax                                                  // 0x006f2b63    50
                         mov.s              ecx, esi                                             // 0x006f2b64    8bce
                         {disp8} mov        dword ptr [esp + 0x18], edx                          // 0x006f2b66    89542418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2b6a    e851400000
                         mov.s              ecx, eax                                             // 0x006f2b6f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f2b71    8d542408
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x006f2b75    894c2410
                         push               edx                                                  // 0x006f2b79    52
                         mov.s              ecx, esi                                             // 0x006f2b7a    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2b7c    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2b80    e83b400000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2b85    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f2b8b    8d542408
                         push               edx                                                  // 0x006f2b8f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2b90    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2b94    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2b98    e823400000
                         mov.s              esi, eax                                             // 0x006f2b9d    8bf0
                         test               esi, esi                                             // 0x006f2b9f    85f6
                         {disp8} jle        _jmp_addr_0x006f2ba8                                 // 0x006f2ba1    7e05
                         cmp                esi, 0x3d                                            // 0x006f2ba3    83fe3d
                         {disp8} jl         _jmp_addr_0x006f2bb5                                 // 0x006f2ba6    7c0d
_jmp_addr_0x006f2ba8:    push               0x00c0cc08                                           // 0x006f2ba8    6808ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2bad    e8fe360000
                         add                esp, 0x04                                            // 0x006f2bb2    83c404
_jmp_addr_0x006f2bb5:    test               esi, esi                                             // 0x006f2bb5    85f6
                         {disp32} jle       _jmp_addr_0x006f2c54                                 // 0x006f2bb7    0f8e97000000
                         cmp                esi, 0x3d                                            // 0x006f2bbd    83fe3d
                         {disp32} jge       _jmp_addr_0x006f2c54                                 // 0x006f2bc0    0f8d8e000000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2bc6    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x006f2bcc    33c0
                         push               0x0                                                  // 0x006f2bce    6a00
                         test               edi, edi                                             // 0x006f2bd0    85ff
                         sete               al                                                   // 0x006f2bd2    0f94c0
                         push               0x3f800000                                           // 0x006f2bd5    680000803f
                         push               0x0                                                  // 0x006f2bda    6a00
                         push               eax                                                  // 0x006f2bdc    50
                         xor.s              eax, eax                                             // 0x006f2bdd    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x006f2bdf    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x006f2be5    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x006f2be8    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x006f2beb    8d0450
                         shl                eax, 5                                               // 0x006f2bee    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x006f2bf1    8d4c0818
                         lea                edx, dword ptr [esi + esi * 0x8]                     // 0x006f2bf5    8d14f6
                         lea                eax, dword ptr [esi + edx * 0x2]                     // 0x006f2bf8    8d0456
                         push               ecx                                                  // 0x006f2bfb    51
                         shl                eax, 4                                               // 0x006f2bfc    c1e004
                         add                eax, 0x00d50bf8                                      // 0x006f2bff    05f80bd500
                         push               eax                                                  // 0x006f2c04    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x006f2c05    8d4c2424
                         push               ecx                                                  // 0x006f2c09    51
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x006f2c0a    8d4c2434
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f2c0e    e84d05f1ff
                         push               eax                                                  // 0x006f2c13    50
                         call               _jmp_addr_0x006e58c0                                 // 0x006f2c14    e8a72cffff
                         mov.s              esi, eax                                             // 0x006f2c19    8bf0
                         add                esp, 0x1c                                            // 0x006f2c1b    83c41c
                         test               esi, esi                                             // 0x006f2c1e    85f6
                         {disp8} je         _jmp_addr_0x006f2c54                                 // 0x006f2c20    7432
                         push               0x1                                                  // 0x006f2c22    6a01
                         push               esi                                                  // 0x006f2c24    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2c25    e8c6a40100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2c2a    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2c30    83c408
                         push               0x4                                                  // 0x006f2c33    6a04
                         push               eax                                                  // 0x006f2c35    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2c36    e8653f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2c3b    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f2c41    e8ca3d0000
                         push               eax                                                  // 0x006f2c46    50
                         mov.s              ecx, esi                                             // 0x006f2c47    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f2c49    e822cee7ff
                         pop                edi                                                  // 0x006f2c4e    5f
                         pop                esi                                                  // 0x006f2c4f    5e
                         add                esp, 0x1c                                            // 0x006f2c50    83c41c
                         ret                                                                     // 0x006f2c53    c3
_jmp_addr_0x006f2c54:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2c54    8b0d105cd900
                         push               0x4                                                  // 0x006f2c5a    6a04
                         push               0x0                                                  // 0x006f2c5c    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2c5e    e83d3f0000
                         pop                edi                                                  // 0x006f2c63    5f
                         pop                esi                                                  // 0x006f2c64    5e
                         add                esp, 0x1c                                            // 0x006f2c65    83c41c
                         ret                                                                     // 0x006f2c68    c3
                         nop                                                                     // 0x006f2c69    90
                         nop                                                                     // 0x006f2c6a    90
                         nop                                                                     // 0x006f2c6b    90
                         nop                                                                     // 0x006f2c6c    90
                         nop                                                                     // 0x006f2c6d    90
                         nop                                                                     // 0x006f2c6e    90
                         nop                                                                     // 0x006f2c6f    90
                         sub                esp, 0x20                                            // 0x006f2c70    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2c73    8b0d105cd900
                         push               ebx                                                  // 0x006f2c79    53
                         push               esi                                                  // 0x006f2c7a    56
                         push               edi                                                  // 0x006f2c7b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f2c7c    8d44240c
                         push               eax                                                  // 0x006f2c80    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2c81    e83a3f0000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f2c86    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x006f2c8c    8d4c240c
                         push               ecx                                                  // 0x006f2c90    51
                         mov.s              ecx, esi                                             // 0x006f2c91    8bce
                         mov.s              ebx, eax                                             // 0x006f2c93    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2c95    e8263f0000
                         mov.s              edx, eax                                             // 0x006f2c9a    8bd0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2c9c    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f2ca0    8d44240c
                         push               eax                                                  // 0x006f2ca4    50
                         mov.s              ecx, esi                                             // 0x006f2ca5    8bce
                         {disp8} mov        dword ptr [esp + 0x20], edx                          // 0x006f2ca7    89542420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2cab    e8103f0000
                         mov.s              ecx, eax                                             // 0x006f2cb0    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f2cb2    8d54240c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x006f2cb6    894c2418
                         push               edx                                                  // 0x006f2cba    52
                         mov.s              ecx, esi                                             // 0x006f2cbb    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2cbd    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2cc1    e8fa3e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2cc6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f2ccc    8d54240c
                         push               edx                                                  // 0x006f2cd0    52
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2cd1    89442410
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f2cd5    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2cd9    e8e23e0000
                         push               eax                                                  // 0x006f2cde    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f2cdf    e83ca50100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2ce4    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f2cea    8bf8
                         add                esp, 0x04                                            // 0x006f2cec    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f2cef    8d442410
                         push               eax                                                  // 0x006f2cf3    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2cf4    e8c73e0000
                         mov.s              esi, eax                                             // 0x006f2cf9    8bf0
                         test               esi, esi                                             // 0x006f2cfb    85f6
                         {disp8} jle        _jmp_addr_0x006f2d04                                 // 0x006f2cfd    7e05
                         cmp                esi, 0x3d                                            // 0x006f2cff    83fe3d
                         {disp8} jl         _jmp_addr_0x006f2d11                                 // 0x006f2d02    7c0d
_jmp_addr_0x006f2d04:    push               0x00c0cc08                                           // 0x006f2d04    6808ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2d09    e8a2350000
                         add                esp, 0x04                                            // 0x006f2d0e    83c404
_jmp_addr_0x006f2d11:    test               esi, esi                                             // 0x006f2d11    85f6
                         {disp32} jle       _jmp_addr_0x006f2df1                                 // 0x006f2d13    0f8ed8000000
                         cmp                esi, 0x3d                                            // 0x006f2d19    83fe3d
                         {disp32} jge       _jmp_addr_0x006f2df1                                 // 0x006f2d1c    0f8dcf000000
                         test               edi, edi                                             // 0x006f2d22    85ff
                         {disp8} je         _jmp_addr_0x006f2d34                                 // 0x006f2d24    740e
                         mov                edx, dword ptr [edi]                                 // 0x006f2d26    8b17
                         mov.s              ecx, edi                                             // 0x006f2d28    8bcf
                         call               dword ptr [edx + 0x1b8]                              // 0x006f2d2a    ff92b8010000
                         test               eax, eax                                             // 0x006f2d30    85c0
                         {disp8} jne        _jmp_addr_0x006f2d41                                 // 0x006f2d32    750d
_jmp_addr_0x006f2d34:    push               0x00c0cd88                                           // 0x006f2d34    6888cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2d39    e872350000
                         add                esp, 0x04                                            // 0x006f2d3e    83c404
_jmp_addr_0x006f2d41:    test               edi, edi                                             // 0x006f2d41    85ff
                         {disp32} je        _jmp_addr_0x006f2df1                                 // 0x006f2d43    0f84a8000000
                         mov                eax, dword ptr [edi]                                 // 0x006f2d49    8b07
                         mov.s              ecx, edi                                             // 0x006f2d4b    8bcf
                         call               dword ptr [eax + 0x1b8]                              // 0x006f2d4d    ff90b8010000
                         mov                edx, dword ptr [edi]                                 // 0x006f2d53    8b17
                         mov.s              ecx, edi                                             // 0x006f2d55    8bcf
                         call               dword ptr [edx + 0x1b8]                              // 0x006f2d57    ff92b8010000
                         test               eax, eax                                             // 0x006f2d5d    85c0
                         {disp32} je        _jmp_addr_0x006f2df1                                 // 0x006f2d5f    0f848c000000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f2d65    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x006f2d6b    33c0
                         push               edi                                                  // 0x006f2d6d    57
                         test               ebx, ebx                                             // 0x006f2d6e    85db
                         sete               al                                                   // 0x006f2d70    0f94c0
                         push               0x3f800000                                           // 0x006f2d73    680000803f
                         push               0x0                                                  // 0x006f2d78    6a00
                         push               eax                                                  // 0x006f2d7a    50
                         xor.s              eax, eax                                             // 0x006f2d7b    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x006f2d7d    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x006f2d83    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x006f2d86    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x006f2d89    8d0450
                         shl                eax, 5                                               // 0x006f2d8c    c1e005
                         {disp8} lea        ecx, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x006f2d8f    8d4c0818
                         lea                edx, dword ptr [esi + esi * 0x8]                     // 0x006f2d93    8d14f6
                         lea                eax, dword ptr [esi + edx * 0x2]                     // 0x006f2d96    8d0456
                         push               ecx                                                  // 0x006f2d99    51
                         shl                eax, 4                                               // 0x006f2d9a    c1e004
                         add                eax, 0x00d50bf8                                      // 0x006f2d9d    05f80bd500
                         push               eax                                                  // 0x006f2da2    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                          // 0x006f2da3    8d4c242c
                         push               ecx                                                  // 0x006f2da7    51
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                          // 0x006f2da8    8d4c243c
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f2dac    e8af03f1ff
                         push               eax                                                  // 0x006f2db1    50
                         call               _jmp_addr_0x006e58c0                                 // 0x006f2db2    e8092bffff
                         add                esp, 0x1c                                            // 0x006f2db7    83c41c
                         test               eax, eax                                             // 0x006f2dba    85c0
                         {disp8} je         _jmp_addr_0x006f2df1                                 // 0x006f2dbc    7433
                         push               0x1                                                  // 0x006f2dbe    6a01
                         push               eax                                                  // 0x006f2dc0    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2dc1    e82aa30100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2dc6    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2dcc    83c408
                         push               0x4                                                  // 0x006f2dcf    6a04
                         push               eax                                                  // 0x006f2dd1    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2dd2    e8c93d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2dd7    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f2ddd    e82e3c0000
                         push               eax                                                  // 0x006f2de2    50
                         mov.s              ecx, edi                                             // 0x006f2de3    8bcf
                         call               _jmp_addr_0x0056fa70                                 // 0x006f2de5    e886cce7ff
                         pop                edi                                                  // 0x006f2dea    5f
                         pop                esi                                                  // 0x006f2deb    5e
                         pop                ebx                                                  // 0x006f2dec    5b
                         add                esp, 0x20                                            // 0x006f2ded    83c420
                         ret                                                                     // 0x006f2df0    c3
_jmp_addr_0x006f2df1:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2df1    8b0d105cd900
                         push               0x4                                                  // 0x006f2df7    6a04
                         push               0x0                                                  // 0x006f2df9    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2dfb    e8a03d0000
                         pop                edi                                                  // 0x006f2e00    5f
                         pop                esi                                                  // 0x006f2e01    5e
                         pop                ebx                                                  // 0x006f2e02    5b
                         add                esp, 0x20                                            // 0x006f2e03    83c420
                         ret                                                                     // 0x006f2e06    c3
                         nop                                                                     // 0x006f2e07    90
                         nop                                                                     // 0x006f2e08    90
                         nop                                                                     // 0x006f2e09    90
                         nop                                                                     // 0x006f2e0a    90
                         nop                                                                     // 0x006f2e0b    90
                         nop                                                                     // 0x006f2e0c    90
                         nop                                                                     // 0x006f2e0d    90
                         nop                                                                     // 0x006f2e0e    90
                         nop                                                                     // 0x006f2e0f    90
                         sub                esp, 0x00000414                                      // 0x006f2e10    81ec14040000
                         push               ebx                                                  // 0x006f2e16    53
                         push               esi                                                  // 0x006f2e17    56
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f2e18    8b35105cd900
                         push               edi                                                  // 0x006f2e1e    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f2e1f    8d44240c
                         push               eax                                                  // 0x006f2e23    50
                         mov.s              ecx, esi                                             // 0x006f2e24    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e26    e8953d0000
                         mov.s              ecx, eax                                             // 0x006f2e2b    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f2e2d    8d54240c
                         {disp8} mov        dword ptr [esp + 0x18], ecx                          // 0x006f2e31    894c2418
                         push               edx                                                  // 0x006f2e35    52
                         mov.s              ecx, esi                                             // 0x006f2e36    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2e38    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e3c    e87f3d0000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                          // 0x006f2e41    8d4c240c
                         push               ecx                                                  // 0x006f2e45    51
                         mov.s              ecx, esi                                             // 0x006f2e46    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2e48    89442410
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f2e4c    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e50    e86b3d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2e55    8b0d105cd900
                         mov.s              edx, eax                                             // 0x006f2e5b    8bd0
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2e5d    8944240c
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f2e61    8d44240c
                         push               eax                                                  // 0x006f2e65    50
                         {disp8} mov        dword ptr [esp + 0x14], edx                          // 0x006f2e66    89542414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e6a    e8513d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2e6f    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f2e75    8d54240c
                         push               edx                                                  // 0x006f2e79    52
                         mov.s              edi, eax                                             // 0x006f2e7a    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e7c    e83f3d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2e81    8b0d105cd900
                         mov.s              esi, eax                                             // 0x006f2e87    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f2e89    8d44240c
                         push               eax                                                  // 0x006f2e8d    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2e8e    e82d3d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2e93    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f2e99    8d54240c
                         push               edx                                                  // 0x006f2e9d    52
                         mov.s              ebx, eax                                             // 0x006f2e9e    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2ea0    e81b3d0000
                         test               esi, esi                                             // 0x006f2ea5    85f6
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f2ea7    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x006f2eab    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8220c]                    // 0x006f2eaf    d80d0cb29200
                         {disp8} fstp       dword ptr [esp + 0x0c]                               // 0x006f2eb5    d95c240c
                         {disp8} jle        _jmp_addr_0x006f2ec0                                 // 0x006f2eb9    7e05
                         cmp                esi, 0x2a                                            // 0x006f2ebb    83fe2a
                         {disp8} jl         _jmp_addr_0x006f2eda                                 // 0x006f2ebe    7c1a
_jmp_addr_0x006f2ec0:    push               esi                                                  // 0x006f2ec0    56
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x006f2ec1    8d442420
                         push               0x00c0cb48                                           // 0x006f2ec5    6848cbc000
                         push               eax                                                  // 0x006f2eca    50
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]          // 0x006f2ecb    ff155c938a00
                         push               eax                                                  // 0x006f2ed1    50
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2ed2    e8d9330000
                         add                esp, 0x10                                            // 0x006f2ed7    83c410
_jmp_addr_0x006f2eda:    test               esi, esi                                             // 0x006f2eda    85f6
                         {disp8} jle        _jmp_addr_0x006f2f30                                 // 0x006f2edc    7e52
                         cmp                esi, 0x2a                                            // 0x006f2ede    83fe2a
                         {disp8} jge        _jmp_addr_0x006f2f30                                 // 0x006f2ee1    7d4d
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                          // 0x006f2ee3    8b4c240c
                         push               ebx                                                  // 0x006f2ee7    53
                         push               ecx                                                  // 0x006f2ee8    51
                         push               edi                                                  // 0x006f2ee9    57
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f2eea    8d54241c
                         push               esi                                                  // 0x006f2eee    56
                         push               edx                                                  // 0x006f2eef    52
                         call               _jmp_addr_0x006f11a0                                 // 0x006f2ef0    e8abe2ffff
                         mov.s              esi, eax                                             // 0x006f2ef5    8bf0
                         add                esp, 0x14                                            // 0x006f2ef7    83c414
                         test               esi, esi                                             // 0x006f2efa    85f6
                         {disp8} je         _jmp_addr_0x006f2f23                                 // 0x006f2efc    7425
                         push               0x1                                                  // 0x006f2efe    6a01
                         push               esi                                                  // 0x006f2f00    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f2f01    e8eaa10100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2f06    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f2f0c    83c408
                         mov.s              edi, eax                                             // 0x006f2f0f    8bf8
                         call               _jmp_addr_0x006f6a10                                 // 0x006f2f11    e8fa3a0000
                         push               eax                                                  // 0x006f2f16    50
                         mov.s              ecx, esi                                             // 0x006f2f17    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f2f19    e852cbe7ff
                         push               0x4                                                  // 0x006f2f1e    6a04
                         push               edi                                                  // 0x006f2f20    57
                         {disp8} jmp        _jmp_addr_0x006f2f34                                 // 0x006f2f21    eb11
_jmp_addr_0x006f2f23:    push               0x00c0cbf4                                           // 0x006f2f23    68f4cbc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f2f28    e883330000
                         add                esp, 0x04                                            // 0x006f2f2d    83c404
_jmp_addr_0x006f2f30:    push               0x4                                                  // 0x006f2f30    6a04
                         push               0x0                                                  // 0x006f2f32    6a00
_jmp_addr_0x006f2f34:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2f34    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f2f3a    e8613c0000
                         pop                edi                                                  // 0x006f2f3f    5f
                         pop                esi                                                  // 0x006f2f40    5e
                         pop                ebx                                                  // 0x006f2f41    5b
                         add                esp, 0x00000414                                      // 0x006f2f42    81c414040000
                         ret                                                                     // 0x006f2f48    c3
                         nop                                                                     // 0x006f2f49    90
                         nop                                                                     // 0x006f2f4a    90
                         nop                                                                     // 0x006f2f4b    90
                         nop                                                                     // 0x006f2f4c    90
                         nop                                                                     // 0x006f2f4d    90
                         nop                                                                     // 0x006f2f4e    90
                         nop                                                                     // 0x006f2f4f    90
                         sub                esp, 0x1c                                            // 0x006f2f50    83ec1c
                         push               esi                                                  // 0x006f2f53    56
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f2f54    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f2f5a    8d442404
                         push               eax                                                  // 0x006f2f5e    50
                         mov.s              ecx, esi                                             // 0x006f2f5f    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2f61    e85a3c0000
                         mov.s              ecx, eax                                             // 0x006f2f66    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f2f68    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                          // 0x006f2f6c    894c2410
                         push               edx                                                  // 0x006f2f70    52
                         mov.s              ecx, esi                                             // 0x006f2f71    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2f73    89442408
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2f77    e8443c0000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x006f2f7c    8d4c2404
                         push               ecx                                                  // 0x006f2f80    51
                         mov.s              ecx, esi                                             // 0x006f2f81    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f2f83    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f2f87    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2f8b    e8303c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f2f90    8b0d105cd900
                         mov.s              edx, eax                                             // 0x006f2f96    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f2f98    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f2f9c    8d442404
                         push               eax                                                  // 0x006f2fa0    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                          // 0x006f2fa1    8954240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f2fa5    e8163c0000
                         push               0x00000435                                           // 0x006f2faa    6835040000
                         push               0x00c0cc98                                           // 0x006f2faf    6898ccc000
                         push               0x7                                                  // 0x006f2fb4    6a07
                         mov.s              esi, eax                                             // 0x006f2fb6    8bf0
                         call               ?GameRand@GRand@@SAHJ@Z                              // 0x006f2fb8    e853b5feff
                         {disp32} lea       ecx, dword ptr [esi * 0x8 + 0x00000000]              // 0x006f2fbd    8d0cf500000000
                         sub.s              ecx, esi                                             // 0x006f2fc4    2bce
                         add.s              eax, ecx                                             // 0x006f2fc6    03c1
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]              // 0x006f2fc8    8d14c500000000
                         sub.s              edx, eax                                             // 0x006f2fcf    2bd0
                         lea                ecx, dword ptr [eax + edx * 0x4]                     // 0x006f2fd1    8d0c90
                         lea                edx, dword ptr [eax + ecx * 0x8]                     // 0x006f2fd4    8d14c8
                         {disp32} mov       ecx, dword ptr [edx * 0x4 + 0x00da6d20]              // 0x006f2fd7    8b0c95206dda00
                         add                esp, 0x0c                                            // 0x006f2fde    83c40c
                         {disp32} lea       eax, dword ptr [edx * 0x4 + _VillagerInfos               ]              // 0x006f2fe1    8d0495e86bda00
                         push               0x0                                                  // 0x006f2fe8    6a00
                         push               ecx                                                  // 0x006f2fea    51
                         push               eax                                                  // 0x006f2feb    50
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f2fec    8d542414
                         push               edx                                                  // 0x006f2ff0    52
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x006f2ff1    8d4c2424
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f2ff5    e86601f1ff
                         push               eax                                                  // 0x006f2ffa    50
                         call               ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z  // 0x006f2ffb    e8e0cb0500
                         mov.s              esi, eax                                             // 0x006f3000    8bf0
                         add                esp, 0x10                                            // 0x006f3002    83c410
                         test               esi, esi                                             // 0x006f3005    85f6
                         {disp8} je         _jmp_addr_0x006f303a                                 // 0x006f3007    7431
                         push               0x1                                                  // 0x006f3009    6a01
                         push               esi                                                  // 0x006f300b    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f300c    e8dfa00100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3011    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f3017    83c408
                         push               0x4                                                  // 0x006f301a    6a04
                         push               eax                                                  // 0x006f301c    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f301d    e87e3b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3022    8b0d105cd900
                         call               _jmp_addr_0x006f6a10                                 // 0x006f3028    e8e3390000
                         push               eax                                                  // 0x006f302d    50
                         mov.s              ecx, esi                                             // 0x006f302e    8bce
                         call               _jmp_addr_0x0056fa70                                 // 0x006f3030    e83bcae7ff
                         pop                esi                                                  // 0x006f3035    5e
                         add                esp, 0x1c                                            // 0x006f3036    83c41c
                         ret                                                                     // 0x006f3039    c3
_jmp_addr_0x006f303a:    push               0x00c0cd98                                           // 0x006f303a    6898cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f303f    e86c320000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3044    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f304a    83c404
                         push               0x4                                                  // 0x006f304d    6a04
                         push               0x0                                                  // 0x006f304f    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3051    e84a3b0000
                         pop                esi                                                  // 0x006f3056    5e
                         add                esp, 0x1c                                            // 0x006f3057    83c41c
                         ret                                                                     // 0x006f305a    c3
                         nop                                                                     // 0x006f305b    90
                         nop                                                                     // 0x006f305c    90
                         nop                                                                     // 0x006f305d    90
                         nop                                                                     // 0x006f305e    90
                         nop                                                                     // 0x006f305f    90
                         push               ecx                                                  // 0x006f3060    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3061    8b0d105cd900
                         push               esi                                                  // 0x006f3067    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f3068    8d442404
                         push               eax                                                  // 0x006f306c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f306d    e84e3b0000
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f3072    89442404
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x006f3076    d9442404
                         call               _jmp_addr_0x007a1400                                 // 0x006f307a    e881e30a00
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f307f    8b0d5c19d000
                         push               0x0                                                  // 0x006f3085    6a00
                         mov.s              esi, eax                                             // 0x006f3087    8bf0
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z        // 0x006f3089    e8f2d8e5ff
                         test               eax, eax                                             // 0x006f308e    85c0
                         {disp8} je         _jmp_addr_0x006f30be                                 // 0x006f3090    742c
_jmp_addr_0x006f3092:    {disp32} mov       ecx, dword ptr [eax + 0x00000a50]                    // 0x006f3092    8b88500a0000
                         test               ecx, ecx                                             // 0x006f3098    85c9
                         {disp8} je         _jmp_addr_0x006f30ae                                 // 0x006f309a    7412
_jmp_addr_0x006f309c:    cmp                dword ptr [ecx + 0x000005b4], esi                    // 0x006f309c    39b1b4050000
                         {disp8} je         _jmp_addr_0x006f30dd                                 // 0x006f30a2    7439
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000075c]                    // 0x006f30a4    8b895c070000
                         test               ecx, ecx                                             // 0x006f30aa    85c9
                         {disp8} jne        _jmp_addr_0x006f309c                                 // 0x006f30ac    75ee
_jmp_addr_0x006f30ae:    {disp32} mov       ecx, dword ptr [_game]                               // 0x006f30ae    8b0d5c19d000
                         push               eax                                                  // 0x006f30b4    50
                         call               ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z        // 0x006f30b5    e8c6d8e5ff
                         test               eax, eax                                             // 0x006f30ba    85c0
                         {disp8} jne        _jmp_addr_0x006f3092                                 // 0x006f30bc    75d4
_jmp_addr_0x006f30be:    push               0x00c0cdb0                                           // 0x006f30be    68b0cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f30c3    e8e8310000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f30c8    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f30ce    83c404
                         push               0x4                                                  // 0x006f30d1    6a04
                         push               0x0                                                  // 0x006f30d3    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f30d5    e8c63a0000
                         pop                esi                                                  // 0x006f30da    5e
                         pop                ecx                                                  // 0x006f30db    59
                         ret                                                                     // 0x006f30dc    c3
_jmp_addr_0x006f30dd:    push               0x0                                                  // 0x006f30dd    6a00
                         push               ecx                                                  // 0x006f30df    51
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f30e0    e80ba00100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f30e5    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f30eb    83c408
                         push               0x4                                                  // 0x006f30ee    6a04
                         push               eax                                                  // 0x006f30f0    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f30f1    e8aa3a0000
                         pop                esi                                                  // 0x006f30f6    5e
                         pop                ecx                                                  // 0x006f30f7    59
                         ret                                                                     // 0x006f30f8    c3
                         nop                                                                     // 0x006f30f9    90
                         nop                                                                     // 0x006f30fa    90
                         nop                                                                     // 0x006f30fb    90
                         nop                                                                     // 0x006f30fc    90
                         nop                                                                     // 0x006f30fd    90
                         nop                                                                     // 0x006f30fe    90
                         nop                                                                     // 0x006f30ff    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3100    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f3106    83ec08
                         push               ebx                                                  // 0x006f3109    53
                         push               ebp                                                  // 0x006f310a    55
                         push               esi                                                  // 0x006f310b    56
                         push               edi                                                  // 0x006f310c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f310d    8d442410
                         push               eax                                                  // 0x006f3111    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3112    e8a93a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3117    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f311d    8d542410
                         push               edx                                                  // 0x006f3121    52
                         mov.s              edi, eax                                             // 0x006f3122    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3124    e8973a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3129    8b0d105cd900
                         mov.s              ebx, eax                                             // 0x006f312f    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f3131    8d442410
                         push               eax                                                  // 0x006f3135    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3136    e8853a0000
                         push               eax                                                  // 0x006f313b    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f313c    e8dfa00100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3141    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f3147    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f314a    8d542414
                         push               edx                                                  // 0x006f314e    52
                         mov.s              esi, eax                                             // 0x006f314f    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3151    e86a3a0000
                         mov.s              ebp, eax                                             // 0x006f3156    8be8
                         mov                eax, dword ptr [esi]                                 // 0x006f3158    8b06
                         mov.s              ecx, esi                                             // 0x006f315a    8bce
                         call               dword ptr [eax + 0x1b8]                              // 0x006f315c    ff90b8010000
                         test               eax, eax                                             // 0x006f3162    85c0
                         {disp8} jne        _jmp_addr_0x006f3173                                 // 0x006f3164    750d
                         push               0x00c0cdc0                                           // 0x006f3166    68c0cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f316b    e840310000
                         add                esp, 0x04                                            // 0x006f3170    83c404
_jmp_addr_0x006f3173:    mov                edx, dword ptr [esi]                                 // 0x006f3173    8b16
                         mov.s              ecx, esi                                             // 0x006f3175    8bce
                         call               dword ptr [edx + 0x1b8]                              // 0x006f3177    ff92b8010000
                         mov                eax, dword ptr [esi]                                 // 0x006f317d    8b06
                         mov.s              ecx, esi                                             // 0x006f317f    8bce
                         call               dword ptr [eax + 0x1b8]                              // 0x006f3181    ff90b8010000
                         test               eax, eax                                             // 0x006f3187    85c0
                         {disp8} je         _jmp_addr_0x006f31ba                                 // 0x006f3189    742f
                         push               edi                                                  // 0x006f318b    57
                         push               ebx                                                  // 0x006f318c    53
                         push               ebp                                                  // 0x006f318d    55
                         mov.s              ecx, esi                                             // 0x006f318e    8bce
                         call               _jmp_addr_0x00740b40                                 // 0x006f3190    e8abd90400
                         test               eax, eax                                             // 0x006f3195    85c0
                         {disp8} je         _jmp_addr_0x006f31ba                                 // 0x006f3197    7421
                         push               0x0                                                  // 0x006f3199    6a00
                         push               eax                                                  // 0x006f319b    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f319c    e84f9f0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f31a1    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f31a7    83c408
                         push               0x4                                                  // 0x006f31aa    6a04
                         push               eax                                                  // 0x006f31ac    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f31ad    e8ee390000
                         pop                edi                                                  // 0x006f31b2    5f
                         pop                esi                                                  // 0x006f31b3    5e
                         pop                ebp                                                  // 0x006f31b4    5d
                         pop                ebx                                                  // 0x006f31b5    5b
                         add                esp, 0x08                                            // 0x006f31b6    83c408
                         ret                                                                     // 0x006f31b9    c3
_jmp_addr_0x006f31ba:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f31ba    8b0d105cd900
                         push               0x4                                                  // 0x006f31c0    6a04
                         push               0x0                                                  // 0x006f31c2    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f31c4    e8d7390000
                         pop                edi                                                  // 0x006f31c9    5f
                         pop                esi                                                  // 0x006f31ca    5e
                         pop                ebp                                                  // 0x006f31cb    5d
                         pop                ebx                                                  // 0x006f31cc    5b
                         add                esp, 0x08                                            // 0x006f31cd    83c408
                         ret                                                                     // 0x006f31d0    c3
                         nop                                                                     // 0x006f31d1    90
                         nop                                                                     // 0x006f31d2    90
                         nop                                                                     // 0x006f31d3    90
                         nop                                                                     // 0x006f31d4    90
                         nop                                                                     // 0x006f31d5    90
                         nop                                                                     // 0x006f31d6    90
                         nop                                                                     // 0x006f31d7    90
                         nop                                                                     // 0x006f31d8    90
                         nop                                                                     // 0x006f31d9    90
                         nop                                                                     // 0x006f31da    90
                         nop                                                                     // 0x006f31db    90
                         nop                                                                     // 0x006f31dc    90
                         nop                                                                     // 0x006f31dd    90
                         nop                                                                     // 0x006f31de    90
                         nop                                                                     // 0x006f31df    90
                         sub                esp, 0x20                                            // 0x006f31e0    83ec20
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f31e3    8b0d105cd900
                         push               ebx                                                  // 0x006f31e9    53
                         push               ebp                                                  // 0x006f31ea    55
                         push               esi                                                  // 0x006f31eb    56
                         push               edi                                                  // 0x006f31ec    57
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f31ed    8d44241c
                         push               eax                                                  // 0x006f31f1    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f31f2    e8c9390000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f31f7    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f31fd    8d54241c
                         push               edx                                                  // 0x006f3201    52
                         mov.s              edi, eax                                             // 0x006f3202    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3204    e8b7390000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f3209    8b35105cd900
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f320f    89442418
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                          // 0x006f3213    8d44241c
                         push               eax                                                  // 0x006f3217    50
                         mov.s              ecx, esi                                             // 0x006f3218    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f321a    e8a1390000
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                          // 0x006f321f    8d4c241c
                         push               ecx                                                  // 0x006f3223    51
                         mov.s              ecx, esi                                             // 0x006f3224    8bce
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f3226    89442418
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f322a    e891390000
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f322f    8d542410
                         push               edx                                                  // 0x006f3233    52
                         mov.s              ecx, esi                                             // 0x006f3234    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x006f3236    89442420
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f323a    e881390000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f323f    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f3245    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x20]                          // 0x006f3249    8d442420
                         push               eax                                                  // 0x006f324d    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f324e    e86d390000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3253    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x20]                          // 0x006f3259    8d542420
                         push               edx                                                  // 0x006f325d    52
                         mov.s              ebx, eax                                             // 0x006f325e    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3260    e85b390000
                         {disp8} fld        dword ptr [esp + 0x18]                               // 0x006f3265    d9442418
                         mov.s              ebp, eax                                             // 0x006f3269    8be8
                         {disp32} mov       eax, dword ptr [_game]                               // 0x006f326b    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]                    // 0x006f3270    8b8890002500
                         {disp8} fstp       dword ptr [ecx + 0x20]                               // 0x006f3276    d95920
                         {disp32} mov       edx, dword ptr [_game]                               // 0x006f3279    8b155c19d000
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x006f327f    d9442410
                         {disp32} mov       esi, dword ptr [edx + 0x00250090]                    // 0x006f3283    8bb290002500
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f3289    d80d00c48a00
                         add                esi, 0x14                                            // 0x006f328f    83c614
                         call               _jmp_addr_0x007a1400                                 // 0x006f3292    e869e10a00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x006f3297    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f329b    d80d00c48a00
                         mov                dword ptr [esi], eax                                 // 0x006f32a1    8906
                         call               _jmp_addr_0x007a1400                                 // 0x006f32a3    e858e10a00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x006f32a8    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x006f32ac    d80d08c48a00
                         {disp8} mov        dword ptr [esi + 0x04], eax                          // 0x006f32b2    894604
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x006f32b5    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f32bb    e840e10a00
                         {disp8} fld        dword ptr [esp + 0x14]                               // 0x006f32c0    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x006f32c4    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                          // 0x006f32ca    89442424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x006f32ce    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f32d4    e827e10a00
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x006f32d9    8d4c2424
                         {disp8} mov        dword ptr [esp + 0x28], eax                          // 0x006f32dd    89442428
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000                   // 0x006f32e1    c744242c00000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x006f32e9    e8a2fd1000
                         {disp8} fsubr      dword ptr [esp + 0x1c]                               // 0x006f32ee    d86c241c
                         test               edi, edi                                             // 0x006f32f2    85ff
                         push               ebx                                                  // 0x006f32f4    53
                         {disp8} fstp       dword ptr [esi + 0x08]                               // 0x006f32f5    d95e08
                         push               ebp                                                  // 0x006f32f8    55
                         {disp8} je         _jmp_addr_0x006f3302                                 // 0x006f32f9    7407
                         push               0x006f7a20                                           // 0x006f32fb    68207a6f00
                         {disp8} jmp        _jmp_addr_0x006f3307                                 // 0x006f3300    eb05
_jmp_addr_0x006f3302:    push               0x006f7070                                           // 0x006f3302    6870706f00
_jmp_addr_0x006f3307:    call               _jmp_addr_0x00646980                                 // 0x006f3307    e87436f5ff
                         add                esp, 0x0c                                            // 0x006f330c    83c40c
                         test               eax, eax                                             // 0x006f330f    85c0
                         pop                edi                                                  // 0x006f3311    5f
                         pop                esi                                                  // 0x006f3312    5e
                         pop                ebp                                                  // 0x006f3313    5d
                         pop                ebx                                                  // 0x006f3314    5b
                         {disp8} je         _jmp_addr_0x006f3334                                 // 0x006f3315    741d
                         push               0x0                                                  // 0x006f3317    6a00
                         push               eax                                                  // 0x006f3319    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f331a    e8d19d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f331f    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f3325    83c408
                         push               0x4                                                  // 0x006f3328    6a04
                         push               eax                                                  // 0x006f332a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f332b    e870380000
                         add                esp, 0x20                                            // 0x006f3330    83c420
                         ret                                                                     // 0x006f3333    c3
_jmp_addr_0x006f3334:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3334    8b0d105cd900
                         push               0x4                                                  // 0x006f333a    6a04
                         push               0x0                                                  // 0x006f333c    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f333e    e85d380000
                         add                esp, 0x20                                            // 0x006f3343    83c420
                         ret                                                                     // 0x006f3346    c3
                         nop                                                                     // 0x006f3347    90
                         nop                                                                     // 0x006f3348    90
                         nop                                                                     // 0x006f3349    90
                         nop                                                                     // 0x006f334a    90
                         nop                                                                     // 0x006f334b    90
                         nop                                                                     // 0x006f334c    90
                         nop                                                                     // 0x006f334d    90
                         nop                                                                     // 0x006f334e    90
                         nop                                                                     // 0x006f334f    90
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f3350    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ             // 0x006f3356    e8f524e6ff
                         mov.s              ecx, eax                                             // 0x006f335b    8bc8
                         call               _jmp_addr_0x005d0730                                 // 0x006f335d    e8ced3edff
                         test               eax, eax                                             // 0x006f3362    85c0
                         {disp8} je         _jmp_addr_0x006f3380                                 // 0x006f3364    741a
                         push               0x0                                                  // 0x006f3366    6a00
                         push               eax                                                  // 0x006f3368    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f3369    e8829d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f336e    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f3374    83c408
                         push               0x4                                                  // 0x006f3377    6a04
                         push               eax                                                  // 0x006f3379    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f337a    e821380000
                         ret                                                                     // 0x006f337f    c3
_jmp_addr_0x006f3380:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3380    8b0d105cd900
                         push               0x4                                                  // 0x006f3386    6a04
                         push               0x0                                                  // 0x006f3388    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f338a    e811380000
                         ret                                                                     // 0x006f338f    c3
                         push               ecx                                                  // 0x006f3390    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3391    8b0d105cd900
                         push               esi                                                  // 0x006f3397    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f3398    8d442404
                         push               eax                                                  // 0x006f339c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f339d    e81e380000
                         push               eax                                                  // 0x006f33a2    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f33a3    e8789e0100
                         mov.s              esi, eax                                             // 0x006f33a8    8bf0
                         add                esp, 0x04                                            // 0x006f33aa    83c404
                         test               esi, esi                                             // 0x006f33ad    85f6
                         {disp8} je         _jmp_addr_0x006f33e5                                 // 0x006f33af    7434
                         mov                edx, dword ptr [esi]                                 // 0x006f33b1    8b16
                         mov.s              ecx, esi                                             // 0x006f33b3    8bce
                         call               dword ptr [edx + 0x1e0]                              // 0x006f33b5    ff92e0010000
                         test               eax, eax                                             // 0x006f33bb    85c0
                         {disp8} je         _jmp_addr_0x006f33e5                                 // 0x006f33bd    7426
                         {disp32} mov       esi, dword ptr [esi + 0x000000cc]                    // 0x006f33bf    8bb6cc000000
                         test               esi, esi                                             // 0x006f33c5    85f6
                         {disp8} je         _jmp_addr_0x006f33e5                                 // 0x006f33c7    741c
                         push               0x0                                                  // 0x006f33c9    6a00
                         push               esi                                                  // 0x006f33cb    56
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f33cc    e81f9d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f33d1    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f33d7    83c408
                         push               0x4                                                  // 0x006f33da    6a04
                         push               eax                                                  // 0x006f33dc    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f33dd    e8be370000
                         pop                esi                                                  // 0x006f33e2    5e
                         pop                ecx                                                  // 0x006f33e3    59
                         ret                                                                     // 0x006f33e4    c3
_jmp_addr_0x006f33e5:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f33e5    8b0d105cd900
                         push               0x4                                                  // 0x006f33eb    6a04
                         push               0x0                                                  // 0x006f33ed    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f33ef    e8ac370000
                         pop                esi                                                  // 0x006f33f4    5e
                         pop                ecx                                                  // 0x006f33f5    59
                         ret                                                                     // 0x006f33f6    c3
                         nop                                                                     // 0x006f33f7    90
                         nop                                                                     // 0x006f33f8    90
                         nop                                                                     // 0x006f33f9    90
                         nop                                                                     // 0x006f33fa    90
                         nop                                                                     // 0x006f33fb    90
                         nop                                                                     // 0x006f33fc    90
                         nop                                                                     // 0x006f33fd    90
                         nop                                                                     // 0x006f33fe    90
                         nop                                                                     // 0x006f33ff    90
                         push               esi                                                  // 0x006f3400    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                          // 0x006f3401    8b742408
                         mov                eax, dword ptr [esi]                                 // 0x006f3405    8b06
                         mov.s              ecx, esi                                             // 0x006f3407    8bce
                         call               dword ptr [eax + 0x454]                              // 0x006f3409    ff9054040000
                         test               eax, eax                                             // 0x006f340f    85c0
                         {disp8} jne        _jmp_addr_0x006f3422                                 // 0x006f3411    750f
                         mov                edx, dword ptr [esi]                                 // 0x006f3413    8b16
                         push               eax                                                  // 0x006f3415    50
                         mov.s              ecx, esi                                             // 0x006f3416    8bce
                         call               dword ptr [edx + 0x2c8]                              // 0x006f3418    ff92c8020000
                         test               eax, eax                                             // 0x006f341e    85c0
                         {disp8} je         _jmp_addr_0x006f3445                                 // 0x006f3420    7423
_jmp_addr_0x006f3422:    mov                eax, dword ptr [esi]                                 // 0x006f3422    8b06
                         mov.s              ecx, esi                                             // 0x006f3424    8bce
                         call               dword ptr [eax + 0x3c4]                              // 0x006f3426    ff90c4030000
                         test               eax, eax                                             // 0x006f342c    85c0
                         {disp8} je         _jmp_addr_0x006f3445                                 // 0x006f342e    7415
                         mov                edx, dword ptr [esi]                                 // 0x006f3430    8b16
                         mov.s              ecx, esi                                             // 0x006f3432    8bce
                         call               dword ptr [edx + 0xaf4]                              // 0x006f3434    ff92f40a0000
                         test               eax, eax                                             // 0x006f343a    85c0
                         {disp8} je         _jmp_addr_0x006f3445                                 // 0x006f343c    7407
                         mov                eax, 0x00000001                                      // 0x006f343e    b801000000
                         pop                esi                                                  // 0x006f3443    5e
                         ret                                                                     // 0x006f3444    c3
_jmp_addr_0x006f3445:    xor.s              eax, eax                                             // 0x006f3445    33c0
                         pop                esi                                                  // 0x006f3447    5e
                         ret                                                                     // 0x006f3448    c3
                         nop                                                                     // 0x006f3449    90
                         nop                                                                     // 0x006f344a    90
                         nop                                                                     // 0x006f344b    90
                         nop                                                                     // 0x006f344c    90
                         nop                                                                     // 0x006f344d    90
                         nop                                                                     // 0x006f344e    90
                         nop                                                                     // 0x006f344f    90
                         sub                esp, 0x1c                                            // 0x006f3450    83ec1c
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3453    8b0d105cd900
                         push               esi                                                  // 0x006f3459    56
                         push               edi                                                  // 0x006f345a    57
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f345b    8d442414
                         push               eax                                                  // 0x006f345f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3460    e85b370000
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f3465    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                          // 0x006f346b    8d4c2414
                         mov.s              edi, eax                                             // 0x006f346f    8bf8
                         push               ecx                                                  // 0x006f3471    51
                         mov.s              ecx, esi                                             // 0x006f3472    8bce
                         {disp8} mov        dword ptr [esp + 0x14], edi                          // 0x006f3474    897c2414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3478    e843370000
                         {disp8} lea        edx, dword ptr [esp + 0x14]                          // 0x006f347d    8d542414
                         push               edx                                                  // 0x006f3481    52
                         mov.s              ecx, esi                                             // 0x006f3482    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f3484    89442410
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3488    e833370000
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f348d    89442414
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f3491    8d442408
                         push               eax                                                  // 0x006f3495    50
                         mov.s              ecx, esi                                             // 0x006f3496    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3498    e823370000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f349d    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00250090]                    // 0x006f34a3    8b9190002500
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f34a9    89442408
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f34ad    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f34b1    d80d00c48a00
                         mov.s              eax, edi                                             // 0x006f34b7    8bc7
                         {disp8} mov        dword ptr [edx + 0x20], eax                          // 0x006f34b9    894220
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f34bc    8b0d5c19d000
                         {disp32} mov       esi, dword ptr [ecx + 0x00250090]                    // 0x006f34c2    8bb190002500
                         add                esi, 0x14                                            // 0x006f34c8    83c614
                         call               _jmp_addr_0x007a1400                                 // 0x006f34cb    e830df0a00
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x006f34d0    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f34d4    d80d00c48a00
                         mov                dword ptr [esi], eax                                 // 0x006f34da    8906
                         call               _jmp_addr_0x007a1400                                 // 0x006f34dc    e81fdf0a00
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f34e1    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x006f34e5    d80d08c48a00
                         {disp8} mov        dword ptr [esi + 0x04], eax                          // 0x006f34eb    894604
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x006f34ee    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f34f4    e807df0a00
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x006f34f9    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3408]                     // 0x006f34fd    d80d08c48a00
                         {disp8} mov        dword ptr [esp + 0x18], eax                          // 0x006f3503    89442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]                     // 0x006f3507    d80d04c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f350d    e8eede0a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x006f3512    8d4c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x006f3516    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x006f351a    c744242000000000
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z     // 0x006f3522    e869fb1000
                         {disp8} fsubr      dword ptr [esp + 0x14]                               // 0x006f3527    d86c2414
                         push               edi                                                  // 0x006f352b    57
                         push               0x0                                                  // 0x006f352c    6a00
                         {disp8} fstp       dword ptr [esi + 0x08]                               // 0x006f352e    d95e08
                         {disp32} mov       edx, dword ptr [_game]                               // 0x006f3531    8b155c19d000
                         {disp32} mov       eax, dword ptr [edx + 0x00250090]                    // 0x006f3537    8b8290002500
                         push               0x0                                                  // 0x006f353d    6a00
                         add                eax, 0x14                                            // 0x006f353f    83c014
                         push               0x006f3400                                           // 0x006f3542    6800346f00
                         push               eax                                                  // 0x006f3547    50
                         call               _jmp_addr_0x006f7280                                 // 0x006f3548    e8333d0000
                         add                esp, 0x14                                            // 0x006f354d    83c414
                         test               eax, eax                                             // 0x006f3550    85c0
                         pop                edi                                                  // 0x006f3552    5f
                         pop                esi                                                  // 0x006f3553    5e
                         {disp8} je         _jmp_addr_0x006f3573                                 // 0x006f3554    741d
                         push               0x0                                                  // 0x006f3556    6a00
                         push               eax                                                  // 0x006f3558    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f3559    e8929b0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f355e    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f3564    83c408
                         push               0x4                                                  // 0x006f3567    6a04
                         push               eax                                                  // 0x006f3569    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f356a    e831360000
                         add                esp, 0x1c                                            // 0x006f356f    83c41c
                         ret                                                                     // 0x006f3572    c3
_jmp_addr_0x006f3573:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3573    8b0d105cd900
                         push               0x4                                                  // 0x006f3579    6a04
                         push               0x0                                                  // 0x006f357b    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f357d    e81e360000
                         add                esp, 0x1c                                            // 0x006f3582    83c41c
                         ret                                                                     // 0x006f3585    c3
                         nop                                                                     // 0x006f3586    90
                         nop                                                                     // 0x006f3587    90
                         nop                                                                     // 0x006f3588    90
                         nop                                                                     // 0x006f3589    90
                         nop                                                                     // 0x006f358a    90
                         nop                                                                     // 0x006f358b    90
                         nop                                                                     // 0x006f358c    90
                         nop                                                                     // 0x006f358d    90
                         nop                                                                     // 0x006f358e    90
                         nop                                                                     // 0x006f358f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3590    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f3596    83ec08
                         push               esi                                                  // 0x006f3599    56
                         push               edi                                                  // 0x006f359a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f359b    8d442408
                         push               eax                                                  // 0x006f359f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f35a0    e81b360000
                         push               eax                                                  // 0x006f35a5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f35a6    e8759c0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f35ab    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f35b1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f35b4    8d54240c
                         push               edx                                                  // 0x006f35b8    52
                         mov.s              esi, eax                                             // 0x006f35b9    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f35bb    e800360000
                         test               esi, esi                                             // 0x006f35c0    85f6
                         mov.s              edi, eax                                             // 0x006f35c2    8bf8
                         {disp8} je         _jmp_addr_0x006f35d4                                 // 0x006f35c4    740e
                         mov                eax, dword ptr [esi]                                 // 0x006f35c6    8b06
                         mov.s              ecx, esi                                             // 0x006f35c8    8bce
                         call               dword ptr [eax + 0x220]                              // 0x006f35ca    ff9020020000
                         test               eax, eax                                             // 0x006f35d0    85c0
                         {disp8} jne        _jmp_addr_0x006f35e1                                 // 0x006f35d2    750d
_jmp_addr_0x006f35d4:    push               0x00c0cdd0                                           // 0x006f35d4    68d0cdc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f35d9    e8d22c0000
                         add                esp, 0x04                                            // 0x006f35de    83c404
_jmp_addr_0x006f35e1:    test               esi, esi                                             // 0x006f35e1    85f6
                         {disp8} je         _jmp_addr_0x006f3636                                 // 0x006f35e3    7451
                         mov                edx, dword ptr [esi]                                 // 0x006f35e5    8b16
                         mov.s              ecx, esi                                             // 0x006f35e7    8bce
                         call               dword ptr [edx + 0x220]                              // 0x006f35e9    ff9220020000
                         mov                eax, dword ptr [esi]                                 // 0x006f35ef    8b06
                         mov.s              ecx, esi                                             // 0x006f35f1    8bce
                         call               dword ptr [eax + 0x220]                              // 0x006f35f3    ff9020020000
                         test               eax, eax                                             // 0x006f35f9    85c0
                         {disp8} je         _jmp_addr_0x006f3636                                 // 0x006f35fb    7439
                         mov                edx, dword ptr [esi]                                 // 0x006f35fd    8b16
                         mov.s              ecx, esi                                             // 0x006f35ff    8bce
                         call               dword ptr [edx + 0x114]                              // 0x006f3601    ff9214010000
                         test               eax, eax                                             // 0x006f3607    85c0
                         {disp8} je         _jmp_addr_0x006f3636                                 // 0x006f3609    742b
                         push               edi                                                  // 0x006f360b    57
                         mov.s              ecx, eax                                             // 0x006f360c    8bc8
                         call               _jmp_addr_0x00463ad0                                 // 0x006f360e    e8bd04d7ff
                         test               eax, eax                                             // 0x006f3613    85c0
                         {disp8} je         _jmp_addr_0x006f3636                                 // 0x006f3615    741f
                         push               0x0                                                  // 0x006f3617    6a00
                         push               eax                                                  // 0x006f3619    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f361a    e8d19a0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f361f    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f3625    83c408
                         push               0x4                                                  // 0x006f3628    6a04
                         push               eax                                                  // 0x006f362a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f362b    e870350000
                         pop                edi                                                  // 0x006f3630    5f
                         pop                esi                                                  // 0x006f3631    5e
                         add                esp, 0x08                                            // 0x006f3632    83c408
                         ret                                                                     // 0x006f3635    c3
_jmp_addr_0x006f3636:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3636    8b0d105cd900
                         push               0x4                                                  // 0x006f363c    6a04
                         push               0x0                                                  // 0x006f363e    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3640    e85b350000
                         pop                edi                                                  // 0x006f3645    5f
                         pop                esi                                                  // 0x006f3646    5e
                         add                esp, 0x08                                            // 0x006f3647    83c408
                         ret                                                                     // 0x006f364a    c3
                         nop                                                                     // 0x006f364b    90
                         nop                                                                     // 0x006f364c    90
                         nop                                                                     // 0x006f364d    90
                         nop                                                                     // 0x006f364e    90
                         nop                                                                     // 0x006f364f    90
_globl_ct_0x006f3650:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                         // 0x006f3650    8a0d34c9fa00
                         mov                al, 0x01                                             // 0x006f3656    b001
                         test               al, cl                                               // 0x006f3658    84c8
                         {disp8} jne        _jmp_addr_0x006f3664                                 // 0x006f365a    7508
                         or.s               cl, al                                               // 0x006f365c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                         // 0x006f365e    880d34c9fa00
_jmp_addr_0x006f3664:    {disp32} jmp       _jmp_addr_0x006f3670                                 // 0x006f3664    e907000000
                         nop                                                                     // 0x006f3669    90
                         nop                                                                     // 0x006f366a    90
                         nop                                                                     // 0x006f366b    90
                         nop                                                                     // 0x006f366c    90
                         nop                                                                     // 0x006f366d    90
                         nop                                                                     // 0x006f366e    90
                         nop                                                                     // 0x006f366f    90
_jmp_addr_0x006f3670:    push               0x00407870                                           // 0x006f3670    6870784000
                         call               _atexit                                              // 0x006f3675    e817210d00
                         pop                ecx                                                  // 0x006f367a    59
                         ret                                                                     // 0x006f367b    c3
                         nop                                                                     // 0x006f367c    90
                         nop                                                                     // 0x006f367d    90
                         nop                                                                     // 0x006f367e    90
                         nop                                                                     // 0x006f367f    90
_globl_ct_0x006f3680:    {disp32} jmp       _jmp_addr_0x006f3690                                 // 0x006f3680    e90b000000
                         nop                                                                     // 0x006f3685    90
                         nop                                                                     // 0x006f3686    90
                         nop                                                                     // 0x006f3687    90
                         nop                                                                     // 0x006f3688    90
                         nop                                                                     // 0x006f3689    90
                         nop                                                                     // 0x006f368a    90
                         nop                                                                     // 0x006f368b    90
                         nop                                                                     // 0x006f368c    90
                         nop                                                                     // 0x006f368d    90
                         nop                                                                     // 0x006f368e    90
                         nop                                                                     // 0x006f368f    90
_jmp_addr_0x006f3690:    {disp32} mov       dword ptr [data_bytes + 0x3d002c], 0xffffffff        // 0x006f3690    c7052c60d900ffffffff
                         ret                                                                     // 0x006f369a    c3
                         nop                                                                     // 0x006f369b    90
                         nop                                                                     // 0x006f369c    90
                         nop                                                                     // 0x006f369d    90
                         nop                                                                     // 0x006f369e    90
                         nop                                                                     // 0x006f369f    90
_globl_ct_0x006f36a0:    {disp32} jmp       _jmp_addr_0x006f36b0                                 // 0x006f36a0    e90b000000
                         nop                                                                     // 0x006f36a5    90
                         nop                                                                     // 0x006f36a6    90
                         nop                                                                     // 0x006f36a7    90
                         nop                                                                     // 0x006f36a8    90
                         nop                                                                     // 0x006f36a9    90
                         nop                                                                     // 0x006f36aa    90
                         nop                                                                     // 0x006f36ab    90
                         nop                                                                     // 0x006f36ac    90
                         nop                                                                     // 0x006f36ad    90
                         nop                                                                     // 0x006f36ae    90
                         nop                                                                     // 0x006f36af    90
_jmp_addr_0x006f36b0:    {disp32} fld       dword ptr [rdata_bytes + 0x991c0]                    // 0x006f36b0    d905c0219400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x991bc]                    // 0x006f36b6    d80dbc219400
                         {disp32} fstp      dword ptr [data_bytes + 0x3cfe4c]                    // 0x006f36bc    d91d4c5ed900
                         ret                                                                     // 0x006f36c2    c3
                         nop                                                                     // 0x006f36c3    90
                         nop                                                                     // 0x006f36c4    90
                         nop                                                                     // 0x006f36c5    90
                         nop                                                                     // 0x006f36c6    90
                         nop                                                                     // 0x006f36c7    90
                         nop                                                                     // 0x006f36c8    90
                         nop                                                                     // 0x006f36c9    90
                         nop                                                                     // 0x006f36ca    90
                         nop                                                                     // 0x006f36cb    90
                         nop                                                                     // 0x006f36cc    90
                         nop                                                                     // 0x006f36cd    90
                         nop                                                                     // 0x006f36ce    90
                         nop                                                                     // 0x006f36cf    90
_globl_ct_0x006f36d0:    call               _jmp_addr_0x006f36e0                                 // 0x006f36d0    e80b000000
                         {disp32} jmp       _jmp_addr_0x006f3730                                 // 0x006f36d5    e956000000
                         nop                                                                     // 0x006f36da    90
                         nop                                                                     // 0x006f36db    90
                         nop                                                                     // 0x006f36dc    90
                         nop                                                                     // 0x006f36dd    90
                         nop                                                                     // 0x006f36de    90
                         nop                                                                     // 0x006f36df    90
_jmp_addr_0x006f36e0:    mov                eax, 0x00d95e50                                      // 0x006f36e0    b8505ed900
                         mov                ecx, 0x00000011                                      // 0x006f36e5    b911000000
                         xor.s              edx, edx                                             // 0x006f36ea    33d2
.att_syntax
_jmp_addr_0x006f36ec:    movl               $??_7Base@@6B@, (%eax)                        // 0x006f36ec    c700449a8a00
.intel_syntax noprefix
                         {disp8} mov        dword ptr [eax + 0x04], edx                          // 0x006f36f2    895004
                         {disp8} mov        dword ptr [eax + 0x08], edx                          // 0x006f36f5    895008
                         mov                dword ptr [eax], 0x009421c8                          // 0x006f36f8    c700c8219400
                         add                eax, 0x1c                                            // 0x006f36fe    83c01c
                         dec                ecx                                                  // 0x006f3701    49
                         {disp8} jne        _jmp_addr_0x006f36ec                                 // 0x006f3702    75e8
                         ret                                                                     // 0x006f3704    c3
                         nop                                                                     // 0x006f3705    90
                         nop                                                                     // 0x006f3706    90
                         nop                                                                     // 0x006f3707    90
                         nop                                                                     // 0x006f3708    90
                         nop                                                                     // 0x006f3709    90
                         nop                                                                     // 0x006f370a    90
                         nop                                                                     // 0x006f370b    90
                         nop                                                                     // 0x006f370c    90
                         nop                                                                     // 0x006f370d    90
                         nop                                                                     // 0x006f370e    90
                         nop                                                                     // 0x006f370f    90
?GetBaseInfo@GScriptOpposingCreature@@UAEPAVGBaseInfo@@AAI@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x006f3710    8b442404
                         mov                dword ptr [eax], 0x00000011                          // 0x006f3714    c70011000000
                         mov                eax, 0x00d95e50                                      // 0x006f371a    b8505ed900
                         ret                0x0004                                               // 0x006f371f    c20400
                         nop                                                                     // 0x006f3722    90
                         nop                                                                     // 0x006f3723    90
                         nop                                                                     // 0x006f3724    90
                         nop                                                                     // 0x006f3725    90
                         nop                                                                     // 0x006f3726    90
                         nop                                                                     // 0x006f3727    90
                         nop                                                                     // 0x006f3728    90
                         nop                                                                     // 0x006f3729    90
                         nop                                                                     // 0x006f372a    90
                         nop                                                                     // 0x006f372b    90
                         nop                                                                     // 0x006f372c    90
                         nop                                                                     // 0x006f372d    90
                         nop                                                                     // 0x006f372e    90
                         nop                                                                     // 0x006f372f    90
_jmp_addr_0x006f3730:    push               0x006f3740                                           // 0x006f3730    6840376f00
                         call               _atexit                                              // 0x006f3735    e857200d00
                         pop                ecx                                                  // 0x006f373a    59
                         ret                                                                     // 0x006f373b    c3
                         nop                                                                     // 0x006f373c    90
                         nop                                                                     // 0x006f373d    90
                         nop                                                                     // 0x006f373e    90
                         nop                                                                     // 0x006f373f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3cfe48]                 // 0x006f3740    8a0d485ed900
                         mov                al, 0x01                                             // 0x006f3746    b001
                         test               al, cl                                               // 0x006f3748    84c8
                         {disp8} jne        _jmp_addr_0x006f376f                                 // 0x006f374a    7523
                         push               esi                                                  // 0x006f374c    56
                         or.s               cl, al                                               // 0x006f374d    0ac8
                         push               edi                                                  // 0x006f374f    57
                         {disp32} mov       byte ptr [data_bytes + 0x3cfe48], cl                 // 0x006f3750    880d485ed900
                         mov                esi, 0x00d9602c                                      // 0x006f3756    be2c60d900
                         mov                edi, 0x00000011                                      // 0x006f375b    bf11000000
_jmp_addr_0x006f3760:    sub                esi, 0x1c                                            // 0x006f3760    83ee1c
                         mov.s              ecx, esi                                             // 0x006f3763    8bce
                         call               _jmp_addr_0x00436960                                 // 0x006f3765    e8f631d4ff
                         dec                edi                                                  // 0x006f376a    4f
                         {disp8} jne        _jmp_addr_0x006f3760                                 // 0x006f376b    75f3
                         pop                edi                                                  // 0x006f376d    5f
                         pop                esi                                                  // 0x006f376e    5e
_jmp_addr_0x006f376f:    ret                                                                     // 0x006f376f    c3
??_GGScriptOpposingCreature@@UAEPAXI@Z:
                         push               esi                                                  // 0x006f3770    56
                         mov.s              esi, ecx                                             // 0x006f3771    8bf1
                         call               _jmp_addr_0x00436960                                 // 0x006f3773    e8e831d4ff
                         test               byte ptr [esp + 0x08], 0x01                          // 0x006f3778    f644240801
                         {disp8} je         _jmp_addr_0x006f378a                                 // 0x006f377d    740b
                         push               0x1c                                                 // 0x006f377f    6a1c
                         push               esi                                                  // 0x006f3781    56
                         call               ??3Base@@SAXPAXK@Z                                 // 0x006f3782    e8e931d4ff
                         add                esp, 0x08                                            // 0x006f3787    83c408
_jmp_addr_0x006f378a:    mov.s              eax, esi                                             // 0x006f378a    8bc6
                         pop                esi                                                  // 0x006f378c    5e
                         ret                0x0004                                               // 0x006f378d    c20400
                         sub                esp, 0x14                                            // 0x006f3790    83ec14
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3793    8b0d105cd900
                         push               ebx                                                  // 0x006f3799    53
                         push               esi                                                  // 0x006f379a    56
                         push               edi                                                  // 0x006f379b    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f379c    8d442410
                         push               eax                                                  // 0x006f37a0    50
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x006f37a1    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000                   // 0x006f37a9    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x006f37b1    c744242000000000
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f37b9    e802340000
                         mov.s              ebx, eax                                             // 0x006f37be    8bd8
                         cmp                ebx, 0x11                                            // 0x006f37c0    83fb11
                         {disp8} jl         _jmp_addr_0x006f37d2                                 // 0x006f37c3    7c0d
                         push               0x00c0ce38                                           // 0x006f37c5    6838cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f37ca    e8e12a0000
                         add                esp, 0x04                                            // 0x006f37cf    83c404
_jmp_addr_0x006f37d2:    {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f37d2    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x006f37d8    8d4c2410
                         push               ecx                                                  // 0x006f37dc    51
                         mov.s              ecx, esi                                             // 0x006f37dd    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f37df    e8dc330000
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f37e4    8d54240c
                         push               edx                                                  // 0x006f37e8    52
                         mov.s              ecx, esi                                             // 0x006f37e9    8bce
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f37eb    89442414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f37ef    e8cc330000
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f37f4    8d44240c
                         push               eax                                                  // 0x006f37f8    50
                         mov.s              ecx, esi                                             // 0x006f37f9    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f37fb    e8c0330000
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f3800    8944240c
                         {disp8} fld        dword ptr [esp + 0x0c]                               // 0x006f3804    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f3808    d80d00c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f380e    e8eddb0a00
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x006f3813    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f3817    d80d00c48a00
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f381d    89442414
                         call               _jmp_addr_0x007a1400                                 // 0x006f3821    e8dadb0a00
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3826    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f382c    8d542410
                         push               edx                                                  // 0x006f3830    52
                         {disp8} mov        dword ptr [esp + 0x1c], eax                          // 0x006f3831    8944241c
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000                   // 0x006f3835    c744242000000000
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f383d    e87e330000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3842    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f3848    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f384a    8d442410
                         push               eax                                                  // 0x006f384e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f384f    e86c330000
                         push               eax                                                  // 0x006f3854    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3855    e8c6990100
                         add                esp, 0x04                                            // 0x006f385a    83c404
                         test               eax, eax                                             // 0x006f385d    85c0
                         {disp8} jne        _jmp_addr_0x006f3868                                 // 0x006f385f    7507
                         push               0x00c0ce20                                           // 0x006f3861    6820cec000
                         {disp8} jmp        _jmp_addr_0x006f38cb                                 // 0x006f3866    eb63
_jmp_addr_0x006f3868:    push               0x0                                                  // 0x006f3868    6a00
                         push               0x009c8060                                           // 0x006f386a    6860809c00
                         push               0x009c7f30                                           // 0x006f386f    68307f9c00
                         push               0x0                                                  // 0x006f3874    6a00
                         push               eax                                                  // 0x006f3876    50
                         call               ___RTDynamicCast                                     // 0x006f3877    e89d210d00
                         mov.s              esi, eax                                             // 0x006f387c    8bf0
                         add                esp, 0x14                                            // 0x006f387e    83c414
                         test               esi, esi                                             // 0x006f3881    85f6
                         {disp8} jne        _jmp_addr_0x006f3892                                 // 0x006f3883    750d
                         push               0x00c0ce20                                           // 0x006f3885    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f388a    e8212a0000
                         add                esp, 0x04                                            // 0x006f388f    83c404
_jmp_addr_0x006f3892:    push               ebx                                                  // 0x006f3892    53
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x006f3893    8d4c2418
                         push               ecx                                                  // 0x006f3897    51
                         push               edi                                                  // 0x006f3898    57
                         push               esi                                                  // 0x006f3899    56
                         call               _jmp_addr_0x004f6610                                 // 0x006f389a    e8712de0ff
                         add                esp, 0x10                                            // 0x006f389f    83c410
                         test               eax, eax                                             // 0x006f38a2    85c0
                         {disp8} je         _jmp_addr_0x006f38c6                                 // 0x006f38a4    7420
                         push               0x1                                                  // 0x006f38a6    6a01
                         push               eax                                                  // 0x006f38a8    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f38a9    e842980100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f38ae    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f38b4    83c408
                         push               0x4                                                  // 0x006f38b7    6a04
                         push               eax                                                  // 0x006f38b9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f38ba    e8e1320000
                         pop                edi                                                  // 0x006f38bf    5f
                         pop                esi                                                  // 0x006f38c0    5e
                         pop                ebx                                                  // 0x006f38c1    5b
                         add                esp, 0x14                                            // 0x006f38c2    83c414
                         ret                                                                     // 0x006f38c5    c3
_jmp_addr_0x006f38c6:    push               0x00c0ce08                                           // 0x006f38c6    6808cec000
_jmp_addr_0x006f38cb:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f38cb    e8e0290000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f38d0    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f38d6    83c404
                         push               0x4                                                  // 0x006f38d9    6a04
                         push               0x0                                                  // 0x006f38db    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f38dd    e8be320000
                         pop                edi                                                  // 0x006f38e2    5f
                         pop                esi                                                  // 0x006f38e3    5e
                         pop                ebx                                                  // 0x006f38e4    5b
                         add                esp, 0x14                                            // 0x006f38e5    83c414
                         ret                                                                     // 0x006f38e8    c3
                         nop                                                                     // 0x006f38e9    90
                         nop                                                                     // 0x006f38ea    90
                         nop                                                                     // 0x006f38eb    90
                         nop                                                                     // 0x006f38ec    90
                         nop                                                                     // 0x006f38ed    90
                         nop                                                                     // 0x006f38ee    90
                         nop                                                                     // 0x006f38ef    90
                         push               ecx                                                  // 0x006f38f0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f38f1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f38f7    8d442400
                         push               eax                                                  // 0x006f38fb    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f38fc    e8bf320000
                         push               eax                                                  // 0x006f3901    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3902    e819990100
                         add                esp, 0x04                                            // 0x006f3907    83c404
                         test               eax, eax                                             // 0x006f390a    85c0
                         {disp8} jne        _jmp_addr_0x006f391d                                 // 0x006f390c    750f
                         push               0x00c0ce20                                           // 0x006f390e    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3913    e898290000
                         add                esp, 0x04                                            // 0x006f3918    83c404
                         pop                ecx                                                  // 0x006f391b    59
                         ret                                                                     // 0x006f391c    c3
_jmp_addr_0x006f391d:    push               esi                                                  // 0x006f391d    56
                         push               0x0                                                  // 0x006f391e    6a00
                         push               0x009c8060                                           // 0x006f3920    6860809c00
                         push               0x009c7f30                                           // 0x006f3925    68307f9c00
                         push               0x0                                                  // 0x006f392a    6a00
                         push               eax                                                  // 0x006f392c    50
                         call               ___RTDynamicCast                                     // 0x006f392d    e8e7200d00
                         mov.s              esi, eax                                             // 0x006f3932    8bf0
                         add                esp, 0x14                                            // 0x006f3934    83c414
                         test               esi, esi                                             // 0x006f3937    85f6
                         {disp8} jne        _jmp_addr_0x006f3948                                 // 0x006f3939    750d
                         push               0x00c0ce50                                           // 0x006f393b    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3940    e86b290000
                         add                esp, 0x04                                            // 0x006f3945    83c404
_jmp_addr_0x006f3948:    mov.s              ecx, esi                                             // 0x006f3948    8bce
                         call               _jmp_addr_0x004f7080                                 // 0x006f394a    e83137e0ff
                         pop                esi                                                  // 0x006f394f    5e
                         pop                ecx                                                  // 0x006f3950    59
                         ret                                                                     // 0x006f3951    c3
                         nop                                                                     // 0x006f3952    90
                         nop                                                                     // 0x006f3953    90
                         nop                                                                     // 0x006f3954    90
                         nop                                                                     // 0x006f3955    90
                         nop                                                                     // 0x006f3956    90
                         nop                                                                     // 0x006f3957    90
                         nop                                                                     // 0x006f3958    90
                         nop                                                                     // 0x006f3959    90
                         nop                                                                     // 0x006f395a    90
                         nop                                                                     // 0x006f395b    90
                         nop                                                                     // 0x006f395c    90
                         nop                                                                     // 0x006f395d    90
                         nop                                                                     // 0x006f395e    90
                         nop                                                                     // 0x006f395f    90
                         push               ecx                                                  // 0x006f3960    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3961    8b0d105cd900
                         push               ebx                                                  // 0x006f3967    53
                         push               esi                                                  // 0x006f3968    56
                         push               edi                                                  // 0x006f3969    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f396a    8d44240c
                         push               eax                                                  // 0x006f396e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f396f    e84c320000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3974    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f397a    8d54240c
                         push               edx                                                  // 0x006f397e    52
                         mov.s              esi, eax                                             // 0x006f397f    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3981    e83a320000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3986    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f398c    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f398e    8d44240c
                         push               eax                                                  // 0x006f3992    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3993    e828320000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3998    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f399e    8d54240c
                         push               edx                                                  // 0x006f39a2    52
                         mov.s              ebx, eax                                             // 0x006f39a3    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f39a5    e816320000
                         push               eax                                                  // 0x006f39aa    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f39ab    e870980100
                         add                esp, 0x04                                            // 0x006f39b0    83c404
                         test               eax, eax                                             // 0x006f39b3    85c0
                         {disp8} jne        _jmp_addr_0x006f39c9                                 // 0x006f39b5    7512
                         push               0x00c0ce20                                           // 0x006f39b7    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f39bc    e8ef280000
                         add                esp, 0x04                                            // 0x006f39c1    83c404
                         pop                edi                                                  // 0x006f39c4    5f
                         pop                esi                                                  // 0x006f39c5    5e
                         pop                ebx                                                  // 0x006f39c6    5b
                         pop                ecx                                                  // 0x006f39c7    59
                         ret                                                                     // 0x006f39c8    c3
_jmp_addr_0x006f39c9:    push               ebp                                                  // 0x006f39c9    55
                         push               0x0                                                  // 0x006f39ca    6a00
                         push               0x009c8060                                           // 0x006f39cc    6860809c00
                         push               0x009c7f30                                           // 0x006f39d1    68307f9c00
                         push               0x0                                                  // 0x006f39d6    6a00
                         push               eax                                                  // 0x006f39d8    50
                         call               ___RTDynamicCast                                     // 0x006f39d9    e83b200d00
                         mov.s              ebp, eax                                             // 0x006f39de    8be8
                         add                esp, 0x14                                            // 0x006f39e0    83c414
                         test               ebp, ebp                                             // 0x006f39e3    85ed
                         {disp8} jne        _jmp_addr_0x006f39f4                                 // 0x006f39e5    750d
                         push               0x00c0ce50                                           // 0x006f39e7    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f39ec    e8bf280000
                         add                esp, 0x04                                            // 0x006f39f1    83c404
_jmp_addr_0x006f39f4:    push               esi                                                  // 0x006f39f4    56
                         push               edi                                                  // 0x006f39f5    57
                         push               ebx                                                  // 0x006f39f6    53
                         mov.s              ecx, ebp                                             // 0x006f39f7    8bcd
                         call               _jmp_addr_0x004f7090                                 // 0x006f39f9    e89236e0ff
                         pop                ebp                                                  // 0x006f39fe    5d
                         pop                edi                                                  // 0x006f39ff    5f
                         pop                esi                                                  // 0x006f3a00    5e
                         pop                ebx                                                  // 0x006f3a01    5b
                         pop                ecx                                                  // 0x006f3a02    59
                         ret                                                                     // 0x006f3a03    c3
                         nop                                                                     // 0x006f3a04    90
                         nop                                                                     // 0x006f3a05    90
                         nop                                                                     // 0x006f3a06    90
                         nop                                                                     // 0x006f3a07    90
                         nop                                                                     // 0x006f3a08    90
                         nop                                                                     // 0x006f3a09    90
                         nop                                                                     // 0x006f3a0a    90
                         nop                                                                     // 0x006f3a0b    90
                         nop                                                                     // 0x006f3a0c    90
                         nop                                                                     // 0x006f3a0d    90
                         nop                                                                     // 0x006f3a0e    90
                         nop                                                                     // 0x006f3a0f    90
                         push               ecx                                                  // 0x006f3a10    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3a11    8b0d105cd900
                         push               edi                                                  // 0x006f3a17    57
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f3a18    8d442404
                         push               eax                                                  // 0x006f3a1c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3a1d    e89e310000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3a22    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f3a28    8d542404
                         push               edx                                                  // 0x006f3a2c    52
                         mov.s              edi, eax                                             // 0x006f3a2d    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3a2f    e88c310000
                         push               eax                                                  // 0x006f3a34    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3a35    e8e6970100
                         add                esp, 0x04                                            // 0x006f3a3a    83c404
                         test               eax, eax                                             // 0x006f3a3d    85c0
                         {disp8} jne        _jmp_addr_0x006f3a51                                 // 0x006f3a3f    7510
                         push               0x00c0ce20                                           // 0x006f3a41    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3a46    e865280000
                         add                esp, 0x04                                            // 0x006f3a4b    83c404
                         pop                edi                                                  // 0x006f3a4e    5f
                         pop                ecx                                                  // 0x006f3a4f    59
                         ret                                                                     // 0x006f3a50    c3
_jmp_addr_0x006f3a51:    push               esi                                                  // 0x006f3a51    56
                         push               0x0                                                  // 0x006f3a52    6a00
                         push               0x009c8060                                           // 0x006f3a54    6860809c00
                         push               0x009c7f30                                           // 0x006f3a59    68307f9c00
                         push               0x0                                                  // 0x006f3a5e    6a00
                         push               eax                                                  // 0x006f3a60    50
                         call               ___RTDynamicCast                                     // 0x006f3a61    e8b31f0d00
                         mov.s              esi, eax                                             // 0x006f3a66    8bf0
                         add                esp, 0x14                                            // 0x006f3a68    83c414
                         test               esi, esi                                             // 0x006f3a6b    85f6
                         {disp8} jne        _jmp_addr_0x006f3a7c                                 // 0x006f3a6d    750d
                         push               0x00c0ce50                                           // 0x006f3a6f    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3a74    e837280000
                         add                esp, 0x04                                            // 0x006f3a79    83c404
_jmp_addr_0x006f3a7c:    push               edi                                                  // 0x006f3a7c    57
                         mov.s              ecx, esi                                             // 0x006f3a7d    8bce
                         call               _jmp_addr_0x004f70f0                                 // 0x006f3a7f    e86c36e0ff
                         pop                esi                                                  // 0x006f3a84    5e
                         pop                edi                                                  // 0x006f3a85    5f
                         pop                ecx                                                  // 0x006f3a86    59
                         ret                                                                     // 0x006f3a87    c3
                         nop                                                                     // 0x006f3a88    90
                         nop                                                                     // 0x006f3a89    90
                         nop                                                                     // 0x006f3a8a    90
                         nop                                                                     // 0x006f3a8b    90
                         nop                                                                     // 0x006f3a8c    90
                         nop                                                                     // 0x006f3a8d    90
                         nop                                                                     // 0x006f3a8e    90
                         nop                                                                     // 0x006f3a8f    90
                         push               ecx                                                  // 0x006f3a90    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3a91    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f3a97    8d442400
                         push               eax                                                  // 0x006f3a9b    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3a9c    e81f310000
                         push               eax                                                  // 0x006f3aa1    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3aa2    e879970100
                         add                esp, 0x04                                            // 0x006f3aa7    83c404
                         test               eax, eax                                             // 0x006f3aaa    85c0
                         {disp8} jne        _jmp_addr_0x006f3abd                                 // 0x006f3aac    750f
                         push               0x00c0ce20                                           // 0x006f3aae    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3ab3    e8f8270000
                         add                esp, 0x04                                            // 0x006f3ab8    83c404
                         pop                ecx                                                  // 0x006f3abb    59
                         ret                                                                     // 0x006f3abc    c3
_jmp_addr_0x006f3abd:    push               esi                                                  // 0x006f3abd    56
                         push               0x0                                                  // 0x006f3abe    6a00
                         push               0x009c8060                                           // 0x006f3ac0    6860809c00
                         push               0x009c7f30                                           // 0x006f3ac5    68307f9c00
                         push               0x0                                                  // 0x006f3aca    6a00
                         push               eax                                                  // 0x006f3acc    50
                         call               ___RTDynamicCast                                     // 0x006f3acd    e8471f0d00
                         mov.s              esi, eax                                             // 0x006f3ad2    8bf0
                         add                esp, 0x14                                            // 0x006f3ad4    83c414
                         test               esi, esi                                             // 0x006f3ad7    85f6
                         {disp8} jne        _jmp_addr_0x006f3ae8                                 // 0x006f3ad9    750d
                         push               0x00c0ce50                                           // 0x006f3adb    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3ae0    e8cb270000
                         add                esp, 0x04                                            // 0x006f3ae5    83c404
_jmp_addr_0x006f3ae8:    mov.s              ecx, esi                                             // 0x006f3ae8    8bce
                         call               _jmp_addr_0x004f6930                                 // 0x006f3aea    e8412ee0ff
                         pop                esi                                                  // 0x006f3aef    5e
                         pop                ecx                                                  // 0x006f3af0    59
                         ret                                                                     // 0x006f3af1    c3
                         nop                                                                     // 0x006f3af2    90
                         nop                                                                     // 0x006f3af3    90
                         nop                                                                     // 0x006f3af4    90
                         nop                                                                     // 0x006f3af5    90
                         nop                                                                     // 0x006f3af6    90
                         nop                                                                     // 0x006f3af7    90
                         nop                                                                     // 0x006f3af8    90
                         nop                                                                     // 0x006f3af9    90
                         nop                                                                     // 0x006f3afa    90
                         nop                                                                     // 0x006f3afb    90
                         nop                                                                     // 0x006f3afc    90
                         nop                                                                     // 0x006f3afd    90
                         nop                                                                     // 0x006f3afe    90
                         nop                                                                     // 0x006f3aff    90
                         push               ecx                                                  // 0x006f3b00    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3b01    8b0d105cd900
                         push               edi                                                  // 0x006f3b07    57
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f3b08    8d442404
                         push               eax                                                  // 0x006f3b0c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3b0d    e8ae300000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3b12    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f3b18    8d542404
                         push               edx                                                  // 0x006f3b1c    52
                         mov.s              edi, eax                                             // 0x006f3b1d    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3b1f    e89c300000
                         push               eax                                                  // 0x006f3b24    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3b25    e8f6960100
                         add                esp, 0x04                                            // 0x006f3b2a    83c404
                         test               eax, eax                                             // 0x006f3b2d    85c0
                         {disp8} jne        _jmp_addr_0x006f3b41                                 // 0x006f3b2f    7510
                         push               0x00c0ce20                                           // 0x006f3b31    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3b36    e875270000
                         add                esp, 0x04                                            // 0x006f3b3b    83c404
                         pop                edi                                                  // 0x006f3b3e    5f
                         pop                ecx                                                  // 0x006f3b3f    59
                         ret                                                                     // 0x006f3b40    c3
_jmp_addr_0x006f3b41:    push               esi                                                  // 0x006f3b41    56
                         push               0x0                                                  // 0x006f3b42    6a00
                         push               0x009c8060                                           // 0x006f3b44    6860809c00
                         push               0x009c7f30                                           // 0x006f3b49    68307f9c00
                         push               0x0                                                  // 0x006f3b4e    6a00
                         push               eax                                                  // 0x006f3b50    50
                         call               ___RTDynamicCast                                     // 0x006f3b51    e8c31e0d00
                         mov.s              esi, eax                                             // 0x006f3b56    8bf0
                         add                esp, 0x14                                            // 0x006f3b58    83c414
                         test               esi, esi                                             // 0x006f3b5b    85f6
                         {disp8} jne        _jmp_addr_0x006f3b6c                                 // 0x006f3b5d    750d
                         push               0x00c0ce50                                           // 0x006f3b5f    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3b64    e847270000
                         add                esp, 0x04                                            // 0x006f3b69    83c404
_jmp_addr_0x006f3b6c:    push               edi                                                  // 0x006f3b6c    57
                         mov.s              ecx, esi                                             // 0x006f3b6d    8bce
                         call               _jmp_addr_0x004f6950                                 // 0x006f3b6f    e8dc2de0ff
                         pop                esi                                                  // 0x006f3b74    5e
                         pop                edi                                                  // 0x006f3b75    5f
                         pop                ecx                                                  // 0x006f3b76    59
                         ret                                                                     // 0x006f3b77    c3
                         nop                                                                     // 0x006f3b78    90
                         nop                                                                     // 0x006f3b79    90
                         nop                                                                     // 0x006f3b7a    90
                         nop                                                                     // 0x006f3b7b    90
                         nop                                                                     // 0x006f3b7c    90
                         nop                                                                     // 0x006f3b7d    90
                         nop                                                                     // 0x006f3b7e    90
                         nop                                                                     // 0x006f3b7f    90
                         push               ecx                                                  // 0x006f3b80    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3b81    8b0d105cd900
                         push               ebx                                                  // 0x006f3b87    53
                         push               ebp                                                  // 0x006f3b88    55
                         push               edi                                                  // 0x006f3b89    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f3b8a    8d44240c
                         push               eax                                                  // 0x006f3b8e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3b8f    e82c300000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3b94    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f3b9a    8d54240c
                         push               edx                                                  // 0x006f3b9e    52
                         mov.s              ebp, eax                                             // 0x006f3b9f    8be8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3ba1    e81a300000
                         mov.s              edi, eax                                             // 0x006f3ba6    8bf8
                         cmp                edi, 0x17                                            // 0x006f3ba8    83ff17
                         {disp8} jl         _jmp_addr_0x006f3bba                                 // 0x006f3bab    7c0d
                         push               0x00c0cc08                                           // 0x006f3bad    6808ccc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3bb2    e8f9260000
                         add                esp, 0x04                                            // 0x006f3bb7    83c404
_jmp_addr_0x006f3bba:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3bba    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f3bc0    8d44240c
                         push               eax                                                  // 0x006f3bc4    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3bc5    e8f62f0000
                         mov.s              ebx, eax                                             // 0x006f3bca    8bd8
                         cmp                ebx, 0x28                                            // 0x006f3bcc    83fb28
                         {disp8} jl         _jmp_addr_0x006f3bde                                 // 0x006f3bcf    7c0d
                         push               0x00c0ce68                                           // 0x006f3bd1    6868cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3bd6    e8d5260000
                         add                esp, 0x04                                            // 0x006f3bdb    83c404
_jmp_addr_0x006f3bde:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3bde    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f3be4    8d54240c
                         push               edx                                                  // 0x006f3be8    52
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3be9    e8d22f0000
                         push               eax                                                  // 0x006f3bee    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3bef    e82c960100
                         add                esp, 0x04                                            // 0x006f3bf4    83c404
                         test               eax, eax                                             // 0x006f3bf7    85c0
                         {disp8} jne        _jmp_addr_0x006f3c0d                                 // 0x006f3bf9    7512
                         push               0x00c0ce20                                           // 0x006f3bfb    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3c00    e8ab260000
                         add                esp, 0x04                                            // 0x006f3c05    83c404
                         pop                edi                                                  // 0x006f3c08    5f
                         pop                ebp                                                  // 0x006f3c09    5d
                         pop                ebx                                                  // 0x006f3c0a    5b
                         pop                ecx                                                  // 0x006f3c0b    59
                         ret                                                                     // 0x006f3c0c    c3
_jmp_addr_0x006f3c0d:    push               esi                                                  // 0x006f3c0d    56
                         push               0x0                                                  // 0x006f3c0e    6a00
                         push               0x009c8060                                           // 0x006f3c10    6860809c00
                         push               0x009c7f30                                           // 0x006f3c15    68307f9c00
                         push               0x0                                                  // 0x006f3c1a    6a00
                         push               eax                                                  // 0x006f3c1c    50
                         call               ___RTDynamicCast                                     // 0x006f3c1d    e8f71d0d00
                         mov.s              esi, eax                                             // 0x006f3c22    8bf0
                         add                esp, 0x14                                            // 0x006f3c24    83c414
                         test               esi, esi                                             // 0x006f3c27    85f6
                         {disp8} jne        _jmp_addr_0x006f3c38                                 // 0x006f3c29    750d
                         push               0x00c0ce50                                           // 0x006f3c2b    6850cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3c30    e87b260000
                         add                esp, 0x04                                            // 0x006f3c35    83c404
_jmp_addr_0x006f3c38:    push               ebp                                                  // 0x006f3c38    55
                         push               edi                                                  // 0x006f3c39    57
                         push               ebx                                                  // 0x006f3c3a    53
                         mov.s              ecx, esi                                             // 0x006f3c3b    8bce
                         call               _jmp_addr_0x004f6980                                 // 0x006f3c3d    e83e2de0ff
                         pop                esi                                                  // 0x006f3c42    5e
                         pop                edi                                                  // 0x006f3c43    5f
                         pop                ebp                                                  // 0x006f3c44    5d
                         pop                ebx                                                  // 0x006f3c45    5b
                         pop                ecx                                                  // 0x006f3c46    59
                         ret                                                                     // 0x006f3c47    c3
                         nop                                                                     // 0x006f3c48    90
                         nop                                                                     // 0x006f3c49    90
                         nop                                                                     // 0x006f3c4a    90
                         nop                                                                     // 0x006f3c4b    90
                         nop                                                                     // 0x006f3c4c    90
                         nop                                                                     // 0x006f3c4d    90
                         nop                                                                     // 0x006f3c4e    90
                         nop                                                                     // 0x006f3c4f    90
                         push               ecx                                                  // 0x006f3c50    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3c51    8b0d105cd900
                         push               ebx                                                  // 0x006f3c57    53
                         push               ebp                                                  // 0x006f3c58    55
                         push               esi                                                  // 0x006f3c59    56
                         push               edi                                                  // 0x006f3c5a    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f3c5b    8d442410
                         push               eax                                                  // 0x006f3c5f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3c60    e85b2f0000
                         test               eax, eax                                             // 0x006f3c65    85c0
                         {disp8} jne        _jmp_addr_0x006f3c6d                                 // 0x006f3c67    7504
                         xor.s              ebp, ebp                                             // 0x006f3c69    33ed
                         {disp8} jmp        _jmp_addr_0x006f3c78                                 // 0x006f3c6b    eb0b
_jmp_addr_0x006f3c6d:    push               eax                                                  // 0x006f3c6d    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3c6e    e8ad950100
                         add                esp, 0x04                                            // 0x006f3c73    83c404
                         mov.s              ebp, eax                                             // 0x006f3c76    8be8
_jmp_addr_0x006f3c78:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3c78    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f3c7e    8d542410
                         push               edx                                                  // 0x006f3c82    52
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3c83    e8382f0000
                         push               eax                                                  // 0x006f3c88    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3c89    e892950100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3c8e    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f3c94    8bf8
                         add                esp, 0x04                                            // 0x006f3c96    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f3c99    8d442410
                         push               eax                                                  // 0x006f3c9d    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3c9e    e81d2f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3ca3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f3ca9    8d542410
                         push               edx                                                  // 0x006f3cad    52
                         mov.s              ebx, eax                                             // 0x006f3cae    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3cb0    e80b2f0000
                         push               eax                                                  // 0x006f3cb5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3cb6    e865950100
                         mov.s              esi, eax                                             // 0x006f3cbb    8bf0
                         add                esp, 0x04                                            // 0x006f3cbd    83c404
                         test               esi, esi                                             // 0x006f3cc0    85f6
                         {disp8} jne        _jmp_addr_0x006f3cd1                                 // 0x006f3cc2    750d
                         push               0x00c0ce20                                           // 0x006f3cc4    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3cc9    e8e2250000
                         add                esp, 0x04                                            // 0x006f3cce    83c404
_jmp_addr_0x006f3cd1:    test               edi, edi                                             // 0x006f3cd1    85ff
                         {disp8} jne        _jmp_addr_0x006f3ce2                                 // 0x006f3cd3    750d
                         push               0x00c0ce80                                           // 0x006f3cd5    6880cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3cda    e8d1250000
                         add                esp, 0x04                                            // 0x006f3cdf    83c404
_jmp_addr_0x006f3ce2:    test               esi, esi                                             // 0x006f3ce2    85f6
                         {disp8} je         _jmp_addr_0x006f3d30                                 // 0x006f3ce4    744a
                         test               edi, edi                                             // 0x006f3ce6    85ff
                         {disp8} je         _jmp_addr_0x006f3d30                                 // 0x006f3ce8    7446
                         push               0x0                                                  // 0x006f3cea    6a00
                         push               0x009c8060                                           // 0x006f3cec    6860809c00
                         push               0x009c7f30                                           // 0x006f3cf1    68307f9c00
                         push               0x0                                                  // 0x006f3cf6    6a00
                         push               esi                                                  // 0x006f3cf8    56
                         call               ___RTDynamicCast                                     // 0x006f3cf9    e81b1d0d00
                         mov.s              esi, eax                                             // 0x006f3cfe    8bf0
                         add                esp, 0x14                                            // 0x006f3d00    83c414
                         test               esi, esi                                             // 0x006f3d03    85f6
                         {disp8} jne        _jmp_addr_0x006f3d1a                                 // 0x006f3d05    7513
                         push               0x00c0ce20                                           // 0x006f3d07    6820cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3d0c    e89f250000
                         add                esp, 0x04                                            // 0x006f3d11    83c404
                         pop                edi                                                  // 0x006f3d14    5f
                         pop                esi                                                  // 0x006f3d15    5e
                         pop                ebp                                                  // 0x006f3d16    5d
                         pop                ebx                                                  // 0x006f3d17    5b
                         pop                ecx                                                  // 0x006f3d18    59
                         ret                                                                     // 0x006f3d19    c3
_jmp_addr_0x006f3d1a:    mov                eax, dword ptr [esi]                                 // 0x006f3d1a    8b06
                         push               0x1                                                  // 0x006f3d1c    6a01
                         mov.s              ecx, esi                                             // 0x006f3d1e    8bce
                         call               dword ptr [eax + 0x440]                              // 0x006f3d20    ff9040040000
                         push               ebp                                                  // 0x006f3d26    55
                         push               edi                                                  // 0x006f3d27    57
                         push               ebx                                                  // 0x006f3d28    53
                         mov.s              ecx, esi                                             // 0x006f3d29    8bce
                         call               _jmp_addr_0x004f7000                                 // 0x006f3d2b    e8d032e0ff
_jmp_addr_0x006f3d30:    pop                edi                                                  // 0x006f3d30    5f
                         pop                esi                                                  // 0x006f3d31    5e
                         pop                ebp                                                  // 0x006f3d32    5d
                         pop                ebx                                                  // 0x006f3d33    5b
                         pop                ecx                                                  // 0x006f3d34    59
                         ret                                                                     // 0x006f3d35    c3
                         nop                                                                     // 0x006f3d36    90
                         nop                                                                     // 0x006f3d37    90
                         nop                                                                     // 0x006f3d38    90
                         nop                                                                     // 0x006f3d39    90
                         nop                                                                     // 0x006f3d3a    90
                         nop                                                                     // 0x006f3d3b    90
                         nop                                                                     // 0x006f3d3c    90
                         nop                                                                     // 0x006f3d3d    90
                         nop                                                                     // 0x006f3d3e    90
                         nop                                                                     // 0x006f3d3f    90
                         sub                esp, 0x00000410                                      // 0x006f3d40    81ec10040000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3d46    8b0d105cd900
                         push               esi                                                  // 0x006f3d4c    56
                         push               edi                                                  // 0x006f3d4d    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f3d4e    8d442408
                         push               eax                                                  // 0x006f3d52    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3d53    e8682e0000
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f3d58    89442410
                         {disp8} fld        dword ptr [esp + 0x10]                               // 0x006f3d5c    d9442410
                         call               _jmp_addr_0x007a1400                                 // 0x006f3d60    e89bd60a00
                         push               eax                                                  // 0x006f3d65    50
                         call               _jmp_addr_0x006eb9a0                                 // 0x006f3d66    e8357cffff
                         xor.s              edi, edi                                             // 0x006f3d6b    33ff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f3d6d    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], edi                          // 0x006f3d71    897c2410
                         {disp8} fild       qword ptr [esp + 0x0c]                               // 0x006f3d75    df6c240c
                         add                esp, 0x04                                            // 0x006f3d79    83c404
                         call               _jmp_addr_0x007a1400                                 // 0x006f3d7c    e87fd60a00
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f3d81    8b0d5c19d000
                         mov.s              esi, eax                                             // 0x006f3d87    8bf0
                         push               esi                                                  // 0x006f3d89    56
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z                 // 0x006f3d8a    e821cce5ff
                         add                eax, 0x00000a4c                                      // 0x006f3d8f    054c0a0000
                         mov                eax, dword ptr [eax]                                 // 0x006f3d94    8b00
                         cmp.s              eax, edi                                             // 0x006f3d96    3bc7
                         {disp8} jne        _jmp_addr_0x006f3db6                                 // 0x006f3d98    751c
                         push               esi                                                  // 0x006f3d9a    56
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                          // 0x006f3d9b    8d4c2418
                         push               0x00c0cea0                                           // 0x006f3d9f    68a0cec000
                         push               ecx                                                  // 0x006f3da4    51
                         call               dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]          // 0x006f3da5    ff155c938a00
                         push               eax                                                  // 0x006f3dab    50
                         call               ?ScriptWarningMessage@GScript@@QAEXPAD@Z             // 0x006f3dac    e80f250000
                         add                esp, 0x10                                            // 0x006f3db1    83c410
                         {disp8} jmp        _jmp_addr_0x006f3dc2                                 // 0x006f3db4    eb0c
_jmp_addr_0x006f3db6:    push               edi                                                  // 0x006f3db6    57
                         push               eax                                                  // 0x006f3db7    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f3db8    e833930100
                         add                esp, 0x08                                            // 0x006f3dbd    83c408
                         mov.s              edi, eax                                             // 0x006f3dc0    8bf8
_jmp_addr_0x006f3dc2:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3dc2    8b0d105cd900
                         push               0x4                                                  // 0x006f3dc8    6a04
                         push               edi                                                  // 0x006f3dca    57
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3dcb    e8d02d0000
                         pop                edi                                                  // 0x006f3dd0    5f
                         pop                esi                                                  // 0x006f3dd1    5e
                         add                esp, 0x00000410                                      // 0x006f3dd2    81c410040000
                         ret                                                                     // 0x006f3dd8    c3
                         nop                                                                     // 0x006f3dd9    90
                         nop                                                                     // 0x006f3dda    90
                         nop                                                                     // 0x006f3ddb    90
                         nop                                                                     // 0x006f3ddc    90
                         nop                                                                     // 0x006f3ddd    90
                         nop                                                                     // 0x006f3dde    90
                         nop                                                                     // 0x006f3ddf    90
                         push               ecx                                                  // 0x006f3de0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3de1    8b0d105cd900
                         push               esi                                                  // 0x006f3de7    56
                         push               edi                                                  // 0x006f3de8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f3de9    8d442408
                         push               eax                                                  // 0x006f3ded    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3dee    e8cd2d0000
                         push               eax                                                  // 0x006f3df3    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3df4    e827940100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3df9    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f3dff    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f3e02    8d542408
                         push               edx                                                  // 0x006f3e06    52
                         mov.s              esi, eax                                             // 0x006f3e07    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3e09    e8b22d0000
                         push               eax                                                  // 0x006f3e0e    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3e0f    e80c940100
                         add                esp, 0x04                                            // 0x006f3e14    83c404
                         test               esi, esi                                             // 0x006f3e17    85f6
                         mov.s              edi, eax                                             // 0x006f3e19    8bf8
                         {disp32} je        _jmp_addr_0x006f3eca                                 // 0x006f3e1b    0f84a9000000
                         test               edi, edi                                             // 0x006f3e21    85ff
                         {disp32} je        _jmp_addr_0x006f3eca                                 // 0x006f3e23    0f84a1000000
                         push               0x0                                                  // 0x006f3e29    6a00
                         push               0x009c8060                                           // 0x006f3e2b    6860809c00
                         push               0x009c7f30                                           // 0x006f3e30    68307f9c00
                         push               0x0                                                  // 0x006f3e35    6a00
                         push               esi                                                  // 0x006f3e37    56
                         call               ___RTDynamicCast                                     // 0x006f3e38    e8dc1b0d00
                         mov.s              esi, eax                                             // 0x006f3e3d    8bf0
                         add                esp, 0x14                                            // 0x006f3e3f    83c414
                         test               esi, esi                                             // 0x006f3e42    85f6
                         {disp8} jne        _jmp_addr_0x006f3e61                                 // 0x006f3e44    751b
                         push               0x00c0ced8                                           // 0x006f3e46    68d8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3e4b    e860240000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3e50    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f3e56    83c404
                         push               0x6                                                  // 0x006f3e59    6a06
                         push               esi                                                  // 0x006f3e5b    56
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3e5c    e83f2d0000
_jmp_addr_0x006f3e61:    {disp32} mov       eax, dword ptr [esi + 0x00000160]                    // 0x006f3e61    8b8660010000
                         cmp                dword ptr [eax + 0x28], edi                          // 0x006f3e67    397828
                         {disp8} jne        _jmp_addr_0x006f3e7f                                 // 0x006f3e6a    7513
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3e6c    8b0d105cd900
                         push               0x6                                                  // 0x006f3e72    6a06
                         push               0x1                                                  // 0x006f3e74    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3e76    e8252d0000
                         pop                edi                                                  // 0x006f3e7b    5f
                         pop                esi                                                  // 0x006f3e7c    5e
                         pop                ecx                                                  // 0x006f3e7d    59
                         ret                                                                     // 0x006f3e7e    c3
_jmp_addr_0x006f3e7f:    {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x006f3e7f    8b8664010000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x006f3e85    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x006f3e8b    8d0c49
                         shl                ecx, 5                                               // 0x006f3e8e    c1e105
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x1 + 0x00000fdc]        // 0x006f3e91    8b9401dc0f0000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000fb4]                    // 0x006f3e98    8b88b40f0000
                         lea                ecx, dword ptr [ecx + ecx * 0x2]                     // 0x006f3e9e    8d0c49
                         shl                ecx, 5                                               // 0x006f3ea1    c1e105
                         cmp                dword ptr [ecx + eax * 0x1 + 0x00000fd8], 0x02       // 0x006f3ea4    83bc01d80f000002
                         {disp8} jne        _jmp_addr_0x006f3ed7                                 // 0x006f3eac    7529
                         test               edx, edx                                             // 0x006f3eae    85d2
                         {disp8} je         _jmp_addr_0x006f3ed7                                 // 0x006f3eb0    7425
                         cmp                dword ptr [edx + 0x30], edi                          // 0x006f3eb2    397a30
                         {disp8} jne        _jmp_addr_0x006f3ed7                                 // 0x006f3eb5    7520
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3eb7    8b0d105cd900
                         push               0x6                                                  // 0x006f3ebd    6a06
                         push               0x1                                                  // 0x006f3ebf    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3ec1    e8da2c0000
                         pop                edi                                                  // 0x006f3ec6    5f
                         pop                esi                                                  // 0x006f3ec7    5e
                         pop                ecx                                                  // 0x006f3ec8    59
                         ret                                                                     // 0x006f3ec9    c3
_jmp_addr_0x006f3eca:    push               0x00c0cebc                                           // 0x006f3eca    68bccec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3ecf    e8dc230000
                         add                esp, 0x04                                            // 0x006f3ed4    83c404
_jmp_addr_0x006f3ed7:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3ed7    8b0d105cd900
                         push               0x6                                                  // 0x006f3edd    6a06
                         push               0x0                                                  // 0x006f3edf    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f3ee1    e8ba2c0000
                         pop                edi                                                  // 0x006f3ee6    5f
                         pop                esi                                                  // 0x006f3ee7    5e
                         pop                ecx                                                  // 0x006f3ee8    59
                         ret                                                                     // 0x006f3ee9    c3
                         nop                                                                     // 0x006f3eea    90
                         nop                                                                     // 0x006f3eeb    90
                         nop                                                                     // 0x006f3eec    90
                         nop                                                                     // 0x006f3eed    90
                         nop                                                                     // 0x006f3eee    90
                         nop                                                                     // 0x006f3eef    90
                         sub                esp, 0x08                                            // 0x006f3ef0    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3ef3    8b0d105cd900
                         push               esi                                                  // 0x006f3ef9    56
                         push               edi                                                  // 0x006f3efa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f3efb    8d442408
                         push               eax                                                  // 0x006f3eff    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3f00    e8bb2c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3f05    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f3f0b    8d54240c
                         push               edx                                                  // 0x006f3f0f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f3f10    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3f14    e8a72c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3f19    8b0d105cd900
                         mov.s              esi, eax                                             // 0x006f3f1f    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f3f21    8d44240c
                         push               eax                                                  // 0x006f3f25    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3f26    e8952c0000
                         push               eax                                                  // 0x006f3f2b    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f3f2c    e8ef920100
                         add                esp, 0x04                                            // 0x006f3f31    83c404
                         test               eax, eax                                             // 0x006f3f34    85c0
                         {disp8} jne        _jmp_addr_0x006f3f4b                                 // 0x006f3f36    7513
                         push               0x00c0cef8                                           // 0x006f3f38    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3f3d    e86e230000
                         add                esp, 0x04                                            // 0x006f3f42    83c404
                         pop                edi                                                  // 0x006f3f45    5f
                         pop                esi                                                  // 0x006f3f46    5e
                         add                esp, 0x08                                            // 0x006f3f47    83c408
                         ret                                                                     // 0x006f3f4a    c3
_jmp_addr_0x006f3f4b:    push               0x0                                                  // 0x006f3f4b    6a00
                         push               0x009c8060                                           // 0x006f3f4d    6860809c00
                         push               0x009c7f30                                           // 0x006f3f52    68307f9c00
                         push               0x0                                                  // 0x006f3f57    6a00
                         push               eax                                                  // 0x006f3f59    50
                         call               ___RTDynamicCast                                     // 0x006f3f5a    e8ba1a0d00
                         mov.s              edi, eax                                             // 0x006f3f5f    8bf8
                         add                esp, 0x14                                            // 0x006f3f61    83c414
                         test               edi, edi                                             // 0x006f3f64    85ff
                         {disp8} jne        _jmp_addr_0x006f3f75                                 // 0x006f3f66    750d
                         push               0x00c0cee8                                           // 0x006f3f68    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f3f6d    e83e230000
                         add                esp, 0x04                                            // 0x006f3f72    83c404
_jmp_addr_0x006f3f75:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x006f3f75    8b8f64010000
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f3f7b    d9442408
                         add                ecx, 0x8                                             // 0x006f3f7f    83c108
                         {disp32} fstp      dword ptr [ecx + esi * 0x4 + 0x00000148]             // 0x006f3f82    d99cb148010000
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f3f89    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                          // 0x006f3f8d    d81d98a38a00
                         fnstsw             ax                                                   // 0x006f3f93    dfe0
                         test               ah, 0x01                                             // 0x006f3f95    f6c401
                         {disp8} je         _jmp_addr_0x006f3fa7                                 // 0x006f3f98    740d
                         {disp32} mov       dword ptr [ecx + esi * 0x4 + 0x00000148], 0x00000000 // 0x006f3f9a    c784b14801000000000000
                         {disp8} jmp        _jmp_addr_0x006f3fc3                                 // 0x006f3fa5    eb1c
_jmp_addr_0x006f3fa7:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f3fa7    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x006f3fab    d81d90a38a00
                         fnstsw             ax                                                   // 0x006f3fb1    dfe0
                         test               ah, 0x41                                             // 0x006f3fb3    f6c441
                         {disp8} jne        _jmp_addr_0x006f3fc3                                 // 0x006f3fb6    750b
                         {disp32} mov       dword ptr [ecx + esi * 0x4 + 0x00000148], 0x3f800000 // 0x006f3fb8    c784b1480100000000803f
_jmp_addr_0x006f3fc3:    {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f3fc3    d9442408
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                          // 0x006f3fc7    d81d90a38a00
                         fnstsw             ax                                                   // 0x006f3fcd    dfe0
                         test               ah, 0x40                                             // 0x006f3fcf    f6c440
                         {disp8} je         _jmp_addr_0x006f3fe3                                 // 0x006f3fd2    740f
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x006f3fd4    8b8f64010000
                         push               esi                                                  // 0x006f3fda    56
                         add                ecx, 0x8                                             // 0x006f3fdb    83c108
                         call               _jmp_addr_0x004de780                                 // 0x006f3fde    e89da7deff
_jmp_addr_0x006f3fe3:    pop                edi                                                  // 0x006f3fe3    5f
                         pop                esi                                                  // 0x006f3fe4    5e
                         add                esp, 0x08                                            // 0x006f3fe5    83c408
                         ret                                                                     // 0x006f3fe8    c3
                         nop                                                                     // 0x006f3fe9    90
                         nop                                                                     // 0x006f3fea    90
                         nop                                                                     // 0x006f3feb    90
                         nop                                                                     // 0x006f3fec    90
                         nop                                                                     // 0x006f3fed    90
                         nop                                                                     // 0x006f3fee    90
                         nop                                                                     // 0x006f3fef    90
                         push               ecx                                                  // 0x006f3ff0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f3ff1    8b0d105cd900
                         push               esi                                                  // 0x006f3ff7    56
                         push               edi                                                  // 0x006f3ff8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f3ff9    8d442408
                         push               eax                                                  // 0x006f3ffd    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f3ffe    e8bd2b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4003    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f4009    8d542408
                         push               edx                                                  // 0x006f400d    52
                         mov.s              esi, eax                                             // 0x006f400e    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4010    e8ab2b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4015    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f401b    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f401d    8d442408
                         push               eax                                                  // 0x006f4021    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4022    e8992b0000
                         push               eax                                                  // 0x006f4027    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4028    e8f3910100
                         add                esp, 0x04                                            // 0x006f402d    83c404
                         test               eax, eax                                             // 0x006f4030    85c0
                         {disp8} jne        _jmp_addr_0x006f4045                                 // 0x006f4032    7511
                         push               0x00c0cef8                                           // 0x006f4034    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4039    e872220000
                         add                esp, 0x04                                            // 0x006f403e    83c404
                         pop                edi                                                  // 0x006f4041    5f
                         pop                esi                                                  // 0x006f4042    5e
                         pop                ecx                                                  // 0x006f4043    59
                         ret                                                                     // 0x006f4044    c3
_jmp_addr_0x006f4045:    push               ebx                                                  // 0x006f4045    53
                         push               0x0                                                  // 0x006f4046    6a00
                         push               0x009c8060                                           // 0x006f4048    6860809c00
                         push               0x009c7f30                                           // 0x006f404d    68307f9c00
                         push               0x0                                                  // 0x006f4052    6a00
                         push               eax                                                  // 0x006f4054    50
                         call               ___RTDynamicCast                                     // 0x006f4055    e8bf190d00
                         mov.s              ebx, eax                                             // 0x006f405a    8bd8
                         add                esp, 0x14                                            // 0x006f405c    83c414
                         test               ebx, ebx                                             // 0x006f405f    85db
                         {disp8} jne        _jmp_addr_0x006f4070                                 // 0x006f4061    750d
                         push               0x00c0cee8                                           // 0x006f4063    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4068    e843220000
                         add                esp, 0x04                                            // 0x006f406d    83c404
_jmp_addr_0x006f4070:    {disp32} mov       ecx, dword ptr [ebx + 0x00000164]                    // 0x006f4070    8b8b64010000
                         push               esi                                                  // 0x006f4076    56
                         push               edi                                                  // 0x006f4077    57
                         add                ecx, 0x8                                             // 0x006f4078    83c108
                         call               _jmp_addr_0x004dcdd0                                 // 0x006f407b    e8508ddeff
                         pop                ebx                                                  // 0x006f4080    5b
                         pop                edi                                                  // 0x006f4081    5f
                         pop                esi                                                  // 0x006f4082    5e
                         pop                ecx                                                  // 0x006f4083    59
                         ret                                                                     // 0x006f4084    c3
                         nop                                                                     // 0x006f4085    90
                         nop                                                                     // 0x006f4086    90
                         nop                                                                     // 0x006f4087    90
                         nop                                                                     // 0x006f4088    90
                         nop                                                                     // 0x006f4089    90
                         nop                                                                     // 0x006f408a    90
                         nop                                                                     // 0x006f408b    90
                         nop                                                                     // 0x006f408c    90
                         nop                                                                     // 0x006f408d    90
                         nop                                                                     // 0x006f408e    90
                         nop                                                                     // 0x006f408f    90
                         push               ecx                                                  // 0x006f4090    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4091    8b0d105cd900
                         push               ebx                                                  // 0x006f4097    53
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f4098    8d442404
                         push               eax                                                  // 0x006f409c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f409d    e81e2b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f40a2    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f40a8    8d542404
                         push               edx                                                  // 0x006f40ac    52
                         mov.s              ebx, eax                                             // 0x006f40ad    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f40af    e80c2b0000
                         push               eax                                                  // 0x006f40b4    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f40b5    e866910100
                         add                esp, 0x04                                            // 0x006f40ba    83c404
                         test               eax, eax                                             // 0x006f40bd    85c0
                         {disp8} jne        _jmp_addr_0x006f40d1                                 // 0x006f40bf    7510
                         push               0x00c0cef8                                           // 0x006f40c1    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f40c6    e8e5210000
                         add                esp, 0x04                                            // 0x006f40cb    83c404
                         pop                ebx                                                  // 0x006f40ce    5b
                         pop                ecx                                                  // 0x006f40cf    59
                         ret                                                                     // 0x006f40d0    c3
_jmp_addr_0x006f40d1:    push               esi                                                  // 0x006f40d1    56
                         push               edi                                                  // 0x006f40d2    57
                         push               0x0                                                  // 0x006f40d3    6a00
                         push               0x009c8060                                           // 0x006f40d5    6860809c00
                         push               0x009c7f30                                           // 0x006f40da    68307f9c00
                         push               0x0                                                  // 0x006f40df    6a00
                         push               eax                                                  // 0x006f40e1    50
                         call               ___RTDynamicCast                                     // 0x006f40e2    e832190d00
                         mov.s              edi, eax                                             // 0x006f40e7    8bf8
                         add                esp, 0x14                                            // 0x006f40e9    83c414
                         test               edi, edi                                             // 0x006f40ec    85ff
                         {disp8} jne        _jmp_addr_0x006f40fd                                 // 0x006f40ee    750d
                         push               0x00c0cee8                                           // 0x006f40f0    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f40f5    e8b6210000
                         add                esp, 0x04                                            // 0x006f40fa    83c404
_jmp_addr_0x006f40fd:    xor.s              esi, esi                                             // 0x006f40fd    33f6
_jmp_addr_0x006f40ff:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]                    // 0x006f40ff    8b8f64010000
                         push               ebx                                                  // 0x006f4105    53
                         push               esi                                                  // 0x006f4106    56
                         add                ecx, 0x8                                             // 0x006f4107    83c108
                         call               _jmp_addr_0x004dcdd0                                 // 0x006f410a    e8c18cdeff
                         inc                esi                                                  // 0x006f410f    46
                         cmp                esi, 0x28                                            // 0x006f4110    83fe28
                         .byte              0x72, 0xea// {disp8} jb _jmp_addr_0x006f40ff         // 0x006f4113    72ea
                         pop                edi                                                  // 0x006f4115    5f
                         pop                esi                                                  // 0x006f4116    5e
                         pop                ebx                                                  // 0x006f4117    5b
                         pop                ecx                                                  // 0x006f4118    59
                         ret                                                                     // 0x006f4119    c3
                         nop                                                                     // 0x006f411a    90
                         nop                                                                     // 0x006f411b    90
                         nop                                                                     // 0x006f411c    90
                         nop                                                                     // 0x006f411d    90
                         nop                                                                     // 0x006f411e    90
                         nop                                                                     // 0x006f411f    90
                         sub                esp, 0x08                                            // 0x006f4120    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4123    8b0d105cd900
                         push               edi                                                  // 0x006f4129    57
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f412a    8d442404
                         push               eax                                                  // 0x006f412e    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f412f    e88c2a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4134    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f413a    8d542408
                         push               edx                                                  // 0x006f413e    52
                         {disp8} mov        dword ptr [esp + 0x08], eax                          // 0x006f413f    89442408
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4143    e8782a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4148    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f414e    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4150    8d442408
                         push               eax                                                  // 0x006f4154    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4155    e8662a0000
                         push               eax                                                  // 0x006f415a    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f415b    e8c0900100
                         add                esp, 0x04                                            // 0x006f4160    83c404
                         test               eax, eax                                             // 0x006f4163    85c0
                         {disp8} jne        _jmp_addr_0x006f4179                                 // 0x006f4165    7512
                         push               0x00c0cef8                                           // 0x006f4167    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f416c    e83f210000
                         add                esp, 0x04                                            // 0x006f4171    83c404
                         pop                edi                                                  // 0x006f4174    5f
                         add                esp, 0x08                                            // 0x006f4175    83c408
                         ret                                                                     // 0x006f4178    c3
_jmp_addr_0x006f4179:    push               esi                                                  // 0x006f4179    56
                         push               0x0                                                  // 0x006f417a    6a00
                         push               0x009c8060                                           // 0x006f417c    6860809c00
                         push               0x009c7f30                                           // 0x006f4181    68307f9c00
                         push               0x0                                                  // 0x006f4186    6a00
                         push               eax                                                  // 0x006f4188    50
                         call               ___RTDynamicCast                                     // 0x006f4189    e88b180d00
                         mov.s              esi, eax                                             // 0x006f418e    8bf0
                         add                esp, 0x14                                            // 0x006f4190    83c414
                         test               esi, esi                                             // 0x006f4193    85f6
                         {disp8} jne        _jmp_addr_0x006f41a4                                 // 0x006f4195    750d
                         push               0x00c0cee8                                           // 0x006f4197    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f419c    e80f210000
                         add                esp, 0x04                                            // 0x006f41a1    83c404
_jmp_addr_0x006f41a4:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x006f41a4    8b8e64010000
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f41aa    d9442408
                         pop                esi                                                  // 0x006f41ae    5e
                         {disp32} fstp      dword ptr [ecx + edi * 0x4 + 0x00000470]             // 0x006f41af    d99cb970040000
                         pop                edi                                                  // 0x006f41b6    5f
                         add                esp, 0x08                                            // 0x006f41b7    83c408
                         ret                                                                     // 0x006f41ba    c3
                         nop                                                                     // 0x006f41bb    90
                         nop                                                                     // 0x006f41bc    90
                         nop                                                                     // 0x006f41bd    90
                         nop                                                                     // 0x006f41be    90
                         nop                                                                     // 0x006f41bf    90
                         push               ecx                                                  // 0x006f41c0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f41c1    8b0d105cd900
                         push               esi                                                  // 0x006f41c7    56
                         push               edi                                                  // 0x006f41c8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f41c9    8d442408
                         push               eax                                                  // 0x006f41cd    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f41ce    e8ed290000
                         push               eax                                                  // 0x006f41d3    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f41d4    e847900100
                         add                esp, 0x04                                            // 0x006f41d9    83c404
                         test               eax, eax                                             // 0x006f41dc    85c0
                         {disp8} jne        _jmp_addr_0x006f41f1                                 // 0x006f41de    7511
                         push               0x00c0cef8                                           // 0x006f41e0    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f41e5    e8c6200000
                         add                esp, 0x04                                            // 0x006f41ea    83c404
                         pop                edi                                                  // 0x006f41ed    5f
                         pop                esi                                                  // 0x006f41ee    5e
                         pop                ecx                                                  // 0x006f41ef    59
                         ret                                                                     // 0x006f41f0    c3
_jmp_addr_0x006f41f1:    push               0x0                                                  // 0x006f41f1    6a00
                         push               0x009c8060                                           // 0x006f41f3    6860809c00
                         push               0x009c7f30                                           // 0x006f41f8    68307f9c00
                         push               0x0                                                  // 0x006f41fd    6a00
                         push               eax                                                  // 0x006f41ff    50
                         call               ___RTDynamicCast                                     // 0x006f4200    e814180d00
                         mov.s              esi, eax                                             // 0x006f4205    8bf0
                         add                esp, 0x14                                            // 0x006f4207    83c414
                         test               esi, esi                                             // 0x006f420a    85f6
                         {disp8} jne        _jmp_addr_0x006f421b                                 // 0x006f420c    750d
                         push               0x00c0cee8                                           // 0x006f420e    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4213    e898200000
                         add                esp, 0x04                                            // 0x006f4218    83c404
_jmp_addr_0x006f421b:    {disp32} mov       ecx, dword ptr [_game]                               // 0x006f421b    8b0d5c19d000
                         xor.s              eax, eax                                             // 0x006f4221    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]                      // 0x006f4223    8a81595a2000
                         push               ebx                                                  // 0x006f4229    53
                         push               esi                                                  // 0x006f422a    56
                         lea                edx, dword ptr [eax + eax * 0x4]                     // 0x006f422b    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]                     // 0x006f422e    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]                     // 0x006f4231    8d0450
                         shl                eax, 5                                               // 0x006f4234    c1e005
                         {disp8} lea        edi, dword ptr [eax + ecx * 0x1 + 0x18]              // 0x006f4237    8d7c0818
                         {disp32} mov       dword ptr [edi + 0x00000a4c], esi                    // 0x006f423b    89b74c0a0000
                         {disp32} mov       dword ptr [esi + 0x00001070], edi                    // 0x006f4241    89be70100000
                         call               _jmp_addr_0x006e4870                                 // 0x006f4247    e82406ffff
                         mov.s              ebx, eax                                             // 0x006f424c    8bd8
                         add                esp, 0x04                                            // 0x006f424e    83c404
                         test               ebx, ebx                                             // 0x006f4251    85db
                         {disp8} je         _jmp_addr_0x006f4266                                 // 0x006f4253    7411
                         mov                edx, dword ptr [esi]                                 // 0x006f4255    8b16
                         push               ebp                                                  // 0x006f4257    55
                         mov                ebp, dword ptr [ebx]                                 // 0x006f4258    8b2b
                         mov.s              ecx, esi                                             // 0x006f425a    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f425c    ff521c
                         push               eax                                                  // 0x006f425f    50
                         mov.s              ecx, ebx                                             // 0x006f4260    8bcb
                         call               dword ptr [ebp + 0x20]                               // 0x006f4262    ff5520
                         pop                ebp                                                  // 0x006f4265    5d
_jmp_addr_0x006f4266:    mov.s              ecx, edi                                             // 0x006f4266    8bcf
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f4268    e88367f5ff
                         test               eax, eax                                             // 0x006f426d    85c0
                         pop                ebx                                                  // 0x006f426f    5b
                         {disp8} je         _jmp_addr_0x006f42ac                                 // 0x006f4270    743a
                         mov.s              ecx, edi                                             // 0x006f4272    8bcf
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f4274    e87767f5ff
                         mov.s              ecx, eax                                             // 0x006f4279    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ // 0x006f427b    e83086eeff
                         {disp32} mov       eax, dword ptr [eax + 0x000001bc]                    // 0x006f4280    8b80bc010000
                         push               eax                                                  // 0x006f4286    50
                         {disp32} mov       eax, dword ptr [_game]                               // 0x006f4287    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00205b80]                    // 0x006f428c    8b88805b2000
                         call               dword ptr [rdata_bytes + 0x63c]                      // 0x006f4292    ff153c968a00
                         test               eax, eax                                             // 0x006f4298    85c0
                         {disp8} je         _jmp_addr_0x006f42ac                                 // 0x006f429a    7410
                         push               eax                                                  // 0x006f429c    50
                         add                esi, 0x000000e0                                      // 0x006f429d    81c6e0000000
                         push               esi                                                  // 0x006f42a3    56
                         call               _wcscpy                                              // 0x006f42a4    e80d1d0d00
                         add                esp, 0x08                                            // 0x006f42a9    83c408
_jmp_addr_0x006f42ac:    pop                edi                                                  // 0x006f42ac    5f
                         pop                esi                                                  // 0x006f42ad    5e
                         pop                ecx                                                  // 0x006f42ae    59
                         ret                                                                     // 0x006f42af    c3
                         push               ecx                                                  // 0x006f42b0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f42b1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f42b7    8d442400
                         push               eax                                                  // 0x006f42bb    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f42bc    e8ff280000
                         push               eax                                                  // 0x006f42c1    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f42c2    e8598f0100
                         add                esp, 0x04                                            // 0x006f42c7    83c404
                         test               eax, eax                                             // 0x006f42ca    85c0
                         {disp8} jne        _jmp_addr_0x006f42ed                                 // 0x006f42cc    751f
                         push               0x00c0cef8                                           // 0x006f42ce    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f42d3    e8d81f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f42d8    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f42de    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f42e1    8d442400
                         push               eax                                                  // 0x006f42e5    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f42e6    e8d5280000
                         pop                ecx                                                  // 0x006f42eb    59
                         ret                                                                     // 0x006f42ec    c3
_jmp_addr_0x006f42ed:    push               esi                                                  // 0x006f42ed    56
                         push               0x0                                                  // 0x006f42ee    6a00
                         push               0x009c8060                                           // 0x006f42f0    6860809c00
                         push               0x009c7f30                                           // 0x006f42f5    68307f9c00
                         push               0x0                                                  // 0x006f42fa    6a00
                         push               eax                                                  // 0x006f42fc    50
                         call               ___RTDynamicCast                                     // 0x006f42fd    e817170d00
                         mov.s              esi, eax                                             // 0x006f4302    8bf0
                         add                esp, 0x14                                            // 0x006f4304    83c414
                         test               esi, esi                                             // 0x006f4307    85f6
                         {disp8} jne        _jmp_addr_0x006f4318                                 // 0x006f4309    750d
                         push               0x00c0cee8                                           // 0x006f430b    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4310    e89b1f0000
                         add                esp, 0x04                                            // 0x006f4315    83c404
_jmp_addr_0x006f4318:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4318    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f431e    8d542404
                         push               edx                                                  // 0x006f4322    52
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4323    e898280000
                         {disp32} mov       dword ptr [esi + eax * 0x4 + 0x000011bc], 0x00000000 // 0x006f4328    c78486bc11000000000000
                         pop                esi                                                  // 0x006f4333    5e
                         pop                ecx                                                  // 0x006f4334    59
                         ret                                                                     // 0x006f4335    c3
                         nop                                                                     // 0x006f4336    90
                         nop                                                                     // 0x006f4337    90
                         nop                                                                     // 0x006f4338    90
                         nop                                                                     // 0x006f4339    90
                         nop                                                                     // 0x006f433a    90
                         nop                                                                     // 0x006f433b    90
                         nop                                                                     // 0x006f433c    90
                         nop                                                                     // 0x006f433d    90
                         nop                                                                     // 0x006f433e    90
                         nop                                                                     // 0x006f433f    90
                         push               ecx                                                  // 0x006f4340    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4341    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f4347    8d442400
                         push               eax                                                  // 0x006f434b    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f434c    e86f280000
                         push               eax                                                  // 0x006f4351    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4352    e8c98e0100
                         add                esp, 0x04                                            // 0x006f4357    83c404
                         test               eax, eax                                             // 0x006f435a    85c0
                         {disp8} jne        _jmp_addr_0x006f4397                                 // 0x006f435c    7539
                         push               0x00c0cef8                                           // 0x006f435e    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4363    e8481f0000
                         add                esp, 0x04                                            // 0x006f4368    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                          // 0x006f436b    8d4c2400
                         push               ecx                                                  // 0x006f436f    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4370    8b0d105cd900
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4376    e845280000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f437b    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000                   // 0x006f4381    c744240000000000
                         {disp8} mov        edx, dword ptr [esp + 0x00]                          // 0x006f4389    8b542400
                         push               0x2                                                  // 0x006f438d    6a02
                         push               edx                                                  // 0x006f438f    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4390    e80b280000
                         pop                ecx                                                  // 0x006f4395    59
                         ret                                                                     // 0x006f4396    c3
_jmp_addr_0x006f4397:    push               esi                                                  // 0x006f4397    56
                         push               0x0                                                  // 0x006f4398    6a00
                         push               0x009c8060                                           // 0x006f439a    6860809c00
                         push               0x009c7f30                                           // 0x006f439f    68307f9c00
                         push               0x0                                                  // 0x006f43a4    6a00
                         push               eax                                                  // 0x006f43a6    50
                         call               ___RTDynamicCast                                     // 0x006f43a7    e86d160d00
                         mov.s              esi, eax                                             // 0x006f43ac    8bf0
                         add                esp, 0x14                                            // 0x006f43ae    83c414
                         test               esi, esi                                             // 0x006f43b1    85f6
                         {disp8} jne        _jmp_addr_0x006f43c2                                 // 0x006f43b3    750d
                         push               0x00c0cee8                                           // 0x006f43b5    68e8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f43ba    e8f11e0000
                         add                esp, 0x04                                            // 0x006f43bf    83c404
_jmp_addr_0x006f43c2:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f43c2    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f43c8    8d542404
                         push               edx                                                  // 0x006f43cc    52
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f43cd    e8ee270000
                         {disp32} fld       dword ptr [esi + eax * 0x4 + 0x000011bc]             // 0x006f43d2    d98486bc110000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f43d9    8b0d105cd900
                         {disp8} fstp       dword ptr [esp + 0x04]                               // 0x006f43df    d95c2404
                         {disp8} mov        eax, dword ptr [esp + 0x04]                          // 0x006f43e3    8b442404
                         push               0x2                                                  // 0x006f43e7    6a02
                         push               eax                                                  // 0x006f43e9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f43ea    e8b1270000
                         pop                esi                                                  // 0x006f43ef    5e
                         pop                ecx                                                  // 0x006f43f0    59
                         ret                                                                     // 0x006f43f1    c3
                         nop                                                                     // 0x006f43f2    90
                         nop                                                                     // 0x006f43f3    90
                         nop                                                                     // 0x006f43f4    90
                         nop                                                                     // 0x006f43f5    90
                         nop                                                                     // 0x006f43f6    90
                         nop                                                                     // 0x006f43f7    90
                         nop                                                                     // 0x006f43f8    90
                         nop                                                                     // 0x006f43f9    90
                         nop                                                                     // 0x006f43fa    90
                         nop                                                                     // 0x006f43fb    90
                         nop                                                                     // 0x006f43fc    90
                         nop                                                                     // 0x006f43fd    90
                         nop                                                                     // 0x006f43fe    90
                         nop                                                                     // 0x006f43ff    90
                         push               ecx                                                  // 0x006f4400    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4401    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f4407    8d442400
                         push               eax                                                  // 0x006f440b    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f440c    e8af270000
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f4411    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x0025005c]                    // 0x006f4417    8b915c002500
                         {disp32} mov       dword ptr [edx + 0x00004608], eax                    // 0x006f441d    898208460000
                         pop                ecx                                                  // 0x006f4423    59
                         ret                                                                     // 0x006f4424    c3
                         nop                                                                     // 0x006f4425    90
                         nop                                                                     // 0x006f4426    90
                         nop                                                                     // 0x006f4427    90
                         nop                                                                     // 0x006f4428    90
                         nop                                                                     // 0x006f4429    90
                         nop                                                                     // 0x006f442a    90
                         nop                                                                     // 0x006f442b    90
                         nop                                                                     // 0x006f442c    90
                         nop                                                                     // 0x006f442d    90
                         nop                                                                     // 0x006f442e    90
                         nop                                                                     // 0x006f442f    90
                         push               ecx                                                  // 0x006f4430    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4431    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f4437    8d442400
                         push               eax                                                  // 0x006f443b    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f443c    e87f270000
                         {disp8} mov        dword ptr [esp + 0x00], eax                          // 0x006f4441    89442400
                         {disp8} fld        dword ptr [esp + 0x00]                               // 0x006f4445    d9442400
                         call               _jmp_addr_0x007a1400                                 // 0x006f4449    e8b2cf0a00
                         push               eax                                                  // 0x006f444e    50
                         call               _jmp_addr_0x006eb9a0                                 // 0x006f444f    e84c75ffff
                         {disp32} mov       ecx, dword ptr [_game]                               // 0x006f4454    8b0d5c19d000
                         add                esp, 0x04                                            // 0x006f445a    83c404
                         push               eax                                                  // 0x006f445d    50
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z                 // 0x006f445e    e84dc5e5ff
                         mov.s              ecx, eax                                             // 0x006f4463    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f4465    e88665f5ff
                         mov.s              ecx, eax                                             // 0x006f446a    8bc8
                         call               ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ // 0x006f446c    e83f84eeff
                         mov.s              ecx, eax                                             // 0x006f4471    8bc8
                         call               _jmp_addr_0x005d06e0                                 // 0x006f4473    e868c2edff
                         pop                ecx                                                  // 0x006f4478    59
                         ret                                                                     // 0x006f4479    c3
                         nop                                                                     // 0x006f447a    90
                         nop                                                                     // 0x006f447b    90
                         nop                                                                     // 0x006f447c    90
                         nop                                                                     // 0x006f447d    90
                         nop                                                                     // 0x006f447e    90
                         nop                                                                     // 0x006f447f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4480    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4486    83ec08
                         push               esi                                                  // 0x006f4489    56
                         push               edi                                                  // 0x006f448a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f448b    8d442408
                         push               eax                                                  // 0x006f448f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4490    e82b270000
                         push               eax                                                  // 0x006f4495    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4496    e8858d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f449b    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f44a1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f44a4    8d54240c
                         push               edx                                                  // 0x006f44a8    52
                         mov.s              edi, eax                                             // 0x006f44a9    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f44ab    e810270000
                         push               eax                                                  // 0x006f44b0    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f44b1    e86a8d0100
                         add                esp, 0x04                                            // 0x006f44b6    83c404
                         test               edi, edi                                             // 0x006f44b9    85ff
                         mov.s              esi, eax                                             // 0x006f44bb    8bf0
                         {disp8} je         _jmp_addr_0x006f44c3                                 // 0x006f44bd    7404
                         test               esi, esi                                             // 0x006f44bf    85f6
                         {disp8} jne        _jmp_addr_0x006f44d0                                 // 0x006f44c1    750d
_jmp_addr_0x006f44c3:    push               0x00c0cf48                                           // 0x006f44c3    6848cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f44c8    e8e31d0000
                         add                esp, 0x04                                            // 0x006f44cd    83c404
_jmp_addr_0x006f44d0:    test               edi, edi                                             // 0x006f44d0    85ff
                         {disp32} je        _jmp_addr_0x006f4570                                 // 0x006f44d2    0f8498000000
                         test               esi, esi                                             // 0x006f44d8    85f6
                         {disp32} je        _jmp_addr_0x006f4570                                 // 0x006f44da    0f8490000000
                         mov                eax, dword ptr [esi]                                 // 0x006f44e0    8b06
                         mov.s              ecx, esi                                             // 0x006f44e2    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f44e4    ff5034
                         test               eax, eax                                             // 0x006f44e7    85c0
                         {disp8} jne        _jmp_addr_0x006f4503                                 // 0x006f44e9    7518
                         mov                edx, dword ptr [edi]                                 // 0x006f44eb    8b17
                         mov.s              ecx, edi                                             // 0x006f44ed    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f44ef    ff5234
                         test               eax, eax                                             // 0x006f44f2    85c0
                         {disp8} jne        _jmp_addr_0x006f4503                                 // 0x006f44f4    750d
                         push               0x00c0cf28                                           // 0x006f44f6    6828cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f44fb    e8b01d0000
                         add                esp, 0x04                                            // 0x006f4500    83c404
_jmp_addr_0x006f4503:    mov                eax, dword ptr [esi]                                 // 0x006f4503    8b06
                         mov.s              ecx, esi                                             // 0x006f4505    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4507    ff5034
                         test               eax, eax                                             // 0x006f450a    85c0
                         {disp8} jne        _jmp_addr_0x006f4515                                 // 0x006f450c    7507
                         mov                edx, dword ptr [edi]                                 // 0x006f450e    8b17
                         mov.s              ecx, edi                                             // 0x006f4510    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f4512    ff5234
_jmp_addr_0x006f4515:    mov                eax, dword ptr [esi]                                 // 0x006f4515    8b06
                         mov.s              ecx, esi                                             // 0x006f4517    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4519    ff5034
                         test               eax, eax                                             // 0x006f451c    85c0
                         {disp8} jne        _jmp_addr_0x006f4531                                 // 0x006f451e    7511
                         mov                edx, dword ptr [edi]                                 // 0x006f4520    8b17
                         mov.s              ecx, edi                                             // 0x006f4522    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f4524    ff5234
                         test               eax, eax                                             // 0x006f4527    85c0
                         {disp8} je         _jmp_addr_0x006f4531                                 // 0x006f4529    7406
                         mov.s              eax, esi                                             // 0x006f452b    8bc6
                         mov.s              esi, edi                                             // 0x006f452d    8bf7
                         mov.s              edi, eax                                             // 0x006f452f    8bf8
_jmp_addr_0x006f4531:    mov                eax, dword ptr [esi]                                 // 0x006f4531    8b06
                         mov.s              ecx, esi                                             // 0x006f4533    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4535    ff5034
                         test               eax, eax                                             // 0x006f4538    85c0
                         {disp8} je         _jmp_addr_0x006f4570                                 // 0x006f453a    7434
                         mov                edx, dword ptr [esi]                                 // 0x006f453c    8b16
                         mov.s              ecx, esi                                             // 0x006f453e    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f4540    ff521c
                         test               eax, eax                                             // 0x006f4543    85c0
                         {disp8} jne        _jmp_addr_0x006f455a                                 // 0x006f4545    7513
                         push               0x00c0cf04                                           // 0x006f4547    6804cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f454c    e85f1d0000
                         add                esp, 0x04                                            // 0x006f4551    83c404
                         pop                edi                                                  // 0x006f4554    5f
                         pop                esi                                                  // 0x006f4555    5e
                         add                esp, 0x08                                            // 0x006f4556    83c408
                         ret                                                                     // 0x006f4559    c3
_jmp_addr_0x006f455a:    mov.s              ecx, eax                                             // 0x006f455a    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f455c    e88f64f5ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]                    // 0x006f4561    8b802c010000
                         push               edi                                                  // 0x006f4567    57
                         push               esi                                                  // 0x006f4568    56
                         mov.s              ecx, eax                                             // 0x006f4569    8bc8
                         call               _jmp_addr_0x005e6bd0                                 // 0x006f456b    e86026efff
_jmp_addr_0x006f4570:    pop                edi                                                  // 0x006f4570    5f
                         pop                esi                                                  // 0x006f4571    5e
                         add                esp, 0x08                                            // 0x006f4572    83c408
                         ret                                                                     // 0x006f4575    c3
                         nop                                                                     // 0x006f4576    90
                         nop                                                                     // 0x006f4577    90
                         nop                                                                     // 0x006f4578    90
                         nop                                                                     // 0x006f4579    90
                         nop                                                                     // 0x006f457a    90
                         nop                                                                     // 0x006f457b    90
                         nop                                                                     // 0x006f457c    90
                         nop                                                                     // 0x006f457d    90
                         nop                                                                     // 0x006f457e    90
                         nop                                                                     // 0x006f457f    90
                         push               ecx                                                  // 0x006f4580    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4581    8b0d105cd900
                         push               esi                                                  // 0x006f4587    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f4588    8d442404
                         push               eax                                                  // 0x006f458c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f458d    e82e260000
                         push               eax                                                  // 0x006f4592    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4593    e8888c0100
                         mov.s              esi, eax                                             // 0x006f4598    8bf0
                         add                esp, 0x04                                            // 0x006f459a    83c404
                         test               esi, esi                                             // 0x006f459d    85f6
                         {disp8} jne        _jmp_addr_0x006f45b1                                 // 0x006f459f    7510
                         push               0x00c0cf48                                           // 0x006f45a1    6848cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f45a6    e8051d0000
                         add                esp, 0x04                                            // 0x006f45ab    83c404
                         pop                esi                                                  // 0x006f45ae    5e
                         pop                ecx                                                  // 0x006f45af    59
                         ret                                                                     // 0x006f45b0    c3
_jmp_addr_0x006f45b1:    mov                edx, dword ptr [esi]                                 // 0x006f45b1    8b16
                         mov.s              ecx, esi                                             // 0x006f45b3    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f45b5    ff5234
                         test               eax, eax                                             // 0x006f45b8    85c0
                         {disp8} jne        _jmp_addr_0x006f45c9                                 // 0x006f45ba    750d
                         push               0x00c0cf28                                           // 0x006f45bc    6828cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f45c1    e8ea1c0000
                         add                esp, 0x04                                            // 0x006f45c6    83c404
_jmp_addr_0x006f45c9:    mov                eax, dword ptr [esi]                                 // 0x006f45c9    8b06
                         mov.s              ecx, esi                                             // 0x006f45cb    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f45cd    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f45d0    8b16
                         mov.s              ecx, esi                                             // 0x006f45d2    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f45d4    ff5234
                         test               eax, eax                                             // 0x006f45d7    85c0
                         {disp8} je         _jmp_addr_0x006f460b                                 // 0x006f45d9    7430
                         mov                eax, dword ptr [esi]                                 // 0x006f45db    8b06
                         mov.s              ecx, esi                                             // 0x006f45dd    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x006f45df    ff501c
                         test               eax, eax                                             // 0x006f45e2    85c0
                         {disp8} jne        _jmp_addr_0x006f45f6                                 // 0x006f45e4    7510
                         push               0x00c0cf64                                           // 0x006f45e6    6864cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f45eb    e8c01c0000
                         add                esp, 0x04                                            // 0x006f45f0    83c404
                         pop                esi                                                  // 0x006f45f3    5e
                         pop                ecx                                                  // 0x006f45f4    59
                         ret                                                                     // 0x006f45f5    c3
_jmp_addr_0x006f45f6:    mov.s              ecx, eax                                             // 0x006f45f6    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f45f8    e8f363f5ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]                    // 0x006f45fd    8b802c010000
                         push               esi                                                  // 0x006f4603    56
                         mov.s              ecx, eax                                             // 0x006f4604    8bc8
                         call               _jmp_addr_0x005e6ea0                                 // 0x006f4606    e89528efff
_jmp_addr_0x006f460b:    pop                esi                                                  // 0x006f460b    5e
                         pop                ecx                                                  // 0x006f460c    59
                         ret                                                                     // 0x006f460d    c3
                         nop                                                                     // 0x006f460e    90
                         nop                                                                     // 0x006f460f    90
                         push               ecx                                                  // 0x006f4610    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4611    8b0d105cd900
                         push               esi                                                  // 0x006f4617    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f4618    8d442404
                         push               eax                                                  // 0x006f461c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f461d    e89e250000
                         push               eax                                                  // 0x006f4622    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4623    e8f88b0100
                         mov.s              esi, eax                                             // 0x006f4628    8bf0
                         add                esp, 0x04                                            // 0x006f462a    83c404
                         test               esi, esi                                             // 0x006f462d    85f6
                         {disp8} jne        _jmp_addr_0x006f4641                                 // 0x006f462f    7510
                         push               0x00c0cf48                                           // 0x006f4631    6848cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4636    e8751c0000
                         add                esp, 0x04                                            // 0x006f463b    83c404
                         pop                esi                                                  // 0x006f463e    5e
                         pop                ecx                                                  // 0x006f463f    59
                         ret                                                                     // 0x006f4640    c3
_jmp_addr_0x006f4641:    mov                edx, dword ptr [esi]                                 // 0x006f4641    8b16
                         mov.s              ecx, esi                                             // 0x006f4643    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4645    ff5234
                         test               eax, eax                                             // 0x006f4648    85c0
                         {disp8} jne        _jmp_addr_0x006f4659                                 // 0x006f464a    750d
                         push               0x00c0cf78                                           // 0x006f464c    6878cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4651    e85a1c0000
                         add                esp, 0x04                                            // 0x006f4656    83c404
_jmp_addr_0x006f4659:    mov                eax, dword ptr [esi]                                 // 0x006f4659    8b06
                         mov.s              ecx, esi                                             // 0x006f465b    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f465d    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f4660    8b16
                         mov.s              ecx, esi                                             // 0x006f4662    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4664    ff5234
                         test               eax, eax                                             // 0x006f4667    85c0
                         {disp8} je         _jmp_addr_0x006f46b3                                 // 0x006f4669    7448
                         mov                eax, dword ptr [esi]                                 // 0x006f466b    8b06
                         mov.s              ecx, esi                                             // 0x006f466d    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x006f466f    ff501c
                         test               eax, eax                                             // 0x006f4672    85c0
                         {disp8} jne        _jmp_addr_0x006f4683                                 // 0x006f4674    750d
                         push               0x00c0cf64                                           // 0x006f4676    6864cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f467b    e8301c0000
                         add                esp, 0x04                                            // 0x006f4680    83c404
_jmp_addr_0x006f4683:    mov                edx, dword ptr [esi]                                 // 0x006f4683    8b16
                         mov.s              ecx, esi                                             // 0x006f4685    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f4687    ff521c
                         mov                eax, dword ptr [esi]                                 // 0x006f468a    8b06
                         mov.s              ecx, esi                                             // 0x006f468c    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x006f468e    ff501c
                         test               eax, eax                                             // 0x006f4691    85c0
                         {disp8} je         _jmp_addr_0x006f46b3                                 // 0x006f4693    741e
                         mov                edx, dword ptr [esi]                                 // 0x006f4695    8b16
                         mov.s              ecx, esi                                             // 0x006f4697    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f4699    ff521c
                         mov.s              ecx, eax                                             // 0x006f469c    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f469e    e84d63f5ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]                    // 0x006f46a3    8b802c010000
                         push               0x0                                                  // 0x006f46a9    6a00
                         push               esi                                                  // 0x006f46ab    56
                         mov.s              ecx, eax                                             // 0x006f46ac    8bc8
                         call               _jmp_addr_0x005e6f70                                 // 0x006f46ae    e8bd28efff
_jmp_addr_0x006f46b3:    pop                esi                                                  // 0x006f46b3    5e
                         pop                ecx                                                  // 0x006f46b4    59
                         ret                                                                     // 0x006f46b5    c3
                         nop                                                                     // 0x006f46b6    90
                         nop                                                                     // 0x006f46b7    90
                         nop                                                                     // 0x006f46b8    90
                         nop                                                                     // 0x006f46b9    90
                         nop                                                                     // 0x006f46ba    90
                         nop                                                                     // 0x006f46bb    90
                         nop                                                                     // 0x006f46bc    90
                         nop                                                                     // 0x006f46bd    90
                         nop                                                                     // 0x006f46be    90
                         nop                                                                     // 0x006f46bf    90
                         push               ecx                                                  // 0x006f46c0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f46c1    8b0d105cd900
                         push               ebx                                                  // 0x006f46c7    53
                         push               esi                                                  // 0x006f46c8    56
                         push               edi                                                  // 0x006f46c9    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f46ca    8d44240c
                         push               eax                                                  // 0x006f46ce    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f46cf    e8ec240000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f46d4    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f46da    8d54240c
                         push               edx                                                  // 0x006f46de    52
                         mov.s              ebx, eax                                             // 0x006f46df    8bd8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f46e1    e8da240000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f46e6    8b0d105cd900
                         mov.s              edi, eax                                             // 0x006f46ec    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f46ee    8d44240c
                         push               eax                                                  // 0x006f46f2    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f46f3    e8c8240000
                         push               eax                                                  // 0x006f46f8    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f46f9    e8228b0100
                         add                esp, 0x04                                            // 0x006f46fe    83c404
                         test               edi, edi                                             // 0x006f4701    85ff
                         mov.s              esi, eax                                             // 0x006f4703    8bf0
                         {disp8} jl         _jmp_addr_0x006f470c                                 // 0x006f4705    7c05
                         cmp                edi, 0x28                                            // 0x006f4707    83ff28
                         {disp8} jl         _jmp_addr_0x006f4719                                 // 0x006f470a    7c0d
_jmp_addr_0x006f470c:    push               0x00c0cfc0                                           // 0x006f470c    68c0cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4711    e89a1b0000
                         add                esp, 0x04                                            // 0x006f4716    83c404
_jmp_addr_0x006f4719:    test               esi, esi                                             // 0x006f4719    85f6
                         {disp8} jne        _jmp_addr_0x006f472f                                 // 0x006f471b    7512
                         push               0x00c0cfac                                           // 0x006f471d    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4722    e8891b0000
                         add                esp, 0x04                                            // 0x006f4727    83c404
                         pop                edi                                                  // 0x006f472a    5f
                         pop                esi                                                  // 0x006f472b    5e
                         pop                ebx                                                  // 0x006f472c    5b
                         pop                ecx                                                  // 0x006f472d    59
                         ret                                                                     // 0x006f472e    c3
_jmp_addr_0x006f472f:    mov                edx, dword ptr [esi]                                 // 0x006f472f    8b16
                         mov.s              ecx, esi                                             // 0x006f4731    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4733    ff5234
                         test               eax, eax                                             // 0x006f4736    85c0
                         {disp8} jne        _jmp_addr_0x006f4747                                 // 0x006f4738    750d
                         push               0x00c0cf98                                           // 0x006f473a    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f473f    e86c1b0000
                         add                esp, 0x04                                            // 0x006f4744    83c404
_jmp_addr_0x006f4747:    mov                eax, dword ptr [esi]                                 // 0x006f4747    8b06
                         mov.s              ecx, esi                                             // 0x006f4749    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f474b    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f474e    8b16
                         mov.s              ecx, esi                                             // 0x006f4750    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4752    ff5234
                         test               eax, eax                                             // 0x006f4755    85c0
                         {disp8} je         _jmp_addr_0x006f4772                                 // 0x006f4757    7419
                         mov                eax, dword ptr [esi]                                 // 0x006f4759    8b06
                         push               0x1                                                  // 0x006f475b    6a01
                         push               ebx                                                  // 0x006f475d    53
                         push               edi                                                  // 0x006f475e    57
                         mov.s              ecx, esi                                             // 0x006f475f    8bce
                         call               dword ptr [eax + 0xa4]                               // 0x006f4761    ff90a4000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]                    // 0x006f4767    8b8864010000
                         call               _jmp_addr_0x004dce20                                 // 0x006f476d    e8ae86deff
_jmp_addr_0x006f4772:    pop                edi                                                  // 0x006f4772    5f
                         pop                esi                                                  // 0x006f4773    5e
                         pop                ebx                                                  // 0x006f4774    5b
                         pop                ecx                                                  // 0x006f4775    59
                         ret                                                                     // 0x006f4776    c3
                         nop                                                                     // 0x006f4777    90
                         nop                                                                     // 0x006f4778    90
                         nop                                                                     // 0x006f4779    90
                         nop                                                                     // 0x006f477a    90
                         nop                                                                     // 0x006f477b    90
                         nop                                                                     // 0x006f477c    90
                         nop                                                                     // 0x006f477d    90
                         nop                                                                     // 0x006f477e    90
                         nop                                                                     // 0x006f477f    90
                         push               ecx                                                  // 0x006f4780    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4781    8b0d105cd900
                         push               esi                                                  // 0x006f4787    56
                         push               edi                                                  // 0x006f4788    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4789    8d442408
                         push               eax                                                  // 0x006f478d    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f478e    e82d240000
                         push               eax                                                  // 0x006f4793    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4794    e8878a0100
                         mov.s              esi, eax                                             // 0x006f4799    8bf0
                         add                esp, 0x04                                            // 0x006f479b    83c404
                         test               esi, esi                                             // 0x006f479e    85f6
                         {disp8} jne        _jmp_addr_0x006f47b3                                 // 0x006f47a0    7511
                         push               0x00c0cfac                                           // 0x006f47a2    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f47a7    e8041b0000
                         add                esp, 0x04                                            // 0x006f47ac    83c404
                         pop                edi                                                  // 0x006f47af    5f
                         pop                esi                                                  // 0x006f47b0    5e
                         pop                ecx                                                  // 0x006f47b1    59
                         ret                                                                     // 0x006f47b2    c3
_jmp_addr_0x006f47b3:    mov                edx, dword ptr [esi]                                 // 0x006f47b3    8b16
                         mov.s              ecx, esi                                             // 0x006f47b5    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f47b7    ff5234
                         test               eax, eax                                             // 0x006f47ba    85c0
                         {disp8} jne        _jmp_addr_0x006f47cb                                 // 0x006f47bc    750d
                         push               0x00c0cf98                                           // 0x006f47be    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f47c3    e8e81a0000
                         add                esp, 0x04                                            // 0x006f47c8    83c404
_jmp_addr_0x006f47cb:    mov                eax, dword ptr [esi]                                 // 0x006f47cb    8b06
                         mov.s              ecx, esi                                             // 0x006f47cd    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f47cf    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f47d2    8b16
                         mov.s              ecx, esi                                             // 0x006f47d4    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f47d6    ff5234
                         test               eax, eax                                             // 0x006f47d9    85c0
                         {disp8} je         _jmp_addr_0x006f4817                                 // 0x006f47db    743a
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x006f47dd    8b8e64010000
                         {disp32} mov       edi, dword ptr [ecx + 0x00000700]                    // 0x006f47e3    8bb900070000
                         call               _jmp_addr_0x004dcf20                                 // 0x006f47e9    e83287deff
                         cmp                edi, 0x28                                            // 0x006f47ee    83ff28
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x006f47f1    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x00000700], 0x00000028             // 0x006f47f7    c7800007000028000000
                         {disp8} jge        _jmp_addr_0x006f4817                                 // 0x006f4801    7d14
                         {disp32} mov       esi, dword ptr [esi + 0x00000164]                    // 0x006f4803    8bb664010000
                         add                esi, 0x08                                            // 0x006f4809    83c608
                         {disp32} mov       dword ptr [esi + edi * 0x4 + 0x00000148], 0x00000000 // 0x006f480c    c784be4801000000000000
_jmp_addr_0x006f4817:    pop                edi                                                  // 0x006f4817    5f
                         pop                esi                                                  // 0x006f4818    5e
                         pop                ecx                                                  // 0x006f4819    59
                         ret                                                                     // 0x006f481a    c3
                         nop                                                                     // 0x006f481b    90
                         nop                                                                     // 0x006f481c    90
                         nop                                                                     // 0x006f481d    90
                         nop                                                                     // 0x006f481e    90
                         nop                                                                     // 0x006f481f    90
                         push               ecx                                                  // 0x006f4820    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4821    8b0d105cd900
                         push               esi                                                  // 0x006f4827    56
                         push               edi                                                  // 0x006f4828    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4829    8d442408
                         push               eax                                                  // 0x006f482d    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f482e    e88d230000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4833    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                          // 0x006f4839    8d542408
                         push               edx                                                  // 0x006f483d    52
                         mov.s              edi, eax                                             // 0x006f483e    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4840    e87b230000
                         push               eax                                                  // 0x006f4845    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4846    e8d5890100
                         mov.s              esi, eax                                             // 0x006f484b    8bf0
                         add                esp, 0x04                                            // 0x006f484d    83c404
                         test               esi, esi                                             // 0x006f4850    85f6
                         {disp8} jne        _jmp_addr_0x006f4865                                 // 0x006f4852    7511
                         push               0x00c0cfac                                           // 0x006f4854    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4859    e8521a0000
                         add                esp, 0x04                                            // 0x006f485e    83c404
                         pop                edi                                                  // 0x006f4861    5f
                         pop                esi                                                  // 0x006f4862    5e
                         pop                ecx                                                  // 0x006f4863    59
                         ret                                                                     // 0x006f4864    c3
_jmp_addr_0x006f4865:    mov                eax, dword ptr [esi]                                 // 0x006f4865    8b06
                         mov.s              ecx, esi                                             // 0x006f4867    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4869    ff5034
                         test               eax, eax                                             // 0x006f486c    85c0
                         {disp8} jne        _jmp_addr_0x006f487d                                 // 0x006f486e    750d
                         push               0x00c0cf98                                           // 0x006f4870    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4875    e8361a0000
                         add                esp, 0x04                                            // 0x006f487a    83c404
_jmp_addr_0x006f487d:    mov                edx, dword ptr [esi]                                 // 0x006f487d    8b16
                         mov.s              ecx, esi                                             // 0x006f487f    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4881    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4884    8b06
                         mov.s              ecx, esi                                             // 0x006f4886    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4888    ff5034
                         test               eax, eax                                             // 0x006f488b    85c0
                         {disp8} je         _jmp_addr_0x006f4899                                 // 0x006f488d    740a
                         push               0x0                                                  // 0x006f488f    6a00
                         push               edi                                                  // 0x006f4891    57
                         mov.s              ecx, esi                                             // 0x006f4892    8bce
                         call               _jmp_addr_0x004c59c0                                 // 0x006f4894    e82711ddff
_jmp_addr_0x006f4899:    pop                edi                                                  // 0x006f4899    5f
                         pop                esi                                                  // 0x006f489a    5e
                         pop                ecx                                                  // 0x006f489b    59
                         ret                                                                     // 0x006f489c    c3
                         nop                                                                     // 0x006f489d    90
                         nop                                                                     // 0x006f489e    90
                         nop                                                                     // 0x006f489f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f48a0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f48a6    83ec08
                         push               esi                                                  // 0x006f48a9    56
                         push               edi                                                  // 0x006f48aa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f48ab    8d442408
                         push               eax                                                  // 0x006f48af    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f48b0    e80b230000
                         push               eax                                                  // 0x006f48b5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f48b6    e865890100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f48bb    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f48c1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f48c4    8d54240c
                         push               edx                                                  // 0x006f48c8    52
                         mov.s              esi, eax                                             // 0x006f48c9    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f48cb    e8f0220000
                         push               eax                                                  // 0x006f48d0    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f48d1    e84a890100
                         add                esp, 0x04                                            // 0x006f48d6    83c404
                         test               esi, esi                                             // 0x006f48d9    85f6
                         mov.s              edi, eax                                             // 0x006f48db    8bf8
                         {disp8} je         _jmp_addr_0x006f48e3                                 // 0x006f48dd    7404
                         test               edi, edi                                             // 0x006f48df    85ff
                         {disp8} jne        _jmp_addr_0x006f48f0                                 // 0x006f48e1    750d
_jmp_addr_0x006f48e3:    push               0x00c0cfd0                                           // 0x006f48e3    68d0cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f48e8    e8c3190000
                         add                esp, 0x04                                            // 0x006f48ed    83c404
_jmp_addr_0x006f48f0:    test               esi, esi                                             // 0x006f48f0    85f6
                         {disp8} je         _jmp_addr_0x006f496c                                 // 0x006f48f2    7478
                         test               edi, edi                                             // 0x006f48f4    85ff
                         {disp8} je         _jmp_addr_0x006f496c                                 // 0x006f48f6    7474
                         mov                eax, dword ptr [edi]                                 // 0x006f48f8    8b07
                         mov.s              ecx, edi                                             // 0x006f48fa    8bcf
                         call               dword ptr [eax + 0x34]                               // 0x006f48fc    ff5034
                         test               eax, eax                                             // 0x006f48ff    85c0
                         {disp8} jne        _jmp_addr_0x006f4910                                 // 0x006f4901    750d
                         push               0x00c0cf98                                           // 0x006f4903    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4908    e8a3190000
                         add                esp, 0x04                                            // 0x006f490d    83c404
_jmp_addr_0x006f4910:    mov                edx, dword ptr [edi]                                 // 0x006f4910    8b17
                         mov.s              ecx, edi                                             // 0x006f4912    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f4914    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4917    8b06
                         mov.s              ecx, esi                                             // 0x006f4919    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f491b    ff5034
                         test               eax, eax                                             // 0x006f491e    85c0
                         {disp8} jne        _jmp_addr_0x006f492f                                 // 0x006f4920    750d
                         push               0x00c0cf98                                           // 0x006f4922    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4927    e884190000
                         add                esp, 0x04                                            // 0x006f492c    83c404
_jmp_addr_0x006f492f:    mov                edx, dword ptr [esi]                                 // 0x006f492f    8b16
                         mov.s              ecx, esi                                             // 0x006f4931    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4933    ff5234
                         mov                eax, dword ptr [edi]                                 // 0x006f4936    8b07
                         mov.s              ecx, edi                                             // 0x006f4938    8bcf
                         call               dword ptr [eax + 0x34]                               // 0x006f493a    ff5034
                         test               eax, eax                                             // 0x006f493d    85c0
                         {disp8} je         _jmp_addr_0x006f496c                                 // 0x006f493f    742b
                         mov                edx, dword ptr [esi]                                 // 0x006f4941    8b16
                         mov.s              ecx, esi                                             // 0x006f4943    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4945    ff5234
                         test               eax, eax                                             // 0x006f4948    85c0
                         {disp8} je         _jmp_addr_0x006f496c                                 // 0x006f494a    7420
                         mov                eax, dword ptr [edi]                                 // 0x006f494c    8b07
                         mov.s              ecx, edi                                             // 0x006f494e    8bcf
                         call               dword ptr [eax + 0xa4]                               // 0x006f4950    ff90a4000000
                         mov                edx, dword ptr [esi]                                 // 0x006f4956    8b16
                         mov.s              ecx, esi                                             // 0x006f4958    8bce
                         mov.s              edi, eax                                             // 0x006f495a    8bf8
                         call               dword ptr [edx + 0xa4]                               // 0x006f495c    ff92a4000000
                         push               eax                                                  // 0x006f4962    50
                         push               edi                                                  // 0x006f4963    57
                         call               _jmp_addr_0x0047bee0                                 // 0x006f4964    e87775d8ff
                         add                esp, 0x08                                            // 0x006f4969    83c408
_jmp_addr_0x006f496c:    pop                edi                                                  // 0x006f496c    5f
                         pop                esi                                                  // 0x006f496d    5e
                         add                esp, 0x08                                            // 0x006f496e    83c408
                         ret                                                                     // 0x006f4971    c3
                         nop                                                                     // 0x006f4972    90
                         nop                                                                     // 0x006f4973    90
                         nop                                                                     // 0x006f4974    90
                         nop                                                                     // 0x006f4975    90
                         nop                                                                     // 0x006f4976    90
                         nop                                                                     // 0x006f4977    90
                         nop                                                                     // 0x006f4978    90
                         nop                                                                     // 0x006f4979    90
                         nop                                                                     // 0x006f497a    90
                         nop                                                                     // 0x006f497b    90
                         nop                                                                     // 0x006f497c    90
                         nop                                                                     // 0x006f497d    90
                         nop                                                                     // 0x006f497e    90
                         nop                                                                     // 0x006f497f    90
                         push               ecx                                                  // 0x006f4980    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4981    8b0d105cd900
                         push               esi                                                  // 0x006f4987    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f4988    8d442404
                         push               eax                                                  // 0x006f498c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f498d    e82e220000
                         push               eax                                                  // 0x006f4992    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4993    e888880100
                         mov.s              esi, eax                                             // 0x006f4998    8bf0
                         add                esp, 0x04                                            // 0x006f499a    83c404
                         test               esi, esi                                             // 0x006f499d    85f6
                         {disp8} jne        _jmp_addr_0x006f49c0                                 // 0x006f499f    751f
                         push               0x00c0cfac                                           // 0x006f49a1    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f49a6    e805190000
                         add                esp, 0x04                                            // 0x006f49ab    83c404
_jmp_addr_0x006f49ae:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f49ae    8b0d105cd900
                         push               0x6                                                  // 0x006f49b4    6a06
                         push               0x0                                                  // 0x006f49b6    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f49b8    e8e3210000
                         pop                esi                                                  // 0x006f49bd    5e
                         pop                ecx                                                  // 0x006f49be    59
                         ret                                                                     // 0x006f49bf    c3
_jmp_addr_0x006f49c0:    mov                edx, dword ptr [esi]                                 // 0x006f49c0    8b16
                         mov.s              ecx, esi                                             // 0x006f49c2    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f49c4    ff5234
                         test               eax, eax                                             // 0x006f49c7    85c0
                         {disp8} jne        _jmp_addr_0x006f49d8                                 // 0x006f49c9    750d
                         push               0x00c0cf98                                           // 0x006f49cb    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f49d0    e8db180000
                         add                esp, 0x04                                            // 0x006f49d5    83c404
_jmp_addr_0x006f49d8:    mov                eax, dword ptr [esi]                                 // 0x006f49d8    8b06
                         mov.s              ecx, esi                                             // 0x006f49da    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f49dc    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f49df    8b16
                         mov.s              ecx, esi                                             // 0x006f49e1    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f49e3    ff5234
                         test               eax, eax                                             // 0x006f49e6    85c0
                         {disp8} je         _jmp_addr_0x006f49ae                                 // 0x006f49e8    74c4
                         mov                eax, dword ptr [esi]                                 // 0x006f49ea    8b06
                         mov.s              ecx, esi                                             // 0x006f49ec    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x006f49ee    ff501c
                         test               eax, eax                                             // 0x006f49f1    85c0
                         {disp8} je         _jmp_addr_0x006f49ae                                 // 0x006f49f3    74b9
                         mov.s              ecx, esi                                             // 0x006f49f5    8bce
                         call               _jmp_addr_0x004cf060                                 // 0x006f49f7    e864a6ddff
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f49fc    8b0d105cd900
                         neg                eax                                                  // 0x006f4a02    f7d8
                         sbb.s              eax, eax                                             // 0x006f4a04    1bc0
                         neg                eax                                                  // 0x006f4a06    f7d8
                         push               0x6                                                  // 0x006f4a08    6a06
                         push               eax                                                  // 0x006f4a0a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4a0b    e890210000
                         pop                esi                                                  // 0x006f4a10    5e
                         pop                ecx                                                  // 0x006f4a11    59
                         ret                                                                     // 0x006f4a12    c3
                         nop                                                                     // 0x006f4a13    90
                         nop                                                                     // 0x006f4a14    90
                         nop                                                                     // 0x006f4a15    90
                         nop                                                                     // 0x006f4a16    90
                         nop                                                                     // 0x006f4a17    90
                         nop                                                                     // 0x006f4a18    90
                         nop                                                                     // 0x006f4a19    90
                         nop                                                                     // 0x006f4a1a    90
                         nop                                                                     // 0x006f4a1b    90
                         nop                                                                     // 0x006f4a1c    90
                         nop                                                                     // 0x006f4a1d    90
                         nop                                                                     // 0x006f4a1e    90
                         nop                                                                     // 0x006f4a1f    90
                         sub                esp, 0x0c                                            // 0x006f4a20    83ec0c
                         push               esi                                                  // 0x006f4a23    56
                         {disp32} mov       esi, dword ptr [_script_dll]                         // 0x006f4a24    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4a2a    8d442408
                         push               eax                                                  // 0x006f4a2e    50
                         mov.s              ecx, esi                                             // 0x006f4a2f    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4a31    e88a210000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                          // 0x006f4a36    8d4c2404
                         push               ecx                                                  // 0x006f4a3a    51
                         mov.s              ecx, esi                                             // 0x006f4a3b    8bce
                         {disp8} mov        dword ptr [esp + 0x0c], eax                          // 0x006f4a3d    8944240c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4a41    e87a210000
                         {disp8} lea        edx, dword ptr [esp + 0x04]                          // 0x006f4a46    8d542404
                         push               edx                                                  // 0x006f4a4a    52
                         mov.s              ecx, esi                                             // 0x006f4a4b    8bce
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4a4d    e86e210000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4a52    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                          // 0x006f4a58    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f4a5c    8d44240c
                         push               eax                                                  // 0x006f4a60    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4a61    e85a210000
                         push               eax                                                  // 0x006f4a66    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4a67    e8b4870100
                         mov.s              esi, eax                                             // 0x006f4a6c    8bf0
                         add                esp, 0x04                                            // 0x006f4a6e    83c404
                         test               esi, esi                                             // 0x006f4a71    85f6
                         {disp8} jne        _jmp_addr_0x006f4a87                                 // 0x006f4a73    7512
                         push               0x00c0cfac                                           // 0x006f4a75    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4a7a    e831180000
                         add                esp, 0x04                                            // 0x006f4a7f    83c404
                         pop                esi                                                  // 0x006f4a82    5e
                         add                esp, 0x0c                                            // 0x006f4a83    83c40c
                         ret                                                                     // 0x006f4a86    c3
_jmp_addr_0x006f4a87:    mov                edx, dword ptr [esi]                                 // 0x006f4a87    8b16
                         mov.s              ecx, esi                                             // 0x006f4a89    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4a8b    ff5234
                         test               eax, eax                                             // 0x006f4a8e    85c0
                         {disp8} jne        _jmp_addr_0x006f4a9f                                 // 0x006f4a90    750d
                         push               0x00c0cf98                                           // 0x006f4a92    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4a97    e814180000
                         add                esp, 0x04                                            // 0x006f4a9c    83c404
_jmp_addr_0x006f4a9f:    mov                eax, dword ptr [esi]                                 // 0x006f4a9f    8b06
                         mov.s              ecx, esi                                             // 0x006f4aa1    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4aa3    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f4aa6    8b16
                         mov.s              ecx, esi                                             // 0x006f4aa8    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4aaa    ff5234
                         test               eax, eax                                             // 0x006f4aad    85c0
                         {disp8} je         _jmp_addr_0x006f4ae5                                 // 0x006f4aaf    7434
                         {disp8} fld        dword ptr [esp + 0x04]                               // 0x006f4ab1    d9442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f4ab5    d80d00c48a00
                         call               _jmp_addr_0x007a1400                                 // 0x006f4abb    e840c90a00
                         {disp8} fld        dword ptr [esp + 0x08]                               // 0x006f4ac0    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]                     // 0x006f4ac4    d80d00c48a00
                         {disp32} mov       dword ptr [esi + 0x00001200], eax                    // 0x006f4aca    898600120000
                         call               _jmp_addr_0x007a1400                                 // 0x006f4ad0    e82bc90a00
                         {disp32} mov       dword ptr [esi + 0x00001204], eax                    // 0x006f4ad5    898604120000
                         {disp32} mov       dword ptr [esi + 0x00001208], 0x00000000             // 0x006f4adb    c7860812000000000000
_jmp_addr_0x006f4ae5:    pop                esi                                                  // 0x006f4ae5    5e
                         add                esp, 0x0c                                            // 0x006f4ae6    83c40c
                         ret                                                                     // 0x006f4ae9    c3
                         nop                                                                     // 0x006f4aea    90
                         nop                                                                     // 0x006f4aeb    90
                         nop                                                                     // 0x006f4aec    90
                         nop                                                                     // 0x006f4aed    90
                         nop                                                                     // 0x006f4aee    90
                         nop                                                                     // 0x006f4aef    90
                         sub                esp, 0x28                                            // 0x006f4af0    83ec28
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4af3    8b0d105cd900
                         push               ebx                                                  // 0x006f4af9    53
                         push               ebp                                                  // 0x006f4afa    55
                         push               esi                                                  // 0x006f4afb    56
                         push               edi                                                  // 0x006f4afc    57
                         {disp8} lea        eax, dword ptr [esp + 0x18]                          // 0x006f4afd    8d442418
                         push               eax                                                  // 0x006f4b01    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b02    e8b9200000
                         push               eax                                                  // 0x006f4b07    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4b08    e813870100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4b0d    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4b13    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                          // 0x006f4b16    8d54241c
                         push               edx                                                  // 0x006f4b1a    52
                         mov.s              esi, eax                                             // 0x006f4b1b    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b1d    e89e200000
                         push               eax                                                  // 0x006f4b22    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4b23    e8f8860100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4b28    8b0d105cd900
                         mov.s              ebx, eax                                             // 0x006f4b2e    8bd8
                         add                esp, 0x04                                            // 0x006f4b30    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                          // 0x006f4b33    8d442414
                         push               eax                                                  // 0x006f4b37    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b38    e883200000
                         {disp32} mov       edi, dword ptr [_script_dll]                         // 0x006f4b3d    8b3d105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                          // 0x006f4b43    8d4c2410
                         push               ecx                                                  // 0x006f4b47    51
                         mov.s              ecx, edi                                             // 0x006f4b48    8bcf
                         mov.s              ebp, eax                                             // 0x006f4b4a    8be8
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000                   // 0x006f4b4c    c744241800000000
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b54    e867200000
                         mov.s              edx, eax                                             // 0x006f4b59    8bd0
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f4b5b    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x10]                          // 0x006f4b5f    8d442410
                         push               eax                                                  // 0x006f4b63    50
                         mov.s              ecx, edi                                             // 0x006f4b64    8bcf
                         {disp8} mov        dword ptr [esp + 0x2c], edx                          // 0x006f4b66    8954242c
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b6a    e851200000
                         mov.s              ecx, eax                                             // 0x006f4b6f    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f4b71    8d542410
                         {disp8} mov        dword ptr [esp + 0x24], ecx                          // 0x006f4b75    894c2424
                         push               edx                                                  // 0x006f4b79    52
                         mov.s              ecx, edi                                             // 0x006f4b7a    8bcf
                         {disp8} mov        dword ptr [esp + 0x14], eax                          // 0x006f4b7c    89442414
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4b80    e83b200000
                         test               esi, esi                                             // 0x006f4b85    85f6
                         {disp8} mov        dword ptr [esp + 0x10], eax                          // 0x006f4b87    89442410
                         {disp8} mov        dword ptr [esp + 0x20], eax                          // 0x006f4b8b    89442420
                         {disp8} je         _jmp_addr_0x006f4b95                                 // 0x006f4b8f    7404
                         test               ebx, ebx                                             // 0x006f4b91    85db
                         {disp8} jne        _jmp_addr_0x006f4ba2                                 // 0x006f4b93    750d
_jmp_addr_0x006f4b95:    push               0x00c0d00c                                           // 0x006f4b95    680cd0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4b9a    e811170000
                         add                esp, 0x04                                            // 0x006f4b9f    83c404
_jmp_addr_0x006f4ba2:    test               esi, esi                                             // 0x006f4ba2    85f6
                         {disp32} je        _jmp_addr_0x006f4c8b                                 // 0x006f4ba4    0f84e1000000
                         test               ebx, ebx                                             // 0x006f4baa    85db
                         {disp32} je        _jmp_addr_0x006f4c8b                                 // 0x006f4bac    0f84d9000000
                         mov                edx, dword ptr [ebx]                                 // 0x006f4bb2    8b13
                         mov.s              ecx, ebx                                             // 0x006f4bb4    8bcb
                         call               dword ptr [edx + 0x34]                               // 0x006f4bb6    ff5234
                         test               eax, eax                                             // 0x006f4bb9    85c0
                         {disp8} jne        _jmp_addr_0x006f4bca                                 // 0x006f4bbb    750d
                         push               0x00c0cf98                                           // 0x006f4bbd    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4bc2    e8e9160000
                         add                esp, 0x04                                            // 0x006f4bc7    83c404
_jmp_addr_0x006f4bca:    mov                eax, dword ptr [ebx]                                 // 0x006f4bca    8b03
                         mov.s              ecx, ebx                                             // 0x006f4bcc    8bcb
                         call               dword ptr [eax + 0x34]                               // 0x006f4bce    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f4bd1    8b16
                         mov.s              ecx, esi                                             // 0x006f4bd3    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4bd5    ff5234
                         test               eax, eax                                             // 0x006f4bd8    85c0
                         {disp8} jne        _jmp_addr_0x006f4be9                                 // 0x006f4bda    750d
                         push               0x00c0cf98                                           // 0x006f4bdc    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4be1    e8ca160000
                         add                esp, 0x04                                            // 0x006f4be6    83c404
_jmp_addr_0x006f4be9:    mov                eax, dword ptr [esi]                                 // 0x006f4be9    8b06
                         mov.s              ecx, esi                                             // 0x006f4beb    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4bed    ff5034
                         mov                edx, dword ptr [ebx]                                 // 0x006f4bf0    8b13
                         mov.s              ecx, ebx                                             // 0x006f4bf2    8bcb
                         call               dword ptr [edx + 0xa4]                               // 0x006f4bf4    ff92a4000000
                         mov.s              edi, eax                                             // 0x006f4bfa    8bf8
                         mov                eax, dword ptr [esi]                                 // 0x006f4bfc    8b06
                         mov.s              ecx, esi                                             // 0x006f4bfe    8bce
                         call               dword ptr [eax + 0xa4]                               // 0x006f4c00    ff90a4000000
                         push               ebp                                                  // 0x006f4c06    55
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                          // 0x006f4c07    8d4c2424
                         push               ecx                                                  // 0x006f4c0b    51
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                          // 0x006f4c0c    8d4c2434
                         mov.s              esi, eax                                             // 0x006f4c10    8bf0
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f4c12    e849e5f0ff
                         push               eax                                                  // 0x006f4c17    50
                         call               _jmp_addr_0x00424e00                                 // 0x006f4c18    e8e301d3ff
                         add                esp, 0x08                                            // 0x006f4c1d    83c408
                         test               eax, eax                                             // 0x006f4c20    85c0
                         {disp8} jne        _jmp_addr_0x006f4c67                                 // 0x006f4c22    7543
                         push               ebp                                                  // 0x006f4c24    55
                         push               esi                                                  // 0x006f4c25    56
                         push               edi                                                  // 0x006f4c26    57
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                          // 0x006f4c27    8d54242c
                         push               edx                                                  // 0x006f4c2b    52
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                          // 0x006f4c2c    8d4c243c
                         call               @__ct__9MapCoordsFRC7LHPoint@12                      // 0x006f4c30    e82be5f0ff
                         push               eax                                                  // 0x006f4c35    50
                         call               _jmp_addr_0x00424e70                                 // 0x006f4c36    e83502d3ff
                         add                esp, 0x10                                            // 0x006f4c3b    83c410
                         test               eax, eax                                             // 0x006f4c3e    85c0
                         mov                ecx, 0x00000001                                      // 0x006f4c40    b901000000
                         {disp8} je         _jmp_addr_0x006f4c8b                                 // 0x006f4c45    7444
                         push               ecx                                                  // 0x006f4c47    51
                         push               eax                                                  // 0x006f4c48    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f4c49    e8a2840100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4c4e    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f4c54    83c408
                         push               0x4                                                  // 0x006f4c57    6a04
                         push               eax                                                  // 0x006f4c59    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4c5a    e8411f0000
                         pop                edi                                                  // 0x006f4c5f    5f
                         pop                esi                                                  // 0x006f4c60    5e
                         pop                ebp                                                  // 0x006f4c61    5d
                         pop                ebx                                                  // 0x006f4c62    5b
                         add                esp, 0x28                                            // 0x006f4c63    83c428
                         ret                                                                     // 0x006f4c66    c3
_jmp_addr_0x006f4c67:    {disp8} mov        ecx, dword ptr [esp + 0x14]                          // 0x006f4c67    8b4c2414
                         push               ecx                                                  // 0x006f4c6b    51
                         push               eax                                                  // 0x006f4c6c    50
                         call               _jmp_addr_0x0070d0f0                                 // 0x006f4c6d    e87e840100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4c72    8b0d105cd900
                         add                esp, 0x08                                            // 0x006f4c78    83c408
                         push               0x4                                                  // 0x006f4c7b    6a04
                         push               eax                                                  // 0x006f4c7d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4c7e    e81d1f0000
                         pop                edi                                                  // 0x006f4c83    5f
                         pop                esi                                                  // 0x006f4c84    5e
                         pop                ebp                                                  // 0x006f4c85    5d
                         pop                ebx                                                  // 0x006f4c86    5b
                         add                esp, 0x28                                            // 0x006f4c87    83c428
                         ret                                                                     // 0x006f4c8a    c3
_jmp_addr_0x006f4c8b:    push               0x00c0cff0                                           // 0x006f4c8b    68f0cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4c90    e81b160000
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4c95    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4c9b    83c404
                         push               0x4                                                  // 0x006f4c9e    6a04
                         push               0x0                                                  // 0x006f4ca0    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4ca2    e8f91e0000
                         pop                edi                                                  // 0x006f4ca7    5f
                         pop                esi                                                  // 0x006f4ca8    5e
                         pop                ebp                                                  // 0x006f4ca9    5d
                         pop                ebx                                                  // 0x006f4caa    5b
                         add                esp, 0x28                                            // 0x006f4cab    83c428
                         ret                                                                     // 0x006f4cae    c3
                         nop                                                                     // 0x006f4caf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4cb0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4cb6    83ec08
                         push               esi                                                  // 0x006f4cb9    56
                         push               edi                                                  // 0x006f4cba    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4cbb    8d442408
                         push               eax                                                  // 0x006f4cbf    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4cc0    e8fb1e0000
                         push               eax                                                  // 0x006f4cc5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4cc6    e855850100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4ccb    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4cd1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f4cd4    8d54240c
                         push               edx                                                  // 0x006f4cd8    52
                         mov.s              esi, eax                                             // 0x006f4cd9    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4cdb    e8e01e0000
                         test               esi, esi                                             // 0x006f4ce0    85f6
                         mov.s              edi, eax                                             // 0x006f4ce2    8bf8
                         {disp8} jne        _jmp_addr_0x006f4cf9                                 // 0x006f4ce4    7513
                         push               0x00c0cfac                                           // 0x006f4ce6    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4ceb    e8c0150000
                         add                esp, 0x04                                            // 0x006f4cf0    83c404
                         pop                edi                                                  // 0x006f4cf3    5f
                         pop                esi                                                  // 0x006f4cf4    5e
                         add                esp, 0x08                                            // 0x006f4cf5    83c408
                         ret                                                                     // 0x006f4cf8    c3
_jmp_addr_0x006f4cf9:    mov                eax, dword ptr [esi]                                 // 0x006f4cf9    8b06
                         mov.s              ecx, esi                                             // 0x006f4cfb    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4cfd    ff5034
                         test               eax, eax                                             // 0x006f4d00    85c0
                         {disp8} jne        _jmp_addr_0x006f4d11                                 // 0x006f4d02    750d
                         push               0x00c0cf98                                           // 0x006f4d04    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4d09    e8a2150000
                         add                esp, 0x04                                            // 0x006f4d0e    83c404
_jmp_addr_0x006f4d11:    mov                edx, dword ptr [esi]                                 // 0x006f4d11    8b16
                         mov.s              ecx, esi                                             // 0x006f4d13    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4d15    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4d18    8b06
                         mov.s              ecx, esi                                             // 0x006f4d1a    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4d1c    ff5034
                         test               eax, eax                                             // 0x006f4d1f    85c0
                         {disp8} je         _jmp_addr_0x006f4d36                                 // 0x006f4d21    7413
                         {disp32} mov       edx, dword ptr [esi + 0x00000164]                    // 0x006f4d23    8b9664010000
                         xor.s              ecx, ecx                                             // 0x006f4d29    33c9
                         test               edi, edi                                             // 0x006f4d2b    85ff
                         sete               cl                                                   // 0x006f4d2d    0f94c1
                         {disp32} mov       dword ptr [edx + 0x0001d488], ecx                    // 0x006f4d30    898a88d40100
_jmp_addr_0x006f4d36:    pop                edi                                                  // 0x006f4d36    5f
                         pop                esi                                                  // 0x006f4d37    5e
                         add                esp, 0x08                                            // 0x006f4d38    83c408
                         ret                                                                     // 0x006f4d3b    c3
                         nop                                                                     // 0x006f4d3c    90
                         nop                                                                     // 0x006f4d3d    90
                         nop                                                                     // 0x006f4d3e    90
                         nop                                                                     // 0x006f4d3f    90
                         push               ecx                                                  // 0x006f4d40    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4d41    8b0d105cd900
                         push               esi                                                  // 0x006f4d47    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f4d48    8d442404
                         push               eax                                                  // 0x006f4d4c    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4d4d    e86e1e0000
                         push               eax                                                  // 0x006f4d52    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4d53    e8c8840100
                         mov.s              esi, eax                                             // 0x006f4d58    8bf0
                         add                esp, 0x04                                            // 0x006f4d5a    83c404
                         test               esi, esi                                             // 0x006f4d5d    85f6
                         {disp8} jne        _jmp_addr_0x006f4d80                                 // 0x006f4d5f    751f
                         push               0x00c0cfac                                           // 0x006f4d61    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4d66    e845150000
                         add                esp, 0x04                                            // 0x006f4d6b    83c404
_jmp_addr_0x006f4d6e:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4d6e    8b0d105cd900
                         push               0x6                                                  // 0x006f4d74    6a06
                         push               0x0                                                  // 0x006f4d76    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4d78    e8231e0000
                         pop                esi                                                  // 0x006f4d7d    5e
                         pop                ecx                                                  // 0x006f4d7e    59
                         ret                                                                     // 0x006f4d7f    c3
_jmp_addr_0x006f4d80:    mov                edx, dword ptr [esi]                                 // 0x006f4d80    8b16
                         mov.s              ecx, esi                                             // 0x006f4d82    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4d84    ff5234
                         test               eax, eax                                             // 0x006f4d87    85c0
                         {disp8} jne        _jmp_addr_0x006f4d98                                 // 0x006f4d89    750d
                         push               0x00c0cf98                                           // 0x006f4d8b    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4d90    e81b150000
                         add                esp, 0x04                                            // 0x006f4d95    83c404
_jmp_addr_0x006f4d98:    mov                eax, dword ptr [esi]                                 // 0x006f4d98    8b06
                         mov.s              ecx, esi                                             // 0x006f4d9a    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4d9c    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f4d9f    8b16
                         mov.s              ecx, esi                                             // 0x006f4da1    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4da3    ff5234
                         test               eax, eax                                             // 0x006f4da6    85c0
                         {disp8} je         _jmp_addr_0x006f4d6e                                 // 0x006f4da8    74c4
                         mov.s              ecx, esi                                             // 0x006f4daa    8bce
                         call               _jmp_addr_0x0047b1c0                                 // 0x006f4dac    e80f64d8ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4db1    8b0d105cd900
                         push               0x6                                                  // 0x006f4db7    6a06
                         push               eax                                                  // 0x006f4db9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f4dba    e8e11d0000
                         pop                esi                                                  // 0x006f4dbf    5e
                         pop                ecx                                                  // 0x006f4dc0    59
                         ret                                                                     // 0x006f4dc1    c3
                         nop                                                                     // 0x006f4dc2    90
                         nop                                                                     // 0x006f4dc3    90
                         nop                                                                     // 0x006f4dc4    90
                         nop                                                                     // 0x006f4dc5    90
                         nop                                                                     // 0x006f4dc6    90
                         nop                                                                     // 0x006f4dc7    90
                         nop                                                                     // 0x006f4dc8    90
                         nop                                                                     // 0x006f4dc9    90
                         nop                                                                     // 0x006f4dca    90
                         nop                                                                     // 0x006f4dcb    90
                         nop                                                                     // 0x006f4dcc    90
                         nop                                                                     // 0x006f4dcd    90
                         nop                                                                     // 0x006f4dce    90
                         nop                                                                     // 0x006f4dcf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4dd0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4dd6    83ec08
                         push               esi                                                  // 0x006f4dd9    56
                         push               edi                                                  // 0x006f4dda    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4ddb    8d442408
                         push               eax                                                  // 0x006f4ddf    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4de0    e8db1d0000
                         push               eax                                                  // 0x006f4de5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4de6    e835840100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4deb    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4df1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f4df4    8d54240c
                         push               edx                                                  // 0x006f4df8    52
                         mov.s              esi, eax                                             // 0x006f4df9    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4dfb    e8c01d0000
                         test               esi, esi                                             // 0x006f4e00    85f6
                         mov.s              edi, eax                                             // 0x006f4e02    8bf8
                         {disp8} jne        _jmp_addr_0x006f4e19                                 // 0x006f4e04    7513
                         push               0x00c0cfac                                           // 0x006f4e06    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4e0b    e8a0140000
                         add                esp, 0x04                                            // 0x006f4e10    83c404
                         pop                edi                                                  // 0x006f4e13    5f
                         pop                esi                                                  // 0x006f4e14    5e
                         add                esp, 0x08                                            // 0x006f4e15    83c408
                         ret                                                                     // 0x006f4e18    c3
_jmp_addr_0x006f4e19:    mov                eax, dword ptr [esi]                                 // 0x006f4e19    8b06
                         mov.s              ecx, esi                                             // 0x006f4e1b    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4e1d    ff5034
                         test               eax, eax                                             // 0x006f4e20    85c0
                         {disp8} jne        _jmp_addr_0x006f4e31                                 // 0x006f4e22    750d
                         push               0x00c0cf98                                           // 0x006f4e24    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4e29    e882140000
                         add                esp, 0x04                                            // 0x006f4e2e    83c404
_jmp_addr_0x006f4e31:    mov                edx, dword ptr [esi]                                 // 0x006f4e31    8b16
                         mov.s              ecx, esi                                             // 0x006f4e33    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4e35    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4e38    8b06
                         mov.s              ecx, esi                                             // 0x006f4e3a    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4e3c    ff5034
                         test               eax, eax                                             // 0x006f4e3f    85c0
                         {disp8} je         _jmp_addr_0x006f4e49                                 // 0x006f4e41    7406
                         {disp32} mov       dword ptr [esi + 0x000010bc], edi                    // 0x006f4e43    89bebc100000
_jmp_addr_0x006f4e49:    pop                edi                                                  // 0x006f4e49    5f
                         pop                esi                                                  // 0x006f4e4a    5e
                         add                esp, 0x08                                            // 0x006f4e4b    83c408
                         ret                                                                     // 0x006f4e4e    c3
                         nop                                                                     // 0x006f4e4f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4e50    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4e56    83ec08
                         push               esi                                                  // 0x006f4e59    56
                         push               edi                                                  // 0x006f4e5a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4e5b    8d442408
                         push               eax                                                  // 0x006f4e5f    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4e60    e85b1d0000
                         push               eax                                                  // 0x006f4e65    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4e66    e8b5830100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4e6b    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4e71    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f4e74    8d54240c
                         push               edx                                                  // 0x006f4e78    52
                         mov.s              esi, eax                                             // 0x006f4e79    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4e7b    e8401d0000
                         test               esi, esi                                             // 0x006f4e80    85f6
                         mov.s              edi, eax                                             // 0x006f4e82    8bf8
                         {disp8} jne        _jmp_addr_0x006f4e99                                 // 0x006f4e84    7513
                         push               0x00c0cfac                                           // 0x006f4e86    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4e8b    e820140000
                         add                esp, 0x04                                            // 0x006f4e90    83c404
                         pop                edi                                                  // 0x006f4e93    5f
                         pop                esi                                                  // 0x006f4e94    5e
                         add                esp, 0x08                                            // 0x006f4e95    83c408
                         ret                                                                     // 0x006f4e98    c3
_jmp_addr_0x006f4e99:    mov                eax, dword ptr [esi]                                 // 0x006f4e99    8b06
                         mov.s              ecx, esi                                             // 0x006f4e9b    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4e9d    ff5034
                         test               eax, eax                                             // 0x006f4ea0    85c0
                         {disp8} jne        _jmp_addr_0x006f4eb1                                 // 0x006f4ea2    750d
                         push               0x00c0cf98                                           // 0x006f4ea4    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4ea9    e802140000
                         add                esp, 0x04                                            // 0x006f4eae    83c404
_jmp_addr_0x006f4eb1:    mov                edx, dword ptr [esi]                                 // 0x006f4eb1    8b16
                         mov.s              ecx, esi                                             // 0x006f4eb3    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4eb5    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4eb8    8b06
                         mov.s              ecx, esi                                             // 0x006f4eba    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4ebc    ff5034
                         test               eax, eax                                             // 0x006f4ebf    85c0
                         {disp8} je         _jmp_addr_0x006f4ee5                                 // 0x006f4ec1    7422
                         mov                edx, dword ptr [esi]                                 // 0x006f4ec3    8b16
                         mov.s              ecx, esi                                             // 0x006f4ec5    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f4ec7    ff521c
                         test               eax, eax                                             // 0x006f4eca    85c0
                         {disp8} je         _jmp_addr_0x006f4ee5                                 // 0x006f4ecc    7417
                         mov                eax, dword ptr [esi]                                 // 0x006f4ece    8b06
                         mov.s              ecx, esi                                             // 0x006f4ed0    8bce
                         call               dword ptr [eax + 0x1c]                               // 0x006f4ed2    ff501c
                         mov.s              ecx, eax                                             // 0x006f4ed5    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f4ed7    e8145bf5ff
                         {disp32} mov       ecx, dword ptr [eax + 0x0000012c]                    // 0x006f4edc    8b882c010000
                         {disp8} mov        dword ptr [ecx + 0x18], edi                          // 0x006f4ee2    897918
_jmp_addr_0x006f4ee5:    pop                edi                                                  // 0x006f4ee5    5f
                         pop                esi                                                  // 0x006f4ee6    5e
                         add                esp, 0x08                                            // 0x006f4ee7    83c408
                         ret                                                                     // 0x006f4eea    c3
                         nop                                                                     // 0x006f4eeb    90
                         nop                                                                     // 0x006f4eec    90
                         nop                                                                     // 0x006f4eed    90
                         nop                                                                     // 0x006f4eee    90
                         nop                                                                     // 0x006f4eef    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4ef0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4ef6    83ec08
                         push               ebx                                                  // 0x006f4ef9    53
                         push               esi                                                  // 0x006f4efa    56
                         push               edi                                                  // 0x006f4efb    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                          // 0x006f4efc    8d44240c
                         push               eax                                                  // 0x006f4f00    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4f01    e8ba1c0000
                         push               eax                                                  // 0x006f4f06    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4f07    e814830100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4f0c    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4f12    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x10]                          // 0x006f4f15    8d542410
                         push               edx                                                  // 0x006f4f19    52
                         mov.s              esi, eax                                             // 0x006f4f1a    8bf0
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4f1c    e89f1c0000
                         test               esi, esi                                             // 0x006f4f21    85f6
                         mov.s              ebx, eax                                             // 0x006f4f23    8bd8
                         {disp8} jne        _jmp_addr_0x006f4f3b                                 // 0x006f4f25    7514
                         push               0x00c0cfac                                           // 0x006f4f27    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4f2c    e87f130000
                         add                esp, 0x04                                            // 0x006f4f31    83c404
                         pop                edi                                                  // 0x006f4f34    5f
                         pop                esi                                                  // 0x006f4f35    5e
                         pop                ebx                                                  // 0x006f4f36    5b
                         add                esp, 0x08                                            // 0x006f4f37    83c408
                         ret                                                                     // 0x006f4f3a    c3
_jmp_addr_0x006f4f3b:    mov                eax, dword ptr [esi]                                 // 0x006f4f3b    8b06
                         mov.s              ecx, esi                                             // 0x006f4f3d    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4f3f    ff5034
                         test               eax, eax                                             // 0x006f4f42    85c0
                         {disp8} jne        _jmp_addr_0x006f4f53                                 // 0x006f4f44    750d
                         push               0x00c0cf98                                           // 0x006f4f46    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f4f4b    e860130000
                         add                esp, 0x04                                            // 0x006f4f50    83c404
_jmp_addr_0x006f4f53:    mov                edx, dword ptr [esi]                                 // 0x006f4f53    8b16
                         mov.s              ecx, esi                                             // 0x006f4f55    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f4f57    ff5234
                         mov                eax, dword ptr [esi]                                 // 0x006f4f5a    8b06
                         mov.s              ecx, esi                                             // 0x006f4f5c    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f4f5e    ff5034
                         test               eax, eax                                             // 0x006f4f61    85c0
                         {disp8} je         _jmp_addr_0x006f4fac                                 // 0x006f4f63    7447
                         test               ebx, ebx                                             // 0x006f4f65    85db
                         {disp8} je         _jmp_addr_0x006f4f88                                 // 0x006f4f67    741f
                         xor.s              edi, edi                                             // 0x006f4f69    33ff
_jmp_addr_0x006f4f6b:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x006f4f6b    8b8e64010000
                         push               0x0                                                  // 0x006f4f71    6a00
                         push               edi                                                  // 0x006f4f73    57
                         push               0x0                                                  // 0x006f4f74    6a00
                         push               esi                                                  // 0x006f4f76    56
                         add                ecx, 0x0001a9fc                                      // 0x006f4f77    81c1fca90100
                         call               _jmp_addr_0x004e28c0                                 // 0x006f4f7d    e83ed9deff
                         inc                edi                                                  // 0x006f4f82    47
                         cmp                edi, 0x06                                            // 0x006f4f83    83ff06
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x006f4f6b         // 0x006f4f86    72e3
_jmp_addr_0x006f4f88:    cmp                ebx, 0x01                                            // 0x006f4f88    83fb01
                         {disp8} je         _jmp_addr_0x006f4fac                                 // 0x006f4f8b    741f
                         xor.s              edi, edi                                             // 0x006f4f8d    33ff
_jmp_addr_0x006f4f8f:    {disp32} mov       ecx, dword ptr [esi + 0x00000164]                    // 0x006f4f8f    8b8e64010000
                         push               0x0                                                  // 0x006f4f95    6a00
                         push               edi                                                  // 0x006f4f97    57
                         push               0x1                                                  // 0x006f4f98    6a01
                         push               esi                                                  // 0x006f4f9a    56
                         add                ecx, 0x0001a9fc                                      // 0x006f4f9b    81c1fca90100
                         call               _jmp_addr_0x004e28c0                                 // 0x006f4fa1    e81ad9deff
                         inc                edi                                                  // 0x006f4fa6    47
                         cmp                edi, 0x2a                                            // 0x006f4fa7    83ff2a
                         .byte              0x72, 0xe3// {disp8} jb _jmp_addr_0x006f4f8f         // 0x006f4faa    72e3
_jmp_addr_0x006f4fac:    pop                edi                                                  // 0x006f4fac    5f
                         pop                esi                                                  // 0x006f4fad    5e
                         pop                ebx                                                  // 0x006f4fae    5b
                         add                esp, 0x08                                            // 0x006f4faf    83c408
                         ret                                                                     // 0x006f4fb2    c3
                         nop                                                                     // 0x006f4fb3    90
                         nop                                                                     // 0x006f4fb4    90
                         nop                                                                     // 0x006f4fb5    90
                         nop                                                                     // 0x006f4fb6    90
                         nop                                                                     // 0x006f4fb7    90
                         nop                                                                     // 0x006f4fb8    90
                         nop                                                                     // 0x006f4fb9    90
                         nop                                                                     // 0x006f4fba    90
                         nop                                                                     // 0x006f4fbb    90
                         nop                                                                     // 0x006f4fbc    90
                         nop                                                                     // 0x006f4fbd    90
                         nop                                                                     // 0x006f4fbe    90
                         nop                                                                     // 0x006f4fbf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4fc0    8b0d105cd900
                         sub                esp, 0x08                                            // 0x006f4fc6    83ec08
                         push               esi                                                  // 0x006f4fc9    56
                         push               edi                                                  // 0x006f4fca    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                          // 0x006f4fcb    8d442408
                         push               eax                                                  // 0x006f4fcf    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4fd0    e8eb1b0000
                         push               eax                                                  // 0x006f4fd5    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4fd6    e845820100
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f4fdb    8b0d105cd900
                         add                esp, 0x04                                            // 0x006f4fe1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                          // 0x006f4fe4    8d54240c
                         push               edx                                                  // 0x006f4fe8    52
                         mov.s              edi, eax                                             // 0x006f4fe9    8bf8
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f4feb    e8d01b0000
                         push               eax                                                  // 0x006f4ff0    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f4ff1    e82a820100
                         mov.s              esi, eax                                             // 0x006f4ff6    8bf0
                         add                esp, 0x04                                            // 0x006f4ff8    83c404
                         test               esi, esi                                             // 0x006f4ffb    85f6
                         {disp8} je         _jmp_addr_0x006f5003                                 // 0x006f4ffd    7404
                         test               edi, edi                                             // 0x006f4fff    85ff
                         {disp8} jne        _jmp_addr_0x006f5010                                 // 0x006f5001    750d
_jmp_addr_0x006f5003:    push               0x00c0cfac                                           // 0x006f5003    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f5008    e8a3120000
                         add                esp, 0x04                                            // 0x006f500d    83c404
_jmp_addr_0x006f5010:    test               esi, esi                                             // 0x006f5010    85f6
                         {disp8} je         _jmp_addr_0x006f5090                                 // 0x006f5012    747c
                         test               edi, edi                                             // 0x006f5014    85ff
                         {disp8} je         _jmp_addr_0x006f5090                                 // 0x006f5016    7478
                         mov                eax, dword ptr [esi]                                 // 0x006f5018    8b06
                         mov.s              ecx, esi                                             // 0x006f501a    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f501c    ff5034
                         test               eax, eax                                             // 0x006f501f    85c0
                         {disp8} jne        _jmp_addr_0x006f503b                                 // 0x006f5021    7518
                         mov                edx, dword ptr [edi]                                 // 0x006f5023    8b17
                         mov.s              ecx, edi                                             // 0x006f5025    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f5027    ff5234
                         test               eax, eax                                             // 0x006f502a    85c0
                         {disp8} jne        _jmp_addr_0x006f503b                                 // 0x006f502c    750d
                         push               0x00c0cf98                                           // 0x006f502e    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f5033    e878120000
                         add                esp, 0x04                                            // 0x006f5038    83c404
_jmp_addr_0x006f503b:    mov                eax, dword ptr [esi]                                 // 0x006f503b    8b06
                         mov.s              ecx, esi                                             // 0x006f503d    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f503f    ff5034
                         test               eax, eax                                             // 0x006f5042    85c0
                         {disp8} jne        _jmp_addr_0x006f504d                                 // 0x006f5044    7507
                         mov                edx, dword ptr [edi]                                 // 0x006f5046    8b17
                         mov.s              ecx, edi                                             // 0x006f5048    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f504a    ff5234
_jmp_addr_0x006f504d:    mov                eax, dword ptr [esi]                                 // 0x006f504d    8b06
                         mov.s              ecx, esi                                             // 0x006f504f    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f5051    ff5034
                         test               eax, eax                                             // 0x006f5054    85c0
                         {disp8} jne        _jmp_addr_0x006f5069                                 // 0x006f5056    7511
                         mov                edx, dword ptr [edi]                                 // 0x006f5058    8b17
                         mov.s              ecx, edi                                             // 0x006f505a    8bcf
                         call               dword ptr [edx + 0x34]                               // 0x006f505c    ff5234
                         test               eax, eax                                             // 0x006f505f    85c0
                         {disp8} je         _jmp_addr_0x006f5069                                 // 0x006f5061    7406
                         mov.s              eax, esi                                             // 0x006f5063    8bc6
                         mov.s              esi, edi                                             // 0x006f5065    8bf7
                         mov.s              edi, eax                                             // 0x006f5067    8bf8
_jmp_addr_0x006f5069:    mov                eax, dword ptr [esi]                                 // 0x006f5069    8b06
                         mov.s              ecx, esi                                             // 0x006f506b    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f506d    ff5034
                         test               eax, eax                                             // 0x006f5070    85c0
                         {disp8} je         _jmp_addr_0x006f5090                                 // 0x006f5072    741c
                         test               esi, esi                                             // 0x006f5074    85f6
                         {disp8} je         _jmp_addr_0x006f5090                                 // 0x006f5076    7418
                         mov                edx, dword ptr [esi]                                 // 0x006f5078    8b16
                         mov.s              ecx, esi                                             // 0x006f507a    8bce
                         call               dword ptr [edx + 0x1c]                               // 0x006f507c    ff521c
                         test               eax, eax                                             // 0x006f507f    85c0
                         {disp8} jne        _jmp_addr_0x006f50a5                                 // 0x006f5081    7522
                         push               0x00c0d02c                                           // 0x006f5083    682cd0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f5088    e823120000
                         add                esp, 0x04                                            // 0x006f508d    83c404
_jmp_addr_0x006f5090:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f5090    8b0d105cd900
                         push               0x6                                                  // 0x006f5096    6a06
                         push               0x0                                                  // 0x006f5098    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f509a    e8011b0000
                         pop                edi                                                  // 0x006f509f    5f
                         pop                esi                                                  // 0x006f50a0    5e
                         add                esp, 0x08                                            // 0x006f50a1    83c408
                         ret                                                                     // 0x006f50a4    c3
_jmp_addr_0x006f50a5:    mov.s              ecx, eax                                             // 0x006f50a5    8bc8
                         call               _jmp_addr_0x0064a9f0                                 // 0x006f50a7    e84459f5ff
                         {disp32} mov       eax, dword ptr [eax + 0x0000012c]                    // 0x006f50ac    8b802c010000
                         {disp8} mov        edx, dword ptr [eax + 0x24]                          // 0x006f50b2    8b5024
                         xor.s              ecx, ecx                                             // 0x006f50b5    33c9
                         cmp.s              edx, edi                                             // 0x006f50b7    3bd7
                         sete               cl                                                   // 0x006f50b9    0f94c1
                         push               0x6                                                  // 0x006f50bc    6a06
                         push               ecx                                                  // 0x006f50be    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f50bf    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f50c5    e8d61a0000
                         pop                edi                                                  // 0x006f50ca    5f
                         pop                esi                                                  // 0x006f50cb    5e
                         add                esp, 0x08                                            // 0x006f50cc    83c408
                         ret                                                                     // 0x006f50cf    c3
                         push               ecx                                                  // 0x006f50d0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f50d1    8b0d105cd900
                         push               esi                                                  // 0x006f50d7    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                          // 0x006f50d8    8d442404
                         push               eax                                                  // 0x006f50dc    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f50dd    e8de1a0000
                         push               eax                                                  // 0x006f50e2    50
                         call               _jmp_addr_0x0070d220                                 // 0x006f50e3    e838810100
                         mov.s              esi, eax                                             // 0x006f50e8    8bf0
                         add                esp, 0x04                                            // 0x006f50ea    83c404
                         test               esi, esi                                             // 0x006f50ed    85f6
                         {disp8} jne        _jmp_addr_0x006f511b                                 // 0x006f50ef    752a
                         push               0x00c0cfac                                           // 0x006f50f1    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f50f6    e8b5110000
                         add                esp, 0x04                                            // 0x006f50fb    83c404
_jmp_addr_0x006f50fe:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f50fe    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], 0x00000000                   // 0x006f5104    c744240400000000
                         {disp8} mov        edx, dword ptr [esp + 0x04]                          // 0x006f510c    8b542404
                         push               0x2                                                  // 0x006f5110    6a02
                         push               edx                                                  // 0x006f5112    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f5113    e8881a0000
                         pop                esi                                                  // 0x006f5118    5e
                         pop                ecx                                                  // 0x006f5119    59
                         ret                                                                     // 0x006f511a    c3
_jmp_addr_0x006f511b:    mov                edx, dword ptr [esi]                                 // 0x006f511b    8b16
                         mov.s              ecx, esi                                             // 0x006f511d    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f511f    ff5234
                         test               eax, eax                                             // 0x006f5122    85c0
                         {disp8} jne        _jmp_addr_0x006f5133                                 // 0x006f5124    750d
                         push               0x00c0cf98                                           // 0x006f5126    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z               // 0x006f512b    e880110000
                         add                esp, 0x04                                            // 0x006f5130    83c404
_jmp_addr_0x006f5133:    mov                eax, dword ptr [esi]                                 // 0x006f5133    8b06
                         mov.s              ecx, esi                                             // 0x006f5135    8bce
                         call               dword ptr [eax + 0x34]                               // 0x006f5137    ff5034
                         mov                edx, dword ptr [esi]                                 // 0x006f513a    8b16
                         mov.s              ecx, esi                                             // 0x006f513c    8bce
                         call               dword ptr [edx + 0x34]                               // 0x006f513e    ff5234
                         test               eax, eax                                             // 0x006f5141    85c0
                         {disp8} je         _jmp_addr_0x006f50fe                                 // 0x006f5143    74b9
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]                    // 0x006f5145    8b8664010000
                         {disp32} fld       dword ptr [eax + 0x00018c5c]                         // 0x006f514b    d9805c8c0100
                         push               0x2                                                  // 0x006f5151    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                               // 0x006f5153    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                          // 0x006f5157    8b4c2408
                         push               ecx                                                  // 0x006f515b    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f515c    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f5162    e8391a0000
                         pop                esi                                                  // 0x006f5167    5e
                         pop                ecx                                                  // 0x006f5168    59
                         ret                                                                     // 0x006f5169    c3
                         nop                                                                     // 0x006f516a    90
                         nop                                                                     // 0x006f516b    90
                         nop                                                                     // 0x006f516c    90
                         nop                                                                     // 0x006f516d    90
                         nop                                                                     // 0x006f516e    90
                         nop                                                                     // 0x006f516f    90
                         push               ecx                                                  // 0x006f5170    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f5171    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                          // 0x006f5177    8d442400
                         push               eax                                                  // 0x006f517b    50
                         call               _jmp_addr_0x006f6bc0                                 // 0x006f517c    e83f1a0000
                         add                eax, -0x03                                           // 0x006f5181    83c0fd
                         cmp                eax, 0x0d                                            // 0x006f5184    83f80d
                         {disp8} ja         _jmp_addr_0x006f51ca                                 // 0x006f5187    7741
                         xor.s              ecx, ecx                                             // 0x006f5189    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x006f51f4]                      // 0x006f518b    8a88f4516f00
                         jmp                dword ptr [ecx*4 + 0x6f51dc]                         // 0x006f5191    ff248ddc516f00
                         push               0x0                                                  // 0x006f5198    6a00
                         {disp8} jmp        _jmp_addr_0x006f51aa                                 // 0x006f519a    eb0e
                         push               0x1                                                  // 0x006f519c    6a01
                         {disp8} jmp        _jmp_addr_0x006f51aa                                 // 0x006f519e    eb0a
                         push               0x2                                                  // 0x006f51a0    6a02
                         {disp8} jmp        _jmp_addr_0x006f51aa                                 // 0x006f51a2    eb06
                         push               0x3                                                  // 0x006f51a4    6a03
                         {disp8} jmp        _jmp_addr_0x006f51aa                                 // 0x006f51a6    eb02
                         push               0x4                                                  // 0x006f51a8    6a04
_jmp_addr_0x006f51aa:    {disp32} mov       ecx, dword ptr [_game]                               // 0x006f51aa    8b0d5c19d000
                         call               _jmp_addr_0x005551d0                                 // 0x006f51b0    e81b00e6ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f51b5    8b0d105cd900
                         push               0x6                                                  // 0x006f51bb    6a06
                         and                eax, 0x000000ff                                      // 0x006f51bd    25ff000000
                         push               eax                                                  // 0x006f51c2    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f51c3    e8d8190000
                         pop                ecx                                                  // 0x006f51c8    59
                         ret                                                                     // 0x006f51c9    c3
_jmp_addr_0x006f51ca:    {disp32} mov       ecx, dword ptr [_script_dll]                         // 0x006f51ca    8b0d105cd900
                         push               0x6                                                  // 0x006f51d0    6a06
                         push               0x1                                                  // 0x006f51d2    6a01
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z                 // 0x006f51d4    e8c7190000
                         pop                ecx                                                  // 0x006f51d9    59
                         ret                                                                     // 0x006f51da    c3

// Snippet: db, [0x006f51db, 0x006f51dc)
.byte 0x90                        // 0x006f51db

// Snippet: jmptbl, [0x006f51dc, 0x006f51f4)
.byte 0x98, 0x51, 0x6f, 0x00      // 0x006f51dc
.byte 0x9c, 0x51, 0x6f, 0x00      // 0x006f51e0
.byte 0xa0, 0x51, 0x6f, 0x00      // 0x006f51e4
.byte 0xa8, 0x51, 0x6f, 0x00      // 0x006f51e8
.byte 0xa4, 0x51, 0x6f, 0x00      // 0x006f51ec
.byte 0xca, 0x51, 0x6f, 0x00      // 0x006f51f0

// Snippet: ijmptbl, [0x006f51f4, 0x006f5202)
.byte 0x00, 0x05, 0x05, 0x01      // 0x006f51f4
.byte 0x05, 0x05, 0x05, 0x05      // 0x006f51f8
.byte 0x05, 0x05, 0x05, 0x02      // 0x006f51fc
.byte 0x03, 0x04                  // 0x006f5200

// Snippet: db, [0x006f5202, 0x006f5210)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006f5202
.byte 0x90, 0x90, 0x90, 0x90      // 0x006f5206
.byte 0x90, 0x90, 0x90, 0x90      // 0x006f520a
.byte 0x90, 0x90                  // 0x006f520e

