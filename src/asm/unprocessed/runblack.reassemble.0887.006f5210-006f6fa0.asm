.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004146f0
.extern _jmp_addr_0x00464920
.extern ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z
.extern ?SetAnimationTimeModify@Creature@@QAEX_N@Z
.extern _jmp_addr_0x0047d2f0
.extern _jmp_addr_0x0047d310
.extern _jmp_addr_0x0047d320
.extern _jmp_addr_0x0047d340
.extern _jmp_addr_0x0047d360
.extern _jmp_addr_0x0047d380
.extern _jmp_addr_0x0047d470
.extern _jmp_addr_0x00483850
.extern _jmp_addr_0x0048f750
.extern _jmp_addr_0x004f0100
.extern _jmp_addr_0x004f8a40
.extern _jmp_addr_0x006eb760
.extern _jmp_addr_0x0070d0f0
.extern _jmp_addr_0x0070d220
.extern _jmp_addr_0x007a1400
.extern ?AddToInternalList@LHDLL@@SAPAV1@PAV1@@Z
.extern @__ct__5LHDLLFPCc@12
.extern ??_DLHDLL@@QAEXXZ
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern ___RTDynamicCast
.extern _wcscpy
.extern ??2@YAPAXI@Z

.globl @Init__19ScriptCreatureCurseFP8Creature@12
.globl @ResolveLoad__19ScriptCreatureCurseFP8Creature@12
.globl ?ScriptErrorMessage@GScript@@QAEXPAD@Z
.globl ?ScriptWarningMessage@GScript@@QAEXPAD@Z
.globl ?Create@ScriptDLL@@SAPAV1@PBD@Z
.globl _jmp_addr_0x006f67f0
.globl _jmp_addr_0x006f6840
.globl _jmp_addr_0x006f6860
.globl _jmp_addr_0x006f6880
.globl ?AutoStart@ScriptDLL@@QAEXXZ
.globl ?StopTasksOfType@ScriptDLL@@QAEXW4VMScriptType@@@Z
.globl ?StopAllTasks@ScriptDLL@@QAEXXZ
.globl @LoadBinary__9ScriptDLLFPCc@12
.globl _jmp_addr_0x006f6960
.globl _jmp_addr_0x006f6980
.globl _jmp_addr_0x006f69a0
.globl _jmp_addr_0x006f69f0
.globl _jmp_addr_0x006f6a10
.globl _jmp_addr_0x006f6a90
.globl _jmp_addr_0x006f6aa0
.globl _jmp_addr_0x006f6b10
.globl ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z
.globl _jmp_addr_0x006f6bc0
.globl _jmp_addr_0x006f6bd0
.globl _jmp_addr_0x006f6c30
.globl ?GetScriptType@ScriptDLL@@QAEPAXK@Z
.globl _jmp_addr_0x006f6c70
.globl _jmp_addr_0x006f6c90
.globl _jmp_addr_0x006f6d00

.globl _globl_ct_0x006f6110
.globl _globl_ct_0x006f6140
.globl _globl_ct_0x006f6170
.globl _globl_ct_0x006f6250
.globl _globl_ct_0x006f6280
.globl _globl_ct_0x006f62d0
.globl _globl_ct_0x006f6300
.globl _globl_ct_0x006f6cb0
.globl _globl_ct_0x006f6cd0

start_0x006f5210_0x006f6fa0:
// Snippet: asm, [0x006f5210, 0x006f6f26)
                         push               ecx                                           // 0x006f5210    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5211    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f5217    8d442400
                         push               eax                                           // 0x006f521b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f521c    e89f190000
                         push               eax                                           // 0x006f5221    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5222    e8f97f0100
                         add                esp, 0x04                                     // 0x006f5227    83c404
                         test               eax, eax                                      // 0x006f522a    85c0
                         {disp8} jne        _jmp_addr_0x006f5235                          // 0x006f522c    7507
                         push               0x00c0d05c                                    // 0x006f522e    685cd0c000
                         {disp8} jmp        _jmp_addr_0x006f527a                          // 0x006f5233    eb45
_jmp_addr_0x006f5235:    push               0x0                                           // 0x006f5235    6a00
                         push               0x009c8060                                    // 0x006f5237    6860809c00
                         push               0x009c7f30                                    // 0x006f523c    68307f9c00
                         push               0x0                                           // 0x006f5241    6a00
                         push               eax                                           // 0x006f5243    50
                         call               ___RTDynamicCast                              // 0x006f5244    e8d0070d00
                         add                esp, 0x14                                     // 0x006f5249    83c414
                         test               eax, eax                                      // 0x006f524c    85c0
                         {disp8} je         _jmp_addr_0x006f5275                          // 0x006f524e    7425
                         {disp32} mov       eax, dword ptr [eax + 0x000011c8]             // 0x006f5250    8b80c8110000
                         test               eax, eax                                      // 0x006f5256    85c0
                         {disp8} je         _jmp_addr_0x006f5282                          // 0x006f5258    7428
                         push               0x0                                           // 0x006f525a    6a00
                         push               eax                                           // 0x006f525c    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006f525d    e88e7e0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5262    8b0d105cd900
                         add                esp, 0x08                                     // 0x006f5268    83c408
                         push               0x4                                           // 0x006f526b    6a04
                         push               eax                                           // 0x006f526d    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f526e    e82d190000
                         pop                ecx                                           // 0x006f5273    59
                         ret                                                              // 0x006f5274    c3
_jmp_addr_0x006f5275:    push               0x00c0d040                                    // 0x006f5275    6840d0c000
_jmp_addr_0x006f527a:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f527a    e831100000
                         add                esp, 0x04                                     // 0x006f527f    83c404
_jmp_addr_0x006f5282:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5282    8b0d105cd900
                         push               0x4                                           // 0x006f5288    6a04
                         push               0x0                                           // 0x006f528a    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f528c    e80f190000
                         pop                ecx                                           // 0x006f5291    59
                         ret                                                              // 0x006f5292    c3
                         nop                                                              // 0x006f5293    90
                         nop                                                              // 0x006f5294    90
                         nop                                                              // 0x006f5295    90
                         nop                                                              // 0x006f5296    90
                         nop                                                              // 0x006f5297    90
                         nop                                                              // 0x006f5298    90
                         nop                                                              // 0x006f5299    90
                         nop                                                              // 0x006f529a    90
                         nop                                                              // 0x006f529b    90
                         nop                                                              // 0x006f529c    90
                         nop                                                              // 0x006f529d    90
                         nop                                                              // 0x006f529e    90
                         nop                                                              // 0x006f529f    90
                         push               ecx                                           // 0x006f52a0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f52a1    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f52a7    8d442400
                         push               eax                                           // 0x006f52ab    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f52ac    e80f190000
                         push               eax                                           // 0x006f52b1    50
                         call               _jmp_addr_0x0070d220                          // 0x006f52b2    e8697f0100
                         add                esp, 0x04                                     // 0x006f52b7    83c404
                         test               eax, eax                                      // 0x006f52ba    85c0
                         {disp8} jne        _jmp_addr_0x006f52cd                          // 0x006f52bc    750f
                         push               0x00c0cef8                                    // 0x006f52be    68f8cec000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f52c3    e8e80f0000
                         add                esp, 0x04                                     // 0x006f52c8    83c404
                         pop                ecx                                           // 0x006f52cb    59
                         ret                                                              // 0x006f52cc    c3
_jmp_addr_0x006f52cd:    push               0x0                                           // 0x006f52cd    6a00
                         push               0x009c8060                                    // 0x006f52cf    6860809c00
                         push               0x009c7f30                                    // 0x006f52d4    68307f9c00
                         push               0x0                                           // 0x006f52d9    6a00
                         push               eax                                           // 0x006f52db    50
                         call               ___RTDynamicCast                              // 0x006f52dc    e838070d00
                         add                esp, 0x14                                     // 0x006f52e1    83c414
                         test               eax, eax                                      // 0x006f52e4    85c0
                         {disp8} jne        _jmp_addr_0x006f5304                          // 0x006f52e6    751c
                         push               0x00c0d088                                    // 0x006f52e8    6888d0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f52ed    e8be0f0000
                         add                esp, 0x04                                     // 0x006f52f2    83c404
                         push               0x00c0d074                                    // 0x006f52f5    6874d0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f52fa    e8b10f0000
                         add                esp, 0x04                                     // 0x006f52ff    83c404
                         pop                ecx                                           // 0x006f5302    59
                         ret                                                              // 0x006f5303    c3
_jmp_addr_0x006f5304:    {disp32} mov       dword ptr [eax + 0x000011c8], 0x00000000      // 0x006f5304    c780c811000000000000
                         pop                ecx                                           // 0x006f530e    59
                         ret                                                              // 0x006f530f    c3
                         push               ecx                                           // 0x006f5310    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5311    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f5317    8d442400
                         push               eax                                           // 0x006f531b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f531c    e89f180000
                         push               eax                                           // 0x006f5321    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5322    e8f97e0100
                         add                esp, 0x04                                     // 0x006f5327    83c404
                         test               eax, eax                                      // 0x006f532a    85c0
                         {disp8} jne        _jmp_addr_0x006f534c                          // 0x006f532c    751e
                         push               0x00c00afc                                    // 0x006f532e    68fc0ac000
_jmp_addr_0x006f5333:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5333    e8780f0000
                         add                esp, 0x04                                     // 0x006f5338    83c404
_jmp_addr_0x006f533b:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f533b    8b0d105cd900
                         push               0x4                                           // 0x006f5341    6a04
                         push               0x0                                           // 0x006f5343    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5345    e856180000
                         pop                ecx                                           // 0x006f534a    59
                         ret                                                              // 0x006f534b    c3
_jmp_addr_0x006f534c:    push               0x0                                           // 0x006f534c    6a00
                         push               0x009c8060                                    // 0x006f534e    6860809c00
                         push               0x009c7f30                                    // 0x006f5353    68307f9c00
                         push               0x0                                           // 0x006f5358    6a00
                         push               eax                                           // 0x006f535a    50
                         call               ___RTDynamicCast                              // 0x006f535b    e8b9060d00
                         add                esp, 0x14                                     // 0x006f5360    83c414
                         test               eax, eax                                      // 0x006f5363    85c0
                         {disp8} jne        _jmp_addr_0x006f536e                          // 0x006f5365    7507
                         push               0x00c0d088                                    // 0x006f5367    6888d0c000
                         {disp8} jmp        _jmp_addr_0x006f5333                          // 0x006f536c    ebc5
_jmp_addr_0x006f536e:    {disp32} mov       ecx, dword ptr [eax + 0x00000160]             // 0x006f536e    8b8860010000
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x006f5374    8b4128
                         test               eax, eax                                      // 0x006f5377    85c0
                         {disp8} je         _jmp_addr_0x006f533b                          // 0x006f5379    74c0
                         push               0x0                                           // 0x006f537b    6a00
                         push               eax                                           // 0x006f537d    50
                         call               _jmp_addr_0x0070d0f0                          // 0x006f537e    e86d7d0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5383    8b0d105cd900
                         add                esp, 0x08                                     // 0x006f5389    83c408
                         push               0x4                                           // 0x006f538c    6a04
                         push               eax                                           // 0x006f538e    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f538f    e80c180000
                         pop                ecx                                           // 0x006f5394    59
                         ret                                                              // 0x006f5395    c3
                         nop                                                              // 0x006f5396    90
                         nop                                                              // 0x006f5397    90
                         nop                                                              // 0x006f5398    90
                         nop                                                              // 0x006f5399    90
                         nop                                                              // 0x006f539a    90
                         nop                                                              // 0x006f539b    90
                         nop                                                              // 0x006f539c    90
                         nop                                                              // 0x006f539d    90
                         nop                                                              // 0x006f539e    90
                         nop                                                              // 0x006f539f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f53a0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f53a6    83ec08
                         push               esi                                           // 0x006f53a9    56
                         push               edi                                           // 0x006f53aa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f53ab    8d442408
                         push               eax                                           // 0x006f53af    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f53b0    e80b180000
                         push               eax                                           // 0x006f53b5    50
                         call               _jmp_addr_0x0070d220                          // 0x006f53b6    e8657e0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f53bb    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f53c1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f53c4    8d542408
                         push               edx                                           // 0x006f53c8    52
                         mov.s              esi, eax                                      // 0x006f53c9    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f53cb    e8f0170000
                         test               esi, esi                                      // 0x006f53d0    85f6
                         mov.s              edi, eax                                      // 0x006f53d2    8bf8
                         {disp8} jne        _jmp_addr_0x006f5403                          // 0x006f53d4    752d
                         push               0x00c00afc                                    // 0x006f53d6    68fc0ac000
_jmp_addr_0x006f53db:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f53db    e8d00e0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f53e0    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f53e6    83c404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x006f53e9    c744240800000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f53f1    8b442408
                         push               0x2                                           // 0x006f53f5    6a02
                         push               eax                                           // 0x006f53f7    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f53f8    e8a3170000
                         pop                edi                                           // 0x006f53fd    5f
                         pop                esi                                           // 0x006f53fe    5e
                         add                esp, 0x08                                     // 0x006f53ff    83c408
                         ret                                                              // 0x006f5402    c3
_jmp_addr_0x006f5403:    push               0x0                                           // 0x006f5403    6a00
                         push               0x009c8060                                    // 0x006f5405    6860809c00
                         push               0x009c7f30                                    // 0x006f540a    68307f9c00
                         push               0x0                                           // 0x006f540f    6a00
                         push               esi                                           // 0x006f5411    56
                         call               ___RTDynamicCast                              // 0x006f5412    e802060d00
                         add                esp, 0x14                                     // 0x006f5417    83c414
                         test               eax, eax                                      // 0x006f541a    85c0
                         {disp8} jne        _jmp_addr_0x006f5425                          // 0x006f541c    7507
                         push               0x00c0d088                                    // 0x006f541e    6888d0c000
                         {disp8} jmp        _jmp_addr_0x006f53db                          // 0x006f5423    ebb6
_jmp_addr_0x006f5425:    {disp32} mov       eax, dword ptr [eax + 0x00000164]             // 0x006f5425    8b8064010000
                         {disp32} mov       ecx, dword ptr [eax + edi * 0x4 + 0x00018718] // 0x006f542b    8b8cb818870100
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x006f5432    894c2408
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5436    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000            // 0x006f543c    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x006f5444    df6c2408
                         push               0x2                                           // 0x006f5448    6a02
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x006f544a    d95c240c
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x006f544e    8b54240c
                         push               edx                                           // 0x006f5452    52
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5453    e848170000
                         pop                edi                                           // 0x006f5458    5f
                         pop                esi                                           // 0x006f5459    5e
                         add                esp, 0x08                                     // 0x006f545a    83c408
                         ret                                                              // 0x006f545d    c3
                         nop                                                              // 0x006f545e    90
                         nop                                                              // 0x006f545f    90
                         push               ecx                                           // 0x006f5460    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5461    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f5467    8d442400
                         push               eax                                           // 0x006f546b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f546c    e84f170000
                         push               eax                                           // 0x006f5471    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5472    e8a97d0100
                         add                esp, 0x04                                     // 0x006f5477    83c404
                         test               eax, eax                                      // 0x006f547a    85c0
                         {disp8} jne        _jmp_addr_0x006f549c                          // 0x006f547c    751e
                         push               0x00c00afc                                    // 0x006f547e    68fc0ac000
_jmp_addr_0x006f5483:    call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5483    e8280e0000
                         add                esp, 0x04                                     // 0x006f5488    83c404
_jmp_addr_0x006f548b:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f548b    8b0d105cd900
                         push               0x1                                           // 0x006f5491    6a01
                         push               0x0                                           // 0x006f5493    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5495    e806170000
                         pop                ecx                                           // 0x006f549a    59
                         ret                                                              // 0x006f549b    c3
_jmp_addr_0x006f549c:    push               0x0                                           // 0x006f549c    6a00
                         push               0x009c8060                                    // 0x006f549e    6860809c00
                         push               0x009c7f30                                    // 0x006f54a3    68307f9c00
                         push               0x0                                           // 0x006f54a8    6a00
                         push               eax                                           // 0x006f54aa    50
                         call               ___RTDynamicCast                              // 0x006f54ab    e869050d00
                         add                esp, 0x14                                     // 0x006f54b0    83c414
                         test               eax, eax                                      // 0x006f54b3    85c0
                         {disp8} jne        _jmp_addr_0x006f54be                          // 0x006f54b5    7507
                         push               0x00c0d088                                    // 0x006f54b7    6888d0c000
                         {disp8} jmp        _jmp_addr_0x006f5483                          // 0x006f54bc    ebc5
_jmp_addr_0x006f54be:    mov                edx, dword ptr [eax]                          // 0x006f54be    8b10
                         mov.s              ecx, eax                                      // 0x006f54c0    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x006f54c2    ff521c
                         test               eax, eax                                      // 0x006f54c5    85c0
                         {disp8} je         _jmp_addr_0x006f548b                          // 0x006f54c7    74c2
                         {disp32} mov       eax, dword ptr [eax + 0x00000a48]             // 0x006f54c9    8b80480a0000
                         test               eax, eax                                      // 0x006f54cf    85c0
                         {disp8} je         _jmp_addr_0x006f548b                          // 0x006f54d1    74b8
                         {disp8} mov        eax, dword ptr [eax + 0x30]                   // 0x006f54d3    8b4030
                         test               eax, eax                                      // 0x006f54d6    85c0
                         {disp8} je         _jmp_addr_0x006f548b                          // 0x006f54d8    74b1
                         mov.s              ecx, eax                                      // 0x006f54da    8bc8
                         call               _jmp_addr_0x00464920                          // 0x006f54dc    e83ff4d6ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f54e1    8b0d105cd900
                         push               0x1                                           // 0x006f54e7    6a01
                         push               eax                                           // 0x006f54e9    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f54ea    e8b1160000
                         pop                ecx                                           // 0x006f54ef    59
                         ret                                                              // 0x006f54f0    c3
                         nop                                                              // 0x006f54f1    90
                         nop                                                              // 0x006f54f2    90
                         nop                                                              // 0x006f54f3    90
                         nop                                                              // 0x006f54f4    90
                         nop                                                              // 0x006f54f5    90
                         nop                                                              // 0x006f54f6    90
                         nop                                                              // 0x006f54f7    90
                         nop                                                              // 0x006f54f8    90
                         nop                                                              // 0x006f54f9    90
                         nop                                                              // 0x006f54fa    90
                         nop                                                              // 0x006f54fb    90
                         nop                                                              // 0x006f54fc    90
                         nop                                                              // 0x006f54fd    90
                         nop                                                              // 0x006f54fe    90
                         nop                                                              // 0x006f54ff    90
                         push               ecx                                           // 0x006f5500    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5501    8b0d105cd900
                         push               esi                                           // 0x006f5507    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5508    8d442404
                         push               eax                                           // 0x006f550c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f550d    e8ae160000
                         push               eax                                           // 0x006f5512    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5513    e8087d0100
                         push               0x0                                           // 0x006f5518    6a00
                         push               0x009c8060                                    // 0x006f551a    6860809c00
                         push               0x009c7f30                                    // 0x006f551f    68307f9c00
                         push               0x0                                           // 0x006f5524    6a00
                         push               eax                                           // 0x006f5526    50
                         call               ___RTDynamicCast                              // 0x006f5527    e8ed040d00
                         mov.s              esi, eax                                      // 0x006f552c    8bf0
                         add                esp, 0x18                                     // 0x006f552e    83c418
                         test               esi, esi                                      // 0x006f5531    85f6
                         {disp8} je         _jmp_addr_0x006f5556                          // 0x006f5533    7421
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x006f5535    8b8e60010000
                         {disp8} mov        ecx, dword ptr [ecx + 0x58]                   // 0x006f553b    8b4958
                         call               _jmp_addr_0x0048f750                          // 0x006f553e    e80da2d9ff
                         push               0x1                                           // 0x006f5543    6a01
                         push               0x1                                           // 0x006f5545    6a01
                         push               0x00c0d0d0                                    // 0x006f5547    68d0d0c000
                         mov.s              ecx, esi                                      // 0x006f554c    8bce
                         call               ?FinishActionUnsuccessfully@Creature@@QAEXPADHH@Z                          // 0x006f554e    e8dd01d8ff
                         pop                esi                                           // 0x006f5553    5e
                         pop                ecx                                           // 0x006f5554    59
                         ret                                                              // 0x006f5555    c3
_jmp_addr_0x006f5556:    push               0x00c0d098                                    // 0x006f5556    6898d0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f555b    e8500d0000
                         add                esp, 0x04                                     // 0x006f5560    83c404
                         pop                esi                                           // 0x006f5563    5e
                         pop                ecx                                           // 0x006f5564    59
                         ret                                                              // 0x006f5565    c3
                         nop                                                              // 0x006f5566    90
                         nop                                                              // 0x006f5567    90
                         nop                                                              // 0x006f5568    90
                         nop                                                              // 0x006f5569    90
                         nop                                                              // 0x006f556a    90
                         nop                                                              // 0x006f556b    90
                         nop                                                              // 0x006f556c    90
                         nop                                                              // 0x006f556d    90
                         nop                                                              // 0x006f556e    90
                         nop                                                              // 0x006f556f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5570    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5576    83ec08
                         push               esi                                           // 0x006f5579    56
                         push               edi                                           // 0x006f557a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f557b    8d442408
                         push               eax                                           // 0x006f557f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5580    e83b160000
                         push               eax                                           // 0x006f5585    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5586    e8957c0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f558b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f5591    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f5594    8d54240c
                         push               edx                                           // 0x006f5598    52
                         mov.s              esi, eax                                      // 0x006f5599    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f559b    e820160000
                         test               esi, esi                                      // 0x006f55a0    85f6
                         mov.s              edi, eax                                      // 0x006f55a2    8bf8
                         {disp8} jne        _jmp_addr_0x006f55b9                          // 0x006f55a4    7513
                         push               0x00c0cfac                                    // 0x006f55a6    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f55ab    e8000d0000
                         add                esp, 0x04                                     // 0x006f55b0    83c404
                         pop                edi                                           // 0x006f55b3    5f
                         pop                esi                                           // 0x006f55b4    5e
                         add                esp, 0x08                                     // 0x006f55b5    83c408
                         ret                                                              // 0x006f55b8    c3
_jmp_addr_0x006f55b9:    mov                eax, dword ptr [esi]                          // 0x006f55b9    8b06
                         mov.s              ecx, esi                                      // 0x006f55bb    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f55bd    ff5034
                         test               eax, eax                                      // 0x006f55c0    85c0
                         {disp8} jne        _jmp_addr_0x006f55d1                          // 0x006f55c2    750d
                         push               0x00c0cf98                                    // 0x006f55c4    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f55c9    e8e20c0000
                         add                esp, 0x04                                     // 0x006f55ce    83c404
_jmp_addr_0x006f55d1:    mov                edx, dword ptr [esi]                          // 0x006f55d1    8b16
                         mov.s              ecx, esi                                      // 0x006f55d3    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f55d5    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f55d8    8b06
                         mov.s              ecx, esi                                      // 0x006f55da    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f55dc    ff5034
                         test               eax, eax                                      // 0x006f55df    85c0
                         {disp8} je         _jmp_addr_0x006f55f1                          // 0x006f55e1    740e
                         cmp                edi, 0x01                                     // 0x006f55e3    83ff01
                         sete               cl                                            // 0x006f55e6    0f94c1
                         push               ecx                                           // 0x006f55e9    51
                         mov.s              ecx, esi                                      // 0x006f55ea    8bce
                         call               ?SetAnimationTimeModify@Creature@@QAEX_N@Z    // 0x006f55ec    e85f70d8ff
_jmp_addr_0x006f55f1:    pop                edi                                           // 0x006f55f1    5f
                         pop                esi                                           // 0x006f55f2    5e
                         add                esp, 0x08                                     // 0x006f55f3    83c408
                         ret                                                              // 0x006f55f6    c3
                         nop                                                              // 0x006f55f7    90
                         nop                                                              // 0x006f55f8    90
                         nop                                                              // 0x006f55f9    90
                         nop                                                              // 0x006f55fa    90
                         nop                                                              // 0x006f55fb    90
                         nop                                                              // 0x006f55fc    90
                         nop                                                              // 0x006f55fd    90
                         nop                                                              // 0x006f55fe    90
                         nop                                                              // 0x006f55ff    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5600    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5606    83ec08
                         push               esi                                           // 0x006f5609    56
                         push               edi                                           // 0x006f560a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f560b    8d442408
                         push               eax                                           // 0x006f560f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5610    e8ab150000
                         push               eax                                           // 0x006f5615    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5616    e8057c0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f561b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f5621    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f5624    8d54240c
                         push               edx                                           // 0x006f5628    52
                         mov.s              esi, eax                                      // 0x006f5629    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f562b    e890150000
                         test               esi, esi                                      // 0x006f5630    85f6
                         mov.s              edi, eax                                      // 0x006f5632    8bf8
                         {disp8} jne        _jmp_addr_0x006f5649                          // 0x006f5634    7513
                         push               0x00c0cfac                                    // 0x006f5636    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f563b    e8700c0000
                         add                esp, 0x04                                     // 0x006f5640    83c404
                         pop                edi                                           // 0x006f5643    5f
                         pop                esi                                           // 0x006f5644    5e
                         add                esp, 0x08                                     // 0x006f5645    83c408
                         ret                                                              // 0x006f5648    c3
_jmp_addr_0x006f5649:    mov                eax, dword ptr [esi]                          // 0x006f5649    8b06
                         mov.s              ecx, esi                                      // 0x006f564b    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f564d    ff5034
                         test               eax, eax                                      // 0x006f5650    85c0
                         {disp8} jne        _jmp_addr_0x006f5661                          // 0x006f5652    750d
                         push               0x00c0cf98                                    // 0x006f5654    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5659    e8520c0000
                         add                esp, 0x04                                     // 0x006f565e    83c404
_jmp_addr_0x006f5661:    mov                edx, dword ptr [esi]                          // 0x006f5661    8b16
                         mov.s              ecx, esi                                      // 0x006f5663    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5665    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5668    8b06
                         mov.s              ecx, esi                                      // 0x006f566a    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f566c    ff5034
                         test               eax, eax                                      // 0x006f566f    85c0
                         {disp8} je         _jmp_addr_0x006f5679                          // 0x006f5671    7406
                         {disp32} mov       dword ptr [esi + 0x00001060], edi             // 0x006f5673    89be60100000
_jmp_addr_0x006f5679:    pop                edi                                           // 0x006f5679    5f
                         pop                esi                                           // 0x006f567a    5e
                         add                esp, 0x08                                     // 0x006f567b    83c408
                         ret                                                              // 0x006f567e    c3
                         nop                                                              // 0x006f567f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5680    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5686    83ec08
                         push               esi                                           // 0x006f5689    56
                         push               edi                                           // 0x006f568a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f568b    8d442408
                         push               eax                                           // 0x006f568f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5690    e82b150000
                         push               eax                                           // 0x006f5695    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5696    e8857b0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f569b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f56a1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f56a4    8d54240c
                         push               edx                                           // 0x006f56a8    52
                         mov.s              esi, eax                                      // 0x006f56a9    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f56ab    e810150000
                         test               esi, esi                                      // 0x006f56b0    85f6
                         mov.s              edi, eax                                      // 0x006f56b2    8bf8
                         {disp8} jne        _jmp_addr_0x006f56c9                          // 0x006f56b4    7513
                         push               0x00c0cfac                                    // 0x006f56b6    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f56bb    e8f00b0000
                         add                esp, 0x04                                     // 0x006f56c0    83c404
                         pop                edi                                           // 0x006f56c3    5f
                         pop                esi                                           // 0x006f56c4    5e
                         add                esp, 0x08                                     // 0x006f56c5    83c408
                         ret                                                              // 0x006f56c8    c3
_jmp_addr_0x006f56c9:    mov                eax, dword ptr [esi]                          // 0x006f56c9    8b06
                         mov.s              ecx, esi                                      // 0x006f56cb    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f56cd    ff5034
                         test               eax, eax                                      // 0x006f56d0    85c0
                         {disp8} jne        _jmp_addr_0x006f56e1                          // 0x006f56d2    750d
                         push               0x00c0cf98                                    // 0x006f56d4    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f56d9    e8d20b0000
                         add                esp, 0x04                                     // 0x006f56de    83c404
_jmp_addr_0x006f56e1:    mov                edx, dword ptr [esi]                          // 0x006f56e1    8b16
                         mov.s              ecx, esi                                      // 0x006f56e3    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f56e5    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f56e8    8b06
                         mov.s              ecx, esi                                      // 0x006f56ea    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f56ec    ff5034
                         test               eax, eax                                      // 0x006f56ef    85c0
                         {disp8} je         _jmp_addr_0x006f56f9                          // 0x006f56f1    7406
                         {disp32} mov       dword ptr [esi + 0x000010c0], edi             // 0x006f56f3    89bec0100000
_jmp_addr_0x006f56f9:    pop                edi                                           // 0x006f56f9    5f
                         pop                esi                                           // 0x006f56fa    5e
                         add                esp, 0x08                                     // 0x006f56fb    83c408
                         ret                                                              // 0x006f56fe    c3
                         nop                                                              // 0x006f56ff    90
                         push               ecx                                           // 0x006f5700    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5701    8b0d105cd900
                         push               esi                                           // 0x006f5707    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5708    8d442404
                         push               eax                                           // 0x006f570c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f570d    e8ae140000
                         push               eax                                           // 0x006f5712    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5713    e8087b0100
                         mov.s              esi, eax                                      // 0x006f5718    8bf0
                         add                esp, 0x04                                     // 0x006f571a    83c404
                         test               esi, esi                                      // 0x006f571d    85f6
                         {disp8} jne        _jmp_addr_0x006f5731                          // 0x006f571f    7510
                         push               0x00c0cfac                                    // 0x006f5721    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5726    e8850b0000
                         add                esp, 0x04                                     // 0x006f572b    83c404
                         pop                esi                                           // 0x006f572e    5e
                         pop                ecx                                           // 0x006f572f    59
                         ret                                                              // 0x006f5730    c3
_jmp_addr_0x006f5731:    mov                edx, dword ptr [esi]                          // 0x006f5731    8b16
                         mov.s              ecx, esi                                      // 0x006f5733    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5735    ff5234
                         test               eax, eax                                      // 0x006f5738    85c0
                         {disp8} jne        _jmp_addr_0x006f5749                          // 0x006f573a    750d
                         push               0x00c0cf98                                    // 0x006f573c    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5741    e86a0b0000
                         add                esp, 0x04                                     // 0x006f5746    83c404
_jmp_addr_0x006f5749:    mov                eax, dword ptr [esi]                          // 0x006f5749    8b06
                         mov.s              ecx, esi                                      // 0x006f574b    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f574d    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5750    8b16
                         mov.s              ecx, esi                                      // 0x006f5752    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5754    ff5234
                         test               eax, eax                                      // 0x006f5757    85c0
                         {disp8} je         _jmp_addr_0x006f576b                          // 0x006f5759    7410
                         {disp32} mov       eax, dword ptr [esi + 0x00000164]             // 0x006f575b    8b8664010000
                         {disp32} mov       dword ptr [eax + 0x0001d3f4], 0x00000000      // 0x006f5761    c780f4d3010000000000
_jmp_addr_0x006f576b:    pop                esi                                           // 0x006f576b    5e
                         pop                ecx                                           // 0x006f576c    59
                         ret                                                              // 0x006f576d    c3
                         nop                                                              // 0x006f576e    90
                         nop                                                              // 0x006f576f    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5770    8b0d105cd900
                         sub                esp, 0x0c                                     // 0x006f5776    83ec0c
                         push               ebx                                           // 0x006f5779    53
                         push               esi                                           // 0x006f577a    56
                         push               edi                                           // 0x006f577b    57
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f577c    8d44240c
                         push               eax                                           // 0x006f5780    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5781    e83a140000
                         push               eax                                           // 0x006f5786    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5787    e8947a0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f578c    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f5792    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f5795    8d542410
                         push               edx                                           // 0x006f5799    52
                         mov.s              esi, eax                                      // 0x006f579a    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f579c    e81f140000
                         push               eax                                           // 0x006f57a1    50
                         call               _jmp_addr_0x0070d220                          // 0x006f57a2    e8797a0100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f57a7    8b0d105cd900
                         mov.s              edi, eax                                      // 0x006f57ad    8bf8
                         add                esp, 0x04                                     // 0x006f57af    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f57b2    8d442414
                         push               eax                                           // 0x006f57b6    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f57b7    e804140000
                         test               esi, esi                                      // 0x006f57bc    85f6
                         mov.s              ebx, eax                                      // 0x006f57be    8bd8
                         {disp8} je         _jmp_addr_0x006f57c6                          // 0x006f57c0    7404
                         test               edi, edi                                      // 0x006f57c2    85ff
                         {disp8} jne        _jmp_addr_0x006f57d3                          // 0x006f57c4    750d
_jmp_addr_0x006f57c6:    push               0x00c0cfac                                    // 0x006f57c6    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f57cb    e8e00a0000
                         add                esp, 0x04                                     // 0x006f57d0    83c404
_jmp_addr_0x006f57d3:    test               esi, esi                                      // 0x006f57d3    85f6
                         {disp32} je        _jmp_addr_0x006f58b3                          // 0x006f57d5    0f84d8000000
                         test               edi, edi                                      // 0x006f57db    85ff
                         {disp32} je        _jmp_addr_0x006f58b3                          // 0x006f57dd    0f84d0000000
                         mov                edx, dword ptr [esi]                          // 0x006f57e3    8b16
                         mov.s              ecx, esi                                      // 0x006f57e5    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f57e7    ff5234
                         test               eax, eax                                      // 0x006f57ea    85c0
                         {disp8} jne        _jmp_addr_0x006f57fb                          // 0x006f57ec    750d
                         push               0x00c0cf98                                    // 0x006f57ee    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f57f3    e8b80a0000
                         add                esp, 0x04                                     // 0x006f57f8    83c404
_jmp_addr_0x006f57fb:    mov                eax, dword ptr [esi]                          // 0x006f57fb    8b06
                         mov.s              ecx, esi                                      // 0x006f57fd    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f57ff    ff5034
                         mov                edx, dword ptr [edi]                          // 0x006f5802    8b17
                         mov.s              ecx, edi                                      // 0x006f5804    8bcf
                         call               dword ptr [edx + 0x34]                        // 0x006f5806    ff5234
                         test               eax, eax                                      // 0x006f5809    85c0
                         {disp8} jne        _jmp_addr_0x006f581a                          // 0x006f580b    750d
                         push               0x00c0cf98                                    // 0x006f580d    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5812    e8990a0000
                         add                esp, 0x04                                     // 0x006f5817    83c404
_jmp_addr_0x006f581a:    mov                eax, dword ptr [edi]                          // 0x006f581a    8b07
                         mov.s              ecx, edi                                      // 0x006f581c    8bcf
                         call               dword ptr [eax + 0x34]                        // 0x006f581e    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5821    8b16
                         mov.s              ecx, esi                                      // 0x006f5823    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5825    ff5234
                         test               eax, eax                                      // 0x006f5828    85c0
                         {disp32} je        _jmp_addr_0x006f58b3                          // 0x006f582a    0f8483000000
                         mov                eax, dword ptr [edi]                          // 0x006f5830    8b07
                         mov.s              ecx, edi                                      // 0x006f5832    8bcf
                         call               dword ptr [eax + 0x34]                        // 0x006f5834    ff5034
                         test               eax, eax                                      // 0x006f5837    85c0
                         {disp8} je         _jmp_addr_0x006f58b3                          // 0x006f5839    7478
                         test               ebx, ebx                                      // 0x006f583b    85db
                         {disp8} je         _jmp_addr_0x006f58b3                          // 0x006f583d    7474
                         {disp32} mov       eax, dword ptr [esi + 0x000003d0]             // 0x006f583f    8b86d0030000
                         test               eax, eax                                      // 0x006f5845    85c0
                         {disp8} je         _jmp_addr_0x006f5854                          // 0x006f5847    740b
_jmp_addr_0x006f5849:    cmp                dword ptr [eax + 0x04], edi                   // 0x006f5849    397804
                         {disp8} je         _jmp_addr_0x006f5879                          // 0x006f584c    742b
                         mov                eax, dword ptr [eax]                          // 0x006f584e    8b00
                         test               eax, eax                                      // 0x006f5850    85c0
                         {disp8} jne        _jmp_addr_0x006f5849                          // 0x006f5852    75f5
_jmp_addr_0x006f5854:    push               0x8                                           // 0x006f5854    6a08
                         call               ??2@YAPAXI@Z                                  // 0x006f5856    e8930c0d00
                         add                esp, 0x04                                     // 0x006f585b    83c404
                         test               eax, eax                                      // 0x006f585e    85c0
                         {disp8} je         _jmp_addr_0x006f5879                          // 0x006f5860    7417
                         {disp32} mov       ecx, dword ptr [esi + 0x000003d0]             // 0x006f5862    8b8ed0030000
                         {disp8} mov        dword ptr [eax + 0x04], edi                   // 0x006f5868    897804
                         mov                dword ptr [eax], ecx                          // 0x006f586b    8908
                         {disp32} mov       dword ptr [esi + 0x000003d0], eax             // 0x006f586d    8986d0030000
                         {disp32} inc       dword ptr [esi + 0x000003d4]                  // 0x006f5873    ff86d4030000
_jmp_addr_0x006f5879:    {disp32} mov       eax, dword ptr [edi + 0x000003d0]             // 0x006f5879    8b87d0030000
                         test               eax, eax                                      // 0x006f587f    85c0
                         {disp8} je         _jmp_addr_0x006f588e                          // 0x006f5881    740b
_jmp_addr_0x006f5883:    cmp                dword ptr [eax + 0x04], esi                   // 0x006f5883    397004
                         {disp8} je         _jmp_addr_0x006f58b3                          // 0x006f5886    742b
                         mov                eax, dword ptr [eax]                          // 0x006f5888    8b00
                         test               eax, eax                                      // 0x006f588a    85c0
                         {disp8} jne        _jmp_addr_0x006f5883                          // 0x006f588c    75f5
_jmp_addr_0x006f588e:    push               0x8                                           // 0x006f588e    6a08
                         call               ??2@YAPAXI@Z                                  // 0x006f5890    e8590c0d00
                         add                esp, 0x04                                     // 0x006f5895    83c404
                         test               eax, eax                                      // 0x006f5898    85c0
                         {disp8} je         _jmp_addr_0x006f58b3                          // 0x006f589a    7417
                         {disp32} mov       ecx, dword ptr [edi + 0x000003d0]             // 0x006f589c    8b8fd0030000
                         {disp8} mov        dword ptr [eax + 0x04], esi                   // 0x006f58a2    897004
                         mov                dword ptr [eax], ecx                          // 0x006f58a5    8908
                         {disp32} mov       dword ptr [edi + 0x000003d0], eax             // 0x006f58a7    8987d0030000
                         {disp32} inc       dword ptr [edi + 0x000003d4]                  // 0x006f58ad    ff87d4030000
_jmp_addr_0x006f58b3:    pop                edi                                           // 0x006f58b3    5f
                         pop                esi                                           // 0x006f58b4    5e
                         pop                ebx                                           // 0x006f58b5    5b
                         add                esp, 0x0c                                     // 0x006f58b6    83c40c
                         ret                                                              // 0x006f58b9    c3
                         nop                                                              // 0x006f58ba    90
                         nop                                                              // 0x006f58bb    90
                         nop                                                              // 0x006f58bc    90
                         nop                                                              // 0x006f58bd    90
                         nop                                                              // 0x006f58be    90
                         nop                                                              // 0x006f58bf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f58c0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f58c6    83ec08
                         push               esi                                           // 0x006f58c9    56
                         push               edi                                           // 0x006f58ca    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f58cb    8d442408
                         push               eax                                           // 0x006f58cf    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f58d0    e8eb120000
                         push               eax                                           // 0x006f58d5    50
                         call               _jmp_addr_0x0070d220                          // 0x006f58d6    e845790100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f58db    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f58e1    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f58e4    8d54240c
                         push               edx                                           // 0x006f58e8    52
                         mov.s              esi, eax                                      // 0x006f58e9    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f58eb    e8d0120000
                         push               eax                                           // 0x006f58f0    50
                         call               _jmp_addr_0x0070d220                          // 0x006f58f1    e82a790100
                         add                esp, 0x04                                     // 0x006f58f6    83c404
                         test               esi, esi                                      // 0x006f58f9    85f6
                         mov.s              edi, eax                                      // 0x006f58fb    8bf8
                         {disp8} je         _jmp_addr_0x006f5903                          // 0x006f58fd    7404
                         test               edi, edi                                      // 0x006f58ff    85ff
                         {disp8} jne        _jmp_addr_0x006f5910                          // 0x006f5901    750d
_jmp_addr_0x006f5903:    push               0x00c0cfac                                    // 0x006f5903    68accfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5908    e8a3090000
                         add                esp, 0x04                                     // 0x006f590d    83c404
_jmp_addr_0x006f5910:    test               esi, esi                                      // 0x006f5910    85f6
                         {disp8} je         _jmp_addr_0x006f5963                          // 0x006f5912    744f
                         test               edi, edi                                      // 0x006f5914    85ff
                         {disp8} je         _jmp_addr_0x006f5963                          // 0x006f5916    744b
                         mov                eax, dword ptr [esi]                          // 0x006f5918    8b06
                         mov.s              ecx, esi                                      // 0x006f591a    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f591c    ff5034
                         test               eax, eax                                      // 0x006f591f    85c0
                         {disp8} jne        _jmp_addr_0x006f5930                          // 0x006f5921    750d
                         push               0x00c0cf98                                    // 0x006f5923    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5928    e883090000
                         add                esp, 0x04                                     // 0x006f592d    83c404
_jmp_addr_0x006f5930:    mov                edx, dword ptr [esi]                          // 0x006f5930    8b16
                         mov.s              ecx, esi                                      // 0x006f5932    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5934    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5937    8b06
                         mov.s              ecx, esi                                      // 0x006f5939    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f593b    ff5034
                         test               eax, eax                                      // 0x006f593e    85c0
                         {disp8} je         _jmp_addr_0x006f5963                          // 0x006f5940    7421
                         {disp32} mov       edx, dword ptr [esi + 0x000010d4]             // 0x006f5942    8b96d4100000
                         xor.s              ecx, ecx                                      // 0x006f5948    33c9
                         cmp.s              edi, edx                                      // 0x006f594a    3bfa
                         sete               cl                                            // 0x006f594c    0f94c1
                         push               0x6                                           // 0x006f594f    6a06
                         push               ecx                                           // 0x006f5951    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5952    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5958    e843120000
                         pop                edi                                           // 0x006f595d    5f
                         pop                esi                                           // 0x006f595e    5e
                         add                esp, 0x08                                     // 0x006f595f    83c408
                         ret                                                              // 0x006f5962    c3
_jmp_addr_0x006f5963:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5963    8b0d105cd900
                         push               0x6                                           // 0x006f5969    6a06
                         push               0x0                                           // 0x006f596b    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f596d    e82e120000
                         pop                edi                                           // 0x006f5972    5f
                         pop                esi                                           // 0x006f5973    5e
                         add                esp, 0x08                                     // 0x006f5974    83c408
                         ret                                                              // 0x006f5977    c3
                         nop                                                              // 0x006f5978    90
                         nop                                                              // 0x006f5979    90
                         nop                                                              // 0x006f597a    90
                         nop                                                              // 0x006f597b    90
                         nop                                                              // 0x006f597c    90
                         nop                                                              // 0x006f597d    90
                         nop                                                              // 0x006f597e    90
                         nop                                                              // 0x006f597f    90
                         sub                esp, 0x10                                     // 0x006f5980    83ec10
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5983    8b0d105cd900
                         push               esi                                           // 0x006f5989    56
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x006f598a    8d44240c
                         push               eax                                           // 0x006f598e    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f598f    e82c120000
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f5994    8b35105cd900
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x006f599a    8d4c240c
                         push               ecx                                           // 0x006f599e    51
                         mov.s              ecx, esi                                      // 0x006f599f    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f59a1    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f59a5    e816120000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f59aa    8d542408
                         push               edx                                           // 0x006f59ae    52
                         mov.s              ecx, esi                                      // 0x006f59af    8bce
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f59b1    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f59b5    e806120000
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f59ba    8d442408
                         push               eax                                           // 0x006f59be    50
                         mov.s              ecx, esi                                      // 0x006f59bf    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f59c1    e8fa110000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f59c6    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f59cc    8d542410
                         push               edx                                           // 0x006f59d0    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f59d1    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f59d5    e8e6110000
                         push               eax                                           // 0x006f59da    50
                         call               _jmp_addr_0x0070d220                          // 0x006f59db    e840780100
                         mov.s              esi, eax                                      // 0x006f59e0    8bf0
                         add                esp, 0x04                                     // 0x006f59e2    83c404
                         test               esi, esi                                      // 0x006f59e5    85f6
                         {disp8} je         _jmp_addr_0x006f5a51                          // 0x006f59e7    7468
                         mov                eax, dword ptr [esi]                          // 0x006f59e9    8b06
                         mov.s              ecx, esi                                      // 0x006f59eb    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f59ed    ff5034
                         test               eax, eax                                      // 0x006f59f0    85c0
                         {disp8} jne        _jmp_addr_0x006f5a01                          // 0x006f59f2    750d
                         push               0x00c0cf98                                    // 0x006f59f4    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f59f9    e8b2080000
                         add                esp, 0x04                                     // 0x006f59fe    83c404
_jmp_addr_0x006f5a01:    mov                edx, dword ptr [esi]                          // 0x006f5a01    8b16
                         mov.s              ecx, esi                                      // 0x006f5a03    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5a05    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5a08    8b06
                         mov.s              ecx, esi                                      // 0x006f5a0a    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5a0c    ff5034
                         test               eax, eax                                      // 0x006f5a0f    85c0
                         {disp8} je         _jmp_addr_0x006f5a51                          // 0x006f5a11    743e
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x006f5a13    d9442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f5a17    8b4c2404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x006f5a1b    d80d00c48a00
                         {disp32} mov       dword ptr [esi + 0x000011b4], ecx             // 0x006f5a21    898eb4110000
                         call               _jmp_addr_0x007a1400                          // 0x006f5a27    e8d4b90a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006f5a2c    d944240c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3400]              // 0x006f5a30    d80d00c48a00
                         {disp32} mov       dword ptr [esi + 0x000011a8], eax             // 0x006f5a36    8986a8110000
                         call               _jmp_addr_0x007a1400                          // 0x006f5a3c    e8bfb90a00
                         {disp32} mov       dword ptr [esi + 0x000011ac], eax             // 0x006f5a41    8986ac110000
                         {disp32} mov       dword ptr [esi + 0x000011b0], 0x00000000      // 0x006f5a47    c786b011000000000000
_jmp_addr_0x006f5a51:    pop                esi                                           // 0x006f5a51    5e
                         add                esp, 0x10                                     // 0x006f5a52    83c410
                         ret                                                              // 0x006f5a55    c3
                         nop                                                              // 0x006f5a56    90
                         nop                                                              // 0x006f5a57    90
                         nop                                                              // 0x006f5a58    90
                         nop                                                              // 0x006f5a59    90
                         nop                                                              // 0x006f5a5a    90
                         nop                                                              // 0x006f5a5b    90
                         nop                                                              // 0x006f5a5c    90
                         nop                                                              // 0x006f5a5d    90
                         nop                                                              // 0x006f5a5e    90
                         nop                                                              // 0x006f5a5f    90
                         push               ecx                                           // 0x006f5a60    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5a61    8b0d105cd900
                         push               esi                                           // 0x006f5a67    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5a68    8d442404
                         push               eax                                           // 0x006f5a6c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5a6d    e84e110000
                         push               eax                                           // 0x006f5a72    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5a73    e8a8770100
                         mov.s              esi, eax                                      // 0x006f5a78    8bf0
                         add                esp, 0x04                                     // 0x006f5a7a    83c404
                         test               esi, esi                                      // 0x006f5a7d    85f6
                         {disp8} je         _jmp_addr_0x006f5ab5                          // 0x006f5a7f    7434
                         mov                edx, dword ptr [esi]                          // 0x006f5a81    8b16
                         mov.s              ecx, esi                                      // 0x006f5a83    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5a85    ff5234
                         test               eax, eax                                      // 0x006f5a88    85c0
                         {disp8} jne        _jmp_addr_0x006f5a99                          // 0x006f5a8a    750d
                         push               0x00c0cf98                                    // 0x006f5a8c    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5a91    e81a080000
                         add                esp, 0x04                                     // 0x006f5a96    83c404
_jmp_addr_0x006f5a99:    mov                eax, dword ptr [esi]                          // 0x006f5a99    8b06
                         mov.s              ecx, esi                                      // 0x006f5a9b    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5a9d    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5aa0    8b16
                         mov.s              ecx, esi                                      // 0x006f5aa2    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5aa4    ff5234
                         test               eax, eax                                      // 0x006f5aa7    85c0
                         {disp8} je         _jmp_addr_0x006f5ab5                          // 0x006f5aa9    740a
                         {disp32} mov       dword ptr [esi + 0x000011b4], 0x00000000      // 0x006f5aab    c786b411000000000000
_jmp_addr_0x006f5ab5:    pop                esi                                           // 0x006f5ab5    5e
                         pop                ecx                                           // 0x006f5ab6    59
                         ret                                                              // 0x006f5ab7    c3
                         nop                                                              // 0x006f5ab8    90
                         nop                                                              // 0x006f5ab9    90
                         nop                                                              // 0x006f5aba    90
                         nop                                                              // 0x006f5abb    90
                         nop                                                              // 0x006f5abc    90
                         nop                                                              // 0x006f5abd    90
                         nop                                                              // 0x006f5abe    90
                         nop                                                              // 0x006f5abf    90
                         push               ecx                                           // 0x006f5ac0    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006f5ac1    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x006f5ac7    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x006f5ac9    8a81595a2000
                         push               esi                                           // 0x006f5acf    56
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x006f5ad0    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x006f5ad3    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x006f5ad6    8d0450
                         shl                eax, 5                                        // 0x006f5ad9    c1e005
                         {disp32} mov       esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x006f5adc    8bb408640a0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5ae3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f5ae9    8d542404
                         push               edx                                           // 0x006f5aed    52
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5aee    e8cd100000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x006f5af3    8b4e28
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x006f5af6    8b4910
                         {disp32} lea       edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x006f5af9    8d14cd00000000
                         sub.s              edx, ecx                                      // 0x006f5b00    2bd1
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b02    8b0d105cd900
                         add.s              edx, eax                                      // 0x006f5b08    03d0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00d95e60]       // 0x006f5b0a    8b0495605ed900
                         push               0x1                                           // 0x006f5b11    6a01
                         push               eax                                           // 0x006f5b13    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5b14    e887100000
                         pop                esi                                           // 0x006f5b19    5e
                         pop                ecx                                           // 0x006f5b1a    59
                         ret                                                              // 0x006f5b1b    c3
                         nop                                                              // 0x006f5b1c    90
                         nop                                                              // 0x006f5b1d    90
                         nop                                                              // 0x006f5b1e    90
                         nop                                                              // 0x006f5b1f    90
                         sub                esp, 0x08                                     // 0x006f5b20    83ec08
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b23    8b0d105cd900
                         push               ebx                                           // 0x006f5b29    53
                         push               ebp                                           // 0x006f5b2a    55
                         push               esi                                           // 0x006f5b2b    56
                         push               edi                                           // 0x006f5b2c    57
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f5b2d    8d442410
                         push               eax                                           // 0x006f5b31    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5b32    e889100000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b37    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f5b3d    8d542410
                         push               edx                                           // 0x006f5b41    52
                         mov.s              edi, eax                                      // 0x006f5b42    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5b44    e877100000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b49    8b0d105cd900
                         mov.s              ebx, eax                                      // 0x006f5b4f    8bd8
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f5b51    8d442410
                         push               eax                                           // 0x006f5b55    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5b56    e865100000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b5b    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x006f5b61    8d542410
                         push               edx                                           // 0x006f5b65    52
                         mov.s              ebp, eax                                      // 0x006f5b66    8be8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5b68    e853100000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5b6d    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f5b73    89442410
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x006f5b77    8d442414
                         push               eax                                           // 0x006f5b7b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5b7c    e83f100000
                         push               eax                                           // 0x006f5b81    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5b82    e899760100
                         mov.s              esi, eax                                      // 0x006f5b87    8bf0
                         add                esp, 0x04                                     // 0x006f5b89    83c404
                         test               esi, esi                                      // 0x006f5b8c    85f6
                         {disp8} je         _jmp_addr_0x006f5bc9                          // 0x006f5b8e    7439
                         mov                edx, dword ptr [esi]                          // 0x006f5b90    8b16
                         mov.s              ecx, esi                                      // 0x006f5b92    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5b94    ff5234
                         test               eax, eax                                      // 0x006f5b97    85c0
                         {disp8} jne        _jmp_addr_0x006f5ba8                          // 0x006f5b99    750d
                         push               0x00c0cf98                                    // 0x006f5b9b    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5ba0    e80b070000
                         add                esp, 0x04                                     // 0x006f5ba5    83c404
_jmp_addr_0x006f5ba8:    mov                eax, dword ptr [esi]                          // 0x006f5ba8    8b06
                         mov.s              ecx, esi                                      // 0x006f5baa    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5bac    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5baf    8b16
                         mov.s              ecx, esi                                      // 0x006f5bb1    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5bb3    ff5234
                         test               eax, eax                                      // 0x006f5bb6    85c0
                         {disp8} je         _jmp_addr_0x006f5bc9                          // 0x006f5bb8    740f
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x006f5bba    8b442410
                         push               edi                                           // 0x006f5bbe    57
                         push               ebx                                           // 0x006f5bbf    53
                         push               ebp                                           // 0x006f5bc0    55
                         push               eax                                           // 0x006f5bc1    50
                         mov.s              ecx, esi                                      // 0x006f5bc2    8bce
                         call               _jmp_addr_0x004f8a40                          // 0x006f5bc4    e8772ee0ff
_jmp_addr_0x006f5bc9:    pop                edi                                           // 0x006f5bc9    5f
                         pop                esi                                           // 0x006f5bca    5e
                         pop                ebp                                           // 0x006f5bcb    5d
                         pop                ebx                                           // 0x006f5bcc    5b
                         add                esp, 0x08                                     // 0x006f5bcd    83c408
                         ret                                                              // 0x006f5bd0    c3
                         nop                                                              // 0x006f5bd1    90
                         nop                                                              // 0x006f5bd2    90
                         nop                                                              // 0x006f5bd3    90
                         nop                                                              // 0x006f5bd4    90
                         nop                                                              // 0x006f5bd5    90
                         nop                                                              // 0x006f5bd6    90
                         nop                                                              // 0x006f5bd7    90
                         nop                                                              // 0x006f5bd8    90
                         nop                                                              // 0x006f5bd9    90
                         nop                                                              // 0x006f5bda    90
                         nop                                                              // 0x006f5bdb    90
                         nop                                                              // 0x006f5bdc    90
                         nop                                                              // 0x006f5bdd    90
                         nop                                                              // 0x006f5bde    90
                         nop                                                              // 0x006f5bdf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5be0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5be6    83ec08
                         push               esi                                           // 0x006f5be9    56
                         push               edi                                           // 0x006f5bea    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5beb    8d442408
                         push               eax                                           // 0x006f5bef    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5bf0    e8cb0f0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5bf5    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f5bfb    8d54240c
                         push               edx                                           // 0x006f5bff    52
                         mov.s              edi, eax                                      // 0x006f5c00    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5c02    e8b90f0000
                         push               eax                                           // 0x006f5c07    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5c08    e813760100
                         mov.s              esi, eax                                      // 0x006f5c0d    8bf0
                         add                esp, 0x04                                     // 0x006f5c0f    83c404
                         test               esi, esi                                      // 0x006f5c12    85f6
                         {disp8} je         _jmp_addr_0x006f5c72                          // 0x006f5c14    745c
                         mov                eax, dword ptr [esi]                          // 0x006f5c16    8b06
                         mov.s              ecx, esi                                      // 0x006f5c18    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5c1a    ff5034
                         test               eax, eax                                      // 0x006f5c1d    85c0
                         {disp8} jne        _jmp_addr_0x006f5c2e                          // 0x006f5c1f    750d
                         push               0x00c0cf98                                    // 0x006f5c21    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5c26    e885060000
                         add                esp, 0x04                                     // 0x006f5c2b    83c404
_jmp_addr_0x006f5c2e:    mov                edx, dword ptr [esi]                          // 0x006f5c2e    8b16
                         mov.s              ecx, esi                                      // 0x006f5c30    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5c32    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5c35    8b06
                         mov.s              ecx, esi                                      // 0x006f5c37    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5c39    ff5034
                         test               eax, eax                                      // 0x006f5c3c    85c0
                         {disp8} je         _jmp_addr_0x006f5c72                          // 0x006f5c3e    7432
                         cmp                edi, dword ptr [data_bytes + 0x351cac]        // 0x006f5c40    3b3dac7cd100
                         {disp8} jae        _jmp_addr_0x006f5c4c                          // 0x006f5c46    7304
                         test               edi, edi                                      // 0x006f5c48    85ff
                         {disp8} ja         _jmp_addr_0x006f5c53                          // 0x006f5c4a    7707
_jmp_addr_0x006f5c4c:    {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x006f5c4c    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x006f5c5f                          // 0x006f5c51    eb0c
_jmp_addr_0x006f5c53:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x006f5c53    8b15a87cd100
                         lea                ecx, dword ptr [edi + edi * 0x2]              // 0x006f5c59    8d0c7f
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x006f5c5c    8d048a
_jmp_addr_0x006f5c5f:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006f5c5f    8b4008
                         push               eax                                           // 0x006f5c62    50
                         add                esi, 0x000000e0                               // 0x006f5c63    81c6e0000000
                         push               esi                                           // 0x006f5c69    56
                         call               _wcscpy                                       // 0x006f5c6a    e847030d00
                         add                esp, 0x08                                     // 0x006f5c6f    83c408
_jmp_addr_0x006f5c72:    pop                edi                                           // 0x006f5c72    5f
                         pop                esi                                           // 0x006f5c73    5e
                         add                esp, 0x08                                     // 0x006f5c74    83c408
                         ret                                                              // 0x006f5c77    c3
                         nop                                                              // 0x006f5c78    90
                         nop                                                              // 0x006f5c79    90
                         nop                                                              // 0x006f5c7a    90
                         nop                                                              // 0x006f5c7b    90
                         nop                                                              // 0x006f5c7c    90
                         nop                                                              // 0x006f5c7d    90
                         nop                                                              // 0x006f5c7e    90
                         nop                                                              // 0x006f5c7f    90
                         sub                esp, 0x10                                     // 0x006f5c80    83ec10
                         push               esi                                           // 0x006f5c83    56
                         {disp32} mov       esi, dword ptr [_script_dll]                  // 0x006f5c84    8b35105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5c8a    8d442404
                         push               eax                                           // 0x006f5c8e    50
                         mov.s              ecx, esi                                      // 0x006f5c8f    8bce
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5c91    e82a0f0000
                         mov.s              ecx, eax                                      // 0x006f5c96    8bc8
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x006f5c98    8d542404
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x006f5c9c    894c2410
                         push               edx                                           // 0x006f5ca0    52
                         mov.s              ecx, esi                                      // 0x006f5ca1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f5ca3    89442408
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5ca7    e8140f0000
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x006f5cac    8d4c2404
                         push               ecx                                           // 0x006f5cb0    51
                         mov.s              ecx, esi                                      // 0x006f5cb1    8bce
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006f5cb3    89442408
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x006f5cb7    89442410
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5cbb    e8000f0000
                         mov.s              edx, eax                                      // 0x006f5cc0    8bd0
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f5cc2    89442404
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5cc6    8d442408
                         push               eax                                           // 0x006f5cca    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x006f5ccb    8954240c
                         call               _jmp_addr_0x00483850                          // 0x006f5ccf    e87cdbd8ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5cd4    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f5cda    83c404
                         push               0x6                                           // 0x006f5cdd    6a06
                         push               eax                                           // 0x006f5cdf    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5ce0    e8bb0e0000
                         pop                esi                                           // 0x006f5ce5    5e
                         add                esp, 0x10                                     // 0x006f5ce6    83c410
                         ret                                                              // 0x006f5ce9    c3
                         nop                                                              // 0x006f5cea    90
                         nop                                                              // 0x006f5ceb    90
                         nop                                                              // 0x006f5cec    90
                         nop                                                              // 0x006f5ced    90
                         nop                                                              // 0x006f5cee    90
                         nop                                                              // 0x006f5cef    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5cf0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5cf6    83ec08
                         push               esi                                           // 0x006f5cf9    56
                         push               edi                                           // 0x006f5cfa    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5cfb    8d442408
                         push               eax                                           // 0x006f5cff    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5d00    e8bb0e0000
                         push               eax                                           // 0x006f5d05    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5d06    e815750100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5d0b    8b0d105cd900
                         add                esp, 0x04                                     // 0x006f5d11    83c404
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f5d14    8d54240c
                         push               edx                                           // 0x006f5d18    52
                         mov.s              esi, eax                                      // 0x006f5d19    8bf0
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5d1b    e8a00e0000
                         test               esi, esi                                      // 0x006f5d20    85f6
                         mov.s              edi, eax                                      // 0x006f5d22    8bf8
                         {disp8} je         _jmp_addr_0x006f5d5f                          // 0x006f5d24    7439
                         mov                eax, dword ptr [esi]                          // 0x006f5d26    8b06
                         mov.s              ecx, esi                                      // 0x006f5d28    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5d2a    ff5034
                         test               eax, eax                                      // 0x006f5d2d    85c0
                         {disp8} jne        _jmp_addr_0x006f5d3e                          // 0x006f5d2f    750d
                         push               0x00c0cf98                                    // 0x006f5d31    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5d36    e875050000
                         add                esp, 0x04                                     // 0x006f5d3b    83c404
_jmp_addr_0x006f5d3e:    mov                edx, dword ptr [esi]                          // 0x006f5d3e    8b16
                         mov.s              ecx, esi                                      // 0x006f5d40    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5d42    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5d45    8b06
                         mov.s              ecx, esi                                      // 0x006f5d47    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5d49    ff5034
                         test               eax, eax                                      // 0x006f5d4c    85c0
                         {disp8} je         _jmp_addr_0x006f5d5f                          // 0x006f5d4e    740f
                         neg                edi                                           // 0x006f5d50    f7df
                         sbb.s              edi, edi                                      // 0x006f5d52    1bff
                         and                edi, 0x02                                     // 0x006f5d54    83e702
                         push               edi                                           // 0x006f5d57    57
                         mov.s              ecx, esi                                      // 0x006f5d58    8bce
                         call               _jmp_addr_0x0047d2f0                          // 0x006f5d5a    e89175d8ff
_jmp_addr_0x006f5d5f:    pop                edi                                           // 0x006f5d5f    5f
                         pop                esi                                           // 0x006f5d60    5e
                         add                esp, 0x08                                     // 0x006f5d61    83c408
                         ret                                                              // 0x006f5d64    c3
                         nop                                                              // 0x006f5d65    90
                         nop                                                              // 0x006f5d66    90
                         nop                                                              // 0x006f5d67    90
                         nop                                                              // 0x006f5d68    90
                         nop                                                              // 0x006f5d69    90
                         nop                                                              // 0x006f5d6a    90
                         nop                                                              // 0x006f5d6b    90
                         nop                                                              // 0x006f5d6c    90
                         nop                                                              // 0x006f5d6d    90
                         nop                                                              // 0x006f5d6e    90
                         nop                                                              // 0x006f5d6f    90
                         push               ecx                                           // 0x006f5d70    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5d71    8b0d105cd900
                         push               esi                                           // 0x006f5d77    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5d78    8d442404
                         push               eax                                           // 0x006f5d7c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5d7d    e83e0e0000
                         push               eax                                           // 0x006f5d82    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5d83    e898740100
                         mov.s              esi, eax                                      // 0x006f5d88    8bf0
                         add                esp, 0x04                                     // 0x006f5d8a    83c404
                         test               esi, esi                                      // 0x006f5d8d    85f6
                         {disp8} je         _jmp_addr_0x006f5dd9                          // 0x006f5d8f    7448
                         mov                edx, dword ptr [esi]                          // 0x006f5d91    8b16
                         mov.s              ecx, esi                                      // 0x006f5d93    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5d95    ff5234
                         test               eax, eax                                      // 0x006f5d98    85c0
                         {disp8} jne        _jmp_addr_0x006f5da9                          // 0x006f5d9a    750d
                         push               0x00c0cf98                                    // 0x006f5d9c    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5da1    e80a050000
                         add                esp, 0x04                                     // 0x006f5da6    83c404
_jmp_addr_0x006f5da9:    mov                eax, dword ptr [esi]                          // 0x006f5da9    8b06
                         mov.s              ecx, esi                                      // 0x006f5dab    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5dad    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5db0    8b16
                         mov.s              ecx, esi                                      // 0x006f5db2    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5db4    ff5234
                         test               eax, eax                                      // 0x006f5db7    85c0
                         {disp8} je         _jmp_addr_0x006f5dd9                          // 0x006f5db9    741e
                         mov.s              ecx, esi                                      // 0x006f5dbb    8bce
                         call               _jmp_addr_0x0047d310                          // 0x006f5dbd    e84e75d8ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5dc2    8b0d105cd900
                         neg                eax                                           // 0x006f5dc8    f7d8
                         sbb.s              eax, eax                                      // 0x006f5dca    1bc0
                         neg                eax                                           // 0x006f5dcc    f7d8
                         push               0x6                                           // 0x006f5dce    6a06
                         push               eax                                           // 0x006f5dd0    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5dd1    e8ca0d0000
                         pop                esi                                           // 0x006f5dd6    5e
                         pop                ecx                                           // 0x006f5dd7    59
                         ret                                                              // 0x006f5dd8    c3
_jmp_addr_0x006f5dd9:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5dd9    8b0d105cd900
                         push               0x6                                           // 0x006f5ddf    6a06
                         push               0x0                                           // 0x006f5de1    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5de3    e8b80d0000
                         pop                esi                                           // 0x006f5de8    5e
                         pop                ecx                                           // 0x006f5de9    59
                         ret                                                              // 0x006f5dea    c3
                         nop                                                              // 0x006f5deb    90
                         nop                                                              // 0x006f5dec    90
                         nop                                                              // 0x006f5ded    90
                         nop                                                              // 0x006f5dee    90
                         nop                                                              // 0x006f5def    90
                         push               ecx                                           // 0x006f5df0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5df1    8b0d105cd900
                         push               esi                                           // 0x006f5df7    56
                         push               edi                                           // 0x006f5df8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5df9    8d442408
                         push               eax                                           // 0x006f5dfd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5dfe    e8bd0d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5e03    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f5e09    8d542408
                         push               edx                                           // 0x006f5e0d    52
                         mov.s              edi, eax                                      // 0x006f5e0e    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5e10    e8ab0d0000
                         push               eax                                           // 0x006f5e15    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5e16    e805740100
                         mov.s              esi, eax                                      // 0x006f5e1b    8bf0
                         add                esp, 0x04                                     // 0x006f5e1d    83c404
                         test               esi, esi                                      // 0x006f5e20    85f6
                         {disp8} je         _jmp_addr_0x006f5e56                          // 0x006f5e22    7432
                         mov                eax, dword ptr [esi]                          // 0x006f5e24    8b06
                         mov.s              ecx, esi                                      // 0x006f5e26    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5e28    ff5034
                         test               eax, eax                                      // 0x006f5e2b    85c0
                         {disp8} jne        _jmp_addr_0x006f5e3c                          // 0x006f5e2d    750d
                         push               0x00c0cf98                                    // 0x006f5e2f    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5e34    e877040000
                         add                esp, 0x04                                     // 0x006f5e39    83c404
_jmp_addr_0x006f5e3c:    mov                edx, dword ptr [esi]                          // 0x006f5e3c    8b16
                         mov.s              ecx, esi                                      // 0x006f5e3e    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5e40    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5e43    8b06
                         mov.s              ecx, esi                                      // 0x006f5e45    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5e47    ff5034
                         test               eax, eax                                      // 0x006f5e4a    85c0
                         {disp8} je         _jmp_addr_0x006f5e56                          // 0x006f5e4c    7408
                         push               edi                                           // 0x006f5e4e    57
                         mov.s              ecx, esi                                      // 0x006f5e4f    8bce
                         call               _jmp_addr_0x0047d320                          // 0x006f5e51    e8ca74d8ff
_jmp_addr_0x006f5e56:    pop                edi                                           // 0x006f5e56    5f
                         pop                esi                                           // 0x006f5e57    5e
                         pop                ecx                                           // 0x006f5e58    59
                         ret                                                              // 0x006f5e59    c3
                         nop                                                              // 0x006f5e5a    90
                         nop                                                              // 0x006f5e5b    90
                         nop                                                              // 0x006f5e5c    90
                         nop                                                              // 0x006f5e5d    90
                         nop                                                              // 0x006f5e5e    90
                         nop                                                              // 0x006f5e5f    90
                         push               ecx                                           // 0x006f5e60    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5e61    8b0d105cd900
                         push               esi                                           // 0x006f5e67    56
                         push               edi                                           // 0x006f5e68    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5e69    8d442408
                         push               eax                                           // 0x006f5e6d    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5e6e    e84d0d0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5e73    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f5e79    8d542408
                         push               edx                                           // 0x006f5e7d    52
                         mov.s              edi, eax                                      // 0x006f5e7e    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5e80    e83b0d0000
                         push               eax                                           // 0x006f5e85    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5e86    e895730100
                         mov.s              esi, eax                                      // 0x006f5e8b    8bf0
                         add                esp, 0x04                                     // 0x006f5e8d    83c404
                         test               esi, esi                                      // 0x006f5e90    85f6
                         {disp8} je         _jmp_addr_0x006f5ec6                          // 0x006f5e92    7432
                         mov                eax, dword ptr [esi]                          // 0x006f5e94    8b06
                         mov.s              ecx, esi                                      // 0x006f5e96    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5e98    ff5034
                         test               eax, eax                                      // 0x006f5e9b    85c0
                         {disp8} jne        _jmp_addr_0x006f5eac                          // 0x006f5e9d    750d
                         push               0x00c0cf98                                    // 0x006f5e9f    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5ea4    e807040000
                         add                esp, 0x04                                     // 0x006f5ea9    83c404
_jmp_addr_0x006f5eac:    mov                edx, dword ptr [esi]                          // 0x006f5eac    8b16
                         mov.s              ecx, esi                                      // 0x006f5eae    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5eb0    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5eb3    8b06
                         mov.s              ecx, esi                                      // 0x006f5eb5    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5eb7    ff5034
                         test               eax, eax                                      // 0x006f5eba    85c0
                         {disp8} je         _jmp_addr_0x006f5ec6                          // 0x006f5ebc    7408
                         push               edi                                           // 0x006f5ebe    57
                         mov.s              ecx, esi                                      // 0x006f5ebf    8bce
                         call               _jmp_addr_0x0047d340                          // 0x006f5ec1    e87a74d8ff
_jmp_addr_0x006f5ec6:    pop                edi                                           // 0x006f5ec6    5f
                         pop                esi                                           // 0x006f5ec7    5e
                         pop                ecx                                           // 0x006f5ec8    59
                         ret                                                              // 0x006f5ec9    c3
                         nop                                                              // 0x006f5eca    90
                         nop                                                              // 0x006f5ecb    90
                         nop                                                              // 0x006f5ecc    90
                         nop                                                              // 0x006f5ecd    90
                         nop                                                              // 0x006f5ece    90
                         nop                                                              // 0x006f5ecf    90
                         push               ecx                                           // 0x006f5ed0    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5ed1    8b0d105cd900
                         push               esi                                           // 0x006f5ed7    56
                         push               edi                                           // 0x006f5ed8    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f5ed9    8d442408
                         push               eax                                           // 0x006f5edd    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5ede    e8dd0c0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5ee3    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x006f5ee9    8d542408
                         push               edx                                           // 0x006f5eed    52
                         mov.s              edi, eax                                      // 0x006f5eee    8bf8
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5ef0    e8cb0c0000
                         push               eax                                           // 0x006f5ef5    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5ef6    e825730100
                         mov.s              esi, eax                                      // 0x006f5efb    8bf0
                         add                esp, 0x04                                     // 0x006f5efd    83c404
                         test               esi, esi                                      // 0x006f5f00    85f6
                         {disp8} je         _jmp_addr_0x006f5f36                          // 0x006f5f02    7432
                         mov                eax, dword ptr [esi]                          // 0x006f5f04    8b06
                         mov.s              ecx, esi                                      // 0x006f5f06    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5f08    ff5034
                         test               eax, eax                                      // 0x006f5f0b    85c0
                         {disp8} jne        _jmp_addr_0x006f5f1c                          // 0x006f5f0d    750d
                         push               0x00c0cf98                                    // 0x006f5f0f    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5f14    e897030000
                         add                esp, 0x04                                     // 0x006f5f19    83c404
_jmp_addr_0x006f5f1c:    mov                edx, dword ptr [esi]                          // 0x006f5f1c    8b16
                         mov.s              ecx, esi                                      // 0x006f5f1e    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5f20    ff5234
                         mov                eax, dword ptr [esi]                          // 0x006f5f23    8b06
                         mov.s              ecx, esi                                      // 0x006f5f25    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5f27    ff5034
                         test               eax, eax                                      // 0x006f5f2a    85c0
                         {disp8} je         _jmp_addr_0x006f5f36                          // 0x006f5f2c    7408
                         push               edi                                           // 0x006f5f2e    57
                         mov.s              ecx, esi                                      // 0x006f5f2f    8bce
                         call               _jmp_addr_0x0047d360                          // 0x006f5f31    e82a74d8ff
_jmp_addr_0x006f5f36:    pop                edi                                           // 0x006f5f36    5f
                         pop                esi                                           // 0x006f5f37    5e
                         pop                ecx                                           // 0x006f5f38    59
                         ret                                                              // 0x006f5f39    c3
                         nop                                                              // 0x006f5f3a    90
                         nop                                                              // 0x006f5f3b    90
                         nop                                                              // 0x006f5f3c    90
                         nop                                                              // 0x006f5f3d    90
                         nop                                                              // 0x006f5f3e    90
                         nop                                                              // 0x006f5f3f    90
                         push               ecx                                           // 0x006f5f40    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5f41    8b0d105cd900
                         push               esi                                           // 0x006f5f47    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5f48    8d442404
                         push               eax                                           // 0x006f5f4c    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5f4d    e86e0c0000
                         push               eax                                           // 0x006f5f52    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5f53    e8c8720100
                         mov.s              esi, eax                                      // 0x006f5f58    8bf0
                         add                esp, 0x04                                     // 0x006f5f5a    83c404
                         test               esi, esi                                      // 0x006f5f5d    85f6
                         {disp8} je         _jmp_addr_0x006f5fa3                          // 0x006f5f5f    7442
                         mov                edx, dword ptr [esi]                          // 0x006f5f61    8b16
                         mov.s              ecx, esi                                      // 0x006f5f63    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5f65    ff5234
                         test               eax, eax                                      // 0x006f5f68    85c0
                         {disp8} jne        _jmp_addr_0x006f5f79                          // 0x006f5f6a    750d
                         push               0x00c0cf98                                    // 0x006f5f6c    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5f71    e83a030000
                         add                esp, 0x04                                     // 0x006f5f76    83c404
_jmp_addr_0x006f5f79:    mov                eax, dword ptr [esi]                          // 0x006f5f79    8b06
                         mov.s              ecx, esi                                      // 0x006f5f7b    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5f7d    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f5f80    8b16
                         mov.s              ecx, esi                                      // 0x006f5f82    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5f84    ff5234
                         test               eax, eax                                      // 0x006f5f87    85c0
                         {disp8} je         _jmp_addr_0x006f5fa3                          // 0x006f5f89    7418
                         mov.s              ecx, esi                                      // 0x006f5f8b    8bce
                         call               _jmp_addr_0x0047d380                          // 0x006f5f8d    e8ee73d8ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5f92    8b0d105cd900
                         push               0x1                                           // 0x006f5f98    6a01
                         push               eax                                           // 0x006f5f9a    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5f9b    e8000c0000
                         pop                esi                                           // 0x006f5fa0    5e
                         pop                ecx                                           // 0x006f5fa1    59
                         ret                                                              // 0x006f5fa2    c3
_jmp_addr_0x006f5fa3:    {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5fa3    8b0d105cd900
                         push               0x1                                           // 0x006f5fa9    6a01
                         push               0x0                                           // 0x006f5fab    6a00
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f5fad    e8ee0b0000
                         pop                esi                                           // 0x006f5fb2    5e
                         pop                ecx                                           // 0x006f5fb3    59
                         ret                                                              // 0x006f5fb4    c3
                         nop                                                              // 0x006f5fb5    90
                         nop                                                              // 0x006f5fb6    90
                         nop                                                              // 0x006f5fb7    90
                         nop                                                              // 0x006f5fb8    90
                         nop                                                              // 0x006f5fb9    90
                         nop                                                              // 0x006f5fba    90
                         nop                                                              // 0x006f5fbb    90
                         nop                                                              // 0x006f5fbc    90
                         nop                                                              // 0x006f5fbd    90
                         nop                                                              // 0x006f5fbe    90
                         nop                                                              // 0x006f5fbf    90
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f5fc0    8b0d105cd900
                         sub                esp, 0x08                                     // 0x006f5fc6    83ec08
                         push               esi                                           // 0x006f5fc9    56
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x006f5fca    8d442404
                         push               eax                                           // 0x006f5fce    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f5fcf    e8ec0b0000
                         push               eax                                           // 0x006f5fd4    50
                         call               _jmp_addr_0x0070d220                          // 0x006f5fd5    e846720100
                         mov.s              esi, eax                                      // 0x006f5fda    8bf0
                         add                esp, 0x04                                     // 0x006f5fdc    83c404
                         test               esi, esi                                      // 0x006f5fdf    85f6
                         {disp8} je         _jmp_addr_0x006f603f                          // 0x006f5fe1    745c
                         mov                edx, dword ptr [esi]                          // 0x006f5fe3    8b16
                         mov.s              ecx, esi                                      // 0x006f5fe5    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f5fe7    ff5234
                         test               eax, eax                                      // 0x006f5fea    85c0
                         {disp8} jne        _jmp_addr_0x006f5ffb                          // 0x006f5fec    750d
                         push               0x00c0cf98                                    // 0x006f5fee    6898cfc000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f5ff3    e8b8020000
                         add                esp, 0x04                                     // 0x006f5ff8    83c404
_jmp_addr_0x006f5ffb:    mov                eax, dword ptr [esi]                          // 0x006f5ffb    8b06
                         mov.s              ecx, esi                                      // 0x006f5ffd    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f5fff    ff5034
                         mov                edx, dword ptr [esi]                          // 0x006f6002    8b16
                         mov.s              ecx, esi                                      // 0x006f6004    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f6006    ff5234
                         test               eax, eax                                      // 0x006f6009    85c0
                         {disp8} je         _jmp_addr_0x006f603f                          // 0x006f600b    7432
                         mov.s              ecx, esi                                      // 0x006f600d    8bce
                         call               _jmp_addr_0x0047d470                          // 0x006f600f    e85c74d8ff
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f6014    8b0d105cd900
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006f601a    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x006f601e    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x006f6026    df6c2404
                         push               0x2                                           // 0x006f602a    6a02
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x006f602c    d95c2408
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6030    8b442408
                         push               eax                                           // 0x006f6034    50
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f6035    e8660b0000
                         pop                esi                                           // 0x006f603a    5e
                         add                esp, 0x08                                     // 0x006f603b    83c408
                         ret                                                              // 0x006f603e    c3
_jmp_addr_0x006f603f:    {disp8} mov        dword ptr [esp + 0x04], 0x00000000            // 0x006f603f    c744240400000000
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x006f6047    8b4c2404
                         push               0x2                                           // 0x006f604b    6a02
                         push               ecx                                           // 0x006f604d    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f604e    8b0d105cd900
                         call               ?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z          // 0x006f6054    e8470b0000
                         pop                esi                                           // 0x006f6059    5e
                         add                esp, 0x08                                     // 0x006f605a    83c408
                         ret                                                              // 0x006f605d    c3
                         nop                                                              // 0x006f605e    90
                         nop                                                              // 0x006f605f    90
                         push               ecx                                           // 0x006f6060    51
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f6061    8b0d105cd900
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x006f6067    8d442400
                         push               eax                                           // 0x006f606b    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f606c    e84f0b0000
                         {disp32} mov       dword ptr [data_bytes + 0x86bc], eax          // 0x006f6071    a3bce69c00
                         pop                ecx                                           // 0x006f6076    59
                         ret                                                              // 0x006f6077    c3
                         nop                                                              // 0x006f6078    90
                         nop                                                              // 0x006f6079    90
                         nop                                                              // 0x006f607a    90
                         nop                                                              // 0x006f607b    90
                         nop                                                              // 0x006f607c    90
                         nop                                                              // 0x006f607d    90
                         nop                                                              // 0x006f607e    90
                         nop                                                              // 0x006f607f    90
                         sub                esp, 0x0c                                     // 0x006f6080    83ec0c
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f6083    8b0d105cd900
                         push               esi                                           // 0x006f6089    56
                         push               edi                                           // 0x006f608a    57
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x006f608b    8d442408
                         push               eax                                           // 0x006f608f    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f6090    e82b0b0000
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f6095    8b0d105cd900
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x006f609b    8d54240c
                         push               edx                                           // 0x006f609f    52
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006f60a0    8944240c
                         call               _jmp_addr_0x006f6bc0                          // 0x006f60a4    e8170b0000
                         push               eax                                           // 0x006f60a9    50
                         call               _jmp_addr_0x0070d220                          // 0x006f60aa    e871710100
                         {disp32} mov       ecx, dword ptr [_script_dll]                  // 0x006f60af    8b0d105cd900
                         mov.s              esi, eax                                      // 0x006f60b5    8bf0
                         add                esp, 0x04                                     // 0x006f60b7    83c404
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x006f60ba    8d442410
                         push               eax                                           // 0x006f60be    50
                         call               _jmp_addr_0x006f6bc0                          // 0x006f60bf    e8fc0a0000
                         test               esi, esi                                      // 0x006f60c4    85f6
                         mov.s              edi, eax                                      // 0x006f60c6    8bf8
                         {disp8} je         _jmp_addr_0x006f60d5                          // 0x006f60c8    740b
                         mov                edx, dword ptr [esi]                          // 0x006f60ca    8b16
                         mov.s              ecx, esi                                      // 0x006f60cc    8bce
                         call               dword ptr [edx + 0x34]                        // 0x006f60ce    ff5234
                         test               eax, eax                                      // 0x006f60d1    85c0
                         {disp8} jne        _jmp_addr_0x006f60e2                          // 0x006f60d3    750d
_jmp_addr_0x006f60d5:    push               0x00c0d0ec                                    // 0x006f60d5    68ecd0c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f60da    e8d1010000
                         add                esp, 0x04                                     // 0x006f60df    83c404
_jmp_addr_0x006f60e2:    test               esi, esi                                      // 0x006f60e2    85f6
                         {disp8} je         _jmp_addr_0x006f60fd                          // 0x006f60e4    7417
                         mov                eax, dword ptr [esi]                          // 0x006f60e6    8b06
                         mov.s              ecx, esi                                      // 0x006f60e8    8bce
                         call               dword ptr [eax + 0x34]                        // 0x006f60ea    ff5034
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x006f60ed    8b4c2408
                         {disp32} mov       dword ptr [esi + 0x0000115c], edi             // 0x006f60f1    89be5c110000
                         {disp32} mov       dword ptr [esi + 0x00001160], ecx             // 0x006f60f7    898e60110000
_jmp_addr_0x006f60fd:    pop                edi                                           // 0x006f60fd    5f
                         pop                esi                                           // 0x006f60fe    5e
                         add                esp, 0x0c                                     // 0x006f60ff    83c40c
                         ret                                                              // 0x006f6102    c3
                         nop                                                              // 0x006f6103    90
                         nop                                                              // 0x006f6104    90
                         nop                                                              // 0x006f6105    90
                         nop                                                              // 0x006f6106    90
                         nop                                                              // 0x006f6107    90
                         nop                                                              // 0x006f6108    90
                         nop                                                              // 0x006f6109    90
                         nop                                                              // 0x006f610a    90
                         nop                                                              // 0x006f610b    90
                         nop                                                              // 0x006f610c    90
                         nop                                                              // 0x006f610d    90
                         nop                                                              // 0x006f610e    90
                         nop                                                              // 0x006f610f    90
_globl_ct_0x006f6110:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x006f6110    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x006f6116    b001
                         test               al, cl                                        // 0x006f6118    84c8
                         {disp8} jne        _jmp_addr_0x006f6124                          // 0x006f611a    7508
                         or.s               cl, al                                        // 0x006f611c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x006f611e    880d34c9fa00
_jmp_addr_0x006f6124:    {disp32} jmp       _jmp_addr_0x006f6130                          // 0x006f6124    e907000000
                         nop                                                              // 0x006f6129    90
                         nop                                                              // 0x006f612a    90
                         nop                                                              // 0x006f612b    90
                         nop                                                              // 0x006f612c    90
                         nop                                                              // 0x006f612d    90
                         nop                                                              // 0x006f612e    90
                         nop                                                              // 0x006f612f    90
_jmp_addr_0x006f6130:    push               0x00407870                                    // 0x006f6130    6870784000
                         call               _atexit                                       // 0x006f6135    e857f60c00
                         pop                ecx                                           // 0x006f613a    59
                         ret                                                              // 0x006f613b    c3
                         nop                                                              // 0x006f613c    90
                         nop                                                              // 0x006f613d    90
                         nop                                                              // 0x006f613e    90
                         nop                                                              // 0x006f613f    90
_globl_ct_0x006f6140:    {disp32} jmp       _jmp_addr_0x006f6150                          // 0x006f6140    e90b000000
                         nop                                                              // 0x006f6145    90
                         nop                                                              // 0x006f6146    90
                         nop                                                              // 0x006f6147    90
                         nop                                                              // 0x006f6148    90
                         nop                                                              // 0x006f6149    90
                         nop                                                              // 0x006f614a    90
                         nop                                                              // 0x006f614b    90
                         nop                                                              // 0x006f614c    90
                         nop                                                              // 0x006f614d    90
                         nop                                                              // 0x006f614e    90
                         nop                                                              // 0x006f614f    90
_jmp_addr_0x006f6150:    {disp32} fld       dword ptr [rdata_bytes + 0x991f8]             // 0x006f6150    d905f8219400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x991f4]             // 0x006f6156    d80df4219400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d0038]             // 0x006f615c    d91d3860d900
                         ret                                                              // 0x006f6162    c3
                         nop                                                              // 0x006f6163    90
                         nop                                                              // 0x006f6164    90
                         nop                                                              // 0x006f6165    90
                         nop                                                              // 0x006f6166    90
                         nop                                                              // 0x006f6167    90
                         nop                                                              // 0x006f6168    90
                         nop                                                              // 0x006f6169    90
                         nop                                                              // 0x006f616a    90
                         nop                                                              // 0x006f616b    90
                         nop                                                              // 0x006f616c    90
                         nop                                                              // 0x006f616d    90
                         nop                                                              // 0x006f616e    90
                         nop                                                              // 0x006f616f    90
_globl_ct_0x006f6170:    {disp32} jmp       _jmp_addr_0x006f6180                          // 0x006f6170    e90b000000
                         nop                                                              // 0x006f6175    90
                         nop                                                              // 0x006f6176    90
                         nop                                                              // 0x006f6177    90
                         nop                                                              // 0x006f6178    90
                         nop                                                              // 0x006f6179    90
                         nop                                                              // 0x006f617a    90
                         nop                                                              // 0x006f617b    90
                         nop                                                              // 0x006f617c    90
                         nop                                                              // 0x006f617d    90
                         nop                                                              // 0x006f617e    90
                         nop                                                              // 0x006f617f    90
_jmp_addr_0x006f6180:    {disp32} mov       dword ptr [data_bytes + 0x3d0034], 0xffffffff // 0x006f6180    c7053460d900ffffffff
                         ret                                                              // 0x006f618a    c3
                         nop                                                              // 0x006f618b    90
                         nop                                                              // 0x006f618c    90
                         nop                                                              // 0x006f618d    90
                         nop                                                              // 0x006f618e    90
                         nop                                                              // 0x006f618f    90
@Init__19ScriptCreatureCurseFP8Creature@12:    push               esi                                           // 0x006f6190    56
                         push               edi                                           // 0x006f6191    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006f6192    8b7c240c
                         xor.s              eax, eax                                      // 0x006f6196    33c0
                         cmp.s              edi, eax                                      // 0x006f6198    3bf8
                         mov.s              esi, ecx                                      // 0x006f619a    8bf1
                         {disp8} je         _jmp_addr_0x006f61c7                          // 0x006f619c    7429
                         mov                eax, dword ptr [edi]                          // 0x006f619e    8b07
                         mov.s              ecx, edi                                      // 0x006f61a0    8bcf
                         call               dword ptr [eax + 0x42c]                       // 0x006f61a2    ff902c040000
                         fstp               dword ptr [esi]                               // 0x006f61a8    d91e
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]             // 0x006f61aa    8b8f60010000
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x006f61b0    d9410c
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x006f61b3    d95e04
                         {disp32} mov       edx, dword ptr [edi + 0x00000168]             // 0x006f61b6    8b9768010000
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x006f61bc    d94208
                         pop                edi                                           // 0x006f61bf    5f
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x006f61c0    d95e08
                         pop                esi                                           // 0x006f61c3    5e
                         ret                0x0004                                        // 0x006f61c4    c20400
_jmp_addr_0x006f61c7:    pop                edi                                           // 0x006f61c7    5f
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x006f61c8    894608
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x006f61cb    894604
                         mov                dword ptr [esi], eax                          // 0x006f61ce    8906
                         pop                esi                                           // 0x006f61d0    5e
                         ret                0x0004                                        // 0x006f61d1    c20400
                         nop                                                              // 0x006f61d4    90
                         nop                                                              // 0x006f61d5    90
                         nop                                                              // 0x006f61d6    90
                         nop                                                              // 0x006f61d7    90
                         nop                                                              // 0x006f61d8    90
                         nop                                                              // 0x006f61d9    90
                         nop                                                              // 0x006f61da    90
                         nop                                                              // 0x006f61db    90
                         nop                                                              // 0x006f61dc    90
                         nop                                                              // 0x006f61dd    90
                         nop                                                              // 0x006f61de    90
                         nop                                                              // 0x006f61df    90
@ResolveLoad__19ScriptCreatureCurseFP8Creature@12:    push               esi                                           // 0x006f61e0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f61e1    8b742408
                         test               esi, esi                                      // 0x006f61e5    85f6
                         push               edi                                           // 0x006f61e7    57
                         mov.s              edi, ecx                                      // 0x006f61e8    8bf9
                         {disp8} je         _jmp_addr_0x006f6245                          // 0x006f61ea    7459
                         {disp32} mov       eax, dword ptr [_game]                        // 0x006f61ec    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x006f61f1    8b8890002500
                         push               0x00bdff00                                    // 0x006f61f7    6800ffbd00
                         call               _jmp_addr_0x006eb760                          // 0x006f61fc    e85f55ffff
                         test               eax, eax                                      // 0x006f6201    85c0
                         {disp8} je         _jmp_addr_0x006f6245                          // 0x006f6203    7440
                         fld                dword ptr [edi]                               // 0x006f6205    d907
                         {disp8} fst        dword ptr [esp + 0x0c]                        // 0x006f6207    d954240c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006f620b    d81d98a38a00
                         fnstsw             ax                                            // 0x006f6211    dfe0
                         test               ah, 0x41                                      // 0x006f6213    f6c441
                         {disp8} jne        _jmp_addr_0x006f6245                          // 0x006f6216    752d
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f6218    8b44240c
                         mov                edx, dword ptr [esi]                          // 0x006f621c    8b16
                         push               eax                                           // 0x006f621e    50
                         mov.s              ecx, esi                                      // 0x006f621f    8bce
                         call               dword ptr [edx + 0x144]                       // 0x006f6221    ff9244010000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x006f6227    8b4f04
                         push               ecx                                           // 0x006f622a    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000160]             // 0x006f622b    8b8e60010000
                         call               _jmp_addr_0x004f0100                          // 0x006f6231    e8ca9edfff
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x006f6236    8b5708
                         {disp32} mov       ecx, dword ptr [esi + 0x00000168]             // 0x006f6239    8b8e68010000
                         push               edx                                           // 0x006f623f    52
                         call               _jmp_addr_0x004146f0                          // 0x006f6240    e8abe4d1ff
_jmp_addr_0x006f6245:    pop                edi                                           // 0x006f6245    5f
                         pop                esi                                           // 0x006f6246    5e
                         ret                0x0004                                        // 0x006f6247    c20400
                         nop                                                              // 0x006f624a    90
                         nop                                                              // 0x006f624b    90
                         nop                                                              // 0x006f624c    90
                         nop                                                              // 0x006f624d    90
                         nop                                                              // 0x006f624e    90
                         nop                                                              // 0x006f624f    90
_globl_ct_0x006f6250:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x006f6250    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x006f6256    b001
                         test               al, cl                                        // 0x006f6258    84c8
                         {disp8} jne        _jmp_addr_0x006f6264                          // 0x006f625a    7508
                         or.s               cl, al                                        // 0x006f625c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x006f625e    880d34c9fa00
_jmp_addr_0x006f6264:    {disp32} jmp       _jmp_addr_0x006f6270                          // 0x006f6264    e907000000
                         nop                                                              // 0x006f6269    90
                         nop                                                              // 0x006f626a    90
                         nop                                                              // 0x006f626b    90
                         nop                                                              // 0x006f626c    90
                         nop                                                              // 0x006f626d    90
                         nop                                                              // 0x006f626e    90
                         nop                                                              // 0x006f626f    90
_jmp_addr_0x006f6270:    push               0x00407870                                    // 0x006f6270    6870784000
                         call               _atexit                                       // 0x006f6275    e817f50c00
                         pop                ecx                                           // 0x006f627a    59
                         ret                                                              // 0x006f627b    c3
                         nop                                                              // 0x006f627c    90
                         nop                                                              // 0x006f627d    90
                         nop                                                              // 0x006f627e    90
                         nop                                                              // 0x006f627f    90
_globl_ct_0x006f6280:    {disp32} jmp       _jmp_addr_0x006f6290                          // 0x006f6280    e90b000000
                         nop                                                              // 0x006f6285    90
                         nop                                                              // 0x006f6286    90
                         nop                                                              // 0x006f6287    90
                         nop                                                              // 0x006f6288    90
                         nop                                                              // 0x006f6289    90
                         nop                                                              // 0x006f628a    90
                         nop                                                              // 0x006f628b    90
                         nop                                                              // 0x006f628c    90
                         nop                                                              // 0x006f628d    90
                         nop                                                              // 0x006f628e    90
                         nop                                                              // 0x006f628f    90
_jmp_addr_0x006f6290:    {disp32} mov       dword ptr [data_bytes + 0x3d0044], 0xffffffff // 0x006f6290    c7054460d900ffffffff
                         ret                                                              // 0x006f629a    c3
                         nop                                                              // 0x006f629b    90
                         nop                                                              // 0x006f629c    90
                         nop                                                              // 0x006f629d    90
                         nop                                                              // 0x006f629e    90
                         nop                                                              // 0x006f629f    90
                         ret                                                              // 0x006f62a0    c3
                         nop                                                              // 0x006f62a1    90
                         nop                                                              // 0x006f62a2    90
                         nop                                                              // 0x006f62a3    90
                         nop                                                              // 0x006f62a4    90
                         nop                                                              // 0x006f62a5    90
                         nop                                                              // 0x006f62a6    90
                         nop                                                              // 0x006f62a7    90
                         nop                                                              // 0x006f62a8    90
                         nop                                                              // 0x006f62a9    90
                         nop                                                              // 0x006f62aa    90
                         nop                                                              // 0x006f62ab    90
                         nop                                                              // 0x006f62ac    90
                         nop                                                              // 0x006f62ad    90
                         nop                                                              // 0x006f62ae    90
                         nop                                                              // 0x006f62af    90

?ScriptErrorMessage@GScript@@QAEXPAD@Z:
                         ret                                                              // 0x006f62b0    c3
                         nop                                                              // 0x006f62b1    90
                         nop                                                              // 0x006f62b2    90
                         nop                                                              // 0x006f62b3    90
                         nop                                                              // 0x006f62b4    90
                         nop                                                              // 0x006f62b5    90
                         nop                                                              // 0x006f62b6    90
                         nop                                                              // 0x006f62b7    90
                         nop                                                              // 0x006f62b8    90
                         nop                                                              // 0x006f62b9    90
                         nop                                                              // 0x006f62ba    90
                         nop                                                              // 0x006f62bb    90
                         nop                                                              // 0x006f62bc    90
                         nop                                                              // 0x006f62bd    90
                         nop                                                              // 0x006f62be    90
                         nop                                                              // 0x006f62bf    90

?ScriptWarningMessage@GScript@@QAEXPAD@Z:
                         ret                                                              // 0x006f62c0    c3
                         nop                                                              // 0x006f62c1    90
                         nop                                                              // 0x006f62c2    90
                         nop                                                              // 0x006f62c3    90
                         nop                                                              // 0x006f62c4    90
                         nop                                                              // 0x006f62c5    90
                         nop                                                              // 0x006f62c6    90
                         nop                                                              // 0x006f62c7    90
                         nop                                                              // 0x006f62c8    90
                         nop                                                              // 0x006f62c9    90
                         nop                                                              // 0x006f62ca    90
                         nop                                                              // 0x006f62cb    90
                         nop                                                              // 0x006f62cc    90
                         nop                                                              // 0x006f62cd    90
                         nop                                                              // 0x006f62ce    90
                         nop                                                              // 0x006f62cf    90
_globl_ct_0x006f62d0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x006f62d0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x006f62d6    b001
                         test               al, cl                                        // 0x006f62d8    84c8
                         {disp8} jne        _jmp_addr_0x006f62e4                          // 0x006f62da    7508
                         or.s               cl, al                                        // 0x006f62dc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x006f62de    880d34c9fa00
_jmp_addr_0x006f62e4:    {disp32} jmp       _jmp_addr_0x006f62f0                          // 0x006f62e4    e907000000
                         nop                                                              // 0x006f62e9    90
                         nop                                                              // 0x006f62ea    90
                         nop                                                              // 0x006f62eb    90
                         nop                                                              // 0x006f62ec    90
                         nop                                                              // 0x006f62ed    90
                         nop                                                              // 0x006f62ee    90
                         nop                                                              // 0x006f62ef    90
_jmp_addr_0x006f62f0:    push               0x00407870                                    // 0x006f62f0    6870784000
                         call               _atexit                                       // 0x006f62f5    e897f40c00
                         pop                ecx                                           // 0x006f62fa    59
                         ret                                                              // 0x006f62fb    c3
                         nop                                                              // 0x006f62fc    90
                         nop                                                              // 0x006f62fd    90
                         nop                                                              // 0x006f62fe    90
                         nop                                                              // 0x006f62ff    90
_globl_ct_0x006f6300:    {disp32} jmp       _jmp_addr_0x006f6310                          // 0x006f6300    e90b000000
                         nop                                                              // 0x006f6305    90
                         nop                                                              // 0x006f6306    90
                         nop                                                              // 0x006f6307    90
                         nop                                                              // 0x006f6308    90
                         nop                                                              // 0x006f6309    90
                         nop                                                              // 0x006f630a    90
                         nop                                                              // 0x006f630b    90
                         nop                                                              // 0x006f630c    90
                         nop                                                              // 0x006f630d    90
                         nop                                                              // 0x006f630e    90
                         nop                                                              // 0x006f630f    90
_jmp_addr_0x006f6310:    {disp32} mov       dword ptr [data_bytes + 0x3d0050], 0xffffffff // 0x006f6310    c7055060d900ffffffff
                         ret                                                              // 0x006f631a    c3
                         nop                                                              // 0x006f631b    90
                         nop                                                              // 0x006f631c    90
                         nop                                                              // 0x006f631d    90
                         nop                                                              // 0x006f631e    90
                         nop                                                              // 0x006f631f    90
?Create@ScriptDLL@@SAPAV1@PBD@Z:
                         push               esi                                           // 0x006f6320    56
                         push               edi                                           // 0x006f6321    57
                         push               0x000000dc                                    // 0x006f6322    68dc000000
                         call               ??2@YAPAXI@Z                                  // 0x006f6327    e8c2010d00
                         mov.s              esi, eax                                      // 0x006f632c    8bf0
                         add                esp, 0x04                                     // 0x006f632e    83c404
                         test               esi, esi                                      // 0x006f6331    85f6
                         {disp8} je         _jmp_addr_0x006f6350                          // 0x006f6333    741b
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x006f6335    8b44240c
                         push               eax                                           // 0x006f6339    50
                         mov.s              ecx, esi                                      // 0x006f633a    8bce
                         call               @__ct__5LHDLLFPCc@12                          // 0x006f633c    e82f700b00
                         mov                dword ptr [esi], 0x00942200                   // 0x006f6341    c70600229400
                         {disp8} mov        dword ptr [esi + 0x28], 0x00000000            // 0x006f6347    c7462800000000
                         {disp8} jmp        _jmp_addr_0x006f6352                          // 0x006f634e    eb02
_jmp_addr_0x006f6350:    xor.s              esi, esi                                      // 0x006f6350    33f6
_jmp_addr_0x006f6352:    push               esi                                           // 0x006f6352    56
                         call               ?AddToInternalList@LHDLL@@SAPAV1@PAV1@@Z      // 0x006f6353    e8d86e0b00
                         mov.s              edi, eax                                      // 0x006f6358    8bf8
                         add                esp, 0x04                                     // 0x006f635a    83c404
                         cmp.s              edi, esi                                      // 0x006f635d    3bfe
                         {disp8} je         _jmp_addr_0x006f6375                          // 0x006f635f    7414
                         test               esi, esi                                      // 0x006f6361    85f6
                         {disp8} je         _jmp_addr_0x006f6375                          // 0x006f6363    7410
                         mov.s              ecx, esi                                      // 0x006f6365    8bce
                         call               ??_DLHDLL@@QAEXXZ                             // 0x006f6367    e854710b00
                         push               esi                                           // 0x006f636c    56
                         call               ??3@YAXPAX@Z                                  // 0x006f636d    e8268b0b00
                         add                esp, 0x04                                     // 0x006f6372    83c404
_jmp_addr_0x006f6375:    mov.s              eax, edi                                      // 0x006f6375    8bc7
                         pop                edi                                           // 0x006f6377    5f
                         pop                esi                                           // 0x006f6378    5e
                         ret                                                              // 0x006f6379    c3
                         nop                                                              // 0x006f637a    90
                         nop                                                              // 0x006f637b    90
                         nop                                                              // 0x006f637c    90
                         nop                                                              // 0x006f637d    90
                         nop                                                              // 0x006f637e    90
                         nop                                                              // 0x006f637f    90
                         push               ebx                                           // 0x006f6380    53
                         push               esi                                           // 0x006f6381    56
                         push               edi                                           // 0x006f6382    57
                         {disp32} mov       edi, dword ptr [__imp__GetProcAddress@8]      // 0x006f6383    8b3d70918a00
                         mov.s              esi, ecx                                      // 0x006f6389    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f638b    8b4608
                         push               0x00c0d35c                                    // 0x006f638e    685cd3c000
                         push               eax                                           // 0x006f6393    50
                         mov                bl, 0x01                                      // 0x006f6394    b301
                         call               edi                                           // 0x006f6396    ffd7
                         test               eax, eax                                      // 0x006f6398    85c0
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x006f639a    894634
                         {disp8} jne        _jmp_addr_0x006f63a1                          // 0x006f639d    7502
                         xor.s              bl, bl                                        // 0x006f639f    32db
_jmp_addr_0x006f63a1:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f63a1    8b4e08
                         push               0x00c0d350                                    // 0x006f63a4    6850d3c000
                         push               ecx                                           // 0x006f63a9    51
                         call               edi                                           // 0x006f63aa    ffd7
                         test               eax, eax                                      // 0x006f63ac    85c0
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x006f63ae    894638
                         {disp8} jne        _jmp_addr_0x006f63b5                          // 0x006f63b1    7502
                         xor.s              bl, bl                                        // 0x006f63b3    32db
_jmp_addr_0x006f63b5:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f63b5    8b5608
                         push               0x00c0d344                                    // 0x006f63b8    6844d3c000
                         push               edx                                           // 0x006f63bd    52
                         call               edi                                           // 0x006f63be    ffd7
                         test               eax, eax                                      // 0x006f63c0    85c0
                         {disp8} mov        dword ptr [esi + 0x3c], eax                   // 0x006f63c2    89463c
                         {disp8} jne        _jmp_addr_0x006f63c9                          // 0x006f63c5    7502
                         xor.s              bl, bl                                        // 0x006f63c7    32db
_jmp_addr_0x006f63c9:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f63c9    8b4608
                         push               0x00c0d338                                    // 0x006f63cc    6838d3c000
                         push               eax                                           // 0x006f63d1    50
                         call               edi                                           // 0x006f63d2    ffd7
                         test               eax, eax                                      // 0x006f63d4    85c0
                         {disp8} mov        dword ptr [esi + 0x44], eax                   // 0x006f63d6    894644
                         {disp8} jne        _jmp_addr_0x006f63dd                          // 0x006f63d9    7502
                         xor.s              bl, bl                                        // 0x006f63db    32db
_jmp_addr_0x006f63dd:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f63dd    8b4e08
                         push               0x00c0d328                                    // 0x006f63e0    6828d3c000
                         push               ecx                                           // 0x006f63e5    51
                         call               edi                                           // 0x006f63e6    ffd7
                         test               eax, eax                                      // 0x006f63e8    85c0
                         {disp8} mov        dword ptr [esi + 0x48], eax                   // 0x006f63ea    894648
                         {disp8} jne        _jmp_addr_0x006f63f1                          // 0x006f63ed    7502
                         xor.s              bl, bl                                        // 0x006f63ef    32db
_jmp_addr_0x006f63f1:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f63f1    8b5608
                         push               0x00c0d318                                    // 0x006f63f4    6818d3c000
                         push               edx                                           // 0x006f63f9    52
                         call               edi                                           // 0x006f63fa    ffd7
                         test               eax, eax                                      // 0x006f63fc    85c0
                         {disp8} mov        dword ptr [esi + 0x4c], eax                   // 0x006f63fe    89464c
                         {disp8} jne        _jmp_addr_0x006f6405                          // 0x006f6401    7502
                         xor.s              bl, bl                                        // 0x006f6403    32db
_jmp_addr_0x006f6405:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f6405    8b4608
                         push               0x00c0d310                                    // 0x006f6408    6810d3c000
                         push               eax                                           // 0x006f640d    50
                         call               edi                                           // 0x006f640e    ffd7
                         test               eax, eax                                      // 0x006f6410    85c0
                         {disp8} mov        dword ptr [esi + 0x54], eax                   // 0x006f6412    894654
                         {disp8} jne        _jmp_addr_0x006f6419                          // 0x006f6415    7502
                         xor.s              bl, bl                                        // 0x006f6417    32db
_jmp_addr_0x006f6419:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f6419    8b4e08
                         push               0x00c0d30c                                    // 0x006f641c    680cd3c000
                         push               ecx                                           // 0x006f6421    51
                         call               edi                                           // 0x006f6422    ffd7
                         test               eax, eax                                      // 0x006f6424    85c0
                         {disp8} mov        dword ptr [esi + 0x50], eax                   // 0x006f6426    894650
                         {disp8} jne        _jmp_addr_0x006f642d                          // 0x006f6429    7502
                         xor.s              bl, bl                                        // 0x006f642b    32db
_jmp_addr_0x006f642d:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f642d    8b5608
                         push               0x00befb18                                    // 0x006f6430    6818fbbe00
                         push               edx                                           // 0x006f6435    52
                         call               edi                                           // 0x006f6436    ffd7
                         test               eax, eax                                      // 0x006f6438    85c0
                         {disp8} mov        dword ptr [esi + 0x58], eax                   // 0x006f643a    894658
                         {disp8} jne        _jmp_addr_0x006f6441                          // 0x006f643d    7502
                         xor.s              bl, bl                                        // 0x006f643f    32db
_jmp_addr_0x006f6441:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f6441    8b4608
                         push               0x00c0d300                                    // 0x006f6444    6800d3c000
                         push               eax                                           // 0x006f6449    50
                         call               edi                                           // 0x006f644a    ffd7
                         test               eax, eax                                      // 0x006f644c    85c0
                         {disp8} mov        dword ptr [esi + 0x40], eax                   // 0x006f644e    894640
                         {disp8} jne        _jmp_addr_0x006f6455                          // 0x006f6451    7502
                         xor.s              bl, bl                                        // 0x006f6453    32db
_jmp_addr_0x006f6455:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f6455    8b4e08
                         push               0x00c0d2f4                                    // 0x006f6458    68f4d2c000
                         push               ecx                                           // 0x006f645d    51
                         call               edi                                           // 0x006f645e    ffd7
                         test               eax, eax                                      // 0x006f6460    85c0
                         {disp8} mov        dword ptr [esi + 0x5c], eax                   // 0x006f6462    89465c
                         {disp8} jne        _jmp_addr_0x006f6469                          // 0x006f6465    7502
                         xor.s              bl, bl                                        // 0x006f6467    32db
_jmp_addr_0x006f6469:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6469    8b5608
                         push               0x00c0d2e8                                    // 0x006f646c    68e8d2c000
                         push               edx                                           // 0x006f6471    52
                         call               edi                                           // 0x006f6472    ffd7
                         test               eax, eax                                      // 0x006f6474    85c0
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x006f6476    894660
                         {disp8} jne        _jmp_addr_0x006f647d                          // 0x006f6479    7502
                         xor.s              bl, bl                                        // 0x006f647b    32db
_jmp_addr_0x006f647d:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f647d    8b4608
                         push               0x00c0d2dc                                    // 0x006f6480    68dcd2c000
                         push               eax                                           // 0x006f6485    50
                         call               edi                                           // 0x006f6486    ffd7
                         test               eax, eax                                      // 0x006f6488    85c0
                         {disp8} mov        dword ptr [esi + 0x64], eax                   // 0x006f648a    894664
                         {disp8} jne        _jmp_addr_0x006f6491                          // 0x006f648d    7502
                         xor.s              bl, bl                                        // 0x006f648f    32db
_jmp_addr_0x006f6491:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f6491    8b4e08
                         push               0x00c0d2cc                                    // 0x006f6494    68ccd2c000
                         push               ecx                                           // 0x006f6499    51
                         call               edi                                           // 0x006f649a    ffd7
                         test               eax, eax                                      // 0x006f649c    85c0
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x006f649e    894668
                         {disp8} jne        _jmp_addr_0x006f64a5                          // 0x006f64a1    7502
                         xor.s              bl, bl                                        // 0x006f64a3    32db
_jmp_addr_0x006f64a5:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f64a5    8b5608
                         push               0x00c0d2c4                                    // 0x006f64a8    68c4d2c000
                         push               edx                                           // 0x006f64ad    52
                         call               edi                                           // 0x006f64ae    ffd7
                         test               eax, eax                                      // 0x006f64b0    85c0
                         {disp8} mov        dword ptr [esi + 0x6c], eax                   // 0x006f64b2    89466c
                         {disp8} jne        _jmp_addr_0x006f64b9                          // 0x006f64b5    7502
                         xor.s              bl, bl                                        // 0x006f64b7    32db
_jmp_addr_0x006f64b9:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f64b9    8b4608
                         push               0x00c0d2b8                                    // 0x006f64bc    68b8d2c000
                         push               eax                                           // 0x006f64c1    50
                         call               edi                                           // 0x006f64c2    ffd7
                         test               eax, eax                                      // 0x006f64c4    85c0
                         {disp8} mov        dword ptr [esi + 0x70], eax                   // 0x006f64c6    894670
                         {disp8} jne        _jmp_addr_0x006f64cd                          // 0x006f64c9    7502
                         xor.s              bl, bl                                        // 0x006f64cb    32db
_jmp_addr_0x006f64cd:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f64cd    8b4e08
                         push               0x00c0d2ac                                    // 0x006f64d0    68acd2c000
                         push               ecx                                           // 0x006f64d5    51
                         call               edi                                           // 0x006f64d6    ffd7
                         test               eax, eax                                      // 0x006f64d8    85c0
                         {disp8} mov        dword ptr [esi + 0x74], eax                   // 0x006f64da    894674
                         {disp8} jne        _jmp_addr_0x006f64e1                          // 0x006f64dd    7502
                         xor.s              bl, bl                                        // 0x006f64df    32db
_jmp_addr_0x006f64e1:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f64e1    8b5608
                         push               0x00c0d2a0                                    // 0x006f64e4    68a0d2c000
                         push               edx                                           // 0x006f64e9    52
                         call               edi                                           // 0x006f64ea    ffd7
                         test               eax, eax                                      // 0x006f64ec    85c0
                         {disp8} mov        dword ptr [esi + 0x78], eax                   // 0x006f64ee    894678
                         {disp8} jne        _jmp_addr_0x006f64f5                          // 0x006f64f1    7502
                         xor.s              bl, bl                                        // 0x006f64f3    32db
_jmp_addr_0x006f64f5:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f64f5    8b4608
                         push               0x00c0d290                                    // 0x006f64f8    6890d2c000
                         push               eax                                           // 0x006f64fd    50
                         call               edi                                           // 0x006f64fe    ffd7
                         test               eax, eax                                      // 0x006f6500    85c0
                         {disp32} mov       dword ptr [esi + 0x00000080], eax             // 0x006f6502    898680000000
                         {disp8} jne        _jmp_addr_0x006f650c                          // 0x006f6508    7502
                         xor.s              bl, bl                                        // 0x006f650a    32db
_jmp_addr_0x006f650c:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f650c    8b4e08
                         push               0x00c0d284                                    // 0x006f650f    6884d2c000
                         push               ecx                                           // 0x006f6514    51
                         call               edi                                           // 0x006f6515    ffd7
                         test               eax, eax                                      // 0x006f6517    85c0
                         {disp8} mov        dword ptr [esi + 0x7c], eax                   // 0x006f6519    89467c
                         {disp8} jne        _jmp_addr_0x006f6520                          // 0x006f651c    7502
                         xor.s              bl, bl                                        // 0x006f651e    32db
_jmp_addr_0x006f6520:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6520    8b5608
                         push               0x00c0d278                                    // 0x006f6523    6878d2c000
                         push               edx                                           // 0x006f6528    52
                         call               edi                                           // 0x006f6529    ffd7
                         test               eax, eax                                      // 0x006f652b    85c0
                         {disp32} mov       dword ptr [esi + 0x00000088], eax             // 0x006f652d    898688000000
                         {disp8} jne        _jmp_addr_0x006f6537                          // 0x006f6533    7502
                         xor.s              bl, bl                                        // 0x006f6535    32db
_jmp_addr_0x006f6537:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f6537    8b4608
                         push               0x00c0d268                                    // 0x006f653a    6868d2c000
                         push               eax                                           // 0x006f653f    50
                         call               edi                                           // 0x006f6540    ffd7
                         test               eax, eax                                      // 0x006f6542    85c0
                         {disp32} mov       dword ptr [esi + 0x00000084], eax             // 0x006f6544    898684000000
                         {disp8} jne        _jmp_addr_0x006f654e                          // 0x006f654a    7502
                         xor.s              bl, bl                                        // 0x006f654c    32db
_jmp_addr_0x006f654e:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f654e    8b4e08
                         push               0x00c0d260                                    // 0x006f6551    6860d2c000
                         push               ecx                                           // 0x006f6556    51
                         call               edi                                           // 0x006f6557    ffd7
                         test               eax, eax                                      // 0x006f6559    85c0
                         {disp32} mov       dword ptr [esi + 0x0000008c], eax             // 0x006f655b    89868c000000
                         {disp8} jne        _jmp_addr_0x006f6565                          // 0x006f6561    7502
                         xor.s              bl, bl                                        // 0x006f6563    32db
_jmp_addr_0x006f6565:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6565    8b5608
                         push               0x00c0d248                                    // 0x006f6568    6848d2c000
                         push               edx                                           // 0x006f656d    52
                         call               edi                                           // 0x006f656e    ffd7
                         test               eax, eax                                      // 0x006f6570    85c0
                         {disp32} mov       dword ptr [esi + 0x00000090], eax             // 0x006f6572    898690000000
                         {disp8} jne        _jmp_addr_0x006f657c                          // 0x006f6578    7502
                         xor.s              bl, bl                                        // 0x006f657a    32db
_jmp_addr_0x006f657c:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f657c    8b4608
                         push               0x00c0d22c                                    // 0x006f657f    682cd2c000
                         push               eax                                           // 0x006f6584    50
                         call               edi                                           // 0x006f6585    ffd7
                         test               eax, eax                                      // 0x006f6587    85c0
                         {disp32} mov       dword ptr [esi + 0x00000094], eax             // 0x006f6589    898694000000
                         {disp8} jne        _jmp_addr_0x006f6593                          // 0x006f658f    7502
                         xor.s              bl, bl                                        // 0x006f6591    32db
_jmp_addr_0x006f6593:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f6593    8b4e08
                         push               0x00c0d224                                    // 0x006f6596    6824d2c000
                         push               ecx                                           // 0x006f659b    51
                         call               edi                                           // 0x006f659c    ffd7
                         test               eax, eax                                      // 0x006f659e    85c0
                         {disp32} mov       dword ptr [esi + 0x00000098], eax             // 0x006f65a0    898698000000
                         {disp8} jne        _jmp_addr_0x006f65aa                          // 0x006f65a6    7502
                         xor.s              bl, bl                                        // 0x006f65a8    32db
_jmp_addr_0x006f65aa:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f65aa    8b5608
                         push               0x009dd444                                    // 0x006f65ad    6844d49d00
                         push               edx                                           // 0x006f65b2    52
                         call               edi                                           // 0x006f65b3    ffd7
                         test               eax, eax                                      // 0x006f65b5    85c0
                         {disp32} mov       dword ptr [esi + 0x0000009c], eax             // 0x006f65b7    89869c000000
                         {disp8} jne        _jmp_addr_0x006f65c1                          // 0x006f65bd    7502
                         xor.s              bl, bl                                        // 0x006f65bf    32db
_jmp_addr_0x006f65c1:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f65c1    8b4608
                         push               0x00c0d21c                                    // 0x006f65c4    681cd2c000
                         push               eax                                           // 0x006f65c9    50
                         call               edi                                           // 0x006f65ca    ffd7
                         test               eax, eax                                      // 0x006f65cc    85c0
                         {disp32} mov       dword ptr [esi + 0x000000a0], eax             // 0x006f65ce    8986a0000000
                         {disp8} jne        _jmp_addr_0x006f65d8                          // 0x006f65d4    7502
                         xor.s              bl, bl                                        // 0x006f65d6    32db
_jmp_addr_0x006f65d8:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f65d8    8b4e08
                         push               0x00c0d210                                    // 0x006f65db    6810d2c000
                         push               ecx                                           // 0x006f65e0    51
                         call               edi                                           // 0x006f65e1    ffd7
                         test               eax, eax                                      // 0x006f65e3    85c0
                         {disp32} mov       dword ptr [esi + 0x000000a4], eax             // 0x006f65e5    8986a4000000
                         {disp8} jne        _jmp_addr_0x006f65ef                          // 0x006f65eb    7502
                         xor.s              bl, bl                                        // 0x006f65ed    32db
_jmp_addr_0x006f65ef:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f65ef    8b5608
                         push               0x00c0d204                                    // 0x006f65f2    6804d2c000
                         push               edx                                           // 0x006f65f7    52
                         call               edi                                           // 0x006f65f8    ffd7
                         test               eax, eax                                      // 0x006f65fa    85c0
                         {disp32} mov       dword ptr [esi + 0x000000a8], eax             // 0x006f65fc    8986a8000000
                         {disp8} jne        _jmp_addr_0x006f6606                          // 0x006f6602    7502
                         xor.s              bl, bl                                        // 0x006f6604    32db
_jmp_addr_0x006f6606:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f6606    8b4608
                         push               0x00c0d1f8                                    // 0x006f6609    68f8d1c000
                         push               eax                                           // 0x006f660e    50
                         call               edi                                           // 0x006f660f    ffd7
                         test               eax, eax                                      // 0x006f6611    85c0
                         {disp32} mov       dword ptr [esi + 0x000000ac], eax             // 0x006f6613    8986ac000000
                         {disp8} jne        _jmp_addr_0x006f661d                          // 0x006f6619    7502
                         xor.s              bl, bl                                        // 0x006f661b    32db
_jmp_addr_0x006f661d:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f661d    8b4e08
                         push               0x00bf3804                                    // 0x006f6620    680438bf00
                         push               ecx                                           // 0x006f6625    51
                         call               edi                                           // 0x006f6626    ffd7
                         test               eax, eax                                      // 0x006f6628    85c0
                         {disp32} mov       dword ptr [esi + 0x000000b0], eax             // 0x006f662a    8986b0000000
                         {disp8} jne        _jmp_addr_0x006f6634                          // 0x006f6630    7502
                         xor.s              bl, bl                                        // 0x006f6632    32db
_jmp_addr_0x006f6634:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6634    8b5608
                         push               0x00c0d1ec                                    // 0x006f6637    68ecd1c000
                         push               edx                                           // 0x006f663c    52
                         call               edi                                           // 0x006f663d    ffd7
                         test               eax, eax                                      // 0x006f663f    85c0
                         {disp32} mov       dword ptr [esi + 0x000000b4], eax             // 0x006f6641    8986b4000000
                         {disp8} jne        _jmp_addr_0x006f664b                          // 0x006f6647    7502
                         xor.s              bl, bl                                        // 0x006f6649    32db
_jmp_addr_0x006f664b:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f664b    8b4608
                         push               0x00c0d1d8                                    // 0x006f664e    68d8d1c000
                         push               eax                                           // 0x006f6653    50
                         call               edi                                           // 0x006f6654    ffd7
                         test               eax, eax                                      // 0x006f6656    85c0
                         {disp32} mov       dword ptr [esi + 0x000000c8], eax             // 0x006f6658    8986c8000000
                         {disp8} jne        _jmp_addr_0x006f6662                          // 0x006f665e    7502
                         xor.s              bl, bl                                        // 0x006f6660    32db
_jmp_addr_0x006f6662:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f6662    8b4e08
                         push               0x00c0d1c4                                    // 0x006f6665    68c4d1c000
                         push               ecx                                           // 0x006f666a    51
                         call               edi                                           // 0x006f666b    ffd7
                         test               eax, eax                                      // 0x006f666d    85c0
                         {disp32} mov       dword ptr [esi + 0x000000cc], eax             // 0x006f666f    8986cc000000
                         {disp8} jne        _jmp_addr_0x006f6679                          // 0x006f6675    7502
                         xor.s              bl, bl                                        // 0x006f6677    32db
_jmp_addr_0x006f6679:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6679    8b5608
                         push               0x00c0d1b4                                    // 0x006f667c    68b4d1c000
                         push               edx                                           // 0x006f6681    52
                         call               edi                                           // 0x006f6682    ffd7
                         test               eax, eax                                      // 0x006f6684    85c0
                         {disp32} mov       dword ptr [esi + 0x000000bc], eax             // 0x006f6686    8986bc000000
                         {disp8} jne        _jmp_addr_0x006f6690                          // 0x006f668c    7502
                         xor.s              bl, bl                                        // 0x006f668e    32db
_jmp_addr_0x006f6690:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f6690    8b4608
                         push               0x00c0d1a8                                    // 0x006f6693    68a8d1c000
                         push               eax                                           // 0x006f6698    50
                         call               edi                                           // 0x006f6699    ffd7
                         test               eax, eax                                      // 0x006f669b    85c0
                         {disp32} mov       dword ptr [esi + 0x000000b8], eax             // 0x006f669d    8986b8000000
                         {disp8} jne        _jmp_addr_0x006f66a7                          // 0x006f66a3    7502
                         xor.s              bl, bl                                        // 0x006f66a5    32db
_jmp_addr_0x006f66a7:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f66a7    8b4e08
                         push               0x00c0d190                                    // 0x006f66aa    6890d1c000
                         push               ecx                                           // 0x006f66af    51
                         call               edi                                           // 0x006f66b0    ffd7
                         test               eax, eax                                      // 0x006f66b2    85c0
                         {disp32} mov       dword ptr [esi + 0x000000c0], eax             // 0x006f66b4    8986c0000000
                         {disp8} jne        _jmp_addr_0x006f66be                          // 0x006f66ba    7502
                         xor.s              bl, bl                                        // 0x006f66bc    32db
_jmp_addr_0x006f66be:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f66be    8b5608
                         push               0x00c0d178                                    // 0x006f66c1    6878d1c000
                         push               edx                                           // 0x006f66c6    52
                         call               edi                                           // 0x006f66c7    ffd7
                         test               eax, eax                                      // 0x006f66c9    85c0
                         {disp32} mov       dword ptr [esi + 0x000000c4], eax             // 0x006f66cb    8986c4000000
                         {disp8} jne        _jmp_addr_0x006f66d5                          // 0x006f66d1    7502
                         xor.s              bl, bl                                        // 0x006f66d3    32db
_jmp_addr_0x006f66d5:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x006f66d5    8b4608
                         push               0x00c0d168                                    // 0x006f66d8    6868d1c000
                         push               eax                                           // 0x006f66dd    50
                         call               edi                                           // 0x006f66de    ffd7
                         test               eax, eax                                      // 0x006f66e0    85c0
                         {disp32} mov       dword ptr [esi + 0x000000d0], eax             // 0x006f66e2    8986d0000000
                         {disp8} jne        _jmp_addr_0x006f66ec                          // 0x006f66e8    7502
                         xor.s              bl, bl                                        // 0x006f66ea    32db
_jmp_addr_0x006f66ec:    {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x006f66ec    8b4e08
                         push               0x00c0d150                                    // 0x006f66ef    6850d1c000
                         push               ecx                                           // 0x006f66f4    51
                         call               edi                                           // 0x006f66f5    ffd7
                         test               eax, eax                                      // 0x006f66f7    85c0
                         {disp32} mov       dword ptr [esi + 0x000000d4], eax             // 0x006f66f9    8986d4000000
                         {disp8} jne        _jmp_addr_0x006f6703                          // 0x006f66ff    7502
                         xor.s              bl, bl                                        // 0x006f6701    32db
_jmp_addr_0x006f6703:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x006f6703    8b5608
                         push               0x00c0d138                                    // 0x006f6706    6838d1c000
                         push               edx                                           // 0x006f670b    52
                         call               edi                                           // 0x006f670c    ffd7
                         test               eax, eax                                      // 0x006f670e    85c0
                         {disp32} mov       dword ptr [esi + 0x000000d8], eax             // 0x006f6710    8986d8000000
                         {disp8} jne        _jmp_addr_0x006f671e                          // 0x006f6716    7506
                         pop                edi                                           // 0x006f6718    5f
                         pop                esi                                           // 0x006f6719    5e
                         xor.s              al, al                                        // 0x006f671a    32c0
                         pop                ebx                                           // 0x006f671c    5b
                         ret                                                              // 0x006f671d    c3
_jmp_addr_0x006f671e:    pop                edi                                           // 0x006f671e    5f
                         pop                esi                                           // 0x006f671f    5e
                         mov.s              al, bl                                        // 0x006f6720    8ac3
                         pop                ebx                                           // 0x006f6722    5b
                         ret                                                              // 0x006f6723    c3
                         nop                                                              // 0x006f6724    90
                         nop                                                              // 0x006f6725    90
                         nop                                                              // 0x006f6726    90
                         nop                                                              // 0x006f6727    90
                         nop                                                              // 0x006f6728    90
                         nop                                                              // 0x006f6729    90
                         nop                                                              // 0x006f672a    90
                         nop                                                              // 0x006f672b    90
                         nop                                                              // 0x006f672c    90
                         nop                                                              // 0x006f672d    90
                         nop                                                              // 0x006f672e    90
                         nop                                                              // 0x006f672f    90
                         xor.s              eax, eax                                      // 0x006f6730    33c0
                         {disp8} mov        dword ptr [ecx + 0x34], eax                   // 0x006f6732    894134
                         {disp8} mov        dword ptr [ecx + 0x38], eax                   // 0x006f6735    894138
                         {disp8} mov        dword ptr [ecx + 0x3c], eax                   // 0x006f6738    89413c
                         {disp8} mov        dword ptr [ecx + 0x44], eax                   // 0x006f673b    894144
                         {disp8} mov        dword ptr [ecx + 0x48], eax                   // 0x006f673e    894148
                         {disp8} mov        dword ptr [ecx + 0x4c], eax                   // 0x006f6741    89414c
                         {disp8} mov        dword ptr [ecx + 0x54], eax                   // 0x006f6744    894154
                         {disp8} mov        dword ptr [ecx + 0x50], eax                   // 0x006f6747    894150
                         {disp8} mov        dword ptr [ecx + 0x58], eax                   // 0x006f674a    894158
                         {disp8} mov        dword ptr [ecx + 0x40], eax                   // 0x006f674d    894140
                         {disp8} mov        dword ptr [ecx + 0x5c], eax                   // 0x006f6750    89415c
                         {disp8} mov        dword ptr [ecx + 0x60], eax                   // 0x006f6753    894160
                         {disp8} mov        dword ptr [ecx + 0x64], eax                   // 0x006f6756    894164
                         {disp8} mov        dword ptr [ecx + 0x68], eax                   // 0x006f6759    894168
                         {disp8} mov        dword ptr [ecx + 0x6c], eax                   // 0x006f675c    89416c
                         {disp8} mov        dword ptr [ecx + 0x70], eax                   // 0x006f675f    894170
                         {disp8} mov        dword ptr [ecx + 0x74], eax                   // 0x006f6762    894174
                         {disp8} mov        dword ptr [ecx + 0x78], eax                   // 0x006f6765    894178
                         {disp8} mov        dword ptr [ecx + 0x7c], eax                   // 0x006f6768    89417c
                         {disp32} mov       dword ptr [ecx + 0x00000088], eax             // 0x006f676b    898188000000
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x006f6771    898180000000
                         {disp32} mov       dword ptr [ecx + 0x00000084], eax             // 0x006f6777    898184000000
                         {disp32} mov       dword ptr [ecx + 0x0000008c], eax             // 0x006f677d    89818c000000
                         {disp32} mov       dword ptr [ecx + 0x00000090], eax             // 0x006f6783    898190000000
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax             // 0x006f6789    898194000000
                         {disp32} mov       dword ptr [ecx + 0x00000098], eax             // 0x006f678f    898198000000
                         {disp32} mov       dword ptr [ecx + 0x0000009c], eax             // 0x006f6795    89819c000000
                         {disp32} mov       dword ptr [ecx + 0x000000a0], eax             // 0x006f679b    8981a0000000
                         {disp32} mov       dword ptr [ecx + 0x000000a4], eax             // 0x006f67a1    8981a4000000
                         {disp32} mov       dword ptr [ecx + 0x000000a8], eax             // 0x006f67a7    8981a8000000
                         {disp32} mov       dword ptr [ecx + 0x000000ac], eax             // 0x006f67ad    8981ac000000
                         {disp32} mov       dword ptr [ecx + 0x000000b0], eax             // 0x006f67b3    8981b0000000
                         {disp32} mov       dword ptr [ecx + 0x000000b4], eax             // 0x006f67b9    8981b4000000
                         {disp32} mov       dword ptr [ecx + 0x000000c0], eax             // 0x006f67bf    8981c0000000
                         {disp32} mov       dword ptr [ecx + 0x000000b8], eax             // 0x006f67c5    8981b8000000
                         {disp32} mov       dword ptr [ecx + 0x000000bc], eax             // 0x006f67cb    8981bc000000
                         {disp32} mov       dword ptr [ecx + 0x000000c8], eax             // 0x006f67d1    8981c8000000
                         {disp32} mov       dword ptr [ecx + 0x000000cc], eax             // 0x006f67d7    8981cc000000
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x006f67dd    894128
                         mov                al, 0x01                                      // 0x006f67e0    b001
                         ret                                                              // 0x006f67e2    c3
                         nop                                                              // 0x006f67e3    90
                         nop                                                              // 0x006f67e4    90
                         nop                                                              // 0x006f67e5    90
                         nop                                                              // 0x006f67e6    90
                         nop                                                              // 0x006f67e7    90
                         nop                                                              // 0x006f67e8    90
                         nop                                                              // 0x006f67e9    90
                         nop                                                              // 0x006f67ea    90
                         nop                                                              // 0x006f67eb    90
                         nop                                                              // 0x006f67ec    90
                         nop                                                              // 0x006f67ed    90
                         nop                                                              // 0x006f67ee    90
                         nop                                                              // 0x006f67ef    90
_jmp_addr_0x006f67f0:    push               esi                                           // 0x006f67f0    56
                         mov.s              esi, ecx                                      // 0x006f67f1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x006f67f3    8b460c
                         push               eax                                           // 0x006f67f6    50
                         call               dword ptr [esi + 0xb0]                        // 0x006f67f7    ff96b0000000
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x006f67fd    8b4e0c
                         push               ecx                                           // 0x006f6800    51
                         call               dword ptr [esi + 0xb0]                        // 0x006f6801    ff96b0000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x006f6807    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006f680b    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006f680f    8b4c241c
                         push               edx                                           // 0x006f6813    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006f6814    8b54241c
                         push               eax                                           // 0x006f6818    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006f6819    8b44241c
                         push               ecx                                           // 0x006f681d    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006f681e    8b4c241c
                         push               edx                                           // 0x006f6822    52
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                   // 0x006f6823    8b560c
                         push               eax                                           // 0x006f6826    50
                         push               ecx                                           // 0x006f6827    51
                         push               edx                                           // 0x006f6828    52
                         call               dword ptr [esi + 0x14]                        // 0x006f6829    ff5614
                         add                esp, 0x24                                     // 0x006f682c    83c424
                         pop                esi                                           // 0x006f682f    5e
                         ret                0x0018                                        // 0x006f6830    c21800
                         nop                                                              // 0x006f6833    90
                         nop                                                              // 0x006f6834    90
                         nop                                                              // 0x006f6835    90
                         nop                                                              // 0x006f6836    90
                         nop                                                              // 0x006f6837    90
                         nop                                                              // 0x006f6838    90
                         nop                                                              // 0x006f6839    90
                         nop                                                              // 0x006f683a    90
                         nop                                                              // 0x006f683b    90
                         nop                                                              // 0x006f683c    90
                         nop                                                              // 0x006f683d    90
                         nop                                                              // 0x006f683e    90
                         nop                                                              // 0x006f683f    90
_jmp_addr_0x006f6840:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6840    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6844    8b510c
                         push               eax                                           // 0x006f6847    50
                         push               edx                                           // 0x006f6848    52
                         call               dword ptr [ecx + 0x18]                        // 0x006f6849    ff5118
                         add                esp, 0x08                                     // 0x006f684c    83c408
                         ret                0x0004                                        // 0x006f684f    c20400
                         nop                                                              // 0x006f6852    90
                         nop                                                              // 0x006f6853    90
                         nop                                                              // 0x006f6854    90
                         nop                                                              // 0x006f6855    90
                         nop                                                              // 0x006f6856    90
                         nop                                                              // 0x006f6857    90
                         nop                                                              // 0x006f6858    90
                         nop                                                              // 0x006f6859    90
                         nop                                                              // 0x006f685a    90
                         nop                                                              // 0x006f685b    90
                         nop                                                              // 0x006f685c    90
                         nop                                                              // 0x006f685d    90
                         nop                                                              // 0x006f685e    90
                         nop                                                              // 0x006f685f    90
_jmp_addr_0x006f6860:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6860    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f6864    8b542404
                         push               eax                                           // 0x006f6868    50
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6869    8b410c
                         push               edx                                           // 0x006f686c    52
                         push               eax                                           // 0x006f686d    50
                         call               dword ptr [ecx + 0x34]                        // 0x006f686e    ff5134
                         add                esp, 0x0c                                     // 0x006f6871    83c40c
                         ret                0x0008                                        // 0x006f6874    c20800
                         nop                                                              // 0x006f6877    90
                         nop                                                              // 0x006f6878    90
                         nop                                                              // 0x006f6879    90
                         nop                                                              // 0x006f687a    90
                         nop                                                              // 0x006f687b    90
                         nop                                                              // 0x006f687c    90
                         nop                                                              // 0x006f687d    90
                         nop                                                              // 0x006f687e    90
                         nop                                                              // 0x006f687f    90
_jmp_addr_0x006f6880:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6880    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f6884    8b542404
                         push               eax                                           // 0x006f6888    50
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6889    8b410c
                         push               edx                                           // 0x006f688c    52
                         push               eax                                           // 0x006f688d    50
                         call               dword ptr [ecx + 0x38]                        // 0x006f688e    ff5138
                         add                esp, 0x0c                                     // 0x006f6891    83c40c
                         ret                0x0008                                        // 0x006f6894    c20800
                         nop                                                              // 0x006f6897    90
                         nop                                                              // 0x006f6898    90
                         nop                                                              // 0x006f6899    90
                         nop                                                              // 0x006f689a    90
                         nop                                                              // 0x006f689b    90
                         nop                                                              // 0x006f689c    90
                         nop                                                              // 0x006f689d    90
                         nop                                                              // 0x006f689e    90
                         nop                                                              // 0x006f689f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f68a0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f68a4    8b510c
                         push               eax                                           // 0x006f68a7    50
                         push               edx                                           // 0x006f68a8    52
                         call               dword ptr [ecx + 0x3c]                        // 0x006f68a9    ff513c
                         add                esp, 0x08                                     // 0x006f68ac    83c408
                         ret                0x0004                                        // 0x006f68af    c20400
                         nop                                                              // 0x006f68b2    90
                         nop                                                              // 0x006f68b3    90
                         nop                                                              // 0x006f68b4    90
                         nop                                                              // 0x006f68b5    90
                         nop                                                              // 0x006f68b6    90
                         nop                                                              // 0x006f68b7    90
                         nop                                                              // 0x006f68b8    90
                         nop                                                              // 0x006f68b9    90
                         nop                                                              // 0x006f68ba    90
                         nop                                                              // 0x006f68bb    90
                         nop                                                              // 0x006f68bc    90
                         nop                                                              // 0x006f68bd    90
                         nop                                                              // 0x006f68be    90
                         nop                                                              // 0x006f68bf    90
?AutoStart@ScriptDLL@@QAEXXZ:
                               {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f68c0    8b410c
                         push               eax                                           // 0x006f68c3    50
                         call               dword ptr [ecx + 0x40]                        // 0x006f68c4    ff5140
                         add                esp, 0x04                                     // 0x006f68c7    83c404
                         ret                                                              // 0x006f68ca    c3
                         nop                                                              // 0x006f68cb    90
                         nop                                                              // 0x006f68cc    90
                         nop                                                              // 0x006f68cd    90
                         nop                                                              // 0x006f68ce    90
                         nop                                                              // 0x006f68cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f68d0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f68d4    8b510c
                         push               eax                                           // 0x006f68d7    50
                         push               edx                                           // 0x006f68d8    52
                         call               dword ptr [ecx + 0x44]                        // 0x006f68d9    ff5144
                         add                esp, 0x08                                     // 0x006f68dc    83c408
                         ret                0x0004                                        // 0x006f68df    c20400
                         nop                                                              // 0x006f68e2    90
                         nop                                                              // 0x006f68e3    90
                         nop                                                              // 0x006f68e4    90
                         nop                                                              // 0x006f68e5    90
                         nop                                                              // 0x006f68e6    90
                         nop                                                              // 0x006f68e7    90
                         nop                                                              // 0x006f68e8    90
                         nop                                                              // 0x006f68e9    90
                         nop                                                              // 0x006f68ea    90
                         nop                                                              // 0x006f68eb    90
                         nop                                                              // 0x006f68ec    90
                         nop                                                              // 0x006f68ed    90
                         nop                                                              // 0x006f68ee    90
                         nop                                                              // 0x006f68ef    90
?StopTasksOfType@ScriptDLL@@QAEXW4VMScriptType@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f68f0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f68f4    8b510c
                         push               eax                                           // 0x006f68f7    50
                         push               edx                                           // 0x006f68f8    52
                         call               dword ptr [ecx + 0x4c]                        // 0x006f68f9    ff514c
                         add                esp, 0x08                                     // 0x006f68fc    83c408
                         ret                0x0004                                        // 0x006f68ff    c20400
                         nop                                                              // 0x006f6902    90
                         nop                                                              // 0x006f6903    90
                         nop                                                              // 0x006f6904    90
                         nop                                                              // 0x006f6905    90
                         nop                                                              // 0x006f6906    90
                         nop                                                              // 0x006f6907    90
                         nop                                                              // 0x006f6908    90
                         nop                                                              // 0x006f6909    90
                         nop                                                              // 0x006f690a    90
                         nop                                                              // 0x006f690b    90
                         nop                                                              // 0x006f690c    90
                         nop                                                              // 0x006f690d    90
                         nop                                                              // 0x006f690e    90
                         nop                                                              // 0x006f690f    90
?StopAllTasks@ScriptDLL@@QAEXXZ:
                                  {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6910    8b410c
                         push               eax                                           // 0x006f6913    50
                         call               dword ptr [ecx + 0x48]                        // 0x006f6914    ff5148
                         pop                ecx                                           // 0x006f6917    59
                         ret                                                              // 0x006f6918    c3
                         nop                                                              // 0x006f6919    90
                         nop                                                              // 0x006f691a    90
                         nop                                                              // 0x006f691b    90
                         nop                                                              // 0x006f691c    90
                         nop                                                              // 0x006f691d    90
                         nop                                                              // 0x006f691e    90
                         nop                                                              // 0x006f691f    90
@LoadBinary__9ScriptDLLFPCc@12:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6920    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6924    8b510c
                         push               eax                                           // 0x006f6927    50
                         push               edx                                           // 0x006f6928    52
                         call               dword ptr [ecx + 0x5c]                        // 0x006f6929    ff515c
                         add                esp, 0x08                                     // 0x006f692c    83c408
                         ret                0x0004                                        // 0x006f692f    c20400
                         nop                                                              // 0x006f6932    90
                         nop                                                              // 0x006f6933    90
                         nop                                                              // 0x006f6934    90
                         nop                                                              // 0x006f6935    90
                         nop                                                              // 0x006f6936    90
                         nop                                                              // 0x006f6937    90
                         nop                                                              // 0x006f6938    90
                         nop                                                              // 0x006f6939    90
                         nop                                                              // 0x006f693a    90
                         nop                                                              // 0x006f693b    90
                         nop                                                              // 0x006f693c    90
                         nop                                                              // 0x006f693d    90
                         nop                                                              // 0x006f693e    90
                         nop                                                              // 0x006f693f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6940    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6944    8b510c
                         push               eax                                           // 0x006f6947    50
                         push               edx                                           // 0x006f6948    52
                         call               dword ptr [ecx + 0x60]                        // 0x006f6949    ff5160
                         add                esp, 0x08                                     // 0x006f694c    83c408
                         ret                0x0004                                        // 0x006f694f    c20400
                         nop                                                              // 0x006f6952    90
                         nop                                                              // 0x006f6953    90
                         nop                                                              // 0x006f6954    90
                         nop                                                              // 0x006f6955    90
                         nop                                                              // 0x006f6956    90
                         nop                                                              // 0x006f6957    90
                         nop                                                              // 0x006f6958    90
                         nop                                                              // 0x006f6959    90
                         nop                                                              // 0x006f695a    90
                         nop                                                              // 0x006f695b    90
                         nop                                                              // 0x006f695c    90
                         nop                                                              // 0x006f695d    90
                         nop                                                              // 0x006f695e    90
                         nop                                                              // 0x006f695f    90
_jmp_addr_0x006f6960:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6960    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6964    8b510c
                         push               eax                                           // 0x006f6967    50
                         push               edx                                           // 0x006f6968    52
                         call               dword ptr [ecx + 0x64]                        // 0x006f6969    ff5164
                         add                esp, 0x08                                     // 0x006f696c    83c408
                         ret                0x0004                                        // 0x006f696f    c20400
                         nop                                                              // 0x006f6972    90
                         nop                                                              // 0x006f6973    90
                         nop                                                              // 0x006f6974    90
                         nop                                                              // 0x006f6975    90
                         nop                                                              // 0x006f6976    90
                         nop                                                              // 0x006f6977    90
                         nop                                                              // 0x006f6978    90
                         nop                                                              // 0x006f6979    90
                         nop                                                              // 0x006f697a    90
                         nop                                                              // 0x006f697b    90
                         nop                                                              // 0x006f697c    90
                         nop                                                              // 0x006f697d    90
                         nop                                                              // 0x006f697e    90
                         nop                                                              // 0x006f697f    90
_jmp_addr_0x006f6980:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6980    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6984    8b510c
                         push               eax                                           // 0x006f6987    50
                         push               edx                                           // 0x006f6988    52
                         call               dword ptr [ecx + 0x68]                        // 0x006f6989    ff5168
                         add                esp, 0x08                                     // 0x006f698c    83c408
                         ret                0x0004                                        // 0x006f698f    c20400
                         nop                                                              // 0x006f6992    90
                         nop                                                              // 0x006f6993    90
                         nop                                                              // 0x006f6994    90
                         nop                                                              // 0x006f6995    90
                         nop                                                              // 0x006f6996    90
                         nop                                                              // 0x006f6997    90
                         nop                                                              // 0x006f6998    90
                         nop                                                              // 0x006f6999    90
                         nop                                                              // 0x006f699a    90
                         nop                                                              // 0x006f699b    90
                         nop                                                              // 0x006f699c    90
                         nop                                                              // 0x006f699d    90
                         nop                                                              // 0x006f699e    90
                         nop                                                              // 0x006f699f    90
_jmp_addr_0x006f69a0:    xor.s              eax, eax                                      // 0x006f69a0    33c0
                         {disp8} mov        dword ptr [ecx + 0x28], eax                   // 0x006f69a2    894128
                         {disp8} mov        dword ptr [ecx + 0x24], eax                   // 0x006f69a5    894124
                         {disp8} mov        dword ptr [ecx + 0x30], eax                   // 0x006f69a8    894130
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x006f69ab    89412c
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f69ae    8b410c
                         push               eax                                           // 0x006f69b1    50
                         call               dword ptr [ecx + 0x6c]                        // 0x006f69b2    ff516c
                         add                esp, 0x04                                     // 0x006f69b5    83c404
                         ret                                                              // 0x006f69b8    c3
                         nop                                                              // 0x006f69b9    90
                         nop                                                              // 0x006f69ba    90
                         nop                                                              // 0x006f69bb    90
                         nop                                                              // 0x006f69bc    90
                         nop                                                              // 0x006f69bd    90
                         nop                                                              // 0x006f69be    90
                         nop                                                              // 0x006f69bf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f69c0    8b410c
                         push               eax                                           // 0x006f69c3    50
                         call               dword ptr [ecx + 0x70]                        // 0x006f69c4    ff5170
                         add                esp, 0x04                                     // 0x006f69c7    83c404
                         ret                                                              // 0x006f69ca    c3
                         nop                                                              // 0x006f69cb    90
                         nop                                                              // 0x006f69cc    90
                         nop                                                              // 0x006f69cd    90
                         nop                                                              // 0x006f69ce    90
                         nop                                                              // 0x006f69cf    90
                         push               esi                                           // 0x006f69d0    56
                         mov.s              esi, ecx                                      // 0x006f69d1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x006f69d3    8b460c
                         push               eax                                           // 0x006f69d6    50
                         call               dword ptr [esi + 0x74]                        // 0x006f69d7    ff5674
                         add                esp, 0x04                                     // 0x006f69da    83c404
                         {disp8} mov        dword ptr [esi + 0x30], eax                   // 0x006f69dd    894630
                         pop                esi                                           // 0x006f69e0    5e
                         ret                                                              // 0x006f69e1    c3
                         nop                                                              // 0x006f69e2    90
                         nop                                                              // 0x006f69e3    90
                         nop                                                              // 0x006f69e4    90
                         nop                                                              // 0x006f69e5    90
                         nop                                                              // 0x006f69e6    90
                         nop                                                              // 0x006f69e7    90
                         nop                                                              // 0x006f69e8    90
                         nop                                                              // 0x006f69e9    90
                         nop                                                              // 0x006f69ea    90
                         nop                                                              // 0x006f69eb    90
                         nop                                                              // 0x006f69ec    90
                         nop                                                              // 0x006f69ed    90
                         nop                                                              // 0x006f69ee    90
                         nop                                                              // 0x006f69ef    90
_jmp_addr_0x006f69f0:    push               esi                                           // 0x006f69f0    56
                         mov.s              esi, ecx                                      // 0x006f69f1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x006f69f3    8b460c
                         push               eax                                           // 0x006f69f6    50
                         call               dword ptr [esi + 0x78]                        // 0x006f69f7    ff5678
                         add                esp, 0x04                                     // 0x006f69fa    83c404
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x006f69fd    89462c
                         pop                esi                                           // 0x006f6a00    5e
                         ret                                                              // 0x006f6a01    c3
                         nop                                                              // 0x006f6a02    90
                         nop                                                              // 0x006f6a03    90
                         nop                                                              // 0x006f6a04    90
                         nop                                                              // 0x006f6a05    90
                         nop                                                              // 0x006f6a06    90
                         nop                                                              // 0x006f6a07    90
                         nop                                                              // 0x006f6a08    90
                         nop                                                              // 0x006f6a09    90
                         nop                                                              // 0x006f6a0a    90
                         nop                                                              // 0x006f6a0b    90
                         nop                                                              // 0x006f6a0c    90
                         nop                                                              // 0x006f6a0d    90
                         nop                                                              // 0x006f6a0e    90
                         nop                                                              // 0x006f6a0f    90
_jmp_addr_0x006f6a10:    push               esi                                           // 0x006f6a10    56
                         mov.s              esi, ecx                                      // 0x006f6a11    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x006f6a13    8b460c
                         push               eax                                           // 0x006f6a16    50
                         call               dword ptr [esi + 0x7c]                        // 0x006f6a17    ff567c
                         add                esp, 0x04                                     // 0x006f6a1a    83c404
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x006f6a1d    894624
                         pop                esi                                           // 0x006f6a20    5e
                         ret                                                              // 0x006f6a21    c3
                         nop                                                              // 0x006f6a22    90
                         nop                                                              // 0x006f6a23    90
                         nop                                                              // 0x006f6a24    90
                         nop                                                              // 0x006f6a25    90
                         nop                                                              // 0x006f6a26    90
                         nop                                                              // 0x006f6a27    90
                         nop                                                              // 0x006f6a28    90
                         nop                                                              // 0x006f6a29    90
                         nop                                                              // 0x006f6a2a    90
                         nop                                                              // 0x006f6a2b    90
                         nop                                                              // 0x006f6a2c    90
                         nop                                                              // 0x006f6a2d    90
                         nop                                                              // 0x006f6a2e    90
                         nop                                                              // 0x006f6a2f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6a30    8b442404
                         push               esi                                           // 0x006f6a34    56
                         mov.s              esi, ecx                                      // 0x006f6a35    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x006f6a37    8b4e0c
                         push               eax                                           // 0x006f6a3a    50
                         push               ecx                                           // 0x006f6a3b    51
                         call               dword ptr [esi + 0x88]                        // 0x006f6a3c    ff9688000000
                         add                esp, 0x08                                     // 0x006f6a42    83c408
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x006f6a45    894624
                         pop                esi                                           // 0x006f6a48    5e
                         ret                0x0004                                        // 0x006f6a49    c20400
                         nop                                                              // 0x006f6a4c    90
                         nop                                                              // 0x006f6a4d    90
                         nop                                                              // 0x006f6a4e    90
                         nop                                                              // 0x006f6a4f    90
                         push               esi                                           // 0x006f6a50    56
                         mov.s              esi, ecx                                      // 0x006f6a51    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x006f6a53    8b460c
                         push               eax                                           // 0x006f6a56    50
                         call               dword ptr [esi + 0x80]                        // 0x006f6a57    ff9680000000
                         add                esp, 0x04                                     // 0x006f6a5d    83c404
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x006f6a60    894628
                         pop                esi                                           // 0x006f6a63    5e
                         ret                                                              // 0x006f6a64    c3
                         nop                                                              // 0x006f6a65    90
                         nop                                                              // 0x006f6a66    90
                         nop                                                              // 0x006f6a67    90
                         nop                                                              // 0x006f6a68    90
                         nop                                                              // 0x006f6a69    90
                         nop                                                              // 0x006f6a6a    90
                         nop                                                              // 0x006f6a6b    90
                         nop                                                              // 0x006f6a6c    90
                         nop                                                              // 0x006f6a6d    90
                         nop                                                              // 0x006f6a6e    90
                         nop                                                              // 0x006f6a6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6a70    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6a74    8b510c
                         push               eax                                           // 0x006f6a77    50
                         push               edx                                           // 0x006f6a78    52
                         call               dword ptr [ecx + 0x84]                        // 0x006f6a79    ff9184000000
                         add                esp, 0x08                                     // 0x006f6a7f    83c408
                         ret                0x0004                                        // 0x006f6a82    c20400
                         nop                                                              // 0x006f6a85    90
                         nop                                                              // 0x006f6a86    90
                         nop                                                              // 0x006f6a87    90
                         nop                                                              // 0x006f6a88    90
                         nop                                                              // 0x006f6a89    90
                         nop                                                              // 0x006f6a8a    90
                         nop                                                              // 0x006f6a8b    90
                         nop                                                              // 0x006f6a8c    90
                         nop                                                              // 0x006f6a8d    90
                         nop                                                              // 0x006f6a8e    90
                         nop                                                              // 0x006f6a8f    90
_jmp_addr_0x006f6a90:    {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6a90    8b410c
                         push               eax                                           // 0x006f6a93    50
                         call               dword ptr [ecx + 0x90]                        // 0x006f6a94    ff9190000000
                         add                esp, 0x04                                     // 0x006f6a9a    83c404
                         ret                                                              // 0x006f6a9d    c3
                         nop                                                              // 0x006f6a9e    90
                         nop                                                              // 0x006f6a9f    90
_jmp_addr_0x006f6aa0:    {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6aa0    8b410c
                         push               eax                                           // 0x006f6aa3    50
                         call               dword ptr [ecx + 0x94]                        // 0x006f6aa4    ff9194000000
                         add                esp, 0x04                                     // 0x006f6aaa    83c404
                         ret                                                              // 0x006f6aad    c3
                         nop                                                              // 0x006f6aae    90
                         nop                                                              // 0x006f6aaf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6ab0    8b410c
                         push               eax                                           // 0x006f6ab3    50
                         call               dword ptr [ecx + 0x8c]                        // 0x006f6ab4    ff918c000000
                         add                esp, 0x04                                     // 0x006f6aba    83c404
                         ret                                                              // 0x006f6abd    c3
                         nop                                                              // 0x006f6abe    90
                         nop                                                              // 0x006f6abf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6ac0    8b410c
                         push               eax                                           // 0x006f6ac3    50
                         call               dword ptr [ecx + 0x98]                        // 0x006f6ac4    ff9198000000
                         add                esp, 0x04                                     // 0x006f6aca    83c404
                         ret                                                              // 0x006f6acd    c3
                         nop                                                              // 0x006f6ace    90
                         nop                                                              // 0x006f6acf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6ad0    8b410c
                         push               eax                                           // 0x006f6ad3    50
                         call               dword ptr [ecx + 0x9c]                        // 0x006f6ad4    ff919c000000
                         add                esp, 0x04                                     // 0x006f6ada    83c404
                         ret                                                              // 0x006f6add    c3
                         nop                                                              // 0x006f6ade    90
                         nop                                                              // 0x006f6adf    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6ae0    8b410c
                         push               eax                                           // 0x006f6ae3    50
                         call               dword ptr [ecx + 0xa0]                        // 0x006f6ae4    ff91a0000000
                         add                esp, 0x04                                     // 0x006f6aea    83c404
                         ret                                                              // 0x006f6aed    c3
                         nop                                                              // 0x006f6aee    90
                         nop                                                              // 0x006f6aef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6af0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6af4    8b510c
                         push               eax                                           // 0x006f6af7    50
                         push               edx                                           // 0x006f6af8    52
                         call               dword ptr [ecx + 0xa4]                        // 0x006f6af9    ff91a4000000
                         add                esp, 0x08                                     // 0x006f6aff    83c408
                         ret                0x0004                                        // 0x006f6b02    c20400
                         nop                                                              // 0x006f6b05    90
                         nop                                                              // 0x006f6b06    90
                         nop                                                              // 0x006f6b07    90
                         nop                                                              // 0x006f6b08    90
                         nop                                                              // 0x006f6b09    90
                         nop                                                              // 0x006f6b0a    90
                         nop                                                              // 0x006f6b0b    90
                         nop                                                              // 0x006f6b0c    90
                         nop                                                              // 0x006f6b0d    90
                         nop                                                              // 0x006f6b0e    90
                         nop                                                              // 0x006f6b0f    90
_jmp_addr_0x006f6b10:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6b10    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6b14    8b510c
                         push               eax                                           // 0x006f6b17    50
                         push               edx                                           // 0x006f6b18    52
                         call               dword ptr [ecx + 0xa8]                        // 0x006f6b19    ff91a8000000
                         add                esp, 0x08                                     // 0x006f6b1f    83c408
                         ret                0x0004                                        // 0x006f6b22    c20400
                         nop                                                              // 0x006f6b25    90
                         nop                                                              // 0x006f6b26    90
                         nop                                                              // 0x006f6b27    90
                         nop                                                              // 0x006f6b28    90
                         nop                                                              // 0x006f6b29    90
                         nop                                                              // 0x006f6b2a    90
                         nop                                                              // 0x006f6b2b    90
                         nop                                                              // 0x006f6b2c    90
                         nop                                                              // 0x006f6b2d    90
                         nop                                                              // 0x006f6b2e    90
                         nop                                                              // 0x006f6b2f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6b30    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f6b34    8b542404
                         push               eax                                           // 0x006f6b38    50
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6b39    8b410c
                         push               edx                                           // 0x006f6b3c    52
                         push               eax                                           // 0x006f6b3d    50
                         call               dword ptr [ecx + 0xc8]                        // 0x006f6b3e    ff91c8000000
                         add                esp, 0x0c                                     // 0x006f6b44    83c40c
                         ret                0x0008                                        // 0x006f6b47    c20800
                         nop                                                              // 0x006f6b4a    90
                         nop                                                              // 0x006f6b4b    90
                         nop                                                              // 0x006f6b4c    90
                         nop                                                              // 0x006f6b4d    90
                         nop                                                              // 0x006f6b4e    90
                         nop                                                              // 0x006f6b4f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6b50    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6b54    8b510c
                         push               eax                                           // 0x006f6b57    50
                         push               edx                                           // 0x006f6b58    52
                         call               dword ptr [ecx + 0xcc]                        // 0x006f6b59    ff91cc000000
                         add                esp, 0x08                                     // 0x006f6b5f    83c408
                         ret                0x0004                                        // 0x006f6b62    c20400
                         nop                                                              // 0x006f6b65    90
                         nop                                                              // 0x006f6b66    90
                         nop                                                              // 0x006f6b67    90
                         nop                                                              // 0x006f6b68    90
                         nop                                                              // 0x006f6b69    90
                         nop                                                              // 0x006f6b6a    90
                         nop                                                              // 0x006f6b6b    90
                         nop                                                              // 0x006f6b6c    90
                         nop                                                              // 0x006f6b6d    90
                         nop                                                              // 0x006f6b6e    90
                         nop                                                              // 0x006f6b6f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6b70    8b410c
                         push               eax                                           // 0x006f6b73    50
                         call               dword ptr [ecx + 0xac]                        // 0x006f6b74    ff91ac000000
                         add                esp, 0x04                                     // 0x006f6b7a    83c404
                         ret                                                              // 0x006f6b7d    c3
                         nop                                                              // 0x006f6b7e    90
                         nop                                                              // 0x006f6b7f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6b80    8b410c
                         push               eax                                           // 0x006f6b83    50
                         call               dword ptr [ecx + 0xb0]                        // 0x006f6b84    ff91b0000000
                         add                esp, 0x04                                     // 0x006f6b8a    83c404
                         ret                                                              // 0x006f6b8d    c3
                         nop                                                              // 0x006f6b8e    90
                         nop                                                              // 0x006f6b8f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6b90    8b410c
                         push               eax                                           // 0x006f6b93    50
                         call               dword ptr [ecx + 0xb4]                        // 0x006f6b94    ff91b4000000
                         add                esp, 0x04                                     // 0x006f6b9a    83c404
                         ret                                                              // 0x006f6b9d    c3
                         nop                                                              // 0x006f6b9e    90
                         nop                                                              // 0x006f6b9f    90
?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6ba0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f6ba4    8b542404
                         push               eax                                           // 0x006f6ba8    50
                         push               edx                                           // 0x006f6ba9    52
                         call               dword ptr [ecx + 0x54]                        // 0x006f6baa    ff5154
                         add                esp, 0x08                                     // 0x006f6bad    83c408
                         ret                0x0008                                        // 0x006f6bb0    c20800
                         nop                                                              // 0x006f6bb3    90
                         nop                                                              // 0x006f6bb4    90
                         nop                                                              // 0x006f6bb5    90
                         nop                                                              // 0x006f6bb6    90
                         nop                                                              // 0x006f6bb7    90
                         nop                                                              // 0x006f6bb8    90
                         nop                                                              // 0x006f6bb9    90
                         nop                                                              // 0x006f6bba    90
                         nop                                                              // 0x006f6bbb    90
                         nop                                                              // 0x006f6bbc    90
                         nop                                                              // 0x006f6bbd    90
                         nop                                                              // 0x006f6bbe    90
                         nop                                                              // 0x006f6bbf    90
_jmp_addr_0x006f6bc0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6bc0    8b442404
                         push               eax                                           // 0x006f6bc4    50
                         call               dword ptr [ecx + 0x50]                        // 0x006f6bc5    ff5150
                         add                esp, 0x04                                     // 0x006f6bc8    83c404
                         ret                0x0004                                        // 0x006f6bcb    c20400
                         nop                                                              // 0x006f6bce    90
                         nop                                                              // 0x006f6bcf    90
_jmp_addr_0x006f6bd0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6bd0    8b442404
                         push               eax                                           // 0x006f6bd4    50
                         call               dword ptr [ecx + 0x58]                        // 0x006f6bd5    ff5158
                         add                esp, 0x04                                     // 0x006f6bd8    83c404
                         ret                0x0004                                        // 0x006f6bdb    c20400
                         nop                                                              // 0x006f6bde    90
                         nop                                                              // 0x006f6bdf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6be0    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6be4    8b510c
                         push               eax                                           // 0x006f6be7    50
                         push               edx                                           // 0x006f6be8    52
                         call               dword ptr [ecx + 0xbc]                        // 0x006f6be9    ff91bc000000
                         add                esp, 0x08                                     // 0x006f6bef    83c408
                         ret                0x0004                                        // 0x006f6bf2    c20400
                         nop                                                              // 0x006f6bf5    90
                         nop                                                              // 0x006f6bf6    90
                         nop                                                              // 0x006f6bf7    90
                         nop                                                              // 0x006f6bf8    90
                         nop                                                              // 0x006f6bf9    90
                         nop                                                              // 0x006f6bfa    90
                         nop                                                              // 0x006f6bfb    90
                         nop                                                              // 0x006f6bfc    90
                         nop                                                              // 0x006f6bfd    90
                         nop                                                              // 0x006f6bfe    90
                         nop                                                              // 0x006f6bff    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6c00    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6c04    8b510c
                         push               eax                                           // 0x006f6c07    50
                         push               edx                                           // 0x006f6c08    52
                         call               dword ptr [ecx + 0xb8]                        // 0x006f6c09    ff91b8000000
                         add                esp, 0x08                                     // 0x006f6c0f    83c408
                         ret                0x0004                                        // 0x006f6c12    c20400
                         nop                                                              // 0x006f6c15    90
                         nop                                                              // 0x006f6c16    90
                         nop                                                              // 0x006f6c17    90
                         nop                                                              // 0x006f6c18    90
                         nop                                                              // 0x006f6c19    90
                         nop                                                              // 0x006f6c1a    90
                         nop                                                              // 0x006f6c1b    90
                         nop                                                              // 0x006f6c1c    90
                         nop                                                              // 0x006f6c1d    90
                         nop                                                              // 0x006f6c1e    90
                         nop                                                              // 0x006f6c1f    90
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6c20    8b410c
                         push               eax                                           // 0x006f6c23    50
                         call               dword ptr [ecx + 0xc0]                        // 0x006f6c24    ff91c0000000
                         add                esp, 0x04                                     // 0x006f6c2a    83c404
                         ret                                                              // 0x006f6c2d    c3
                         nop                                                              // 0x006f6c2e    90
                         nop                                                              // 0x006f6c2f    90
_jmp_addr_0x006f6c30:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6c30    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6c34    8b510c
                         push               eax                                           // 0x006f6c37    50
                         push               edx                                           // 0x006f6c38    52
                         call               dword ptr [ecx + 0xc4]                        // 0x006f6c39    ff91c4000000
                         add                esp, 0x08                                     // 0x006f6c3f    83c408
                         ret                0x0004                                        // 0x006f6c42    c20400
                         nop                                                              // 0x006f6c45    90
                         nop                                                              // 0x006f6c46    90
                         nop                                                              // 0x006f6c47    90
                         nop                                                              // 0x006f6c48    90
                         nop                                                              // 0x006f6c49    90
                         nop                                                              // 0x006f6c4a    90
                         nop                                                              // 0x006f6c4b    90
                         nop                                                              // 0x006f6c4c    90
                         nop                                                              // 0x006f6c4d    90
                         nop                                                              // 0x006f6c4e    90
                         nop                                                              // 0x006f6c4f    90
?GetScriptType@ScriptDLL@@QAEPAXK@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6c50    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6c54    8b510c
                         push               eax                                           // 0x006f6c57    50
                         push               edx                                           // 0x006f6c58    52
                         call               dword ptr [ecx + 0xd0]                        // 0x006f6c59    ff91d0000000
                         add                esp, 0x08                                     // 0x006f6c5f    83c408
                         ret                0x0004                                        // 0x006f6c62    c20400
                         nop                                                              // 0x006f6c65    90
                         nop                                                              // 0x006f6c66    90
                         nop                                                              // 0x006f6c67    90
                         nop                                                              // 0x006f6c68    90
                         nop                                                              // 0x006f6c69    90
                         nop                                                              // 0x006f6c6a    90
                         nop                                                              // 0x006f6c6b    90
                         nop                                                              // 0x006f6c6c    90
                         nop                                                              // 0x006f6c6d    90
                         nop                                                              // 0x006f6c6e    90
                         nop                                                              // 0x006f6c6f    90
_jmp_addr_0x006f6c70:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x006f6c70    8b442404
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x006f6c74    8b510c
                         push               eax                                           // 0x006f6c77    50
                         push               edx                                           // 0x006f6c78    52
                         call               dword ptr [ecx + 0xd4]                        // 0x006f6c79    ff91d4000000
                         add                esp, 0x08                                     // 0x006f6c7f    83c408
                         ret                0x0004                                        // 0x006f6c82    c20400
                         nop                                                              // 0x006f6c85    90
                         nop                                                              // 0x006f6c86    90
                         nop                                                              // 0x006f6c87    90
                         nop                                                              // 0x006f6c88    90
                         nop                                                              // 0x006f6c89    90
                         nop                                                              // 0x006f6c8a    90
                         nop                                                              // 0x006f6c8b    90
                         nop                                                              // 0x006f6c8c    90
                         nop                                                              // 0x006f6c8d    90
                         nop                                                              // 0x006f6c8e    90
                         nop                                                              // 0x006f6c8f    90
_jmp_addr_0x006f6c90:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006f6c90    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x006f6c94    8b542404
                         push               eax                                           // 0x006f6c98    50
                         {disp8} mov        eax, dword ptr [ecx + 0x0c]                   // 0x006f6c99    8b410c
                         push               edx                                           // 0x006f6c9c    52
                         push               eax                                           // 0x006f6c9d    50
                         call               dword ptr [ecx + 0xd8]                        // 0x006f6c9e    ff91d8000000
                         add                esp, 0x0c                                     // 0x006f6ca4    83c40c
                         ret                0x0008                                        // 0x006f6ca7    c20800
                         nop                                                              // 0x006f6caa    90
                         nop                                                              // 0x006f6cab    90
                         nop                                                              // 0x006f6cac    90
                         nop                                                              // 0x006f6cad    90
                         nop                                                              // 0x006f6cae    90
                         nop                                                              // 0x006f6caf    90
_globl_ct_0x006f6cb0:    {disp32} jmp       _jmp_addr_0x006f6cc0                          // 0x006f6cb0    e90b000000
                         nop                                                              // 0x006f6cb5    90
                         nop                                                              // 0x006f6cb6    90
                         nop                                                              // 0x006f6cb7    90
                         nop                                                              // 0x006f6cb8    90
                         nop                                                              // 0x006f6cb9    90
                         nop                                                              // 0x006f6cba    90
                         nop                                                              // 0x006f6cbb    90
                         nop                                                              // 0x006f6cbc    90
                         nop                                                              // 0x006f6cbd    90
                         nop                                                              // 0x006f6cbe    90
                         nop                                                              // 0x006f6cbf    90
_jmp_addr_0x006f6cc0:    {disp32} mov       dword ptr [data_bytes + 0x3d005c], 0xffffffff // 0x006f6cc0    c7055c60d900ffffffff
                         ret                                                              // 0x006f6cca    c3
                         nop                                                              // 0x006f6ccb    90
                         nop                                                              // 0x006f6ccc    90
                         nop                                                              // 0x006f6ccd    90
                         nop                                                              // 0x006f6cce    90
                         nop                                                              // 0x006f6ccf    90
_globl_ct_0x006f6cd0:    {disp32} jmp       _jmp_addr_0x006f6ce0                          // 0x006f6cd0    e90b000000
                         nop                                                              // 0x006f6cd5    90
                         nop                                                              // 0x006f6cd6    90
                         nop                                                              // 0x006f6cd7    90
                         nop                                                              // 0x006f6cd8    90
                         nop                                                              // 0x006f6cd9    90
                         nop                                                              // 0x006f6cda    90
                         nop                                                              // 0x006f6cdb    90
                         nop                                                              // 0x006f6cdc    90
                         nop                                                              // 0x006f6cdd    90
                         nop                                                              // 0x006f6cde    90
                         nop                                                              // 0x006f6cdf    90
_jmp_addr_0x006f6ce0:    {disp32} fld       dword ptr [rdata_bytes + 0x9920c]             // 0x006f6ce0    d9050c229400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x99208]             // 0x006f6ce6    d80d08229400
                         {disp32} fstp      dword ptr [data_bytes + 0x3d0058]             // 0x006f6cec    d91d5860d900
                         ret                                                              // 0x006f6cf2    c3
                         nop                                                              // 0x006f6cf3    90
                         nop                                                              // 0x006f6cf4    90
                         nop                                                              // 0x006f6cf5    90
                         nop                                                              // 0x006f6cf6    90
                         nop                                                              // 0x006f6cf7    90
                         nop                                                              // 0x006f6cf8    90
                         nop                                                              // 0x006f6cf9    90
                         nop                                                              // 0x006f6cfa    90
                         nop                                                              // 0x006f6cfb    90
                         nop                                                              // 0x006f6cfc    90
                         nop                                                              // 0x006f6cfd    90
                         nop                                                              // 0x006f6cfe    90
                         nop                                                              // 0x006f6cff    90
_jmp_addr_0x006f6d00:    push               esi                                           // 0x006f6d00    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x006f6d01    8b742408
                         mov                eax, dword ptr [esi]                          // 0x006f6d05    8b06
                         mov.s              ecx, esi                                      // 0x006f6d07    8bce
                         call               dword ptr [eax + 0x4e8]                       // 0x006f6d09    ff90e8040000
                         add                eax, -0x02                                    // 0x006f6d0f    83c0fe
                         cmp                eax, 0x26                                     // 0x006f6d12    83f826
                         {disp32} ja        _jmp_addr_0x006f6f12                          // 0x006f6d15    0f87f7010000
                         xor.s              ecx, ecx                                      // 0x006f6d1b    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x006f6f78]               // 0x006f6d1d    8a88786f6f00
                         jmp                dword ptr [ecx*4 + 0x6f6f28]                  // 0x006f6d23    ff248d286f6f00
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6d2a    8b7628
                         sub                esi, OFFSET _VillagerInfos                    // 0x006f6d2d    81eee86bda00
                         mov                eax, 0x8ca29c05                               // 0x006f6d33    b8059ca28c
                         imul               esi                                           // 0x006f6d38    f7ee
                         mov.s              eax, edx                                      // 0x006f6d3a    8bc2
                         add.s              eax, esi                                      // 0x006f6d3c    03c6
                         sar                eax, 9                                        // 0x006f6d3e    c1f809
                         mov.s              edx, eax                                      // 0x006f6d41    8bd0
                         shr                edx, 0x1f                                     // 0x006f6d43    c1ea1f
                         add.s              eax, edx                                      // 0x006f6d46    03c2
                         pop                esi                                           // 0x006f6d48    5e
                         ret                                                              // 0x006f6d49    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6d4a    8b7628
                         sub                esi, 0x00c4d030                               // 0x006f6d4d    81ee30d0c400
                         mov                eax, 0xb70fbb5b                               // 0x006f6d53    b85bbb0fb7
                         imul               esi                                           // 0x006f6d58    f7ee
                         mov.s              eax, edx                                      // 0x006f6d5a    8bc2
                         add.s              eax, esi                                      // 0x006f6d5c    03c6
                         sar                eax, 9                                        // 0x006f6d5e    c1f809
                         mov.s              ecx, eax                                      // 0x006f6d61    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6d63    c1e91f
                         add.s              eax, ecx                                      // 0x006f6d66    03c1
                         pop                esi                                           // 0x006f6d68    5e
                         ret                                                              // 0x006f6d69    c3
                         {disp8} mov        edx, dword ptr [esi + 0x28]                   // 0x006f6d6a    8b5628
                         {disp32} mov       eax, dword ptr [edx + 0x000001f4]             // 0x006f6d6d    8b82f4010000
                         pop                esi                                           // 0x006f6d73    5e
                         ret                                                              // 0x006f6d74    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6d75    8b7628
                         sub                esi, 0x00d4c660                               // 0x006f6d78    81ee60c6d400
                         mov                eax, 0x1948b0fd                               // 0x006f6d7e    b8fdb04819
                         imul               esi                                           // 0x006f6d83    f7ee
                         mov.s              eax, edx                                      // 0x006f6d85    8bc2
                         sar                eax, 5                                        // 0x006f6d87    c1f805
                         mov.s              ecx, eax                                      // 0x006f6d8a    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6d8c    c1e91f
                         add.s              eax, ecx                                      // 0x006f6d8f    03c1
                         pop                esi                                           // 0x006f6d91    5e
                         ret                                                              // 0x006f6d92    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6d93    8b7628
                         sub                esi, 0x00da3ad8                               // 0x006f6d96    81eed83ada00
                         mov                eax, 0x66666667                               // 0x006f6d9c    b867666666
                         imul               esi                                           // 0x006f6da1    f7ee
                         mov.s              eax, edx                                      // 0x006f6da3    8bc2
                         sar                eax, 7                                        // 0x006f6da5    c1f807
                         mov.s              edx, eax                                      // 0x006f6da8    8bd0
                         shr                edx, 0x1f                                     // 0x006f6daa    c1ea1f
                         add.s              eax, edx                                      // 0x006f6dad    03c2
                         pop                esi                                           // 0x006f6daf    5e
                         ret                                                              // 0x006f6db0    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6db1    8b7628
                         sub                esi, OFFSET _AbodeInfos                       // 0x006f6db4    81ee90c6c300
                         mov                eax, 0x8fb823ef                               // 0x006f6dba    b8ef23b88f
                         {disp32} jmp       _jmp_addr_0x006f6f00                          // 0x006f6dbf    e93c010000
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6dc4    8b7628
                         sub                esi, 0x00cc99a0                               // 0x006f6dc7    81eea099cc00
                         mov                eax, 0xe070381d                               // 0x006f6dcd    b81d3870e0
                         imul               esi                                           // 0x006f6dd2    f7ee
                         mov.s              eax, edx                                      // 0x006f6dd4    8bc2
                         add.s              eax, esi                                      // 0x006f6dd6    03c6
                         sar                eax, 8                                        // 0x006f6dd8    c1f808
                         mov.s              edx, eax                                      // 0x006f6ddb    8bd0
                         shr                edx, 0x1f                                     // 0x006f6ddd    c1ea1f
                         add.s              eax, edx                                      // 0x006f6de0    03c2
                         pop                esi                                           // 0x006f6de2    5e
                         ret                                                              // 0x006f6de3    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6de4    8b7628
                         sub                esi, 0x00d50bf8                               // 0x006f6de7    81eef80bd500
                         mov                eax, 0x6bca1af3                               // 0x006f6ded    b8f31aca6b
                         imul               esi                                           // 0x006f6df2    f7ee
                         mov.s              eax, edx                                      // 0x006f6df4    8bc2
                         sar                eax, 7                                        // 0x006f6df6    c1f807
                         mov.s              ecx, eax                                      // 0x006f6df9    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6dfb    c1e91f
                         add.s              eax, ecx                                      // 0x006f6dfe    03c1
                         pop                esi                                           // 0x006f6e00    5e
                         ret                                                              // 0x006f6e01    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6e02    8b7628
                         sub                esi, 0x00d3a6d8                               // 0x006f6e05    81eed8a6d300
                         mov                eax, 0x1b4e81b5                               // 0x006f6e0b    b8b5814e1b
                         imul               esi                                           // 0x006f6e10    f7ee
                         mov.s              eax, edx                                      // 0x006f6e12    8bc2
                         sar                eax, 5                                        // 0x006f6e14    c1f805
                         mov.s              edx, eax                                      // 0x006f6e17    8bd0
                         shr                edx, 0x1f                                     // 0x006f6e19    c1ea1f
                         add.s              eax, edx                                      // 0x006f6e1c    03c2
                         pop                esi                                           // 0x006f6e1e    5e
                         ret                                                              // 0x006f6e1f    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6e20    8b7628
                         sub                esi, 0x00d38448                               // 0x006f6e23    81ee4884d300
                         mov                eax, 0x76b981db                               // 0x006f6e29    b8db81b976
                         imul               esi                                           // 0x006f6e2e    f7ee
                         mov.s              eax, edx                                      // 0x006f6e30    8bc2
                         sar                eax, 7                                        // 0x006f6e32    c1f807
                         mov.s              ecx, eax                                      // 0x006f6e35    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6e37    c1e91f
                         add.s              eax, ecx                                      // 0x006f6e3a    03c1
                         pop                esi                                           // 0x006f6e3c    5e
                         ret                                                              // 0x006f6e3d    c3
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x006f6e3e    8b86e0000000
                         pop                esi                                           // 0x006f6e44    5e
                         ret                                                              // 0x006f6e45    c3
                         push               0x00c0d380                                    // 0x006f6e46    6880d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f6e4b    e860f4ffff
                         add                esp, 0x04                                     // 0x006f6e50    83c404
                         mov                eax, 0x0000270f                               // 0x006f6e53    b80f270000
                         pop                esi                                           // 0x006f6e58    5e
                         ret                                                              // 0x006f6e59    c3
                         mov                edx, dword ptr [esi]                          // 0x006f6e5a    8b16
                         mov.s              ecx, esi                                      // 0x006f6e5c    8bce
                         call               dword ptr [edx + 0xac]                        // 0x006f6e5e    ff92ac000000
                         test               eax, eax                                      // 0x006f6e64    85c0
                         {disp8} je         _jmp_addr_0x006f6e6d                          // 0x006f6e66    7405
                         {disp8} mov        eax, dword ptr [eax + 0x68]                   // 0x006f6e68    8b4068
                         pop                esi                                           // 0x006f6e6b    5e
                         ret                                                              // 0x006f6e6c    c3
_jmp_addr_0x006f6e6d:    {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6e6d    8b7628
                         sub                esi, OFFSET _GSpellSeedInfo_ARRAY_00d9d678    // 0x006f6e70    81ee78d6d900
                         mov                eax, 0x51eb851f                               // 0x006f6e76    b81f85eb51
                         imul               esi                                           // 0x006f6e7b    f7ee
                         mov.s              eax, edx                                      // 0x006f6e7d    8bc2
                         sar                eax, 7                                        // 0x006f6e7f    c1f807
                         mov.s              ecx, eax                                      // 0x006f6e82    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6e84    c1e91f
                         add.s              eax, ecx                                      // 0x006f6e87    03c1
                         pop                esi                                           // 0x006f6e89    5e
                         ret                                                              // 0x006f6e8a    c3
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x006f6e8b    8b4648
                         pop                esi                                           // 0x006f6e8e    5e
                         ret                                                              // 0x006f6e8f    c3
                         {disp32} mov       esi, dword ptr [esi + 0x00000120]             // 0x006f6e90    8bb620010000
                         sub                esi, OFFSET _GFieldTypeInfo_00ccf070          // 0x006f6e96    81ee70f0cc00
                         mov                eax, 0x60606061                               // 0x006f6e9c    b861606060
                         imul               esi                                           // 0x006f6ea1    f7ee
                         mov.s              eax, edx                                      // 0x006f6ea3    8bc2
                         sar                eax, 7                                        // 0x006f6ea5    c1f807
                         mov.s              edx, eax                                      // 0x006f6ea8    8bd0
                         shr                edx, 0x1f                                     // 0x006f6eaa    c1ea1f
                         add.s              eax, edx                                      // 0x006f6ead    03c2
                         pop                esi                                           // 0x006f6eaf    5e
                         ret                                                              // 0x006f6eb0    c3
                         {disp32} mov       esi, dword ptr [esi + 0x0000008c]             // 0x006f6eb1    8bb68c000000
                         sub                esi, OFFSET _GTribeInfo_ARRAY_00da57a8        // 0x006f6eb7    81eea857da00
                         mov                eax, 0x92492493                               // 0x006f6ebd    b893244992
                         imul               esi                                           // 0x006f6ec2    f7ee
                         mov.s              eax, edx                                      // 0x006f6ec4    8bc2
                         add.s              eax, esi                                      // 0x006f6ec6    03c6
                         sar                eax, 4                                        // 0x006f6ec8    c1f804
                         mov.s              ecx, eax                                      // 0x006f6ecb    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6ecd    c1e91f
                         add.s              eax, ecx                                      // 0x006f6ed0    03c1
                         pop                esi                                           // 0x006f6ed2    5e
                         ret                                                              // 0x006f6ed3    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6ed4    8b7628
                         sub                esi, 0x00d96390                               // 0x006f6ed7    81ee9063d900
                         mov                eax, 0x78787879                               // 0x006f6edd    b879787878
                         imul               esi                                           // 0x006f6ee2    f7ee
                         mov.s              eax, edx                                      // 0x006f6ee4    8bc2
                         sar                eax, 7                                        // 0x006f6ee6    c1f807
                         mov.s              edx, eax                                      // 0x006f6ee9    8bd0
                         shr                edx, 0x1f                                     // 0x006f6eeb    c1ea1f
                         add.s              eax, edx                                      // 0x006f6eee    03c2
                         pop                esi                                           // 0x006f6ef0    5e
                         ret                                                              // 0x006f6ef1    c3
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x006f6ef2    8b7628
                         sub                esi, OFFSET _GTotemStatueInfo_ARRAY_00da1d18  // 0x006f6ef5    81ee181dda00
                         mov                eax, 0xe070381d                               // 0x006f6efb    b81d3870e0
_jmp_addr_0x006f6f00:    imul               esi                                           // 0x006f6f00    f7ee
                         mov.s              eax, edx                                      // 0x006f6f02    8bc2
                         add.s              eax, esi                                      // 0x006f6f04    03c6
                         sar                eax, 8                                        // 0x006f6f06    c1f808
                         mov.s              ecx, eax                                      // 0x006f6f09    8bc8
                         shr                ecx, 0x1f                                     // 0x006f6f0b    c1e91f
                         add.s              eax, ecx                                      // 0x006f6f0e    03c1
                         pop                esi                                           // 0x006f6f10    5e
                         ret                                                              // 0x006f6f11    c3
_jmp_addr_0x006f6f12:    push               0x00c0d368                                    // 0x006f6f12    6868d3c000
                         call               ?ScriptErrorMessage@GScript@@QAEXPAD@Z        // 0x006f6f17    e894f3ffff
                         add                esp, 0x04                                     // 0x006f6f1c    83c404
                         mov                eax, 0x0000270f                               // 0x006f6f1f    b80f270000
                         pop                esi                                           // 0x006f6f24    5e
                         ret                                                              // 0x006f6f25    c3

// Snippet: db, [0x006f6f26, 0x006f6f28)
.byte 0x8b, 0xff                  // 0x006f6f26

// Snippet: jmptbl, [0x006f6f28, 0x006f6f78)
.byte 0xb1, 0x6d, 0x6f, 0x00      // 0x006f6f28
.byte 0xc4, 0x6d, 0x6f, 0x00      // 0x006f6f2c
.byte 0x2a, 0x6d, 0x6f, 0x00      // 0x006f6f30
.byte 0x4a, 0x6d, 0x6f, 0x00      // 0x006f6f34
.byte 0xe4, 0x6d, 0x6f, 0x00      // 0x006f6f38
.byte 0x02, 0x6e, 0x6f, 0x00      // 0x006f6f3c
.byte 0x6a, 0x6d, 0x6f, 0x00      // 0x006f6f40
.byte 0x46, 0x6e, 0x6f, 0x00      // 0x006f6f44
.byte 0x75, 0x6d, 0x6f, 0x00      // 0x006f6f48
.byte 0xb1, 0x6e, 0x6f, 0x00      // 0x006f6f4c
.byte 0x20, 0x6e, 0x6f, 0x00      // 0x006f6f50
.byte 0x93, 0x6d, 0x6f, 0x00      // 0x006f6f54
.byte 0x3e, 0x6e, 0x6f, 0x00      // 0x006f6f58
.byte 0x6d, 0x6e, 0x6f, 0x00      // 0x006f6f5c
.byte 0x5a, 0x6e, 0x6f, 0x00      // 0x006f6f60
.byte 0x8b, 0x6e, 0x6f, 0x00      // 0x006f6f64
.byte 0x90, 0x6e, 0x6f, 0x00      // 0x006f6f68
.byte 0xd4, 0x6e, 0x6f, 0x00      // 0x006f6f6c
.byte 0xf2, 0x6e, 0x6f, 0x00      // 0x006f6f70
.byte 0x12, 0x6f, 0x6f, 0x00      // 0x006f6f74

// Snippet: ijmptbl, [0x006f6f78, 0x006f6f9f)
.byte 0x00, 0x01, 0x02, 0x02      // 0x006f6f78
.byte 0x03, 0x04, 0x05, 0x13      // 0x006f6f7c
.byte 0x13, 0x13, 0x06, 0x07      // 0x006f6f80
.byte 0x13, 0x13, 0x08, 0x13      // 0x006f6f84
.byte 0x13, 0x09, 0x0a, 0x03      // 0x006f6f88
.byte 0x0b, 0x0c, 0x0d, 0x0a      // 0x006f6f8c
.byte 0x0a, 0x0a, 0x13, 0x13      // 0x006f6f90
.byte 0x0e, 0x13, 0x0f, 0x05      // 0x006f6f94
.byte 0x13, 0x10, 0x00, 0x11      // 0x006f6f98
.byte 0x13, 0x13, 0x12            // 0x006f6f9c

// Snippet: db, [0x006f6f9f, 0x006f6fa0)
.byte 0x90                        // 0x006f6f9f

