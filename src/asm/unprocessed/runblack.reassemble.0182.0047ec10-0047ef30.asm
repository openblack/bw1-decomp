.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x004c9fe0
.extern _jmp_addr_0x004dce20
.extern ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern ?GameRand@GRand@@SAHJ@Z
.extern ___nw__FUl

.globl _jmp_addr_0x0047ec10

start_0x0047ec10_0x0047ef30:
// Snippet: asm, [0x0047ec10, 0x0047ef05)
_jmp_addr_0x0047ec10:    sub                esp, 0x18                          // 0x0047ec10    83ec18
                         push               ebx                                // 0x0047ec13    53
                         push               ebp                                // 0x0047ec14    55
                         push               esi                                // 0x0047ec15    56
                         push               edi                                // 0x0047ec16    57
                         push               0x00001761                         // 0x0047ec17    6861170000
                         push               0x009cf9e0                         // 0x0047ec1c    68e0f99c00
                         push               0x8                                // 0x0047ec21    6a08
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047ec23    e8e8f82500
                         add                esp, 0x0c                          // 0x0047ec28    83c40c
                         add                eax, 0x08                          // 0x0047ec2b    83c008
                         {disp8} mov        dword ptr [esp + 0x14], eax        // 0x0047ec2e    89442414
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000 // 0x0047ec32    c744241000000000
                         {disp32} je        _jmp_addr_0x0047ee93               // 0x0047ec3a    0f8453020000
                         {disp8} mov        ebp, dword ptr [esp + 0x24]        // 0x0047ec40    8b6c2424
                         {disp8} mov        ebx, dword ptr [esp + 0x20]        // 0x0047ec44    8b5c2420
                         {disp8} mov        edi, dword ptr [esp + 0x1c]        // 0x0047ec48    8b7c241c
                         {disp8} mov        esi, dword ptr [esp + 0x18]        // 0x0047ec4c    8b742418
_jmp_addr_0x0047ec50:    push               0x00001766                         // 0x0047ec50    6866170000
                         push               0x009cf9e0                         // 0x0047ec55    68e0f99c00
                         push               0x3                                // 0x0047ec5a    6a03
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047ec5c    e8aff82500
                         add                esp, 0x0c                          // 0x0047ec61    83c40c
                         sub                eax, 0x00                          // 0x0047ec64    83e800
                         {disp8} je         _jmp_addr_0x0047ec7d               // 0x0047ec67    7414
                         dec                eax                                // 0x0047ec69    48
                         {disp8} je         _jmp_addr_0x0047ec76               // 0x0047ec6a    740a
                         dec                eax                                // 0x0047ec6c    48
                         {disp8} jne        _jmp_addr_0x0047ec88               // 0x0047ec6d    7519
                         mov                esi, 0x004c8550                    // 0x0047ec6f    be50854c00
                         {disp8} jmp        _jmp_addr_0x0047ec82               // 0x0047ec74    eb0c
_jmp_addr_0x0047ec76:    mov                esi, 0x004c8720                    // 0x0047ec76    be20874c00
                         {disp8} jmp        _jmp_addr_0x0047ec82               // 0x0047ec7b    eb05
_jmp_addr_0x0047ec7d:    mov                esi, 0x004c86d0                    // 0x0047ec7d    bed0864c00
_jmp_addr_0x0047ec82:    xor.s              edi, edi                           // 0x0047ec82    33ff
                         xor.s              ebx, ebx                           // 0x0047ec84    33db
                         xor.s              ebp, ebp                           // 0x0047ec86    33ed
_jmp_addr_0x0047ec88:    {disp8} mov        eax, dword ptr [esp + 0x10]        // 0x0047ec88    8b442410
                         test               eax, eax                           // 0x0047ec8c    85c0
                         {disp8} je         _jmp_addr_0x0047eca8               // 0x0047ec8e    7418
                         push               0x00001773                         // 0x0047ec90    6873170000
                         push               0x009cf9e0                         // 0x0047ec95    68e0f99c00
                         push               0x2                                // 0x0047ec9a    6a02
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047ec9c    e86ff82500
                         add                esp, 0x0c                          // 0x0047eca1    83c40c
                         test               eax, eax                           // 0x0047eca4    85c0
                         {disp8} jne        _jmp_addr_0x0047ece9               // 0x0047eca6    7541
_jmp_addr_0x0047eca8:    sub                esp, 0x10                          // 0x0047eca8    83ec10
                         mov.s              edx, esp                           // 0x0047ecab    8bd4
                         mov                dword ptr [edx], esi               // 0x0047ecad    8932
                         {disp8} mov        dword ptr [edx + 0x04], edi        // 0x0047ecaf    897a04
                         {disp8} mov        dword ptr [edx + 0x08], ebx        // 0x0047ecb2    895a08
                         {disp8} mov        dword ptr [edx + 0x0c], ebp        // 0x0047ecb5    896a0c
                         sub                esp, 0x10                          // 0x0047ecb8    83ec10
                         mov.s              edx, esp                           // 0x0047ecbb    8bd4
                         mov                eax, 0x004d1a30                    // 0x0047ecbd    b8301a4d00
                         mov                dword ptr [edx], eax               // 0x0047ecc2    8902
                         xor.s              ecx, ecx                           // 0x0047ecc4    33c9
                         {disp8} mov        dword ptr [edx + 0x04], ecx        // 0x0047ecc6    894a04
                         xor.s              eax, eax                           // 0x0047ecc9    33c0
                         {disp8} mov        dword ptr [edx + 0x08], eax        // 0x0047eccb    894208
                         push               eax                                // 0x0047ecce    50
                         {disp8} mov        dword ptr [edx + 0x0c], eax        // 0x0047eccf    89420c
                         {disp8} mov        eax, dword ptr [esp + 0x50]        // 0x0047ecd2    8b442450
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]  // 0x0047ecd6    8b8864010000
                         push               0x1f                               // 0x0047ecdc    6a1f
                         add                ecx, 0x00000fa8                    // 0x0047ecde    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047ece4    e857050800
_jmp_addr_0x0047ece9:    push               0x00001777                         // 0x0047ece9    6877170000
                         push               0x009cf9e0                         // 0x0047ecee    68e0f99c00
                         push               0x9                                // 0x0047ecf3    6a09
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047ecf5    e816f82500
                         add                esp, 0x0c                          // 0x0047ecfa    83c40c
                         cmp                eax, 0x08                          // 0x0047ecfd    83f808
                         {disp32} ja        _jmp_addr_0x0047ee7e               // 0x0047ed00    0f8778010000
                         jmp                dword ptr [eax*4 + 0x47ef08]       // 0x0047ed06    ff248508ef4700
                         push               0x0000177d                         // 0x0047ed0d    687d170000
                         push               0x009cf9e0                         // 0x0047ed12    68e0f99c00
                         push               0x8                                // 0x0047ed17    6a08
                         call               ___nw__FUl                         // 0x0047ed19    e872ca3500
                         add                esp, 0x0c                          // 0x0047ed1e    83c40c
                         test               eax, eax                           // 0x0047ed21    85c0
                         {disp32} je        _jmp_addr_0x0047ee3f               // 0x0047ed23    0f8416010000
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ed29    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000038 // 0x0047ed2f    c7400438000000
                         {disp32} jmp       _jmp_addr_0x0047ee41               // 0x0047ed36    e906010000
                         push               0x00001781                         // 0x0047ed3b    6881170000
                         push               0x009cf9e0                         // 0x0047ed40    68e0f99c00
                         push               0x8                                // 0x0047ed45    6a08
                         call               ___nw__FUl                         // 0x0047ed47    e844ca3500
                         add                esp, 0x0c                          // 0x0047ed4c    83c40c
                         test               eax, eax                           // 0x0047ed4f    85c0
                         {disp32} je        _jmp_addr_0x0047ee3f               // 0x0047ed51    0f84e8000000
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ed57    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000d9 // 0x0047ed5d    c74004d9000000
                         {disp32} jmp       _jmp_addr_0x0047ee41               // 0x0047ed64    e9d8000000
                         push               0x00001786                         // 0x0047ed69    6886170000
                         push               0x009cf9e0                         // 0x0047ed6e    68e0f99c00
                         push               0x8                                // 0x0047ed73    6a08
                         call               ___nw__FUl                         // 0x0047ed75    e816ca3500
                         add                esp, 0x0c                          // 0x0047ed7a    83c40c
                         test               eax, eax                           // 0x0047ed7d    85c0
                         {disp32} je        _jmp_addr_0x0047ee3f               // 0x0047ed7f    0f84ba000000
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ed85    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x0000003d // 0x0047ed8b    c740043d000000
                         {disp32} jmp       _jmp_addr_0x0047ee41               // 0x0047ed92    e9aa000000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]        // 0x0047ed97    8b4c242c
                         {disp32} mov       edx, dword ptr [ecx + 0x00000168]  // 0x0047ed9b    8b9168010000
                         {disp8} fld        dword ptr [edx + 0x08]             // 0x0047eda1    d94208
                         {disp32} fcomp     dword ptr [_rdata_float0p0]        // 0x0047eda4    d81d98a38a00
                         fnstsw             ax                                 // 0x0047edaa    dfe0
                         test               ah, 0x01                           // 0x0047edac    f6c401
                         {disp8} je         _jmp_addr_0x0047ee18               // 0x0047edaf    7467
                         push               0x0000178e                         // 0x0047edb1    688e170000
                         push               0x009cf9e0                         // 0x0047edb6    68e0f99c00
                         push               0x64                               // 0x0047edbb    6a64
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047edbd    e84ef72500
                         add                esp, 0x0c                          // 0x0047edc2    83c40c
                         cmp                eax, 0x1e                          // 0x0047edc5    83f81e
                         {disp8} jbe        _jmp_addr_0x0047edf1               // 0x0047edc8    7627
                         push               0x00001791                         // 0x0047edca    6891170000
                         push               0x009cf9e0                         // 0x0047edcf    68e0f99c00
                         push               0x8                                // 0x0047edd4    6a08
                         call               ___nw__FUl                         // 0x0047edd6    e8b5c93500
                         add                esp, 0x0c                          // 0x0047eddb    83c40c
                         test               eax, eax                           // 0x0047edde    85c0
                         {disp8} je         _jmp_addr_0x0047ee3f               // 0x0047ede0    745d
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ede2    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x00000035 // 0x0047ede8    c7400435000000
                         {disp8} jmp        _jmp_addr_0x0047ee41               // 0x0047edef    eb50
_jmp_addr_0x0047edf1:    push               0x00001796                         // 0x0047edf1    6896170000
                         push               0x009cf9e0                         // 0x0047edf6    68e0f99c00
                         push               0x8                                // 0x0047edfb    6a08
                         call               ___nw__FUl                         // 0x0047edfd    e88ec93500
                         add                esp, 0x0c                          // 0x0047ee02    83c40c
                         test               eax, eax                           // 0x0047ee05    85c0
                         {disp8} je         _jmp_addr_0x0047ee3f               // 0x0047ee07    7436
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ee09    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000de // 0x0047ee0f    c74004de000000
                         {disp8} jmp        _jmp_addr_0x0047ee41               // 0x0047ee16    eb29
_jmp_addr_0x0047ee18:    push               0x0000179d                         // 0x0047ee18    689d170000
                         push               0x009cf9e0                         // 0x0047ee1d    68e0f99c00
                         push               0x8                                // 0x0047ee22    6a08
                         call               ___nw__FUl                         // 0x0047ee24    e867c93500
                         add                esp, 0x0c                          // 0x0047ee29    83c40c
                         test               eax, eax                           // 0x0047ee2c    85c0
                         {disp8} je         _jmp_addr_0x0047ee3f               // 0x0047ee2e    740f
                         mov                dword ptr [eax], 0x008cf064        // 0x0047ee30    c70064f08c00
                         {disp8} mov        dword ptr [eax + 0x04], 0x000000db // 0x0047ee36    c74004db000000
                         {disp8} jmp        _jmp_addr_0x0047ee41               // 0x0047ee3d    eb02
_jmp_addr_0x0047ee3f:    xor.s              eax, eax                           // 0x0047ee3f    33c0
_jmp_addr_0x0047ee41:    sub                esp, 0x10                          // 0x0047ee41    83ec10
                         mov.s              ecx, esp                           // 0x0047ee44    8bcc
                         mov                dword ptr [ecx], esi               // 0x0047ee46    8931
                         {disp8} mov        dword ptr [ecx + 0x04], edi        // 0x0047ee48    897904
                         {disp8} mov        dword ptr [ecx + 0x08], ebx        // 0x0047ee4b    895908
                         {disp8} mov        dword ptr [ecx + 0x0c], ebp        // 0x0047ee4e    89690c
                         xor.s              ecx, ecx                           // 0x0047ee51    33c9
                         sub                esp, 0x10                          // 0x0047ee53    83ec10
                         mov.s              edx, esp                           // 0x0047ee56    8bd4
                         mov                dword ptr [edx], ecx               // 0x0047ee58    890a
                         {disp8} mov        dword ptr [edx + 0x04], ecx        // 0x0047ee5a    894a04
                         {disp8} mov        dword ptr [edx + 0x08], ecx        // 0x0047ee5d    894a08
                         or                 ecx, 0xffffffff                    // 0x0047ee60    83c9ff
                         push               eax                                // 0x0047ee63    50
                         {disp8} mov        eax, dword ptr [esp + 0x50]        // 0x0047ee64    8b442450
                         {disp8} mov        dword ptr [edx + 0x0c], ecx        // 0x0047ee68    894a0c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000164]  // 0x0047ee6b    8b8864010000
                         push               0xa                                // 0x0047ee71    6a0a
                         add                ecx, 0x00000fa8                    // 0x0047ee73    81c1a80f0000
                         call               ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047ee79    e8c2030800
_jmp_addr_0x0047ee7e:    {disp8} mov        eax, dword ptr [esp + 0x10]        // 0x0047ee7e    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]        // 0x0047ee82    8b4c2414
                         inc                eax                                // 0x0047ee86    40
                         cmp.s              eax, ecx                           // 0x0047ee87    3bc1
                         {disp8} mov        dword ptr [esp + 0x10], eax        // 0x0047ee89    89442410
                         {disp32} jb        _jmp_addr_0x0047ec50               // 0x0047ee8d    0f82bdfdffff
_jmp_addr_0x0047ee93:    {disp8} mov        esi, dword ptr [esp + 0x2c]        // 0x0047ee93    8b74242c
                         {disp32} mov       ebx, dword ptr [esi + 0x00000164]  // 0x0047ee97    8b9e64010000
                         xor.s              edi, edi                           // 0x0047ee9d    33ff
                         push               edi                                // 0x0047ee9f    57
                         add                ebx, 0x000021d0                    // 0x0047eea0    81c3d0210000
                         push               edi                                // 0x0047eea6    57
                         mov                eax, 0x00509130                    // 0x0047eea7    b830915000
                         mov                dword ptr [ebx], eax               // 0x0047eeac    8903
                         xor.s              ecx, ecx                           // 0x0047eeae    33c9
                         {disp8} mov        dword ptr [ebx + 0x04], ecx        // 0x0047eeb0    894b04
                         push               edi                                // 0x0047eeb3    57
                         xor.s              edx, edx                           // 0x0047eeb4    33d2
                         push               0x1                                // 0x0047eeb6    6a01
                         {disp8} mov        dword ptr [ebx + 0x08], edx        // 0x0047eeb8    895308
                         push               0x25                               // 0x0047eebb    6a25
                         mov.s              ecx, esi                           // 0x0047eebd    8bce
                         {disp8} mov        dword ptr [ebx + 0x0c], edi        // 0x0047eebf    897b0c
                         call               _jmp_addr_0x004c9fe0               // 0x0047eec2    e819b10400
                         push               0x1                                // 0x0047eec7    6a01
                         push               0x43340000                         // 0x0047eec9    6800003443
                         push               0x000017a5                         // 0x0047eece    68a5170000
                         push               0x009cf9e0                         // 0x0047eed3    68e0f99c00
                         push               0x64                               // 0x0047eed8    6a64
                         call               ?GameRand@GRand@@SAHJ@Z            // 0x0047eeda    e831f62500
                         add                esp, 0x0c                          // 0x0047eedf    83c40c
                         mov                ecx, 0x00000032                    // 0x0047eee2    b932000000
                         cmp.s              ecx, eax                           // 0x0047eee7    3bc8
                         {disp32} mov       ecx, dword ptr [esi + 0x00000164]  // 0x0047eee9    8b8e64010000
                         sbb.s              edx, edx                           // 0x0047eeef    1bd2
                         and                edx, 0x16                          // 0x0047eef1    83e216
                         add                edx, 0x05                          // 0x0047eef4    83c205
                         push               edx                                // 0x0047eef7    52
                         call               _jmp_addr_0x004dce20               // 0x0047eef8    e823df0500
                         pop                edi                                // 0x0047eefd    5f
                         pop                esi                                // 0x0047eefe    5e
                         pop                ebp                                // 0x0047eeff    5d
                         pop                ebx                                // 0x0047ef00    5b
                         add                esp, 0x18                          // 0x0047ef01    83c418
                         ret                                                   // 0x0047ef04    c3

// Snippet: db, [0x0047ef05, 0x0047ef08)
.byte 0x8d, 0x49, 0x00            // 0x0047ef05

// Snippet: jmptbl, [0x0047ef08, 0x0047ef2c)
.byte 0x0d, 0xed, 0x47, 0x00      // 0x0047ef08
.byte 0x0d, 0xed, 0x47, 0x00      // 0x0047ef0c
.byte 0x3b, 0xed, 0x47, 0x00      // 0x0047ef10
.byte 0x69, 0xed, 0x47, 0x00      // 0x0047ef14
.byte 0x69, 0xed, 0x47, 0x00      // 0x0047ef18
.byte 0x97, 0xed, 0x47, 0x00      // 0x0047ef1c
.byte 0x97, 0xed, 0x47, 0x00      // 0x0047ef20
.byte 0x97, 0xed, 0x47, 0x00      // 0x0047ef24
.byte 0x97, 0xed, 0x47, 0x00      // 0x0047ef28

// Snippet: db, [0x0047ef2c, 0x0047ef30)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047ef2c

