.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @SetSpeedUpFactor__7LHTimerFf@12
.extern _jmp_addr_0x0046ee30
.extern _jmp_addr_0x0046ee50
.extern _jmp_addr_0x0046eed0
.extern _jmp_addr_0x0046efd0
.extern @GetDisplayText__10ControlKeyFPw@12
.extern _jmp_addr_0x0046f030
.extern _jmp_addr_0x0046f040
.extern _jmp_addr_0x0046f050
.extern _jmp_addr_0x0046f170
.extern @GetDisplayText__12ControlMouseFPw@12
.extern _jmp_addr_0x0046f200
.extern _jmp_addr_0x0046f220
.extern _jmp_addr_0x0046f240
.extern _jmp_addr_0x0046f260
.extern _jmp_addr_0x0046f2b0
.extern _jmp_addr_0x0046f2f0
.extern _jmp_addr_0x0046f330
.extern _jmp_addr_0x0046f440
.extern _jmp_addr_0x0046f460
.extern _jmp_addr_0x0046f480
.extern ?IsKeyBeingPressed@BindableAction@@QAE_NXZ
.extern _jmp_addr_0x0046f500
.extern _jmp_addr_0x0046f590
.extern _jmp_addr_0x0046f5f0
.extern _jmp_addr_0x0046f660
.extern _jmp_addr_0x0046f750
.extern _jmp_addr_0x00471760
.extern _jmp_addr_0x00471910
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern _sprintf
.extern _wcscat

.globl _jmp_addr_0x0046f890
.globl _jmp_addr_0x004707f0
.globl _jmp_addr_0x00470810
.globl _jmp_addr_0x004708a0
.globl @GetText__10ControlMapFUlPw@16
.globl _jmp_addr_0x00470a00
.globl _jmp_addr_0x00470a60
.globl ?ProcessActionsPerformed@ControlMap@@QAEXXZ
.globl _jmp_addr_0x00470af0
.globl _jmp_addr_0x00470b30
.globl _jmp_addr_0x00470de0
.globl _jmp_addr_0x00470e20
.globl _jmp_addr_0x00470e80
.globl _jmp_addr_0x00471130
.globl _jmp_addr_0x00471170
.globl _jmp_addr_0x004711d0
.globl _jmp_addr_0x004712d0
.globl _jmp_addr_0x004713d0
.globl _jmp_addr_0x004714f0
.globl _jmp_addr_0x00471620

start_0x0046f890_0x00471760:
// Snippet: asm, [0x0046f890, 0x0047173d)
_jmp_addr_0x0046f890:    sub                esp, 0x00000108                               // 0x0046f890    81ec08010000
                         push               ebx                                           // 0x0046f896    53
                         push               esi                                           // 0x0046f897    56
                         push               edi                                           // 0x0046f898    57
                         mov.s              ebx, ecx                                      // 0x0046f899    8bd9
                         push               0x00000a5d                                    // 0x0046f89b    685d0a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046f8a0    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046f8a5    e8460f0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046f8aa    8b4008
                         push               eax                                           // 0x0046f8ad    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000618]             // 0x0046f8ae    8d8b18060000
                         call               _jmp_addr_0x0046f200                          // 0x0046f8b4    e847f9ffff
                         push               0x0                                           // 0x0046f8b9    6a00
                         push               0x0                                           // 0x0046f8bb    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046f8bd    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046f8c1    e80af6ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000718]             // 0x0046f8c6    8dbb18070000
                         mov                ecx, 0x00000042                               // 0x0046f8cc    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f8d1    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f8d5    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f8d7    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046f8db    e870f5ffff
                         push               0x5                                           // 0x0046f8e0    6a05
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046f8e2    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046f8e6    e865f7ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000820]             // 0x0046f8eb    8dbb20080000
                         mov                ecx, 0x00000041                               // 0x0046f8f1    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f8f6    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f8fa    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f8fc    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046f900    e83bf7ffff
                         push               0x00000a5c                                    // 0x0046f905    685c0a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046f90a    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046f90f    e8dc0e0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046f914    8b4008
                         push               eax                                           // 0x0046f917    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x0000030c]             // 0x0046f918    8d8b0c030000
                         call               _jmp_addr_0x0046f200                          // 0x0046f91e    e8ddf8ffff
                         push               0x0                                           // 0x0046f923    6a00
                         push               0x0                                           // 0x0046f925    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046f927    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046f92b    e8a0f5ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000040c]             // 0x0046f930    8dbb0c040000
                         mov                ecx, 0x00000042                               // 0x0046f936    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f93b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f93f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f941    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046f945    e806f5ffff
                         push               0x1                                           // 0x0046f94a    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046f94c    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046f950    e8fbf6ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000514]             // 0x0046f955    8dbb14050000
                         mov                ecx, 0x00000041                               // 0x0046f95b    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f960    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f964    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f966    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046f96a    e8d1f6ffff
                         push               0x00000a5e                                    // 0x0046f96f    685e0a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046f974    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046f979    e8720e0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046f97e    8b4008
                         push               eax                                           // 0x0046f981    50
                         mov.s              ecx, ebx                                      // 0x0046f982    8bcb
                         call               _jmp_addr_0x0046f200                          // 0x0046f984    e877f8ffff
                         push               0x0                                           // 0x0046f989    6a00
                         push               0x3b                                          // 0x0046f98b    6a3b
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046f98d    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046f991    e83af5ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000100]             // 0x0046f996    8dbb00010000
                         mov                ecx, 0x00000042                               // 0x0046f99c    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f9a1    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f9a5    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f9a7    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046f9ab    e8a0f4ffff
                         push               0x0                                           // 0x0046f9b0    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046f9b2    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046f9b6    e895f6ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000208]             // 0x0046f9bb    8dbb08020000
                         mov                ecx, 0x00000041                               // 0x0046f9c1    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046f9c6    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046f9ca    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046f9cc    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046f9d0    e86bf6ffff
                         push               0x00000a5f                                    // 0x0046f9d5    685f0a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046f9da    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046f9df    e80c0e0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046f9e4    8b4008
                         push               eax                                           // 0x0046f9e7    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00001554]             // 0x0046f9e8    8d8b54150000
                         call               _jmp_addr_0x0046f200                          // 0x0046f9ee    e80df8ffff
                         push               0x0                                           // 0x0046f9f3    6a00
                         push               0x000000cb                                    // 0x0046f9f5    68cb000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046f9fa    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046f9fe    e8cdf4ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001654]             // 0x0046fa03    8dbb54160000
                         mov                ecx, 0x00000042                               // 0x0046fa09    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fa0e    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fa12    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fa14    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fa18    e833f4ffff
                         push               0x0                                           // 0x0046fa1d    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fa1f    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fa23    e828f6ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000175c]             // 0x0046fa28    8dbb5c170000
                         mov                ecx, 0x00000041                               // 0x0046fa2e    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fa33    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fa37    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fa39    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fa3d    e8fef5ffff
                         push               0x00000a60                                    // 0x0046fa42    68600a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fa47    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fa4c    e89f0d0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fa51    8b4008
                         push               eax                                           // 0x0046fa54    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00001860]             // 0x0046fa55    8d8b60180000
                         call               _jmp_addr_0x0046f200                          // 0x0046fa5b    e8a0f7ffff
                         push               0x0                                           // 0x0046fa60    6a00
                         push               0x000000cd                                    // 0x0046fa62    68cd000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fa67    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fa6b    e860f4ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001960]             // 0x0046fa70    8dbb60190000
                         mov                ecx, 0x00000042                               // 0x0046fa76    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fa7b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fa7f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fa81    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fa85    e8c6f3ffff
                         push               0x0                                           // 0x0046fa8a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fa8c    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fa90    e8bbf5ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001a68]             // 0x0046fa95    8dbb681a0000
                         mov                ecx, 0x00000041                               // 0x0046fa9b    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046faa0    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046faa4    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046faa6    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046faaa    e891f5ffff
                         push               0x00000a61                                    // 0x0046faaf    68610a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fab4    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fab9    e8320d0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fabe    8b4008
                         push               eax                                           // 0x0046fac1    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00001b6c]             // 0x0046fac2    8d8b6c1b0000
                         call               _jmp_addr_0x0046f200                          // 0x0046fac8    e833f7ffff
                         push               0x0                                           // 0x0046facd    6a00
                         push               0x000000c8                                    // 0x0046facf    68c8000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fad4    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fad8    e8f3f3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001c6c]             // 0x0046fadd    8dbb6c1c0000
                         mov                ecx, 0x00000042                               // 0x0046fae3    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fae8    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046faec    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046faee    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046faf2    e859f3ffff
                         push               0x0                                           // 0x0046faf7    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046faf9    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fafd    e84ef5ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001d74]             // 0x0046fb02    8dbb741d0000
                         mov                ecx, 0x00000041                               // 0x0046fb08    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fb0d    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fb11    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fb13    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fb17    e824f5ffff
                         push               0x00000a62                                    // 0x0046fb1c    68620a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fb21    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fb26    e8c50c0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fb2b    8b4008
                         push               eax                                           // 0x0046fb2e    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00001e78]             // 0x0046fb2f    8d8b781e0000
                         call               _jmp_addr_0x0046f200                          // 0x0046fb35    e8c6f6ffff
                         push               0x0                                           // 0x0046fb3a    6a00
                         push               0x000000d0                                    // 0x0046fb3c    68d0000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fb41    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fb45    e886f3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001f78]             // 0x0046fb4a    8dbb781f0000
                         mov                ecx, 0x00000042                               // 0x0046fb50    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fb55    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fb59    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fb5b    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fb5f    e8ecf2ffff
                         push               0x0                                           // 0x0046fb64    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fb66    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fb6a    e8e1f4ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002080]             // 0x0046fb6f    8dbb80200000
                         mov                ecx, 0x00000041                               // 0x0046fb75    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fb7a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fb7e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fb80    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fb84    e8b7f4ffff
                         push               0x00000a64                                    // 0x0046fb89    68640a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fb8e    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fb93    e8580c0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fb98    8b4008
                         push               eax                                           // 0x0046fb9b    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000924]             // 0x0046fb9c    8d8b24090000
                         call               _jmp_addr_0x0046f200                          // 0x0046fba2    e859f6ffff
                         push               0x0                                           // 0x0046fba7    6a00
                         push               0x0                                           // 0x0046fba9    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fbab    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fbaf    e81cf3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000a24]             // 0x0046fbb4    8dbb240a0000
                         mov                ecx, 0x00000042                               // 0x0046fbba    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fbbf    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fbc3    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fbc5    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fbc9    e882f2ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf248]        // 0x0046fbce    a14852e800
                         test               eax, eax                                      // 0x0046fbd3    85c0
                         {disp8} je         _jmp_addr_0x0046fbf9                          // 0x0046fbd5    7422
                         push               0x4                                           // 0x0046fbd7    6a04
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fbd9    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fbdd    e86ef4ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000b2c]             // 0x0046fbe2    8dbb2c0b0000
                         mov                ecx, 0x00000041                               // 0x0046fbe8    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fbed    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fbf1    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fbf3    8d4c240c
                         {disp8} jmp        _jmp_addr_0x0046fc19                          // 0x0046fbf7    eb20
_jmp_addr_0x0046fbf9:    push               0x0                                           // 0x0046fbf9    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fbfb    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fbff    e84cf4ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000b2c]             // 0x0046fc04    8dbb2c0b0000
                         mov                ecx, 0x00000041                               // 0x0046fc0a    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fc0f    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fc13    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fc15    8d4c240c
_jmp_addr_0x0046fc19:    call               _jmp_addr_0x0046f040                          // 0x0046fc19    e822f4ffff
                         push               0x00000a63                                    // 0x0046fc1e    68630a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fc23    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fc28    e8c30b0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fc2d    8b4008
                         push               eax                                           // 0x0046fc30    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000c30]             // 0x0046fc31    8d8b300c0000
                         call               _jmp_addr_0x0046f200                          // 0x0046fc37    e8c4f5ffff
                         push               0x0                                           // 0x0046fc3c    6a00
                         push               0x0                                           // 0x0046fc3e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fc40    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fc44    e887f2ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000d30]             // 0x0046fc49    8dbb300d0000
                         mov                ecx, 0x00000042                               // 0x0046fc4f    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fc54    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fc58    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fc5a    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fc5e    e8edf1ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf248]        // 0x0046fc63    a14852e800
                         test               eax, eax                                      // 0x0046fc68    85c0
                         {disp8} je         _jmp_addr_0x0046fc8e                          // 0x0046fc6a    7422
                         push               0x3                                           // 0x0046fc6c    6a03
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fc6e    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fc72    e8d9f3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000e38]             // 0x0046fc77    8dbb380e0000
                         mov                ecx, 0x00000041                               // 0x0046fc7d    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fc82    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fc86    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fc88    8d4c240c
                         {disp8} jmp        _jmp_addr_0x0046fcae                          // 0x0046fc8c    eb20
_jmp_addr_0x0046fc8e:    push               0x0                                           // 0x0046fc8e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fc90    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fc94    e8b7f3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00000e38]             // 0x0046fc99    8dbb380e0000
                         mov                ecx, 0x00000041                               // 0x0046fc9f    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fca4    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fca8    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fcaa    8d4c240c
_jmp_addr_0x0046fcae:    call               _jmp_addr_0x0046f040                          // 0x0046fcae    e88df3ffff
                         push               0x00000a65                                    // 0x0046fcb3    68650a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fcb8    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fcbd    e82e0b0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fcc2    8b4008
                         push               eax                                           // 0x0046fcc5    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00001248]             // 0x0046fcc6    8d8b48120000
                         call               _jmp_addr_0x0046f200                          // 0x0046fccc    e82ff5ffff
                         push               0x0                                           // 0x0046fcd1    6a00
                         push               0x0000009d                                    // 0x0046fcd3    689d000000
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fcd8    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fcdc    e8eff1ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001348]             // 0x0046fce1    8dbb48130000
                         mov                ecx, 0x00000042                               // 0x0046fce7    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fcec    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fcf0    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fcf2    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fcf6    e855f1ffff
                         push               0x0                                           // 0x0046fcfb    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fcfd    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fd01    e84af3ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001450]             // 0x0046fd06    8dbb50140000
                         mov                ecx, 0x00000041                               // 0x0046fd0c    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fd11    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fd15    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fd17    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fd1b    e820f3ffff
                         push               0x00000a66                                    // 0x0046fd20    68660a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fd25    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fd2a    e8c10a0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fd2f    8b4008
                         push               eax                                           // 0x0046fd32    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00002184]             // 0x0046fd33    8d8b84210000
                         call               _jmp_addr_0x0046f200                          // 0x0046fd39    e8c2f4ffff
                         push               0x0                                           // 0x0046fd3e    6a00
                         push               0x1e                                          // 0x0046fd40    6a1e
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fd42    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fd46    e885f1ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002284]             // 0x0046fd4b    8dbb84220000
                         mov                ecx, 0x00000042                               // 0x0046fd51    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fd56    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fd5a    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fd5c    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fd60    e8ebf0ffff
                         push               0x0                                           // 0x0046fd65    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fd67    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fd6b    e8e0f2ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000238c]             // 0x0046fd70    8dbb8c230000
                         mov                ecx, 0x00000041                               // 0x0046fd76    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fd7b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fd7f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fd81    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fd85    e8b6f2ffff
                         push               0x00000a67                                    // 0x0046fd8a    68670a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fd8f    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fd94    e8570a0000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fd99    8b4008
                         push               eax                                           // 0x0046fd9c    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00002490]             // 0x0046fd9d    8d8b90240000
                         call               _jmp_addr_0x0046f200                          // 0x0046fda3    e858f4ffff
                         push               0x0                                           // 0x0046fda8    6a00
                         push               0x10                                          // 0x0046fdaa    6a10
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fdac    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fdb0    e81bf1ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002590]             // 0x0046fdb5    8dbb90250000
                         mov                ecx, 0x00000042                               // 0x0046fdbb    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fdc0    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fdc4    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fdc6    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fdca    e881f0ffff
                         push               0x0                                           // 0x0046fdcf    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fdd1    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fdd5    e876f2ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002698]             // 0x0046fdda    8dbb98260000
                         mov                ecx, 0x00000041                               // 0x0046fde0    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fde5    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fde9    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fdeb    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fdef    e84cf2ffff
                         push               0x00000a68                                    // 0x0046fdf4    68680a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fdf9    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fdfe    e8ed090000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fe03    8b4008
                         push               eax                                           // 0x0046fe06    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x0000279c]             // 0x0046fe07    8d8b9c270000
                         call               _jmp_addr_0x0046f200                          // 0x0046fe0d    e8eef3ffff
                         push               0x0                                           // 0x0046fe12    6a00
                         push               0x2c                                          // 0x0046fe14    6a2c
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fe16    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fe1a    e8b1f0ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000289c]             // 0x0046fe1f    8dbb9c280000
                         mov                ecx, 0x00000042                               // 0x0046fe25    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fe2a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fe2e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fe30    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fe34    e817f0ffff
                         push               0x0                                           // 0x0046fe39    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fe3b    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fe3f    e80cf2ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000029a4]             // 0x0046fe44    8dbba4290000
                         mov                ecx, 0x00000041                               // 0x0046fe4a    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fe4f    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fe53    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fe55    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fe59    e8e2f1ffff
                         push               0x00000a69                                    // 0x0046fe5e    68690a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fe63    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fe68    e883090000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fe6d    8b4008
                         push               eax                                           // 0x0046fe70    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00002aa8]             // 0x0046fe71    8d8ba82a0000
                         call               _jmp_addr_0x0046f200                          // 0x0046fe77    e884f3ffff
                         push               0x0                                           // 0x0046fe7c    6a00
                         push               0x16                                          // 0x0046fe7e    6a16
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046fe80    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046fe84    e847f0ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002ba8]             // 0x0046fe89    8dbba82b0000
                         mov                ecx, 0x00000042                               // 0x0046fe8f    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fe94    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046fe98    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046fe9a    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046fe9e    e8adefffff
                         push               0x0                                           // 0x0046fea3    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046fea5    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046fea9    e8a2f1ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002cb0]             // 0x0046feae    8dbbb02c0000
                         mov                ecx, 0x00000041                               // 0x0046feb4    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046feb9    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046febd    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046febf    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046fec3    e878f1ffff
                         push               0x00000a6a                                    // 0x0046fec8    686a0a0000
                         mov                ecx, 0x00d17ca8                               // 0x0046fecd    b9a87cd100
                         call               _jmp_addr_0x004707f0                          // 0x0046fed2    e819090000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0046fed7    8b4008
                         push               eax                                           // 0x0046feda    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00002db4]             // 0x0046fedb    8d8bb42d0000
                         call               _jmp_addr_0x0046f200                          // 0x0046fee1    e81af3ffff
                         push               0x0                                           // 0x0046fee6    6a00
                         push               0x36                                          // 0x0046fee8    6a36
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046feea    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046feee    e8ddefffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002eb4]             // 0x0046fef3    8dbbb42e0000
                         mov                ecx, 0x00000042                               // 0x0046fef9    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046fefe    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ff02    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ff04    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0046ff08    e843efffff
                         push               0x0                                           // 0x0046ff0d    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046ff0f    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046ff13    e838f1ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00002fbc]             // 0x0046ff18    8dbbbc2f0000
                         mov                ecx, 0x00000041                               // 0x0046ff1e    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046ff23    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ff27    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ff29    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046ff2d    e80ef1ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a6b // 0x0046ff32    813dac7cd1006b0a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0046ff3c    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0046ff48                          // 0x0046ff41    7605
                         add                eax, 0x00007d04                               // 0x0046ff43    05047d0000
_jmp_addr_0x0046ff48:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0046ff48    8b4808
                         push               ecx                                           // 0x0046ff4b    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x000030c0]             // 0x0046ff4c    8d8bc0300000
                         call               _jmp_addr_0x0046f200                          // 0x0046ff52    e8a9f2ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf248]        // 0x0046ff57    a14852e800
                         test               eax, eax                                      // 0x0046ff5c    85c0
                         {disp8} je         _jmp_addr_0x0046ffa9                          // 0x0046ff5e    7449
                         push               0x2                                           // 0x0046ff60    6a02
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046ff62    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046ff66    e8e5f0ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000032c8]             // 0x0046ff6b    8dbbc8320000
                         mov                ecx, 0x00000041                               // 0x0046ff71    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046ff76    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ff7a    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ff7c    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046ff80    e8bbf0ffff
                         push               0x0                                           // 0x0046ff85    6a00
                         push               0x0                                           // 0x0046ff87    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046ff89    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046ff8d    e83eefffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000031c0]             // 0x0046ff92    8dbbc0310000
                         mov                ecx, 0x00000042                               // 0x0046ff98    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046ff9d    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ffa1    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ffa3    8d4c240c
                         {disp8} jmp        _jmp_addr_0x0046fff0                          // 0x0046ffa7    eb47
_jmp_addr_0x0046ffa9:    push               0x0                                           // 0x0046ffa9    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0046ffab    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0046ffaf    e89cf0ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000032c8]             // 0x0046ffb4    8dbbc8320000
                         mov                ecx, 0x00000041                               // 0x0046ffba    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046ffbf    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ffc3    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ffc5    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0046ffc9    e872f0ffff
                         push               0x0                                           // 0x0046ffce    6a00
                         push               0xb                                           // 0x0046ffd0    6a0b
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0046ffd2    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0046ffd6    e8f5eeffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000031c0]             // 0x0046ffdb    8dbbc0310000
                         mov                ecx, 0x00000042                               // 0x0046ffe1    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0046ffe6    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0046ffea    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0046ffec    8d4c240c
_jmp_addr_0x0046fff0:    call               _jmp_addr_0x0046ee50                          // 0x0046fff0    e85beeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a6c // 0x0046fff5    813dac7cd1006c0a0000
                         {disp8} ja         _jmp_addr_0x00470008                          // 0x0046ffff    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470001    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470014                          // 0x00470006    eb0c
_jmp_addr_0x00470008:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00470008    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00007d10]             // 0x0047000e    8d82107d0000
_jmp_addr_0x00470014:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00470014    8b4008
                         push               eax                                           // 0x00470017    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x000033cc]             // 0x00470018    8d8bcc330000
                         call               _jmp_addr_0x0046f200                          // 0x0047001e    e8ddf1ffff
                         push               0x0                                           // 0x00470023    6a00
                         push               0x39                                          // 0x00470025    6a39
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470027    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047002b    e8a0eeffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000034cc]             // 0x00470030    8dbbcc340000
                         mov                ecx, 0x00000042                               // 0x00470036    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047003b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047003f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470041    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470045    e806eeffff
                         push               0x0                                           // 0x0047004a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047004c    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x00470050    e8fbefffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000035d4]             // 0x00470055    8dbbd4350000
                         mov                ecx, 0x00000041                               // 0x0047005b    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470060    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470064    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470066    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0047006a    e8d1efffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a6d // 0x0047006f    813dac7cd1006d0a0000
                         {disp8} ja         _jmp_addr_0x00470082                          // 0x00470079    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0047007b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0047008e                          // 0x00470080    eb0c
_jmp_addr_0x00470082:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00470082    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00007d1c]             // 0x00470088    8d811c7d0000
_jmp_addr_0x0047008e:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0047008e    8b5008
                         push               edx                                           // 0x00470091    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x000036d8]             // 0x00470092    8d8bd8360000
                         call               _jmp_addr_0x0046f200                          // 0x00470098    e863f1ffff
                         push               0x0                                           // 0x0047009d    6a00
                         push               0x2e                                          // 0x0047009f    6a2e
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004700a1    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004700a5    e826eeffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000037d8]             // 0x004700aa    8dbbd8370000
                         mov                ecx, 0x00000042                               // 0x004700b0    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004700b5    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004700b9    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004700bb    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004700bf    e88cedffff
                         push               0x0                                           // 0x004700c4    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004700c6    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004700ca    e881efffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000038e0]             // 0x004700cf    8dbbe0380000
                         mov                ecx, 0x00000041                               // 0x004700d5    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004700da    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004700de    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004700e0    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004700e4    e857efffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a6e // 0x004700e9    813dac7cd1006e0a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004700f3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x004700ff                          // 0x004700f8    7605
                         add                eax, 0x00007d28                               // 0x004700fa    05287d0000
_jmp_addr_0x004700ff:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x004700ff    8b4808
                         push               ecx                                           // 0x00470102    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x000039e4]             // 0x00470103    8d8be4390000
                         call               _jmp_addr_0x0046f200                          // 0x00470109    e8f2f0ffff
                         push               0x0                                           // 0x0047010e    6a00
                         push               0x3d                                          // 0x00470110    6a3d
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470112    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x00470116    e8b5edffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00003ae4]             // 0x0047011b    8dbbe43a0000
                         mov                ecx, 0x00000042                               // 0x00470121    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470126    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047012a    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047012c    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470130    e81bedffff
                         push               0x0                                           // 0x00470135    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470137    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047013b    e810efffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00003bec]             // 0x00470140    8dbbec3b0000
                         mov                ecx, 0x00000041                               // 0x00470146    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047014b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047014f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470151    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470155    e8e6eeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a6f // 0x0047015a    813dac7cd1006f0a0000
                         {disp8} ja         _jmp_addr_0x0047016d                          // 0x00470164    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470166    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470179                          // 0x0047016b    eb0c
_jmp_addr_0x0047016d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0047016d    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00007d34]             // 0x00470173    8d82347d0000
_jmp_addr_0x00470179:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00470179    8b4008
                         push               eax                                           // 0x0047017c    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00003cf0]             // 0x0047017d    8d8bf03c0000
                         call               _jmp_addr_0x0046f200                          // 0x00470183    e878f0ffff
                         push               0x0                                           // 0x00470188    6a00
                         push               0x3e                                          // 0x0047018a    6a3e
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0047018c    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x00470190    e83bedffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00003df0]             // 0x00470195    8dbbf03d0000
                         mov                ecx, 0x00000042                               // 0x0047019b    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004701a0    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004701a4    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004701a6    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004701aa    e8a1ecffff
                         push               0x0                                           // 0x004701af    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004701b1    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004701b5    e896eeffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00003ef8]             // 0x004701ba    8dbbf83e0000
                         mov                ecx, 0x00000041                               // 0x004701c0    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004701c5    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004701c9    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004701cb    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004701cf    e86ceeffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a70 // 0x004701d4    813dac7cd100700a0000
                         {disp8} ja         _jmp_addr_0x004701e7                          // 0x004701de    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004701e0    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x004701f3                          // 0x004701e5    eb0c
_jmp_addr_0x004701e7:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x004701e7    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00007d40]             // 0x004701ed    8d81407d0000
_jmp_addr_0x004701f3:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x004701f3    8b5008
                         push               edx                                           // 0x004701f6    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x00003ffc]             // 0x004701f7    8d8bfc3f0000
                         call               _jmp_addr_0x0046f200                          // 0x004701fd    e8feefffff
                         push               0x0                                           // 0x00470202    6a00
                         push               0x3f                                          // 0x00470204    6a3f
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470206    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047020a    e8c1ecffff
                         {disp32} lea       edi, dword ptr [ebx + 0x000040fc]             // 0x0047020f    8dbbfc400000
                         mov                ecx, 0x00000042                               // 0x00470215    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047021a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047021e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470220    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470224    e827ecffff
                         push               0x0                                           // 0x00470229    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047022b    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047022f    e81ceeffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004204]             // 0x00470234    8dbb04420000
                         mov                ecx, 0x00000041                               // 0x0047023a    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047023f    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470243    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470245    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470249    e8f2edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a71 // 0x0047024e    813dac7cd100710a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470258    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00470264                          // 0x0047025d    7605
                         add                eax, 0x00007d4c                               // 0x0047025f    054c7d0000
_jmp_addr_0x00470264:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00470264    8b4808
                         push               ecx                                           // 0x00470267    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00004308]             // 0x00470268    8d8b08430000
                         call               _jmp_addr_0x0046f200                          // 0x0047026e    e88defffff
                         push               0x0                                           // 0x00470273    6a00
                         push               0x40                                          // 0x00470275    6a40
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470277    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047027b    e850ecffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004408]             // 0x00470280    8dbb08440000
                         mov                ecx, 0x00000042                               // 0x00470286    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047028b    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047028f    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470291    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470295    e8b6ebffff
                         push               0x0                                           // 0x0047029a    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047029c    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004702a0    e8abedffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004510]             // 0x004702a5    8dbb10450000
                         mov                ecx, 0x00000041                               // 0x004702ab    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004702b0    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004702b4    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004702b6    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004702ba    e881edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a72 // 0x004702bf    813dac7cd100720a0000
                         {disp8} ja         _jmp_addr_0x004702d2                          // 0x004702c9    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004702cb    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x004702de                          // 0x004702d0    eb0c
_jmp_addr_0x004702d2:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x004702d2    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00007d58]             // 0x004702d8    8d82587d0000
_jmp_addr_0x004702de:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004702de    8b4008
                         push               eax                                           // 0x004702e1    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00004614]             // 0x004702e2    8d8b14460000
                         call               _jmp_addr_0x0046f200                          // 0x004702e8    e813efffff
                         push               0x0                                           // 0x004702ed    6a00
                         push               0x41                                          // 0x004702ef    6a41
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004702f1    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004702f5    e8d6ebffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004714]             // 0x004702fa    8dbb14470000
                         mov                ecx, 0x00000042                               // 0x00470300    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470305    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470309    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047030b    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0047030f    e83cebffff
                         push               0x0                                           // 0x00470314    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470316    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047031a    e831edffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000481c]             // 0x0047031f    8dbb1c480000
                         mov                ecx, 0x00000041                               // 0x00470325    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047032a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047032e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470330    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470334    e807edffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a73 // 0x00470339    813dac7cd100730a0000
                         {disp8} ja         _jmp_addr_0x0047034c                          // 0x00470343    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470345    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470358                          // 0x0047034a    eb0c
_jmp_addr_0x0047034c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0047034c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00007d64]             // 0x00470352    8d81647d0000
_jmp_addr_0x00470358:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00470358    8b5008
                         push               edx                                           // 0x0047035b    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x00004920]             // 0x0047035c    8d8b20490000
                         call               _jmp_addr_0x0046f200                          // 0x00470362    e899eeffff
                         push               0x0                                           // 0x00470367    6a00
                         push               0x42                                          // 0x00470369    6a42
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0047036b    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047036f    e85cebffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004a20]             // 0x00470374    8dbb204a0000
                         mov                ecx, 0x00000042                               // 0x0047037a    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047037f    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470383    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470385    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470389    e8c2eaffff
                         push               0x0                                           // 0x0047038e    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470390    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x00470394    e8b7ecffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004b28]             // 0x00470399    8dbb284b0000
                         mov                ecx, 0x00000041                               // 0x0047039f    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004703a4    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004703a8    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004703aa    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004703ae    e88decffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a74 // 0x004703b3    813dac7cd100740a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004703bd    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x004703c9                          // 0x004703c2    7605
                         add                eax, 0x00007d70                               // 0x004703c4    05707d0000
_jmp_addr_0x004703c9:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x004703c9    8b4808
                         push               ecx                                           // 0x004703cc    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00004c2c]             // 0x004703cd    8d8b2c4c0000
                         call               _jmp_addr_0x0046f200                          // 0x004703d3    e828eeffff
                         push               0x0                                           // 0x004703d8    6a00
                         push               0x43                                          // 0x004703da    6a43
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004703dc    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004703e0    e8ebeaffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004d2c]             // 0x004703e5    8dbb2c4d0000
                         mov                ecx, 0x00000042                               // 0x004703eb    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004703f0    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004703f4    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004703f6    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004703fa    e851eaffff
                         push               0x0                                           // 0x004703ff    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470401    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x00470405    e846ecffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00004e34]             // 0x0047040a    8dbb344e0000
                         mov                ecx, 0x00000041                               // 0x00470410    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470415    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470419    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047041b    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0047041f    e81cecffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a75 // 0x00470424    813dac7cd100750a0000
                         {disp8} ja         _jmp_addr_0x00470437                          // 0x0047042e    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470430    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470443                          // 0x00470435    eb0c
_jmp_addr_0x00470437:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00470437    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00007d7c]             // 0x0047043d    8d827c7d0000
_jmp_addr_0x00470443:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00470443    8b4008
                         push               eax                                           // 0x00470446    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00004f38]             // 0x00470447    8d8b384f0000
                         call               _jmp_addr_0x0046f200                          // 0x0047044d    e8aeedffff
                         push               0x0                                           // 0x00470452    6a00
                         push               0x26                                          // 0x00470454    6a26
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470456    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047045a    e871eaffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005038]             // 0x0047045f    8dbb38500000
                         mov                ecx, 0x00000042                               // 0x00470465    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047046a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047046e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470470    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470474    e8d7e9ffff
                         push               0x0                                           // 0x00470479    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047047b    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047047f    e8ccebffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005140]             // 0x00470484    8dbb40510000
                         mov                ecx, 0x00000041                               // 0x0047048a    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047048f    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470493    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470495    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470499    e8a2ebffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a76 // 0x0047049e    813dac7cd100760a0000
                         {disp8} ja         _jmp_addr_0x004704b1                          // 0x004704a8    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004704aa    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x004704bd                          // 0x004704af    eb0c
_jmp_addr_0x004704b1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x004704b1    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00007d88]             // 0x004704b7    8d81887d0000
_jmp_addr_0x004704bd:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x004704bd    8b5008
                         push               edx                                           // 0x004704c0    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000f3c]             // 0x004704c1    8d8b3c0f0000
                         call               _jmp_addr_0x0046f200                          // 0x004704c7    e834edffff
                         push               0x0                                           // 0x004704cc    6a00
                         push               0x14                                          // 0x004704ce    6a14
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004704d0    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004704d4    e8f7e9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000103c]             // 0x004704d9    8dbb3c100000
                         mov                ecx, 0x00000042                               // 0x004704df    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004704e4    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004704e8    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004704ea    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004704ee    e85de9ffff
                         push               0x0                                           // 0x004704f3    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004704f5    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004704f9    e852ebffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00001144]             // 0x004704fe    8dbb44110000
                         mov                ecx, 0x00000041                               // 0x00470504    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470509    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047050d    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047050f    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470513    e828ebffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a77 // 0x00470518    813dac7cd100770a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470522    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0047052e                          // 0x00470527    7605
                         add                eax, 0x00007d94                               // 0x00470529    05947d0000
_jmp_addr_0x0047052e:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0047052e    8b4808
                         push               ecx                                           // 0x00470531    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005244]             // 0x00470532    8d8b44520000
                         call               _jmp_addr_0x0046f200                          // 0x00470538    e8c3ecffff
                         push               0x0                                           // 0x0047053d    6a00
                         push               0x31                                          // 0x0047053f    6a31
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470541    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x00470545    e886e9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005344]             // 0x0047054a    8dbb44530000
                         mov                ecx, 0x00000042                               // 0x00470550    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470555    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470559    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047055b    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0047055f    e8ece8ffff
                         push               0x0                                           // 0x00470564    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470566    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047056a    e8e1eaffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000544c]             // 0x0047056f    8dbb4c540000
                         mov                ecx, 0x00000041                               // 0x00470575    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047057a    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047057e    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470580    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470584    e8b7eaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a7e // 0x00470589    813dac7cd1007e0a0000
                         {disp8} ja         _jmp_addr_0x0047059c                          // 0x00470593    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470595    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x004705a8                          // 0x0047059a    eb0c
_jmp_addr_0x0047059c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0047059c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00007de8]             // 0x004705a2    8d82e87d0000
_jmp_addr_0x004705a8:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x004705a8    8b4008
                         push               eax                                           // 0x004705ab    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005550]             // 0x004705ac    8d8b50550000
                         call               _jmp_addr_0x0046f200                          // 0x004705b2    e849ecffff
                         push               0x0                                           // 0x004705b7    6a00
                         push               0x1f                                          // 0x004705b9    6a1f
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004705bb    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004705bf    e80ce9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005650]             // 0x004705c4    8dbb50560000
                         mov                ecx, 0x00000042                               // 0x004705ca    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004705cf    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004705d3    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004705d5    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004705d9    e872e8ffff
                         push               0x0                                           // 0x004705de    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004705e0    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004705e4    e867eaffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005758]             // 0x004705e9    8dbb58570000
                         mov                ecx, 0x00000041                               // 0x004705ef    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004705f4    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004705f8    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004705fa    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004705fe    e83deaffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a05 // 0x00470603    813dac7cd100051a0000
                         {disp8} ja         _jmp_addr_0x00470616                          // 0x0047060d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0047060f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470622                          // 0x00470614    eb0c
_jmp_addr_0x00470616:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00470616    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0001383c]             // 0x0047061c    8d813c380100
_jmp_addr_0x00470622:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00470622    8b5008
                         push               edx                                           // 0x00470625    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x0000585c]             // 0x00470626    8d8b5c580000
                         call               _jmp_addr_0x0046f200                          // 0x0047062c    e8cfebffff
                         push               0x1d                                          // 0x00470631    6a1d
                         push               0x1f                                          // 0x00470633    6a1f
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470635    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x00470639    e892e8ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000595c]             // 0x0047063e    8dbb5c590000
                         mov                ecx, 0x00000042                               // 0x00470644    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470649    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047064d    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047064f    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x00470653    e8f8e7ffff
                         push               0x0                                           // 0x00470658    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0047065a    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x0047065e    e8ede9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005a64]             // 0x00470663    8dbb645a0000
                         mov                ecx, 0x00000041                               // 0x00470669    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x0047066e    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470672    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00470674    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470678    e8c3e9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a04 // 0x0047067d    813dac7cd100041a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470687    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00470693                          // 0x0047068c    7605
                         add                eax, 0x00013830                               // 0x0047068e    0530380100
_jmp_addr_0x00470693:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00470693    8b4808
                         push               ecx                                           // 0x00470696    51
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005b68]             // 0x00470697    8d8b685b0000
                         call               _jmp_addr_0x0046f200                          // 0x0047069d    e85eebffff
                         push               0x1d                                          // 0x004706a2    6a1d
                         push               0x26                                          // 0x004706a4    6a26
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004706a6    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x004706aa    e821e8ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005c68]             // 0x004706af    8dbb685c0000
                         mov                ecx, 0x00000042                               // 0x004706b5    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004706ba    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004706be    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004706c0    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004706c4    e887e7ffff
                         push               0x0                                           // 0x004706c9    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004706cb    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004706cf    e87ce9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005d70]             // 0x004706d4    8dbb705d0000
                         mov                ecx, 0x00000041                               // 0x004706da    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004706df    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004706e3    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004706e5    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004706e9    e852e9ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a0b // 0x004706ee    813dac7cd1000b1a0000
                         {disp8} ja         _jmp_addr_0x00470701                          // 0x004706f8    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x004706fa    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0047070d                          // 0x004706ff    eb0c
_jmp_addr_0x00470701:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00470701    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013884]             // 0x00470707    8d8284380100
_jmp_addr_0x0047070d:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0047070d    8b4008
                         push               eax                                           // 0x00470710    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00005e74]             // 0x00470711    8d8b745e0000
                         call               _jmp_addr_0x0046f200                          // 0x00470717    e8e4eaffff
                         push               0x0                                           // 0x0047071c    6a00
                         push               0x2f                                          // 0x0047071e    6a2f
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00470720    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x00470724    e8a7e7ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00005f74]             // 0x00470729    8dbb745f0000
                         mov                ecx, 0x00000042                               // 0x0047072f    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470734    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00470738    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047073a    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x0047073e    e80de7ffff
                         push               0x0                                           // 0x00470743    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00470745    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x00470749    e802e9ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x0000607c]             // 0x0047074e    8dbb7c600000
                         mov                ecx, 0x00000041                               // 0x00470754    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x00470759    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047075d    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047075f    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00470763    e8d8e8ffff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a0a // 0x00470768    813dac7cd1000a1a0000
                         {disp8} ja         _jmp_addr_0x0047077b                          // 0x00470772    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00470774    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00470787                          // 0x00470779    eb0c
_jmp_addr_0x0047077b:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0047077b    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013878]             // 0x00470781    8d8178380100
_jmp_addr_0x00470787:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00470787    8b5008
                         push               edx                                           // 0x0047078a    52
                         {disp32} lea       ecx, dword ptr [ebx + 0x00006180]             // 0x0047078b    8d8b80610000
                         call               _jmp_addr_0x0046f200                          // 0x00470791    e86aeaffff
                         push               0x0                                           // 0x00470796    6a00
                         push               0x30                                          // 0x00470798    6a30
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0047079a    8d4c2414
                         call               _jmp_addr_0x0046eed0                          // 0x0047079e    e82de7ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00006280]             // 0x004707a3    8dbb80620000
                         mov                ecx, 0x00000042                               // 0x004707a9    b942000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004707ae    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004707b2    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004707b4    8d4c240c
                         call               _jmp_addr_0x0046ee50                          // 0x004707b8    e893e6ffff
                         push               0x0                                           // 0x004707bd    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004707bf    8d4c2410
                         call               _jmp_addr_0x0046f050                          // 0x004707c3    e888e8ffff
                         {disp32} lea       edi, dword ptr [ebx + 0x00006388]             // 0x004707c8    8dbb88630000
                         mov                ecx, 0x00000041                               // 0x004707ce    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x0c]                   // 0x004707d3    8d74240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004707d7    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004707d9    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004707dd    e85ee8ffff
                         pop                edi                                           // 0x004707e2    5f
                         pop                esi                                           // 0x004707e3    5e
                         pop                ebx                                           // 0x004707e4    5b
                         add                esp, 0x00000108                               // 0x004707e5    81c408010000
                         ret                                                              // 0x004707eb    c3
                         nop                                                              // 0x004707ec    90
                         nop                                                              // 0x004707ed    90
                         nop                                                              // 0x004707ee    90
                         nop                                                              // 0x004707ef    90
_jmp_addr_0x004707f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004707f0    8b442404
                         cmp                eax, dword ptr [ecx + 0x04]                   // 0x004707f4    3b4104
                         {disp8} jae        _jmp_addr_0x004707fd                          // 0x004707f7    7304
                         test               eax, eax                                      // 0x004707f9    85c0
                         {disp8} ja         _jmp_addr_0x00470802                          // 0x004707fb    7705
_jmp_addr_0x004707fd:    mov                eax, dword ptr [ecx]                          // 0x004707fd    8b01
                         ret                0x0004                                        // 0x004707ff    c20400
_jmp_addr_0x00470802:    mov                ecx, dword ptr [ecx]                          // 0x00470802    8b09
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00470804    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x00470807    8d0481
                         ret                0x0004                                        // 0x0047080a    c20400
                         nop                                                              // 0x0047080d    90
                         nop                                                              // 0x0047080e    90
                         nop                                                              // 0x0047080f    90
_jmp_addr_0x00470810:    sub                esp, 0x0000010c                               // 0x00470810    81ec0c010000
                         push               ebx                                           // 0x00470816    53
                         {disp32} mov       ebx, dword ptr [esp + 0x00000114]             // 0x00470817    8b9c2414010000
                         push               ebp                                           // 0x0047081e    55
                         {disp32} mov       ebp, dword ptr [esp + 0x00000120]             // 0x0047081f    8bac2420010000
                         push               esi                                           // 0x00470826    56
                         push               edi                                           // 0x00470827    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00470828    894c2410
                         xor.s              esi, esi                                      // 0x0047082c    33f6
                         mov.s              edi, ecx                                      // 0x0047082e    8bf9
_jmp_addr_0x00470830:    cmp.s              esi, ebx                                      // 0x00470830    3bf3
                         {disp8} je         _jmp_addr_0x00470844                          // 0x00470832    7410
                         {disp32} mov       eax, dword ptr [esp + 0x00000124]             // 0x00470834    8b842424010000
                         push               ebp                                           // 0x0047083b    55
                         push               eax                                           // 0x0047083c    50
                         mov.s              ecx, edi                                      // 0x0047083d    8bcf
                         call               _jmp_addr_0x0046f2f0                          // 0x0047083f    e8aceaffff
_jmp_addr_0x00470844:    inc                esi                                           // 0x00470844    46
                         add                edi, 0x0000030c                               // 0x00470845    81c70c030000
                         cmp                esi, 0x21                                     // 0x0047084b    83fe21
                         .byte              0x72, 0xe0// {disp8} jb _jmp_addr_0x00470830  // 0x0047084e    72e0
                         {disp32} mov       ecx, dword ptr [esp + 0x00000124]             // 0x00470850    8b8c2424010000
                         push               ebp                                           // 0x00470857    55
                         push               ecx                                           // 0x00470858    51
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00470859    8d4c241c
                         call               _jmp_addr_0x0046eed0                          // 0x0047085d    e86ee6ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00470862    8b4c2410
                         mov.s              eax, ebx                                      // 0x00470866    8bc3
                         shl                eax, 6                                        // 0x00470868    c1e006
                         add.s              eax, ebx                                      // 0x0047086b    03c3
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0047086d    8d542414
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00470871    8d0440
                         push               edx                                           // 0x00470874    52
                         lea                ecx, dword ptr [ecx + eax * 0x4]              // 0x00470875    8d0c81
                         call               _jmp_addr_0x0046f220                          // 0x00470878    e8a3e9ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0047087d    8d4c2414
                         call               _jmp_addr_0x0046ee50                          // 0x00470881    e8cae5ffff
                         pop                edi                                           // 0x00470886    5f
                         pop                esi                                           // 0x00470887    5e
                         pop                ebp                                           // 0x00470888    5d
                         pop                ebx                                           // 0x00470889    5b
                         add                esp, 0x0000010c                               // 0x0047088a    81c40c010000
                         ret                0x000c                                        // 0x00470890    c20c00
                         nop                                                              // 0x00470893    90
                         nop                                                              // 0x00470894    90
                         nop                                                              // 0x00470895    90
                         nop                                                              // 0x00470896    90
                         nop                                                              // 0x00470897    90
                         nop                                                              // 0x00470898    90
                         nop                                                              // 0x00470899    90
                         nop                                                              // 0x0047089a    90
                         nop                                                              // 0x0047089b    90
                         nop                                                              // 0x0047089c    90
                         nop                                                              // 0x0047089d    90
                         nop                                                              // 0x0047089e    90
                         nop                                                              // 0x0047089f    90
_jmp_addr_0x004708a0:    sub                esp, 0x00000104                               // 0x004708a0    81ec04010000
                         push               ebx                                           // 0x004708a6    53
                         push               ebp                                           // 0x004708a7    55
                         push               esi                                           // 0x004708a8    56
                         mov.s              ebp, ecx                                      // 0x004708a9    8be9
                         push               edi                                           // 0x004708ab    57
                         {disp32} mov       edi, dword ptr [esp + 0x0000011c]             // 0x004708ac    8bbc241c010000
                         mov.s              esi, ebp                                      // 0x004708b3    8bf5
                         mov                ebx, 0x00000021                               // 0x004708b5    bb21000000
_jmp_addr_0x004708ba:    push               edi                                           // 0x004708ba    57
                         mov.s              ecx, esi                                      // 0x004708bb    8bce
                         call               _jmp_addr_0x0046f330                          // 0x004708bd    e86eeaffff
                         add                esi, 0x0000030c                               // 0x004708c2    81c60c030000
                         dec                ebx                                           // 0x004708c8    4b
                         {disp8} jne        _jmp_addr_0x004708ba                          // 0x004708c9    75ef
                         push               edi                                           // 0x004708cb    57
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x004708cc    8d4c2414
                         call               _jmp_addr_0x0046f050                          // 0x004708d0    e87be7ffff
                         {disp32} mov       ecx, dword ptr [esp + 0x00000118]             // 0x004708d5    8b8c2418010000
                         mov.s              eax, ecx                                      // 0x004708dc    8bc1
                         shl                eax, 6                                        // 0x004708de    c1e006
                         add.s              eax, ecx                                      // 0x004708e1    03c1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004708e3    8d0440
                         {disp32} lea       edi, dword ptr [ebp + eax * 0x4 + 0x00000208] // 0x004708e6    8dbc8508020000
                         mov                ecx, 0x00000041                               // 0x004708ed    b941000000
                         {disp8} lea        esi, dword ptr [esp + 0x10]                   // 0x004708f2    8d742410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004708f6    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x004708f8    8d4c2410
                         call               _jmp_addr_0x0046f040                          // 0x004708fc    e83fe7ffff
                         pop                edi                                           // 0x00470901    5f
                         pop                esi                                           // 0x00470902    5e
                         pop                ebp                                           // 0x00470903    5d
                         pop                ebx                                           // 0x00470904    5b
                         add                esp, 0x00000104                               // 0x00470905    81c404010000
                         ret                0x0008                                        // 0x0047090b    c20800
                         nop                                                              // 0x0047090e    90
                         nop                                                              // 0x0047090f    90
@GetText__10ControlMapFUlPw@16:    sub                esp, 0x00000200                               // 0x00470910    81ec00020000
                         {disp32} mov       edx, dword ptr [esp + 0x00000204]             // 0x00470916    8b942404020000
                         mov.s              eax, edx                                      // 0x0047091d    8bc2
                         shl                eax, 6                                        // 0x0047091f    c1e006
                         add.s              eax, edx                                      // 0x00470922    03c2
                         push               esi                                           // 0x00470924    56
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00470925    8d0440
                         lea                esi, dword ptr [ecx + eax * 0x4]              // 0x00470928    8d3481
                         push               edi                                           // 0x0047092b    57
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0047092c    8d4c2408
                         push               ecx                                           // 0x00470930    51
                         mov.s              ecx, esi                                      // 0x00470931    8bce
                         {disp8} mov        word ptr [esp + 0x0c], 0x0000                 // 0x00470933    66c744240c0000
                         call               _jmp_addr_0x0046f240                          // 0x0047093a    e801e9ffff
                         {disp32} mov       edi, dword ptr [esp + 0x00000210]             // 0x0047093f    8bbc2410020000
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00470946    8d542408
                         push               edx                                           // 0x0047094a    52
                         push               0x009cee10                                    // 0x0047094b    6810ee9c00
                         push               edi                                           // 0x00470950    57
                         call               dword ptr [rdata_bytes + 0x360]               // 0x00470951    ff1560938a00
                         add                esp, 0x0c                                     // 0x00470957    83c40c
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x0047095a    8d442408
                         push               eax                                           // 0x0047095e    50
                         mov.s              ecx, esi                                      // 0x0047095f    8bce
                         {disp8} mov        word ptr [esp + 0x0c], 0x0000                 // 0x00470961    66c744240c0000
                         call               _jmp_addr_0x0046f260                          // 0x00470968    e8f3e8ffff
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x0047096d    8d4c2408
                         push               ecx                                           // 0x00470971    51
                         push               edi                                           // 0x00470972    57
                         call               _wcscat                                       // 0x00470973    e814563500
                         push               0x009cee0c                                    // 0x00470978    680cee9c00
                         push               edi                                           // 0x0047097d    57
                         call               _wcscat                                       // 0x0047097e    e809563500
                         add                esp, 0x10                                     // 0x00470983    83c410
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x00470986    8d542408
                         push               edx                                           // 0x0047098a    52
                         mov.s              ecx, esi                                      // 0x0047098b    8bce
                         {disp8} mov        word ptr [esp + 0x0c], 0x0000                 // 0x0047098d    66c744240c0000
                         call               _jmp_addr_0x0046f2b0                          // 0x00470994    e817e9ffff
                         {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00470999    8d442408
                         push               eax                                           // 0x0047099d    50
                         push               edi                                           // 0x0047099e    57
                         call               _wcscat                                       // 0x0047099f    e8e8553500
                         add                esp, 0x08                                     // 0x004709a4    83c408
                         pop                edi                                           // 0x004709a7    5f
                         pop                esi                                           // 0x004709a8    5e
                         add                esp, 0x00000200                               // 0x004709a9    81c400020000
                         ret                0x0008                                        // 0x004709af    c20800
                         nop                                                              // 0x004709b2    90
                         nop                                                              // 0x004709b3    90
                         nop                                                              // 0x004709b4    90
                         nop                                                              // 0x004709b5    90
                         nop                                                              // 0x004709b6    90
                         nop                                                              // 0x004709b7    90
                         nop                                                              // 0x004709b8    90
                         nop                                                              // 0x004709b9    90
                         nop                                                              // 0x004709ba    90
                         nop                                                              // 0x004709bb    90
                         nop                                                              // 0x004709bc    90
                         nop                                                              // 0x004709bd    90
                         nop                                                              // 0x004709be    90
                         nop                                                              // 0x004709bf    90
                         push               ebx                                           // 0x004709c0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x08]                   // 0x004709c1    8b5c2408
                         push               esi                                           // 0x004709c5    56
                         push               edi                                           // 0x004709c6    57
                         xor.s              esi, esi                                      // 0x004709c7    33f6
                         mov.s              edi, ecx                                      // 0x004709c9    8bf9
_jmp_addr_0x004709cb:    push               ebx                                           // 0x004709cb    53
                         mov.s              ecx, edi                                      // 0x004709cc    8bcf
                         call               _jmp_addr_0x0046f440                          // 0x004709ce    e86deaffff
                         test               eax, eax                                      // 0x004709d3    85c0
                         {disp8} jne        _jmp_addr_0x004709ec                          // 0x004709d5    7515
                         inc                esi                                           // 0x004709d7    46
                         add                edi, 0x0000030c                               // 0x004709d8    81c70c030000
                         cmp                esi, 0x21                                     // 0x004709de    83fe21
                         .byte              0x72, 0xe8// {disp8} jb _jmp_addr_0x004709cb  // 0x004709e1    72e8
                         pop                edi                                           // 0x004709e3    5f
                         pop                esi                                           // 0x004709e4    5e
                         or                 eax, -0x1                                     // 0x004709e5    83c8ff
                         pop                ebx                                           // 0x004709e8    5b
                         ret                0x0004                                        // 0x004709e9    c20400
_jmp_addr_0x004709ec:    pop                edi                                           // 0x004709ec    5f
                         mov.s              eax, esi                                      // 0x004709ed    8bc6
                         pop                esi                                           // 0x004709ef    5e
                         pop                ebx                                           // 0x004709f0    5b
                         ret                0x0004                                        // 0x004709f1    c20400
                         nop                                                              // 0x004709f4    90
                         nop                                                              // 0x004709f5    90
                         nop                                                              // 0x004709f6    90
                         nop                                                              // 0x004709f7    90
                         nop                                                              // 0x004709f8    90
                         nop                                                              // 0x004709f9    90
                         nop                                                              // 0x004709fa    90
                         nop                                                              // 0x004709fb    90
                         nop                                                              // 0x004709fc    90
                         nop                                                              // 0x004709fd    90
                         nop                                                              // 0x004709fe    90
                         nop                                                              // 0x004709ff    90
_jmp_addr_0x00470a00:    push               ecx                                           // 0x00470a00    51
                         push               ebx                                           // 0x00470a01    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00470a02    8b5c2410
                         push               ebp                                           // 0x00470a06    55
                         {disp8} mov        ebp, dword ptr [esp + 0x10]                   // 0x00470a07    8b6c2410
                         push               esi                                           // 0x00470a0b    56
                         push               edi                                           // 0x00470a0c    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00470a0d    894c2410
                         xor.s              esi, esi                                      // 0x00470a11    33f6
                         mov.s              edi, ecx                                      // 0x00470a13    8bf9
_jmp_addr_0x00470a15:    push               ebx                                           // 0x00470a15    53
                         push               ebp                                           // 0x00470a16    55
                         mov.s              ecx, edi                                      // 0x00470a17    8bcf
                         call               _jmp_addr_0x0046f480                          // 0x00470a19    e862eaffff
                         test               eax, eax                                      // 0x00470a1e    85c0
                         {disp8} jne        _jmp_addr_0x00470a39                          // 0x00470a20    7517
                         inc                esi                                           // 0x00470a22    46
                         add                edi, 0x0000030c                               // 0x00470a23    81c70c030000
                         cmp                esi, 0x21                                     // 0x00470a29    83fe21
                         .byte              0x72, 0xe7// {disp8} jb _jmp_addr_0x00470a15  // 0x00470a2c    72e7
_jmp_addr_0x00470a2e:    pop                edi                                           // 0x00470a2e    5f
                         pop                esi                                           // 0x00470a2f    5e
                         pop                ebp                                           // 0x00470a30    5d
                         or                 eax, -0x1                                     // 0x00470a31    83c8ff
                         pop                ebx                                           // 0x00470a34    5b
                         pop                ecx                                           // 0x00470a35    59
                         ret                0x0008                                        // 0x00470a36    c20800
_jmp_addr_0x00470a39:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00470a39    8b4c2410
                         push               esi                                           // 0x00470a3d    56
                         call               _jmp_addr_0x0046f750                          // 0x00470a3e    e80dedffff
                         test               eax, eax                                      // 0x00470a43    85c0
                         {disp8} jne        _jmp_addr_0x00470a2e                          // 0x00470a45    75e7
                         pop                edi                                           // 0x00470a47    5f
                         mov.s              eax, esi                                      // 0x00470a48    8bc6
                         pop                esi                                           // 0x00470a4a    5e
                         pop                ebp                                           // 0x00470a4b    5d
                         pop                ebx                                           // 0x00470a4c    5b
                         pop                ecx                                           // 0x00470a4d    59
                         ret                0x0008                                        // 0x00470a4e    c20800
                         nop                                                              // 0x00470a51    90
                         nop                                                              // 0x00470a52    90
                         nop                                                              // 0x00470a53    90
                         nop                                                              // 0x00470a54    90
                         nop                                                              // 0x00470a55    90
                         nop                                                              // 0x00470a56    90
                         nop                                                              // 0x00470a57    90
                         nop                                                              // 0x00470a58    90
                         nop                                                              // 0x00470a59    90
                         nop                                                              // 0x00470a5a    90
                         nop                                                              // 0x00470a5b    90
                         nop                                                              // 0x00470a5c    90
                         nop                                                              // 0x00470a5d    90
                         nop                                                              // 0x00470a5e    90
                         nop                                                              // 0x00470a5f    90
_jmp_addr_0x00470a60:    push               ebx                                           // 0x00470a60    53
                         push               ebp                                           // 0x00470a61    55
                         {disp8} mov        ebp, dword ptr [esp + 0x0c]                   // 0x00470a62    8b6c240c
                         push               esi                                           // 0x00470a66    56
                         mov.s              ebx, ecx                                      // 0x00470a67    8bd9
                         push               edi                                           // 0x00470a69    57
                         xor.s              esi, esi                                      // 0x00470a6a    33f6
                         mov.s              edi, ebx                                      // 0x00470a6c    8bfb
_jmp_addr_0x00470a6e:    push               ebp                                           // 0x00470a6e    55
                         mov.s              ecx, edi                                      // 0x00470a6f    8bcf
                         call               _jmp_addr_0x0046f460                          // 0x00470a71    e8eae9ffff
                         test               eax, eax                                      // 0x00470a76    85c0
                         {disp8} jne        _jmp_addr_0x00470a90                          // 0x00470a78    7516
                         inc                esi                                           // 0x00470a7a    46
                         add                edi, 0x0000030c                               // 0x00470a7b    81c70c030000
                         cmp                esi, 0x21                                     // 0x00470a81    83fe21
                         .byte              0x72, 0xe8// {disp8} jb _jmp_addr_0x00470a6e  // 0x00470a84    72e8
_jmp_addr_0x00470a86:    pop                edi                                           // 0x00470a86    5f
                         pop                esi                                           // 0x00470a87    5e
                         pop                ebp                                           // 0x00470a88    5d
                         or                 eax, -0x1                                     // 0x00470a89    83c8ff
                         pop                ebx                                           // 0x00470a8c    5b
                         ret                0x0004                                        // 0x00470a8d    c20400
_jmp_addr_0x00470a90:    push               esi                                           // 0x00470a90    56
                         mov.s              ecx, ebx                                      // 0x00470a91    8bcb
                         call               _jmp_addr_0x0046f750                          // 0x00470a93    e8b8ecffff
                         test               eax, eax                                      // 0x00470a98    85c0
                         {disp8} jne        _jmp_addr_0x00470a86                          // 0x00470a9a    75ea
                         pop                edi                                           // 0x00470a9c    5f
                         mov.s              eax, esi                                      // 0x00470a9d    8bc6
                         pop                esi                                           // 0x00470a9f    5e
                         pop                ebp                                           // 0x00470aa0    5d
                         pop                ebx                                           // 0x00470aa1    5b
                         ret                0x0004                                        // 0x00470aa2    c20400
                         nop                                                              // 0x00470aa5    90
                         nop                                                              // 0x00470aa6    90
                         nop                                                              // 0x00470aa7    90
                         nop                                                              // 0x00470aa8    90
                         nop                                                              // 0x00470aa9    90
                         nop                                                              // 0x00470aaa    90
                         nop                                                              // 0x00470aab    90
                         nop                                                              // 0x00470aac    90
                         nop                                                              // 0x00470aad    90
                         nop                                                              // 0x00470aae    90
                         nop                                                              // 0x00470aaf    90
?ProcessActionsPerformed@ControlMap@@QAEXXZ:
                                               push               ebx                                           // 0x00470ab0    53
                         push               esi                                           // 0x00470ab1    56
                         push               edi                                           // 0x00470ab2    57
                         mov.s              edi, ecx                                      // 0x00470ab3    8bf9
                         {disp32} lea       esi, dword ptr [edi + 0x0000648c]             // 0x00470ab5    8db78c640000
                         mov                ebx, 0x00000021                               // 0x00470abb    bb21000000
_jmp_addr_0x00470ac0:    mov.s              ecx, edi                                      // 0x00470ac0    8bcf
                         call               ?IsKeyBeingPressed@BindableAction@@QAE_NXZ    // 0x00470ac2    e8f9e9ffff
                         test               eax, eax                                      // 0x00470ac7    85c0
                         {disp8} jne        _jmp_addr_0x00470ada                          // 0x00470ac9    750f
                         mov.s              ecx, edi                                      // 0x00470acb    8bcf
                         call               _jmp_addr_0x0046f500                          // 0x00470acd    e82eeaffff
                         test               eax, eax                                      // 0x00470ad2    85c0
                         {disp8} jne        _jmp_addr_0x00470ada                          // 0x00470ad4    7504
                         mov                dword ptr [esi], eax                          // 0x00470ad6    8906
                         {disp8} jmp        _jmp_addr_0x00470ae0                          // 0x00470ad8    eb06
_jmp_addr_0x00470ada:    mov                dword ptr [esi], 0x00000001                   // 0x00470ada    c70601000000
_jmp_addr_0x00470ae0:    add                esi, 0x04                                     // 0x00470ae0    83c604
                         add                edi, 0x0000030c                               // 0x00470ae3    81c70c030000
                         dec                ebx                                           // 0x00470ae9    4b
                         {disp8} jne        _jmp_addr_0x00470ac0                          // 0x00470aea    75d4
                         pop                edi                                           // 0x00470aec    5f
                         pop                esi                                           // 0x00470aed    5e
                         pop                ebx                                           // 0x00470aee    5b
                         ret                                                              // 0x00470aef    c3
_jmp_addr_0x00470af0:    push               esi                                           // 0x00470af0    56
                         push               edi                                           // 0x00470af1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00470af2    8b7c240c
                         mov.s              esi, ecx                                      // 0x00470af6    8bf1
                         push               edi                                           // 0x00470af8    57
                         call               _jmp_addr_0x0046f750                          // 0x00470af9    e852ecffff
                         test               eax, eax                                      // 0x00470afe    85c0
                         {disp8} jne        _jmp_addr_0x00470b20                          // 0x00470b00    751e
                         {disp32} mov       eax, dword ptr [esi + edi * 0x4 + 0x0000648c] // 0x00470b02    8b84be8c640000
                         test               eax, eax                                      // 0x00470b09    85c0
                         {disp8} je         _jmp_addr_0x00470b20                          // 0x00470b0b    7413
                         {disp32} mov       al, byte ptr [data_bytes + 0x286ced]          // 0x00470b0d    a0edccc400
                         test               al, al                                        // 0x00470b12    84c0
                         {disp8} jne        _jmp_addr_0x00470b20                          // 0x00470b14    750a
                         pop                edi                                           // 0x00470b16    5f
                         mov                eax, 0x00000001                               // 0x00470b17    b801000000
                         pop                esi                                           // 0x00470b1c    5e
                         ret                0x0004                                        // 0x00470b1d    c20400
_jmp_addr_0x00470b20:    pop                edi                                           // 0x00470b20    5f
                         xor.s              eax, eax                                      // 0x00470b21    33c0
                         pop                esi                                           // 0x00470b23    5e
                         ret                0x0004                                        // 0x00470b24    c20400
                         nop                                                              // 0x00470b27    90
                         nop                                                              // 0x00470b28    90
                         nop                                                              // 0x00470b29    90
                         nop                                                              // 0x00470b2a    90
                         nop                                                              // 0x00470b2b    90
                         nop                                                              // 0x00470b2c    90
                         nop                                                              // 0x00470b2d    90
                         nop                                                              // 0x00470b2e    90
                         nop                                                              // 0x00470b2f    90
_jmp_addr_0x00470b30:    {disp32} mov       al, byte ptr [data_bytes + 0x2988c8]          // 0x00470b30    a0c8e8c500
                         sub                esp, 0x10                                     // 0x00470b35    83ec10
                         push               ebx                                           // 0x00470b38    53
                         push               ebp                                           // 0x00470b39    55
                         push               esi                                           // 0x00470b3a    56
                         {disp32} mov       esi, dword ptr [__imp__GetTickCount@4]        // 0x00470b3b    8b35c4918a00
                         xor.s              ebp, ebp                                      // 0x00470b41    33ed
                         test               al, 0x01                                      // 0x00470b43    a801
                         push               edi                                           // 0x00470b45    57
                         mov.s              edi, ecx                                      // 0x00470b46    8bf9
                         {disp32} jne       _jmp_addr_0x00470bd1                          // 0x00470b48    0f8583000000
                         or                 al, 1                                         // 0x00470b4e    0c01
                         {disp32} mov       byte ptr [data_bytes + 0x2988c8], al          // 0x00470b50    a2c8e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c0], 0x3f800000 // 0x00470b55    c705c0e8c5000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x2988c4], ebp        // 0x00470b5f    892dc4e8c500
                         call               esi                                           // 0x00470b65    ffd6
                         {disp32} fld       dword ptr [data_bytes + 0x2988c0]             // 0x00470b67    d905c0e8c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470b6d    d81d98a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2988b8], eax        // 0x00470b73    a3b8e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988bc], ebp        // 0x00470b78    892dbce8c500
                         fnstsw             ax                                            // 0x00470b7e    dfe0
                         test               ah, 0x40                                      // 0x00470b80    f6c440
                         {disp8} jne        _jmp_addr_0x00470bc4                          // 0x00470b83    753f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2988c0]        // 0x00470b85    a1c0e8c500
                         push               ebp                                           // 0x00470b8a    55
                         mov                ecx, 0x00c5e7b8                               // 0x00470b8b    b9b8e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c4], eax        // 0x00470b90    a3c4e8c500
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00470b95    e826e0fcff
                         {disp32} fld       dword ptr [data_bytes + 0x2988c0]             // 0x00470b9a    d905c0e8c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470ba0    d81d98a38a00
                         fnstsw             ax                                            // 0x00470ba6    dfe0
                         test               ah, 0x40                                      // 0x00470ba8    f6c440
                         {disp8} jne        _jmp_addr_0x00470bc4                          // 0x00470bab    7517
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2988c0]        // 0x00470bad    8b0dc0e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c4], ecx        // 0x00470bb3    890dc4e8c500
                         push               ebp                                           // 0x00470bb9    55
                         mov                ecx, 0x00c5e7b8                               // 0x00470bba    b9b8e7c500
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00470bbf    e8fcdffcff
_jmp_addr_0x00470bc4:    push               0x00470dd0                                    // 0x00470bc4    68d00d4700
                         call               _atexit                                       // 0x00470bc9    e8c34b3500
                         add                esp, 0x04                                     // 0x00470bce    83c404
_jmp_addr_0x00470bd1:    {disp32} lea       ebx, dword ptr [edi + 0x00000618]             // 0x00470bd1    8d9f18060000
                         mov.s              ecx, ebx                                      // 0x00470bd7    8bcb
                         call               _jmp_addr_0x0046f590                          // 0x00470bd9    e8b2e9ffff
                         test               eax, eax                                      // 0x00470bde    85c0
                         {disp8} je         _jmp_addr_0x00470c03                          // 0x00470be0    7421
                         cmp                dword ptr [edi + 0x00006510], ebp             // 0x00470be2    39af10650000
                         {disp8} jne        _jmp_addr_0x00470c03                          // 0x00470be8    7519
                         mov                eax, 0x00000001                               // 0x00470bea    b801000000
                         {disp32} mov       dword ptr [edi + 0x00006518], eax             // 0x00470bef    898718650000
                         {disp32} mov       dword ptr [edi + 0x00006510], eax             // 0x00470bf5    898710650000
                         pop                edi                                           // 0x00470bfb    5f
                         pop                esi                                           // 0x00470bfc    5e
                         pop                ebp                                           // 0x00470bfd    5d
                         pop                ebx                                           // 0x00470bfe    5b
                         add                esp, 0x10                                     // 0x00470bff    83c410
                         ret                                                              // 0x00470c02    c3
_jmp_addr_0x00470c03:    mov.s              ecx, ebx                                      // 0x00470c03    8bcb
                         call               ?IsKeyBeingPressed@BindableAction@@QAE_NXZ    // 0x00470c05    e8b6e8ffff
                         test               eax, eax                                      // 0x00470c0a    85c0
                         {disp32} je        _jmp_addr_0x00470db9                          // 0x00470c0c    0f84a7010000
                         cmp                dword ptr [edi + 0x00006510], ebp             // 0x00470c12    39af10650000
                         {disp32} jne       _jmp_addr_0x00470db9                          // 0x00470c18    0f859b010000
                         {disp32} fld       dword ptr [data_bytes + 0x2988c0]             // 0x00470c1e    d905c0e8c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470c24    d81d98a38a00
                         fnstsw             ax                                            // 0x00470c2a    dfe0
                         test               ah, 0x40                                      // 0x00470c2c    f6c440
                         {disp32} jne       _jmp_addr_0x00470cdc                          // 0x00470c2f    0f85a7000000
                         call               esi                                           // 0x00470c35    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2988b8]        // 0x00470c37    2b05b8e8c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2988bc]        // 0x00470c3d    8b15bce8c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470c43    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470c47    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00470c4b    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00470c4f    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470c53    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2988c0]             // 0x00470c57    d80dc0e8c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x00470c5d    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00470c61    e89a073300
                         cmp                eax, dword ptr [edi + 0x00006528]             // 0x00470c66    3b8728650000
                         {disp8} jae        _jmp_addr_0x00470c78                          // 0x00470c6c    730a
                         {disp32} mov       dword ptr [edi + 0x00006520], 0x00000001      // 0x00470c6e    c7872065000001000000
_jmp_addr_0x00470c78:    {disp32} fld       dword ptr [data_bytes + 0x2988c0]             // 0x00470c78    d905c0e8c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470c7e    d81d98a38a00
                         fnstsw             ax                                            // 0x00470c84    dfe0
                         test               ah, 0x40                                      // 0x00470c86    f6c440
                         {disp8} jne        _jmp_addr_0x00470cdc                          // 0x00470c89    7551
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2988c0]        // 0x00470c8b    a1c0e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c4], eax        // 0x00470c90    a3c4e8c500
                         call               esi                                           // 0x00470c95    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2988b8]        // 0x00470c97    2b05b8e8c500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2988bc]        // 0x00470c9d    8b0dbce8c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470ca3    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470ca7    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00470cab    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00470caf    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470cb3    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2988c0]             // 0x00470cb7    d80dc0e8c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x00470cbd    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00470cc1    e83a073300
                         {disp32} mov       dword ptr [data_bytes + 0x2988bc], eax        // 0x00470cc6    a3bce8c500
                         call               esi                                           // 0x00470ccb    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2988b8], eax        // 0x00470ccd    a3b8e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c0], 0x00000000 // 0x00470cd2    c705c0e8c50000000000
_jmp_addr_0x00470cdc:    call               esi                                           // 0x00470cdc    ffd6
                         {disp32} fld       dword ptr [data_bytes + 0x2988c0]             // 0x00470cde    d905c0e8c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470ce4    d81d98a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2988b8], eax        // 0x00470cea    a3b8e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988bc], ebp        // 0x00470cef    892dbce8c500
                         fnstsw             ax                                            // 0x00470cf5    dfe0
                         test               ah, 0x40                                      // 0x00470cf7    f6c440
                         {disp8} jne        _jmp_addr_0x00470d44                          // 0x00470cfa    7548
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2988c0]        // 0x00470cfc    8b15c0e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c4], edx        // 0x00470d02    8915c4e8c500
                         call               esi                                           // 0x00470d08    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2988b8]        // 0x00470d0a    2b05b8e8c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470d10    89442410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2988bc]        // 0x00470d14    a1bce8c500
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470d19    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00470d1d    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470d21    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470d25    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2988c0]             // 0x00470d29    d80dc0e8c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x00470d2f    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00470d33    e8c8063300
                         {disp32} mov       dword ptr [data_bytes + 0x2988bc], eax        // 0x00470d38    a3bce8c500
                         call               esi                                           // 0x00470d3d    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2988b8], eax        // 0x00470d3f    a3b8e8c500
_jmp_addr_0x00470d44:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2988c4]        // 0x00470d44    8b0dc4e8c500
                         {disp32} mov       dword ptr [data_bytes + 0x2988c0], 0x3727c5ac // 0x00470d4a    c705c0e8c500acc52737
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00470d54    894c2410
                         call               esi                                           // 0x00470d58    ffd6
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2988b8]        // 0x00470d5a    8b0db8e8c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2988bc]        // 0x00470d60    8b15bce8c500
                         sub.s              eax, ecx                                      // 0x00470d66    2bc1
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00470d68    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00470d6c    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00470d70    df6c2418
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00470d74    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00470d78    896c241c
                         {disp32} fmul      dword ptr [data_bytes + 0x2988c0]             // 0x00470d7c    d80dc0e8c500
                         {disp8} fiadd      dword ptr [esp + 0x18]                        // 0x00470d82    da442418
                         call               _jmp_addr_0x007a1400                          // 0x00470d86    e875063300
                         {disp32} mov       dword ptr [data_bytes + 0x2988bc], eax        // 0x00470d8b    a3bce8c500
                         call               esi                                           // 0x00470d90    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2988b8], eax        // 0x00470d92    a3b8e8c500
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00470d97    8b442410
                         {disp32} mov       dword ptr [data_bytes + 0x2988c0], eax        // 0x00470d9b    a3c0e8c500
                         mov                eax, 0x00000001                               // 0x00470da0    b801000000
                         {disp32} mov       dword ptr [edi + 0x00006518], ebp             // 0x00470da5    89af18650000
                         {disp32} mov       dword ptr [edi + 0x00006510], eax             // 0x00470dab    898710650000
                         pop                edi                                           // 0x00470db1    5f
                         pop                esi                                           // 0x00470db2    5e
                         pop                ebp                                           // 0x00470db3    5d
                         pop                ebx                                           // 0x00470db4    5b
                         add                esp, 0x10                                     // 0x00470db5    83c410
                         ret                                                              // 0x00470db8    c3
_jmp_addr_0x00470db9:    pop                edi                                           // 0x00470db9    5f
                         pop                esi                                           // 0x00470dba    5e
                         pop                ebp                                           // 0x00470dbb    5d
                         xor.s              eax, eax                                      // 0x00470dbc    33c0
                         pop                ebx                                           // 0x00470dbe    5b
                         add                esp, 0x10                                     // 0x00470dbf    83c410
                         ret                                                              // 0x00470dc2    c3
                         nop                                                              // 0x00470dc3    90
                         nop                                                              // 0x00470dc4    90
                         nop                                                              // 0x00470dc5    90
                         nop                                                              // 0x00470dc6    90
                         nop                                                              // 0x00470dc7    90
                         nop                                                              // 0x00470dc8    90
                         nop                                                              // 0x00470dc9    90
                         nop                                                              // 0x00470dca    90
                         nop                                                              // 0x00470dcb    90
                         nop                                                              // 0x00470dcc    90
                         nop                                                              // 0x00470dcd    90
                         nop                                                              // 0x00470dce    90
                         nop                                                              // 0x00470dcf    90
                         ret                                                              // 0x00470dd0    c3
                         nop                                                              // 0x00470dd1    90
                         nop                                                              // 0x00470dd2    90
                         nop                                                              // 0x00470dd3    90
                         nop                                                              // 0x00470dd4    90
                         nop                                                              // 0x00470dd5    90
                         nop                                                              // 0x00470dd6    90
                         nop                                                              // 0x00470dd7    90
                         nop                                                              // 0x00470dd8    90
                         nop                                                              // 0x00470dd9    90
                         nop                                                              // 0x00470dda    90
                         nop                                                              // 0x00470ddb    90
                         nop                                                              // 0x00470ddc    90
                         nop                                                              // 0x00470ddd    90
                         nop                                                              // 0x00470dde    90
                         nop                                                              // 0x00470ddf    90
_jmp_addr_0x00470de0:    push               esi                                           // 0x00470de0    56
                         mov.s              esi, ecx                                      // 0x00470de1    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00006520]             // 0x00470de3    8b8620650000
                         test               eax, eax                                      // 0x00470de9    85c0
                         {disp8} je         _jmp_addr_0x00470dfe                          // 0x00470deb    7411
                         {disp32} mov       dword ptr [esi + 0x00006520], 0x00000000      // 0x00470ded    c7862065000000000000
                         mov                eax, 0x00000001                               // 0x00470df7    b801000000
                         pop                esi                                           // 0x00470dfc    5e
                         ret                                                              // 0x00470dfd    c3
_jmp_addr_0x00470dfe:    {disp32} lea       ecx, dword ptr [esi + 0x00000618]             // 0x00470dfe    8d8e18060000
                         call               _jmp_addr_0x0046f5f0                          // 0x00470e04    e8e7e7ffff
                         test               eax, eax                                      // 0x00470e09    85c0
                         {disp8} je         _jmp_addr_0x00470e1a                          // 0x00470e0b    740d
                         mov                eax, 0x00000001                               // 0x00470e0d    b801000000
                         {disp32} mov       dword ptr [esi + 0x00006510], eax             // 0x00470e12    898610650000
                         pop                esi                                           // 0x00470e18    5e
                         ret                                                              // 0x00470e19    c3
_jmp_addr_0x00470e1a:    xor.s              eax, eax                                      // 0x00470e1a    33c0
                         pop                esi                                           // 0x00470e1c    5e
                         ret                                                              // 0x00470e1d    c3
                         nop                                                              // 0x00470e1e    90
                         nop                                                              // 0x00470e1f    90
_jmp_addr_0x00470e20:    push               esi                                           // 0x00470e20    56
                         mov.s              esi, ecx                                      // 0x00470e21    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00006518]             // 0x00470e23    8b8618650000
                         test               eax, eax                                      // 0x00470e29    85c0
                         {disp32} mov       eax, dword ptr [esi + 0x00006510]             // 0x00470e2b    8b8610650000
                         {disp8} je         _jmp_addr_0x00470e57                          // 0x00470e31    7424
                         test               eax, eax                                      // 0x00470e33    85c0
                         {disp8} je         _jmp_addr_0x00470e77                          // 0x00470e35    7440
                         {disp32} lea       ecx, dword ptr [esi + 0x00000618]             // 0x00470e37    8d8e18060000
                         call               _jmp_addr_0x0046f660                          // 0x00470e3d    e81ee8ffff
                         test               eax, eax                                      // 0x00470e42    85c0
                         {disp8} je         _jmp_addr_0x00470e77                          // 0x00470e44    7431
                         {disp32} mov       dword ptr [esi + 0x00006510], 0x00000000      // 0x00470e46    c7861065000000000000
                         mov                eax, 0x00000001                               // 0x00470e50    b801000000
                         pop                esi                                           // 0x00470e55    5e
                         ret                                                              // 0x00470e56    c3
_jmp_addr_0x00470e57:    test               eax, eax                                      // 0x00470e57    85c0
                         {disp8} je         _jmp_addr_0x00470e77                          // 0x00470e59    741c
                         {disp32} lea       ecx, dword ptr [esi + 0x00000618]             // 0x00470e5b    8d8e18060000
                         call               ?IsKeyBeingPressed@BindableAction@@QAE_NXZ    // 0x00470e61    e85ae6ffff
                         test               eax, eax                                      // 0x00470e66    85c0
                         {disp8} jne        _jmp_addr_0x00470e77                          // 0x00470e68    750d
                         {disp32} mov       dword ptr [esi + 0x00006510], eax             // 0x00470e6a    898610650000
                         mov                eax, 0x00000001                               // 0x00470e70    b801000000
                         pop                esi                                           // 0x00470e75    5e
                         ret                                                              // 0x00470e76    c3
_jmp_addr_0x00470e77:    xor.s              eax, eax                                      // 0x00470e77    33c0
                         pop                esi                                           // 0x00470e79    5e
                         ret                                                              // 0x00470e7a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00470e7b    e8f909f9ff
_jmp_addr_0x00470e80:    {disp32} mov       al, byte ptr [data_bytes + 0x2987b0]          // 0x00470e80    a0b0e7c500
                         sub                esp, 0x10                                     // 0x00470e85    83ec10
                         push               ebx                                           // 0x00470e88    53
                         push               ebp                                           // 0x00470e89    55
                         push               esi                                           // 0x00470e8a    56
                         {disp32} mov       esi, dword ptr [__imp__GetTickCount@4]        // 0x00470e8b    8b35c4918a00
                         xor.s              ebp, ebp                                      // 0x00470e91    33ed
                         test               al, 0x01                                      // 0x00470e93    a801
                         push               edi                                           // 0x00470e95    57
                         mov.s              edi, ecx                                      // 0x00470e96    8bf9
                         {disp32} jne       _jmp_addr_0x00470f21                          // 0x00470e98    0f8583000000
                         or                 al, 1                                         // 0x00470e9e    0c01
                         {disp32} mov       byte ptr [data_bytes + 0x2987b0], al          // 0x00470ea0    a2b0e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987a8], 0x3f800000 // 0x00470ea5    c705a8e7c5000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x2987ac], ebp        // 0x00470eaf    892dace7c500
                         call               esi                                           // 0x00470eb5    ffd6
                         {disp32} fld       dword ptr [data_bytes + 0x2987a8]             // 0x00470eb7    d905a8e7c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470ebd    d81d98a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2987a0], eax        // 0x00470ec3    a3a0e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987a4], ebp        // 0x00470ec8    892da4e7c500
                         fnstsw             ax                                            // 0x00470ece    dfe0
                         test               ah, 0x40                                      // 0x00470ed0    f6c440
                         {disp8} jne        _jmp_addr_0x00470f14                          // 0x00470ed3    753f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2987a8]        // 0x00470ed5    a1a8e7c500
                         push               ebp                                           // 0x00470eda    55
                         mov                ecx, 0x00c5e6a0                               // 0x00470edb    b9a0e6c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987ac], eax        // 0x00470ee0    a3ace7c500
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00470ee5    e8d6dcfcff
                         {disp32} fld       dword ptr [data_bytes + 0x2987a8]             // 0x00470eea    d905a8e7c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470ef0    d81d98a38a00
                         fnstsw             ax                                            // 0x00470ef6    dfe0
                         test               ah, 0x40                                      // 0x00470ef8    f6c440
                         {disp8} jne        _jmp_addr_0x00470f14                          // 0x00470efb    7517
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2987a8]        // 0x00470efd    8b0da8e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987ac], ecx        // 0x00470f03    890dace7c500
                         push               ebp                                           // 0x00470f09    55
                         mov                ecx, 0x00c5e6a0                               // 0x00470f0a    b9a0e6c500
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00470f0f    e8acdcfcff
_jmp_addr_0x00470f14:    push               0x00471120                                    // 0x00470f14    6820114700
                         call               _atexit                                       // 0x00470f19    e873483500
                         add                esp, 0x04                                     // 0x00470f1e    83c404
_jmp_addr_0x00470f21:    {disp32} lea       ebx, dword ptr [edi + 0x0000030c]             // 0x00470f21    8d9f0c030000
                         mov.s              ecx, ebx                                      // 0x00470f27    8bcb
                         call               _jmp_addr_0x0046f590                          // 0x00470f29    e862e6ffff
                         test               eax, eax                                      // 0x00470f2e    85c0
                         {disp8} je         _jmp_addr_0x00470f53                          // 0x00470f30    7421
                         cmp                dword ptr [edi + 0x00006514], ebp             // 0x00470f32    39af14650000
                         {disp8} jne        _jmp_addr_0x00470f53                          // 0x00470f38    7519
                         mov                eax, 0x00000001                               // 0x00470f3a    b801000000
                         {disp32} mov       dword ptr [edi + 0x0000651c], eax             // 0x00470f3f    89871c650000
                         {disp32} mov       dword ptr [edi + 0x00006514], eax             // 0x00470f45    898714650000
                         pop                edi                                           // 0x00470f4b    5f
                         pop                esi                                           // 0x00470f4c    5e
                         pop                ebp                                           // 0x00470f4d    5d
                         pop                ebx                                           // 0x00470f4e    5b
                         add                esp, 0x10                                     // 0x00470f4f    83c410
                         ret                                                              // 0x00470f52    c3
_jmp_addr_0x00470f53:    mov.s              ecx, ebx                                      // 0x00470f53    8bcb
                         call               ?IsKeyBeingPressed@BindableAction@@QAE_NXZ    // 0x00470f55    e866e5ffff
                         test               eax, eax                                      // 0x00470f5a    85c0
                         {disp32} je        _jmp_addr_0x00471109                          // 0x00470f5c    0f84a7010000
                         cmp                dword ptr [edi + 0x00006514], ebp             // 0x00470f62    39af14650000
                         {disp32} jne       _jmp_addr_0x00471109                          // 0x00470f68    0f859b010000
                         {disp32} fld       dword ptr [data_bytes + 0x2987a8]             // 0x00470f6e    d905a8e7c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470f74    d81d98a38a00
                         fnstsw             ax                                            // 0x00470f7a    dfe0
                         test               ah, 0x40                                      // 0x00470f7c    f6c440
                         {disp32} jne       _jmp_addr_0x0047102c                          // 0x00470f7f    0f85a7000000
                         call               esi                                           // 0x00470f85    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2987a0]        // 0x00470f87    2b05a0e7c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2987a4]        // 0x00470f8d    8b15a4e7c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470f93    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470f97    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00470f9b    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x00470f9f    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470fa3    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2987a8]             // 0x00470fa7    d80da8e7c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x00470fad    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00470fb1    e84a043300
                         cmp                eax, dword ptr [edi + 0x00006528]             // 0x00470fb6    3b8728650000
                         {disp8} jae        _jmp_addr_0x00470fc8                          // 0x00470fbc    730a
                         {disp32} mov       dword ptr [edi + 0x00006524], 0x00000001      // 0x00470fbe    c7872465000001000000
_jmp_addr_0x00470fc8:    {disp32} fld       dword ptr [data_bytes + 0x2987a8]             // 0x00470fc8    d905a8e7c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00470fce    d81d98a38a00
                         fnstsw             ax                                            // 0x00470fd4    dfe0
                         test               ah, 0x40                                      // 0x00470fd6    f6c440
                         {disp8} jne        _jmp_addr_0x0047102c                          // 0x00470fd9    7551
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2987a8]        // 0x00470fdb    a1a8e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987ac], eax        // 0x00470fe0    a3ace7c500
                         call               esi                                           // 0x00470fe5    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2987a0]        // 0x00470fe7    2b05a0e7c500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2987a4]        // 0x00470fed    8b0da4e7c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00470ff3    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00470ff7    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x00470ffb    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00470fff    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00471003    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2987a8]             // 0x00471007    d80da8e7c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x0047100d    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00471011    e8ea033300
                         {disp32} mov       dword ptr [data_bytes + 0x2987a4], eax        // 0x00471016    a3a4e7c500
                         call               esi                                           // 0x0047101b    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2987a0], eax        // 0x0047101d    a3a0e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987a8], 0x00000000 // 0x00471022    c705a8e7c50000000000
_jmp_addr_0x0047102c:    call               esi                                           // 0x0047102c    ffd6
                         {disp32} fld       dword ptr [data_bytes + 0x2987a8]             // 0x0047102e    d905a8e7c500
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00471034    d81d98a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x2987a0], eax        // 0x0047103a    a3a0e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987a4], ebp        // 0x0047103f    892da4e7c500
                         fnstsw             ax                                            // 0x00471045    dfe0
                         test               ah, 0x40                                      // 0x00471047    f6c440
                         {disp8} jne        _jmp_addr_0x00471094                          // 0x0047104a    7548
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2987a8]        // 0x0047104c    8b15a8e7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987ac], edx        // 0x00471052    8915ace7c500
                         call               esi                                           // 0x00471058    ffd6
                         sub                eax, dword ptr [data_bytes + 0x2987a0]        // 0x0047105a    2b05a0e7c500
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00471060    89442410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x2987a4]        // 0x00471064    a1a4e7c500
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00471069    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0047106d    df6c2410
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00471071    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00471075    896c2414
                         {disp32} fmul      dword ptr [data_bytes + 0x2987a8]             // 0x00471079    d80da8e7c500
                         {disp8} fiadd      dword ptr [esp + 0x10]                        // 0x0047107f    da442410
                         call               _jmp_addr_0x007a1400                          // 0x00471083    e878033300
                         {disp32} mov       dword ptr [data_bytes + 0x2987a4], eax        // 0x00471088    a3a4e7c500
                         call               esi                                           // 0x0047108d    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2987a0], eax        // 0x0047108f    a3a0e7c500
_jmp_addr_0x00471094:    {disp32} mov       ecx, dword ptr [data_bytes + 0x2987ac]        // 0x00471094    8b0dace7c500
                         {disp32} mov       dword ptr [data_bytes + 0x2987a8], 0x3727c5ac // 0x0047109a    c705a8e7c500acc52737
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x004710a4    894c2410
                         call               esi                                           // 0x004710a8    ffd6
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x2987a0]        // 0x004710aa    8b0da0e7c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x2987a4]        // 0x004710b0    8b15a4e7c500
                         sub.s              eax, ecx                                      // 0x004710b6    2bc1
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x004710b8    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x004710bc    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x004710c0    df6c2418
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004710c4    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x004710c8    896c241c
                         {disp32} fmul      dword ptr [data_bytes + 0x2987a8]             // 0x004710cc    d80da8e7c500
                         {disp8} fiadd      dword ptr [esp + 0x18]                        // 0x004710d2    da442418
                         call               _jmp_addr_0x007a1400                          // 0x004710d6    e825033300
                         {disp32} mov       dword ptr [data_bytes + 0x2987a4], eax        // 0x004710db    a3a4e7c500
                         call               esi                                           // 0x004710e0    ffd6
                         {disp32} mov       dword ptr [data_bytes + 0x2987a0], eax        // 0x004710e2    a3a0e7c500
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x004710e7    8b442410
                         {disp32} mov       dword ptr [data_bytes + 0x2987a8], eax        // 0x004710eb    a3a8e7c500
                         mov                eax, 0x00000001                               // 0x004710f0    b801000000
                         {disp32} mov       dword ptr [edi + 0x0000651c], ebp             // 0x004710f5    89af1c650000
                         {disp32} mov       dword ptr [edi + 0x00006514], eax             // 0x004710fb    898714650000
                         pop                edi                                           // 0x00471101    5f
                         pop                esi                                           // 0x00471102    5e
                         pop                ebp                                           // 0x00471103    5d
                         pop                ebx                                           // 0x00471104    5b
                         add                esp, 0x10                                     // 0x00471105    83c410
                         ret                                                              // 0x00471108    c3
_jmp_addr_0x00471109:    pop                edi                                           // 0x00471109    5f
                         pop                esi                                           // 0x0047110a    5e
                         pop                ebp                                           // 0x0047110b    5d
                         xor.s              eax, eax                                      // 0x0047110c    33c0
                         pop                ebx                                           // 0x0047110e    5b
                         add                esp, 0x10                                     // 0x0047110f    83c410
                         ret                                                              // 0x00471112    c3
                         nop                                                              // 0x00471113    90
                         nop                                                              // 0x00471114    90
                         nop                                                              // 0x00471115    90
                         nop                                                              // 0x00471116    90
                         nop                                                              // 0x00471117    90
                         nop                                                              // 0x00471118    90
                         nop                                                              // 0x00471119    90
                         nop                                                              // 0x0047111a    90
                         nop                                                              // 0x0047111b    90
                         nop                                                              // 0x0047111c    90
                         nop                                                              // 0x0047111d    90
                         nop                                                              // 0x0047111e    90
                         nop                                                              // 0x0047111f    90
                         ret                                                              // 0x00471120    c3
                         nop                                                              // 0x00471121    90
                         nop                                                              // 0x00471122    90
                         nop                                                              // 0x00471123    90
                         nop                                                              // 0x00471124    90
                         nop                                                              // 0x00471125    90
                         nop                                                              // 0x00471126    90
                         nop                                                              // 0x00471127    90
                         nop                                                              // 0x00471128    90
                         nop                                                              // 0x00471129    90
                         nop                                                              // 0x0047112a    90
                         nop                                                              // 0x0047112b    90
                         nop                                                              // 0x0047112c    90
                         nop                                                              // 0x0047112d    90
                         nop                                                              // 0x0047112e    90
                         nop                                                              // 0x0047112f    90
_jmp_addr_0x00471130:    push               esi                                           // 0x00471130    56
                         mov.s              esi, ecx                                      // 0x00471131    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00006524]             // 0x00471133    8b8624650000
                         test               eax, eax                                      // 0x00471139    85c0
                         {disp8} je         _jmp_addr_0x0047114e                          // 0x0047113b    7411
                         {disp32} mov       dword ptr [esi + 0x00006524], 0x00000000      // 0x0047113d    c7862465000000000000
                         mov                eax, 0x00000001                               // 0x00471147    b801000000
                         pop                esi                                           // 0x0047114c    5e
                         ret                                                              // 0x0047114d    c3
_jmp_addr_0x0047114e:    {disp32} lea       ecx, dword ptr [esi + 0x0000030c]             // 0x0047114e    8d8e0c030000
                         call               _jmp_addr_0x0046f5f0                          // 0x00471154    e897e4ffff
                         test               eax, eax                                      // 0x00471159    85c0
                         {disp8} je         _jmp_addr_0x0047116a                          // 0x0047115b    740d
                         mov                eax, 0x00000001                               // 0x0047115d    b801000000
                         {disp32} mov       dword ptr [esi + 0x00006514], eax             // 0x00471162    898614650000
                         pop                esi                                           // 0x00471168    5e
                         ret                                                              // 0x00471169    c3
_jmp_addr_0x0047116a:    xor.s              eax, eax                                      // 0x0047116a    33c0
                         pop                esi                                           // 0x0047116c    5e
                         ret                                                              // 0x0047116d    c3
                         nop                                                              // 0x0047116e    90
                         nop                                                              // 0x0047116f    90
_jmp_addr_0x00471170:    push               esi                                           // 0x00471170    56
                         mov.s              esi, ecx                                      // 0x00471171    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x0000651c]             // 0x00471173    8b861c650000
                         test               eax, eax                                      // 0x00471179    85c0
                         {disp32} mov       eax, dword ptr [esi + 0x00006514]             // 0x0047117b    8b8614650000
                         {disp8} je         _jmp_addr_0x004711a7                          // 0x00471181    7424
                         test               eax, eax                                      // 0x00471183    85c0
                         {disp8} je         _jmp_addr_0x004711c7                          // 0x00471185    7440
                         {disp32} lea       ecx, dword ptr [esi + 0x0000030c]             // 0x00471187    8d8e0c030000
                         call               _jmp_addr_0x0046f660                          // 0x0047118d    e8cee4ffff
                         test               eax, eax                                      // 0x00471192    85c0
                         {disp8} je         _jmp_addr_0x004711c7                          // 0x00471194    7431
                         {disp32} mov       dword ptr [esi + 0x00006514], 0x00000000      // 0x00471196    c7861465000000000000
                         mov                eax, 0x00000001                               // 0x004711a0    b801000000
                         pop                esi                                           // 0x004711a5    5e
                         ret                                                              // 0x004711a6    c3
_jmp_addr_0x004711a7:    test               eax, eax                                      // 0x004711a7    85c0
                         {disp8} je         _jmp_addr_0x004711c7                          // 0x004711a9    741c
                         {disp32} lea       ecx, dword ptr [esi + 0x0000030c]             // 0x004711ab    8d8e0c030000
                         call               ?IsKeyBeingPressed@BindableAction@@QAE_NXZ    // 0x004711b1    e80ae3ffff
                         test               eax, eax                                      // 0x004711b6    85c0
                         {disp8} jne        _jmp_addr_0x004711c7                          // 0x004711b8    750d
                         {disp32} mov       dword ptr [esi + 0x00006514], eax             // 0x004711ba    898614650000
                         mov                eax, 0x00000001                               // 0x004711c0    b801000000
                         pop                esi                                           // 0x004711c5    5e
                         ret                                                              // 0x004711c6    c3
_jmp_addr_0x004711c7:    xor.s              eax, eax                                      // 0x004711c7    33c0
                         pop                esi                                           // 0x004711c9    5e
                         ret                                                              // 0x004711ca    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x004711cb    e8a906f9ff
_jmp_addr_0x004711d0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004711d0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004711d4    8b542404
                         push               eax                                           // 0x004711d8    50
                         mov.s              eax, edx                                      // 0x004711d9    8bc2
                         shl                eax, 6                                        // 0x004711db    c1e006
                         add.s              eax, edx                                      // 0x004711de    03c2
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x004711e0    8d1440
                         lea                ecx, dword ptr [ecx + edx * 0x4]              // 0x004711e3    8d0c91
                         call               _jmp_addr_0x0046f240                          // 0x004711e6    e855e0ffff
                         ret                0x0008                                        // 0x004711eb    c20800
                         nop                                                              // 0x004711ee    90
                         nop                                                              // 0x004711ef    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004711f0    8b542404
                         mov.s              eax, edx                                      // 0x004711f4    8bc2
                         shl                eax, 6                                        // 0x004711f6    c1e006
                         add.s              eax, edx                                      // 0x004711f9    03c2
                         sub                esp, 0x0000028c                               // 0x004711fb    81ec8c020000
                         push               esi                                           // 0x00471201    56
                         push               edi                                           // 0x00471202    57
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00471203    8d0440
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x00471206    8d0481
                         {disp32} lea       esi, dword ptr [eax + 0x00000100]             // 0x00471209    8db000010000
                         mov                ecx, 0x00000042                               // 0x0047120f    b942000000
                         {disp32} lea       edi, dword ptr [esp + 0x0000018c]             // 0x00471214    8dbc248c010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047121b    f3a5
                         {disp32} lea       esi, dword ptr [eax + 0x00000208]             // 0x0047121d    8db008020000
                         mov                ecx, 0x00000041                               // 0x00471223    b941000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000088]             // 0x00471228    8dbc2488000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047122f    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x0000018c]             // 0x00471231    8d8c248c010000
                         call               _jmp_addr_0x0046efd0                          // 0x00471238    e893ddffff
                         test               eax, eax                                      // 0x0047123d    85c0
                         pop                edi                                           // 0x0047123f    5f
                         pop                esi                                           // 0x00471240    5e
                         {disp8} je         _jmp_addr_0x00471256                          // 0x00471241    7413
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00471243    8d4c2400
                         push               ecx                                           // 0x00471247    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000188]             // 0x00471248    8d8c2488010000
                         call               @GetDisplayText__10ControlKeyFPw@12           // 0x0047124f    e88cddffff
                         {disp8} jmp        _jmp_addr_0x00471277                          // 0x00471254    eb21
_jmp_addr_0x00471256:    {disp32} lea       ecx, dword ptr [esp + 0x00000080]             // 0x00471256    8d8c2480000000
                         call               _jmp_addr_0x0046f170                          // 0x0047125d    e80edfffff
                         test               eax, eax                                      // 0x00471262    85c0
                         {disp8} je         _jmp_addr_0x0047128b                          // 0x00471264    7425
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00471266    8d4c2400
                         push               ecx                                           // 0x0047126a    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000084]             // 0x0047126b    8d8c2484000000
                         call               @GetDisplayText__12ControlMouseFPw@12         // 0x00471272    e809dfffff
_jmp_addr_0x00471277:    {disp32} mov       eax, dword ptr [esp + 0x00000294]             // 0x00471277    8b842494020000
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x0047127e    8d542400
                         push               edx                                           // 0x00471282    52
                         push               0x009cd6c8                                    // 0x00471283    68c8d69c00
                         push               eax                                           // 0x00471288    50
                         {disp8} jmp        _jmp_addr_0x0047129d                          // 0x00471289    eb12
_jmp_addr_0x0047128b:    {disp32} mov       ecx, dword ptr [esp + 0x00000294]             // 0x0047128b    8b8c2494020000
                         push               0x009cee1c                                    // 0x00471292    681cee9c00
                         push               0x009cd6c8                                    // 0x00471297    68c8d69c00
                         push               ecx                                           // 0x0047129c    51
_jmp_addr_0x0047129d:    call               dword ptr [rdata_bytes + 0x360]               // 0x0047129d    ff1560938a00
                         add                esp, 0x0c                                     // 0x004712a3    83c40c
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]             // 0x004712a6    8d8c2480000000
                         call               _jmp_addr_0x0046f040                          // 0x004712ad    e88eddffff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000184]             // 0x004712b2    8d8c2484010000
                         call               _jmp_addr_0x0046ee50                          // 0x004712b9    e892dbffff
                         add                esp, 0x0000028c                               // 0x004712be    81c48c020000
                         ret                0x0008                                        // 0x004712c4    c20800
                         nop                                                              // 0x004712c7    90
                         nop                                                              // 0x004712c8    90
                         nop                                                              // 0x004712c9    90
                         nop                                                              // 0x004712ca    90
                         nop                                                              // 0x004712cb    90
                         nop                                                              // 0x004712cc    90
                         nop                                                              // 0x004712cd    90
                         nop                                                              // 0x004712ce    90
                         nop                                                              // 0x004712cf    90
_jmp_addr_0x004712d0:    {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x004712d0    8b542404
                         mov.s              eax, edx                                      // 0x004712d4    8bc2
                         shl                eax, 6                                        // 0x004712d6    c1e006
                         sub                esp, 0x00000108                               // 0x004712d9    81ec08010000
                         push               esi                                           // 0x004712df    56
                         add.s              eax, edx                                      // 0x004712e0    03c2
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x004712e2    8d0440
                         {disp32} lea       esi, dword ptr [ecx + eax * 0x4 + 0x00000100] // 0x004712e5    8db48100010000
                         push               edi                                           // 0x004712ec    57
                         mov                ecx, 0x00000042                               // 0x004712ed    b942000000
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x004712f2    8d7c2408
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004712f6    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x004712f8    8d4c2408
                         call               _jmp_addr_0x0046efd0                          // 0x004712fc    e8cfdcffff
                         test               eax, eax                                      // 0x00471301    85c0
                         pop                edi                                           // 0x00471303    5f
                         pop                esi                                           // 0x00471304    5e
                         {disp8} je         _jmp_addr_0x0047131a                          // 0x00471305    7413
                         {disp32} mov       ecx, dword ptr [esp + 0x00000110]             // 0x00471307    8b8c2410010000
                         push               ecx                                           // 0x0047130e    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0047130f    8d4c2404
                         call               @GetDisplayText__10ControlKeyFPw@12           // 0x00471313    e8c8dcffff
                         {disp8} jmp        _jmp_addr_0x00471335                          // 0x00471318    eb1b
_jmp_addr_0x0047131a:    {disp32} mov       edx, dword ptr [esp + 0x00000110]             // 0x0047131a    8b942410010000
                         push               0x009cee1c                                    // 0x00471321    681cee9c00
                         push               0x009cd6c8                                    // 0x00471326    68c8d69c00
                         push               edx                                           // 0x0047132b    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0047132c    ff1560938a00
                         add                esp, 0x0c                                     // 0x00471332    83c40c
_jmp_addr_0x00471335:    {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00471335    8d4c2400
                         call               _jmp_addr_0x0046ee50                          // 0x00471339    e812dbffff
                         add                esp, 0x00000108                               // 0x0047133e    81c408010000
                         ret                0x0008                                        // 0x00471344    c20800
                         nop                                                              // 0x00471347    90
                         nop                                                              // 0x00471348    90
                         nop                                                              // 0x00471349    90
                         nop                                                              // 0x0047134a    90
                         nop                                                              // 0x0047134b    90
                         nop                                                              // 0x0047134c    90
                         nop                                                              // 0x0047134d    90
                         nop                                                              // 0x0047134e    90
                         nop                                                              // 0x0047134f    90
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00471350    8b542404
                         mov.s              eax, edx                                      // 0x00471354    8bc2
                         shl                eax, 6                                        // 0x00471356    c1e006
                         sub                esp, 0x00000104                               // 0x00471359    81ec04010000
                         push               esi                                           // 0x0047135f    56
                         add.s              eax, edx                                      // 0x00471360    03c2
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00471362    8d0440
                         {disp32} lea       esi, dword ptr [ecx + eax * 0x4 + 0x00000208] // 0x00471365    8db48108020000
                         push               edi                                           // 0x0047136c    57
                         mov                ecx, 0x00000041                               // 0x0047136d    b941000000
                         {disp8} lea        edi, dword ptr [esp + 0x08]                   // 0x00471372    8d7c2408
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00471376    f3a5
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00471378    8d4c2408
                         call               _jmp_addr_0x0046f170                          // 0x0047137c    e8efddffff
                         test               eax, eax                                      // 0x00471381    85c0
                         pop                edi                                           // 0x00471383    5f
                         pop                esi                                           // 0x00471384    5e
                         {disp8} je         _jmp_addr_0x0047139a                          // 0x00471385    7413
                         {disp32} mov       ecx, dword ptr [esp + 0x0000010c]             // 0x00471387    8b8c240c010000
                         push               ecx                                           // 0x0047138e    51
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x0047138f    8d4c2404
                         call               @GetDisplayText__12ControlMouseFPw@12         // 0x00471393    e8e8ddffff
                         {disp8} jmp        _jmp_addr_0x004713b5                          // 0x00471398    eb1b
_jmp_addr_0x0047139a:    {disp32} mov       edx, dword ptr [esp + 0x0000010c]             // 0x0047139a    8b94240c010000
                         push               0x009cee1c                                    // 0x004713a1    681cee9c00
                         push               0x009cd6c8                                    // 0x004713a6    68c8d69c00
                         push               edx                                           // 0x004713ab    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x004713ac    ff1560938a00
                         add                esp, 0x0c                                     // 0x004713b2    83c40c
_jmp_addr_0x004713b5:    {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x004713b5    8d4c2400
                         call               _jmp_addr_0x0046f040                          // 0x004713b9    e882dcffff
                         add                esp, 0x00000104                               // 0x004713be    81c404010000
                         ret                0x0008                                        // 0x004713c4    c20800
                         nop                                                              // 0x004713c7    90
                         nop                                                              // 0x004713c8    90
                         nop                                                              // 0x004713c9    90
                         nop                                                              // 0x004713ca    90
                         nop                                                              // 0x004713cb    90
                         nop                                                              // 0x004713cc    90
                         nop                                                              // 0x004713cd    90
                         nop                                                              // 0x004713ce    90
                         nop                                                              // 0x004713cf    90
_jmp_addr_0x004713d0:    sub                esp, 0x0000031c                               // 0x004713d0    81ec1c030000
                         push               ebx                                           // 0x004713d6    53
                         push               ebp                                           // 0x004713d7    55
                         push               esi                                           // 0x004713d8    56
                         push               edi                                           // 0x004713d9    57
                         mov.s              esi, ecx                                      // 0x004713da    8bf1
                         call               _jmp_addr_0x0046f890                          // 0x004713dc    e8afe4ffff
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x638]          // 0x004713e1    8b2d38968a00
                         xor.s              ebx, ebx                                      // 0x004713e7    33db
                         add                esi, 0x00000208                               // 0x004713e9    81c608020000
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x004713ef    89742410
_jmp_addr_0x004713f3:    push               ebx                                           // 0x004713f3    53
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x004713f4    8d442424
                         push               0x009cee58                                    // 0x004713f8    6858ee9c00
                         push               eax                                           // 0x004713fd    50
                         call               _sprintf                                      // 0x004713fe    e8cf433500
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00471403    8d4c2424
                         push               ecx                                           // 0x00471407    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x00471408    8d542430
                         push               edx                                           // 0x0047140c    52
                         call               ebp                                           // 0x0047140d    ffd5
                         add                esp, 0x14                                     // 0x0047140f    83c414
                         push               ebx                                           // 0x00471412    53
                         mov.s              esi, eax                                      // 0x00471413    8bf0
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00471415    8d442424
                         push               0x009cee44                                    // 0x00471419    6844ee9c00
                         push               eax                                           // 0x0047141e    50
                         call               _sprintf                                      // 0x0047141f    e8ae433500
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00471424    8d4c2428
                         push               ecx                                           // 0x00471428    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x00471429    8d542430
                         push               edx                                           // 0x0047142d    52
                         call               ebp                                           // 0x0047142e    ffd5
                         add                esp, 0x14                                     // 0x00471430    83c414
                         push               ebx                                           // 0x00471433    53
                         mov.s              edi, eax                                      // 0x00471434    8bf8
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00471436    8d442424
                         push               0x009cee30                                    // 0x0047143a    6830ee9c00
                         push               eax                                           // 0x0047143f    50
                         call               _sprintf                                      // 0x00471440    e88d433500
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00471445    8d4c2420
                         push               ecx                                           // 0x00471449    51
                         {disp8} lea        edx, dword ptr [esp + 0x30]                   // 0x0047144a    8d542430
                         push               edx                                           // 0x0047144e    52
                         call               ebp                                           // 0x0047144f    ffd5
                         add                esp, 0x14                                     // 0x00471451    83c414
                         test               esi, esi                                      // 0x00471454    85f6
                         {disp8} jne        _jmp_addr_0x004714c9                          // 0x00471456    7571
                         test               edi, edi                                      // 0x00471458    85ff
                         {disp8} jne        _jmp_addr_0x004714c9                          // 0x0047145a    756d
                         test               eax, eax                                      // 0x0047145c    85c0
                         {disp8} jne        _jmp_addr_0x004714c9                          // 0x0047145e    7569
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00471460    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00471464    8b4c2418
                         push               eax                                           // 0x00471468    50
                         push               ecx                                           // 0x00471469    51
                         {disp32} lea       ecx, dword ptr [esp + 0x0000022c]             // 0x0047146a    8d8c242c020000
                         call               _jmp_addr_0x0046eed0                          // 0x00471471    e85adaffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00471476    8b542410
                         {disp32} lea       edi, dword ptr [edx + -0x00000108]            // 0x0047147a    8dbaf8feffff
                         mov                ecx, 0x00000042                               // 0x00471480    b942000000
                         {disp32} lea       esi, dword ptr [esp + 0x00000224]             // 0x00471485    8db42424020000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047148c    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x00000224]             // 0x0047148e    8d8c2424020000
                         call               _jmp_addr_0x0046ee50                          // 0x00471495    e8b6d9ffff
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0047149a    8b442414
                         push               eax                                           // 0x0047149e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000124]             // 0x0047149f    8d8c2424010000
                         call               _jmp_addr_0x0046f050                          // 0x004714a6    e8a5dbffff
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x004714ab    8b7c2410
                         mov                ecx, 0x00000041                               // 0x004714af    b941000000
                         {disp32} lea       esi, dword ptr [esp + 0x00000120]             // 0x004714b4    8db42420010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004714bb    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x00000120]             // 0x004714bd    8d8c2420010000
                         call               _jmp_addr_0x0046f040                          // 0x004714c4    e877dbffff
_jmp_addr_0x004714c9:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004714c9    8b4c2410
                         inc                ebx                                           // 0x004714cd    43
                         add                ecx, 0x0000030c                               // 0x004714ce    81c10c030000
                         cmp                ebx, 0x21                                     // 0x004714d4    83fb21
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x004714d7    894c2410
                         {disp32} jb        _jmp_addr_0x004713f3                          // 0x004714db    0f8212ffffff
                         pop                edi                                           // 0x004714e1    5f
                         pop                esi                                           // 0x004714e2    5e
                         pop                ebp                                           // 0x004714e3    5d
                         pop                ebx                                           // 0x004714e4    5b
                         add                esp, 0x0000031c                               // 0x004714e5    81c41c030000
                         ret                                                              // 0x004714eb    c3
                         nop                                                              // 0x004714ec    90
                         nop                                                              // 0x004714ed    90
                         nop                                                              // 0x004714ee    90
                         nop                                                              // 0x004714ef    90
_jmp_addr_0x004714f0:    sub                esp, 0x00000518                               // 0x004714f0    81ec18050000
                         push               ebx                                           // 0x004714f6    53
                         push               ebp                                           // 0x004714f7    55
                         push               esi                                           // 0x004714f8    56
                         push               edi                                           // 0x004714f9    57
                         xor.s              ebx, ebx                                      // 0x004714fa    33db
                         {disp32} lea       ebp, dword ptr [ecx + 0x00000208]             // 0x004714fc    8da908020000
_jmp_addr_0x00471502:    {disp32} lea       ecx, dword ptr [esp + 0x00000110]             // 0x00471502    8d8c2410010000
                         call               _jmp_addr_0x0046ee30                          // 0x00471509    e822d9ffff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000218]             // 0x0047150e    8d8c2418020000
                         call               _jmp_addr_0x0046f030                          // 0x00471515    e816dbffff
                         {disp32} lea       eax, dword ptr [ebp + -0x00000108]            // 0x0047151a    8d85f8feffff
                         mov.s              esi, eax                                      // 0x00471520    8bf0
                         mov                ecx, 0x00000042                               // 0x00471522    b942000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000420]             // 0x00471527    8dbc2420040000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047152e    f3a5
                         mov.s              esi, eax                                      // 0x00471530    8bf0
                         mov                ecx, 0x00000042                               // 0x00471532    b942000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000110]             // 0x00471537    8dbc2410010000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047153e    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x00000420]             // 0x00471540    8d8c2420040000
                         call               _jmp_addr_0x0046ee50                          // 0x00471547    e804d9ffff
                         mov                ecx, 0x00000041                               // 0x0047154c    b941000000
                         mov.s              esi, ebp                                      // 0x00471551    8bf5
                         {disp32} lea       edi, dword ptr [esp + 0x0000031c]             // 0x00471553    8dbc241c030000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047155a    f3a5
                         mov                ecx, 0x00000041                               // 0x0047155c    b941000000
                         mov.s              esi, ebp                                      // 0x00471561    8bf5
                         {disp32} lea       edi, dword ptr [esp + 0x00000218]             // 0x00471563    8dbc2418020000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047156a    f3a5
                         {disp32} lea       ecx, dword ptr [esp + 0x0000031c]             // 0x0047156c    8d8c241c030000
                         call               _jmp_addr_0x0046f040                          // 0x00471573    e8c8daffff
                         push               ebx                                           // 0x00471578    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00471579    8d442414
                         push               0x009cee58                                    // 0x0047157d    6858ee9c00
                         push               eax                                           // 0x00471582    50
                         call               _sprintf                                      // 0x00471583    e84a423500
                         {disp32} mov       ecx, dword ptr [esp + 0x0000011c]             // 0x00471588    8b8c241c010000
                         {disp32} mov       esi, dword ptr [rdata_bytes + 0x634]          // 0x0047158f    8b3534968a00
                         push               ecx                                           // 0x00471595    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00471596    8d542420
                         push               edx                                           // 0x0047159a    52
                         call               esi                                           // 0x0047159b    ffd6
                         add                esp, 0x14                                     // 0x0047159d    83c414
                         push               ebx                                           // 0x004715a0    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004715a1    8d442414
                         push               0x009cee44                                    // 0x004715a5    6844ee9c00
                         push               eax                                           // 0x004715aa    50
                         call               _sprintf                                      // 0x004715ab    e822423500
                         {disp32} mov       ecx, dword ptr [esp + 0x000001a0]             // 0x004715b0    8b8c24a0010000
                         push               ecx                                           // 0x004715b7    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x004715b8    8d542420
                         push               edx                                           // 0x004715bc    52
                         call               esi                                           // 0x004715bd    ffd6
                         add                esp, 0x14                                     // 0x004715bf    83c414
                         push               ebx                                           // 0x004715c2    53
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x004715c3    8d442414
                         push               0x009cee30                                    // 0x004715c7    6830ee9c00
                         push               eax                                           // 0x004715cc    50
                         call               _sprintf                                      // 0x004715cd    e800423500
                         {disp32} mov       ecx, dword ptr [esp + 0x00000224]             // 0x004715d2    8b8c2424020000
                         push               ecx                                           // 0x004715d9    51
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x004715da    8d542420
                         push               edx                                           // 0x004715de    52
                         call               esi                                           // 0x004715df    ffd6
                         add                esp, 0x14                                     // 0x004715e1    83c414
                         {disp32} lea       ecx, dword ptr [esp + 0x00000218]             // 0x004715e4    8d8c2418020000
                         call               _jmp_addr_0x0046f040                          // 0x004715eb    e850daffff
                         {disp32} lea       ecx, dword ptr [esp + 0x00000110]             // 0x004715f0    8d8c2410010000
                         call               _jmp_addr_0x0046ee50                          // 0x004715f7    e854d8ffff
                         inc                ebx                                           // 0x004715fc    43
                         add                ebp, 0x0000030c                               // 0x004715fd    81c50c030000
                         cmp                ebx, 0x21                                     // 0x00471603    83fb21
                         {disp32} jb        _jmp_addr_0x00471502                          // 0x00471606    0f82f6feffff
                         pop                edi                                           // 0x0047160c    5f
                         pop                esi                                           // 0x0047160d    5e
                         pop                ebp                                           // 0x0047160e    5d
                         pop                ebx                                           // 0x0047160f    5b
                         add                esp, 0x00000518                               // 0x00471610    81c418050000
                         ret                                                              // 0x00471616    c3
                         nop                                                              // 0x00471617    90
                         nop                                                              // 0x00471618    90
                         nop                                                              // 0x00471619    90
                         nop                                                              // 0x0047161a    90
                         nop                                                              // 0x0047161b    90
                         nop                                                              // 0x0047161c    90
                         nop                                                              // 0x0047161d    90
                         nop                                                              // 0x0047161e    90
                         nop                                                              // 0x0047161f    90
_jmp_addr_0x00471620:    sub                esp, 0x00000104                               // 0x00471620    81ec04010000
                         push               ebx                                           // 0x00471626    53
                         {disp32} mov       ebx, dword ptr [esp + 0x0000010c]             // 0x00471627    8b9c240c010000
                         mov.s              eax, ebx                                      // 0x0047162e    8bc3
                         shl                eax, 6                                        // 0x00471630    c1e006
                         add.s              eax, ebx                                      // 0x00471633    03c3
                         push               esi                                           // 0x00471635    56
                         mov.s              edx, ecx                                      // 0x00471636    8bd1
                         lea                eax, dword ptr [eax + eax * 0x2]              // 0x00471638    8d0440
                         push               edi                                           // 0x0047163b    57
                         {disp32} lea       esi, dword ptr [edx + eax * 0x4 + 0x00000208] // 0x0047163c    8db48208020000
                         mov                ecx, 0x00000041                               // 0x00471643    b941000000
                         {disp8} lea        edi, dword ptr [esp + 0x0c]                   // 0x00471648    8d7c240c
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0047164c    f3a5
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0047164e    8b44240c
                         test               eax, eax                                      // 0x00471652    85c0
                         {disp8} jne        _jmp_addr_0x0047168c                          // 0x00471654    7536
                         push               ebx                                           // 0x00471656    53
                         mov.s              ecx, edx                                      // 0x00471657    8bca
                         call               _jmp_addr_0x00471910                          // 0x00471659    e8b2020000
                         test               eax, eax                                      // 0x0047165e    85c0
                         {disp8} je         _jmp_addr_0x0047168c                          // 0x00471660    742a
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00471662    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x00471668    8b8900032500
                         call               _jmp_addr_0x00471760                          // 0x0047166e    e8ed000000
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00471673    8d4c240c
                         mov.s              esi, eax                                      // 0x00471677    8bf0
                         call               _jmp_addr_0x0046f040                          // 0x00471679    e8c2d9ffff
                         pop                edi                                           // 0x0047167e    5f
                         mov.s              eax, esi                                      // 0x0047167f    8bc6
                         pop                esi                                           // 0x00471681    5e
                         pop                ebx                                           // 0x00471682    5b
                         add                esp, 0x00000104                               // 0x00471683    81c404010000
                         ret                0x0004                                        // 0x00471689    c20400
_jmp_addr_0x0047168c:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0047168c    8b54240c
                         {disp8} lea        eax, dword ptr [edx + -0x01]                  // 0x00471690    8d42ff
                         cmp                eax, 0x04                                     // 0x00471693    83f804
                         {disp32} ja        _jmp_addr_0x00471725                          // 0x00471696    0f8789000000
                         jmp                dword ptr [eax*4 + 0x471740]                  // 0x0047169c    ff248540174700
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004716a3    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004716a7    e894d9ffff
                         pop                edi                                           // 0x004716ac    5f
                         pop                esi                                           // 0x004716ad    5e
                         mov                eax, 0x00000001                               // 0x004716ae    b801000000
                         pop                ebx                                           // 0x004716b3    5b
                         add                esp, 0x00000104                               // 0x004716b4    81c404010000
                         ret                0x0004                                        // 0x004716ba    c20400
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004716bd    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004716c1    e87ad9ffff
                         pop                edi                                           // 0x004716c6    5f
                         pop                esi                                           // 0x004716c7    5e
                         mov                eax, 0x00000002                               // 0x004716c8    b802000000
                         pop                ebx                                           // 0x004716cd    5b
                         add                esp, 0x00000104                               // 0x004716ce    81c404010000
                         ret                0x0004                                        // 0x004716d4    c20400
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004716d7    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004716db    e860d9ffff
                         pop                edi                                           // 0x004716e0    5f
                         pop                esi                                           // 0x004716e1    5e
                         mov                eax, 0x00000004                               // 0x004716e2    b804000000
                         pop                ebx                                           // 0x004716e7    5b
                         add                esp, 0x00000104                               // 0x004716e8    81c404010000
                         ret                0x0004                                        // 0x004716ee    c20400
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004716f1    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x004716f5    e846d9ffff
                         pop                edi                                           // 0x004716fa    5f
                         pop                esi                                           // 0x004716fb    5e
                         mov                eax, 0x00000010                               // 0x004716fc    b810000000
                         pop                ebx                                           // 0x00471701    5b
                         add                esp, 0x00000104                               // 0x00471702    81c404010000
                         ret                0x0004                                        // 0x00471708    c20400
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x0047170b    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x0047170f    e82cd9ffff
                         pop                edi                                           // 0x00471714    5f
                         pop                esi                                           // 0x00471715    5e
                         mov                eax, 0x00000008                               // 0x00471716    b808000000
                         pop                ebx                                           // 0x0047171b    5b
                         add                esp, 0x00000104                               // 0x0047171c    81c404010000
                         ret                0x0004                                        // 0x00471722    c20400
_jmp_addr_0x00471725:    {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00471725    8d4c240c
                         call               _jmp_addr_0x0046f040                          // 0x00471729    e812d9ffff
                         pop                edi                                           // 0x0047172e    5f
                         pop                esi                                           // 0x0047172f    5e
                         or                 eax, -0x1                                     // 0x00471730    83c8ff
                         pop                ebx                                           // 0x00471733    5b
                         add                esp, 0x00000104                               // 0x00471734    81c404010000
                         ret                0x0004                                        // 0x0047173a    c20400

// Snippet: db, [0x0047173d, 0x00471740)
.byte 0x8d, 0x49, 0x00            // 0x0047173d

// Snippet: jmptbl, [0x00471740, 0x00471754)
.byte 0xa3, 0x16, 0x47, 0x00      // 0x00471740
.byte 0xd7, 0x16, 0x47, 0x00      // 0x00471744
.byte 0xf1, 0x16, 0x47, 0x00      // 0x00471748
.byte 0x0b, 0x17, 0x47, 0x00      // 0x0047174c
.byte 0xbd, 0x16, 0x47, 0x00      // 0x00471750

// Snippet: db, [0x00471754, 0x00471760)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00471754
.byte 0x90, 0x90, 0x90, 0x90      // 0x00471758
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047175c

