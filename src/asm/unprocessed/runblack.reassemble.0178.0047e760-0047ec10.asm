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
.extern ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ___nw__FUl

.globl _jmp_addr_0x0047e760

start_0x0047e760_0x0047ec10:
// Snippet: asm, [0x0047e760, 0x0047ebda)
_jmp_addr_0x0047e760:    sub               esp, 0x18                          // 0x0047e760    83ec18
                         push              ebx                                // 0x0047e763    53
                         push              ebp                                // 0x0047e764    55
                         push              esi                                // 0x0047e765    56
                         push              edi                                // 0x0047e766    57
                         push              0x0000171b                         // 0x0047e767    681b170000
                         push              0x009cf9e0                         // 0x0047e76c    68e0f99c00
                         push              0x8                                // 0x0047e771    6a08
                         call              ?GameRand@GRand@@SAHJ@Z            // 0x0047e773    e898fd2500
                         add               esp, 0x0c                          // 0x0047e778    83c40c
                         add               eax, 0x08                          // 0x0047e77b    83c008
                         {disp8} mov       dword ptr [esp + 0x14], eax        // 0x0047e77e    89442414
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000 // 0x0047e782    c744241000000000
                         {disp32} je       _jmp_addr_0x0047ea1b               // 0x0047e78a    0f848b020000
                         {disp8} mov       ebp, dword ptr [esp + 0x24]        // 0x0047e790    8b6c2424
                         {disp8} mov       ebx, dword ptr [esp + 0x20]        // 0x0047e794    8b5c2420
                         {disp8} mov       edi, dword ptr [esp + 0x1c]        // 0x0047e798    8b7c241c
                         {disp8} mov       esi, dword ptr [esp + 0x18]        // 0x0047e79c    8b742418
_jmp_addr_0x0047e7a0:    push              0x00001720                         // 0x0047e7a0    6820170000
                         push              0x009cf9e0                         // 0x0047e7a5    68e0f99c00
                         push              0x3                                // 0x0047e7aa    6a03
                         call              ?GameRand@GRand@@SAHJ@Z            // 0x0047e7ac    e85ffd2500
                         add               esp, 0x0c                          // 0x0047e7b1    83c40c
                         sub               eax, 0x00                          // 0x0047e7b4    83e800
                         {disp8} je        _jmp_addr_0x0047e7cd               // 0x0047e7b7    7414
                         dec               eax                                // 0x0047e7b9    48
                         {disp8} je        _jmp_addr_0x0047e7c6               // 0x0047e7ba    740a
                         dec               eax                                // 0x0047e7bc    48
                         {disp8} jne       _jmp_addr_0x0047e7d8               // 0x0047e7bd    7519
                         mov               esi, 0x004c8730                    // 0x0047e7bf    be30874c00
                         {disp8} jmp       _jmp_addr_0x0047e7d2               // 0x0047e7c4    eb0c
_jmp_addr_0x0047e7c6:    mov               esi, 0x004c8830                    // 0x0047e7c6    be30884c00
                         {disp8} jmp       _jmp_addr_0x0047e7d2               // 0x0047e7cb    eb05
_jmp_addr_0x0047e7cd:    mov               esi, 0x004c87d0                    // 0x0047e7cd    bed0874c00
_jmp_addr_0x0047e7d2:    xor.s             edi, edi                           // 0x0047e7d2    33ff
                         xor.s             ebx, ebx                           // 0x0047e7d4    33db
                         xor.s             ebp, ebp                           // 0x0047e7d6    33ed
_jmp_addr_0x0047e7d8:    {disp8} mov       eax, dword ptr [esp + 0x10]        // 0x0047e7d8    8b442410
                         test              eax, eax                           // 0x0047e7dc    85c0
                         {disp8} je        _jmp_addr_0x0047e7f8               // 0x0047e7de    7418
                         push              0x0000172d                         // 0x0047e7e0    682d170000
                         push              0x009cf9e0                         // 0x0047e7e5    68e0f99c00
                         push              0x2                                // 0x0047e7ea    6a02
                         call              ?GameRand@GRand@@SAHJ@Z            // 0x0047e7ec    e81ffd2500
                         add               esp, 0x0c                          // 0x0047e7f1    83c40c
                         test              eax, eax                           // 0x0047e7f4    85c0
                         {disp8} jne       _jmp_addr_0x0047e839               // 0x0047e7f6    7541
_jmp_addr_0x0047e7f8:    sub               esp, 0x10                          // 0x0047e7f8    83ec10
                         mov.s             edx, esp                           // 0x0047e7fb    8bd4
                         mov               dword ptr [edx], esi               // 0x0047e7fd    8932
                         {disp8} mov       dword ptr [edx + 0x04], edi        // 0x0047e7ff    897a04
                         {disp8} mov       dword ptr [edx + 0x08], ebx        // 0x0047e802    895a08
                         {disp8} mov       dword ptr [edx + 0x0c], ebp        // 0x0047e805    896a0c
                         sub               esp, 0x10                          // 0x0047e808    83ec10
                         mov.s             edx, esp                           // 0x0047e80b    8bd4
                         mov               eax, 0x004d1a30                    // 0x0047e80d    b8301a4d00
                         mov               dword ptr [edx], eax               // 0x0047e812    8902
                         xor.s             ecx, ecx                           // 0x0047e814    33c9
                         {disp8} mov       dword ptr [edx + 0x04], ecx        // 0x0047e816    894a04
                         xor.s             eax, eax                           // 0x0047e819    33c0
                         {disp8} mov       dword ptr [edx + 0x08], eax        // 0x0047e81b    894208
                         push              eax                                // 0x0047e81e    50
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047e81f    89420c
                         {disp8} mov       eax, dword ptr [esp + 0x50]        // 0x0047e822    8b442450
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]  // 0x0047e826    8b8864010000
                         push              0x1f                               // 0x0047e82c    6a1f
                         add               ecx, 0x00000fa8                    // 0x0047e82e    81c1a80f0000
                         call              ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047e834    e8070a0800
_jmp_addr_0x0047e839:    push              0x00001731                         // 0x0047e839    6831170000
                         push              0x009cf9e0                         // 0x0047e83e    68e0f99c00
                         push              0xc                                // 0x0047e843    6a0c
                         call              ?GameRand@GRand@@SAHJ@Z            // 0x0047e845    e8c6fc2500
                         add               esp, 0x0c                          // 0x0047e84a    83c40c
                         cmp               eax, 0x0b                          // 0x0047e84d    83f80b
                         {disp32} ja       _jmp_addr_0x0047ea06               // 0x0047e850    0f87b0010000
                         jmp               dword ptr [eax*4 + 0x47ebdc]       // 0x0047e856    ff2485dceb4700
                         push              0x00001739                         // 0x0047e85d    6839170000
                         push              0x009cf9e0                         // 0x0047e862    68e0f99c00
                         push              0x8                                // 0x0047e867    6a08
                         call              ___nw__FUl                         // 0x0047e869    e822cf3500
                         add               esp, 0x0c                          // 0x0047e86e    83c40c
                         test              eax, eax                           // 0x0047e871    85c0
                         {disp8} je        _jmp_addr_0x0047e8d2               // 0x0047e873    745d
                         mov               dword ptr [eax], 0x008cf064        // 0x0047e875    c70064f08c00
                         {disp8} mov       dword ptr [eax + 0x04], 0x00000037 // 0x0047e87b    c7400437000000
                         {disp8} jmp       _jmp_addr_0x0047e8d4               // 0x0047e882    eb50
                         push              0x0000173f                         // 0x0047e884    683f170000
                         push              0x009cf9e0                         // 0x0047e889    68e0f99c00
                         push              0x8                                // 0x0047e88e    6a08
                         call              ___nw__FUl                         // 0x0047e890    e8fbce3500
                         add               esp, 0x0c                          // 0x0047e895    83c40c
                         test              eax, eax                           // 0x0047e898    85c0
                         {disp8} je        _jmp_addr_0x0047e8d2               // 0x0047e89a    7436
                         mov               dword ptr [eax], 0x008cf064        // 0x0047e89c    c70064f08c00
                         {disp8} mov       dword ptr [eax + 0x04], 0x00000048 // 0x0047e8a2    c7400448000000
                         {disp8} jmp       _jmp_addr_0x0047e8d4               // 0x0047e8a9    eb29
                         push              0x00001743                         // 0x0047e8ab    6843170000
                         push              0x009cf9e0                         // 0x0047e8b0    68e0f99c00
                         push              0x8                                // 0x0047e8b5    6a08
                         call              ___nw__FUl                         // 0x0047e8b7    e8d4ce3500
                         add               esp, 0x0c                          // 0x0047e8bc    83c40c
                         test              eax, eax                           // 0x0047e8bf    85c0
                         {disp8} je        _jmp_addr_0x0047e8d2               // 0x0047e8c1    740f
                         mov               dword ptr [eax], 0x008cf064        // 0x0047e8c3    c70064f08c00
                         {disp8} mov       dword ptr [eax + 0x04], 0x00000045 // 0x0047e8c9    c7400445000000
                         {disp8} jmp       _jmp_addr_0x0047e8d4               // 0x0047e8d0    eb02
_jmp_addr_0x0047e8d2:    xor.s             eax, eax                           // 0x0047e8d2    33c0
_jmp_addr_0x0047e8d4:    sub               esp, 0x10                          // 0x0047e8d4    83ec10
                         mov.s             ecx, esp                           // 0x0047e8d7    8bcc
                         mov               dword ptr [ecx], esi               // 0x0047e8d9    8931
                         {disp8} mov       dword ptr [ecx + 0x04], edi        // 0x0047e8db    897904
                         {disp8} mov       dword ptr [ecx + 0x08], ebx        // 0x0047e8de    895908
                         {disp8} mov       dword ptr [ecx + 0x0c], ebp        // 0x0047e8e1    89690c
                         sub               esp, 0x10                          // 0x0047e8e4    83ec10
                         mov.s             edx, esp                           // 0x0047e8e7    8bd4
                         mov               ecx, 0x004d1a30                    // 0x0047e8e9    b9301a4d00
                         mov               dword ptr [edx], ecx               // 0x0047e8ee    890a
                         xor.s             ecx, ecx                           // 0x0047e8f0    33c9
                         {disp8} mov       dword ptr [edx + 0x04], ecx        // 0x0047e8f2    894a04
                         {disp8} mov       dword ptr [edx + 0x08], ecx        // 0x0047e8f5    894a08
                         push              eax                                // 0x0047e8f8    50
                         {disp8} mov       dword ptr [edx + 0x0c], ecx        // 0x0047e8f9    894a0c
                         push              0xa                                // 0x0047e8fc    6a0a
                         {disp32} jmp      _jmp_addr_0x0047e9f1               // 0x0047e8fe    e9ee000000
                         push              0x00001746                         // 0x0047e903    6846170000
                         push              0x009cf9e0                         // 0x0047e908    68e0f99c00
                         push              0x8                                // 0x0047e90d    6a08
                         call              ___nw__FUl                         // 0x0047e90f    e87cce3500
                         add               esp, 0x0c                          // 0x0047e914    83c40c
                         test              eax, eax                           // 0x0047e917    85c0
                         {disp8} je        _jmp_addr_0x0047e92a               // 0x0047e919    740f
                         mov               dword ptr [eax], 0x008cf064        // 0x0047e91b    c70064f08c00
                         {disp8} mov       dword ptr [eax + 0x04], 0x00000010 // 0x0047e921    c7400410000000
                         {disp8} jmp       _jmp_addr_0x0047e92c               // 0x0047e928    eb02
_jmp_addr_0x0047e92a:    xor.s             eax, eax                           // 0x0047e92a    33c0
_jmp_addr_0x0047e92c:    sub               esp, 0x10                          // 0x0047e92c    83ec10
                         mov.s             ecx, esp                           // 0x0047e92f    8bcc
                         mov               dword ptr [ecx], esi               // 0x0047e931    8931
                         {disp8} mov       dword ptr [ecx + 0x04], edi        // 0x0047e933    897904
                         {disp8} mov       dword ptr [ecx + 0x08], ebx        // 0x0047e936    895908
                         {disp8} mov       dword ptr [ecx + 0x0c], ebp        // 0x0047e939    89690c
                         sub               esp, 0x10                          // 0x0047e93c    83ec10
                         mov.s             edx, esp                           // 0x0047e93f    8bd4
                         mov               ecx, 0x004d1a30                    // 0x0047e941    b9301a4d00
                         mov               dword ptr [edx], ecx               // 0x0047e946    890a
                         xor.s             ecx, ecx                           // 0x0047e948    33c9
                         {disp8} mov       dword ptr [edx + 0x04], ecx        // 0x0047e94a    894a04
                         {disp8} mov       dword ptr [edx + 0x08], ecx        // 0x0047e94d    894a08
                         push              eax                                // 0x0047e950    50
                         {disp8} mov       dword ptr [edx + 0x0c], ecx        // 0x0047e951    894a0c
                         push              0xd                                // 0x0047e954    6a0d
                         {disp8} jmp       _jmp_addr_0x0047e9ab               // 0x0047e956    eb53
                         push              0x0000174a                         // 0x0047e958    684a170000
                         push              0x009cf9e0                         // 0x0047e95d    68e0f99c00
                         push              0x8                                // 0x0047e962    6a08
                         call              ___nw__FUl                         // 0x0047e964    e827ce3500
                         add               esp, 0x0c                          // 0x0047e969    83c40c
                         test              eax, eax                           // 0x0047e96c    85c0
                         {disp8} je        _jmp_addr_0x0047e97f               // 0x0047e96e    740f
                         mov               dword ptr [eax], 0x008cf064        // 0x0047e970    c70064f08c00
                         {disp8} mov       dword ptr [eax + 0x04], 0x000000da // 0x0047e976    c74004da000000
                         {disp8} jmp       _jmp_addr_0x0047e981               // 0x0047e97d    eb02
_jmp_addr_0x0047e97f:    xor.s             eax, eax                           // 0x0047e97f    33c0
_jmp_addr_0x0047e981:    sub               esp, 0x10                          // 0x0047e981    83ec10
                         mov.s             ecx, esp                           // 0x0047e984    8bcc
                         mov               dword ptr [ecx], esi               // 0x0047e986    8931
                         {disp8} mov       dword ptr [ecx + 0x04], edi        // 0x0047e988    897904
                         {disp8} mov       dword ptr [ecx + 0x08], ebx        // 0x0047e98b    895908
                         {disp8} mov       dword ptr [ecx + 0x0c], ebp        // 0x0047e98e    89690c
                         sub               esp, 0x10                          // 0x0047e991    83ec10
                         mov.s             edx, esp                           // 0x0047e994    8bd4
                         mov               ecx, 0x004d1a30                    // 0x0047e996    b9301a4d00
                         mov               dword ptr [edx], ecx               // 0x0047e99b    890a
                         xor.s             ecx, ecx                           // 0x0047e99d    33c9
                         {disp8} mov       dword ptr [edx + 0x04], ecx        // 0x0047e99f    894a04
                         {disp8} mov       dword ptr [edx + 0x08], ecx        // 0x0047e9a2    894a08
                         push              eax                                // 0x0047e9a5    50
                         {disp8} mov       dword ptr [edx + 0x0c], ecx        // 0x0047e9a6    894a0c
                         push              0xa                                // 0x0047e9a9    6a0a
_jmp_addr_0x0047e9ab:    {disp8} mov       eax, dword ptr [esp + 0x54]        // 0x0047e9ab    8b442454
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]  // 0x0047e9af    8b8864010000
                         add               ecx, 0x00000fa8                    // 0x0047e9b5    81c1a80f0000
                         call              ?AddMainSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047e9bb    e8e0090800
                         {disp8} jmp       _jmp_addr_0x0047ea06               // 0x0047e9c0    eb44
                         sub               esp, 0x10                          // 0x0047e9c2    83ec10
                         mov.s             edx, esp                           // 0x0047e9c5    8bd4
                         mov               dword ptr [edx], esi               // 0x0047e9c7    8932
                         {disp8} mov       dword ptr [edx + 0x04], edi        // 0x0047e9c9    897a04
                         {disp8} mov       dword ptr [edx + 0x08], ebx        // 0x0047e9cc    895a08
                         {disp8} mov       dword ptr [edx + 0x0c], ebp        // 0x0047e9cf    896a0c
                         sub               esp, 0x10                          // 0x0047e9d2    83ec10
                         mov.s             edx, esp                           // 0x0047e9d5    8bd4
                         mov               eax, 0x004d1a30                    // 0x0047e9d7    b8301a4d00
                         mov               dword ptr [edx], eax               // 0x0047e9dc    8902
                         xor.s             ecx, ecx                           // 0x0047e9de    33c9
                         xor.s             eax, eax                           // 0x0047e9e0    33c0
                         {disp8} mov       dword ptr [edx + 0x04], ecx        // 0x0047e9e2    894a04
                         {disp8} mov       dword ptr [edx + 0x08], eax        // 0x0047e9e5    894208
                         push              eax                                // 0x0047e9e8    50
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047e9e9    89420c
                         push              0x00000089                         // 0x0047e9ec    6889000000
_jmp_addr_0x0047e9f1:    {disp8} mov       eax, dword ptr [esp + 0x54]        // 0x0047e9f1    8b442454
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]  // 0x0047e9f5    8b8864010000
                         add               ecx, 0x00000fa8                    // 0x0047e9fb    81c1a80f0000
                         call              ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047ea01    e83a080800
_jmp_addr_0x0047ea06:    {disp8} mov       eax, dword ptr [esp + 0x10]        // 0x0047ea06    8b442410
                         {disp8} mov       ecx, dword ptr [esp + 0x14]        // 0x0047ea0a    8b4c2414
                         inc               eax                                // 0x0047ea0e    40
                         cmp.s             eax, ecx                           // 0x0047ea0f    3bc1
                         {disp8} mov       dword ptr [esp + 0x10], eax        // 0x0047ea11    89442410
                         {disp32} jb       _jmp_addr_0x0047e7a0               // 0x0047ea15    0f8285fdffff
_jmp_addr_0x0047ea1b:    push              0x00001754                         // 0x0047ea1b    6854170000
                         push              0x009cf9e0                         // 0x0047ea20    68e0f99c00
                         push              0xc                                // 0x0047ea25    6a0c
                         mov               edi, 0x004c87d0                    // 0x0047ea27    bfd0874c00
                         xor.s             ebx, ebx                           // 0x0047ea2c    33db
                         xor.s             ebp, ebp                           // 0x0047ea2e    33ed
                         call              ___nw__FUl                         // 0x0047ea30    e85bcd3500
                         mov.s             esi, eax                           // 0x0047ea35    8bf0
                         add               esp, 0x0c                          // 0x0047ea37    83c40c
                         test              esi, esi                           // 0x0047ea3a    85f6
                         {disp8} je        _jmp_addr_0x0047ea67               // 0x0047ea3c    7429
                         push              0x00001754                         // 0x0047ea3e    6854170000
                         push              0x009cf9e0                         // 0x0047ea43    68e0f99c00
                         push              0x42700000                         // 0x0047ea48    6800007042
                         call              ?GameFloatRand@GRand@@SAMM@Z       // 0x0047ea4d    e8defa2500
                         {disp8} fstp      dword ptr [esi + 0x08]             // 0x0047ea52    d95e08
                         add               esp, 0x0c                          // 0x0047ea55    83c40c
                         mov               dword ptr [esi], 0x008cf050        // 0x0047ea58    c70650f08c00
                         {disp8} mov       dword ptr [esi + 0x04], 0x00000026 // 0x0047ea5e    c7460426000000
                         {disp8} jmp       _jmp_addr_0x0047ea69               // 0x0047ea65    eb02
_jmp_addr_0x0047ea67:    xor.s             esi, esi                           // 0x0047ea67    33f6
_jmp_addr_0x0047ea69:    sub               esp, 0x10                          // 0x0047ea69    83ec10
                         mov.s             ecx, esp                           // 0x0047ea6c    8bcc
                         mov               dword ptr [ecx], edi               // 0x0047ea6e    8939
                         {disp8} mov       dword ptr [ecx + 0x04], ebx        // 0x0047ea70    895904
                         {disp8} mov       dword ptr [ecx + 0x08], ebp        // 0x0047ea73    896908
                         xor.s             eax, eax                           // 0x0047ea76    33c0
                         {disp8} mov       dword ptr [ecx + 0x0c], eax        // 0x0047ea78    89410c
                         sub               esp, 0x10                          // 0x0047ea7b    83ec10
                         mov.s             edx, esp                           // 0x0047ea7e    8bd4
                         mov               eax, 0x004d1a30                    // 0x0047ea80    b8301a4d00
                         mov               dword ptr [edx], eax               // 0x0047ea85    8902
                         xor.s             eax, eax                           // 0x0047ea87    33c0
                         push              esi                                // 0x0047ea89    56
                         {disp8} mov       esi, dword ptr [esp + 0x50]        // 0x0047ea8a    8b742450
                         {disp32} mov      ecx, dword ptr [esi + 0x00000164]  // 0x0047ea8e    8b8e64010000
                         {disp8} mov       dword ptr [edx + 0x04], eax        // 0x0047ea94    894204
                         {disp8} mov       dword ptr [edx + 0x08], eax        // 0x0047ea97    894208
                         push              0x4                                // 0x0047ea9a    6a04
                         add               ecx, 0x00000fa8                    // 0x0047ea9c    81c1a80f0000
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047eaa2    89420c
                         call              ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047eaa5    e896070800
                         push              0x00001755                         // 0x0047eaaa    6855170000
                         push              0x009cf9e0                         // 0x0047eaaf    68e0f99c00
                         push              0x8                                // 0x0047eab4    6a08
                         mov               edi, 0x004c87d0                    // 0x0047eab6    bfd0874c00
                         xor.s             ebx, ebx                           // 0x0047eabb    33db
                         xor.s             ebp, ebp                           // 0x0047eabd    33ed
                         call              ___nw__FUl                         // 0x0047eabf    e8cccc3500
                         mov.s             ecx, eax                           // 0x0047eac4    8bc8
                         add               esp, 0x0c                          // 0x0047eac6    83c40c
                         test              ecx, ecx                           // 0x0047eac9    85c9
                         {disp8} je        _jmp_addr_0x0047eaff               // 0x0047eacb    7432
                         {disp8} fld       dword ptr [esp + 0x30]             // 0x0047eacd    d9442430
                         {disp32} fmul     dword ptr [rdata_bytes + 0x2414]   // 0x0047ead1    d80d14b48a00
                         {disp32} fadd     dword ptr [rdata_bytes + 0x26e4]   // 0x0047ead7    d805e4b68a00
                         {disp32} fld      dword ptr [rdata_bytes + 0x1a6a8]  // 0x0047eadd    d905a8368c00
                         fcomp             st(1)                              // 0x0047eae3    d8d9
                         fnstsw            ax                                 // 0x0047eae5    dfe0
                         test              ah, 0x01                           // 0x0047eae7    f6c401
                         {disp8} je        _jmp_addr_0x0047eaf4               // 0x0047eaea    7408
                         fstp              st(0)                              // 0x0047eaec    ddd8
                         {disp32} fld      dword ptr [rdata_bytes + 0x1a6a8]  // 0x0047eaee    d905a8368c00
_jmp_addr_0x0047eaf4:    {disp8} fstp      dword ptr [ecx + 0x04]             // 0x0047eaf4    d95904
                         mov               dword ptr [ecx], 0x008cf03c        // 0x0047eaf7    c7013cf08c00
                         {disp8} jmp       _jmp_addr_0x0047eb01               // 0x0047eafd    eb02
_jmp_addr_0x0047eaff:    xor.s             ecx, ecx                           // 0x0047eaff    33c9
_jmp_addr_0x0047eb01:    sub               esp, 0x10                          // 0x0047eb01    83ec10
                         mov.s             edx, esp                           // 0x0047eb04    8bd4
                         mov               dword ptr [edx], edi               // 0x0047eb06    893a
                         {disp8} mov       dword ptr [edx + 0x04], ebx        // 0x0047eb08    895a04
                         {disp8} mov       dword ptr [edx + 0x08], ebp        // 0x0047eb0b    896a08
                         xor.s             eax, eax                           // 0x0047eb0e    33c0
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047eb10    89420c
                         sub               esp, 0x10                          // 0x0047eb13    83ec10
                         mov.s             edx, esp                           // 0x0047eb16    8bd4
                         mov               eax, 0x004d1a30                    // 0x0047eb18    b8301a4d00
                         mov               dword ptr [edx], eax               // 0x0047eb1d    8902
                         xor.s             eax, eax                           // 0x0047eb1f    33c0
                         push              ecx                                // 0x0047eb21    51
                         {disp32} mov      ecx, dword ptr [esi + 0x00000164]  // 0x0047eb22    8b8e64010000
                         {disp8} mov       dword ptr [edx + 0x04], eax        // 0x0047eb28    894204
                         {disp8} mov       dword ptr [edx + 0x08], eax        // 0x0047eb2b    894208
                         push              0x5e                               // 0x0047eb2e    6a5e
                         add               ecx, 0x00000fa8                    // 0x0047eb30    81c1a80f0000
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047eb36    89420c
                         call              ?AddSubAction@CreatureSubActionAgenda@@QAEXW4CREATURE_SUB_STATE_ACTIONS@@PAVSubArgument@@P8Creature@@AEHPBXPAXPAUMapCoords@@@ZP84@AEX23@Z@Z               // 0x0047eb39    e802070800
                         push              0x00001756                         // 0x0047eb3e    6856170000
                         push              0x009cf9e0                         // 0x0047eb43    68e0f99c00
                         push              0x64                               // 0x0047eb48    6a64
                         call              ?GameRand@GRand@@SAHJ@Z            // 0x0047eb4a    e8c1f92500
                         add               esp, 0x0c                          // 0x0047eb4f    83c40c
                         cmp               eax, 0x14                          // 0x0047eb52    83f814
                         {disp8} jbe       _jmp_addr_0x0047eb73               // 0x0047eb55    761c
                         xor.s             ecx, ecx                           // 0x0047eb57    33c9
                         {disp8} mov       dword ptr [esp + 0x18], 0x00509480 // 0x0047eb59    c744241880945000
                         {disp8} mov       dword ptr [esp + 0x1c], ecx        // 0x0047eb61    894c241c
                         {disp8} mov       dword ptr [esp + 0x20], ecx        // 0x0047eb65    894c2420
                         {disp8} mov       dword ptr [esp + 0x24], ecx        // 0x0047eb69    894c2424
                         {disp8} lea       eax, dword ptr [esp + 0x18]        // 0x0047eb6d    8d442418
                         {disp8} jmp       _jmp_addr_0x0047eb8f               // 0x0047eb71    eb1c
_jmp_addr_0x0047eb73:    xor.s             eax, eax                           // 0x0047eb73    33c0
                         {disp8} mov       dword ptr [esp + 0x1c], eax        // 0x0047eb75    8944241c
                         {disp8} mov       dword ptr [esp + 0x20], eax        // 0x0047eb79    89442420
                         {disp8} mov       dword ptr [esp + 0x24], eax        // 0x0047eb7d    89442424
                         {disp8} mov       dword ptr [esp + 0x18], 0x00509070 // 0x0047eb81    c744241870905000
                         {disp8} lea       eax, dword ptr [esp + 0x18]        // 0x0047eb89    8d442418
                         xor.s             ecx, ecx                           // 0x0047eb8d    33c9
_jmp_addr_0x0047eb8f:    {disp32} mov      edx, dword ptr [esi + 0x00000164]  // 0x0047eb8f    8b9664010000
                         mov               edi, dword ptr [eax]               // 0x0047eb95    8b38
                         push              ecx                                // 0x0047eb97    51
                         add               edx, 0x000021d0                    // 0x0047eb98    81c2d0210000
                         mov               dword ptr [edx], edi               // 0x0047eb9e    893a
                         {disp8} mov       edi, dword ptr [eax + 0x04]        // 0x0047eba0    8b7804
                         push              ecx                                // 0x0047eba3    51
                         {disp8} mov       dword ptr [edx + 0x04], edi        // 0x0047eba4    897a04
                         {disp8} mov       edi, dword ptr [eax + 0x08]        // 0x0047eba7    8b7808
                         {disp8} mov       eax, dword ptr [eax + 0x0c]        // 0x0047ebaa    8b400c
                         push              ecx                                // 0x0047ebad    51
                         push              ecx                                // 0x0047ebae    51
                         {disp8} mov       dword ptr [edx + 0x08], edi        // 0x0047ebaf    897a08
                         push              0x25                               // 0x0047ebb2    6a25
                         mov.s             ecx, esi                           // 0x0047ebb4    8bce
                         {disp8} mov       dword ptr [edx + 0x0c], eax        // 0x0047ebb6    89420c
                         call              _jmp_addr_0x004c9fe0               // 0x0047ebb9    e822b40400
                         {disp32} mov      ecx, dword ptr [esi + 0x00000164]  // 0x0047ebbe    8b8e64010000
                         push              0x1                                // 0x0047ebc4    6a01
                         push              0x43340000                         // 0x0047ebc6    6800003443
                         push              0x1e                               // 0x0047ebcb    6a1e
                         call              _jmp_addr_0x004dce20               // 0x0047ebcd    e84ee20500
                         pop               edi                                // 0x0047ebd2    5f
                         pop               esi                                // 0x0047ebd3    5e
                         pop               ebp                                // 0x0047ebd4    5d
                         pop               ebx                                // 0x0047ebd5    5b
                         add               esp, 0x18                          // 0x0047ebd6    83c418
                         ret                                                  // 0x0047ebd9    c3

// Snippet: db, [0x0047ebda, 0x0047ebdc)
.byte 0x8b, 0xff                  // 0x0047ebda

// Snippet: jmptbl, [0x0047ebdc, 0x0047ec0c)
.byte 0x5d, 0xe8, 0x47, 0x00      // 0x0047ebdc
.byte 0x5d, 0xe8, 0x47, 0x00      // 0x0047ebe0
.byte 0xab, 0xe8, 0x47, 0x00      // 0x0047ebe4
.byte 0x5d, 0xe8, 0x47, 0x00      // 0x0047ebe8
.byte 0x5d, 0xe8, 0x47, 0x00      // 0x0047ebec
.byte 0x84, 0xe8, 0x47, 0x00      // 0x0047ebf0
.byte 0x84, 0xe8, 0x47, 0x00      // 0x0047ebf4
.byte 0x84, 0xe8, 0x47, 0x00      // 0x0047ebf8
.byte 0x03, 0xe9, 0x47, 0x00      // 0x0047ebfc
.byte 0x58, 0xe9, 0x47, 0x00      // 0x0047ec00
.byte 0xc2, 0xe9, 0x47, 0x00      // 0x0047ec04
.byte 0xc2, 0xe9, 0x47, 0x00      // 0x0047ec08

// Snippet: db, [0x0047ec0c, 0x0047ec10)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0047ec0c

