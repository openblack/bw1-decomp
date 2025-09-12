.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern _jmp_addr_0x005c5f50
.extern _jmp_addr_0x0078f5e0
.extern _jmp_addr_0x0078f600
.extern _jmp_addr_0x007949e0
.extern _jmp_addr_0x007991c0
.extern _jmp_addr_0x0079a600
.extern _jmp_addr_0x0079a620
.extern _jmp_addr_0x0079a640
.extern _jmp_addr_0x0079a6a0
.extern _jmp_addr_0x0079a8d0
.extern _jmp_addr_0x0079a910

.globl _jmp_addr_0x0078bda0
.globl _jmp_addr_0x0078c040
.globl _jmp_addr_0x0078c110
.globl _jmp_addr_0x0078c1e0
.globl _jmp_addr_0x0078c2b0
.globl _jmp_addr_0x0078c380
.globl _jmp_addr_0x0078c450

start_0x0078b520_0x0078c7d0:
// Snippet: asm, [0x0078b520, 0x0078c7a3)
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078b520    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0078b524    8b542408
                         push               eax                                           // 0x0078b528    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0078b529    8b442408
                         push               edx                                           // 0x0078b52d    52
                         push               eax                                           // 0x0078b52e    50
                         call               _jmp_addr_0x0078f5e0                          // 0x0078b52f    e8ac400000
                         ret                0x000c                                        // 0x0078b534    c20c00
                         nop                                                              // 0x0078b537    90
                         nop                                                              // 0x0078b538    90
                         nop                                                              // 0x0078b539    90
                         nop                                                              // 0x0078b53a    90
                         nop                                                              // 0x0078b53b    90
                         nop                                                              // 0x0078b53c    90
                         nop                                                              // 0x0078b53d    90
                         nop                                                              // 0x0078b53e    90
                         nop                                                              // 0x0078b53f    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0078b540    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x0078b544    8b542404
                         push               eax                                           // 0x0078b548    50
                         push               edx                                           // 0x0078b549    52
                         call               _jmp_addr_0x0078f600                          // 0x0078b54a    e8b1400000
                         ret                0x0008                                        // 0x0078b54f    c20800
                         nop                                                              // 0x0078b552    90
                         nop                                                              // 0x0078b553    90
                         nop                                                              // 0x0078b554    90
                         nop                                                              // 0x0078b555    90
                         nop                                                              // 0x0078b556    90
                         nop                                                              // 0x0078b557    90
                         nop                                                              // 0x0078b558    90
                         nop                                                              // 0x0078b559    90
                         nop                                                              // 0x0078b55a    90
                         nop                                                              // 0x0078b55b    90
                         nop                                                              // 0x0078b55c    90
                         nop                                                              // 0x0078b55d    90
                         nop                                                              // 0x0078b55e    90
                         nop                                                              // 0x0078b55f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b560    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078b564    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b567    8b155c19d000
                         push               0x0                                           // 0x0078b56d    6a00
                         push               0x0                                           // 0x0078b56f    6a00
                         push               0xc1f00000                                    // 0x0078b571    680000f0c1
                         push               ecx                                           // 0x0078b576    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b577    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078b57d    e85e940000
                         mov                eax, 0x00000001                               // 0x0078b582    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], eax        // 0x0078b587    a3b81ee000
                         ret                                                              // 0x0078b58c    c3
                         nop                                                              // 0x0078b58d    90
                         nop                                                              // 0x0078b58e    90
                         nop                                                              // 0x0078b58f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b590    8b442404
                         push               ebx                                           // 0x0078b594    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078b595    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078b59b    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078b59d    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078b5a0    89580c
                         mov                ecx, 0x3f800000                               // 0x0078b5a3    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078b5a8    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078b5ab    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bdf8]        // 0x0078b5ae    8b0df81de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078b5b4    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b5b7    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078b5bd    8b4020
                         cmp.s              eax, ebx                                      // 0x0078b5c0    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b5c2    8b8ab4590000
                         push               esi                                           // 0x0078b5c8    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078b5c9    8b7118
                         {disp32} je        _jmp_addr_0x0078b663                          // 0x0078b5cc    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be80]        // 0x0078b5d2    8b0d801ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be84]        // 0x0078b5d8    8b15841ee000
                         push               edi                                           // 0x0078b5de    57
                         mov.s              edi, ecx                                      // 0x0078b5df    8bf9
                         sub.s              ecx, eax                                      // 0x0078b5e1    2bc8
                         push               ecx                                           // 0x0078b5e3    51
                         push               edx                                           // 0x0078b5e4    52
                         {disp32} mov       dword ptr [data_bytes + 0x43be80], ecx        // 0x0078b5e5    890d801ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078b5eb    e8b0f00000
                         {disp32} mov       dword ptr [data_bytes + 0x43be80], eax        // 0x0078b5f0    a3801ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078b5f5    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078b5fb    d98050040000
                         add                esp, 0x08                                     // 0x0078b601    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078b604    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078b60a    dfe0
                         test               ah, 0x41                                      // 0x0078b60c    f6c441
                         {disp8} je         _jmp_addr_0x0078b61a                          // 0x0078b60f    7409
                         push               ebx                                           // 0x0078b611    53
                         call               _jmp_addr_0x0078bda0                          // 0x0078b612    e889070000
                         add                esp, 0x04                                     // 0x0078b617    83c404
_jmp_addr_0x0078b61a:    cmp                dword ptr [data_bytes + 0x43be80], edi        // 0x0078b61a    393d801ee000
                         pop                edi                                           // 0x0078b620    5f
                         {disp8} je         _jmp_addr_0x0078b663                          // 0x0078b621    7440
                         cmp                dword ptr [data_bytes + 0x43be28], ebx        // 0x0078b623    391d281ee000
                         {disp8} jne        _jmp_addr_0x0078b669                          // 0x0078b629    753e
                         push               0x1                                           // 0x0078b62b    6a01
                         push               ebx                                           // 0x0078b62d    53
                         push               ebx                                           // 0x0078b62e    53
                         push               ebx                                           // 0x0078b62f    53
                         push               0x2                                           // 0x0078b630    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078b632    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078b638    33d2
                         mov                ecx, 0x00000006                               // 0x0078b63a    b906000000
                         div                ecx                                           // 0x0078b63f    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078b641    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078b647    83c236
                         push               edx                                           // 0x0078b64a    52
                         push               ebx                                           // 0x0078b64b    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078b64c    e80fe7c9ff
                         pop                esi                                           // 0x0078b651    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be28], 0x00000001 // 0x0078b652    c705281ee00001000000
                         mov                eax, 0x00000001                               // 0x0078b65c    b801000000
                         pop                ebx                                           // 0x0078b661    5b
                         ret                                                              // 0x0078b662    c3
_jmp_addr_0x0078b663:    {disp32} mov       dword ptr [data_bytes + 0x43be28], ebx        // 0x0078b663    891d281ee000
_jmp_addr_0x0078b669:    pop                esi                                           // 0x0078b669    5e
                         mov                eax, 0x00000001                               // 0x0078b66a    b801000000
                         pop                ebx                                           // 0x0078b66f    5b
                         ret                                                              // 0x0078b670    c3
                         nop                                                              // 0x0078b671    90
                         nop                                                              // 0x0078b672    90
                         nop                                                              // 0x0078b673    90
                         nop                                                              // 0x0078b674    90
                         nop                                                              // 0x0078b675    90
                         nop                                                              // 0x0078b676    90
                         nop                                                              // 0x0078b677    90
                         nop                                                              // 0x0078b678    90
                         nop                                                              // 0x0078b679    90
                         nop                                                              // 0x0078b67a    90
                         nop                                                              // 0x0078b67b    90
                         nop                                                              // 0x0078b67c    90
                         nop                                                              // 0x0078b67d    90
                         nop                                                              // 0x0078b67e    90
                         nop                                                              // 0x0078b67f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b680    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078b684    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b687    8b155c19d000
                         push               0x0                                           // 0x0078b68d    6a00
                         push               0x0                                           // 0x0078b68f    6a00
                         push               0xc1f00000                                    // 0x0078b691    680000f0c1
                         push               ecx                                           // 0x0078b696    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b697    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078b69d    e83e930000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000002 // 0x0078b6a2    c705b81ee00002000000
                         mov                eax, 0x00000001                               // 0x0078b6ac    b801000000
                         ret                                                              // 0x0078b6b1    c3
                         nop                                                              // 0x0078b6b2    90
                         nop                                                              // 0x0078b6b3    90
                         nop                                                              // 0x0078b6b4    90
                         nop                                                              // 0x0078b6b5    90
                         nop                                                              // 0x0078b6b6    90
                         nop                                                              // 0x0078b6b7    90
                         nop                                                              // 0x0078b6b8    90
                         nop                                                              // 0x0078b6b9    90
                         nop                                                              // 0x0078b6ba    90
                         nop                                                              // 0x0078b6bb    90
                         nop                                                              // 0x0078b6bc    90
                         nop                                                              // 0x0078b6bd    90
                         nop                                                              // 0x0078b6be    90
                         nop                                                              // 0x0078b6bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b6c0    8b442404
                         push               ebx                                           // 0x0078b6c4    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078b6c5    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078b6cb    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078b6cd    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078b6d0    89580c
                         mov                ecx, 0x3f800000                               // 0x0078b6d3    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078b6d8    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078b6db    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bdf4]        // 0x0078b6de    8b0df41de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078b6e4    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b6e7    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078b6ed    8b4020
                         cmp.s              eax, ebx                                      // 0x0078b6f0    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b6f2    8b8ab4590000
                         push               esi                                           // 0x0078b6f8    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078b6f9    8b7118
                         {disp32} je        _jmp_addr_0x0078b793                          // 0x0078b6fc    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be88]        // 0x0078b702    8b0d881ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be8c]        // 0x0078b708    8b158c1ee000
                         push               edi                                           // 0x0078b70e    57
                         mov.s              edi, ecx                                      // 0x0078b70f    8bf9
                         sub.s              ecx, eax                                      // 0x0078b711    2bc8
                         push               ecx                                           // 0x0078b713    51
                         push               edx                                           // 0x0078b714    52
                         {disp32} mov       dword ptr [data_bytes + 0x43be88], ecx        // 0x0078b715    890d881ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078b71b    e880ef0000
                         {disp32} mov       dword ptr [data_bytes + 0x43be88], eax        // 0x0078b720    a3881ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078b725    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078b72b    d98050040000
                         add                esp, 0x08                                     // 0x0078b731    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078b734    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078b73a    dfe0
                         test               ah, 0x41                                      // 0x0078b73c    f6c441
                         {disp8} je         _jmp_addr_0x0078b74a                          // 0x0078b73f    7409
                         push               ebx                                           // 0x0078b741    53
                         call               _jmp_addr_0x0078c040                          // 0x0078b742    e8f9080000
                         add                esp, 0x04                                     // 0x0078b747    83c404
_jmp_addr_0x0078b74a:    cmp                dword ptr [data_bytes + 0x43be88], edi        // 0x0078b74a    393d881ee000
                         pop                edi                                           // 0x0078b750    5f
                         {disp8} je         _jmp_addr_0x0078b793                          // 0x0078b751    7440
                         cmp                dword ptr [data_bytes + 0x43be2c], ebx        // 0x0078b753    391d2c1ee000
                         {disp8} jne        _jmp_addr_0x0078b799                          // 0x0078b759    753e
                         push               0x1                                           // 0x0078b75b    6a01
                         push               ebx                                           // 0x0078b75d    53
                         push               ebx                                           // 0x0078b75e    53
                         push               ebx                                           // 0x0078b75f    53
                         push               0x2                                           // 0x0078b760    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078b762    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078b768    33d2
                         mov                ecx, 0x00000006                               // 0x0078b76a    b906000000
                         div                ecx                                           // 0x0078b76f    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078b771    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078b777    83c236
                         push               edx                                           // 0x0078b77a    52
                         push               ebx                                           // 0x0078b77b    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078b77c    e8dfe5c9ff
                         pop                esi                                           // 0x0078b781    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be2c], 0x00000001 // 0x0078b782    c7052c1ee00001000000
                         mov                eax, 0x00000001                               // 0x0078b78c    b801000000
                         pop                ebx                                           // 0x0078b791    5b
                         ret                                                              // 0x0078b792    c3
_jmp_addr_0x0078b793:    {disp32} mov       dword ptr [data_bytes + 0x43be2c], ebx        // 0x0078b793    891d2c1ee000
_jmp_addr_0x0078b799:    pop                esi                                           // 0x0078b799    5e
                         mov                eax, 0x00000001                               // 0x0078b79a    b801000000
                         pop                ebx                                           // 0x0078b79f    5b
                         ret                                                              // 0x0078b7a0    c3
                         nop                                                              // 0x0078b7a1    90
                         nop                                                              // 0x0078b7a2    90
                         nop                                                              // 0x0078b7a3    90
                         nop                                                              // 0x0078b7a4    90
                         nop                                                              // 0x0078b7a5    90
                         nop                                                              // 0x0078b7a6    90
                         nop                                                              // 0x0078b7a7    90
                         nop                                                              // 0x0078b7a8    90
                         nop                                                              // 0x0078b7a9    90
                         nop                                                              // 0x0078b7aa    90
                         nop                                                              // 0x0078b7ab    90
                         nop                                                              // 0x0078b7ac    90
                         nop                                                              // 0x0078b7ad    90
                         nop                                                              // 0x0078b7ae    90
                         nop                                                              // 0x0078b7af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b7b0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078b7b4    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b7b7    8b155c19d000
                         push               0x0                                           // 0x0078b7bd    6a00
                         push               0x0                                           // 0x0078b7bf    6a00
                         push               0xc1f00000                                    // 0x0078b7c1    680000f0c1
                         push               ecx                                           // 0x0078b7c6    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b7c7    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078b7cd    e80e920000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000003 // 0x0078b7d2    c705b81ee00003000000
                         mov                eax, 0x00000001                               // 0x0078b7dc    b801000000
                         ret                                                              // 0x0078b7e1    c3
                         nop                                                              // 0x0078b7e2    90
                         nop                                                              // 0x0078b7e3    90
                         nop                                                              // 0x0078b7e4    90
                         nop                                                              // 0x0078b7e5    90
                         nop                                                              // 0x0078b7e6    90
                         nop                                                              // 0x0078b7e7    90
                         nop                                                              // 0x0078b7e8    90
                         nop                                                              // 0x0078b7e9    90
                         nop                                                              // 0x0078b7ea    90
                         nop                                                              // 0x0078b7eb    90
                         nop                                                              // 0x0078b7ec    90
                         nop                                                              // 0x0078b7ed    90
                         nop                                                              // 0x0078b7ee    90
                         nop                                                              // 0x0078b7ef    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b7f0    8b442404
                         push               ebx                                           // 0x0078b7f4    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078b7f5    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078b7fb    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078b7fd    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078b800    89580c
                         mov                ecx, 0x3f800000                               // 0x0078b803    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078b808    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078b80b    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bdf0]        // 0x0078b80e    8b0df01de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078b814    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b817    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078b81d    8b4020
                         cmp.s              eax, ebx                                      // 0x0078b820    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b822    8b8ab4590000
                         push               esi                                           // 0x0078b828    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078b829    8b7118
                         {disp32} je        _jmp_addr_0x0078b8c3                          // 0x0078b82c    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be98]        // 0x0078b832    8b0d981ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be9c]        // 0x0078b838    8b159c1ee000
                         push               edi                                           // 0x0078b83e    57
                         mov.s              edi, ecx                                      // 0x0078b83f    8bf9
                         sub.s              ecx, eax                                      // 0x0078b841    2bc8
                         push               ecx                                           // 0x0078b843    51
                         push               edx                                           // 0x0078b844    52
                         {disp32} mov       dword ptr [data_bytes + 0x43be98], ecx        // 0x0078b845    890d981ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078b84b    e850ee0000
                         {disp32} mov       dword ptr [data_bytes + 0x43be98], eax        // 0x0078b850    a3981ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078b855    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078b85b    d98050040000
                         add                esp, 0x08                                     // 0x0078b861    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078b864    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078b86a    dfe0
                         test               ah, 0x41                                      // 0x0078b86c    f6c441
                         {disp8} je         _jmp_addr_0x0078b87a                          // 0x0078b86f    7409
                         push               ebx                                           // 0x0078b871    53
                         call               _jmp_addr_0x0078c110                          // 0x0078b872    e899080000
                         add                esp, 0x04                                     // 0x0078b877    83c404
_jmp_addr_0x0078b87a:    cmp                dword ptr [data_bytes + 0x43be98], edi        // 0x0078b87a    393d981ee000
                         pop                edi                                           // 0x0078b880    5f
                         {disp8} je         _jmp_addr_0x0078b8c3                          // 0x0078b881    7440
                         cmp                dword ptr [data_bytes + 0x43be30], ebx        // 0x0078b883    391d301ee000
                         {disp8} jne        _jmp_addr_0x0078b8c9                          // 0x0078b889    753e
                         push               0x1                                           // 0x0078b88b    6a01
                         push               ebx                                           // 0x0078b88d    53
                         push               ebx                                           // 0x0078b88e    53
                         push               ebx                                           // 0x0078b88f    53
                         push               0x2                                           // 0x0078b890    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078b892    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078b898    33d2
                         mov                ecx, 0x00000006                               // 0x0078b89a    b906000000
                         div                ecx                                           // 0x0078b89f    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078b8a1    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078b8a7    83c236
                         push               edx                                           // 0x0078b8aa    52
                         push               ebx                                           // 0x0078b8ab    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078b8ac    e8afe4c9ff
                         pop                esi                                           // 0x0078b8b1    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be30], 0x00000001 // 0x0078b8b2    c705301ee00001000000
                         mov                eax, 0x00000001                               // 0x0078b8bc    b801000000
                         pop                ebx                                           // 0x0078b8c1    5b
                         ret                                                              // 0x0078b8c2    c3
_jmp_addr_0x0078b8c3:    {disp32} mov       dword ptr [data_bytes + 0x43be30], ebx        // 0x0078b8c3    891d301ee000
_jmp_addr_0x0078b8c9:    pop                esi                                           // 0x0078b8c9    5e
                         mov                eax, 0x00000001                               // 0x0078b8ca    b801000000
                         pop                ebx                                           // 0x0078b8cf    5b
                         ret                                                              // 0x0078b8d0    c3
                         nop                                                              // 0x0078b8d1    90
                         nop                                                              // 0x0078b8d2    90
                         nop                                                              // 0x0078b8d3    90
                         nop                                                              // 0x0078b8d4    90
                         nop                                                              // 0x0078b8d5    90
                         nop                                                              // 0x0078b8d6    90
                         nop                                                              // 0x0078b8d7    90
                         nop                                                              // 0x0078b8d8    90
                         nop                                                              // 0x0078b8d9    90
                         nop                                                              // 0x0078b8da    90
                         nop                                                              // 0x0078b8db    90
                         nop                                                              // 0x0078b8dc    90
                         nop                                                              // 0x0078b8dd    90
                         nop                                                              // 0x0078b8de    90
                         nop                                                              // 0x0078b8df    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b8e0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078b8e4    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b8e7    8b155c19d000
                         push               0x0                                           // 0x0078b8ed    6a00
                         push               0x0                                           // 0x0078b8ef    6a00
                         push               0xc1f00000                                    // 0x0078b8f1    680000f0c1
                         push               ecx                                           // 0x0078b8f6    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b8f7    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078b8fd    e8de900000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000004 // 0x0078b902    c705b81ee00004000000
                         mov                eax, 0x00000001                               // 0x0078b90c    b801000000
                         ret                                                              // 0x0078b911    c3
                         nop                                                              // 0x0078b912    90
                         nop                                                              // 0x0078b913    90
                         nop                                                              // 0x0078b914    90
                         nop                                                              // 0x0078b915    90
                         nop                                                              // 0x0078b916    90
                         nop                                                              // 0x0078b917    90
                         nop                                                              // 0x0078b918    90
                         nop                                                              // 0x0078b919    90
                         nop                                                              // 0x0078b91a    90
                         nop                                                              // 0x0078b91b    90
                         nop                                                              // 0x0078b91c    90
                         nop                                                              // 0x0078b91d    90
                         nop                                                              // 0x0078b91e    90
                         nop                                                              // 0x0078b91f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078b920    8b442404
                         push               ebx                                           // 0x0078b924    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078b925    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078b92b    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078b92d    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078b930    89580c
                         mov                ecx, 0x3f800000                               // 0x0078b933    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078b938    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078b93b    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bdec]        // 0x0078b93e    8b0dec1de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078b944    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078b947    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078b94d    8b4020
                         cmp.s              eax, ebx                                      // 0x0078b950    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078b952    8b8ab4590000
                         push               esi                                           // 0x0078b958    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078b959    8b7118
                         {disp32} je        _jmp_addr_0x0078b9f3                          // 0x0078b95c    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bea0]        // 0x0078b962    8b0da01ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bea4]        // 0x0078b968    8b15a41ee000
                         push               edi                                           // 0x0078b96e    57
                         mov.s              edi, ecx                                      // 0x0078b96f    8bf9
                         sub.s              ecx, eax                                      // 0x0078b971    2bc8
                         push               ecx                                           // 0x0078b973    51
                         push               edx                                           // 0x0078b974    52
                         {disp32} mov       dword ptr [data_bytes + 0x43bea0], ecx        // 0x0078b975    890da01ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078b97b    e820ed0000
                         {disp32} mov       dword ptr [data_bytes + 0x43bea0], eax        // 0x0078b980    a3a01ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078b985    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078b98b    d98050040000
                         add                esp, 0x08                                     // 0x0078b991    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078b994    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078b99a    dfe0
                         test               ah, 0x41                                      // 0x0078b99c    f6c441
                         {disp8} je         _jmp_addr_0x0078b9aa                          // 0x0078b99f    7409
                         push               ebx                                           // 0x0078b9a1    53
                         call               _jmp_addr_0x0078c1e0                          // 0x0078b9a2    e839080000
                         add                esp, 0x04                                     // 0x0078b9a7    83c404
_jmp_addr_0x0078b9aa:    cmp                dword ptr [data_bytes + 0x43bea0], edi        // 0x0078b9aa    393da01ee000
                         pop                edi                                           // 0x0078b9b0    5f
                         {disp8} je         _jmp_addr_0x0078b9f3                          // 0x0078b9b1    7440
                         cmp                dword ptr [data_bytes + 0x43be34], ebx        // 0x0078b9b3    391d341ee000
                         {disp8} jne        _jmp_addr_0x0078b9f9                          // 0x0078b9b9    753e
                         push               0x1                                           // 0x0078b9bb    6a01
                         push               ebx                                           // 0x0078b9bd    53
                         push               ebx                                           // 0x0078b9be    53
                         push               ebx                                           // 0x0078b9bf    53
                         push               0x2                                           // 0x0078b9c0    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078b9c2    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078b9c8    33d2
                         mov                ecx, 0x00000006                               // 0x0078b9ca    b906000000
                         div                ecx                                           // 0x0078b9cf    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078b9d1    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078b9d7    83c236
                         push               edx                                           // 0x0078b9da    52
                         push               ebx                                           // 0x0078b9db    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078b9dc    e87fe3c9ff
                         pop                esi                                           // 0x0078b9e1    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be34], 0x00000001 // 0x0078b9e2    c705341ee00001000000
                         mov                eax, 0x00000001                               // 0x0078b9ec    b801000000
                         pop                ebx                                           // 0x0078b9f1    5b
                         ret                                                              // 0x0078b9f2    c3
_jmp_addr_0x0078b9f3:    {disp32} mov       dword ptr [data_bytes + 0x43be34], ebx        // 0x0078b9f3    891d341ee000
_jmp_addr_0x0078b9f9:    pop                esi                                           // 0x0078b9f9    5e
                         mov                eax, 0x00000001                               // 0x0078b9fa    b801000000
                         pop                ebx                                           // 0x0078b9ff    5b
                         ret                                                              // 0x0078ba00    c3
                         nop                                                              // 0x0078ba01    90
                         nop                                                              // 0x0078ba02    90
                         nop                                                              // 0x0078ba03    90
                         nop                                                              // 0x0078ba04    90
                         nop                                                              // 0x0078ba05    90
                         nop                                                              // 0x0078ba06    90
                         nop                                                              // 0x0078ba07    90
                         nop                                                              // 0x0078ba08    90
                         nop                                                              // 0x0078ba09    90
                         nop                                                              // 0x0078ba0a    90
                         nop                                                              // 0x0078ba0b    90
                         nop                                                              // 0x0078ba0c    90
                         nop                                                              // 0x0078ba0d    90
                         nop                                                              // 0x0078ba0e    90
                         nop                                                              // 0x0078ba0f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078ba10    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078ba14    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078ba17    8b155c19d000
                         push               0x0                                           // 0x0078ba1d    6a00
                         push               0x0                                           // 0x0078ba1f    6a00
                         push               0xc1f00000                                    // 0x0078ba21    680000f0c1
                         push               ecx                                           // 0x0078ba26    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078ba27    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078ba2d    e8ae8f0000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000005 // 0x0078ba32    c705b81ee00005000000
                         mov                eax, 0x00000001                               // 0x0078ba3c    b801000000
                         ret                                                              // 0x0078ba41    c3
                         nop                                                              // 0x0078ba42    90
                         nop                                                              // 0x0078ba43    90
                         nop                                                              // 0x0078ba44    90
                         nop                                                              // 0x0078ba45    90
                         nop                                                              // 0x0078ba46    90
                         nop                                                              // 0x0078ba47    90
                         nop                                                              // 0x0078ba48    90
                         nop                                                              // 0x0078ba49    90
                         nop                                                              // 0x0078ba4a    90
                         nop                                                              // 0x0078ba4b    90
                         nop                                                              // 0x0078ba4c    90
                         nop                                                              // 0x0078ba4d    90
                         nop                                                              // 0x0078ba4e    90
                         nop                                                              // 0x0078ba4f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078ba50    8b442404
                         push               ebx                                           // 0x0078ba54    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078ba55    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078ba5b    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078ba5d    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078ba60    89580c
                         mov                ecx, 0x3f800000                               // 0x0078ba63    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078ba68    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078ba6b    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bde8]        // 0x0078ba6e    8b0de81de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078ba74    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078ba77    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078ba7d    8b4020
                         cmp.s              eax, ebx                                      // 0x0078ba80    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078ba82    8b8ab4590000
                         push               esi                                           // 0x0078ba88    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078ba89    8b7118
                         {disp32} je        _jmp_addr_0x0078bb23                          // 0x0078ba8c    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be90]        // 0x0078ba92    8b0d901ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be94]        // 0x0078ba98    8b15941ee000
                         push               edi                                           // 0x0078ba9e    57
                         mov.s              edi, ecx                                      // 0x0078ba9f    8bf9
                         sub.s              ecx, eax                                      // 0x0078baa1    2bc8
                         push               ecx                                           // 0x0078baa3    51
                         push               edx                                           // 0x0078baa4    52
                         {disp32} mov       dword ptr [data_bytes + 0x43be90], ecx        // 0x0078baa5    890d901ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078baab    e8f0eb0000
                         {disp32} mov       dword ptr [data_bytes + 0x43be90], eax        // 0x0078bab0    a3901ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078bab5    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078babb    d98050040000
                         add                esp, 0x08                                     // 0x0078bac1    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078bac4    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078baca    dfe0
                         test               ah, 0x41                                      // 0x0078bacc    f6c441
                         {disp8} je         _jmp_addr_0x0078bada                          // 0x0078bacf    7409
                         push               ebx                                           // 0x0078bad1    53
                         call               _jmp_addr_0x0078c2b0                          // 0x0078bad2    e8d9070000
                         add                esp, 0x04                                     // 0x0078bad7    83c404
_jmp_addr_0x0078bada:    cmp                dword ptr [data_bytes + 0x43be90], edi        // 0x0078bada    393d901ee000
                         pop                edi                                           // 0x0078bae0    5f
                         {disp8} je         _jmp_addr_0x0078bb23                          // 0x0078bae1    7440
                         cmp                dword ptr [data_bytes + 0x43be38], ebx        // 0x0078bae3    391d381ee000
                         {disp8} jne        _jmp_addr_0x0078bb29                          // 0x0078bae9    753e
                         push               0x1                                           // 0x0078baeb    6a01
                         push               ebx                                           // 0x0078baed    53
                         push               ebx                                           // 0x0078baee    53
                         push               ebx                                           // 0x0078baef    53
                         push               0x2                                           // 0x0078baf0    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078baf2    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078baf8    33d2
                         mov                ecx, 0x00000006                               // 0x0078bafa    b906000000
                         div                ecx                                           // 0x0078baff    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078bb01    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078bb07    83c236
                         push               edx                                           // 0x0078bb0a    52
                         push               ebx                                           // 0x0078bb0b    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078bb0c    e84fe2c9ff
                         pop                esi                                           // 0x0078bb11    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be38], 0x00000001 // 0x0078bb12    c705381ee00001000000
                         mov                eax, 0x00000001                               // 0x0078bb1c    b801000000
                         pop                ebx                                           // 0x0078bb21    5b
                         ret                                                              // 0x0078bb22    c3
_jmp_addr_0x0078bb23:    {disp32} mov       dword ptr [data_bytes + 0x43be38], ebx        // 0x0078bb23    891d381ee000
_jmp_addr_0x0078bb29:    pop                esi                                           // 0x0078bb29    5e
                         mov                eax, 0x00000001                               // 0x0078bb2a    b801000000
                         pop                ebx                                           // 0x0078bb2f    5b
                         ret                                                              // 0x0078bb30    c3
                         nop                                                              // 0x0078bb31    90
                         nop                                                              // 0x0078bb32    90
                         nop                                                              // 0x0078bb33    90
                         nop                                                              // 0x0078bb34    90
                         nop                                                              // 0x0078bb35    90
                         nop                                                              // 0x0078bb36    90
                         nop                                                              // 0x0078bb37    90
                         nop                                                              // 0x0078bb38    90
                         nop                                                              // 0x0078bb39    90
                         nop                                                              // 0x0078bb3a    90
                         nop                                                              // 0x0078bb3b    90
                         nop                                                              // 0x0078bb3c    90
                         nop                                                              // 0x0078bb3d    90
                         nop                                                              // 0x0078bb3e    90
                         nop                                                              // 0x0078bb3f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078bb40    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078bb44    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078bb47    8b155c19d000
                         push               0x0                                           // 0x0078bb4d    6a00
                         push               0x0                                           // 0x0078bb4f    6a00
                         push               0xc1f00000                                    // 0x0078bb51    680000f0c1
                         push               ecx                                           // 0x0078bb56    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078bb57    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078bb5d    e87e8e0000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000006 // 0x0078bb62    c705b81ee00006000000
                         mov                eax, 0x00000001                               // 0x0078bb6c    b801000000
                         ret                                                              // 0x0078bb71    c3
                         nop                                                              // 0x0078bb72    90
                         nop                                                              // 0x0078bb73    90
                         nop                                                              // 0x0078bb74    90
                         nop                                                              // 0x0078bb75    90
                         nop                                                              // 0x0078bb76    90
                         nop                                                              // 0x0078bb77    90
                         nop                                                              // 0x0078bb78    90
                         nop                                                              // 0x0078bb79    90
                         nop                                                              // 0x0078bb7a    90
                         nop                                                              // 0x0078bb7b    90
                         nop                                                              // 0x0078bb7c    90
                         nop                                                              // 0x0078bb7d    90
                         nop                                                              // 0x0078bb7e    90
                         nop                                                              // 0x0078bb7f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078bb80    8b442404
                         push               ebx                                           // 0x0078bb84    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078bb85    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078bb8b    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078bb8d    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078bb90    89580c
                         mov                ecx, 0x3f800000                               // 0x0078bb93    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078bb98    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078bb9b    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bde4]        // 0x0078bb9e    8b0de41de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078bba4    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078bba7    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078bbad    8b4020
                         cmp.s              eax, ebx                                      // 0x0078bbb0    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078bbb2    8b8ab4590000
                         push               esi                                           // 0x0078bbb8    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078bbb9    8b7118
                         {disp32} je        _jmp_addr_0x0078bc53                          // 0x0078bbbc    0f8491000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bea8]        // 0x0078bbc2    8b0da81ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43beac]        // 0x0078bbc8    8b15ac1ee000
                         push               edi                                           // 0x0078bbce    57
                         mov.s              edi, ecx                                      // 0x0078bbcf    8bf9
                         sub.s              ecx, eax                                      // 0x0078bbd1    2bc8
                         push               ecx                                           // 0x0078bbd3    51
                         push               edx                                           // 0x0078bbd4    52
                         {disp32} mov       dword ptr [data_bytes + 0x43bea8], ecx        // 0x0078bbd5    890da81ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078bbdb    e8c0ea0000
                         {disp32} mov       dword ptr [data_bytes + 0x43bea8], eax        // 0x0078bbe0    a3a81ee000
                         {disp32} mov       eax, dword ptr [esi + 0x000000c4]             // 0x0078bbe5    8b86c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078bbeb    d98050040000
                         add                esp, 0x08                                     // 0x0078bbf1    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078bbf4    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078bbfa    dfe0
                         test               ah, 0x41                                      // 0x0078bbfc    f6c441
                         {disp8} je         _jmp_addr_0x0078bc0a                          // 0x0078bbff    7409
                         push               ebx                                           // 0x0078bc01    53
                         call               _jmp_addr_0x0078c380                          // 0x0078bc02    e879070000
                         add                esp, 0x04                                     // 0x0078bc07    83c404
_jmp_addr_0x0078bc0a:    cmp                dword ptr [data_bytes + 0x43bea8], edi        // 0x0078bc0a    393da81ee000
                         pop                edi                                           // 0x0078bc10    5f
                         {disp8} je         _jmp_addr_0x0078bc53                          // 0x0078bc11    7440
                         cmp                dword ptr [data_bytes + 0x43be3c], ebx        // 0x0078bc13    391d3c1ee000
                         {disp8} jne        _jmp_addr_0x0078bc59                          // 0x0078bc19    753e
                         push               0x1                                           // 0x0078bc1b    6a01
                         push               ebx                                           // 0x0078bc1d    53
                         push               ebx                                           // 0x0078bc1e    53
                         push               ebx                                           // 0x0078bc1f    53
                         push               0x2                                           // 0x0078bc20    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078bc22    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078bc28    33d2
                         mov                ecx, 0x00000006                               // 0x0078bc2a    b906000000
                         div                ecx                                           // 0x0078bc2f    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078bc31    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078bc37    83c236
                         push               edx                                           // 0x0078bc3a    52
                         push               ebx                                           // 0x0078bc3b    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078bc3c    e81fe1c9ff
                         pop                esi                                           // 0x0078bc41    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be3c], 0x00000001 // 0x0078bc42    c7053c1ee00001000000
                         mov                eax, 0x00000001                               // 0x0078bc4c    b801000000
                         pop                ebx                                           // 0x0078bc51    5b
                         ret                                                              // 0x0078bc52    c3
_jmp_addr_0x0078bc53:    {disp32} mov       dword ptr [data_bytes + 0x43be3c], ebx        // 0x0078bc53    891d3c1ee000
_jmp_addr_0x0078bc59:    pop                esi                                           // 0x0078bc59    5e
                         mov                eax, 0x00000001                               // 0x0078bc5a    b801000000
                         pop                ebx                                           // 0x0078bc5f    5b
                         ret                                                              // 0x0078bc60    c3
                         nop                                                              // 0x0078bc61    90
                         nop                                                              // 0x0078bc62    90
                         nop                                                              // 0x0078bc63    90
                         nop                                                              // 0x0078bc64    90
                         nop                                                              // 0x0078bc65    90
                         nop                                                              // 0x0078bc66    90
                         nop                                                              // 0x0078bc67    90
                         nop                                                              // 0x0078bc68    90
                         nop                                                              // 0x0078bc69    90
                         nop                                                              // 0x0078bc6a    90
                         nop                                                              // 0x0078bc6b    90
                         nop                                                              // 0x0078bc6c    90
                         nop                                                              // 0x0078bc6d    90
                         nop                                                              // 0x0078bc6e    90
                         nop                                                              // 0x0078bc6f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078bc70    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078bc74    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078bc77    8b155c19d000
                         push               0x0                                           // 0x0078bc7d    6a00
                         push               0x0                                           // 0x0078bc7f    6a00
                         push               0xc1f00000                                    // 0x0078bc81    680000f0c1
                         push               ecx                                           // 0x0078bc86    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078bc87    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078bc8d    e84e8d0000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb8], 0x00000007 // 0x0078bc92    c705b81ee00007000000
                         mov                eax, 0x00000001                               // 0x0078bc9c    b801000000
                         ret                                                              // 0x0078bca1    c3
                         nop                                                              // 0x0078bca2    90
                         nop                                                              // 0x0078bca3    90
                         nop                                                              // 0x0078bca4    90
                         nop                                                              // 0x0078bca5    90
                         nop                                                              // 0x0078bca6    90
                         nop                                                              // 0x0078bca7    90
                         nop                                                              // 0x0078bca8    90
                         nop                                                              // 0x0078bca9    90
                         nop                                                              // 0x0078bcaa    90
                         nop                                                              // 0x0078bcab    90
                         nop                                                              // 0x0078bcac    90
                         nop                                                              // 0x0078bcad    90
                         nop                                                              // 0x0078bcae    90
                         nop                                                              // 0x0078bcaf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0078bcb0    8b442404
                         push               ebx                                           // 0x0078bcb4    53
                         mov                dword ptr [eax], 0x00000001                   // 0x0078bcb5    c70001000000
                         xor.s              ebx, ebx                                      // 0x0078bcbb    33db
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0078bcbd    895810
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x0078bcc0    89580c
                         mov                ecx, 0x3f800000                               // 0x0078bcc3    b90000803f
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0078bcc8    894818
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0078bccb    894814
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bde0]        // 0x0078bcce    8b0de01de000
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0078bcd4    89481c
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078bcd7    8b155c19d000
                         {disp8} mov        eax, dword ptr [eax + 0x20]                   // 0x0078bcdd    8b4020
                         cmp.s              eax, ebx                                      // 0x0078bce0    3bc3
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x0078bce2    8b8ab4590000
                         push               esi                                           // 0x0078bce8    56
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0078bce9    8b7118
                         {disp32} je        _jmp_addr_0x0078bd88                          // 0x0078bcec    0f8496000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43beb0]        // 0x0078bcf2    8b0db01ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be90]        // 0x0078bcf8    8b15901ee000
                         push               edi                                           // 0x0078bcfe    57
                         mov.s              edi, ecx                                      // 0x0078bcff    8bf9
                         sub.s              ecx, eax                                      // 0x0078bd01    2bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be94]        // 0x0078bd03    a1941ee000
                         push               edx                                           // 0x0078bd08    52
                         push               eax                                           // 0x0078bd09    50
                         {disp32} mov       dword ptr [data_bytes + 0x43beb0], ecx        // 0x0078bd0a    890db01ee000
                         call               _jmp_addr_0x0079a6a0                          // 0x0078bd10    e88be90000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb0], eax        // 0x0078bd15    a3b01ee000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0078bd1a    8b8ec4000000
                         {disp32} fld       dword ptr [ecx + 0x00000450]                  // 0x0078bd20    d98150040000
                         add                esp, 0x08                                     // 0x0078bd26    83c408
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078bd29    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078bd2f    dfe0
                         test               ah, 0x41                                      // 0x0078bd31    f6c441
                         {disp8} je         _jmp_addr_0x0078bd3f                          // 0x0078bd34    7409
                         push               ebx                                           // 0x0078bd36    53
                         call               _jmp_addr_0x0078c450                          // 0x0078bd37    e814070000
                         add                esp, 0x04                                     // 0x0078bd3c    83c404
_jmp_addr_0x0078bd3f:    cmp                dword ptr [data_bytes + 0x43beb0], edi        // 0x0078bd3f    393db01ee000
                         pop                edi                                           // 0x0078bd45    5f
                         {disp8} je         _jmp_addr_0x0078bd88                          // 0x0078bd46    7440
                         cmp                dword ptr [data_bytes + 0x43be40], ebx        // 0x0078bd48    391d401ee000
                         {disp8} jne        _jmp_addr_0x0078bd8e                          // 0x0078bd4e    753e
                         push               0x1                                           // 0x0078bd50    6a01
                         push               ebx                                           // 0x0078bd52    53
                         push               ebx                                           // 0x0078bd53    53
                         push               ebx                                           // 0x0078bd54    53
                         push               0x2                                           // 0x0078bd55    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078bd57    ff15c4918a00
                         xor.s              edx, edx                                      // 0x0078bd5d    33d2
                         mov                ecx, 0x00000006                               // 0x0078bd5f    b906000000
                         div                ecx                                           // 0x0078bd64    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078bd66    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078bd6c    83c236
                         push               edx                                           // 0x0078bd6f    52
                         push               ebx                                           // 0x0078bd70    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x0078bd71    e8eadfc9ff
                         pop                esi                                           // 0x0078bd76    5e
                         {disp32} mov       dword ptr [data_bytes + 0x43be40], 0x00000001 // 0x0078bd77    c705401ee00001000000
                         mov                eax, 0x00000001                               // 0x0078bd81    b801000000
                         pop                ebx                                           // 0x0078bd86    5b
                         ret                                                              // 0x0078bd87    c3
_jmp_addr_0x0078bd88:    {disp32} mov       dword ptr [data_bytes + 0x43be40], ebx        // 0x0078bd88    891d401ee000
_jmp_addr_0x0078bd8e:    pop                esi                                           // 0x0078bd8e    5e
                         mov                eax, 0x00000001                               // 0x0078bd8f    b801000000
                         pop                ebx                                           // 0x0078bd94    5b
                         ret                                                              // 0x0078bd95    c3
                         nop                                                              // 0x0078bd96    90
                         nop                                                              // 0x0078bd97    90
                         nop                                                              // 0x0078bd98    90
                         nop                                                              // 0x0078bd99    90
                         nop                                                              // 0x0078bd9a    90
                         nop                                                              // 0x0078bd9b    90
                         nop                                                              // 0x0078bd9c    90
                         nop                                                              // 0x0078bd9d    90
                         nop                                                              // 0x0078bd9e    90
                         nop                                                              // 0x0078bd9f    90
_jmp_addr_0x0078bda0:    push               0x00dfdde0                                    // 0x0078bda0    68e0dddf00
                         call               _jmp_addr_0x0079a600                          // 0x0078bda5    e856e80000
                         push               0x00c28038                                    // 0x0078bdaa    683880c200
                         push               0x00dfdde0                                    // 0x0078bdaf    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bdb4    e817eb0000
                         push               0x00c27b50                                    // 0x0078bdb9    68507bc200
                         push               0x00dfdde0                                    // 0x0078bdbe    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bdc3    e808eb0000
                         push               0x00c27d68                                    // 0x0078bdc8    68687dc200
                         push               0x00dfdde0                                    // 0x0078bdcd    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bdd2    e8f9ea0000
                         push               0x00c27cd0                                    // 0x0078bdd7    68d07cc200
                         push               0x00dfdde0                                    // 0x0078bddc    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bde1    e8eaea0000
                         push               0x00c28014                                    // 0x0078bde6    681480c200
                         push               0x00dfdde0                                    // 0x0078bdeb    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bdf0    e8dbea0000
                         push               0x00c27ff8                                    // 0x0078bdf5    68f87fc200
                         push               0x00dfdde0                                    // 0x0078bdfa    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bdff    e8ccea0000
                         push               0x00c27b80                                    // 0x0078be04    68807bc200
                         push               0x00dfdde0                                    // 0x0078be09    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be0e    e8bdea0000
                         push               0x00c27d34                                    // 0x0078be13    68347dc200
                         push               0x00dfdde0                                    // 0x0078be18    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be1d    e8aeea0000
                         add                esp, 0x44                                     // 0x0078be22    83c444
                         push               0x00c279dc                                    // 0x0078be25    68dc79c200
                         push               0x00dfdde0                                    // 0x0078be2a    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be2f    e89cea0000
                         push               0x00c279fc                                    // 0x0078be34    68fc79c200
                         push               0x00dfdde0                                    // 0x0078be39    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be3e    e88dea0000
                         push               0x00c27ce8                                    // 0x0078be43    68e87cc200
                         push               0x00dfdde0                                    // 0x0078be48    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be4d    e87eea0000
                         push               0x00c27a30                                    // 0x0078be52    68307ac200
                         push               0x00dfdde0                                    // 0x0078be57    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be5c    e86fea0000
                         push               0x00c27c40                                    // 0x0078be61    68407cc200
                         push               0x00dfdde0                                    // 0x0078be66    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be6b    e860ea0000
                         push               0x00c27af8                                    // 0x0078be70    68f87ac200
                         push               0x00dfdde0                                    // 0x0078be75    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be7a    e851ea0000
                         push               0x00c27fdc                                    // 0x0078be7f    68dc7fc200
                         push               0x00dfdde0                                    // 0x0078be84    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be89    e842ea0000
                         push               0x00c27fbc                                    // 0x0078be8e    68bc7fc200
                         push               0x00dfdde0                                    // 0x0078be93    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078be98    e833ea0000
                         add                esp, 0x40                                     // 0x0078be9d    83c440
                         push               0x00c27bf8                                    // 0x0078bea0    68f87bc200
                         push               0x00dfdde0                                    // 0x0078bea5    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078beaa    e821ea0000
                         push               0x00c27b2c                                    // 0x0078beaf    682c7bc200
                         push               0x00dfdde0                                    // 0x0078beb4    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078beb9    e812ea0000
                         push               0x00c27fa0                                    // 0x0078bebe    68a07fc200
                         push               0x00dfdde0                                    // 0x0078bec3    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bec8    e803ea0000
                         push               0x00c27abc                                    // 0x0078becd    68bc7ac200
                         push               0x00dfdde0                                    // 0x0078bed2    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bed7    e8f4e90000
                         push               0x00c27b14                                    // 0x0078bedc    68147bc200
                         push               0x00dfdde0                                    // 0x0078bee1    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bee6    e8e5e90000
                         push               0x00c27b68                                    // 0x0078beeb    68687bc200
                         push               0x00dfdde0                                    // 0x0078bef0    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bef5    e8d6e90000
                         push               0x00c27a64                                    // 0x0078befa    68647ac200
                         push               0x00dfdde0                                    // 0x0078beff    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf04    e8c7e90000
                         push               0x00c27c90                                    // 0x0078bf09    68907cc200
                         push               0x00dfdde0                                    // 0x0078bf0e    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf13    e8b8e90000
                         add                esp, 0x40                                     // 0x0078bf18    83c440
                         push               0x00c27a9c                                    // 0x0078bf1b    689c7ac200
                         push               0x00dfdde0                                    // 0x0078bf20    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf25    e8a6e90000
                         push               0x00c27bc4                                    // 0x0078bf2a    68c47bc200
                         push               0x00dfdde0                                    // 0x0078bf2f    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf34    e897e90000
                         push               0x00c27ba4                                    // 0x0078bf39    68a47bc200
                         push               0x00dfdde0                                    // 0x0078bf3e    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf43    e888e90000
                         push               0x00c27d50                                    // 0x0078bf48    68507dc200
                         push               0x00dfdde0                                    // 0x0078bf4d    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf52    e879e90000
                         push               0x00c27a7c                                    // 0x0078bf57    687c7ac200
                         push               0x00dfdde0                                    // 0x0078bf5c    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf61    e86ae90000
                         push               0x00c27a14                                    // 0x0078bf66    68147ac200
                         push               0x00dfdde0                                    // 0x0078bf6b    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf70    e85be90000
                         push               0x00c27cb4                                    // 0x0078bf75    68b47cc200
                         push               0x00dfdde0                                    // 0x0078bf7a    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf7f    e84ce90000
                         push               0x00c27c20                                    // 0x0078bf84    68207cc200
                         push               0x00dfdde0                                    // 0x0078bf89    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bf8e    e83de90000
                         add                esp, 0x40                                     // 0x0078bf93    83c440
                         push               0x00c27d18                                    // 0x0078bf96    68187dc200
                         push               0x00dfdde0                                    // 0x0078bf9b    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bfa0    e82be90000
                         push               0x00c27a48                                    // 0x0078bfa5    68487ac200
                         push               0x00dfdde0                                    // 0x0078bfaa    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bfaf    e81ce90000
                         push               0x00c27f78                                    // 0x0078bfb4    68787fc200
                         push               0x00dfdde0                                    // 0x0078bfb9    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bfbe    e80de90000
                         push               0x00c27d04                                    // 0x0078bfc3    68047dc200
                         push               0x00dfdde0                                    // 0x0078bfc8    68e0dddf00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078bfcd    e8fee80000
                         push               0x00dfdde0                                    // 0x0078bfd2    68e0dddf00
                         call               _jmp_addr_0x0079a620                          // 0x0078bfd7    e844e60000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0078bfdc    8b442428
                         add                esp, 0x24                                     // 0x0078bfe0    83c424
                         test               eax, eax                                      // 0x0078bfe3    85c0
                         {disp8} je         _jmp_addr_0x0078bfef                          // 0x0078bfe5    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be48]        // 0x0078bfe7    a1481ee000
                         push               eax                                           // 0x0078bfec    50
                         {disp8} jmp        _jmp_addr_0x0078bff1                          // 0x0078bfed    eb02
_jmp_addr_0x0078bfef:    push               0x0                                           // 0x0078bfef    6a00
_jmp_addr_0x0078bff1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x43be80]        // 0x0078bff1    8b0d801ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x0078bff7    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x437ddc]        // 0x0078bffd    a1dcdddf00
                         push               ecx                                           // 0x0078c002    51
                         push               0x00dfdde0                                    // 0x0078c003    68e0dddf00
                         push               edx                                           // 0x0078c008    52
                         push               eax                                           // 0x0078c009    50
                         call               _jmp_addr_0x007991c0                          // 0x0078c00a    e8b1d10000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bdf8]        // 0x0078c00f    8b0df81de000
                         {disp32} mov       dword ptr [data_bytes + 0x43be84], eax        // 0x0078c015    a3841ee000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078c01a    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c01d    8b4110
                         and                eax, 0x3f                                     // 0x0078c020    83e03f
                         add                esp, 0x14                                     // 0x0078c023    83c414
                         cmp                eax, 0x08                                     // 0x0078c026    83f808
                         {disp8} je         _jmp_addr_0x0078c030                          // 0x0078c029    7405
                         cmp                eax, 0x04                                     // 0x0078c02b    83f804
                         {disp8} jne        _jmp_addr_0x0078c03a                          // 0x0078c02e    750a
_jmp_addr_0x0078c030:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c030    c7813801000001000000
_jmp_addr_0x0078c03a:    ret                                                              // 0x0078c03a    c3
                         nop                                                              // 0x0078c03b    90
                         nop                                                              // 0x0078c03c    90
                         nop                                                              // 0x0078c03d    90
                         nop                                                              // 0x0078c03e    90
                         nop                                                              // 0x0078c03f    90
_jmp_addr_0x0078c040:    push               esi                                           // 0x0078c040    56
                         push               0x00df9ddc                                    // 0x0078c041    68dc9ddf00
                         call               _jmp_addr_0x0079a600                          // 0x0078c046    e8b5e50000
                         push               0x0                                           // 0x0078c04b    6a00
                         push               0x0000195a                                    // 0x0078c04d    685a190000
                         push               0x00df9ddc                                    // 0x0078c052    68dc9ddf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c057    e8b4e80000
                         push               0x00df9ddc                                    // 0x0078c05c    68dc9ddf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c061    e8dae50000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be6c]        // 0x0078c066    a16c1ee000
                         add                esp, 0x14                                     // 0x0078c06b    83c414
                         xor.s              esi, esi                                      // 0x0078c06e    33f6
                         test               eax, eax                                      // 0x0078c070    85c0
                         {disp8} jbe        _jmp_addr_0x0078c0a4                          // 0x0078c072    7630
                         push               edi                                           // 0x0078c074    57
                         mov                edi, 0x00df9d1c                               // 0x0078c075    bf1c9ddf00
_jmp_addr_0x0078c07a:    mov                eax, dword ptr [edi]                          // 0x0078c07a    8b07
                         push               0x0                                           // 0x0078c07c    6a00
                         push               eax                                           // 0x0078c07e    50
                         push               0x00df9ddc                                    // 0x0078c07f    68dc9ddf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c084    e887e80000
                         push               0x00df9ddc                                    // 0x0078c089    68dc9ddf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c08e    e8ade50000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be6c]        // 0x0078c093    a16c1ee000
                         add                esp, 0x10                                     // 0x0078c098    83c410
                         inc                esi                                           // 0x0078c09b    46
                         add                edi, 0x04                                     // 0x0078c09c    83c704
                         cmp.s              esi, eax                                      // 0x0078c09f    3bf0
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0078c07a  // 0x0078c0a1    72d7
                         pop                edi                                           // 0x0078c0a3    5f
_jmp_addr_0x0078c0a4:    push               0x00df9ddc                                    // 0x0078c0a4    68dc9ddf00
                         call               _jmp_addr_0x0079a620                          // 0x0078c0a9    e872e50000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078c0ae    8b44240c
                         add                esp, 0x04                                     // 0x0078c0b2    83c404
                         test               eax, eax                                      // 0x0078c0b5    85c0
                         pop                esi                                           // 0x0078c0b7    5e
                         {disp8} je         _jmp_addr_0x0078c0c3                          // 0x0078c0b8    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be4c]        // 0x0078c0ba    8b0d4c1ee000
                         push               ecx                                           // 0x0078c0c0    51
                         {disp8} jmp        _jmp_addr_0x0078c0c5                          // 0x0078c0c1    eb02
_jmp_addr_0x0078c0c3:    push               0x0                                           // 0x0078c0c3    6a00
_jmp_addr_0x0078c0c5:    {disp32} mov       edx, dword ptr [data_bytes + 0x43be88]        // 0x0078c0c5    8b15881ee000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x0078c0cb    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x433d18]        // 0x0078c0d0    8b0d189ddf00
                         push               edx                                           // 0x0078c0d6    52
                         push               0x00df9ddc                                    // 0x0078c0d7    68dc9ddf00
                         push               eax                                           // 0x0078c0dc    50
                         push               ecx                                           // 0x0078c0dd    51
                         call               _jmp_addr_0x007991c0                          // 0x0078c0de    e8ddd00000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bdf4]        // 0x0078c0e3    8b15f41de000
                         {disp32} mov       dword ptr [data_bytes + 0x43be8c], eax        // 0x0078c0e9    a38c1ee000
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x0078c0ee    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c0f1    8b4110
                         and                eax, 0x3f                                     // 0x0078c0f4    83e03f
                         add                esp, 0x14                                     // 0x0078c0f7    83c414
                         cmp                eax, 0x08                                     // 0x0078c0fa    83f808
                         {disp8} je         _jmp_addr_0x0078c104                          // 0x0078c0fd    7405
                         cmp                eax, 0x04                                     // 0x0078c0ff    83f804
                         {disp8} jne        _jmp_addr_0x0078c10e                          // 0x0078c102    750a
_jmp_addr_0x0078c104:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c104    c7813801000001000000
_jmp_addr_0x0078c10e:    ret                                                              // 0x0078c10e    c3
                         nop                                                              // 0x0078c10f    90
_jmp_addr_0x0078c110:    push               esi                                           // 0x0078c110    56
                         push               0x00df5d18                                    // 0x0078c111    68185ddf00
                         call               _jmp_addr_0x0079a600                          // 0x0078c116    e8e5e40000
                         push               0x0                                           // 0x0078c11b    6a00
                         push               0x0000195b                                    // 0x0078c11d    685b190000
                         push               0x00df5d18                                    // 0x0078c122    68185ddf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c127    e8e4e70000
                         push               0x00df5d18                                    // 0x0078c12c    68185ddf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c131    e80ae50000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be70]        // 0x0078c136    a1701ee000
                         add                esp, 0x14                                     // 0x0078c13b    83c414
                         xor.s              esi, esi                                      // 0x0078c13e    33f6
                         test               eax, eax                                      // 0x0078c140    85c0
                         {disp8} jbe        _jmp_addr_0x0078c174                          // 0x0078c142    7630
                         push               edi                                           // 0x0078c144    57
                         mov                edi, 0x00df5c58                               // 0x0078c145    bf585cdf00
_jmp_addr_0x0078c14a:    mov                eax, dword ptr [edi]                          // 0x0078c14a    8b07
                         push               0x0                                           // 0x0078c14c    6a00
                         push               eax                                           // 0x0078c14e    50
                         push               0x00df5d18                                    // 0x0078c14f    68185ddf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c154    e8b7e70000
                         push               0x00df5d18                                    // 0x0078c159    68185ddf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c15e    e8dde40000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be70]        // 0x0078c163    a1701ee000
                         add                esp, 0x10                                     // 0x0078c168    83c410
                         inc                esi                                           // 0x0078c16b    46
                         add                edi, 0x04                                     // 0x0078c16c    83c704
                         cmp.s              esi, eax                                      // 0x0078c16f    3bf0
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0078c14a  // 0x0078c171    72d7
                         pop                edi                                           // 0x0078c173    5f
_jmp_addr_0x0078c174:    push               0x00df5d18                                    // 0x0078c174    68185ddf00
                         call               _jmp_addr_0x0079a620                          // 0x0078c179    e8a2e40000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078c17e    8b44240c
                         add                esp, 0x04                                     // 0x0078c182    83c404
                         test               eax, eax                                      // 0x0078c185    85c0
                         pop                esi                                           // 0x0078c187    5e
                         {disp8} je         _jmp_addr_0x0078c193                          // 0x0078c188    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be50]        // 0x0078c18a    8b0d501ee000
                         push               ecx                                           // 0x0078c190    51
                         {disp8} jmp        _jmp_addr_0x0078c195                          // 0x0078c191    eb02
_jmp_addr_0x0078c193:    push               0x0                                           // 0x0078c193    6a00
_jmp_addr_0x0078c195:    {disp32} mov       edx, dword ptr [data_bytes + 0x43be98]        // 0x0078c195    8b15981ee000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x0078c19b    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x42fc54]        // 0x0078c1a0    8b0d545cdf00
                         push               edx                                           // 0x0078c1a6    52
                         push               0x00df5d18                                    // 0x0078c1a7    68185ddf00
                         push               eax                                           // 0x0078c1ac    50
                         push               ecx                                           // 0x0078c1ad    51
                         call               _jmp_addr_0x007991c0                          // 0x0078c1ae    e80dd00000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bdf0]        // 0x0078c1b3    8b15f01de000
                         {disp32} mov       dword ptr [data_bytes + 0x43be9c], eax        // 0x0078c1b9    a39c1ee000
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x0078c1be    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c1c1    8b4110
                         and                eax, 0x3f                                     // 0x0078c1c4    83e03f
                         add                esp, 0x14                                     // 0x0078c1c7    83c414
                         cmp                eax, 0x08                                     // 0x0078c1ca    83f808
                         {disp8} je         _jmp_addr_0x0078c1d4                          // 0x0078c1cd    7405
                         cmp                eax, 0x04                                     // 0x0078c1cf    83f804
                         {disp8} jne        _jmp_addr_0x0078c1de                          // 0x0078c1d2    750a
_jmp_addr_0x0078c1d4:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c1d4    c7813801000001000000
_jmp_addr_0x0078c1de:    ret                                                              // 0x0078c1de    c3
                         nop                                                              // 0x0078c1df    90
_jmp_addr_0x0078c1e0:    push               esi                                           // 0x0078c1e0    56
                         push               0x00df1c54                                    // 0x0078c1e1    68541cdf00
                         call               _jmp_addr_0x0079a600                          // 0x0078c1e6    e815e40000
                         push               0x0                                           // 0x0078c1eb    6a00
                         push               0x0000195c                                    // 0x0078c1ed    685c190000
                         push               0x00df1c54                                    // 0x0078c1f2    68541cdf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c1f7    e814e70000
                         push               0x00df1c54                                    // 0x0078c1fc    68541cdf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c201    e83ae40000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be74]        // 0x0078c206    a1741ee000
                         add                esp, 0x14                                     // 0x0078c20b    83c414
                         xor.s              esi, esi                                      // 0x0078c20e    33f6
                         test               eax, eax                                      // 0x0078c210    85c0
                         {disp8} jbe        _jmp_addr_0x0078c244                          // 0x0078c212    7630
                         push               edi                                           // 0x0078c214    57
                         mov                edi, 0x00df1b94                               // 0x0078c215    bf941bdf00
_jmp_addr_0x0078c21a:    mov                eax, dword ptr [edi]                          // 0x0078c21a    8b07
                         push               0x0                                           // 0x0078c21c    6a00
                         push               eax                                           // 0x0078c21e    50
                         push               0x00df1c54                                    // 0x0078c21f    68541cdf00
                         call               _jmp_addr_0x0079a910                          // 0x0078c224    e8e7e60000
                         push               0x00df1c54                                    // 0x0078c229    68541cdf00
                         call               _jmp_addr_0x0079a640                          // 0x0078c22e    e80de40000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be74]        // 0x0078c233    a1741ee000
                         add                esp, 0x10                                     // 0x0078c238    83c410
                         inc                esi                                           // 0x0078c23b    46
                         add                edi, 0x04                                     // 0x0078c23c    83c704
                         cmp.s              esi, eax                                      // 0x0078c23f    3bf0
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0078c21a  // 0x0078c241    72d7
                         pop                edi                                           // 0x0078c243    5f
_jmp_addr_0x0078c244:    push               0x00df1c54                                    // 0x0078c244    68541cdf00
                         call               _jmp_addr_0x0079a620                          // 0x0078c249    e8d2e30000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078c24e    8b44240c
                         add                esp, 0x04                                     // 0x0078c252    83c404
                         test               eax, eax                                      // 0x0078c255    85c0
                         pop                esi                                           // 0x0078c257    5e
                         {disp8} je         _jmp_addr_0x0078c263                          // 0x0078c258    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be54]        // 0x0078c25a    8b0d541ee000
                         push               ecx                                           // 0x0078c260    51
                         {disp8} jmp        _jmp_addr_0x0078c265                          // 0x0078c261    eb02
_jmp_addr_0x0078c263:    push               0x0                                           // 0x0078c263    6a00
_jmp_addr_0x0078c265:    {disp32} mov       edx, dword ptr [data_bytes + 0x43bea0]        // 0x0078c265    8b15a01ee000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x0078c26b    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x42bb90]        // 0x0078c270    8b0d901bdf00
                         push               edx                                           // 0x0078c276    52
                         push               0x00df1c54                                    // 0x0078c277    68541cdf00
                         push               eax                                           // 0x0078c27c    50
                         push               ecx                                           // 0x0078c27d    51
                         call               _jmp_addr_0x007991c0                          // 0x0078c27e    e83dcf0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bdec]        // 0x0078c283    8b15ec1de000
                         {disp32} mov       dword ptr [data_bytes + 0x43bea4], eax        // 0x0078c289    a3a41ee000
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x0078c28e    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c291    8b4110
                         and                eax, 0x3f                                     // 0x0078c294    83e03f
                         add                esp, 0x14                                     // 0x0078c297    83c414
                         cmp                eax, 0x08                                     // 0x0078c29a    83f808
                         {disp8} je         _jmp_addr_0x0078c2a4                          // 0x0078c29d    7405
                         cmp                eax, 0x04                                     // 0x0078c29f    83f804
                         {disp8} jne        _jmp_addr_0x0078c2ae                          // 0x0078c2a2    750a
_jmp_addr_0x0078c2a4:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c2a4    c7813801000001000000
_jmp_addr_0x0078c2ae:    ret                                                              // 0x0078c2ae    c3
                         nop                                                              // 0x0078c2af    90
_jmp_addr_0x0078c2b0:    push               esi                                           // 0x0078c2b0    56
                         push               0x00dedb90                                    // 0x0078c2b1    6890dbde00
                         call               _jmp_addr_0x0079a600                          // 0x0078c2b6    e845e30000
                         push               0x0                                           // 0x0078c2bb    6a00
                         push               0x0000195d                                    // 0x0078c2bd    685d190000
                         push               0x00dedb90                                    // 0x0078c2c2    6890dbde00
                         call               _jmp_addr_0x0079a910                          // 0x0078c2c7    e844e60000
                         push               0x00dedb90                                    // 0x0078c2cc    6890dbde00
                         call               _jmp_addr_0x0079a640                          // 0x0078c2d1    e86ae30000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be78]        // 0x0078c2d6    a1781ee000
                         add                esp, 0x14                                     // 0x0078c2db    83c414
                         xor.s              esi, esi                                      // 0x0078c2de    33f6
                         test               eax, eax                                      // 0x0078c2e0    85c0
                         {disp8} jbe        _jmp_addr_0x0078c314                          // 0x0078c2e2    7630
                         push               edi                                           // 0x0078c2e4    57
                         mov                edi, 0x00dedad0                               // 0x0078c2e5    bfd0dade00
_jmp_addr_0x0078c2ea:    mov                eax, dword ptr [edi]                          // 0x0078c2ea    8b07
                         push               0x0                                           // 0x0078c2ec    6a00
                         push               eax                                           // 0x0078c2ee    50
                         push               0x00dedb90                                    // 0x0078c2ef    6890dbde00
                         call               _jmp_addr_0x0079a910                          // 0x0078c2f4    e817e60000
                         push               0x00dedb90                                    // 0x0078c2f9    6890dbde00
                         call               _jmp_addr_0x0079a640                          // 0x0078c2fe    e83de30000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be78]        // 0x0078c303    a1781ee000
                         add                esp, 0x10                                     // 0x0078c308    83c410
                         inc                esi                                           // 0x0078c30b    46
                         add                edi, 0x04                                     // 0x0078c30c    83c704
                         cmp.s              esi, eax                                      // 0x0078c30f    3bf0
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0078c2ea  // 0x0078c311    72d7
                         pop                edi                                           // 0x0078c313    5f
_jmp_addr_0x0078c314:    push               0x00dedb90                                    // 0x0078c314    6890dbde00
                         call               _jmp_addr_0x0079a620                          // 0x0078c319    e802e30000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078c31e    8b44240c
                         add                esp, 0x04                                     // 0x0078c322    83c404
                         test               eax, eax                                      // 0x0078c325    85c0
                         pop                esi                                           // 0x0078c327    5e
                         {disp8} je         _jmp_addr_0x0078c333                          // 0x0078c328    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be58]        // 0x0078c32a    8b0d581ee000
                         push               ecx                                           // 0x0078c330    51
                         {disp8} jmp        _jmp_addr_0x0078c335                          // 0x0078c331    eb02
_jmp_addr_0x0078c333:    push               0x0                                           // 0x0078c333    6a00
_jmp_addr_0x0078c335:    {disp32} mov       edx, dword ptr [data_bytes + 0x43be90]        // 0x0078c335    8b15901ee000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x0078c33b    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x427acc]        // 0x0078c340    8b0dccdade00
                         push               edx                                           // 0x0078c346    52
                         push               0x00dedb90                                    // 0x0078c347    6890dbde00
                         push               eax                                           // 0x0078c34c    50
                         push               ecx                                           // 0x0078c34d    51
                         call               _jmp_addr_0x007991c0                          // 0x0078c34e    e86dce0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bde8]        // 0x0078c353    8b15e81de000
                         {disp32} mov       dword ptr [data_bytes + 0x43be94], eax        // 0x0078c359    a3941ee000
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x0078c35e    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c361    8b4110
                         and                eax, 0x3f                                     // 0x0078c364    83e03f
                         add                esp, 0x14                                     // 0x0078c367    83c414
                         cmp                eax, 0x08                                     // 0x0078c36a    83f808
                         {disp8} je         _jmp_addr_0x0078c374                          // 0x0078c36d    7405
                         cmp                eax, 0x04                                     // 0x0078c36f    83f804
                         {disp8} jne        _jmp_addr_0x0078c37e                          // 0x0078c372    750a
_jmp_addr_0x0078c374:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c374    c7813801000001000000
_jmp_addr_0x0078c37e:    ret                                                              // 0x0078c37e    c3
                         nop                                                              // 0x0078c37f    90
_jmp_addr_0x0078c380:    push               esi                                           // 0x0078c380    56
                         push               0x00de9acc                                    // 0x0078c381    68cc9ade00
                         call               _jmp_addr_0x0079a600                          // 0x0078c386    e875e20000
                         push               0x0                                           // 0x0078c38b    6a00
                         push               0x0000195e                                    // 0x0078c38d    685e190000
                         push               0x00de9acc                                    // 0x0078c392    68cc9ade00
                         call               _jmp_addr_0x0079a910                          // 0x0078c397    e874e50000
                         push               0x00de9acc                                    // 0x0078c39c    68cc9ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c3a1    e89ae20000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be7c]        // 0x0078c3a6    a17c1ee000
                         add                esp, 0x14                                     // 0x0078c3ab    83c414
                         xor.s              esi, esi                                      // 0x0078c3ae    33f6
                         test               eax, eax                                      // 0x0078c3b0    85c0
                         {disp8} jbe        _jmp_addr_0x0078c3e4                          // 0x0078c3b2    7630
                         push               edi                                           // 0x0078c3b4    57
                         mov                edi, 0x00de9a0c                               // 0x0078c3b5    bf0c9ade00
_jmp_addr_0x0078c3ba:    mov                eax, dword ptr [edi]                          // 0x0078c3ba    8b07
                         push               0x0                                           // 0x0078c3bc    6a00
                         push               eax                                           // 0x0078c3be    50
                         push               0x00de9acc                                    // 0x0078c3bf    68cc9ade00
                         call               _jmp_addr_0x0079a910                          // 0x0078c3c4    e847e50000
                         push               0x00de9acc                                    // 0x0078c3c9    68cc9ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c3ce    e86de20000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be7c]        // 0x0078c3d3    a17c1ee000
                         add                esp, 0x10                                     // 0x0078c3d8    83c410
                         inc                esi                                           // 0x0078c3db    46
                         add                edi, 0x04                                     // 0x0078c3dc    83c704
                         cmp.s              esi, eax                                      // 0x0078c3df    3bf0
                         .byte              0x72, 0xd7// {disp8} jb _jmp_addr_0x0078c3ba  // 0x0078c3e1    72d7
                         pop                edi                                           // 0x0078c3e3    5f
_jmp_addr_0x0078c3e4:    push               0x00de9acc                                    // 0x0078c3e4    68cc9ade00
                         call               _jmp_addr_0x0079a620                          // 0x0078c3e9    e832e20000
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078c3ee    8b44240c
                         add                esp, 0x04                                     // 0x0078c3f2    83c404
                         test               eax, eax                                      // 0x0078c3f5    85c0
                         pop                esi                                           // 0x0078c3f7    5e
                         {disp8} je         _jmp_addr_0x0078c403                          // 0x0078c3f8    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43be5c]        // 0x0078c3fa    8b0d5c1ee000
                         push               ecx                                           // 0x0078c400    51
                         {disp8} jmp        _jmp_addr_0x0078c405                          // 0x0078c401    eb02
_jmp_addr_0x0078c403:    push               0x0                                           // 0x0078c403    6a00
_jmp_addr_0x0078c405:    {disp32} mov       edx, dword ptr [data_bytes + 0x43bea8]        // 0x0078c405    8b15a81ee000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x0078c40b    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x423a08]        // 0x0078c410    8b0d089ade00
                         push               edx                                           // 0x0078c416    52
                         push               0x00de9acc                                    // 0x0078c417    68cc9ade00
                         push               eax                                           // 0x0078c41c    50
                         push               ecx                                           // 0x0078c41d    51
                         call               _jmp_addr_0x007991c0                          // 0x0078c41e    e89dcd0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43bde4]        // 0x0078c423    8b15e41de000
                         {disp32} mov       dword ptr [data_bytes + 0x43beac], eax        // 0x0078c429    a3ac1ee000
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x0078c42e    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c431    8b4110
                         and                eax, 0x3f                                     // 0x0078c434    83e03f
                         add                esp, 0x14                                     // 0x0078c437    83c414
                         cmp                eax, 0x08                                     // 0x0078c43a    83f808
                         {disp8} je         _jmp_addr_0x0078c444                          // 0x0078c43d    7405
                         cmp                eax, 0x04                                     // 0x0078c43f    83f804
                         {disp8} jne        _jmp_addr_0x0078c44e                          // 0x0078c442    750a
_jmp_addr_0x0078c444:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c444    c7813801000001000000
_jmp_addr_0x0078c44e:    ret                                                              // 0x0078c44e    c3
                         nop                                                              // 0x0078c44f    90
_jmp_addr_0x0078c450:    sub                esp, 0x00000804                               // 0x0078c450    81ec04080000
                         push               ebx                                           // 0x0078c456    53
                         push               esi                                           // 0x0078c457    56
                         push               edi                                           // 0x0078c458    57
                         push               0x00de5a08                                    // 0x0078c459    68085ade00
                         call               _jmp_addr_0x0079a600                          // 0x0078c45e    e89de10000
                         push               0x0                                           // 0x0078c463    6a00
                         push               0x0000195f                                    // 0x0078c465    685f190000
                         push               0x00de5a08                                    // 0x0078c46a    68085ade00
                         call               _jmp_addr_0x0079a910                          // 0x0078c46f    e89ce40000
                         push               0x00de5a08                                    // 0x0078c474    68085ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c479    e8c2e10000
                         {disp32} mov       ebx, dword ptr [rdata_bytes + 0x3d8]          // 0x0078c47e    8b1dd8938a00
                         add                esp, 0x14                                     // 0x0078c484    83c414
                         xor.s              edi, edi                                      // 0x0078c487    33ff
_jmp_addr_0x0078c489:    {disp32} mov       eax, dword ptr [data_bytes + 0x43be44]        // 0x0078c489    a1441ee000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0078c48e    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0025005c]             // 0x0078c494    8b895c002500
                         add.s              eax, edi                                      // 0x0078c49a    03c7
                         push               eax                                           // 0x0078c49c    50
                         call               _jmp_addr_0x005c5f50                          // 0x0078c49d    e8ae9ae3ff
                         mov.s              esi, eax                                      // 0x0078c4a2    8bf0
                         test               esi, esi                                      // 0x0078c4a4    85f6
                         {disp32} je        _jmp_addr_0x0078c724                          // 0x0078c4a6    0f8478020000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x43be44]        // 0x0078c4ac    8b15441ee000
                         lea                ecx, dword ptr [edx + edi * 0x1]              // 0x0078c4b2    8d0c3a
                         test               ecx, ecx                                      // 0x0078c4b5    85c9
                         {disp8} jle        _jmp_addr_0x0078c4e9                          // 0x0078c4b7    7e30
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a28 // 0x0078c4b9    813dac7cd100281a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c4c3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0078c4cf                          // 0x0078c4c8    7605
                         add                eax, 0x000139e0                               // 0x0078c4ca    05e0390100
_jmp_addr_0x0078c4cf:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c4cf    8b4008
                         push               ecx                                           // 0x0078c4d2    51
                         push               eax                                           // 0x0078c4d3    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0078c4d4    8d4c2414
                         push               ecx                                           // 0x0078c4d8    51
                         call               ebx                                           // 0x0078c4d9    ffd3
                         push               eax                                           // 0x0078c4db    50
                         push               0x00de5a08                                    // 0x0078c4dc    68085ade00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078c4e1    e8eae30000
                         add                esp, 0x14                                     // 0x0078c4e6    83c414
_jmp_addr_0x0078c4e9:    {disp8} mov        eax, dword ptr [esi + 0x0c]                   // 0x0078c4e9    8b460c
                         add                eax, -0x02                                    // 0x0078c4ec    83c0fe
                         cmp                eax, 0x0a                                     // 0x0078c4ef    83f80a
                         {disp32} ja        _jmp_addr_0x0078c6cd                          // 0x0078c4f2    0f87d5010000
                         jmp                dword ptr [eax*4 + 0x78c7a4]                  // 0x0078c4f8    ff2485a4c77800
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa5 // 0x0078c4ff    813dac7cd100a51a0000
                         {disp8} ja         _jmp_addr_0x0078c519                          // 0x0078c509    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c50b    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c510    8b4008
                         push               eax                                           // 0x0078c513    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c514    e9ce010000
_jmp_addr_0x0078c519:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c519    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013fbc]             // 0x0078c51f    8d82bc3f0100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c525    8b4008
                         push               eax                                           // 0x0078c528    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c529    e9b9010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa2 // 0x0078c52e    813dac7cd100a21a0000
                         {disp8} ja         _jmp_addr_0x0078c548                          // 0x0078c538    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c53a    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078c53f    8b5008
                         push               edx                                           // 0x0078c542    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c543    e99f010000
_jmp_addr_0x0078c548:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c548    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x00013fa0]             // 0x0078c54e    8b91a03f0100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013f98]             // 0x0078c554    8d81983f0100
                         push               edx                                           // 0x0078c55a    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c55b    e987010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a34 // 0x0078c560    813dac7cd100341a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c56a    a1a87cd100
                         {disp32} jbe       _jmp_addr_0x0078c6e3                          // 0x0078c56f    0f866e010000
                         add                eax, 0x00013a70                               // 0x0078c575    05703a0100
                         {disp32} jmp       _jmp_addr_0x0078c6e3                          // 0x0078c57a    e964010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a33 // 0x0078c57f    813dac7cd100331a0000
                         {disp8} ja         _jmp_addr_0x0078c599                          // 0x0078c589    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c58b    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c590    8b4008
                         push               eax                                           // 0x0078c593    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c594    e94e010000
_jmp_addr_0x0078c599:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c599    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013a64]             // 0x0078c59f    8d82643a0100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c5a5    8b4008
                         push               eax                                           // 0x0078c5a8    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c5a9    e939010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa7 // 0x0078c5ae    813dac7cd100a71a0000
                         {disp8} ja         _jmp_addr_0x0078c5c8                          // 0x0078c5b8    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c5ba    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078c5bf    8b5008
                         push               edx                                           // 0x0078c5c2    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c5c3    e91f010000
_jmp_addr_0x0078c5c8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c5c8    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x00013fdc]             // 0x0078c5ce    8b91dc3f0100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013fd4]             // 0x0078c5d4    8d81d43f0100
                         push               edx                                           // 0x0078c5da    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c5db    e907010000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a71 // 0x0078c5e0    813dac7cd100711a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c5ea    a1a87cd100
                         {disp32} jbe       _jmp_addr_0x0078c6e3                          // 0x0078c5ef    0f86ee000000
                         add                eax, 0x00013d4c                               // 0x0078c5f5    054c3d0100
                         {disp32} jmp       _jmp_addr_0x0078c6e3                          // 0x0078c5fa    e9e4000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a74 // 0x0078c5ff    813dac7cd100741a0000
                         {disp8} ja         _jmp_addr_0x0078c619                          // 0x0078c609    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c60b    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c610    8b4008
                         push               eax                                           // 0x0078c613    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c614    e9ce000000
_jmp_addr_0x0078c619:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c619    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013d70]             // 0x0078c61f    8d82703d0100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c625    8b4008
                         push               eax                                           // 0x0078c628    50
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c629    e9b9000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a81 // 0x0078c62e    813dac7cd100811a0000
                         {disp8} ja         _jmp_addr_0x0078c648                          // 0x0078c638    770e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c63a    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078c63f    8b5008
                         push               edx                                           // 0x0078c642    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c643    e99f000000
_jmp_addr_0x0078c648:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c648    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x00013e14]             // 0x0078c64e    8b91143e0100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013e0c]             // 0x0078c654    8d810c3e0100
                         push               edx                                           // 0x0078c65a    52
                         {disp32} jmp       _jmp_addr_0x0078c6e7                          // 0x0078c65b    e987000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a32 // 0x0078c660    813dac7cd100321a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c66a    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0078c6e3                          // 0x0078c66f    7672
                         add                eax, 0x00013a58                               // 0x0078c671    05583a0100
                         {disp8} jmp        _jmp_addr_0x0078c6e3                          // 0x0078c676    eb6b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001a31 // 0x0078c678    813dac7cd100311a0000
                         {disp8} ja         _jmp_addr_0x0078c68f                          // 0x0078c682    770b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c684    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c689    8b4008
                         push               eax                                           // 0x0078c68c    50
                         {disp8} jmp        _jmp_addr_0x0078c6e7                          // 0x0078c68d    eb58
_jmp_addr_0x0078c68f:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c68f    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x00013a4c]             // 0x0078c695    8d824c3a0100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078c69b    8b4008
                         push               eax                                           // 0x0078c69e    50
                         {disp8} jmp        _jmp_addr_0x0078c6e7                          // 0x0078c69f    eb46
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa8 // 0x0078c6a1    813dac7cd100a81a0000
                         {disp8} ja         _jmp_addr_0x0078c6b8                          // 0x0078c6ab    770b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c6ad    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078c6b2    8b5008
                         push               edx                                           // 0x0078c6b5    52
                         {disp8} jmp        _jmp_addr_0x0078c6e7                          // 0x0078c6b6    eb2f
_jmp_addr_0x0078c6b8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0078c6b8    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x00013fe8]             // 0x0078c6be    8b91e83f0100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013fe0]             // 0x0078c6c4    8d81e03f0100
                         push               edx                                           // 0x0078c6ca    52
                         {disp8} jmp        _jmp_addr_0x0078c6e7                          // 0x0078c6cb    eb1a
_jmp_addr_0x0078c6cd:    cmp                dword ptr [data_bytes + 0x351cac], 0x00001aa9 // 0x0078c6cd    813dac7cd100a91a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078c6d7    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x0078c6e3                          // 0x0078c6dc    7605
                         add                eax, 0x00013fec                               // 0x0078c6de    05ec3f0100
_jmp_addr_0x0078c6e3:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0078c6e3    8b4808
                         push               ecx                                           // 0x0078c6e6    51
_jmp_addr_0x0078c6e7:    push               0x00de5a08                                    // 0x0078c6e7    68085ade00
                         call               _jmp_addr_0x0079a8d0                          // 0x0078c6ec    e8dfe10000
                         add                esp, 0x08                                     // 0x0078c6f1    83c408
                         push               0x00de5a08                                    // 0x0078c6f4    68085ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c6f9    e842df0000
                         mov                edx, dword ptr [esi]                          // 0x0078c6fe    8b16
                         push               0x0                                           // 0x0078c700    6a00
                         push               edx                                           // 0x0078c702    52
                         push               0x00de5a08                                    // 0x0078c703    68085ade00
                         call               _jmp_addr_0x0079a910                          // 0x0078c708    e803e20000
                         push               0x00de5a08                                    // 0x0078c70d    68085ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c712    e829df0000
                         push               0x00de5a08                                    // 0x0078c717    68085ade00
                         call               _jmp_addr_0x0079a640                          // 0x0078c71c    e81fdf0000
                         add                esp, 0x18                                     // 0x0078c721    83c418
_jmp_addr_0x0078c724:    inc                edi                                           // 0x0078c724    47
                         cmp                edi, 0x05                                     // 0x0078c725    83ff05
                         {disp32} jl        _jmp_addr_0x0078c489                          // 0x0078c728    0f8c5bfdffff
                         push               0x00de5a08                                    // 0x0078c72e    68085ade00
                         call               _jmp_addr_0x0079a620                          // 0x0078c733    e8e8de0000
                         {disp32} mov       eax, dword ptr [esp + 0x00000818]             // 0x0078c738    8b842418080000
                         add                esp, 0x04                                     // 0x0078c73f    83c404
                         test               eax, eax                                      // 0x0078c742    85c0
                         pop                edi                                           // 0x0078c744    5f
                         pop                esi                                           // 0x0078c745    5e
                         pop                ebx                                           // 0x0078c746    5b
                         {disp8} je         _jmp_addr_0x0078c751                          // 0x0078c747    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x43be60]        // 0x0078c749    a1601ee000
                         push               eax                                           // 0x0078c74e    50
                         {disp8} jmp        _jmp_addr_0x0078c753                          // 0x0078c74f    eb02
_jmp_addr_0x0078c751:    push               0x0                                           // 0x0078c751    6a00
_jmp_addr_0x0078c753:    {disp32} mov       ecx, dword ptr [data_bytes + 0x43beb0]        // 0x0078c753    8b0db01ee000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x0078c759    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41fa04]        // 0x0078c75f    a1045ade00
                         push               ecx                                           // 0x0078c764    51
                         push               0x00de5a08                                    // 0x0078c765    68085ade00
                         push               edx                                           // 0x0078c76a    52
                         push               eax                                           // 0x0078c76b    50
                         call               _jmp_addr_0x007991c0                          // 0x0078c76c    e84fca0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43bde0]        // 0x0078c771    8b0de01de000
                         {disp32} mov       dword ptr [data_bytes + 0x43beb4], eax        // 0x0078c777    a3b41ee000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078c77c    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078c77f    8b4110
                         and                eax, 0x3f                                     // 0x0078c782    83e03f
                         add                esp, 0x14                                     // 0x0078c785    83c414
                         cmp                eax, 0x08                                     // 0x0078c788    83f808
                         {disp8} je         _jmp_addr_0x0078c792                          // 0x0078c78b    7405
                         cmp                eax, 0x04                                     // 0x0078c78d    83f804
                         {disp8} jne        _jmp_addr_0x0078c79c                          // 0x0078c790    750a
_jmp_addr_0x0078c792:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x0078c792    c7813801000001000000
_jmp_addr_0x0078c79c:    add                esp, 0x00000804                               // 0x0078c79c    81c404080000
                         ret                                                              // 0x0078c7a2    c3

// Snippet: db, [0x0078c7a3, 0x0078c7a4)
.byte 0x90                        // 0x0078c7a3

// Snippet: jmptbl, [0x0078c7a4, 0x0078c7d0)
.byte 0xff, 0xc4, 0x78, 0x00      // 0x0078c7a4
.byte 0x2e, 0xc5, 0x78, 0x00      // 0x0078c7a8
.byte 0x60, 0xc5, 0x78, 0x00      // 0x0078c7ac
.byte 0x7f, 0xc5, 0x78, 0x00      // 0x0078c7b0
.byte 0xae, 0xc5, 0x78, 0x00      // 0x0078c7b4
.byte 0xe0, 0xc5, 0x78, 0x00      // 0x0078c7b8
.byte 0xff, 0xc5, 0x78, 0x00      // 0x0078c7bc
.byte 0x2e, 0xc6, 0x78, 0x00      // 0x0078c7c0
.byte 0x60, 0xc6, 0x78, 0x00      // 0x0078c7c4
.byte 0x78, 0xc6, 0x78, 0x00      // 0x0078c7c8
.byte 0xa1, 0xc6, 0x78, 0x00      // 0x0078c7cc

