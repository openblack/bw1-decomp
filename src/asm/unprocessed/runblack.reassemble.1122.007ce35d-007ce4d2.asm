.intel_syntax noprefix
.align 16

.section .text

.globl _jmp_addr_0x007ce38a
.globl _jmp_addr_0x007ce35d

_jmp_addr_0x007ce35d:    push               esi                                            // 0x007ce35d    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x007ce35e    8b742408
                         push               0x0                                            // 0x007ce362    6a00
                         and                dword ptr [esi], 0x00                          // 0x007ce364    832600
                         call               dword ptr [__imp__GetModuleHandleA@4]          // 0x007ce367    ff15cc918a00
                         cmp                word ptr [eax], 0x5a4d                         // 0x007ce36d    6681384d5a
                         {disp8} jne        _jmp_addr_0x007ce388                           // 0x007ce372    7514
                         {disp8} mov        ecx, dword ptr [eax + 0x3c]                    // 0x007ce374    8b483c
                         test               ecx, ecx                                       // 0x007ce377    85c9
                         {disp8} je         _jmp_addr_0x007ce388                           // 0x007ce379    740d
                         add.s              eax, ecx                                       // 0x007ce37b    03c1
                         {disp8} mov        cl, byte ptr [eax + 0x1a]                      // 0x007ce37d    8a481a
                         mov                byte ptr [esi], cl                             // 0x007ce380    880e
                         {disp8} mov        al, byte ptr [eax + 0x1b]                      // 0x007ce382    8a401b
                         {disp8} mov        byte ptr [esi + 0x01], al                      // 0x007ce385    884601
_jmp_addr_0x007ce388:    pop                esi                                            // 0x007ce388    5e
                         ret                                                               // 0x007ce389    c3
_jmp_addr_0x007ce38a:    push               ebp                                            // 0x007ce38a    55
                         mov.s              ebp, esp                                       // 0x007ce38b    8bec
                         mov                eax, 0x0000122c                                // 0x007ce38d    b82c120000
                         call               __chkstk                                       // 0x007ce392    e8198bffff
                         {disp32} lea       eax, dword ptr [ebp + -0x00000098]             // 0x007ce397    8d8568ffffff
                         push               ebx                                            // 0x007ce39d    53
                         push               eax                                            // 0x007ce39e    50
                         {disp32} mov       dword ptr [ebp + -0x00000098], 0x00000094      // 0x007ce39f    c78568ffffff94000000
                         call               dword ptr [__imp__GetVersionExA@4]             // 0x007ce3a9    ff15bc918a00
                         test               eax, eax                                       // 0x007ce3af    85c0
                         {disp8} je         _jmp_addr_0x007ce3cd                           // 0x007ce3b1    741a
                         cmp                dword ptr [ebp + -0x00000088], 0x02            // 0x007ce3b3    83bd78ffffff02
                         {disp8} jne        _jmp_addr_0x007ce3cd                           // 0x007ce3ba    7511
                         cmp                dword ptr [ebp + -0x00000094], 0x05            // 0x007ce3bc    83bd6cffffff05
                         .byte              0x72, 0x8// {disp8} jb _jmp_addr_0x007ce3cd    // 0x007ce3c3    7208
                         push               0x1                                            // 0x007ce3c5    6a01
                         pop                eax                                            // 0x007ce3c7    58
                         {disp32} jmp       _jmp_addr_0x007ce4cf                           // 0x007ce3c8    e902010000
_jmp_addr_0x007ce3cd:    {disp32} lea       eax, dword ptr [ebp + -0x0000122c]             // 0x007ce3cd    8d85d4edffff
                         push               0x00001090                                     // 0x007ce3d3    6890100000
                         push               eax                                            // 0x007ce3d8    50
                         push               0x009a09dc                                     // 0x007ce3d9    68dc099a00
                         call               dword ptr [__imp__GetEnvironmentVariableA@4]   // 0x007ce3de    ff15c0928a00
                         test               eax, eax                                       // 0x007ce3e4    85c0
                         {disp32} je        _jmp_addr_0x007ce4bc                           // 0x007ce3e6    0f84d0000000
                         xor.s              ebx, ebx                                       // 0x007ce3ec    33db
                         {disp32} lea       ecx, dword ptr [ebp + -0x0000122c]             // 0x007ce3ee    8d8dd4edffff
                         cmp                byte ptr [ebp + -0x0000122c], bl               // 0x007ce3f4    389dd4edffff
                         {disp8} je         _jmp_addr_0x007ce40f                           // 0x007ce3fa    7413
_jmp_addr_0x007ce3fc:    mov                al, byte ptr [ecx]                             // 0x007ce3fc    8a01
                         cmp                al, 0x61                                       // 0x007ce3fe    3c61
                         {disp8} jl         _jmp_addr_0x007ce40a                           // 0x007ce400    7c08
                         cmp                al, 0x7a                                       // 0x007ce402    3c7a
                         {disp8} jg         _jmp_addr_0x007ce40a                           // 0x007ce404    7f04
                         sub                al, 0x20                                       // 0x007ce406    2c20
                         mov                byte ptr [ecx], al                             // 0x007ce408    8801
_jmp_addr_0x007ce40a:    inc                ecx                                            // 0x007ce40a    41
                         cmp                byte ptr [ecx], bl                             // 0x007ce40b    3819
                         {disp8} jne        _jmp_addr_0x007ce3fc                           // 0x007ce40d    75ed
_jmp_addr_0x007ce40f:    {disp32} lea       eax, dword ptr [ebp + -0x0000122c]             // 0x007ce40f    8d85d4edffff
                         push               0x16                                           // 0x007ce415    6a16
                         push               eax                                            // 0x007ce417    50
                         push               0x009a09c4                                     // 0x007ce418    68c4099a00
                         call               _strncmp                                       // 0x007ce41d    e87eadffff
                         add                esp, 0x0c                                      // 0x007ce422    83c40c
                         test               eax, eax                                       // 0x007ce425    85c0
                         {disp8} jne        _jmp_addr_0x007ce431                           // 0x007ce427    7508
                         {disp32} lea       eax, dword ptr [ebp + -0x0000122c]             // 0x007ce429    8d85d4edffff
                         {disp8} jmp        _jmp_addr_0x007ce47a                           // 0x007ce42f    eb49
_jmp_addr_0x007ce431:    {disp32} lea       eax, dword ptr [ebp + -0x0000019c]             // 0x007ce431    8d8564feffff
                         push               0x00000104                                     // 0x007ce437    6804010000
                         push               eax                                            // 0x007ce43c    50
                         push               ebx                                            // 0x007ce43d    53
                         call               dword ptr [__imp__GetModuleFileNameA@4]        // 0x007ce43e    ff15f4928a00
                         cmp                byte ptr [ebp + -0x0000019c], bl               // 0x007ce444    389d64feffff
                         {disp32} lea       ecx, dword ptr [ebp + -0x0000019c]             // 0x007ce44a    8d8d64feffff
                         {disp8} je         _jmp_addr_0x007ce465                           // 0x007ce450    7413
_jmp_addr_0x007ce452:    mov                al, byte ptr [ecx]                             // 0x007ce452    8a01
                         cmp                al, 0x61                                       // 0x007ce454    3c61
                         {disp8} jl         _jmp_addr_0x007ce460                           // 0x007ce456    7c08
                         cmp                al, 0x7a                                       // 0x007ce458    3c7a
                         {disp8} jg         _jmp_addr_0x007ce460                           // 0x007ce45a    7f04
                         sub                al, 0x20                                       // 0x007ce45c    2c20
                         mov                byte ptr [ecx], al                             // 0x007ce45e    8801
_jmp_addr_0x007ce460:    inc                ecx                                            // 0x007ce460    41
                         cmp                byte ptr [ecx], bl                             // 0x007ce461    3819
                         {disp8} jne        _jmp_addr_0x007ce452                           // 0x007ce463    75ed
_jmp_addr_0x007ce465:    {disp32} lea       eax, dword ptr [ebp + -0x0000019c]             // 0x007ce465    8d8564feffff
                         push               eax                                            // 0x007ce46b    50
                         {disp32} lea       eax, dword ptr [ebp + -0x0000122c]             // 0x007ce46c    8d85d4edffff
                         push               eax                                            // 0x007ce472    50
                         call               _strstr                                        // 0x007ce473    e8e8b0ffff
                         pop                ecx                                            // 0x007ce478    59
                         pop                ecx                                            // 0x007ce479    59
_jmp_addr_0x007ce47a:    cmp.s              eax, ebx                                       // 0x007ce47a    3bc3
                         {disp8} je         _jmp_addr_0x007ce4bc                           // 0x007ce47c    743e
                         push               0x2c                                           // 0x007ce47e    6a2c
                         push               eax                                            // 0x007ce480    50
                         call               _strchr                                        // 0x007ce481    e86aadffff
                         pop                ecx                                            // 0x007ce486    59
                         cmp.s              eax, ebx                                       // 0x007ce487    3bc3
                         pop                ecx                                            // 0x007ce489    59
                         {disp8} je         _jmp_addr_0x007ce4bc                           // 0x007ce48a    7430
                         inc                eax                                            // 0x007ce48c    40
                         mov.s              ecx, eax                                       // 0x007ce48d    8bc8
                         cmp                byte ptr [eax], bl                             // 0x007ce48f    3818
                         {disp8} je         _jmp_addr_0x007ce4a1                           // 0x007ce491    740e
_jmp_addr_0x007ce493:    cmp                byte ptr [ecx], 0x3b                           // 0x007ce493    80393b
                         {disp8} jne        _jmp_addr_0x007ce49c                           // 0x007ce496    7504
                         mov                byte ptr [ecx], bl                             // 0x007ce498    8819
                         {disp8} jmp        _jmp_addr_0x007ce49d                           // 0x007ce49a    eb01
_jmp_addr_0x007ce49c:    inc                ecx                                            // 0x007ce49c    41
_jmp_addr_0x007ce49d:    cmp                byte ptr [ecx], bl                             // 0x007ce49d    3819
                         {disp8} jne        _jmp_addr_0x007ce493                           // 0x007ce49f    75f2
_jmp_addr_0x007ce4a1:    push               0xa                                            // 0x007ce4a1    6a0a
                         push               ebx                                            // 0x007ce4a3    53
                         push               eax                                            // 0x007ce4a4    50
                         call               _strtol                                        // 0x007ce4a5    e831a9ffff
                         add                esp, 0x0c                                      // 0x007ce4aa    83c40c
                         cmp                eax, 0x02                                      // 0x007ce4ad    83f802
                         {disp8} je         _jmp_addr_0x007ce4cf                           // 0x007ce4b0    741d
                         cmp                eax, 0x03                                      // 0x007ce4b2    83f803
                         {disp8} je         _jmp_addr_0x007ce4cf                           // 0x007ce4b5    7418
                         cmp                eax, 0x01                                      // 0x007ce4b7    83f801
                         {disp8} je         _jmp_addr_0x007ce4cf                           // 0x007ce4ba    7413
_jmp_addr_0x007ce4bc:    {disp8} lea        eax, dword ptr [ebp + -0x04]                   // 0x007ce4bc    8d45fc
                         push               eax                                            // 0x007ce4bf    50
                         call               _jmp_addr_0x007ce35d                           // 0x007ce4c0    e898feffff
                         cmp                byte ptr [ebp + -0x04], 0x06                   // 0x007ce4c5    807dfc06
                         pop                ecx                                            // 0x007ce4c9    59
                         sbb.s              eax, eax                                       // 0x007ce4ca    1bc0
                         add                eax, 0x03                                      // 0x007ce4cc    83c003
_jmp_addr_0x007ce4cf:    pop                ebx                                            // 0x007ce4cf    5b
                         leave                                                             // 0x007ce4d0    c9
                         ret                                                               // 0x007ce4d1    c3
