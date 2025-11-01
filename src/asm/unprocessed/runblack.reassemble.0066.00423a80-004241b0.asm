.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetFieldActivity@Field@@QAEHH@Z
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z
.extern ?GetFootball@Villager@@QAEPAVFootball@@XZ
.extern ?IsWoman@Villager@@QAE_NXZ
.extern ?GetDesireForFood@Villager@@QAEMXZ
.extern _jmp_addr_0x007a1400
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0083add0

.globl ?FootballWatchMatchAnimation@Villager@@QAEIXZ


start_0x00423a80_0x004241b0:
// Snippet: asm, [0x00423a80, 0x0042417d)
                         {disp8} mov        al, byte ptr [ecx + 0x59]                     // 0x00423a80    8a4159
                         {disp8} mov        dl, byte ptr [ecx + 0x58]                     // 0x00423a83    8a5158
                         shr                al, 1                                         // 0x00423a86    d0e8
                         cmp.s              al, dl                                        // 0x00423a88    3ac2
                         sbb.s              eax, eax                                      // 0x00423a8a    1bc0
                         neg                eax                                           // 0x00423a8c    f7d8
                         add                eax, 0x00000136                               // 0x00423a8e    0536010000
                         ret                                                              // 0x00423a93    c3
                         nop                                                              // 0x00423a94    90
                         nop                                                              // 0x00423a95    90
                         nop                                                              // 0x00423a96    90
                         nop                                                              // 0x00423a97    90
                         nop                                                              // 0x00423a98    90
                         nop                                                              // 0x00423a99    90
                         nop                                                              // 0x00423a9a    90
                         nop                                                              // 0x00423a9b    90
                         nop                                                              // 0x00423a9c    90
                         nop                                                              // 0x00423a9d    90
                         nop                                                              // 0x00423a9e    90
                         nop                                                              // 0x00423a9f    90
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000118]             // 0x00423aa0    8b8918010000
                         push               0x0                                           // 0x00423aa6    6a00
                         call               ?GetFieldActivity@Field@@QAEHH@Z              // 0x00423aa8    e8a3581000
                         dec                eax                                           // 0x00423aad    48
                         neg                eax                                           // 0x00423aae    f7d8
                         sbb.s              eax, eax                                      // 0x00423ab0    1bc0
                         and                eax, 0xfffffffb                               // 0x00423ab2    83e0fb
                         add                eax, 0x00000105                               // 0x00423ab5    0505010000
                         ret                                                              // 0x00423aba    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00423abb    e8b9ddfdff
                         mov                eax, 0x000000d9                               // 0x00423ac0    b8d9000000
                         ret                                                              // 0x00423ac5    c3
                         nop                                                              // 0x00423ac6    90
                         nop                                                              // 0x00423ac7    90
                         nop                                                              // 0x00423ac8    90
                         nop                                                              // 0x00423ac9    90
                         nop                                                              // 0x00423aca    90
                         nop                                                              // 0x00423acb    90
                         nop                                                              // 0x00423acc    90
                         nop                                                              // 0x00423acd    90
                         nop                                                              // 0x00423ace    90
                         nop                                                              // 0x00423acf    90
                         push               ecx                                           // 0x00423ad0    51
                         xor.s              edx, edx                                      // 0x00423ad1    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x0000008e]               // 0x00423ad3    8a918e000000
                         push               esi                                           // 0x00423ad9    56
                         lea                eax, dword ptr [edx + edx * 0x2]              // 0x00423ada    8d0452
                         shl                eax, 3                                        // 0x00423add    c1e003
                         sub.s              eax, edx                                      // 0x00423ae0    2bc2
                         lea                edx, dword ptr [eax + eax * 0x2]              // 0x00423ae2    8d1440
                         {disp32} mov       esi, dword ptr [edx * 0x4 + 0x00db9e78]       // 0x00423ae5    8b3495789edb00
                         mov                eax, 0xfffffffc                               // 0x00423aec    b8fcffffff
                         cmp.s              esi, eax                                      // 0x00423af1    3bf0
                         pop                esi                                           // 0x00423af3    5e
                         {disp8} je         _jmp_addr_0x00423b2a                          // 0x00423af4    7434
                         {disp32} mov       ecx, dword ptr [ecx + 0x000000bc]             // 0x00423af6    8b89bc000000
                         test               ecx, ecx                                      // 0x00423afc    85c9
                         {disp8} je         _jmp_addr_0x00423b25                          // 0x00423afe    7425
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x00423b00    8b411c
                         add                ecx, 0x14                                     // 0x00423b03    83c114
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00423b06    89442400
                         call               ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z// 0x00423b0a    e881f53d00
                         {disp8} fsubr      dword ptr [esp + 0x00]                        // 0x00423b0f    d86c2400
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c50]             // 0x00423b13    d81d502c8c00
                         fnstsw             ax                                            // 0x00423b19    dfe0
                         test               ah, 0x41                                      // 0x00423b1b    f6c441
                         mov                eax, 0x00000137                               // 0x00423b1e    b837010000
                         {disp8} je         _jmp_addr_0x00423b2a                          // 0x00423b23    7405
_jmp_addr_0x00423b25:    mov                eax, 0x00000181                               // 0x00423b25    b881010000
_jmp_addr_0x00423b2a:    pop                ecx                                           // 0x00423b2a    59
                         ret                                                              // 0x00423b2b    c3
                         nop                                                              // 0x00423b2c    90
                         nop                                                              // 0x00423b2d    90
                         nop                                                              // 0x00423b2e    90
                         nop                                                              // 0x00423b2f    90
                         push               esi                                           // 0x00423b30    56
                         mov.s              esi, ecx                                      // 0x00423b31    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00423b33    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00423b35    ff5048
                         test               eax, eax                                      // 0x00423b38    85c0
                         {disp8} je         _jmp_addr_0x00423b6f                          // 0x00423b3a    7433
                         mov.s              ecx, esi                                      // 0x00423b3c    8bce
                         call               ?GetDesireForFood@Villager@@QAEMXZ            // 0x00423b3e    e80d803300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00423b43    d80d14b48a00
                         call               _jmp_addr_0x007a1400                          // 0x00423b49    e8b2d83700
                         mov.s              ecx, eax                                      // 0x00423b4e    8bc8
                         mov                eax, 0xaaaaaaab                               // 0x00423b50    b8abaaaaaa
                         mul                ecx                                           // 0x00423b55    f7e1
                         shr                edx, 1                                        // 0x00423b57    d1ea
                         cmp                edx, 0x02                                     // 0x00423b59    83fa02
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x00423b63   // 0x00423b5c    7205
                         mov                edx, 0x00000002                               // 0x00423b5e    ba02000000
_jmp_addr_0x00423b63:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00423b63    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x00000338] // 0x00423b66    8b849138030000
                         pop                esi                                           // 0x00423b6d    5e
                         ret                                                              // 0x00423b6e    c3
_jmp_addr_0x00423b6f:    mov                eax, 0x00000181                               // 0x00423b6f    b881010000
                         pop                esi                                           // 0x00423b74    5e
                         ret                                                              // 0x00423b75    c3
                         nop                                                              // 0x00423b76    90
                         nop                                                              // 0x00423b77    90
                         nop                                                              // 0x00423b78    90
                         nop                                                              // 0x00423b79    90
                         nop                                                              // 0x00423b7a    90
                         nop                                                              // 0x00423b7b    90
                         nop                                                              // 0x00423b7c    90
                         nop                                                              // 0x00423b7d    90
                         nop                                                              // 0x00423b7e    90
                         nop                                                              // 0x00423b7f    90
                         push               esi                                           // 0x00423b80    56
                         mov.s              esi, ecx                                      // 0x00423b81    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00423b83    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00423b85    ff5048
                         test               eax, eax                                      // 0x00423b88    85c0
                         {disp8} je         _jmp_addr_0x00423bbf                          // 0x00423b8a    7433
                         mov.s              ecx, esi                                      // 0x00423b8c    8bce
                         call               ?GetDesireForFood@Villager@@QAEMXZ            // 0x00423b8e    e8bd7f3300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00423b93    d80d14b48a00
                         call               _jmp_addr_0x007a1400                          // 0x00423b99    e862d83700
                         mov.s              ecx, eax                                      // 0x00423b9e    8bc8
                         mov                eax, 0xaaaaaaab                               // 0x00423ba0    b8abaaaaaa
                         mul                ecx                                           // 0x00423ba5    f7e1
                         shr                edx, 1                                        // 0x00423ba7    d1ea
                         cmp                edx, 0x02                                     // 0x00423ba9    83fa02
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x00423bb3   // 0x00423bac    7205
                         mov                edx, 0x00000002                               // 0x00423bae    ba02000000
_jmp_addr_0x00423bb3:    {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00423bb3    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + edx * 0x4 + 0x00000344] // 0x00423bb6    8b849144030000
                         pop                esi                                           // 0x00423bbd    5e
                         ret                                                              // 0x00423bbe    c3
_jmp_addr_0x00423bbf:    mov                eax, 0x00000181                               // 0x00423bbf    b881010000
                         pop                esi                                           // 0x00423bc4    5e
                         ret                                                              // 0x00423bc5    c3
                         nop                                                              // 0x00423bc6    90
                         nop                                                              // 0x00423bc7    90
                         nop                                                              // 0x00423bc8    90
                         nop                                                              // 0x00423bc9    90
                         nop                                                              // 0x00423bca    90
                         nop                                                              // 0x00423bcb    90
                         nop                                                              // 0x00423bcc    90
                         nop                                                              // 0x00423bcd    90
                         nop                                                              // 0x00423bce    90
                         nop                                                              // 0x00423bcf    90
                         sub                esp, 0x08                                     // 0x00423bd0    83ec08
                         push               0x000001ed                                    // 0x00423bd3    68ed010000
                         push               0x009c95c0                                    // 0x00423bd8    68c0959c00
                         push               0x64                                          // 0x00423bdd    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423bdf    e82ca92b00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00423be4    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00423be8    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00423bf0    df6c240c
                         add                esp, 0x0c                                     // 0x00423bf4    83c40c
                         {disp32} fcom      qword ptr [rdata_bytes + 0x19c68]             // 0x00423bf7    dc15682c8c00
                         fnstsw             ax                                            // 0x00423bfd    dfe0
                         test               ah, 0x01                                      // 0x00423bff    f6c401
                         {disp8} je         _jmp_addr_0x00423c0f                          // 0x00423c02    740b
                         fstp               st(0)                                         // 0x00423c04    ddd8
                         mov                eax, 0x0000019e                               // 0x00423c06    b89e010000
                         add                esp, 0x08                                     // 0x00423c0b    83c408
                         ret                                                              // 0x00423c0e    c3
_jmp_addr_0x00423c0f:    {disp32} fcom      qword ptr [rdata_bytes + 0x19c60]             // 0x00423c0f    dc15602c8c00
                         fnstsw             ax                                            // 0x00423c15    dfe0
                         test               ah, 0x01                                      // 0x00423c17    f6c401
                         {disp8} je         _jmp_addr_0x00423c27                          // 0x00423c1a    740b
                         fstp               st(0)                                         // 0x00423c1c    ddd8
                         mov                eax, 0x0000019f                               // 0x00423c1e    b89f010000
                         add                esp, 0x08                                     // 0x00423c23    83c408
                         ret                                                              // 0x00423c26    c3
_jmp_addr_0x00423c27:    {disp32} fcomp     qword ptr [rdata_bytes + 0x19c58]             // 0x00423c27    dc1d582c8c00
                         fnstsw             ax                                            // 0x00423c2d    dfe0
                         test               ah, 0x01                                      // 0x00423c2f    f6c401
                         mov                eax, 0x000001a0                               // 0x00423c32    b8a0010000
                         {disp8} jne        _jmp_addr_0x00423c3e                          // 0x00423c37    7505
                         mov                eax, 0x000001a1                               // 0x00423c39    b8a1010000
_jmp_addr_0x00423c3e:    add                esp, 0x08                                     // 0x00423c3e    83c408
                         ret                                                              // 0x00423c41    c3
                         nop                                                              // 0x00423c42    90
                         nop                                                              // 0x00423c43    90
                         nop                                                              // 0x00423c44    90
                         nop                                                              // 0x00423c45    90
                         nop                                                              // 0x00423c46    90
                         nop                                                              // 0x00423c47    90
                         nop                                                              // 0x00423c48    90
                         nop                                                              // 0x00423c49    90
                         nop                                                              // 0x00423c4a    90
                         nop                                                              // 0x00423c4b    90
                         nop                                                              // 0x00423c4c    90
                         nop                                                              // 0x00423c4d    90
                         nop                                                              // 0x00423c4e    90
                         nop                                                              // 0x00423c4f    90
                         mov                eax, 0x0000010d                               // 0x00423c50    b80d010000
                         ret                                                              // 0x00423c55    c3
                         nop                                                              // 0x00423c56    90
                         nop                                                              // 0x00423c57    90
                         nop                                                              // 0x00423c58    90
                         nop                                                              // 0x00423c59    90
                         nop                                                              // 0x00423c5a    90
                         nop                                                              // 0x00423c5b    90
                         nop                                                              // 0x00423c5c    90
                         nop                                                              // 0x00423c5d    90
                         nop                                                              // 0x00423c5e    90
                         nop                                                              // 0x00423c5f    90
                         mov                eax, 0x00000181                               // 0x00423c60    b881010000
                         ret                                                              // 0x00423c65    c3
                         nop                                                              // 0x00423c66    90
                         nop                                                              // 0x00423c67    90
                         nop                                                              // 0x00423c68    90
                         nop                                                              // 0x00423c69    90
                         nop                                                              // 0x00423c6a    90
                         nop                                                              // 0x00423c6b    90
                         nop                                                              // 0x00423c6c    90
                         nop                                                              // 0x00423c6d    90
                         nop                                                              // 0x00423c6e    90
                         nop                                                              // 0x00423c6f    90
                         mov                eax, 0x00000181                               // 0x00423c70    b881010000
                         ret                                                              // 0x00423c75    c3
                         nop                                                              // 0x00423c76    90
                         nop                                                              // 0x00423c77    90
                         nop                                                              // 0x00423c78    90
                         nop                                                              // 0x00423c79    90
                         nop                                                              // 0x00423c7a    90
                         nop                                                              // 0x00423c7b    90
                         nop                                                              // 0x00423c7c    90
                         nop                                                              // 0x00423c7d    90
                         nop                                                              // 0x00423c7e    90
                         nop                                                              // 0x00423c7f    90
?FootballWatchMatchAnimation@Villager@@QAEIXZ:
                         push               esi                                           // 0x00423c80    56
                         mov.s              esi, ecx                                      // 0x00423c81    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00423c83    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00423c85    ff5048
                         test               eax, eax                                      // 0x00423c88    85c0
                         {disp8} je         _jmp_addr_0x00423cc9                          // 0x00423c8a    743d
                         mov.s              ecx, esi                                      // 0x00423c8c    8bce
                         call               ?GetFootball@Villager@@QAEPAVFootball@@XZ     // 0x00423c8e    e80de23200
                         test               eax, eax                                      // 0x00423c93    85c0
                         {disp8} je         _jmp_addr_0x00423cc9                          // 0x00423c95    7432
                         mov.s              ecx, esi                                      // 0x00423c97    8bce
                         call               ?GetFootball@Villager@@QAEPAVFootball@@XZ     // 0x00423c99    e802e23200
                         {disp32} mov       eax, dword ptr [eax + 0x00000200]             // 0x00423c9e    8b8000020000
                         sub                eax, 0x02                                     // 0x00423ca4    83e802
                         {disp8} je         _jmp_addr_0x00423d12                          // 0x00423ca7    7469
                         dec                eax                                           // 0x00423ca9    48
                         {disp8} je         _jmp_addr_0x00423cde                          // 0x00423caa    7432
                         push               0x00000228                                    // 0x00423cac    6828020000
                         push               0x009c95c0                                    // 0x00423cb1    68c0959c00
                         push               0x3                                           // 0x00423cb6    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423cb8    e853a82b00
                         add                esp, 0x0c                                     // 0x00423cbd    83c40c
                         sub                eax, 0x00                                     // 0x00423cc0    83e800
                         {disp8} je         _jmp_addr_0x00423cd7                          // 0x00423cc3    7412
                         dec                eax                                           // 0x00423cc5    48
                         {disp8} je         _jmp_addr_0x00423cd0                          // 0x00423cc6    7408
                         dec                eax                                           // 0x00423cc8    48
_jmp_addr_0x00423cc9:    mov                eax, 0x00000110                               // 0x00423cc9    b810010000
                         pop                esi                                           // 0x00423cce    5e
                         ret                                                              // 0x00423ccf    c3
_jmp_addr_0x00423cd0:    mov                eax, 0x0000018c                               // 0x00423cd0    b88c010000
                         pop                esi                                           // 0x00423cd5    5e
                         ret                                                              // 0x00423cd6    c3
_jmp_addr_0x00423cd7:    mov                eax, 0x0000018b                               // 0x00423cd7    b88b010000
                         pop                esi                                           // 0x00423cdc    5e
                         ret                                                              // 0x00423cdd    c3
_jmp_addr_0x00423cde:    push               0x0000021b                                    // 0x00423cde    681b020000
                         push               0x009c95c0                                    // 0x00423ce3    68c0959c00
                         push               0x3                                           // 0x00423ce8    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423cea    e821a82b00
                         add                esp, 0x0c                                     // 0x00423cef    83c40c
                         sub                eax, 0x00                                     // 0x00423cf2    83e800
                         {disp8} je         _jmp_addr_0x00423d0b                          // 0x00423cf5    7414
                         dec                eax                                           // 0x00423cf7    48
                         {disp8} je         _jmp_addr_0x00423d04                          // 0x00423cf8    740a
                         dec                eax                                           // 0x00423cfa    48
                         {disp8} jne        _jmp_addr_0x00423d12                          // 0x00423cfb    7515
                         mov                eax, 0x000000eb                               // 0x00423cfd    b8eb000000
                         pop                esi                                           // 0x00423d02    5e
                         ret                                                              // 0x00423d03    c3
_jmp_addr_0x00423d04:    mov                eax, 0x000000ea                               // 0x00423d04    b8ea000000
                         pop                esi                                           // 0x00423d09    5e
                         ret                                                              // 0x00423d0a    c3
_jmp_addr_0x00423d0b:    mov                eax, 0x00000182                               // 0x00423d0b    b882010000
                         pop                esi                                           // 0x00423d10    5e
                         ret                                                              // 0x00423d11    c3
_jmp_addr_0x00423d12:    mov                eax, 0x000000e8                               // 0x00423d12    b8e8000000
                         pop                esi                                           // 0x00423d17    5e
                         ret                                                              // 0x00423d18    c3
                         nop                                                              // 0x00423d19    90
                         nop                                                              // 0x00423d1a    90
                         nop                                                              // 0x00423d1b    90
                         nop                                                              // 0x00423d1c    90
                         nop                                                              // 0x00423d1d    90
                         nop                                                              // 0x00423d1e    90
                         nop                                                              // 0x00423d1f    90
                         sub                esp, 0x08                                     // 0x00423d20    83ec08
                         push               0x0000023c                                    // 0x00423d23    683c020000
                         push               0x009c95c0                                    // 0x00423d28    68c0959c00
                         push               0x64                                          // 0x00423d2d    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423d2f    e8dca72b00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00423d34    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00423d38    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00423d40    df6c240c
                         add                esp, 0x0c                                     // 0x00423d44    83c40c
                         {disp32} fcom      qword ptr [rdata_bytes + 0x19c68]             // 0x00423d47    dc15682c8c00
                         fnstsw             ax                                            // 0x00423d4d    dfe0
                         test               ah, 0x01                                      // 0x00423d4f    f6c401
                         {disp8} je         _jmp_addr_0x00423d5f                          // 0x00423d52    740b
                         fstp               st(0)                                         // 0x00423d54    ddd8
                         mov                eax, 0x00000136                               // 0x00423d56    b836010000
                         add                esp, 0x08                                     // 0x00423d5b    83c408
                         ret                                                              // 0x00423d5e    c3
_jmp_addr_0x00423d5f:    {disp32} fcom      qword ptr [rdata_bytes + 0x19c60]             // 0x00423d5f    dc15602c8c00
                         fnstsw             ax                                            // 0x00423d65    dfe0
                         test               ah, 0x01                                      // 0x00423d67    f6c401
                         {disp8} je         _jmp_addr_0x00423d77                          // 0x00423d6a    740b
                         fstp               st(0)                                         // 0x00423d6c    ddd8
                         mov                eax, 0x00000181                               // 0x00423d6e    b881010000
                         add                esp, 0x08                                     // 0x00423d73    83c408
                         ret                                                              // 0x00423d76    c3
_jmp_addr_0x00423d77:    {disp32} fcomp     qword ptr [rdata_bytes + 0x19c58]             // 0x00423d77    dc1d582c8c00
                         fnstsw             ax                                            // 0x00423d7d    dfe0
                         test               ah, 0x01                                      // 0x00423d7f    f6c401
                         mov                eax, 0x0000019c                               // 0x00423d82    b89c010000
                         {disp8} jne        _jmp_addr_0x00423d8e                          // 0x00423d87    7505
                         mov                eax, 0x0000019d                               // 0x00423d89    b89d010000
_jmp_addr_0x00423d8e:    add                esp, 0x08                                     // 0x00423d8e    83c408
                         ret                                                              // 0x00423d91    c3
                         nop                                                              // 0x00423d92    90
                         nop                                                              // 0x00423d93    90
                         nop                                                              // 0x00423d94    90
                         nop                                                              // 0x00423d95    90
                         nop                                                              // 0x00423d96    90
                         nop                                                              // 0x00423d97    90
                         nop                                                              // 0x00423d98    90
                         nop                                                              // 0x00423d99    90
                         nop                                                              // 0x00423d9a    90
                         nop                                                              // 0x00423d9b    90
                         nop                                                              // 0x00423d9c    90
                         nop                                                              // 0x00423d9d    90
                         nop                                                              // 0x00423d9e    90
                         nop                                                              // 0x00423d9f    90
                         sub                esp, 0x08                                     // 0x00423da0    83ec08
                         push               0x00000253                                    // 0x00423da3    6853020000
                         push               0x009c95c0                                    // 0x00423da8    68c0959c00
                         push               0x64                                          // 0x00423dad    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423daf    e85ca72b00
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00423db4    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x00423db8    c744241000000000
                         {disp8} fild       qword ptr [esp + 0x0c]                        // 0x00423dc0    df6c240c
                         add                esp, 0x0c                                     // 0x00423dc4    83c40c
                         {disp32} fcom      qword ptr [rdata_bytes + 0x19c68]             // 0x00423dc7    dc15682c8c00
                         fnstsw             ax                                            // 0x00423dcd    dfe0
                         test               ah, 0x01                                      // 0x00423dcf    f6c401
                         {disp8} je         _jmp_addr_0x00423ddf                          // 0x00423dd2    740b
                         fstp               st(0)                                         // 0x00423dd4    ddd8
                         mov                eax, 0x000000e3                               // 0x00423dd6    b8e3000000
                         add                esp, 0x08                                     // 0x00423ddb    83c408
                         ret                                                              // 0x00423dde    c3
_jmp_addr_0x00423ddf:    {disp32} fcom      qword ptr [rdata_bytes + 0x19c60]             // 0x00423ddf    dc15602c8c00
                         fnstsw             ax                                            // 0x00423de5    dfe0
                         test               ah, 0x01                                      // 0x00423de7    f6c401
                         {disp8} je         _jmp_addr_0x00423df7                          // 0x00423dea    740b
                         fstp               st(0)                                         // 0x00423dec    ddd8
                         mov                eax, 0x000000ea                               // 0x00423dee    b8ea000000
                         add                esp, 0x08                                     // 0x00423df3    83c408
                         ret                                                              // 0x00423df6    c3
_jmp_addr_0x00423df7:    {disp32} fcomp     qword ptr [rdata_bytes + 0x19c58]             // 0x00423df7    dc1d582c8c00
                         fnstsw             ax                                            // 0x00423dfd    dfe0
                         test               ah, 0x01                                      // 0x00423dff    f6c401
                         mov                eax, 0x000000eb                               // 0x00423e02    b8eb000000
                         {disp8} jne        _jmp_addr_0x00423e0e                          // 0x00423e07    7505
                         mov                eax, 0x000000e8                               // 0x00423e09    b8e8000000
_jmp_addr_0x00423e0e:    add                esp, 0x08                                     // 0x00423e0e    83c408
                         ret                                                              // 0x00423e11    c3
                         nop                                                              // 0x00423e12    90
                         nop                                                              // 0x00423e13    90
                         nop                                                              // 0x00423e14    90
                         nop                                                              // 0x00423e15    90
                         nop                                                              // 0x00423e16    90
                         nop                                                              // 0x00423e17    90
                         nop                                                              // 0x00423e18    90
                         nop                                                              // 0x00423e19    90
                         nop                                                              // 0x00423e1a    90
                         nop                                                              // 0x00423e1b    90
                         nop                                                              // 0x00423e1c    90
                         nop                                                              // 0x00423e1d    90
                         nop                                                              // 0x00423e1e    90
                         nop                                                              // 0x00423e1f    90
                         push               esi                                           // 0x00423e20    56
                         mov.s              esi, ecx                                      // 0x00423e21    8bf1
                         test               byte ptr [esi + 0x000000e1], 0x08             // 0x00423e23    f686e100000008
                         {disp8} je         _jmp_addr_0x00423e5c                          // 0x00423e2a    7430
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00423e2c    8b4e40
                         mov                eax, dword ptr [ecx]                          // 0x00423e2f    8b01
                         call               dword ptr [eax + 0x184]                       // 0x00423e31    ff9084010000
                         test               eax, eax                                      // 0x00423e37    85c0
                         {disp8} je         _jmp_addr_0x00423e5c                          // 0x00423e39    7421
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x00423e3b    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x00423e3e    8b11
                         call               dword ptr [edx + 0x184]                       // 0x00423e40    ff9284010000
                         mov.s              ecx, eax                                      // 0x00423e46    8bc8
                         call               _jmp_addr_0x0083add0                          // 0x00423e48    e8836f4100
                         sub                eax, 0x0000011c                               // 0x00423e4d    2d1c010000
                         {disp8} je         _jmp_addr_0x00423e94                          // 0x00423e52    7440
                         sub                eax, 0x08                                     // 0x00423e54    83e808
                         {disp8} je         _jmp_addr_0x00423e86                          // 0x00423e57    742d
                         dec                eax                                           // 0x00423e59    48
                         {disp8} je         _jmp_addr_0x00423e78                          // 0x00423e5a    741c
_jmp_addr_0x00423e5c:    push               0x0000027b                                    // 0x00423e5c    687b020000
                         push               0x009c95c0                                    // 0x00423e61    68c0959c00
                         push               0x3                                           // 0x00423e66    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423e68    e8a3a62b00
                         add                esp, 0x0c                                     // 0x00423e6d    83c40c
                         sub                eax, 0x00                                     // 0x00423e70    83e800
                         {disp8} je         _jmp_addr_0x00423e94                          // 0x00423e73    741f
                         dec                eax                                           // 0x00423e75    48
                         {disp8} je         _jmp_addr_0x00423e86                          // 0x00423e76    740e
_jmp_addr_0x00423e78:    {disp32} mov       byte ptr [esi + 0x000000f1], 0x09             // 0x00423e78    c686f100000009
                         mov                eax, 0x0000017c                               // 0x00423e7f    b87c010000
                         pop                esi                                           // 0x00423e84    5e
                         ret                                                              // 0x00423e85    c3
_jmp_addr_0x00423e86:    {disp32} mov       byte ptr [esi + 0x000000f1], 0x05             // 0x00423e86    c686f100000005
                         mov                eax, 0x00000162                               // 0x00423e8d    b862010000
                         pop                esi                                           // 0x00423e92    5e
                         ret                                                              // 0x00423e93    c3
_jmp_addr_0x00423e94:    {disp32} mov       byte ptr [esi + 0x000000f1], 0x08             // 0x00423e94    c686f100000008
                         mov                eax, 0x00000114                               // 0x00423e9b    b814010000
                         pop                esi                                           // 0x00423ea0    5e
                         ret                                                              // 0x00423ea1    c3
                         nop                                                              // 0x00423ea2    90
                         nop                                                              // 0x00423ea3    90
                         nop                                                              // 0x00423ea4    90
                         nop                                                              // 0x00423ea5    90
                         nop                                                              // 0x00423ea6    90
                         nop                                                              // 0x00423ea7    90
                         nop                                                              // 0x00423ea8    90
                         nop                                                              // 0x00423ea9    90
                         nop                                                              // 0x00423eaa    90
                         nop                                                              // 0x00423eab    90
                         nop                                                              // 0x00423eac    90
                         nop                                                              // 0x00423ead    90
                         nop                                                              // 0x00423eae    90
                         nop                                                              // 0x00423eaf    90
                         push               esi                                           // 0x00423eb0    56
                         mov.s              esi, ecx                                      // 0x00423eb1    8bf1
                         call               ?IsWoman@Villager@@QAE_NXZ                    // 0x00423eb3    e868e73200
                         test               eax, eax                                      // 0x00423eb8    85c0
                         {disp8} jne        _jmp_addr_0x00423eca                          // 0x00423eba    750e
                         mov                eax, dword ptr [esi]                          // 0x00423ebc    8b06
                         mov.s              ecx, esi                                      // 0x00423ebe    8bce
                         call               dword ptr [eax + 0xaf8]                       // 0x00423ec0    ff90f80a0000
                         test               eax, eax                                      // 0x00423ec6    85c0
                         {disp8} je         _jmp_addr_0x00423ee9                          // 0x00423ec8    741f
_jmp_addr_0x00423eca:    push               0x00000291                                    // 0x00423eca    6891020000
                         push               0x009c95c0                                    // 0x00423ecf    68c0959c00
                         push               0x3                                           // 0x00423ed4    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423ed6    e835a62b00
                         add                esp, 0x0c                                     // 0x00423edb    83c40c
                         test               eax, eax                                      // 0x00423ede    85c0
                         {disp8} jne        _jmp_addr_0x00423ee9                          // 0x00423ee0    7507
                         mov                eax, 0x00000163                               // 0x00423ee2    b863010000
                         pop                esi                                           // 0x00423ee7    5e
                         ret                                                              // 0x00423ee8    c3
_jmp_addr_0x00423ee9:    {disp32} mov       eax, dword ptr [esi + 0x000000bc]             // 0x00423ee9    8b86bc000000
                         test               eax, eax                                      // 0x00423eef    85c0
                         {disp8} je         _jmp_addr_0x00423f2f                          // 0x00423ef1    743c
                         add                eax, 0x14                                     // 0x00423ef3    83c014
                         push               eax                                           // 0x00423ef6    50
                         add                esi, 0x14                                     // 0x00423ef7    83c614
                         push               esi                                           // 0x00423efa    56
                         call               ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z                               // 0x00423efb    e8708e3200
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x19c70]             // 0x00423f00    d81d702c8c00
                         add                esp, 0x08                                     // 0x00423f06    83c408
                         fnstsw             ax                                            // 0x00423f09    dfe0
                         test               ah, 0x01                                      // 0x00423f0b    f6c401
                         {disp8} je         _jmp_addr_0x00423f2f                          // 0x00423f0e    741f
                         push               0x0000029b                                    // 0x00423f10    689b020000
                         push               0x009c95c0                                    // 0x00423f15    68c0959c00
                         push               0x3                                           // 0x00423f1a    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423f1c    e8efa52b00
                         add                esp, 0x0c                                     // 0x00423f21    83c40c
                         test               eax, eax                                      // 0x00423f24    85c0
                         {disp8} jne        _jmp_addr_0x00423f2f                          // 0x00423f26    7507
                         mov                eax, 0x00000137                               // 0x00423f28    b837010000
                         pop                esi                                           // 0x00423f2d    5e
                         ret                                                              // 0x00423f2e    c3
_jmp_addr_0x00423f2f:    push               0x000002a1                                    // 0x00423f2f    68a1020000
                         push               0x009c95c0                                    // 0x00423f34    68c0959c00
                         push               0x8                                           // 0x00423f39    6a08
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423f3b    e8d0a52b00
                         add                esp, 0x0c                                     // 0x00423f40    83c40c
                         mov                ecx, 0x00000002                               // 0x00423f43    b902000000
                         cmp.s              ecx, eax                                      // 0x00423f48    3bc8
                         sbb.s              eax, eax                                      // 0x00423f4a    1bc0
                         and                eax, 0x0a                                     // 0x00423f4c    83e00a
                         add                eax, 0x00000181                               // 0x00423f4f    0581010000
                         pop                esi                                           // 0x00423f54    5e
                         ret                                                              // 0x00423f55    c3
                         nop                                                              // 0x00423f56    90
                         nop                                                              // 0x00423f57    90
                         nop                                                              // 0x00423f58    90
                         nop                                                              // 0x00423f59    90
                         nop                                                              // 0x00423f5a    90
                         nop                                                              // 0x00423f5b    90
                         nop                                                              // 0x00423f5c    90
                         nop                                                              // 0x00423f5d    90
                         nop                                                              // 0x00423f5e    90
                         nop                                                              // 0x00423f5f    90
                         push               0x000002b4                                    // 0x00423f60    68b4020000
                         push               0x009c95c0                                    // 0x00423f65    68c0959c00
                         push               0x5                                           // 0x00423f6a    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423f6c    e89fa52b00
                         add                esp, 0x0c                                     // 0x00423f71    83c40c
                         test               eax, eax                                      // 0x00423f74    85c0
                         {disp8} je         _jmp_addr_0x00423f8b                          // 0x00423f76    7413
                         {disp8} jbe        _jmp_addr_0x00423f85                          // 0x00423f78    760b
                         cmp                eax, 0x02                                     // 0x00423f7a    83f802
                         {disp8} ja         _jmp_addr_0x00423f85                          // 0x00423f7d    7706
                         mov                eax, 0x00000181                               // 0x00423f7f    b881010000
                         ret                                                              // 0x00423f84    c3
_jmp_addr_0x00423f85:    mov                eax, 0x00000157                               // 0x00423f85    b857010000
                         ret                                                              // 0x00423f8a    c3
_jmp_addr_0x00423f8b:    mov                eax, 0x000000e3                               // 0x00423f8b    b8e3000000
                         ret                                                              // 0x00423f90    c3
                         nop                                                              // 0x00423f91    90
                         nop                                                              // 0x00423f92    90
                         nop                                                              // 0x00423f93    90
                         nop                                                              // 0x00423f94    90
                         nop                                                              // 0x00423f95    90
                         nop                                                              // 0x00423f96    90
                         nop                                                              // 0x00423f97    90
                         nop                                                              // 0x00423f98    90
                         nop                                                              // 0x00423f99    90
                         nop                                                              // 0x00423f9a    90
                         nop                                                              // 0x00423f9b    90
                         nop                                                              // 0x00423f9c    90
                         nop                                                              // 0x00423f9d    90
                         nop                                                              // 0x00423f9e    90
                         nop                                                              // 0x00423f9f    90
                         push               0x000002c3                                    // 0x00423fa0    68c3020000
                         push               0x009c95c0                                    // 0x00423fa5    68c0959c00
                         push               0x3                                           // 0x00423faa    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423fac    e85fa52b00
                         mov                ecx, 0x00000001                               // 0x00423fb1    b901000000
                         add                esp, 0x0c                                     // 0x00423fb6    83c40c
                         cmp.s              ecx, eax                                      // 0x00423fb9    3bc8
                         sbb.s              eax, eax                                      // 0x00423fbb    1bc0
                         and                eax, 0x21                                     // 0x00423fbd    83e021
                         add                eax, 0x00000181                               // 0x00423fc0    0581010000
                         ret                                                              // 0x00423fc5    c3
                         nop                                                              // 0x00423fc6    90
                         nop                                                              // 0x00423fc7    90
                         nop                                                              // 0x00423fc8    90
                         nop                                                              // 0x00423fc9    90
                         nop                                                              // 0x00423fca    90
                         nop                                                              // 0x00423fcb    90
                         nop                                                              // 0x00423fcc    90
                         nop                                                              // 0x00423fcd    90
                         nop                                                              // 0x00423fce    90
                         nop                                                              // 0x00423fcf    90
                         push               esi                                           // 0x00423fd0    56
                         mov.s              esi, ecx                                      // 0x00423fd1    8bf1
                         call               ?IsWoman@Villager@@QAE_NXZ                    // 0x00423fd3    e848e63200
                         test               eax, eax                                      // 0x00423fd8    85c0
                         {disp8} jne        _jmp_addr_0x00423fea                          // 0x00423fda    750e
                         mov                eax, dword ptr [esi]                          // 0x00423fdc    8b06
                         mov.s              ecx, esi                                      // 0x00423fde    8bce
                         call               dword ptr [eax + 0xaf8]                       // 0x00423fe0    ff90f80a0000
                         test               eax, eax                                      // 0x00423fe6    85c0
                         {disp8} je         _jmp_addr_0x00424009                          // 0x00423fe8    741f
_jmp_addr_0x00423fea:    push               0x000002d3                                    // 0x00423fea    68d3020000
                         push               0x009c95c0                                    // 0x00423fef    68c0959c00
                         push               0x3                                           // 0x00423ff4    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00423ff6    e815a52b00
                         add                esp, 0x0c                                     // 0x00423ffb    83c40c
                         test               eax, eax                                      // 0x00423ffe    85c0
                         {disp8} jne        _jmp_addr_0x00424009                          // 0x00424000    7507
                         mov                eax, 0x00000163                               // 0x00424002    b863010000
                         pop                esi                                           // 0x00424007    5e
                         ret                                                              // 0x00424008    c3
_jmp_addr_0x00424009:    push               0x000002d8                                    // 0x00424009    68d8020000
                         push               0x009c95c0                                    // 0x0042400e    68c0959c00
                         push               0x3                                           // 0x00424013    6a03
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x00424015    e8f6a42b00
                         add                esp, 0x0c                                     // 0x0042401a    83c40c
                         sub                eax, 0x00                                     // 0x0042401d    83e800
                         {disp8} je         _jmp_addr_0x00424033                          // 0x00424020    7411
                         dec                eax                                           // 0x00424022    48
                         {disp8} je         _jmp_addr_0x0042402c                          // 0x00424023    7407
                         mov                eax, 0x0000018b                               // 0x00424025    b88b010000
                         pop                esi                                           // 0x0042402a    5e
                         ret                                                              // 0x0042402b    c3
_jmp_addr_0x0042402c:    mov                eax, 0x00000181                               // 0x0042402c    b881010000
                         pop                esi                                           // 0x00424031    5e
                         ret                                                              // 0x00424032    c3
_jmp_addr_0x00424033:    mov                eax, 0x00000136                               // 0x00424033    b836010000
                         pop                esi                                           // 0x00424038    5e
                         ret                                                              // 0x00424039    c3
                         call               dword ptr [__imp__ShellExecuteA@4]            // 0x0042403a    ff15ac978a00
                         mov                eax, 0x00000137                               // 0x00424040    b837010000
                         ret                                                              // 0x00424045    c3
                         nop                                                              // 0x00424046    90
                         nop                                                              // 0x00424047    90
                         nop                                                              // 0x00424048    90
                         nop                                                              // 0x00424049    90
                         nop                                                              // 0x0042404a    90
                         nop                                                              // 0x0042404b    90
                         nop                                                              // 0x0042404c    90
                         nop                                                              // 0x0042404d    90
                         nop                                                              // 0x0042404e    90
                         nop                                                              // 0x0042404f    90
                         push               0x000002ed                                    // 0x00424050    68ed020000
                         push               0x009c95c0                                    // 0x00424055    68c0959c00
                         push               0x2                                           // 0x0042405a    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0042405c    e8afa42b00
                         add                esp, 0x0c                                     // 0x00424061    83c40c
                         dec                eax                                           // 0x00424064    48
                         mov                eax, 0x000001b5                               // 0x00424065    b8b5010000
                         {disp8} jne        _jmp_addr_0x00424071                          // 0x0042406a    7505
                         mov                eax, 0x000001b6                               // 0x0042406c    b8b6010000
_jmp_addr_0x00424071:    ret                                                              // 0x00424071    c3
                         nop                                                              // 0x00424072    90
                         nop                                                              // 0x00424073    90
                         nop                                                              // 0x00424074    90
                         nop                                                              // 0x00424075    90
                         nop                                                              // 0x00424076    90
                         nop                                                              // 0x00424077    90
                         nop                                                              // 0x00424078    90
                         nop                                                              // 0x00424079    90
                         nop                                                              // 0x0042407a    90
                         nop                                                              // 0x0042407b    90
                         nop                                                              // 0x0042407c    90
                         nop                                                              // 0x0042407d    90
                         nop                                                              // 0x0042407e    90
                         nop                                                              // 0x0042407f    90
                         mov                eax, dword ptr [ecx]                          // 0x00424080    8b01
                         call               dword ptr [eax + 0x4a4]                       // 0x00424082    ff90a4040000
                         test               al, al                                        // 0x00424088    84c0
                         {disp8} je         _jmp_addr_0x00424092                          // 0x0042408a    7406
                         mov                eax, 0x00000156                               // 0x0042408c    b856010000
                         ret                                                              // 0x00424091    c3
_jmp_addr_0x00424092:    push               0x000002fe                                    // 0x00424092    68fe020000
                         push               0x009c95c0                                    // 0x00424097    68c0959c00
                         push               0x2                                           // 0x0042409c    6a02
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0042409e    e86da42b00
                         add                esp, 0x0c                                     // 0x004240a3    83c40c
                         dec                eax                                           // 0x004240a6    48
                         mov                eax, 0x0000014c                               // 0x004240a7    b84c010000
                         {disp8} jne        _jmp_addr_0x004240b3                          // 0x004240ac    7505
                         mov                eax, 0x0000014d                               // 0x004240ae    b84d010000
_jmp_addr_0x004240b3:    ret                                                              // 0x004240b3    c3
                         nop                                                              // 0x004240b4    90
                         nop                                                              // 0x004240b5    90
                         nop                                                              // 0x004240b6    90
                         nop                                                              // 0x004240b7    90
                         nop                                                              // 0x004240b8    90
                         nop                                                              // 0x004240b9    90
                         nop                                                              // 0x004240ba    90
                         nop                                                              // 0x004240bb    90
                         nop                                                              // 0x004240bc    90
                         nop                                                              // 0x004240bd    90
                         nop                                                              // 0x004240be    90
                         nop                                                              // 0x004240bf    90
                         push               0x0000030b                                    // 0x004240c0    680b030000
                         push               0x009c95c0                                    // 0x004240c5    68c0959c00
                         push               0x5                                           // 0x004240ca    6a05
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x004240cc    e83fa42b00
                         add                esp, 0x0c                                     // 0x004240d1    83c40c
                         test               eax, eax                                      // 0x004240d4    85c0
                         {disp8} je         _jmp_addr_0x004240eb                          // 0x004240d6    7413
                         {disp8} jbe        _jmp_addr_0x004240e5                          // 0x004240d8    760b
                         cmp                eax, 0x02                                     // 0x004240da    83f802
                         {disp8} ja         _jmp_addr_0x004240e5                          // 0x004240dd    7706
                         mov                eax, 0x00000137                               // 0x004240df    b837010000
                         ret                                                              // 0x004240e4    c3
_jmp_addr_0x004240e5:    mov                eax, 0x00000181                               // 0x004240e5    b881010000
                         ret                                                              // 0x004240ea    c3
_jmp_addr_0x004240eb:    mov                eax, 0x0000011e                               // 0x004240eb    b81e010000
                         ret                                                              // 0x004240f0    c3
                         nop                                                              // 0x004240f1    90
                         nop                                                              // 0x004240f2    90
                         nop                                                              // 0x004240f3    90
                         nop                                                              // 0x004240f4    90
                         nop                                                              // 0x004240f5    90
                         nop                                                              // 0x004240f6    90
                         nop                                                              // 0x004240f7    90
                         nop                                                              // 0x004240f8    90
                         nop                                                              // 0x004240f9    90
                         nop                                                              // 0x004240fa    90
                         nop                                                              // 0x004240fb    90
                         nop                                                              // 0x004240fc    90
                         nop                                                              // 0x004240fd    90
                         nop                                                              // 0x004240fe    90
                         nop                                                              // 0x004240ff    90
                         push               esi                                           // 0x00424100    56
                         push               0x0000031c                                    // 0x00424101    681c030000
                         push               0x009c95c0                                    // 0x00424106    68c0959c00
                         push               0xa                                           // 0x0042410b    6a0a
                         mov.s              esi, ecx                                      // 0x0042410d    8bf1
                         call               ?GameRand@GRand@@SAHJ@Z                       // 0x0042410f    e8fca32b00
                         add                esp, 0x0c                                     // 0x00424114    83c40c
                         dec                eax                                           // 0x00424117    48
                         cmp                eax, 0x08                                     // 0x00424118    83f808
                         {disp8} ja         _jmp_addr_0x00424176                          // 0x0042411b    7759
                         jmp                dword ptr [eax*4 + 0x424180]                  // 0x0042411d    ff248580414200
                         mov                eax, 0x000000d2                               // 0x00424124    b8d2000000
                         pop                esi                                           // 0x00424129    5e
                         ret                                                              // 0x0042412a    c3
                         mov                eax, 0x000000de                               // 0x0042412b    b8de000000
                         pop                esi                                           // 0x00424130    5e
                         ret                                                              // 0x00424131    c3
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00424132    8b4628
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]             // 0x00424135    8b90f8010000
                         xor.s              ecx, ecx                                      // 0x0042413b    33c9
                         test               edx, edx                                      // 0x0042413d    85d2
                         setne              cl                                            // 0x0042413f    0f95c1
                         pop                esi                                           // 0x00424142    5e
                         add                ecx, 0x0000014e                               // 0x00424143    81c14e010000
                         mov.s              eax, ecx                                      // 0x00424149    8bc1
                         ret                                                              // 0x0042414b    c3
                         mov                eax, 0x00000163                               // 0x0042414c    b863010000
                         pop                esi                                           // 0x00424151    5e
                         ret                                                              // 0x00424152    c3
                         mov                eax, 0x00000164                               // 0x00424153    b864010000
                         pop                esi                                           // 0x00424158    5e
                         ret                                                              // 0x00424159    c3
                         mov                eax, 0x00000182                               // 0x0042415a    b882010000
                         pop                esi                                           // 0x0042415f    5e
                         ret                                                              // 0x00424160    c3
                         mov                eax, 0x00000183                               // 0x00424161    b883010000
                         pop                esi                                           // 0x00424166    5e
                         ret                                                              // 0x00424167    c3
                         mov                eax, 0x00000184                               // 0x00424168    b884010000
                         pop                esi                                           // 0x0042416d    5e
                         ret                                                              // 0x0042416e    c3
                         mov                eax, 0x0000018b                               // 0x0042416f    b88b010000
                         pop                esi                                           // 0x00424174    5e
                         ret                                                              // 0x00424175    c3
_jmp_addr_0x00424176:    mov                eax, 0x000000cf                               // 0x00424176    b8cf000000
                         pop                esi                                           // 0x0042417b    5e
                         ret                                                              // 0x0042417c    c3

// Snippet: db, [0x0042417d, 0x00424180)
.byte 0x8d, 0x49, 0x00            // 0x0042417d

// Snippet: jmptbl, [0x00424180, 0x004241a4)
.byte 0x24, 0x41, 0x42, 0x00      // 0x00424180
.byte 0x2b, 0x41, 0x42, 0x00      // 0x00424184
.byte 0x32, 0x41, 0x42, 0x00      // 0x00424188
.byte 0x4c, 0x41, 0x42, 0x00      // 0x0042418c
.byte 0x53, 0x41, 0x42, 0x00      // 0x00424190
.byte 0x5a, 0x41, 0x42, 0x00      // 0x00424194
.byte 0x61, 0x41, 0x42, 0x00      // 0x00424198
.byte 0x68, 0x41, 0x42, 0x00      // 0x0042419c
.byte 0x6f, 0x41, 0x42, 0x00      // 0x004241a0

// Snippet: db, [0x004241a4, 0x004241b0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x004241a4
.byte 0x90, 0x90, 0x90, 0x90      // 0x004241a8
.byte 0x90, 0x90, 0x90, 0x90      // 0x004241ac

