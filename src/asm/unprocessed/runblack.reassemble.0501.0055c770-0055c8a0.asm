.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern ??3Base@@SAXPAXK@Z
.extern ??0MapCoords@@QAE@XZ
.extern ?SetToZero@Living@@QAEXXZ
.extern ??0LivingAction@@QAE@XZ
.extern ??0CircleHugInfo@@QAE@XZ
.extern ??0Object@@QAE@XZ
.extern _jmp_addr_0x006e3a60
.extern  ??3@YAXPAX@Z

.globl ??0Mobile@@QAE@XZ
.globl ??0Living@@QAE@XZ
.globl _IsClear__8BaseInfoCFv
.globl ?GetPlayer@Reaction@@UAEPAVGPlayer@@XZ
.globl ?SetPlayer@Reaction@@UAEXPAVGPlayer@@@Z
.globl ?GetRadius@Reaction@@UAEMXZ
.globl ?GetSaveType@Reaction@@UAEIXZ
.globl ?GetDebugText@Reaction@@UAEPADXZ
.globl ??_GReaction@@UAEPAXI@Z

_IsClear__8BaseInfoCFv:
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x0055c770    8b4104
                         test               eax, eax                                       // 0x0055c773    85c0
                         {disp8} jne        _jmp_addr_0x0055c784                           // 0x0055c775    750d
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                    // 0x0055c777    8b4108
                         test               eax, eax                                       // 0x0055c77a    85c0
                         {disp8} jne        _jmp_addr_0x0055c784                           // 0x0055c77c    7506
                         mov                eax, 0x00000001                                // 0x0055c77e    b801000000
                         ret                                                               // 0x0055c783    c3
_jmp_addr_0x0055c784:    xor.s              eax, eax                                       // 0x0055c784    33c0
                         ret                                                               // 0x0055c786    c3
                         nop                                                               // 0x0055c787    90
                         nop                                                               // 0x0055c788    90
                         nop                                                               // 0x0055c789    90
                         nop                                                               // 0x0055c78a    90
                         nop                                                               // 0x0055c78b    90
                         nop                                                               // 0x0055c78c    90
                         nop                                                               // 0x0055c78d    90
                         nop                                                               // 0x0055c78e    90
                         nop                                                               // 0x0055c78f    90
??0Mobile@@QAE@XZ:
                         push               esi                                            // 0x0055c790    56
                         mov.s              esi, ecx                                       // 0x0055c791    8bf1
                         call               ??0Object@@QAE@XZ                              // 0x0055c793    e8b89c0d00
                         mov                dword ptr [esi], 0x008ce750                    // 0x0055c798    c70650e78c00
                         mov.s              eax, esi                                       // 0x0055c79e    8bc6
                         pop                esi                                            // 0x0055c7a0    5e
                         ret                                                               // 0x0055c7a1    c3
                         nop                                                               // 0x0055c7a2    90
                         nop                                                               // 0x0055c7a3    90
                         nop                                                               // 0x0055c7a4    90
                         nop                                                               // 0x0055c7a5    90
                         nop                                                               // 0x0055c7a6    90
                         nop                                                               // 0x0055c7a7    90
                         nop                                                               // 0x0055c7a8    90
                         nop                                                               // 0x0055c7a9    90
                         nop                                                               // 0x0055c7aa    90
                         nop                                                               // 0x0055c7ab    90
                         nop                                                               // 0x0055c7ac    90
                         nop                                                               // 0x0055c7ad    90
                         nop                                                               // 0x0055c7ae    90
                         nop                                                               // 0x0055c7af    90
?GetPlayer@Reaction@@UAEPAVGPlayer@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                    // 0x0055c7b0    8b4138
                         ret                                                               // 0x0055c7b3    c3
                         nop                                                               // 0x0055c7b4    90
                         nop                                                               // 0x0055c7b5    90
                         nop                                                               // 0x0055c7b6    90
                         nop                                                               // 0x0055c7b7    90
                         nop                                                               // 0x0055c7b8    90
                         nop                                                               // 0x0055c7b9    90
                         nop                                                               // 0x0055c7ba    90
                         nop                                                               // 0x0055c7bb    90
                         nop                                                               // 0x0055c7bc    90
                         nop                                                               // 0x0055c7bd    90
                         nop                                                               // 0x0055c7be    90
                         nop                                                               // 0x0055c7bf    90
?SetPlayer@Reaction@@UAEXPAVGPlayer@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0055c7c0    8b442404
                         {disp8} mov        dword ptr [ecx + 0x38], eax                    // 0x0055c7c4    894138
                         ret                0x0004                                         // 0x0055c7c7    c20400
                         call               dword ptr [rdata_bytes + 0x6f4]                // 0x0055c7ca    ff15f4968a00
?GetRadius@Reaction@@UAEMXZ:
                         {disp8} fld        dword ptr [ecx + 0x3c]                         // 0x0055c7d0    d9413c
                         ret                                                               // 0x0055c7d3    c3
                         nop                                                               // 0x0055c7d4    90
                         nop                                                               // 0x0055c7d5    90
                         nop                                                               // 0x0055c7d6    90
                         nop                                                               // 0x0055c7d7    90
                         nop                                                               // 0x0055c7d8    90
                         nop                                                               // 0x0055c7d9    90
                         nop                                                               // 0x0055c7da    90
                         nop                                                               // 0x0055c7db    90
                         nop                                                               // 0x0055c7dc    90
                         nop                                                               // 0x0055c7dd    90
                         nop                                                               // 0x0055c7de    90
                         nop                                                               // 0x0055c7df    90
?GetSaveType@Reaction@@UAEIXZ:
                         mov                eax, 0x00000026                                // 0x0055c7e0    b826000000
                         ret                                                               // 0x0055c7e5    c3
                         nop                                                               // 0x0055c7e6    90
                         nop                                                               // 0x0055c7e7    90
                         nop                                                               // 0x0055c7e8    90
                         nop                                                               // 0x0055c7e9    90
                         nop                                                               // 0x0055c7ea    90
                         nop                                                               // 0x0055c7eb    90
                         nop                                                               // 0x0055c7ec    90
                         nop                                                               // 0x0055c7ed    90
                         nop                                                               // 0x0055c7ee    90
                         nop                                                               // 0x0055c7ef    90
?GetDebugText@Reaction@@UAEPADXZ:
                         mov                eax, 0x00bed188                                // 0x0055c7f0    b888d1be00
                         ret                                                               // 0x0055c7f5    c3
                         nop                                                               // 0x0055c7f6    90
                         nop                                                               // 0x0055c7f7    90
                         nop                                                               // 0x0055c7f8    90
                         nop                                                               // 0x0055c7f9    90
                         nop                                                               // 0x0055c7fa    90
                         nop                                                               // 0x0055c7fb    90
                         nop                                                               // 0x0055c7fc    90
                         nop                                                               // 0x0055c7fd    90
                         nop                                                               // 0x0055c7fe    90
                         nop                                                               // 0x0055c7ff    90
??_GReaction@@UAEPAXI@Z:
                         push               esi                                            // 0x0055c800    56
                         mov.s              esi, ecx                                       // 0x0055c801    8bf1
                         call               _jmp_addr_0x006e3a60                           // 0x0055c803    e858721800
                         test               byte ptr [esp + 0x08], 0x01                    // 0x0055c808    f644240801
                         {disp8} je         _jmp_addr_0x0055c81a                           // 0x0055c80d    740b
                         push               0x44                                           // 0x0055c80f    6a44
                         push               esi                                            // 0x0055c811    56
                         call               ??3Base@@SAXPAXK@Z                           // 0x0055c812    e859a1edff
                         add                esp, 0x08                                      // 0x0055c817    83c408
_jmp_addr_0x0055c81a:    mov.s              eax, esi                                       // 0x0055c81a    8bc6
                         pop                esi                                            // 0x0055c81c    5e
                         ret                0x0004                                         // 0x0055c81d    c20400
??0Living@@QAE@XZ:
                         push               esi                                            // 0x0055c820    56
                         push               edi                                            // 0x0055c821    57
                         mov.s              esi, ecx                                       // 0x0055c822    8bf1
                         call               ??0Object@@QAE@XZ                              // 0x0055c824    e8279c0d00
                         mov                dword ptr [esi], 0x008ce750                    // 0x0055c829    c70650e78c00
                         xor.s              edi, edi                                       // 0x0055c82f    33ff
                         {disp8} mov        dword ptr [esi + 0x60], edi                    // 0x0055c831    897e60
                         {disp8} lea        ecx, dword ptr [esi + 0x70]                    // 0x0055c834    8d4e70
                         {disp8} mov        dword ptr [esi + 0x64], edi                    // 0x0055c837    897e64
                         {disp8} mov        dword ptr [esi + 0x68], edi                    // 0x0055c83a    897e68
                         {disp8} mov        dword ptr [esi + 0x6c], edi                    // 0x0055c83d    897e6c
                         call               ??0CircleHugInfo@@QAE@XZ                       // 0x0055c840    e8fbdd0a00
                         {disp32} lea       ecx, dword ptr [esi + 0x00000080]              // 0x0055c845    8d8e80000000
                         call               ??0MapCoords@@QAE@XZ                           // 0x0055c84b    e81053eeff
                         {disp32} lea       ecx, dword ptr [esi + 0x0000008c]              // 0x0055c850    8d8e8c000000
                         mov                dword ptr [esi], 0x008cded8                    // 0x0055c856    c706d8de8c00
                         call               ??0LivingAction@@QAE@XZ                        // 0x0055c85c    e80f040900
                         {disp32} mov       dword ptr [esi + 0x00000094], edi              // 0x0055c861    89be94000000
                         {disp32} mov       dword ptr [esi + 0x00000098], edi              // 0x0055c867    89be98000000
                         {disp32} mov       dword ptr [esi + 0x000000a4], edi              // 0x0055c86d    89bea4000000
                         {disp32} mov       dword ptr [esi + 0x000000b8], edi              // 0x0055c873    89beb8000000
                         {disp32} mov       dword ptr [esi + 0x000000bc], edi              // 0x0055c879    89bebc000000
                         {disp32} mov       dword ptr [esi + 0x000000d8], edi              // 0x0055c87f    89bed8000000
                         mov.s              ecx, esi                                       // 0x0055c885    8bce
                         mov                dword ptr [esi], 0x008cd394                    // 0x0055c887    c70694d38c00
                         call               ?SetToZero@Living@@QAEXXZ                      // 0x0055c88d    e89ef70800
                         pop                edi                                            // 0x0055c892    5f
                         mov.s              eax, esi                                       // 0x0055c893    8bc6
                         pop                esi                                            // 0x0055c895    5e
                         ret                                                               // 0x0055c896    c3
                         nop                                                               // 0x0055c897    90
                         nop                                                               // 0x0055c898    90
                         nop                                                               // 0x0055c899    90
                         nop                                                               // 0x0055c89a    90
                         nop                                                               // 0x0055c89b    90
                         nop                                                               // 0x0055c89c    90
                         nop                                                               // 0x0055c89d    90
                         nop                                                               // 0x0055c89e    90
                         nop                                                               // 0x0055c89f    90
