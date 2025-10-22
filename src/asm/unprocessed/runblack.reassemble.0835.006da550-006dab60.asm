.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436a70
.extern _jmp_addr_0x00550e40
.extern @__ct__5TotemFRC9MapCoordsPC10GAbodeInfoP4Townfffi@36
.extern _jmp_addr_0x00737790
.extern ?Load@Totem@@UAEIAAVGameOSFile@@@Z
.extern ?Save@Totem@@UAEIAAVGameOSFile@@@Z
.extern _jmp_addr_0x007a1400
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20

.globl _jmp_addr_0x006da550
.globl _jmp_addr_0x006da6d0
.globl _jmp_addr_0x006dab00
.globl ?ValidForLockedSelectProcess@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z
.globl ?InterfaceValidToTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z
.globl ?InterfaceTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z
.globl ?SetMaxHeight@PuzzleTotem@@UAEXM@Z
.globl ?Load@PuzzleTotem@@UAEIAAVGameOSFile@@@Z
.globl ?Save@PuzzleTotem@@UAEIAAVGameOSFile@@@Z
.globl ?NetworkFriendlyStartLockedSelect@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z
.globl ?NetworkUnfriendlyStartLockedSelect@PuzzleTotem@@UAEIXZ
.globl ?NetworkUnfriendlyEndLockedSelect@PuzzleTotem@@UAEIXZ
.globl ?NetworkFriendlyEndLockedSelect@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z
.globl ?NetworkUnfriendlyLockedSelect@PuzzleTotem@@UAEIPAUControlHandUpdateInfo@@@Z

start_0x006da550_0x006dab60:
// Snippet: asm, [0x006da550, 0x006dab30)
_jmp_addr_0x006da550:    push               esi                                           // 0x006da550    56
                         push               0x000007e0                                    // 0x006da551    68e0070000
                         push               0x00c09908                                    // 0x006da556    680899c000
                         push               0x000000fc                                    // 0x006da55b    68fc000000
                         call               ?__nw@Base@@SAPAXK@Z                          // 0x006da560    e88bc1d5ff
                         mov.s              esi, eax                                      // 0x006da565    8bf0
                         add                esp, 0x0c                                     // 0x006da567    83c40c
                         test               esi, esi                                      // 0x006da56a    85f6
                         {disp8} je         _jmp_addr_0x006da5c7                          // 0x006da56c    7459
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x006da56e    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006da572    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x006da576    8b542418
                         push               edi                                           // 0x006da57a    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x006da57b    8b7c240c
                         push               eax                                           // 0x006da57f    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x006da580    8b44241c
                         push               ecx                                           // 0x006da584    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x006da585    8b4c241c
                         push               edx                                           // 0x006da589    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x006da58a    8b54241c
                         push               eax                                           // 0x006da58e    50
                         push               ecx                                           // 0x006da58f    51
                         push               edx                                           // 0x006da590    52
                         push               edi                                           // 0x006da591    57
                         mov.s              ecx, esi                                      // 0x006da592    8bce
                         call               @__ct__5TotemFRC9MapCoordsPC10GAbodeInfoP4Townfffi@36                          // 0x006da594    e8f7cd0500
                         or                 byte ptr [esi + 0x25], 0x40                   // 0x006da599    804e2540
                         mov                dword ptr [esi], 0x008edb84                   // 0x006da59d    c70684db8e00
                         {disp32} mov       dword ptr [esi + 0x000000f0], 0x00000000      // 0x006da5a3    c786f000000000000000
                         {disp32} mov       dword ptr [esi + 0x000000e4], 0x00000064      // 0x006da5ad    c786e400000064000000
                         mov                eax, dword ptr [esi]                          // 0x006da5b7    8b06
                         push               edi                                           // 0x006da5b9    57
                         mov.s              ecx, esi                                      // 0x006da5ba    8bce
                         call               dword ptr [eax + 0x658]                       // 0x006da5bc    ff9058060000
                         pop                edi                                           // 0x006da5c2    5f
                         mov.s              eax, esi                                      // 0x006da5c3    8bc6
                         pop                esi                                           // 0x006da5c5    5e
                         ret                                                              // 0x006da5c6    c3
_jmp_addr_0x006da5c7:    xor.s              eax, eax                                      // 0x006da5c7    33c0
                         pop                esi                                           // 0x006da5c9    5e
                         ret                                                              // 0x006da5ca    c3
                         nop                                                              // 0x006da5cb    90
                         nop                                                              // 0x006da5cc    90
                         nop                                                              // 0x006da5cd    90
                         nop                                                              // 0x006da5ce    90
                         nop                                                              // 0x006da5cf    90
?ValidForLockedSelectProcess@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z:
                         mov                eax, dword ptr [ecx]                          // 0x006da5d0    8b01
                         call               dword ptr [eax + 0xd4]                        // 0x006da5d2    ff90d4000000
                         neg                eax                                           // 0x006da5d8    f7d8
                         sbb.s              eax, eax                                      // 0x006da5da    1bc0
                         neg                eax                                           // 0x006da5dc    f7d8
                         ret                0x0004                                        // 0x006da5de    c20400
                         nop                                                              // 0x006da5e1    90
                         nop                                                              // 0x006da5e2    90
                         nop                                                              // 0x006da5e3    90
                         nop                                                              // 0x006da5e4    90
                         nop                                                              // 0x006da5e5    90
                         nop                                                              // 0x006da5e6    90
                         nop                                                              // 0x006da5e7    90
                         nop                                                              // 0x006da5e8    90
                         nop                                                              // 0x006da5e9    90
                         nop                                                              // 0x006da5ea    90
                         nop                                                              // 0x006da5eb    90
                         nop                                                              // 0x006da5ec    90
                         nop                                                              // 0x006da5ed    90
                         nop                                                              // 0x006da5ee    90
                         nop                                                              // 0x006da5ef    90
?InterfaceValidToTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z:
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e4]             // 0x006da5f0    8b91e4000000
                         xor.s              eax, eax                                      // 0x006da5f6    33c0
                         cmp                edx, -0x01                                    // 0x006da5f8    83faff
                         sete               al                                            // 0x006da5fb    0f94c0
                         ret                0x0004                                        // 0x006da5fe    c20400
                         nop                                                              // 0x006da601    90
                         nop                                                              // 0x006da602    90
                         nop                                                              // 0x006da603    90
                         nop                                                              // 0x006da604    90
                         nop                                                              // 0x006da605    90
                         nop                                                              // 0x006da606    90
                         nop                                                              // 0x006da607    90
                         nop                                                              // 0x006da608    90
                         nop                                                              // 0x006da609    90
                         nop                                                              // 0x006da60a    90
                         nop                                                              // 0x006da60b    90
                         nop                                                              // 0x006da60c    90
                         nop                                                              // 0x006da60d    90
                         nop                                                              // 0x006da60e    90
                         nop                                                              // 0x006da60f    90
?InterfaceTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z:
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e4]             // 0x006da610    8b91e4000000
                         or                 eax, -0x1                                     // 0x006da616    83c8ff
                         sub                esp, 0x00000168                               // 0x006da619    81ec68010000
                         cmp.s              edx, eax                                      // 0x006da61f    3bd0
                         {disp8} jne        _jmp_addr_0x006da629                          // 0x006da621    7506
                         {disp32} mov       dword ptr [ecx + 0x000000e8], eax             // 0x006da623    8981e8000000
_jmp_addr_0x006da629:    {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x006da629    8d4c2400
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x006da62d    ff155c978a00
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x006da633    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x006da639    8b81ac030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x006da63f    89442404
                         xor.s              eax, eax                                      // 0x006da643    33c0
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x006da645    8d542400
                         push               edx                                           // 0x006da649    52
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x006da64a    c744242801000000
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x006da652    89442424
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006da656    8944240c
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x006da65a    e8d1f7d4ff
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x006da65f    8d4c2400
                         call               dword ptr [rdata_bytes + 0x758]               // 0x006da663    ff1558978a00
                         mov                eax, 0x00000001                               // 0x006da669    b801000000
                         add                esp, 0x00000168                               // 0x006da66e    81c468010000
                         ret                0x0004                                        // 0x006da674    c20400
                         nop                                                              // 0x006da677    90
                         nop                                                              // 0x006da678    90
                         nop                                                              // 0x006da679    90
                         nop                                                              // 0x006da67a    90
                         nop                                                              // 0x006da67b    90
                         nop                                                              // 0x006da67c    90
                         nop                                                              // 0x006da67d    90
                         nop                                                              // 0x006da67e    90
                         nop                                                              // 0x006da67f    90
                         push               ecx                                           // 0x006da680    51
                         push               esi                                           // 0x006da681    56
                         mov.s              esi, ecx                                      // 0x006da682    8bf1
                         push               edi                                           // 0x006da684    57
                         {disp32} mov       edi, dword ptr [esi + 0x000000e4]             // 0x006da685    8bbee4000000
                         cmp                edi, -0x01                                    // 0x006da68b    83ffff
                         {disp8} mov        dword ptr [esp + 0x08], edi                   // 0x006da68e    897c2408
                         {disp8} jne        _jmp_addr_0x006da6a0                          // 0x006da692    750c
                         {disp32} mov       dword ptr [esi + 0x000000e8], edi             // 0x006da694    89bee8000000
                         pop                edi                                           // 0x006da69a    5f
                         pop                esi                                           // 0x006da69b    5e
                         pop                ecx                                           // 0x006da69c    59
                         ret                0x0004                                        // 0x006da69d    c20400
_jmp_addr_0x006da6a0:    {disp8} fild       dword ptr [esp + 0x08]                        // 0x006da6a0    db442408
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x006da6a4    d84c2410
                         call               _jmp_addr_0x007a1400                          // 0x006da6a8    e8536d0c00
                         cmp.s              eax, edi                                      // 0x006da6ad    3bc7
                         {disp32} mov       dword ptr [esi + 0x000000e8], eax             // 0x006da6af    8986e8000000
                         {disp8} jle        _jmp_addr_0x006da6bd                          // 0x006da6b5    7e06
                         {disp32} mov       dword ptr [esi + 0x000000e8], edi             // 0x006da6b7    89bee8000000
_jmp_addr_0x006da6bd:    pop                edi                                           // 0x006da6bd    5f
                         pop                esi                                           // 0x006da6be    5e
                         pop                ecx                                           // 0x006da6bf    59
                         ret                0x0004                                        // 0x006da6c0    c20400
                         nop                                                              // 0x006da6c3    90
                         nop                                                              // 0x006da6c4    90
                         nop                                                              // 0x006da6c5    90
                         nop                                                              // 0x006da6c6    90
                         nop                                                              // 0x006da6c7    90
                         nop                                                              // 0x006da6c8    90
                         nop                                                              // 0x006da6c9    90
                         nop                                                              // 0x006da6ca    90
                         nop                                                              // 0x006da6cb    90
                         nop                                                              // 0x006da6cc    90
                         nop                                                              // 0x006da6cd    90
                         nop                                                              // 0x006da6ce    90
                         nop                                                              // 0x006da6cf    90
_jmp_addr_0x006da6d0:    push               ecx                                           // 0x006da6d0    51
                         push               esi                                           // 0x006da6d1    56
                         mov.s              esi, ecx                                      // 0x006da6d2    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000e4]             // 0x006da6d4    8b8ee4000000
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x006da6da    894c2404
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x006da6de    db442404
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x006da6e2    d85c240c
                         fnstsw             ax                                            // 0x006da6e6    dfe0
                         test               ah, 0x41                                      // 0x006da6e8    f6c441
                         {disp8} jne        _jmp_addr_0x006da701                          // 0x006da6eb    7514
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x006da6ed    d944240c
                         call               _jmp_addr_0x007a1400                          // 0x006da6f1    e80a6d0c00
                         {disp32} mov       dword ptr [esi + 0x000000e8], eax             // 0x006da6f6    8986e8000000
                         pop                esi                                           // 0x006da6fc    5e
                         pop                ecx                                           // 0x006da6fd    59
                         ret                0x0004                                        // 0x006da6fe    c20400
_jmp_addr_0x006da701:    {disp32} mov       dword ptr [esi + 0x000000e8], ecx             // 0x006da701    898ee8000000
                         pop                esi                                           // 0x006da707    5e
                         pop                ecx                                           // 0x006da708    59
                         ret                0x0004                                        // 0x006da709    c20400
                         nop                                                              // 0x006da70c    90
                         nop                                                              // 0x006da70d    90
                         nop                                                              // 0x006da70e    90
                         nop                                                              // 0x006da70f    90
?SetMaxHeight@PuzzleTotem@@UAEXM@Z:
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x006da710    d9442404
                         push               esi                                           // 0x006da714    56
                         mov.s              esi, ecx                                      // 0x006da715    8bf1
                         call               _jmp_addr_0x007a1400                          // 0x006da717    e8e46c0c00
                         {disp32} fild      dword ptr [esi + 0x000000e8]                  // 0x006da71c    db86e8000000
                         push               ecx                                           // 0x006da722    51
                         {disp32} mov       dword ptr [esi + 0x000000e4], eax             // 0x006da723    8986e4000000
                         mov                eax, dword ptr [esi]                          // 0x006da729    8b06
                         fstp               dword ptr [esp]                               // 0x006da72b    d91c24
                         mov.s              ecx, esi                                      // 0x006da72e    8bce
                         call               dword ptr [eax + 0x144]                       // 0x006da730    ff9044010000
                         pop                esi                                           // 0x006da736    5e
                         ret                0x0004                                        // 0x006da737    c20400
                         nop                                                              // 0x006da73a    90
                         nop                                                              // 0x006da73b    90
                         nop                                                              // 0x006da73c    90
                         nop                                                              // 0x006da73d    90
                         nop                                                              // 0x006da73e    90
                         nop                                                              // 0x006da73f    90
?Load@PuzzleTotem@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x006da740    53
                         push               esi                                           // 0x006da741    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x006da742    8b74240c
                         mov.s              ebx, ecx                                      // 0x006da746    8bd9
                         push               esi                                           // 0x006da748    56
                         call               ?Load@Totem@@UAEIAAVGameOSFile@@@Z            // 0x006da749    e8b2d00500
                         test               eax, eax                                      // 0x006da74e    85c0
                         {disp32} je        _jmp_addr_0x006da7e0                          // 0x006da750    0f848a000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x006da756    a194c9be00
                         test               eax, eax                                      // 0x006da75b    85c0
                         push               edi                                           // 0x006da75d    57
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e4]             // 0x006da75e    8dbbe4000000
                         {disp8} je         _jmp_addr_0x006da796                          // 0x006da764    7430
                         push               0x0                                           // 0x006da766    6a00
                         push               0x4                                           // 0x006da768    6a04
                         push               edi                                           // 0x006da76a    57
                         mov.s              ecx, esi                                      // 0x006da76b    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x006da76d    e86e210e00
                         cmp                eax, 0x03                                     // 0x006da772    83f803
                         {disp8} jne        _jmp_addr_0x006da781                          // 0x006da775    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006da777    c70594c9be0000000000
_jmp_addr_0x006da781:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x006da781    8b8e14020000
                         xor.s              eax, eax                                      // 0x006da787    33c0
                         mov                al, byte ptr [edi]                            // 0x006da789    8a07
                         add                eax, 0x04                                     // 0x006da78b    83c004
                         add.s              ecx, eax                                      // 0x006da78e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x006da790    898e14020000
_jmp_addr_0x006da796:    {disp32} mov       eax, dword ptr [data_bytes + 0x226994]        // 0x006da796    a194c9be00
                         test               eax, eax                                      // 0x006da79b    85c0
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e8]             // 0x006da79d    8dbbe8000000
                         {disp8} je         _jmp_addr_0x006da7d5                          // 0x006da7a3    7430
                         push               0x0                                           // 0x006da7a5    6a00
                         push               0x4                                           // 0x006da7a7    6a04
                         push               edi                                           // 0x006da7a9    57
                         mov.s              ecx, esi                                      // 0x006da7aa    8bce
                         call               @Read__8LHOSFileFPvUlPUl@20                   // 0x006da7ac    e82f210e00
                         cmp                eax, 0x03                                     // 0x006da7b1    83f803
                         {disp8} jne        _jmp_addr_0x006da7c0                          // 0x006da7b4    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226994], 0x00000000 // 0x006da7b6    c70594c9be0000000000
_jmp_addr_0x006da7c0:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x006da7c0    8b8614020000
                         xor.s              ecx, ecx                                      // 0x006da7c6    33c9
                         mov                cl, byte ptr [edi]                            // 0x006da7c8    8a0f
                         add                ecx, 0x4                                      // 0x006da7ca    83c104
                         add.s              eax, ecx                                      // 0x006da7cd    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x006da7cf    898614020000
_jmp_addr_0x006da7d5:    pop                edi                                           // 0x006da7d5    5f
                         pop                esi                                           // 0x006da7d6    5e
                         mov                eax, 0x00000001                               // 0x006da7d7    b801000000
                         pop                ebx                                           // 0x006da7dc    5b
                         ret                0x0004                                        // 0x006da7dd    c20400
_jmp_addr_0x006da7e0:    pop                esi                                           // 0x006da7e0    5e
                         xor.s              eax, eax                                      // 0x006da7e1    33c0
                         pop                ebx                                           // 0x006da7e3    5b
                         ret                0x0004                                        // 0x006da7e4    c20400
                         nop                                                              // 0x006da7e7    90
                         nop                                                              // 0x006da7e8    90
                         nop                                                              // 0x006da7e9    90
                         nop                                                              // 0x006da7ea    90
                         nop                                                              // 0x006da7eb    90
                         nop                                                              // 0x006da7ec    90
                         nop                                                              // 0x006da7ed    90
                         nop                                                              // 0x006da7ee    90
                         nop                                                              // 0x006da7ef    90
?Save@PuzzleTotem@@UAEIAAVGameOSFile@@@Z:
                         push               ebx                                           // 0x006da7f0    53
                         push               esi                                           // 0x006da7f1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x006da7f2    8b74240c
                         mov.s              ebx, ecx                                      // 0x006da7f6    8bd9
                         push               esi                                           // 0x006da7f8    56
                         call               ?Save@Totem@@UAEIAAVGameOSFile@@@Z            // 0x006da7f9    e8b2d00500
                         test               eax, eax                                      // 0x006da7fe    85c0
                         {disp32} je        _jmp_addr_0x006da890                          // 0x006da800    0f848a000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x006da806    a190c9be00
                         test               eax, eax                                      // 0x006da80b    85c0
                         push               edi                                           // 0x006da80d    57
                         {disp8} je         _jmp_addr_0x006da885                          // 0x006da80e    7475
                         push               0x0                                           // 0x006da810    6a00
                         push               0x4                                           // 0x006da812    6a04
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e4]             // 0x006da814    8dbbe4000000
                         push               edi                                           // 0x006da81a    57
                         mov.s              ecx, esi                                      // 0x006da81b    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x006da81d    e8fe200e00
                         cmp                eax, 0x03                                     // 0x006da822    83f803
                         {disp8} jne        _jmp_addr_0x006da831                          // 0x006da825    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x006da827    c70590c9be0000000000
_jmp_addr_0x006da831:    {disp32} mov       ecx, dword ptr [esi + 0x00000214]             // 0x006da831    8b8e14020000
                         xor.s              eax, eax                                      // 0x006da837    33c0
                         mov                al, byte ptr [edi]                            // 0x006da839    8a07
                         add                eax, 0x04                                     // 0x006da83b    83c004
                         add.s              ecx, eax                                      // 0x006da83e    03c8
                         {disp32} mov       dword ptr [esi + 0x00000214], ecx             // 0x006da840    898e14020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x226990]        // 0x006da846    a190c9be00
                         test               eax, eax                                      // 0x006da84b    85c0
                         {disp8} je         _jmp_addr_0x006da885                          // 0x006da84d    7436
                         push               0x0                                           // 0x006da84f    6a00
                         push               0x4                                           // 0x006da851    6a04
                         {disp32} lea       edi, dword ptr [ebx + 0x000000e8]             // 0x006da853    8dbbe8000000
                         push               edi                                           // 0x006da859    57
                         mov.s              ecx, esi                                      // 0x006da85a    8bce
                         call               @Write__8LHOSFileFPvUlPUl@20                  // 0x006da85c    e8bf200e00
                         cmp                eax, 0x03                                     // 0x006da861    83f803
                         {disp8} jne        _jmp_addr_0x006da870                          // 0x006da864    750a
                         {disp32} mov       dword ptr [data_bytes + 0x226990], 0x00000000 // 0x006da866    c70590c9be0000000000
_jmp_addr_0x006da870:    {disp32} mov       eax, dword ptr [esi + 0x00000214]             // 0x006da870    8b8614020000
                         xor.s              ecx, ecx                                      // 0x006da876    33c9
                         mov                cl, byte ptr [edi]                            // 0x006da878    8a0f
                         add                ecx, 0x4                                      // 0x006da87a    83c104
                         add.s              eax, ecx                                      // 0x006da87d    03c1
                         {disp32} mov       dword ptr [esi + 0x00000214], eax             // 0x006da87f    898614020000
_jmp_addr_0x006da885:    pop                edi                                           // 0x006da885    5f
                         pop                esi                                           // 0x006da886    5e
                         mov                eax, 0x00000001                               // 0x006da887    b801000000
                         pop                ebx                                           // 0x006da88c    5b
                         ret                0x0004                                        // 0x006da88d    c20400
_jmp_addr_0x006da890:    pop                esi                                           // 0x006da890    5e
                         xor.s              eax, eax                                      // 0x006da891    33c0
                         pop                ebx                                           // 0x006da893    5b
                         ret                0x0004                                        // 0x006da894    c20400
                         nop                                                              // 0x006da897    90
                         nop                                                              // 0x006da898    90
                         nop                                                              // 0x006da899    90
                         nop                                                              // 0x006da89a    90
                         nop                                                              // 0x006da89b    90
                         nop                                                              // 0x006da89c    90
                         nop                                                              // 0x006da89d    90
                         nop                                                              // 0x006da89e    90
                         nop                                                              // 0x006da89f    90
?NetworkFriendlyStartLockedSelect@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z:
                         push               esi                                           // 0x006da8a0    56
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x006da8a1    8d4114
                         mov                esi, dword ptr [eax]                          // 0x006da8a4    8b30
                         {disp32} lea       edx, dword ptr [ecx + 0x000000c4]             // 0x006da8a6    8d91c4000000
                         mov                dword ptr [edx], esi                          // 0x006da8ac    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x006da8ae    8b7004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006da8b1    8b4008
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x006da8b4    897204
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x006da8b7    894208
                         {disp32} fld       dword ptr [ecx + 0x000000cc]                  // 0x006da8ba    d981cc000000
                         {disp32} fsub      dword ptr [ecx + 0x000000d8]                  // 0x006da8c0    d8a1d8000000
                         mov                eax, 0x00000001                               // 0x006da8c6    b801000000
                         pop                esi                                           // 0x006da8cb    5e
                         {disp32} fst       dword ptr [ecx + 0x000000f4]                  // 0x006da8cc    d991f4000000
                         {disp32} fstp      dword ptr [ecx + 0x000000f8]                  // 0x006da8d2    d999f8000000
                         ret                0x0004                                        // 0x006da8d8    c20400
                         nop                                                              // 0x006da8db    90
                         nop                                                              // 0x006da8dc    90
                         nop                                                              // 0x006da8dd    90
                         nop                                                              // 0x006da8de    90
                         nop                                                              // 0x006da8df    90
?NetworkUnfriendlyStartLockedSelect@PuzzleTotem@@UAEIXZ:
                         push               esi                                           // 0x006da8e0    56
                         {disp8} lea        eax, dword ptr [ecx + 0x14]                   // 0x006da8e1    8d4114
                         mov                esi, dword ptr [eax]                          // 0x006da8e4    8b30
                         {disp32} lea       edx, dword ptr [ecx + 0x000000c4]             // 0x006da8e6    8d91c4000000
                         mov                dword ptr [edx], esi                          // 0x006da8ec    8932
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x006da8ee    8b7004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x006da8f1    8b4008
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x006da8f4    897204
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x006da8f7    894208
                         {disp32} fld       dword ptr [ecx + 0x000000cc]                  // 0x006da8fa    d981cc000000
                         {disp32} fsub      dword ptr [ecx + 0x000000d8]                  // 0x006da900    d8a1d8000000
                         mov                eax, 0x00000001                               // 0x006da906    b801000000
                         pop                esi                                           // 0x006da90b    5e
                         {disp32} fst       dword ptr [ecx + 0x000000f4]                  // 0x006da90c    d991f4000000
                         {disp32} fstp      dword ptr [ecx + 0x000000f8]                  // 0x006da912    d999f8000000
                         ret                                                              // 0x006da918    c3
                         nop                                                              // 0x006da919    90
                         nop                                                              // 0x006da91a    90
                         nop                                                              // 0x006da91b    90
                         nop                                                              // 0x006da91c    90
                         nop                                                              // 0x006da91d    90
                         nop                                                              // 0x006da91e    90
                         nop                                                              // 0x006da91f    90
?NetworkUnfriendlyEndLockedSelect@PuzzleTotem@@UAEIXZ:
                         {disp32} mov       edx, dword ptr [ecx + 0x000000e4]             // 0x006da920    8b91e4000000
                         or                 eax, -0x1                                     // 0x006da926    83c8ff
                         cmp.s              edx, eax                                      // 0x006da929    3bd0
                         {disp8} jne        _jmp_addr_0x006da939                          // 0x006da92b    750c
                         {disp32} mov       dword ptr [ecx + 0x000000e8], eax             // 0x006da92d    8981e8000000
                         mov                eax, 0x00000001                               // 0x006da933    b801000000
                         ret                                                              // 0x006da938    c3
_jmp_addr_0x006da939:    {disp32} lea       eax, dword ptr [ecx + 0x000000c4]             // 0x006da939    8d81c4000000
                         push               eax                                           // 0x006da93f    50
                         call               _jmp_addr_0x00436a70                          // 0x006da940    e82bc1d5ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006da945    8b0d5c19d000
                         push               eax                                           // 0x006da94b    50
                         push               0x28                                          // 0x006da94c    6a28
                         call               _jmp_addr_0x00550e40                          // 0x006da94e    e8ed64e7ff
                         mov                eax, 0x00000001                               // 0x006da953    b801000000
                         ret                                                              // 0x006da958    c3
                         nop                                                              // 0x006da959    90
                         nop                                                              // 0x006da95a    90
                         nop                                                              // 0x006da95b    90
                         nop                                                              // 0x006da95c    90
                         nop                                                              // 0x006da95d    90
                         nop                                                              // 0x006da95e    90
                         nop                                                              // 0x006da95f    90
?NetworkFriendlyEndLockedSelect@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z:
                         mov                eax, 0x00000001                               // 0x006da960    b801000000
                         ret                0x0004                                        // 0x006da965    c20400
                         nop                                                              // 0x006da968    90
                         nop                                                              // 0x006da969    90
                         nop                                                              // 0x006da96a    90
                         nop                                                              // 0x006da96b    90
                         nop                                                              // 0x006da96c    90
                         nop                                                              // 0x006da96d    90
                         nop                                                              // 0x006da96e    90
                         nop                                                              // 0x006da96f    90
?NetworkUnfriendlyLockedSelect@PuzzleTotem@@UAEIPAUControlHandUpdateInfo@@@Z:
                         push               esi                                           // 0x006da970    56
                         mov.s              esi, ecx                                      // 0x006da971    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x000000e4]             // 0x006da973    8b8ee4000000
                         or                 eax, -0x1                                     // 0x006da979    83c8ff
                         cmp.s              ecx, eax                                      // 0x006da97c    3bc8
                         {disp8} jne        _jmp_addr_0x006da98f                          // 0x006da97e    750f
                         {disp32} mov       dword ptr [esi + 0x000000e8], eax             // 0x006da980    8986e8000000
                         mov                eax, 0x00000001                               // 0x006da986    b801000000
                         pop                esi                                           // 0x006da98b    5e
                         ret                0x0004                                        // 0x006da98c    c20400
_jmp_addr_0x006da98f:    test               byte ptr [esi + 0x24], 0x10                   // 0x006da98f    f6462410
                         {disp32} je        _jmp_addr_0x006daa7d                          // 0x006da993    0f84e4000000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x006da999    8b442408
                         fld                dword ptr [eax]                               // 0x006da99d    d900
                         mov.s              ecx, esi                                      // 0x006da99f    8bce
                         {disp32} fdiv      dword ptr [data_bytes + 0x243864]             // 0x006da9a1    d8356498c000
                         {disp32} fadd      dword ptr [esi + 0x000000f4]                  // 0x006da9a7    d886f4000000
                         {disp32} fstp      dword ptr [esi + 0x000000f4]                  // 0x006da9ad    d99ef4000000
                         call               _jmp_addr_0x00737790                          // 0x006da9b3    e8d8cd0500
                         fld                st(0)                                         // 0x006da9b8    d9c0
                         fchs                                                             // 0x006da9ba    d9e0
                         {disp32} fcom      dword ptr [esi + 0x000000f4]                  // 0x006da9bc    d896f4000000
                         fnstsw             ax                                            // 0x006da9c2    dfe0
                         test               ah, 0x41                                      // 0x006da9c4    f6c441
                         {disp8} jne        _jmp_addr_0x006da9d1                          // 0x006da9c7    7508
                         {disp32} fstp      dword ptr [esi + 0x000000f4]                  // 0x006da9c9    d99ef4000000
                         {disp8} jmp        _jmp_addr_0x006da9f0                          // 0x006da9cf    eb1f
_jmp_addr_0x006da9d1:    fstp               st(0)                                         // 0x006da9d1    ddd8
                         {disp32} fld       dword ptr [esi + 0x000000f4]                  // 0x006da9d3    d986f4000000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x006da9d9    d81d98a38a00
                         fnstsw             ax                                            // 0x006da9df    dfe0
                         test               ah, 0x41                                      // 0x006da9e1    f6c441
                         {disp8} jne        _jmp_addr_0x006da9f0                          // 0x006da9e4    750a
                         {disp32} mov       dword ptr [esi + 0x000000f4], 0x00000000      // 0x006da9e6    c786f400000000000000
_jmp_addr_0x006da9f0:    push               edi                                           // 0x006da9f0    57
                         {disp32} mov       edi, dword ptr [esi + 0x000000e4]             // 0x006da9f1    8bbee4000000
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x006da9f7    897c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x006da9fb    db44240c
                         {disp32} fld       dword ptr [esi + 0x000000f4]                  // 0x006da9ff    d986f4000000
                         fabs                                                             // 0x006daa05    d9e1
                         fsubr              st, st(2)                                     // 0x006daa07    d8ea
                         fdiv               st, st(2)                                     // 0x006daa09    d8f2
                         fmul               st, st(1)                                     // 0x006daa0b    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x006daa0d    e8ee690c00
                         cmp.s              eax, edi                                      // 0x006daa12    3bc7
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x006daa14    8944240c
                         {disp8} jle        _jmp_addr_0x006daa1e                          // 0x006daa18    7e04
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x006daa1a    897c240c
_jmp_addr_0x006daa1e:    {disp8} fild       dword ptr [esp + 0x0c]                        // 0x006daa1e    db44240c
                         pop                edi                                           // 0x006daa22    5f
                         fdiv               st, st(1)                                     // 0x006daa23    d8f1
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x006daa25    d82d90a38a00
                         fmulp              st(2), st                                     // 0x006daa2b    deca
                         fxch               st(1)                                         // 0x006daa2d    d9c9
                         fchs                                                             // 0x006daa2f    d9e0
                         fxch               st(1)                                         // 0x006daa31    d9c9
                         fstp               st(0)                                         // 0x006daa33    ddd8
                         {disp32} fld       dword ptr [esi + 0x000000d8]                  // 0x006daa35    d986d8000000
                         fadd               st, st(1)                                     // 0x006daa3b    d8c1
                         {disp32} fstp      dword ptr [esi + 0x000000cc]                  // 0x006daa3d    d99ecc000000
                         {disp32} fcom      dword ptr [esi + 0x000000f8]                  // 0x006daa43    d896f8000000
                         fnstsw             ax                                            // 0x006daa49    dfe0
                         test               ah, 0x40                                      // 0x006daa4b    f6c440
                         {disp8} jne        _jmp_addr_0x006daa7b                          // 0x006daa4e    752b
                         {disp32} lea       ecx, dword ptr [esi + 0x000000c4]             // 0x006daa50    8d8ec4000000
                         {disp32} fstp      dword ptr [esi + 0x000000f8]                  // 0x006daa56    d99ef8000000
                         push               ecx                                           // 0x006daa5c    51
                         mov.s              ecx, esi                                      // 0x006daa5d    8bce
                         call               _jmp_addr_0x00436a70                          // 0x006daa5f    e80cc0d5ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x006daa64    8b0d5c19d000
                         push               eax                                           // 0x006daa6a    50
                         push               0x28                                          // 0x006daa6b    6a28
                         call               _jmp_addr_0x00550e40                          // 0x006daa6d    e8ce63e7ff
                         mov                eax, 0x00000001                               // 0x006daa72    b801000000
                         pop                esi                                           // 0x006daa77    5e
                         ret                0x0004                                        // 0x006daa78    c20400
_jmp_addr_0x006daa7b:    fstp               st(0)                                         // 0x006daa7b    ddd8
_jmp_addr_0x006daa7d:    mov                eax, 0x00000001                               // 0x006daa7d    b801000000
                         pop                esi                                           // 0x006daa82    5e
                         ret                0x0004                                        // 0x006daa83    c20400
                         nop                                                              // 0x006daa86    90
                         nop                                                              // 0x006daa87    90
                         nop                                                              // 0x006daa88    90
                         nop                                                              // 0x006daa89    90
                         nop                                                              // 0x006daa8a    90
                         nop                                                              // 0x006daa8b    90
                         nop                                                              // 0x006daa8c    90
                         nop                                                              // 0x006daa8d    90
                         nop                                                              // 0x006daa8e    90
                         nop                                                              // 0x006daa8f    90
                         sub                esp, 0x0c                                     // 0x006daa90    83ec0c
                         {disp32} mov       eax, dword ptr [ecx + 0x000000e4]             // 0x006daa93    8b81e4000000
                         cmp                eax, -0x01                                    // 0x006daa99    83f8ff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x006daa9c    89442400
                         {disp8} jne        _jmp_addr_0x006daaac                          // 0x006daaa0    750a
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x006daaa2    d90590a38a00
                         add                esp, 0x0c                                     // 0x006daaa8    83c40c
                         ret                                                              // 0x006daaab    c3
_jmp_addr_0x006daaac:    {disp32} mov       eax, dword ptr [ecx + 0x000000f0]             // 0x006daaac    8b81f0000000
                         test               eax, eax                                      // 0x006daab2    85c0
                         {disp8} je         _jmp_addr_0x006daaf1                          // 0x006daab4    743b
                         dec                eax                                           // 0x006daab6    48
                         mov                edx, 0x00000005                               // 0x006daab7    ba05000000
                         sub.s              edx, eax                                      // 0x006daabc    2bd0
                         imul               edx, dword ptr [ecx + 0x000000e8]             // 0x006daabe    0faf91e8000000
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x006daac5    89542404
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x006daac9    89442408
                         {disp32} mov       dword ptr [ecx + 0x000000f0], eax             // 0x006daacd    8981f0000000
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x006daad3    db442404
                         {disp32} fild      dword ptr [ecx + 0x000000ec]                  // 0x006daad7    db81ec000000
                         {disp8} fimul      dword ptr [esp + 0x08]                        // 0x006daadd    da4c2408
                         faddp              st(1), st                                     // 0x006daae1    dec1
                         {disp32} fmul      dword ptr [_rdata_float0p2]                   // 0x006daae3    d80daca38a00
                         {disp8} fidiv      dword ptr [esp + 0x00]                        // 0x006daae9    da742400
                         add                esp, 0x0c                                     // 0x006daaed    83c40c
                         ret                                                              // 0x006daaf0    c3
_jmp_addr_0x006daaf1:    {disp32} fild      dword ptr [ecx + 0x000000e8]                  // 0x006daaf1    db81e8000000
                         {disp8} fidiv      dword ptr [esp + 0x00]                        // 0x006daaf7    da742400
                         add                esp, 0x0c                                     // 0x006daafb    83c40c
                         ret                                                              // 0x006daafe    c3
                         nop                                                              // 0x006daaff    90
_jmp_addr_0x006dab00:    {disp8} mov        ecx, dword ptr [ecx + 0x48]                   // 0x006dab00    8b4948
                         {disp8} lea        eax, dword ptr [ecx + -0x0a]                  // 0x006dab03    8d41f6
                         cmp                eax, 0x09                                     // 0x006dab06    83f809
                         {disp8} ja         _jmp_addr_0x006dab2a                          // 0x006dab09    771f
                         jmp                dword ptr [eax*4 + 0x6dab30]                  // 0x006dab0b    ff248530ab6d00
                         mov                eax, 0x0093a994                               // 0x006dab12    b894a99300
                         ret                                                              // 0x006dab17    c3
                         mov                eax, 0x0093aa90                               // 0x006dab18    b890aa9300
                         ret                                                              // 0x006dab1d    c3
                         mov                eax, 0x0093a9e8                               // 0x006dab1e    b8e8a99300
                         ret                                                              // 0x006dab23    c3
                         mov                eax, 0x0093aa3c                               // 0x006dab24    b83caa9300
                         ret                                                              // 0x006dab29    c3
_jmp_addr_0x006dab2a:    mov                eax, 0x0093a940                               // 0x006dab2a    b840a99300
                         ret                                                              // 0x006dab2f    c3

// Snippet: jmptbl, [0x006dab30, 0x006dab58)
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab30
.byte 0x12, 0xab, 0x6d, 0x00      // 0x006dab34
.byte 0x1e, 0xab, 0x6d, 0x00      // 0x006dab38
.byte 0x24, 0xab, 0x6d, 0x00      // 0x006dab3c
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab40
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab44
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab48
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab4c
.byte 0x2a, 0xab, 0x6d, 0x00      // 0x006dab50
.byte 0x18, 0xab, 0x6d, 0x00      // 0x006dab54

// Snippet: db, [0x006dab58, 0x006dab60)
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dab58
.byte 0x90, 0x90, 0x90, 0x90      // 0x006dab5c

