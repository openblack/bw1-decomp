.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00414730
.extern _jmp_addr_0x004707f0
.extern _jmp_addr_0x004c7ed0
.extern _jmp_addr_0x004d8af0
.extern _jmp_addr_0x004de410
.extern _jmp_addr_0x00564f60
.extern _jmp_addr_0x00564fc0
.extern _jmp_addr_0x0064b680
.extern _jmp_addr_0x0064b760
.extern _jmp_addr_0x0064b780
.extern _jmp_addr_0x0064b7c0
.extern _jmp_addr_0x0064b890
.extern _jmp_addr_0x0064ba70
.extern ?StopHelpScripts@GScript@@QAEXXZ
.extern _jmp_addr_0x007949a0
.extern _jmp_addr_0x007949b0
.extern _jmp_addr_0x00794a80
.extern _jmp_addr_0x0079c550
.extern _jmp_addr_0x0079c650
.extern _jmp_addr_0x0079c770
.extern _jmp_addr_0x0079cc80
.extern _jmp_addr_0x007a1400
.extern _atexit
.extern _wcscat
.extern _wcscpy
.extern _wcslen
.extern __chkstk

.globl _jmp_addr_0x0079a5a0
.globl _jmp_addr_0x0079a5d0
.globl _jmp_addr_0x0079a600
.globl _jmp_addr_0x0079a620
.globl _jmp_addr_0x0079a640
.globl _jmp_addr_0x0079a680
.globl _jmp_addr_0x0079a690
.globl _jmp_addr_0x0079a6a0
.globl _jmp_addr_0x0079a720
.globl _jmp_addr_0x0079a800
.globl _jmp_addr_0x0079a8d0
.globl _jmp_addr_0x0079a910

.globl _globl_ct_0x0079a6d0
.globl _globl_ct_0x0079a700
.globl _globl_ct_0x0079a850
.globl _globl_ct_0x0079a880
.globl _globl_ct_0x0079a8b0

start_0x0079a5a0_0x0079c550:
// Snippet: asm, [0x0079a5a0, 0x0079c3ef)
_jmp_addr_0x0079a5a0:    {disp8} mov       eax, dword ptr [ecx + 0x34]                   // 0x0079a5a0    8b4134
                         cmp               eax, -0x01                                    // 0x0079a5a3    83f8ff
                         {disp8} je        _jmp_addr_0x0079a5c0                          // 0x0079a5a6    7418
                         {disp8} mov       ecx, dword ptr [ecx + 0x24]                   // 0x0079a5a8    8b4924
                         mov               ecx, dword ptr [ecx + eax * 0x4]              // 0x0079a5ab    8b0c81
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0079a5ae    8b442408
                         mov               edx, dword ptr [ecx]                          // 0x0079a5b2    8b11
                         push              eax                                           // 0x0079a5b4    50
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0079a5b5    8b442408
                         push              eax                                           // 0x0079a5b9    50
                         call              dword ptr [edx + 8]                           // 0x0079a5ba    ff5208
                         ret               0x0008                                        // 0x0079a5bd    c20800
_jmp_addr_0x0079a5c0:    xor.s             eax, eax                                      // 0x0079a5c0    33c0
                         ret               0x0008                                        // 0x0079a5c2    c20800
                         nop                                                             // 0x0079a5c5    90
                         nop                                                             // 0x0079a5c6    90
                         nop                                                             // 0x0079a5c7    90
                         nop                                                             // 0x0079a5c8    90
                         nop                                                             // 0x0079a5c9    90
                         nop                                                             // 0x0079a5ca    90
                         nop                                                             // 0x0079a5cb    90
                         nop                                                             // 0x0079a5cc    90
                         nop                                                             // 0x0079a5cd    90
                         nop                                                             // 0x0079a5ce    90
                         nop                                                             // 0x0079a5cf    90
_jmp_addr_0x0079a5d0:    push              esi                                           // 0x0079a5d0    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0079a5d1    8b742414
                         push              esi                                           // 0x0079a5d5    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0079a5d6    8b742414
                         push              esi                                           // 0x0079a5da    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0079a5db    8b742414
                         mov.s             eax, ecx                                      // 0x0079a5df    8bc1
                         {disp32} mov      ecx, dword ptr [eax + 0x000000c4]             // 0x0079a5e1    8b88c4000000
                         {disp32} mov      eax, dword ptr [eax + 0x000000c0]             // 0x0079a5e7    8b80c0000000
                         {disp8} mov       eax, dword ptr [eax + 0x14]                   // 0x0079a5ed    8b4014
                         mov               edx, dword ptr [ecx]                          // 0x0079a5f0    8b11
                         push              esi                                           // 0x0079a5f2    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x0079a5f3    8b742414
                         push              esi                                           // 0x0079a5f7    56
                         push              eax                                           // 0x0079a5f8    50
                         call              dword ptr [edx + 0x24]                        // 0x0079a5f9    ff5224
                         pop               esi                                           // 0x0079a5fc    5e
                         ret               0x0010                                        // 0x0079a5fd    c21000
_jmp_addr_0x0079a600:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0079a600    8b442404
                         push              0x00c58370                                    // 0x0079a604    687083c500
                         push              0x009cd6c8                                    // 0x0079a609    68c8d69c00
                         push              eax                                           // 0x0079a60e    50
                         call              dword ptr [rdata_bytes + 0x360]               // 0x0079a60f    ff1560938a00
                         add               esp, 0x0c                                     // 0x0079a615    83c40c
                         ret                                                             // 0x0079a618    c3
                         nop                                                             // 0x0079a619    90
                         nop                                                             // 0x0079a61a    90
                         nop                                                             // 0x0079a61b    90
                         nop                                                             // 0x0079a61c    90
                         nop                                                             // 0x0079a61d    90
                         nop                                                             // 0x0079a61e    90
                         nop                                                             // 0x0079a61f    90
_jmp_addr_0x0079a620:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x0079a620    8b442404
                         test              eax, eax                                      // 0x0079a624    85c0
                         {disp8} je        _jmp_addr_0x0079a636                          // 0x0079a626    740e
                         push              0x00c2a2ec                                    // 0x0079a628    68eca2c200
                         push              eax                                           // 0x0079a62d    50
                         call              _wcscat                                       // 0x0079a62e    e859b90200
                         add               esp, 0x08                                     // 0x0079a633    83c408
_jmp_addr_0x0079a636:    ret                                                             // 0x0079a636    c3
                         nop                                                             // 0x0079a637    90
                         nop                                                             // 0x0079a638    90
                         nop                                                             // 0x0079a639    90
                         nop                                                             // 0x0079a63a    90
                         nop                                                             // 0x0079a63b    90
                         nop                                                             // 0x0079a63c    90
                         nop                                                             // 0x0079a63d    90
                         nop                                                             // 0x0079a63e    90
                         nop                                                             // 0x0079a63f    90
_jmp_addr_0x0079a640:    push              esi                                           // 0x0079a640    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x0079a641    8b742408
                         push              edi                                           // 0x0079a645    57
                         push              esi                                           // 0x0079a646    56
                         call              _wcslen                                       // 0x0079a647    e816be0200
                         push              0x00c2a2f4                                    // 0x0079a64c    68f4a2c200
                         mov.s             edi, eax                                      // 0x0079a651    8bf8
                         call              _wcslen                                       // 0x0079a653    e80abe0200
                         add.s             edi, eax                                      // 0x0079a658    03f8
                         add               esp, 0x08                                     // 0x0079a65a    83c408
                         cmp               edi, 0x00001b58                               // 0x0079a65d    81ff581b0000
                         {disp8} jae       _jmp_addr_0x0079a677                          // 0x0079a663    7312
                         test              esi, esi                                      // 0x0079a665    85f6
                         {disp8} je        _jmp_addr_0x0079a677                          // 0x0079a667    740e
                         push              0x00c2a2f4                                    // 0x0079a669    68f4a2c200
                         push              esi                                           // 0x0079a66e    56
                         call              _wcscat                                       // 0x0079a66f    e818b90200
                         add               esp, 0x08                                     // 0x0079a674    83c408
_jmp_addr_0x0079a677:    pop               edi                                           // 0x0079a677    5f
                         pop               esi                                           // 0x0079a678    5e
                         ret                                                             // 0x0079a679    c3
                         nop                                                             // 0x0079a67a    90
                         nop                                                             // 0x0079a67b    90
                         nop                                                             // 0x0079a67c    90
                         nop                                                             // 0x0079a67d    90
                         nop                                                             // 0x0079a67e    90
                         nop                                                             // 0x0079a67f    90
_jmp_addr_0x0079a680:    {disp32} mov      eax, dword ptr [data_bytes + 0x506d08]        // 0x0079a680    a108cdec00
                         {disp32} mov      dword ptr [data_bytes + 0x470138], eax        // 0x0079a685    a33861e300
                         ret                                                             // 0x0079a68a    c3
                         nop                                                             // 0x0079a68b    90
                         nop                                                             // 0x0079a68c    90
                         nop                                                             // 0x0079a68d    90
                         nop                                                             // 0x0079a68e    90
                         nop                                                             // 0x0079a68f    90
_jmp_addr_0x0079a690:    {disp32} mov      dword ptr [data_bytes + 0x470138], 0x00000000 // 0x0079a690    c7053861e30000000000
                         ret                                                             // 0x0079a69a    c3
                         nop                                                             // 0x0079a69b    90
                         nop                                                             // 0x0079a69c    90
                         nop                                                             // 0x0079a69d    90
                         nop                                                             // 0x0079a69e    90
                         nop                                                             // 0x0079a69f    90
_jmp_addr_0x0079a6a0:    {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x0079a6a0    8b442408
                         test              eax, eax                                      // 0x0079a6a4    85c0
                         {disp8} jge       _jmp_addr_0x0079a6aa                          // 0x0079a6a6    7d02
                         xor.s             eax, eax                                      // 0x0079a6a8    33c0
_jmp_addr_0x0079a6aa:    {disp32} mov      ecx, dword ptr [data_bytes + 0x470104]        // 0x0079a6aa    8b0d0461e300
                         imul              ecx, dword ptr [data_bytes + 0x2641bc]        // 0x0079a6b0    0faf0dbca1c200
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0079a6b7    8b542404
                         cmp.s             ecx, edx                                      // 0x0079a6bb    3bca
                         {disp8} jbe       _jmp_addr_0x0079a6c3                          // 0x0079a6bd    7604
                         xor.s             edx, edx                                      // 0x0079a6bf    33d2
                         {disp8} jmp       _jmp_addr_0x0079a6c5                          // 0x0079a6c1    eb02
_jmp_addr_0x0079a6c3:    sub.s             edx, ecx                                      // 0x0079a6c3    2bd1
_jmp_addr_0x0079a6c5:    cmp.s             eax, edx                                      // 0x0079a6c5    3bc2
                         {disp8} jle       _jmp_addr_0x0079a6cb                          // 0x0079a6c7    7e02
                         mov.s             eax, edx                                      // 0x0079a6c9    8bc2
_jmp_addr_0x0079a6cb:    ret                                                             // 0x0079a6cb    c3
                         nop                                                             // 0x0079a6cc    90
                         nop                                                             // 0x0079a6cd    90
                         nop                                                             // 0x0079a6ce    90
                         nop                                                             // 0x0079a6cf    90
_globl_ct_0x0079a6d0:    {disp32} jmp      _jmp_addr_0x0079a6e0                          // 0x0079a6d0    e90b000000
                         nop                                                             // 0x0079a6d5    90
                         nop                                                             // 0x0079a6d6    90
                         nop                                                             // 0x0079a6d7    90
                         nop                                                             // 0x0079a6d8    90
                         nop                                                             // 0x0079a6d9    90
                         nop                                                             // 0x0079a6da    90
                         nop                                                             // 0x0079a6db    90
                         nop                                                             // 0x0079a6dc    90
                         nop                                                             // 0x0079a6dd    90
                         nop                                                             // 0x0079a6de    90
                         nop                                                             // 0x0079a6df    90
_jmp_addr_0x0079a6e0:    mov               eax, 0x00000100                               // 0x0079a6e0    b800010000
                         xor.s             edx, edx                                      // 0x0079a6e5    33d2
                         div               dword ptr [data_bytes + 0x2641bc]             // 0x0079a6e7    f735bca1c200
                         {disp32} mov      dword ptr [data_bytes + 0x470104], eax        // 0x0079a6ed    a30461e300
                         ret                                                             // 0x0079a6f2    c3
                         nop                                                             // 0x0079a6f3    90
                         nop                                                             // 0x0079a6f4    90
                         nop                                                             // 0x0079a6f5    90
                         nop                                                             // 0x0079a6f6    90
                         nop                                                             // 0x0079a6f7    90
                         nop                                                             // 0x0079a6f8    90
                         nop                                                             // 0x0079a6f9    90
                         nop                                                             // 0x0079a6fa    90
                         nop                                                             // 0x0079a6fb    90
                         nop                                                             // 0x0079a6fc    90
                         nop                                                             // 0x0079a6fd    90
                         nop                                                             // 0x0079a6fe    90
                         nop                                                             // 0x0079a6ff    90
_globl_ct_0x0079a700:    {disp32} jmp      _jmp_addr_0x0079a710                          // 0x0079a700    e90b000000
                         nop                                                             // 0x0079a705    90
                         nop                                                             // 0x0079a706    90
                         nop                                                             // 0x0079a707    90
                         nop                                                             // 0x0079a708    90
                         nop                                                             // 0x0079a709    90
                         nop                                                             // 0x0079a70a    90
                         nop                                                             // 0x0079a70b    90
                         nop                                                             // 0x0079a70c    90
                         nop                                                             // 0x0079a70d    90
                         nop                                                             // 0x0079a70e    90
                         nop                                                             // 0x0079a70f    90
_jmp_addr_0x0079a710:    ret                                                             // 0x0079a710    c3
                         nop                                                             // 0x0079a711    90
                         nop                                                             // 0x0079a712    90
                         nop                                                             // 0x0079a713    90
                         nop                                                             // 0x0079a714    90
                         nop                                                             // 0x0079a715    90
                         nop                                                             // 0x0079a716    90
                         nop                                                             // 0x0079a717    90
                         nop                                                             // 0x0079a718    90
                         nop                                                             // 0x0079a719    90
                         nop                                                             // 0x0079a71a    90
                         nop                                                             // 0x0079a71b    90
                         nop                                                             // 0x0079a71c    90
                         nop                                                             // 0x0079a71d    90
                         nop                                                             // 0x0079a71e    90
                         nop                                                             // 0x0079a71f    90
_jmp_addr_0x0079a720:    xor.s             edx, edx                                      // 0x0079a720    33d2
                         push              edi                                           // 0x0079a722    57
                         xor.s             eax, eax                                      // 0x0079a723    33c0
                         mov               ecx, 0x0000c000                               // 0x0079a725    b900c00000
                         mov               edi, 0x00e060b8                               // 0x0079a72a    bfb860e000
                         rep stosd                                                       // 0x0079a72f    f3ab
                         mov               ecx, 0x00000020                               // 0x0079a731    b920000000
                         mov               edi, 0x00e06038                               // 0x0079a736    bf3860e000
                         rep stosd                                                       // 0x0079a73b    f3ab
                         {disp32} mov      dword ptr [data_bytes + 0x2641bc], 0x00000018 // 0x0079a73d    c705bca1c20018000000
                         {disp32} mov      dword ptr [data_bytes + 0x470104], 0x0000000a // 0x0079a747    c7050461e3000a000000
                         {disp32} mov      dword ptr [data_bytes + 0x470124], edx        // 0x0079a751    89152461e300
                         {disp32} mov      dword ptr [data_bytes + 0x470128], edx        // 0x0079a757    89152861e300
                         {disp32} mov      dword ptr [data_bytes + 0x47012c], edx        // 0x0079a75d    89152c61e300
                         {disp32} mov      byte ptr [data_bytes + 0x470130], dl          // 0x0079a763    88153061e300
                         {disp32} mov      dword ptr [data_bytes + 0x470134], edx        // 0x0079a769    89153461e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700f8], edx        // 0x0079a76f    8915f860e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700fc], edx        // 0x0079a775    8915fc60e300
                         {disp32} mov      dword ptr [data_bytes + 0x470138], edx        // 0x0079a77b    89153861e300
                         {disp32} mov      dword ptr [data_bytes + 0x47013c], edx        // 0x0079a781    89153c61e300
                         {disp32} mov      dword ptr [data_bytes + 0x2641c0], 0x00000001 // 0x0079a787    c705c0a1c20001000000
                         {disp32} mov      dword ptr [data_bytes + 0x2641c4], 0x00000e77 // 0x0079a791    c705c4a1c200770e0000
                         {disp32} mov      dword ptr [data_bytes + 0x470140], edx        // 0x0079a79b    89154061e300
                         {disp32} mov      dword ptr [data_bytes + 0x47010c], edx        // 0x0079a7a1    89150c61e300
                         {disp32} mov      dword ptr [data_bytes + 0x470110], edx        // 0x0079a7a7    89151061e300
                         {disp32} mov      dword ptr [data_bytes + 0x470114], edx        // 0x0079a7ad    89151461e300
                         {disp32} mov      dword ptr [data_bytes + 0x470118], edx        // 0x0079a7b3    89151861e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700d8], edx        // 0x0079a7b9    8915d860e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700dc], edx        // 0x0079a7bf    8915dc60e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700e0], edx        // 0x0079a7c5    8915e060e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700c8], edx        // 0x0079a7cb    8915c860e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700cc], edx        // 0x0079a7d1    8915cc60e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700d0], edx        // 0x0079a7d7    8915d060e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700b8], edx        // 0x0079a7dd    8915b860e300
                         {disp32} mov      dword ptr [data_bytes + 0x4700bc], 0x3f800000 // 0x0079a7e3    c705bc60e3000000803f
                         {disp32} mov      dword ptr [data_bytes + 0x4700c0], edx        // 0x0079a7ed    8915c060e300
                         {disp32} mov      byte ptr [data_bytes + 0x47011c], dl          // 0x0079a7f3    88151c61e300
                         pop               edi                                           // 0x0079a7f9    5f
                         ret                                                             // 0x0079a7fa    c3
                         nop                                                             // 0x0079a7fb    90
                         nop                                                             // 0x0079a7fc    90
                         nop                                                             // 0x0079a7fd    90
                         nop                                                             // 0x0079a7fe    90
                         nop                                                             // 0x0079a7ff    90
_jmp_addr_0x0079a800:    push              esi                                           // 0x0079a800    56
                         mov.s             esi, ecx                                      // 0x0079a801    8bf1
                         call              ?StopHelpScripts@GScript@@QAEXXZ              // 0x0079a803    e8781ff5ff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079a808    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x0025005c]             // 0x0079a80e    8b815c002500
                         test              eax, eax                                      // 0x0079a814    85c0
                         {disp8} je        _jmp_addr_0x0079a84c                          // 0x0079a816    7434
                         {disp32} mov      ecx, dword ptr [ecx + 0x000059b4]             // 0x0079a818    8b89b4590000
                         {disp8} mov       edx, dword ptr [ecx + 0x44]                   // 0x0079a81e    8b5144
                         test              edx, edx                                      // 0x0079a821    85d2
                         {disp8} jne       _jmp_addr_0x0079a84c                          // 0x0079a823    7527
                         {disp32} mov      ecx, dword ptr [eax + 0x000045f8]             // 0x0079a825    8b88f8450000
                         test              ecx, ecx                                      // 0x0079a82b    85c9
                         {disp8} je        _jmp_addr_0x0079a84c                          // 0x0079a82d    741d
                         {disp32} mov      ecx, dword ptr [eax + 0x000045f4]             // 0x0079a82f    8b88f4450000
                         test              ecx, ecx                                      // 0x0079a835    85c9
                         {disp8} je        _jmp_addr_0x0079a84c                          // 0x0079a837    7413
                         {disp8} mov       cl, byte ptr [esi + 0x3c]                     // 0x0079a839    8a4e3c
                         test              cl, cl                                        // 0x0079a83c    84c9
                         {disp8} lea       eax, dword ptr [esi + 0x3c]                   // 0x0079a83e    8d463c
                         {disp8} je        _jmp_addr_0x0079a84c                          // 0x0079a841    7409
                         push              eax                                           // 0x0079a843    50
                         call              _jmp_addr_0x00794a80                          // 0x0079a844    e837a2ffff
                         add               esp, 0x04                                     // 0x0079a849    83c404
_jmp_addr_0x0079a84c:    pop               esi                                           // 0x0079a84c    5e
                         ret                                                             // 0x0079a84d    c3
                         nop                                                             // 0x0079a84e    90
                         nop                                                             // 0x0079a84f    90
_globl_ct_0x0079a850:    {disp32} mov      cl, byte ptr [_DAT_00fac934]                  // 0x0079a850    8a0d34c9fa00
                         mov               al, 0x01                                      // 0x0079a856    b001
                         test              al, cl                                        // 0x0079a858    84c8
                         {disp8} jne       _jmp_addr_0x0079a864                          // 0x0079a85a    7508
                         or.s              cl, al                                        // 0x0079a85c    0ac8
                         {disp32} mov      byte ptr [_DAT_00fac934], cl                  // 0x0079a85e    880d34c9fa00
_jmp_addr_0x0079a864:    {disp32} jmp      _jmp_addr_0x0079a870                          // 0x0079a864    e907000000
                         nop                                                             // 0x0079a869    90
                         nop                                                             // 0x0079a86a    90
                         nop                                                             // 0x0079a86b    90
                         nop                                                             // 0x0079a86c    90
                         nop                                                             // 0x0079a86d    90
                         nop                                                             // 0x0079a86e    90
                         nop                                                             // 0x0079a86f    90
_jmp_addr_0x0079a870:    push              0x00407870                                    // 0x0079a870    6870784000
                         call              _atexit                                       // 0x0079a875    e817af0200
                         pop               ecx                                           // 0x0079a87a    59
                         ret                                                             // 0x0079a87b    c3
                         nop                                                             // 0x0079a87c    90
                         nop                                                             // 0x0079a87d    90
                         nop                                                             // 0x0079a87e    90
                         nop                                                             // 0x0079a87f    90
_globl_ct_0x0079a880:    {disp32} jmp      _jmp_addr_0x0079a890                          // 0x0079a880    e90b000000
                         nop                                                             // 0x0079a885    90
                         nop                                                             // 0x0079a886    90
                         nop                                                             // 0x0079a887    90
                         nop                                                             // 0x0079a888    90
                         nop                                                             // 0x0079a889    90
                         nop                                                             // 0x0079a88a    90
                         nop                                                             // 0x0079a88b    90
                         nop                                                             // 0x0079a88c    90
                         nop                                                             // 0x0079a88d    90
                         nop                                                             // 0x0079a88e    90
                         nop                                                             // 0x0079a88f    90
_jmp_addr_0x0079a890:    {disp32} fld      dword ptr [rdata_bytes + 0xf5f18]             // 0x0079a890    d90518ef9900
                         {disp32} fmul     dword ptr [rdata_bytes + 0xf5f14]             // 0x0079a896    d80d14ef9900
                         {disp32} fstp     dword ptr [data_bytes + 0x470148]             // 0x0079a89c    d91d4861e300
                         ret                                                             // 0x0079a8a2    c3
                         nop                                                             // 0x0079a8a3    90
                         nop                                                             // 0x0079a8a4    90
                         nop                                                             // 0x0079a8a5    90
                         nop                                                             // 0x0079a8a6    90
                         nop                                                             // 0x0079a8a7    90
                         nop                                                             // 0x0079a8a8    90
                         nop                                                             // 0x0079a8a9    90
                         nop                                                             // 0x0079a8aa    90
                         nop                                                             // 0x0079a8ab    90
                         nop                                                             // 0x0079a8ac    90
                         nop                                                             // 0x0079a8ad    90
                         nop                                                             // 0x0079a8ae    90
                         nop                                                             // 0x0079a8af    90
_globl_ct_0x0079a8b0:    {disp32} jmp      _jmp_addr_0x0079a8c0                          // 0x0079a8b0    e90b000000
                         nop                                                             // 0x0079a8b5    90
                         nop                                                             // 0x0079a8b6    90
                         nop                                                             // 0x0079a8b7    90
                         nop                                                             // 0x0079a8b8    90
                         nop                                                             // 0x0079a8b9    90
                         nop                                                             // 0x0079a8ba    90
                         nop                                                             // 0x0079a8bb    90
                         nop                                                             // 0x0079a8bc    90
                         nop                                                             // 0x0079a8bd    90
                         nop                                                             // 0x0079a8be    90
                         nop                                                             // 0x0079a8bf    90
_jmp_addr_0x0079a8c0:    {disp32} mov      dword ptr [data_bytes + 0x470144], 0xffffffff // 0x0079a8c0    c7054461e300ffffffff
                         ret                                                             // 0x0079a8ca    c3
                         nop                                                             // 0x0079a8cb    90
                         nop                                                             // 0x0079a8cc    90
                         nop                                                             // 0x0079a8cd    90
                         nop                                                             // 0x0079a8ce    90
                         nop                                                             // 0x0079a8cf    90
_jmp_addr_0x0079a8d0:    push              ebx                                           // 0x0079a8d0    53
                         push              esi                                           // 0x0079a8d1    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x0079a8d2    8b74240c
                         push              edi                                           // 0x0079a8d6    57
                         push              esi                                           // 0x0079a8d7    56
                         call              _wcslen                                       // 0x0079a8d8    e885bb0200
                         {disp8} mov       edi, dword ptr [esp + 0x18]                   // 0x0079a8dd    8b7c2418
                         push              edi                                           // 0x0079a8e1    57
                         mov.s             ebx, eax                                      // 0x0079a8e2    8bd8
                         call              _wcslen                                       // 0x0079a8e4    e879bb0200
                         add.s             ebx, eax                                      // 0x0079a8e9    03d8
                         add               esp, 0x08                                     // 0x0079a8eb    83c408
                         cmp               ebx, 0x00001b58                               // 0x0079a8ee    81fb581b0000
                         {disp8} jae       _jmp_addr_0x0079a906                          // 0x0079a8f4    7310
                         push              esi                                           // 0x0079a8f6    56
                         push              edi                                           // 0x0079a8f7    57
                         call              _jmp_addr_0x0079c770                          // 0x0079a8f8    e8731e0000
                         push              esi                                           // 0x0079a8fd    56
                         call              _jmp_addr_0x0079a640                          // 0x0079a8fe    e83dfdffff
                         add               esp, 0x0c                                     // 0x0079a903    83c40c
_jmp_addr_0x0079a906:    pop               edi                                           // 0x0079a906    5f
                         pop               esi                                           // 0x0079a907    5e
                         pop               ebx                                           // 0x0079a908    5b
                         ret                                                             // 0x0079a909    c3
                         nop                                                             // 0x0079a90a    90
                         nop                                                             // 0x0079a90b    90
                         nop                                                             // 0x0079a90c    90
                         nop                                                             // 0x0079a90d    90
                         nop                                                             // 0x0079a90e    90
                         nop                                                             // 0x0079a90f    90
_jmp_addr_0x0079a910:    mov               eax, 0x00001408                               // 0x0079a910    b808140000
                         call              __chkstk                                      // 0x0079a915    e896c50200
                         push              ebx                                           // 0x0079a91a    53
                         push              esi                                           // 0x0079a91b    56
                         {disp32} mov      esi, dword ptr [esp + 0x00001418]             // 0x0079a91c    8bb42418140000
                         push              edi                                           // 0x0079a923    57
                         xor.s             edi, edi                                      // 0x0079a924    33ff
                         cmp.s             esi, edi                                      // 0x0079a926    3bf7
                         {disp32} jbe      _jmp_addr_0x0079c3e5                          // 0x0079a928    0f86b71a0000
                         cmp               esi, 0x000004ac                               // 0x0079a92e    81feac040000
                         {disp32} mov      ebx, dword ptr [esp + 0x00001418]             // 0x0079a934    8b9c2418140000
                         {disp32} ja       _jmp_addr_0x0079b70a                          // 0x0079a93b    0f87c90d0000
                         cmp               esi, 0x000004ac                               // 0x0079a941    81feac040000
                         {disp32} je       _jmp_addr_0x0079b694                          // 0x0079a947    0f84470d0000
                         {disp32} lea      eax, dword ptr [esi + -0x00000481]            // 0x0079a94d    8d867ffbffff
                         cmp               eax, 0x2a                                     // 0x0079a953    83f82a
                         {disp32} ja       _jmp_addr_0x0079c2c7                          // 0x0079a956    0f876b190000
                         jmp               dword ptr [eax*4 + 0x79c3f0]                  // 0x0079a95c    ff2485f0c37900
                         push              0x00000481                                    // 0x0079a963    6881040000
                         mov               ecx, 0x00d17ca8                               // 0x0079a968    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079a96d    e87e5ecdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079a972    8b7008
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0079a975    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x000059b4]             // 0x0079a97a    8b88b4590000
                         call              _jmp_addr_0x007949a0                          // 0x0079a980    e81ba0ffff
                         push              eax                                           // 0x0079a985    50
                         push              esi                                           // 0x0079a986    56
                         push              ebx                                           // 0x0079a987    53
                         call              _jmp_addr_0x0079c550                          // 0x0079a988    e8c31b0000
                         add               esp, 0x0c                                     // 0x0079a98d    83c40c
                         push              ebx                                           // 0x0079a990    53
                         call              _jmp_addr_0x0079a640                          // 0x0079a991    e8aafcffff
                         add               esp, 0x04                                     // 0x0079a996    83c404
                         pop               edi                                           // 0x0079a999    5f
                         pop               esi                                           // 0x0079a99a    5e
                         pop               ebx                                           // 0x0079a99b    5b
                         add               esp, 0x00001408                               // 0x0079a99c    81c408140000
                         ret                                                             // 0x0079a9a2    c3
                         push              0x00000482                                    // 0x0079a9a3    6882040000
                         mov               ecx, 0x00d17ca8                               // 0x0079a9a8    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079a9ad    e83e5ecdff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079a9b2    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x000059b4]             // 0x0079a9b8    8b89b4590000
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079a9be    8b7008
                         call              _jmp_addr_0x007949b0                          // 0x0079a9c1    e8ea9fffff
                         push              eax                                           // 0x0079a9c6    50
                         push              esi                                           // 0x0079a9c7    56
                         push              ebx                                           // 0x0079a9c8    53
                         call              _jmp_addr_0x0079c550                          // 0x0079a9c9    e8821b0000
                         add               esp, 0x0c                                     // 0x0079a9ce    83c40c
                         push              ebx                                           // 0x0079a9d1    53
                         call              _jmp_addr_0x0079a640                          // 0x0079a9d2    e869fcffff
                         add               esp, 0x04                                     // 0x0079a9d7    83c404
                         pop               edi                                           // 0x0079a9da    5f
                         pop               esi                                           // 0x0079a9db    5e
                         pop               ebx                                           // 0x0079a9dc    5b
                         add               esp, 0x00001408                               // 0x0079a9dd    81c408140000
                         ret                                                             // 0x0079a9e3    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079a9e4    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079a9ea    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079a9ec    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079a9f2    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079a9f5    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079a9f8    8d0450
                         shl               eax, 5                                        // 0x0079a9fb    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079a9fe    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079aa05    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079aa07    0f84cf190000
                         push              0x00000487                                    // 0x0079aa0d    6887040000
                         mov               ecx, 0x00d17ca8                               // 0x0079aa12    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079aa17    e8d45dcdff
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079aa1c    8b4008
                         add               esi, 0x000000e0                               // 0x0079aa1f    81c6e0000000
                         push              esi                                           // 0x0079aa25    56
                         push              eax                                           // 0x0079aa26    50
                         push              ebx                                           // 0x0079aa27    53
                         call              _jmp_addr_0x0079c650                          // 0x0079aa28    e8231c0000
                         add               esp, 0x0c                                     // 0x0079aa2d    83c40c
                         push              ebx                                           // 0x0079aa30    53
                         call              _jmp_addr_0x0079a640                          // 0x0079aa31    e80afcffff
                         add               esp, 0x04                                     // 0x0079aa36    83c404
                         pop               edi                                           // 0x0079aa39    5f
                         pop               esi                                           // 0x0079aa3a    5e
                         pop               ebx                                           // 0x0079aa3b    5b
                         add               esp, 0x00001408                               // 0x0079aa3c    81c408140000
                         ret                                                             // 0x0079aa42    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079aa43    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079aa49    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079aa4b    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079aa51    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079aa54    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079aa57    8d0450
                         shl               eax, 5                                        // 0x0079aa5a    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079aa5d    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079aa64    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079aa66    0f8470190000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079aa6c    8b8860010000
                         {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079aa72    8b7108
                         push              0x00000488                                    // 0x0079aa75    6888040000
                         mov               ecx, 0x00d17ca8                               // 0x0079aa7a    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079aa7f    e86c5dcdff
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079aa84    8b4008
                         push              esi                                           // 0x0079aa87    56
                         push              eax                                           // 0x0079aa88    50
                         push              ebx                                           // 0x0079aa89    53
                         call              _jmp_addr_0x0079c550                          // 0x0079aa8a    e8c11a0000
                         add               esp, 0x0c                                     // 0x0079aa8f    83c40c
                         push              ebx                                           // 0x0079aa92    53
                         call              _jmp_addr_0x0079a640                          // 0x0079aa93    e8a8fbffff
                         add               esp, 0x04                                     // 0x0079aa98    83c404
                         pop               edi                                           // 0x0079aa9b    5f
                         pop               esi                                           // 0x0079aa9c    5e
                         pop               ebx                                           // 0x0079aa9d    5b
                         add               esp, 0x00001408                               // 0x0079aa9e    81c408140000
                         ret                                                             // 0x0079aaa4    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079aaa5    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079aaab    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079aaad    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079aab3    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079aab6    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079aab9    8d0450
                         shl               eax, 5                                        // 0x0079aabc    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079aabf    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079aac6    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079aac8    0f840e190000
                         push              0x00000489                                    // 0x0079aace    6889040000
                         mov               ecx, 0x00d17ca8                               // 0x0079aad3    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079aad8    e8135dcdff
                         mov               edx, dword ptr [esi]                          // 0x0079aadd    8b16
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x0079aadf    8b7808
                         mov.s             ecx, esi                                      // 0x0079aae2    8bce
                         call              dword ptr [edx + 0x11c]                       // 0x0079aae4    ff921c010000
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079aaea    dc0d387b8c00
                         call              _jmp_addr_0x007a1400                          // 0x0079aaf0    e80b690000
                         push              eax                                           // 0x0079aaf5    50
                         push              edi                                           // 0x0079aaf6    57
                         push              ebx                                           // 0x0079aaf7    53
                         call              _jmp_addr_0x0079c550                          // 0x0079aaf8    e8531a0000
                         add               esp, 0x0c                                     // 0x0079aafd    83c40c
                         push              ebx                                           // 0x0079ab00    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ab01    e83afbffff
                         add               esp, 0x04                                     // 0x0079ab06    83c404
                         pop               edi                                           // 0x0079ab09    5f
                         pop               esi                                           // 0x0079ab0a    5e
                         pop               ebx                                           // 0x0079ab0b    5b
                         add               esp, 0x00001408                               // 0x0079ab0c    81c408140000
                         ret                                                             // 0x0079ab12    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ab13    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ab19    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ab1b    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ab21    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ab24    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ab27    8d0450
                         shl               eax, 5                                        // 0x0079ab2a    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ab2d    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ab34    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ab36    0f84a0180000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000168]             // 0x0079ab3c    8b8868010000
                         {disp8} mov       edx, dword ptr [ecx + 0x08]                   // 0x0079ab42    8b5108
                         mov.s             eax, edx                                      // 0x0079ab45    8bc2
                         push              eax                                           // 0x0079ab47    50
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ab48    89542410
                         call              _jmp_addr_0x00414730                          // 0x0079ab4c    e8df9bc7ff
                         add               esp, 0x04                                     // 0x0079ab51    83c404
                         add               eax, 0x0000046a                               // 0x0079ab54    056a040000
                         push              eax                                           // 0x0079ab59    50
                         mov               ecx, 0x00d17ca8                               // 0x0079ab5a    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079ab5f    e88c5ccdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ab64    8b7008
                         push              0x0000048a                                    // 0x0079ab67    688a040000
_jmp_addr_0x0079ab6c:    mov               ecx, 0x00d17ca8                               // 0x0079ab6c    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079ab71    e87a5ccdff
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079ab76    8b4008
                         push              esi                                           // 0x0079ab79    56
_jmp_addr_0x0079ab7a:    push              eax                                           // 0x0079ab7a    50
_jmp_addr_0x0079ab7b:    push              ebx                                           // 0x0079ab7b    53
                         call              _jmp_addr_0x0079c650                          // 0x0079ab7c    e8cf1a0000
                         add               esp, 0x0c                                     // 0x0079ab81    83c40c
                         push              ebx                                           // 0x0079ab84    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ab85    e8b6faffff
                         add               esp, 0x04                                     // 0x0079ab8a    83c404
                         pop               edi                                           // 0x0079ab8d    5f
                         pop               esi                                           // 0x0079ab8e    5e
                         pop               ebx                                           // 0x0079ab8f    5b
                         add               esp, 0x00001408                               // 0x0079ab90    81c408140000
                         ret                                                             // 0x0079ab96    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ab97    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ab9d    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ab9f    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079aba5    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079aba8    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079abab    8d0450
                         shl               eax, 5                                        // 0x0079abae    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079abb1    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079abb8    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079abba    0f841c180000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079abc0    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x1c]                   // 0x0079abc6    8b511c
                         push              0x0000048b                                    // 0x0079abc9    688b040000
                         mov               ecx, 0x00d17ca8                               // 0x0079abce    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079abd3    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079abd7    e8145ccdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079abdc    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079abe0    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079abe6    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079abe9    e812680000
                         push              eax                                           // 0x0079abee    50
                         push              esi                                           // 0x0079abef    56
                         push              ebx                                           // 0x0079abf0    53
                         call              _jmp_addr_0x0079c550                          // 0x0079abf1    e85a190000
                         add               esp, 0x0c                                     // 0x0079abf6    83c40c
                         push              ebx                                           // 0x0079abf9    53
                         call              _jmp_addr_0x0079a640                          // 0x0079abfa    e841faffff
                         add               esp, 0x04                                     // 0x0079abff    83c404
                         pop               edi                                           // 0x0079ac02    5f
                         pop               esi                                           // 0x0079ac03    5e
                         pop               ebx                                           // 0x0079ac04    5b
                         add               esp, 0x00001408                               // 0x0079ac05    81c408140000
                         ret                                                             // 0x0079ac0b    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ac0c    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ac12    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ac14    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ac1a    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ac1d    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ac20    8d0450
                         shl               eax, 5                                        // 0x0079ac23    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ac26    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ac2d    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ac2f    0f84a7170000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079ac35    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x0c]                   // 0x0079ac3b    8b510c
                         push              0x0000048c                                    // 0x0079ac3e    688c040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ac43    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ac48    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079ac4c    e89f5bcdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079ac51    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079ac55    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ac5b    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079ac5e    e89d670000
                         push              eax                                           // 0x0079ac63    50
                         push              esi                                           // 0x0079ac64    56
                         push              ebx                                           // 0x0079ac65    53
                         call              _jmp_addr_0x0079c550                          // 0x0079ac66    e8e5180000
                         add               esp, 0x0c                                     // 0x0079ac6b    83c40c
                         push              ebx                                           // 0x0079ac6e    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ac6f    e8ccf9ffff
                         add               esp, 0x04                                     // 0x0079ac74    83c404
                         pop               edi                                           // 0x0079ac77    5f
                         pop               esi                                           // 0x0079ac78    5e
                         pop               ebx                                           // 0x0079ac79    5b
                         add               esp, 0x00001408                               // 0x0079ac7a    81c408140000
                         ret                                                             // 0x0079ac80    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ac81    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ac87    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ac89    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ac8f    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ac92    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ac95    8d0450
                         shl               eax, 5                                        // 0x0079ac98    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ac9b    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079aca2    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079aca4    0f8432170000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079acaa    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x14]                   // 0x0079acb0    8b5114
                         push              0x0000048d                                    // 0x0079acb3    688d040000
                         mov               ecx, 0x00d17ca8                               // 0x0079acb8    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079acbd    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079acc1    e82a5bcdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079acc6    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079acca    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079acd0    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079acd3    e828670000
                         push              eax                                           // 0x0079acd8    50
                         push              esi                                           // 0x0079acd9    56
                         push              ebx                                           // 0x0079acda    53
                         call              _jmp_addr_0x0079c550                          // 0x0079acdb    e870180000
                         add               esp, 0x0c                                     // 0x0079ace0    83c40c
                         push              ebx                                           // 0x0079ace3    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ace4    e857f9ffff
                         add               esp, 0x04                                     // 0x0079ace9    83c404
                         pop               edi                                           // 0x0079acec    5f
                         pop               esi                                           // 0x0079aced    5e
                         pop               ebx                                           // 0x0079acee    5b
                         add               esp, 0x00001408                               // 0x0079acef    81c408140000
                         ret                                                             // 0x0079acf5    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079acf6    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079acfc    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079acfe    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ad04    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ad07    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ad0a    8d0450
                         shl               eax, 5                                        // 0x0079ad0d    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ad10    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ad17    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ad19    0f84bd160000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079ad1f    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x30]                   // 0x0079ad25    8b5130
                         push              0x0000048e                                    // 0x0079ad28    688e040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ad2d    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ad32    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079ad36    e8b55acdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079ad3b    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079ad3f    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ad45    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079ad48    e8b3660000
                         push              eax                                           // 0x0079ad4d    50
                         push              esi                                           // 0x0079ad4e    56
                         push              ebx                                           // 0x0079ad4f    53
                         call              _jmp_addr_0x0079c550                          // 0x0079ad50    e8fb170000
                         add               esp, 0x0c                                     // 0x0079ad55    83c40c
                         push              ebx                                           // 0x0079ad58    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ad59    e8e2f8ffff
                         add               esp, 0x04                                     // 0x0079ad5e    83c404
                         pop               edi                                           // 0x0079ad61    5f
                         pop               esi                                           // 0x0079ad62    5e
                         pop               ebx                                           // 0x0079ad63    5b
                         add               esp, 0x00001408                               // 0x0079ad64    81c408140000
                         ret                                                             // 0x0079ad6a    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ad6b    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ad71    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ad73    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ad79    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ad7c    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ad7f    8d0450
                         shl               eax, 5                                        // 0x0079ad82    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ad85    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ad8c    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ad8e    0f8448160000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079ad94    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x34]                   // 0x0079ad9a    8b5134
                         push              0x0000048f                                    // 0x0079ad9d    688f040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ada2    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ada7    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079adab    e8405acdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079adb0    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079adb4    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079adba    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079adbd    e83e660000
                         push              eax                                           // 0x0079adc2    50
                         push              esi                                           // 0x0079adc3    56
                         push              ebx                                           // 0x0079adc4    53
                         call              _jmp_addr_0x0079c550                          // 0x0079adc5    e886170000
                         add               esp, 0x0c                                     // 0x0079adca    83c40c
                         push              ebx                                           // 0x0079adcd    53
                         call              _jmp_addr_0x0079a640                          // 0x0079adce    e86df8ffff
                         add               esp, 0x04                                     // 0x0079add3    83c404
                         pop               edi                                           // 0x0079add6    5f
                         pop               esi                                           // 0x0079add7    5e
                         pop               ebx                                           // 0x0079add8    5b
                         add               esp, 0x00001408                               // 0x0079add9    81c408140000
                         ret                                                             // 0x0079addf    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ade0    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ade6    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ade8    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079adee    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079adf1    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079adf4    8d0450
                         shl               eax, 5                                        // 0x0079adf7    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079adfa    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ae01    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ae03    0f84d3150000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079ae09    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x20]                   // 0x0079ae0f    8b5120
                         push              0x00000490                                    // 0x0079ae12    6890040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ae17    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ae1c    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079ae20    e8cb59cdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079ae25    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079ae29    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ae2f    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079ae32    e8c9650000
                         push              eax                                           // 0x0079ae37    50
                         push              esi                                           // 0x0079ae38    56
                         push              ebx                                           // 0x0079ae39    53
                         call              _jmp_addr_0x0079c550                          // 0x0079ae3a    e811170000
                         add               esp, 0x0c                                     // 0x0079ae3f    83c40c
                         push              ebx                                           // 0x0079ae42    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ae43    e8f8f7ffff
                         add               esp, 0x04                                     // 0x0079ae48    83c404
                         pop               edi                                           // 0x0079ae4b    5f
                         pop               esi                                           // 0x0079ae4c    5e
                         pop               ebx                                           // 0x0079ae4d    5b
                         add               esp, 0x00001408                               // 0x0079ae4e    81c408140000
                         ret                                                             // 0x0079ae54    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ae55    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ae5b    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ae5d    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ae63    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ae66    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ae69    8d0450
                         shl               eax, 5                                        // 0x0079ae6c    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079ae6f    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079ae76    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079ae78    0f845e150000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079ae7e    8b8860010000
                         {disp8} mov       edx, dword ptr [ecx + 0x2c]                   // 0x0079ae84    8b512c
                         push              0x00000491                                    // 0x0079ae87    6891040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ae8c    b9a87cd100
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079ae91    89542410
                         call              _jmp_addr_0x004707f0                          // 0x0079ae95    e85659cdff
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x0079ae9a    d944240c
                         {disp32} fmul     qword ptr [rdata_bytes + 0x1eb38]             // 0x0079ae9e    dc0d387b8c00
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079aea4    8b7008
                         call              _jmp_addr_0x007a1400                          // 0x0079aea7    e854650000
                         push              eax                                           // 0x0079aeac    50
                         push              esi                                           // 0x0079aead    56
                         push              ebx                                           // 0x0079aeae    53
                         call              _jmp_addr_0x0079c550                          // 0x0079aeaf    e89c160000
                         add               esp, 0x0c                                     // 0x0079aeb4    83c40c
                         push              ebx                                           // 0x0079aeb7    53
                         call              _jmp_addr_0x0079a640                          // 0x0079aeb8    e883f7ffff
                         add               esp, 0x04                                     // 0x0079aebd    83c404
                         pop               edi                                           // 0x0079aec0    5f
                         pop               esi                                           // 0x0079aec1    5e
                         pop               ebx                                           // 0x0079aec2    5b
                         add               esp, 0x00001408                               // 0x0079aec3    81c408140000
                         ret                                                             // 0x0079aec9    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079aeca    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079aed0    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079aed2    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079aed8    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079aedb    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079aede    8d0450
                         shl               eax, 5                                        // 0x0079aee1    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079aee4    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079aeeb    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079aeed    0f84e9140000
                         push              0x00000492                                    // 0x0079aef3    6892040000
                         mov               ecx, 0x00d17ca8                               // 0x0079aef8    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079aefd    e8ee58cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x0000016c]             // 0x0079af02    8b8e6c010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079af08    8b4008
                         push              ecx                                           // 0x0079af0b    51
                         push              eax                                           // 0x0079af0c    50
                         push              ebx                                           // 0x0079af0d    53
                         call              _jmp_addr_0x0079c550                          // 0x0079af0e    e83d160000
                         add               esp, 0x0c                                     // 0x0079af13    83c40c
                         push              ebx                                           // 0x0079af16    53
                         call              _jmp_addr_0x0079a640                          // 0x0079af17    e824f7ffff
                         add               esp, 0x04                                     // 0x0079af1c    83c404
                         pop               edi                                           // 0x0079af1f    5f
                         pop               esi                                           // 0x0079af20    5e
                         pop               ebx                                           // 0x0079af21    5b
                         add               esp, 0x00001408                               // 0x0079af22    81c408140000
                         ret                                                             // 0x0079af28    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079af29    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079af2f    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079af31    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079af37    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079af3a    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079af3d    8d0450
                         shl               eax, 5                                        // 0x0079af40    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079af43    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079af4a    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079af4c    0f848a140000
                         push              0x00000493                                    // 0x0079af52    6893040000
                         mov               ecx, 0x00d17ca8                               // 0x0079af57    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079af5c    e88f58cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000170]             // 0x0079af61    8b8e70010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079af67    8b4008
                         push              ecx                                           // 0x0079af6a    51
                         push              eax                                           // 0x0079af6b    50
                         push              ebx                                           // 0x0079af6c    53
                         call              _jmp_addr_0x0079c550                          // 0x0079af6d    e8de150000
                         add               esp, 0x0c                                     // 0x0079af72    83c40c
                         push              ebx                                           // 0x0079af75    53
                         call              _jmp_addr_0x0079a640                          // 0x0079af76    e8c5f6ffff
                         add               esp, 0x04                                     // 0x0079af7b    83c404
                         pop               edi                                           // 0x0079af7e    5f
                         pop               esi                                           // 0x0079af7f    5e
                         pop               ebx                                           // 0x0079af80    5b
                         add               esp, 0x00001408                               // 0x0079af81    81c408140000
                         ret                                                             // 0x0079af87    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079af88    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079af8e    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079af90    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079af96    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079af99    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079af9c    8d0450
                         shl               eax, 5                                        // 0x0079af9f    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079afa2    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079afa9    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079afab    0f842b140000
                         push              0x00000494                                    // 0x0079afb1    6894040000
                         mov               ecx, 0x00d17ca8                               // 0x0079afb6    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079afbb    e83058cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000174]             // 0x0079afc0    8b8e74010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079afc6    8b4008
                         push              ecx                                           // 0x0079afc9    51
                         push              eax                                           // 0x0079afca    50
                         push              ebx                                           // 0x0079afcb    53
                         call              _jmp_addr_0x0079c550                          // 0x0079afcc    e87f150000
                         add               esp, 0x0c                                     // 0x0079afd1    83c40c
                         push              ebx                                           // 0x0079afd4    53
                         call              _jmp_addr_0x0079a640                          // 0x0079afd5    e866f6ffff
                         add               esp, 0x04                                     // 0x0079afda    83c404
                         pop               edi                                           // 0x0079afdd    5f
                         pop               esi                                           // 0x0079afde    5e
                         pop               ebx                                           // 0x0079afdf    5b
                         add               esp, 0x00001408                               // 0x0079afe0    81c408140000
                         ret                                                             // 0x0079afe6    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079afe7    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079afed    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079afef    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079aff5    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079aff8    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079affb    8d0450
                         shl               eax, 5                                        // 0x0079affe    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b001    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079b008    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b00a    0f84cc130000
                         push              0x00000495                                    // 0x0079b010    6895040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b015    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b01a    e8d157cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000178]             // 0x0079b01f    8b8e78010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b025    8b4008
                         push              ecx                                           // 0x0079b028    51
                         push              eax                                           // 0x0079b029    50
                         push              ebx                                           // 0x0079b02a    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b02b    e820150000
                         add               esp, 0x0c                                     // 0x0079b030    83c40c
                         push              ebx                                           // 0x0079b033    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b034    e807f6ffff
                         add               esp, 0x04                                     // 0x0079b039    83c404
                         pop               edi                                           // 0x0079b03c    5f
                         pop               esi                                           // 0x0079b03d    5e
                         pop               ebx                                           // 0x0079b03e    5b
                         add               esp, 0x00001408                               // 0x0079b03f    81c408140000
                         ret                                                             // 0x0079b045    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b046    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b04c    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b04e    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b054    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b057    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b05a    8d0450
                         shl               eax, 5                                        // 0x0079b05d    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b060    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079b067    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b069    0f846d130000
                         push              0x00000496                                    // 0x0079b06f    6896040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b074    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b079    e87257cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x0000017c]             // 0x0079b07e    8b8e7c010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b084    8b4008
                         push              ecx                                           // 0x0079b087    51
                         push              eax                                           // 0x0079b088    50
                         push              ebx                                           // 0x0079b089    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b08a    e8c1140000
                         add               esp, 0x0c                                     // 0x0079b08f    83c40c
                         push              ebx                                           // 0x0079b092    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b093    e8a8f5ffff
                         add               esp, 0x04                                     // 0x0079b098    83c404
                         pop               edi                                           // 0x0079b09b    5f
                         pop               esi                                           // 0x0079b09c    5e
                         pop               ebx                                           // 0x0079b09d    5b
                         add               esp, 0x00001408                               // 0x0079b09e    81c408140000
                         ret                                                             // 0x0079b0a4    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b0a5    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b0ab    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b0ad    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b0b3    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b0b6    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b0b9    8d0450
                         shl               eax, 5                                        // 0x0079b0bc    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b0bf    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079b0c6    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b0c8    0f840e130000
                         push              0x00000497                                    // 0x0079b0ce    6897040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b0d3    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b0d8    e81357cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000180]             // 0x0079b0dd    8b8e80010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b0e3    8b4008
                         push              ecx                                           // 0x0079b0e6    51
                         push              eax                                           // 0x0079b0e7    50
                         push              ebx                                           // 0x0079b0e8    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b0e9    e862140000
                         add               esp, 0x0c                                     // 0x0079b0ee    83c40c
                         push              ebx                                           // 0x0079b0f1    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b0f2    e849f5ffff
                         add               esp, 0x04                                     // 0x0079b0f7    83c404
                         pop               edi                                           // 0x0079b0fa    5f
                         pop               esi                                           // 0x0079b0fb    5e
                         pop               ebx                                           // 0x0079b0fc    5b
                         add               esp, 0x00001408                               // 0x0079b0fd    81c408140000
                         ret                                                             // 0x0079b103    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b104    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b10a    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b10c    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b112    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b115    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b118    8d0450
                         shl               eax, 5                                        // 0x0079b11b    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b11e    8bb408640a0000
                         cmp.s             esi, edi                                      // 0x0079b125    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b127    0f84af120000
                         push              0x00000498                                    // 0x0079b12d    6898040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b132    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b137    e8b456cdff
                         {disp32} mov      ecx, dword ptr [esi + 0x00000184]             // 0x0079b13c    8b8e84010000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b142    8b4008
                         push              ecx                                           // 0x0079b145    51
                         push              eax                                           // 0x0079b146    50
                         push              ebx                                           // 0x0079b147    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b148    e803140000
                         add               esp, 0x0c                                     // 0x0079b14d    83c40c
                         push              ebx                                           // 0x0079b150    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b151    e8eaf4ffff
                         add               esp, 0x04                                     // 0x0079b156    83c404
                         pop               edi                                           // 0x0079b159    5f
                         pop               esi                                           // 0x0079b15a    5e
                         pop               ebx                                           // 0x0079b15b    5b
                         add               esp, 0x00001408                               // 0x0079b15c    81c408140000
                         ret                                                             // 0x0079b162    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b163    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b169    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b16b    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b171    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b174    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b177    8d0450
                         shl               eax, 5                                        // 0x0079b17a    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b17d    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b184    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b186    0f8450120000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079b18c    8b8860010000
                         {disp8} fld       dword ptr [ecx + 0x10]                        // 0x0079b192    d94110
                         {disp32} fadd     dword ptr [_rdata_float1p0]                   // 0x0079b195    d80590a38a00
                         {disp32} fmul     dword ptr [_rdata_float0p5]                   // 0x0079b19b    d80db4a38a00
                         {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]              // 0x0079b1a1    d80de4b68a00
                         call              _jmp_addr_0x007a1400                          // 0x0079b1a7    e854620000
                         cmp               eax, 0x04                                     // 0x0079b1ac    83f804
                         {disp8} jbe       _jmp_addr_0x0079b1b6                          // 0x0079b1af    7605
                         mov               eax, 0x00000004                               // 0x0079b1b1    b804000000
_jmp_addr_0x0079b1b6:    add               eax, 0x00000476                               // 0x0079b1b6    0576040000
                         push              eax                                           // 0x0079b1bb    50
                         mov               ecx, 0x00d17ca8                               // 0x0079b1bc    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b1c1    e82a56cdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b1c6    8b7008
                         push              0x0000049a                                    // 0x0079b1c9    689a040000
                         {disp32} jmp      _jmp_addr_0x0079ab6c                          // 0x0079b1ce    e999f9ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b1d3    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b1d9    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b1db    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b1e1    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b1e4    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b1e7    8d0450
                         shl               eax, 5                                        // 0x0079b1ea    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b1ed    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b1f4    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b1f6    0f84e0110000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079b1fc    8b8860010000
                         {disp8} fld       dword ptr [ecx + 0x4c]                        // 0x0079b202    d9414c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]              // 0x0079b205    d80de4b68a00
                         call              _jmp_addr_0x007a1400                          // 0x0079b20b    e8f0610000
                         cmp               eax, 0x04                                     // 0x0079b210    83f804
                         {disp8} jbe       _jmp_addr_0x0079b21a                          // 0x0079b213    7605
                         mov               eax, 0x00000004                               // 0x0079b215    b804000000
_jmp_addr_0x0079b21a:    add               eax, 0x0000047b                               // 0x0079b21a    057b040000
                         push              eax                                           // 0x0079b21f    50
                         mov               ecx, 0x00d17ca8                               // 0x0079b220    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b225    e8c655cdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b22a    8b7008
                         push              0x0000049b                                    // 0x0079b22d    689b040000
                         {disp32} jmp      _jmp_addr_0x0079ab6c                          // 0x0079b232    e935f9ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b237    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b23d    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b23f    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b245    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b248    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b24b    8d0450
                         shl               eax, 5                                        // 0x0079b24e    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b251    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b258    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b25a    0f847c110000
                         {disp32} mov      eax, dword ptr [eax + 0x00000370]             // 0x0079b260    8b8070030000
                         xor.s             ecx, ecx                                      // 0x0079b266    33c9
                         add               eax, 0x08                                     // 0x0079b268    83c008
_jmp_addr_0x0079b26b:    cmp               dword ptr [eax], edi                          // 0x0079b26b    3938
                         {disp8} jne       _jmp_addr_0x0079b2ad                          // 0x0079b26d    753e
                         inc               ecx                                           // 0x0079b26f    41
                         add               eax, 0x18                                     // 0x0079b270    83c018
                         cmp               ecx, 0x10                                     // 0x0079b273    83f910
                         .byte             0x72, 0xf3// {disp8} jb _jmp_addr_0x0079b26b  // 0x0079b276    72f3
                         {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079b278    8b15ac7cd100
                         cmp               edx, 0x00001a87                               // 0x0079b27e    81fa871a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079b284    a1a87cd100
                         mov.s             ecx, eax                                      // 0x0079b289    8bc8
                         {disp8} jbe       _jmp_addr_0x0079b293                          // 0x0079b28b    7606
                         {disp32} lea      ecx, dword ptr [eax + 0x00013e54]             // 0x0079b28d    8d88543e0100
_jmp_addr_0x0079b293:    cmp               edx, 0x0000049c                               // 0x0079b293    81fa9c040000
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079b299    8b4908
                         {disp8} jbe       _jmp_addr_0x0079b2a3                          // 0x0079b29c    7605
                         add               eax, 0x00003750                               // 0x0079b29e    0550370000
_jmp_addr_0x0079b2a3:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0079b2a3    8b5008
                         push              ecx                                           // 0x0079b2a6    51
                         push              edx                                           // 0x0079b2a7    52
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079b2a8    e9cef8ffff
_jmp_addr_0x0079b2ad:    {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079b2ad    8b15ac7cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00000416]             // 0x0079b2b3    8d8116040000
                         cmp.s             eax, edx                                      // 0x0079b2b9    3bc2
                         {disp8} jae       _jmp_addr_0x0079b2c1                          // 0x0079b2bb    7304
                         cmp.s             eax, edi                                      // 0x0079b2bd    3bc7
                         {disp8} ja        _jmp_addr_0x0079b2cb                          // 0x0079b2bf    770a
_jmp_addr_0x0079b2c1:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b2c1    8b0da87cd100
                         mov.s             eax, ecx                                      // 0x0079b2c7    8bc1
                         {disp8} jmp       _jmp_addr_0x0079b2d7                          // 0x0079b2c9    eb0c
_jmp_addr_0x0079b2cb:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b2cb    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0079b2d1    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079b2d4    8d0481
_jmp_addr_0x0079b2d7:    cmp               edx, 0x0000049c                               // 0x0079b2d7    81fa9c040000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b2dd    8b4008
                         {disp8} jbe       _jmp_addr_0x0079b2e8                          // 0x0079b2e0    7606
                         add               ecx, 0x00003750                               // 0x0079b2e2    81c150370000
_jmp_addr_0x0079b2e8:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079b2e8    8b4908
                         push              eax                                           // 0x0079b2eb    50
                         push              ecx                                           // 0x0079b2ec    51
                         push              ebx                                           // 0x0079b2ed    53
                         call              _jmp_addr_0x0079c650                          // 0x0079b2ee    e85d130000
                         add               esp, 0x0c                                     // 0x0079b2f3    83c40c
                         push              ebx                                           // 0x0079b2f6    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b2f7    e844f3ffff
                         add               esp, 0x04                                     // 0x0079b2fc    83c404
                         pop               edi                                           // 0x0079b2ff    5f
                         pop               esi                                           // 0x0079b300    5e
                         pop               ebx                                           // 0x0079b301    5b
                         add               esp, 0x00001408                               // 0x0079b302    81c408140000
                         ret                                                             // 0x0079b308    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b309    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b30f    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b311    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b317    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b31a    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b31d    8d0450
                         shl               eax, 5                                        // 0x0079b320    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b323    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b32a    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b32c    0f84aa100000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a3 // 0x0079b332    813dac7cd100a3040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b33c    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b34a                          // 0x0079b342    7606
                         add               ecx, 0x000037a4                               // 0x0079b344    81c1a4370000
_jmp_addr_0x0079b34a:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b34a    8b7108
                         push              0x4                                           // 0x0079b34d    6a04
                         {disp32} jmp      _jmp_addr_0x0079b4c3                          // 0x0079b34f    e96f010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b354    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b35a    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b35c    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b362    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b365    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b368    8d0450
                         shl               eax, 5                                        // 0x0079b36b    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b36e    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b375    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b377    0f845f100000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a4 // 0x0079b37d    813dac7cd100a4040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b387    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b395                          // 0x0079b38d    7606
                         add               ecx, 0x000037b0                               // 0x0079b38f    81c1b0370000
_jmp_addr_0x0079b395:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b395    8b7108
                         push              0x8                                           // 0x0079b398    6a08
                         {disp32} jmp      _jmp_addr_0x0079b4c3                          // 0x0079b39a    e924010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b39f    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b3a5    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b3a7    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b3ad    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b3b0    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b3b3    8d0450
                         shl               eax, 5                                        // 0x0079b3b6    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b3b9    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b3c0    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b3c2    0f8414100000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a5 // 0x0079b3c8    813dac7cd100a5040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b3d2    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b3e0                          // 0x0079b3d8    7606
                         add               ecx, 0x000037bc                               // 0x0079b3da    81c1bc370000
_jmp_addr_0x0079b3e0:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b3e0    8b7108
                         push              0x2                                           // 0x0079b3e3    6a02
                         {disp32} jmp      _jmp_addr_0x0079b4c3                          // 0x0079b3e5    e9d9000000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b3ea    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b3f0    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b3f2    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b3f8    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b3fb    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b3fe    8d0450
                         shl               eax, 5                                        // 0x0079b401    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b404    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b40b    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b40d    0f84c90f0000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a6 // 0x0079b413    813dac7cd100a6040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b41d    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b42b                          // 0x0079b423    7606
                         add               ecx, 0x000037c8                               // 0x0079b425    81c1c8370000
_jmp_addr_0x0079b42b:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b42b    8b7108
                         push              0x1                                           // 0x0079b42e    6a01
                         {disp32} jmp      _jmp_addr_0x0079b4c3                          // 0x0079b430    e98e000000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b435    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b43b    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b43d    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b443    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b446    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b449    8d0450
                         shl               eax, 5                                        // 0x0079b44c    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b44f    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b456    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b458    0f847e0f0000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a7 // 0x0079b45e    813dac7cd100a7040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b468    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b476                          // 0x0079b46e    7606
                         add               ecx, 0x000037d4                               // 0x0079b470    81c1d4370000
_jmp_addr_0x0079b476:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b476    8b7108
                         push              0x5                                           // 0x0079b479    6a05
                         {disp8} jmp       _jmp_addr_0x0079b4c3                          // 0x0079b47b    eb46
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b47d    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b483    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b485    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b48b    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b48e    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b491    8d0450
                         shl               eax, 5                                        // 0x0079b494    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b497    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b49e    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b4a0    0f84360f0000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004a8 // 0x0079b4a6    813dac7cd100a8040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b4b0    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b4be                          // 0x0079b4b6    7606
                         add               ecx, 0x000037e0                               // 0x0079b4b8    81c1e0370000
_jmp_addr_0x0079b4be:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079b4be    8b7108
                         push              0x3                                           // 0x0079b4c1    6a03
_jmp_addr_0x0079b4c3:    {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079b4c3    8b8864010000
                         add               ecx, 0x8                                      // 0x0079b4c9    83c108
                         call              _jmp_addr_0x004de410                          // 0x0079b4cc    e83f2fd4ff
                         push              eax                                           // 0x0079b4d1    50
                         push              esi                                           // 0x0079b4d2    56
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079b4d3    e9a3f6ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b4d8    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b4de    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b4e0    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b4e6    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b4e9    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b4ec    8d0450
                         shl               eax, 5                                        // 0x0079b4ef    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b4f2    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b4f9    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b4fb    0f84db0e0000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079b501    8b8864010000
                         {disp32} mov      edx, dword ptr [ecx + 0x00018c58]             // 0x0079b507    8b91588c0100
                         mov.s             eax, edx                                      // 0x0079b50d    8bc2
                         push              eax                                           // 0x0079b50f    50
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0079b510    89542410
                         call              _jmp_addr_0x00414730                          // 0x0079b514    e81792c7ff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079b519    8b15ac7cd100
                         add               eax, 0x0000046a                               // 0x0079b51f    056a040000
                         add               esp, 0x04                                     // 0x0079b524    83c404
                         cmp.s             eax, edx                                      // 0x0079b527    3bc2
                         {disp8} jae       _jmp_addr_0x0079b52f                          // 0x0079b529    7304
                         cmp.s             eax, edi                                      // 0x0079b52b    3bc7
                         {disp8} ja        _jmp_addr_0x0079b539                          // 0x0079b52d    770a
_jmp_addr_0x0079b52f:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b52f    8b0da87cd100
                         mov.s             eax, ecx                                      // 0x0079b535    8bc1
                         {disp8} jmp       _jmp_addr_0x0079b545                          // 0x0079b537    eb0c
_jmp_addr_0x0079b539:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b539    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0079b53f    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079b542    8d0481
_jmp_addr_0x0079b545:    cmp               edx, 0x000004a9                               // 0x0079b545    81faa9040000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b54b    8b4008
                         {disp8} jbe       _jmp_addr_0x0079b556                          // 0x0079b54e    7606
                         add               ecx, 0x000037ec                               // 0x0079b550    81c1ec370000
_jmp_addr_0x0079b556:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079b556    8b4908
                         push              eax                                           // 0x0079b559    50
                         push              ecx                                           // 0x0079b55a    51
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079b55b    e91bf6ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b560    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b566    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b568    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b56e    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b571    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b574    8d0450
                         shl               eax, 5                                        // 0x0079b577    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b57a    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b581    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b583    0f84530e0000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000160]             // 0x0079b589    8b8860010000
                         {disp8} mov       ecx, dword ptr [ecx + 0x70]                   // 0x0079b58f    8b4970
                         cmp.s             ecx, edi                                      // 0x0079b592    3bcf
                         {disp8} je        _jmp_addr_0x0079b5bc                          // 0x0079b594    7426
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079b596    8b9064010000
                         {disp32} mov      eax, dword ptr [edx + 0x00018c50]             // 0x0079b59c    8b82508c0100
                         {disp8} mov       dword ptr [esp + 0x0c], eax                   // 0x0079b5a2    8944240c
                         {disp8} mov       dword ptr [esp + 0x10], edi                   // 0x0079b5a6    897c2410
                         {disp8} fild      qword ptr [esp + 0x0c]                        // 0x0079b5aa    df6c240c
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                   // 0x0079b5ae    894c240c
                         {disp8} mov       dword ptr [esp + 0x10], edi                   // 0x0079b5b2    897c2410
                         {disp8} fidiv     dword ptr [esp + 0x0c]                        // 0x0079b5b6    da74240c
                         {disp8} jmp       _jmp_addr_0x0079b5c2                          // 0x0079b5ba    eb06
_jmp_addr_0x0079b5bc:    {disp32} fld      dword ptr [_rdata_float0p0]                   // 0x0079b5bc    d90598a38a00
_jmp_addr_0x0079b5c2:    {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]              // 0x0079b5c2    d80de4b68a00
                         call              _jmp_addr_0x007a1400                          // 0x0079b5c8    e8335e0000
                         cmp               eax, 0x04                                     // 0x0079b5cd    83f804
                         {disp8} jbe       _jmp_addr_0x0079b5d7                          // 0x0079b5d0    7605
                         mov               eax, 0x00000004                               // 0x0079b5d2    b804000000
_jmp_addr_0x0079b5d7:    {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079b5d7    8b15ac7cd100
                         add               eax, 0x00000471                               // 0x0079b5dd    0571040000
                         cmp.s             eax, edx                                      // 0x0079b5e2    3bc2
                         {disp8} jae       _jmp_addr_0x0079b5ea                          // 0x0079b5e4    7304
                         cmp.s             eax, edi                                      // 0x0079b5e6    3bc7
                         {disp8} ja        _jmp_addr_0x0079b5f4                          // 0x0079b5e8    770a
_jmp_addr_0x0079b5ea:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b5ea    8b0da87cd100
                         mov.s             eax, ecx                                      // 0x0079b5f0    8bc1
                         {disp8} jmp       _jmp_addr_0x0079b600                          // 0x0079b5f2    eb0c
_jmp_addr_0x0079b5f4:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b5f4    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0079b5fa    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079b5fd    8d0481
_jmp_addr_0x0079b600:    cmp               edx, 0x000004aa                               // 0x0079b600    81faaa040000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b606    8b4008
                         {disp8} jbe       _jmp_addr_0x0079b611                          // 0x0079b609    7606
                         add               ecx, 0x000037f8                               // 0x0079b60b    81c1f8370000
_jmp_addr_0x0079b611:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079b611    8b4908
                         push              eax                                           // 0x0079b614    50
                         push              ecx                                           // 0x0079b615    51
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079b616    e960f5ffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b61b    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b621    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b623    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b629    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b62c    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b62f    8d0450
                         shl               eax, 5                                        // 0x0079b632    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b635    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b63c    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b63e    0f84980d0000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079b644    8b8864010000
                         push              eax                                           // 0x0079b64a    50
                         add               ecx, 0x00018c80                               // 0x0079b64b    81c1808c0100
                         call              _jmp_addr_0x004c7ed0                          // 0x0079b651    e87ac8d2ff
                         cmp               eax, 0x28                                     // 0x0079b656    83f828
                         {disp32} jge      _jmp_addr_0x0079c3dc                          // 0x0079b659    0f8d7d0d0000
                         {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079b65f    8b15ac7cd100
                         cmp               edx, 0x00000248                               // 0x0079b665    81fa48020000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079b66b    a1a87cd100
                         mov.s             ecx, eax                                      // 0x0079b670    8bc8
                         {disp8} jbe       _jmp_addr_0x0079b67a                          // 0x0079b672    7606
                         {disp32} lea      ecx, dword ptr [eax + 0x00001b60]             // 0x0079b674    8d88601b0000
_jmp_addr_0x0079b67a:    cmp               edx, 0x000004ab                               // 0x0079b67a    81faab040000
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079b680    8b4908
                         {disp8} jbe       _jmp_addr_0x0079b68a                          // 0x0079b683    7605
                         add               eax, 0x00003804                               // 0x0079b685    0504380000
_jmp_addr_0x0079b68a:    push              ecx                                           // 0x0079b68a    51
                         {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0079b68b    8b4808
                         push              ecx                                           // 0x0079b68e    51
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079b68f    e9e7f4ffff
_jmp_addr_0x0079b694:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b694    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b69a    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b69c    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b6a2    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b6a5    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b6a8    8d0450
                         shl               eax, 5                                        // 0x0079b6ab    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079b6ae    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079b6b5    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b6b7    0f841f0d0000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079b6bd    8b8864010000
                         {disp32} mov      edx, dword ptr [esp + 0x00001420]             // 0x0079b6c3    8b942420140000
                         add               ecx, 0x0001a9f4                               // 0x0079b6ca    81c1f4a90100
                         push              edx                                           // 0x0079b6d0    52
                         call              _jmp_addr_0x0079cc80                          // 0x0079b6d1    e8aa150000
                         cmp.s             eax, edi                                      // 0x0079b6d6    3bc7
                         {disp8} jne       _jmp_addr_0x0079b6de                          // 0x0079b6d8    7504
                         xor.s             eax, eax                                      // 0x0079b6da    33c0
                         {disp8} jmp       _jmp_addr_0x0079b6e1                          // 0x0079b6dc    eb03
_jmp_addr_0x0079b6de:    {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x0079b6de    8b4004
_jmp_addr_0x0079b6e1:    cmp               dword ptr [data_bytes + 0x351cac], 0x000004ac // 0x0079b6e1    813dac7cd100ac040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079b6eb    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079b6f9                          // 0x0079b6f1    7606
                         add               ecx, 0x00003810                               // 0x0079b6f3    81c110380000
_jmp_addr_0x0079b6f9:    mov               edx, dword ptr [eax]                          // 0x0079b6f9    8b10
                         {disp8} mov       eax, dword ptr [ecx + 0x08]                   // 0x0079b6fb    8b4108
                         add               edx, 0x000000e0                               // 0x0079b6fe    81c2e0000000
                         push              edx                                           // 0x0079b704    52
                         {disp32} jmp      _jmp_addr_0x0079ab7a                          // 0x0079b705    e970f4ffff
_jmp_addr_0x0079b70a:    cmp               esi, 0x0000108b                               // 0x0079b70a    81fe8b100000
                         {disp32} ja       _jmp_addr_0x0079c2bb                          // 0x0079b710    0f87a50b0000
                         {disp32} je       _jmp_addr_0x0079c277                          // 0x0079b716    0f845b0b0000
                         {disp32} lea      eax, dword ptr [esi + -0x000004ad]            // 0x0079b71c    8d8653fbffff
                         cmp               eax, 0x2a                                     // 0x0079b722    83f82a
                         {disp32} ja       _jmp_addr_0x0079c2c7                          // 0x0079b725    0f879c0b0000
                         jmp               dword ptr [eax*4 + 0x79c49c]                  // 0x0079b72b    ff24859cc47900
                         push              0x000004c7                                    // 0x0079b732    68c7040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b737    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b73c    e8af50cdff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b741    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x00205a54]             // 0x0079b747    8b91545a2000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079b74d    8b4008
                         push              edx                                           // 0x0079b750    52
                         push              eax                                           // 0x0079b751    50
                         push              ebx                                           // 0x0079b752    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b753    e8f80d0000
                         add               esp, 0x0c                                     // 0x0079b758    83c40c
                         push              ebx                                           // 0x0079b75b    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b75c    e8dfeeffff
                         add               esp, 0x04                                     // 0x0079b761    83c404
                         pop               edi                                           // 0x0079b764    5f
                         pop               esi                                           // 0x0079b765    5e
                         pop               ebx                                           // 0x0079b766    5b
                         add               esp, 0x00001408                               // 0x0079b767    81c408140000
                         ret                                                             // 0x0079b76d    c3
                         push              0x000004c8                                    // 0x0079b76e    68c8040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b773    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b778    e87350cdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b77d    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b780    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b786    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b788    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b78e    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b791    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b794    8d0450
                         shl               eax, 5                                        // 0x0079b797    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079b79a    8d4c0818
                         call              _jmp_addr_0x0064b680                          // 0x0079b79e    e8ddfeeaff
                         {disp32} fmul     dword ptr [rdata_bytes + 0x241c]              // 0x0079b7a3    d80d1cb48a00
                         call              _jmp_addr_0x007a1400                          // 0x0079b7a9    e8525c0000
                         push              eax                                           // 0x0079b7ae    50
                         push              esi                                           // 0x0079b7af    56
                         push              ebx                                           // 0x0079b7b0    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b7b1    e89a0d0000
                         add               esp, 0x0c                                     // 0x0079b7b6    83c40c
                         push              ebx                                           // 0x0079b7b9    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b7ba    e881eeffff
                         add               esp, 0x04                                     // 0x0079b7bf    83c404
                         pop               edi                                           // 0x0079b7c2    5f
                         pop               esi                                           // 0x0079b7c3    5e
                         pop               ebx                                           // 0x0079b7c4    5b
                         add               esp, 0x00001408                               // 0x0079b7c5    81c408140000
                         ret                                                             // 0x0079b7cb    c3
                         push              0x000004c9                                    // 0x0079b7cc    68c9040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b7d1    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b7d6    e81550cdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b7db    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b7de    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b7e4    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b7e6    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b7ec    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b7ef    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b7f2    8d0450
                         shl               eax, 5                                        // 0x0079b7f5    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079b7f8    8d4c0818
                         call              _jmp_addr_0x0064b7c0                          // 0x0079b7fc    e8bfffeaff
                         {disp32} fmul     dword ptr [rdata_bytes + 0x241c]              // 0x0079b801    d80d1cb48a00
                         call              _jmp_addr_0x007a1400                          // 0x0079b807    e8f45b0000
                         push              eax                                           // 0x0079b80c    50
                         push              esi                                           // 0x0079b80d    56
                         push              ebx                                           // 0x0079b80e    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b80f    e83c0d0000
                         add               esp, 0x0c                                     // 0x0079b814    83c40c
                         push              ebx                                           // 0x0079b817    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b818    e823eeffff
                         add               esp, 0x04                                     // 0x0079b81d    83c404
                         pop               edi                                           // 0x0079b820    5f
                         pop               esi                                           // 0x0079b821    5e
                         pop               ebx                                           // 0x0079b822    5b
                         add               esp, 0x00001408                               // 0x0079b823    81c408140000
                         ret                                                             // 0x0079b829    c3
                         push              0x000004ca                                    // 0x0079b82a    68ca040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b82f    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b834    e8b74fcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b839    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b83c    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b842    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b844    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b84a    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b84d    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b850    8d0450
                         shl               eax, 5                                        // 0x0079b853    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079b856    8d4c0818
                         call              _jmp_addr_0x0064b760                          // 0x0079b85a    e801ffeaff
                         push              eax                                           // 0x0079b85f    50
                         push              esi                                           // 0x0079b860    56
                         push              ebx                                           // 0x0079b861    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b862    e8e90c0000
                         add               esp, 0x0c                                     // 0x0079b867    83c40c
                         push              ebx                                           // 0x0079b86a    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b86b    e8d0edffff
                         add               esp, 0x04                                     // 0x0079b870    83c404
                         pop               edi                                           // 0x0079b873    5f
                         pop               esi                                           // 0x0079b874    5e
                         pop               ebx                                           // 0x0079b875    5b
                         add               esp, 0x00001408                               // 0x0079b876    81c408140000
                         ret                                                             // 0x0079b87c    c3
                         push              0x000004cb                                    // 0x0079b87d    68cb040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b882    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b887    e8644fcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b88c    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b88f    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b895    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b897    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b89d    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b8a0    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b8a3    8d0450
                         shl               eax, 5                                        // 0x0079b8a6    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079b8a9    8d4c0818
                         call              _jmp_addr_0x0064b780                          // 0x0079b8ad    e8cefeeaff
                         push              eax                                           // 0x0079b8b2    50
                         push              esi                                           // 0x0079b8b3    56
                         push              ebx                                           // 0x0079b8b4    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b8b5    e8960c0000
                         add               esp, 0x0c                                     // 0x0079b8ba    83c40c
                         push              ebx                                           // 0x0079b8bd    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b8be    e87dedffff
                         add               esp, 0x04                                     // 0x0079b8c3    83c404
                         pop               edi                                           // 0x0079b8c6    5f
                         pop               esi                                           // 0x0079b8c7    5e
                         pop               ebx                                           // 0x0079b8c8    5b
                         add               esp, 0x00001408                               // 0x0079b8c9    81c408140000
                         ret                                                             // 0x0079b8cf    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b8d0    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b8d6    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b8d8    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b8de    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b8e1    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b8e4    8d0450
                         shl               eax, 5                                        // 0x0079b8e7    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a5c] // 0x0079b8ea    8bb4085c0a0000
                         cmp.s             esi, edi                                      // 0x0079b8f1    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b8f3    0f84e30a0000
                         push              0x000004cc                                    // 0x0079b8f9    68cc040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b8fe    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b903    e8e84ecdff
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x0079b908    8b7808
                         mov.s             ecx, esi                                      // 0x0079b90b    8bce
                         call              _jmp_addr_0x00564f60                          // 0x0079b90d    e84e96dcff
                         push              eax                                           // 0x0079b912    50
                         push              edi                                           // 0x0079b913    57
                         push              ebx                                           // 0x0079b914    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b915    e8360c0000
                         add               esp, 0x0c                                     // 0x0079b91a    83c40c
                         push              ebx                                           // 0x0079b91d    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b91e    e81dedffff
                         add               esp, 0x04                                     // 0x0079b923    83c404
                         pop               edi                                           // 0x0079b926    5f
                         pop               esi                                           // 0x0079b927    5e
                         pop               ebx                                           // 0x0079b928    5b
                         add               esp, 0x00001408                               // 0x0079b929    81c408140000
                         ret                                                             // 0x0079b92f    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b930    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b936    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b938    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b93e    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b941    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b944    8d0450
                         shl               eax, 5                                        // 0x0079b947    c1e005
                         {disp32} mov      esi, dword ptr [eax + ecx * 0x1 + 0x00000a5c] // 0x0079b94a    8bb4085c0a0000
                         cmp.s             esi, edi                                      // 0x0079b951    3bf7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079b953    0f84830a0000
                         push              0x000004cd                                    // 0x0079b959    68cd040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b95e    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b963    e8884ecdff
                         {disp8} mov       edi, dword ptr [eax + 0x08]                   // 0x0079b968    8b7808
                         mov.s             ecx, esi                                      // 0x0079b96b    8bce
                         call              _jmp_addr_0x00564fc0                          // 0x0079b96d    e84e96dcff
                         push              eax                                           // 0x0079b972    50
                         push              edi                                           // 0x0079b973    57
                         push              ebx                                           // 0x0079b974    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b975    e8d60b0000
                         add               esp, 0x0c                                     // 0x0079b97a    83c40c
                         push              ebx                                           // 0x0079b97d    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b97e    e8bdecffff
                         add               esp, 0x04                                     // 0x0079b983    83c404
                         pop               edi                                           // 0x0079b986    5f
                         pop               esi                                           // 0x0079b987    5e
                         pop               ebx                                           // 0x0079b988    5b
                         add               esp, 0x00001408                               // 0x0079b989    81c408140000
                         ret                                                             // 0x0079b98f    c3
                         push              0x000004ce                                    // 0x0079b990    68ce040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b995    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b99a    e8514ecdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b99f    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b9a2    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b9a8    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b9aa    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079b9b0    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079b9b3    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079b9b6    8d0450
                         shl               eax, 5                                        // 0x0079b9b9    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079b9bc    8d4c0818
                         call              _jmp_addr_0x0064b890                          // 0x0079b9c0    e8cbfeeaff
                         push              eax                                           // 0x0079b9c5    50
                         push              esi                                           // 0x0079b9c6    56
                         push              ebx                                           // 0x0079b9c7    53
                         call              _jmp_addr_0x0079c550                          // 0x0079b9c8    e8830b0000
                         add               esp, 0x0c                                     // 0x0079b9cd    83c40c
                         push              ebx                                           // 0x0079b9d0    53
                         call              _jmp_addr_0x0079a640                          // 0x0079b9d1    e86aecffff
                         add               esp, 0x04                                     // 0x0079b9d6    83c404
                         pop               edi                                           // 0x0079b9d9    5f
                         pop               esi                                           // 0x0079b9da    5e
                         pop               ebx                                           // 0x0079b9db    5b
                         add               esp, 0x00001408                               // 0x0079b9dc    81c408140000
                         ret                                                             // 0x0079b9e2    c3
                         push              0x000004cf                                    // 0x0079b9e3    68cf040000
                         mov               ecx, 0x00d17ca8                               // 0x0079b9e8    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079b9ed    e8fe4dcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079b9f2    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079b9f5    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079b9fb    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079b9fd    8a81595a2000
                         push              0x4                                           // 0x0079ba03    6a04
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ba05    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ba08    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ba0b    8d0450
                         shl               eax, 5                                        // 0x0079ba0e    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079ba11    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079ba15    e85600ebff
                         push              eax                                           // 0x0079ba1a    50
                         push              esi                                           // 0x0079ba1b    56
                         push              ebx                                           // 0x0079ba1c    53
                         call              _jmp_addr_0x0079c550                          // 0x0079ba1d    e82e0b0000
                         add               esp, 0x0c                                     // 0x0079ba22    83c40c
                         push              ebx                                           // 0x0079ba25    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ba26    e815ecffff
                         add               esp, 0x04                                     // 0x0079ba2b    83c404
                         pop               edi                                           // 0x0079ba2e    5f
                         pop               esi                                           // 0x0079ba2f    5e
                         pop               ebx                                           // 0x0079ba30    5b
                         add               esp, 0x00001408                               // 0x0079ba31    81c408140000
                         ret                                                             // 0x0079ba37    c3
                         push              0x000004d0                                    // 0x0079ba38    68d0040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ba3d    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079ba42    e8a94dcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ba47    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ba4a    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079ba50    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079ba52    8a81595a2000
                         push              0x5                                           // 0x0079ba58    6a05
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079ba5a    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079ba5d    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079ba60    8d0450
                         shl               eax, 5                                        // 0x0079ba63    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079ba66    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079ba6a    e80100ebff
                         push              eax                                           // 0x0079ba6f    50
                         push              esi                                           // 0x0079ba70    56
                         push              ebx                                           // 0x0079ba71    53
                         call              _jmp_addr_0x0079c550                          // 0x0079ba72    e8d90a0000
                         add               esp, 0x0c                                     // 0x0079ba77    83c40c
                         push              ebx                                           // 0x0079ba7a    53
                         call              _jmp_addr_0x0079a640                          // 0x0079ba7b    e8c0ebffff
                         add               esp, 0x04                                     // 0x0079ba80    83c404
                         pop               edi                                           // 0x0079ba83    5f
                         pop               esi                                           // 0x0079ba84    5e
                         pop               ebx                                           // 0x0079ba85    5b
                         add               esp, 0x00001408                               // 0x0079ba86    81c408140000
                         ret                                                             // 0x0079ba8c    c3
                         push              0x000004d1                                    // 0x0079ba8d    68d1040000
                         mov               ecx, 0x00d17ca8                               // 0x0079ba92    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079ba97    e8544dcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079ba9c    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079ba9f    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079baa5    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079baa7    8a81595a2000
                         push              0x3                                           // 0x0079baad    6a03
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079baaf    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bab2    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bab5    8d0450
                         shl               eax, 5                                        // 0x0079bab8    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079babb    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079babf    e8acffeaff
                         push              eax                                           // 0x0079bac4    50
                         push              esi                                           // 0x0079bac5    56
                         push              ebx                                           // 0x0079bac6    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bac7    e8840a0000
                         add               esp, 0x0c                                     // 0x0079bacc    83c40c
                         push              ebx                                           // 0x0079bacf    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bad0    e86bebffff
                         add               esp, 0x04                                     // 0x0079bad5    83c404
                         pop               edi                                           // 0x0079bad8    5f
                         pop               esi                                           // 0x0079bad9    5e
                         pop               ebx                                           // 0x0079bada    5b
                         add               esp, 0x00001408                               // 0x0079badb    81c408140000
                         ret                                                             // 0x0079bae1    c3
                         push              0x000004d2                                    // 0x0079bae2    68d2040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bae7    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079baec    e8ff4ccdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079baf1    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079baf4    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bafa    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bafc    8a81595a2000
                         push              0x1                                           // 0x0079bb02    6a01
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bb04    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bb07    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bb0a    8d0450
                         shl               eax, 5                                        // 0x0079bb0d    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bb10    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bb14    e857ffeaff
                         push              eax                                           // 0x0079bb19    50
                         push              esi                                           // 0x0079bb1a    56
                         push              ebx                                           // 0x0079bb1b    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bb1c    e82f0a0000
                         add               esp, 0x0c                                     // 0x0079bb21    83c40c
                         push              ebx                                           // 0x0079bb24    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bb25    e816ebffff
                         add               esp, 0x04                                     // 0x0079bb2a    83c404
                         pop               edi                                           // 0x0079bb2d    5f
                         pop               esi                                           // 0x0079bb2e    5e
                         pop               ebx                                           // 0x0079bb2f    5b
                         add               esp, 0x00001408                               // 0x0079bb30    81c408140000
                         ret                                                             // 0x0079bb36    c3
                         push              0x000004d3                                    // 0x0079bb37    68d3040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bb3c    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079bb41    e8aa4ccdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079bb46    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bb49    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bb4f    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bb51    8a81595a2000
                         push              0x2                                           // 0x0079bb57    6a02
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bb59    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bb5c    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bb5f    8d0450
                         shl               eax, 5                                        // 0x0079bb62    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bb65    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bb69    e802ffeaff
                         push              eax                                           // 0x0079bb6e    50
                         push              esi                                           // 0x0079bb6f    56
                         push              ebx                                           // 0x0079bb70    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bb71    e8da090000
                         add               esp, 0x0c                                     // 0x0079bb76    83c40c
                         push              ebx                                           // 0x0079bb79    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bb7a    e8c1eaffff
                         add               esp, 0x04                                     // 0x0079bb7f    83c404
                         pop               edi                                           // 0x0079bb82    5f
                         pop               esi                                           // 0x0079bb83    5e
                         pop               ebx                                           // 0x0079bb84    5b
                         add               esp, 0x00001408                               // 0x0079bb85    81c408140000
                         ret                                                             // 0x0079bb8b    c3
                         push              0x000004d4                                    // 0x0079bb8c    68d4040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bb91    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079bb96    e8554ccdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079bb9b    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bb9e    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bba4    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bba6    8a81595a2000
                         push              0x6                                           // 0x0079bbac    6a06
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bbae    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bbb1    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bbb4    8d0450
                         shl               eax, 5                                        // 0x0079bbb7    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bbba    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bbbe    e8adfeeaff
                         push              eax                                           // 0x0079bbc3    50
                         push              esi                                           // 0x0079bbc4    56
                         push              ebx                                           // 0x0079bbc5    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bbc6    e885090000
                         add               esp, 0x0c                                     // 0x0079bbcb    83c40c
                         push              ebx                                           // 0x0079bbce    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bbcf    e86ceaffff
                         add               esp, 0x04                                     // 0x0079bbd4    83c404
                         pop               edi                                           // 0x0079bbd7    5f
                         pop               esi                                           // 0x0079bbd8    5e
                         pop               ebx                                           // 0x0079bbd9    5b
                         add               esp, 0x00001408                               // 0x0079bbda    81c408140000
                         ret                                                             // 0x0079bbe0    c3
                         push              0x000004d5                                    // 0x0079bbe1    68d5040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bbe6    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079bbeb    e8004ccdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079bbf0    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bbf3    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bbf9    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bbfb    8a81595a2000
                         push              0x7                                           // 0x0079bc01    6a07
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bc03    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bc06    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bc09    8d0450
                         shl               eax, 5                                        // 0x0079bc0c    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bc0f    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bc13    e858feeaff
                         push              eax                                           // 0x0079bc18    50
                         push              esi                                           // 0x0079bc19    56
                         push              ebx                                           // 0x0079bc1a    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bc1b    e830090000
                         add               esp, 0x0c                                     // 0x0079bc20    83c40c
                         push              ebx                                           // 0x0079bc23    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bc24    e817eaffff
                         add               esp, 0x04                                     // 0x0079bc29    83c404
                         pop               edi                                           // 0x0079bc2c    5f
                         pop               esi                                           // 0x0079bc2d    5e
                         pop               ebx                                           // 0x0079bc2e    5b
                         add               esp, 0x00001408                               // 0x0079bc2f    81c408140000
                         ret                                                             // 0x0079bc35    c3
                         push              0x000004d6                                    // 0x0079bc36    68d6040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bc3b    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079bc40    e8ab4bcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079bc45    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bc48    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bc4e    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bc50    8a81595a2000
                         push              0x8                                           // 0x0079bc56    6a08
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bc58    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bc5b    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bc5e    8d0450
                         shl               eax, 5                                        // 0x0079bc61    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bc64    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bc68    e803feeaff
                         push              eax                                           // 0x0079bc6d    50
                         push              esi                                           // 0x0079bc6e    56
                         push              ebx                                           // 0x0079bc6f    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bc70    e8db080000
                         add               esp, 0x0c                                     // 0x0079bc75    83c40c
                         push              ebx                                           // 0x0079bc78    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bc79    e8c2e9ffff
                         add               esp, 0x04                                     // 0x0079bc7e    83c404
                         pop               edi                                           // 0x0079bc81    5f
                         pop               esi                                           // 0x0079bc82    5e
                         pop               ebx                                           // 0x0079bc83    5b
                         add               esp, 0x00001408                               // 0x0079bc84    81c408140000
                         ret                                                             // 0x0079bc8a    c3
                         push              0x000004d7                                    // 0x0079bc8b    68d7040000
                         mov               ecx, 0x00d17ca8                               // 0x0079bc90    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079bc95    e8564bcdff
                         {disp8} mov       esi, dword ptr [eax + 0x08]                   // 0x0079bc9a    8b7008
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bc9d    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bca3    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bca5    8a81595a2000
                         push              0x9                                           // 0x0079bcab    6a09
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bcad    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bcb0    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bcb3    8d0450
                         shl               eax, 5                                        // 0x0079bcb6    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0079bcb9    8d4c0818
                         call              _jmp_addr_0x0064ba70                          // 0x0079bcbd    e8aefdeaff
                         push              eax                                           // 0x0079bcc2    50
                         push              esi                                           // 0x0079bcc3    56
                         push              ebx                                           // 0x0079bcc4    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bcc5    e886080000
                         add               esp, 0x0c                                     // 0x0079bcca    83c40c
                         push              ebx                                           // 0x0079bccd    53
                         call              _jmp_addr_0x0079a640                          // 0x0079bcce    e86de9ffff
                         add               esp, 0x04                                     // 0x0079bcd3    83c404
                         pop               edi                                           // 0x0079bcd6    5f
                         pop               esi                                           // 0x0079bcd7    5e
                         pop               ebx                                           // 0x0079bcd8    5b
                         add               esp, 0x00001408                               // 0x0079bcd9    81c408140000
                         ret                                                             // 0x0079bcdf    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bce0    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bce6    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bce8    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bcee    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bcf1    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bcf4    8d0450
                         shl               eax, 5                                        // 0x0079bcf7    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079bcfa    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bd01    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bd03    0f84d3060000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079bd09    8b8864010000
                         {disp32} mov      edx, dword ptr [esp + 0x00001420]             // 0x0079bd0f    8b942420140000
                         add               ecx, 0x0001a9f4                               // 0x0079bd16    81c1f4a90100
                         push              edx                                           // 0x0079bd1c    52
                         call              _jmp_addr_0x0079cc80                          // 0x0079bd1d    e85e0f0000
                         cmp.s             eax, edi                                      // 0x0079bd22    3bc7
                         {disp8} jne       _jmp_addr_0x0079bd2a                          // 0x0079bd24    7504
                         xor.s             eax, eax                                      // 0x0079bd26    33c0
                         {disp8} jmp       _jmp_addr_0x0079bd2d                          // 0x0079bd28    eb03
_jmp_addr_0x0079bd2a:    {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x0079bd2a    8b4004
_jmp_addr_0x0079bd2d:    {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x0079bd2d    8b4004
                         mov.s             ecx, eax                                      // 0x0079bd30    8bc8
                         push              ecx                                           // 0x0079bd32    51
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x0079bd33    89442410
                         call              _jmp_addr_0x00414730                          // 0x0079bd37    e8f489c7ff
                         {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079bd3c    8b15ac7cd100
                         add               eax, 0x0000046a                               // 0x0079bd42    056a040000
                         add               esp, 0x04                                     // 0x0079bd47    83c404
                         cmp.s             eax, edx                                      // 0x0079bd4a    3bc2
                         {disp8} jae       _jmp_addr_0x0079bd52                          // 0x0079bd4c    7304
                         cmp.s             eax, edi                                      // 0x0079bd4e    3bc7
                         {disp8} ja        _jmp_addr_0x0079bd5c                          // 0x0079bd50    770a
_jmp_addr_0x0079bd52:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bd52    8b0da87cd100
                         mov.s             eax, ecx                                      // 0x0079bd58    8bc1
                         {disp8} jmp       _jmp_addr_0x0079bd68                          // 0x0079bd5a    eb0c
_jmp_addr_0x0079bd5c:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bd5c    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0079bd62    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079bd65    8d0481
_jmp_addr_0x0079bd68:    cmp               edx, 0x000004ad                               // 0x0079bd68    81faad040000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079bd6e    8b4008
                         {disp8} jbe       _jmp_addr_0x0079bd79                          // 0x0079bd71    7606
                         add               ecx, 0x0000381c                               // 0x0079bd73    81c11c380000
_jmp_addr_0x0079bd79:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079bd79    8b4908
                         push              eax                                           // 0x0079bd7c    50
                         push              ecx                                           // 0x0079bd7d    51
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079bd7e    e9f8edffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bd83    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bd89    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bd8b    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bd91    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bd94    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bd97    8d0450
                         shl               eax, 5                                        // 0x0079bd9a    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079bd9d    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bda4    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bda6    0f8430060000
                         {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079bdac    8b8864010000
                         {disp32} mov      edx, dword ptr [esp + 0x00001420]             // 0x0079bdb2    8b942420140000
                         add               ecx, 0x0001a9f4                               // 0x0079bdb9    81c1f4a90100
                         push              edx                                           // 0x0079bdbf    52
                         call              _jmp_addr_0x0079cc80                          // 0x0079bdc0    e8bb0e0000
                         cmp.s             eax, edi                                      // 0x0079bdc5    3bc7
                         {disp8} jne       _jmp_addr_0x0079bdcd                          // 0x0079bdc7    7504
                         xor.s             eax, eax                                      // 0x0079bdc9    33c0
                         {disp8} jmp       _jmp_addr_0x0079bdd0                          // 0x0079bdcb    eb03
_jmp_addr_0x0079bdcd:    {disp8} mov       eax, dword ptr [eax + 0x04]                   // 0x0079bdcd    8b4004
_jmp_addr_0x0079bdd0:    {disp8} fld       dword ptr [eax + 0x0c]                        // 0x0079bdd0    d9400c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x26e4]              // 0x0079bdd3    d80de4b68a00
                         call              _jmp_addr_0x007a1400                          // 0x0079bdd9    e822560000
                         cmp               eax, 0x04                                     // 0x0079bdde    83f804
                         {disp8} jbe       _jmp_addr_0x0079bde8                          // 0x0079bde1    7605
                         mov               eax, 0x00000004                               // 0x0079bde3    b804000000
_jmp_addr_0x0079bde8:    {disp32} mov      edx, dword ptr [data_bytes + 0x351cac]        // 0x0079bde8    8b15ac7cd100
                         add               eax, 0x00000471                               // 0x0079bdee    0571040000
                         cmp.s             eax, edx                                      // 0x0079bdf3    3bc2
                         {disp8} jae       _jmp_addr_0x0079bdfb                          // 0x0079bdf5    7304
                         cmp.s             eax, edi                                      // 0x0079bdf7    3bc7
                         {disp8} ja        _jmp_addr_0x0079be05                          // 0x0079bdf9    770a
_jmp_addr_0x0079bdfb:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bdfb    8b0da87cd100
                         mov.s             eax, ecx                                      // 0x0079be01    8bc1
                         {disp8} jmp       _jmp_addr_0x0079be11                          // 0x0079be03    eb0c
_jmp_addr_0x0079be05:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079be05    8b0da87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x0079be0b    8d0440
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079be0e    8d0481
_jmp_addr_0x0079be11:    cmp               edx, 0x000004ae                               // 0x0079be11    81faae040000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079be17    8b4008
                         {disp8} jbe       _jmp_addr_0x0079be22                          // 0x0079be1a    7606
                         add               ecx, 0x00003828                               // 0x0079be1c    81c128380000
_jmp_addr_0x0079be22:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079be22    8b4908
                         push              eax                                           // 0x0079be25    50
                         push              ecx                                           // 0x0079be26    51
                         {disp32} jmp      _jmp_addr_0x0079ab7b                          // 0x0079be27    e94fedffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079be2c    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079be32    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079be34    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079be3a    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079be3d    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079be40    8d0450
                         shl               eax, 5                                        // 0x0079be43    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079be46    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079be4d    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079be4f    0f8487050000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004af // 0x0079be55    813dac7cd100af040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079be5f    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079be6d                          // 0x0079be65    7606
                         add               ecx, 0x00003834                               // 0x0079be67    81c134380000
_jmp_addr_0x0079be6d:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079be6d    8b7108
                         push              edi                                           // 0x0079be70    57
_jmp_addr_0x0079be71:    {disp32} mov      ecx, dword ptr [eax + 0x00000164]             // 0x0079be71    8b8864010000
                         add               ecx, 0x00002208                               // 0x0079be77    81c108220000
                         call              _jmp_addr_0x004d8af0                          // 0x0079be7d    e86eccd3ff
                         push              eax                                           // 0x0079be82    50
                         push              esi                                           // 0x0079be83    56
                         push              ebx                                           // 0x0079be84    53
                         call              _jmp_addr_0x0079c550                          // 0x0079be85    e8c6060000
                         add               esp, 0x0c                                     // 0x0079be8a    83c40c
                         push              ebx                                           // 0x0079be8d    53
                         call              _jmp_addr_0x0079a640                          // 0x0079be8e    e8ade7ffff
                         add               esp, 0x04                                     // 0x0079be93    83c404
                         pop               edi                                           // 0x0079be96    5f
                         pop               esi                                           // 0x0079be97    5e
                         pop               ebx                                           // 0x0079be98    5b
                         add               esp, 0x00001408                               // 0x0079be99    81c408140000
                         ret                                                             // 0x0079be9f    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bea0    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bea6    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bea8    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079beae    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079beb1    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079beb4    8d0450
                         shl               eax, 5                                        // 0x0079beb7    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079beba    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bec1    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bec3    0f8413050000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b0 // 0x0079bec9    813dac7cd100b0040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bed3    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079bee1                          // 0x0079bed9    7606
                         add               ecx, 0x00003840                               // 0x0079bedb    81c140380000
_jmp_addr_0x0079bee1:    {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079bee1    8b9064010000
                         {disp32} mov      eax, dword ptr [edx + 0x0001a9f8]             // 0x0079bee7    8b82f8a90100
                         {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0079beed    8b4908
                         push              eax                                           // 0x0079bef0    50
                         push              ecx                                           // 0x0079bef1    51
                         push              ebx                                           // 0x0079bef2    53
                         call              _jmp_addr_0x0079c550                          // 0x0079bef3    e858060000
                         add               esp, 0x0c                                     // 0x0079bef8    83c40c
                         push              ebx                                           // 0x0079befb    53
                         call              _jmp_addr_0x0079a640                          // 0x0079befc    e83fe7ffff
                         add               esp, 0x04                                     // 0x0079bf01    83c404
                         pop               edi                                           // 0x0079bf04    5f
                         pop               esi                                           // 0x0079bf05    5e
                         pop               ebx                                           // 0x0079bf06    5b
                         add               esp, 0x00001408                               // 0x0079bf07    81c408140000
                         ret                                                             // 0x0079bf0d    c3
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bf0e    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bf14    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bf16    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bf1c    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bf1f    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bf22    8d0450
                         shl               eax, 5                                        // 0x0079bf25    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079bf28    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bf2f    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bf31    0f84a5040000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b1 // 0x0079bf37    813dac7cd100b1040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bf41    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079bf4f                          // 0x0079bf47    7606
                         add               ecx, 0x0000384c                               // 0x0079bf49    81c14c380000
_jmp_addr_0x0079bf4f:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079bf4f    8b7108
                         push              0x2                                           // 0x0079bf52    6a02
                         {disp32} jmp      _jmp_addr_0x0079be71                          // 0x0079bf54    e918ffffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bf59    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bf5f    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bf61    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bf67    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bf6a    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bf6d    8d0450
                         shl               eax, 5                                        // 0x0079bf70    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079bf73    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bf7a    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bf7c    0f845a040000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b2 // 0x0079bf82    813dac7cd100b2040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bf8c    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079bf9a                          // 0x0079bf92    7606
                         add               ecx, 0x00003858                               // 0x0079bf94    81c158380000
_jmp_addr_0x0079bf9a:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079bf9a    8b7108
                         push              0x16                                          // 0x0079bf9d    6a16
                         {disp32} jmp      _jmp_addr_0x0079be71                          // 0x0079bf9f    e9cdfeffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bfa4    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bfaa    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bfac    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bfb2    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079bfb5    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079bfb8    8d0450
                         shl               eax, 5                                        // 0x0079bfbb    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079bfbe    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079bfc5    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079bfc7    0f840f040000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b3 // 0x0079bfcd    813dac7cd100b3040000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079bfd7    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0079bfe5                          // 0x0079bfdd    7606
                         add               ecx, 0x00003864                               // 0x0079bfdf    81c164380000
_jmp_addr_0x0079bfe5:    {disp8} mov       esi, dword ptr [ecx + 0x08]                   // 0x0079bfe5    8b7108
                         push              0x1                                           // 0x0079bfe8    6a01
                         {disp32} jmp      _jmp_addr_0x0079be71                          // 0x0079bfea    e982feffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079bfef    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079bff5    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079bff7    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079bffd    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c000    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c003    8d0450
                         shl               eax, 5                                        // 0x0079c006    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c009    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c010    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c012    0f84c4030000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b4 // 0x0079c018    813dac7cd100b4040000
                         {disp8} ja        _jmp_addr_0x0079c03b                          // 0x0079c022    7717
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c024    8b9064010000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c02a    8b35a87cd100
                         {disp32} fld      dword ptr [edx + 0x0001aa14]                  // 0x0079c030    d98214aa0100
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c036    e910020000
_jmp_addr_0x0079c03b:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c03b    8b0da87cd100
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c041    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa14]                  // 0x0079c047    d98214aa0100
                         {disp32} lea      esi, dword ptr [ecx + 0x00003870]             // 0x0079c04d    8db170380000
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c053    e9f3010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079c058    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079c05e    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079c060    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079c066    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c069    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c06c    8d0450
                         shl               eax, 5                                        // 0x0079c06f    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c072    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c079    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c07b    0f845b030000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b5 // 0x0079c081    813dac7cd100b5040000
                         {disp8} ja        _jmp_addr_0x0079c0a4                          // 0x0079c08b    7717
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c08d    8b9064010000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c093    8b35a87cd100
                         {disp32} fld      dword ptr [edx + 0x0001aa18]                  // 0x0079c099    d98218aa0100
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c09f    e9a7010000
_jmp_addr_0x0079c0a4:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c0a4    8b0da87cd100
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c0aa    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa18]                  // 0x0079c0b0    d98218aa0100
                         {disp32} lea      esi, dword ptr [ecx + 0x0000387c]             // 0x0079c0b6    8db17c380000
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c0bc    e98a010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079c0c1    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079c0c7    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079c0c9    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079c0cf    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c0d2    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c0d5    8d0450
                         shl               eax, 5                                        // 0x0079c0d8    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c0db    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c0e2    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c0e4    0f84f2020000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b6 // 0x0079c0ea    813dac7cd100b6040000
                         {disp8} ja        _jmp_addr_0x0079c10d                          // 0x0079c0f4    7717
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c0f6    8b9064010000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c0fc    8b35a87cd100
                         {disp32} fld      dword ptr [edx + 0x0001aa1c]                  // 0x0079c102    d9821caa0100
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c108    e93e010000
_jmp_addr_0x0079c10d:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c10d    8b0da87cd100
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c113    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa1c]                  // 0x0079c119    d9821caa0100
                         {disp32} lea      esi, dword ptr [ecx + 0x00003888]             // 0x0079c11f    8db188380000
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c125    e921010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079c12a    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079c130    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079c132    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079c138    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c13b    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c13e    8d0450
                         shl               eax, 5                                        // 0x0079c141    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c144    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c14b    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c14d    0f8489020000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b7 // 0x0079c153    813dac7cd100b7040000
                         {disp8} ja        _jmp_addr_0x0079c176                          // 0x0079c15d    7717
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c15f    8b9064010000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c165    8b35a87cd100
                         {disp32} fld      dword ptr [edx + 0x0001aa20]                  // 0x0079c16b    d98220aa0100
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c171    e9d5000000
_jmp_addr_0x0079c176:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c176    8b0da87cd100
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c17c    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa20]                  // 0x0079c182    d98220aa0100
                         {disp32} lea      esi, dword ptr [ecx + 0x00003894]             // 0x0079c188    8db194380000
                         {disp32} jmp      _jmp_addr_0x0079c24b                          // 0x0079c18e    e9b8000000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079c193    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079c199    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079c19b    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079c1a1    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c1a4    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c1a7    8d0450
                         shl               eax, 5                                        // 0x0079c1aa    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c1ad    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c1b4    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c1b6    0f8420020000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b8 // 0x0079c1bc    813dac7cd100b8040000
                         {disp8} ja        _jmp_addr_0x0079c1dc                          // 0x0079c1c6    7714
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c1c8    8b9064010000
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c1ce    8b35a87cd100
                         {disp32} fld      dword ptr [edx + 0x0001aa24]                  // 0x0079c1d4    d98224aa0100
                         {disp8} jmp       _jmp_addr_0x0079c24b                          // 0x0079c1da    eb6f
_jmp_addr_0x0079c1dc:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c1dc    8b0da87cd100
                         {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c1e2    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa24]                  // 0x0079c1e8    d98224aa0100
                         {disp32} lea      esi, dword ptr [ecx + 0x000038a0]             // 0x0079c1ee    8db1a0380000
                         {disp8} jmp       _jmp_addr_0x0079c24b                          // 0x0079c1f4    eb55
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0079c1f6    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0079c1fc    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0079c1fe    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0079c204    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0079c207    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0079c20a    8d0450
                         shl               eax, 5                                        // 0x0079c20d    c1e005
                         {disp32} mov      eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0079c210    8b8408640a0000
                         cmp.s             eax, edi                                      // 0x0079c217    3bc7
                         {disp32} je       _jmp_addr_0x0079c3dc                          // 0x0079c219    0f84bd010000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x000004b9 // 0x0079c21f    813dac7cd100b9040000
                         {disp8} ja        _jmp_addr_0x0079c233                          // 0x0079c229    7708
                         {disp32} mov      esi, dword ptr [data_bytes + 0x351ca8]        // 0x0079c22b    8b35a87cd100
                         {disp8} jmp       _jmp_addr_0x0079c23f                          // 0x0079c231    eb0c
_jmp_addr_0x0079c233:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c233    8b0da87cd100
                         {disp32} lea      esi, dword ptr [ecx + 0x000038ac]             // 0x0079c239    8db1ac380000
_jmp_addr_0x0079c23f:    {disp32} mov      edx, dword ptr [eax + 0x00000164]             // 0x0079c23f    8b9064010000
                         {disp32} fld      dword ptr [edx + 0x0001aa28]                  // 0x0079c245    d98228aa0100
_jmp_addr_0x0079c24b:    {disp32} fmul     dword ptr [rdata_bytes + 0x241c]              // 0x0079c24b    d80d1cb48a00
                         call              _jmp_addr_0x007a1400                          // 0x0079c251    e8aa510000
                         push              eax                                           // 0x0079c256    50
                         {disp8} mov       eax, dword ptr [esi + 0x08]                   // 0x0079c257    8b4608
                         push              eax                                           // 0x0079c25a    50
                         push              ebx                                           // 0x0079c25b    53
                         call              _jmp_addr_0x0079c550                          // 0x0079c25c    e8ef020000
                         add               esp, 0x0c                                     // 0x0079c261    83c40c
                         push              ebx                                           // 0x0079c264    53
                         call              _jmp_addr_0x0079a640                          // 0x0079c265    e8d6e3ffff
                         add               esp, 0x04                                     // 0x0079c26a    83c404
                         pop               edi                                           // 0x0079c26d    5f
                         pop               esi                                           // 0x0079c26e    5e
                         pop               ebx                                           // 0x0079c26f    5b
                         add               esp, 0x00001408                               // 0x0079c270    81c408140000
                         ret                                                             // 0x0079c276    c3
_jmp_addr_0x0079c277:    cmp               dword ptr [data_bytes + 0x351cac], 0x0000108b // 0x0079c277    813dac7cd1008b100000
                         {disp8} ja        _jmp_addr_0x0079c28a                          // 0x0079c281    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079c283    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0079c296                          // 0x0079c288    eb0c
_jmp_addr_0x0079c28a:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c28a    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x0000c684]             // 0x0079c290    8d8184c60000
_jmp_addr_0x0079c296:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0079c296    8b5008
                         push              0x00d4bf38                                    // 0x0079c299    6838bfd400
                         push              edx                                           // 0x0079c29e    52
                         push              ebx                                           // 0x0079c29f    53
                         call              _jmp_addr_0x0079c650                          // 0x0079c2a0    e8ab030000
                         add               esp, 0x0c                                     // 0x0079c2a5    83c40c
                         push              ebx                                           // 0x0079c2a8    53
                         call              _jmp_addr_0x0079a640                          // 0x0079c2a9    e892e3ffff
                         add               esp, 0x04                                     // 0x0079c2ae    83c404
                         pop               edi                                           // 0x0079c2b1    5f
                         pop               esi                                           // 0x0079c2b2    5e
                         pop               ebx                                           // 0x0079c2b3    5b
                         add               esp, 0x00001408                               // 0x0079c2b4    81c408140000
                         ret                                                             // 0x0079c2ba    c3
_jmp_addr_0x0079c2bb:    cmp               esi, 0x000019cd                               // 0x0079c2bb    81fecd190000
                         {disp32} je       _jmp_addr_0x0079c353                          // 0x0079c2c1    0f848c000000
_jmp_addr_0x0079c2c7:    cmp               esi, dword ptr [data_bytes + 0x351cac]        // 0x0079c2c7    3b35ac7cd100
                         .byte             0x72, 0x7// {disp8} jb _jmp_addr_0x0079c2d6   // 0x0079c2cd    7207
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079c2cf    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0079c2e2                          // 0x0079c2d4    eb0c
_jmp_addr_0x0079c2d6:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0079c2d6    8b0da87cd100
                         lea               eax, dword ptr [esi + esi * 0x2]              // 0x0079c2dc    8d0476
                         lea               eax, dword ptr [ecx + eax * 0x4]              // 0x0079c2df    8d0481
_jmp_addr_0x0079c2e2:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079c2e2    8b4008
                         push              eax                                           // 0x0079c2e5    50
                         call              _wcslen                                       // 0x0079c2e6    e877a10200
                         push              ebx                                           // 0x0079c2eb    53
                         mov.s             edi, eax                                      // 0x0079c2ec    8bf8
                         call              _wcslen                                       // 0x0079c2ee    e86fa10200
                         add.s             edi, eax                                      // 0x0079c2f3    03f8
                         add               esp, 0x08                                     // 0x0079c2f5    83c408
                         cmp               edi, 0x00001b58                               // 0x0079c2f8    81ff581b0000
                         {disp32} jae      _jmp_addr_0x0079c3e5                          // 0x0079c2fe    0f83e1000000
                         cmp               esi, dword ptr [data_bytes + 0x351cac]        // 0x0079c304    3b35ac7cd100
                         .byte             0x72, 0x7// {disp8} jb _jmp_addr_0x0079c313   // 0x0079c30a    7207
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079c30c    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0079c31e                          // 0x0079c311    eb0b
_jmp_addr_0x0079c313:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0079c313    a1a87cd100
                         lea               edx, dword ptr [esi + esi * 0x2]              // 0x0079c318    8d1476
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x0079c31b    8d0490
_jmp_addr_0x0079c31e:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0079c31e    8b4808
                         push              ecx                                           // 0x0079c321    51
                         {disp32} lea      edx, dword ptr [esp + 0x00000418]             // 0x0079c322    8d942418040000
                         push              edx                                           // 0x0079c329    52
                         call              _wcscpy                                       // 0x0079c32a    e8879c0200
                         {disp32} lea      eax, dword ptr [esp + 0x0000041c]             // 0x0079c32f    8d84241c040000
                         push              ebx                                           // 0x0079c336    53
                         push              eax                                           // 0x0079c337    50
                         call              _jmp_addr_0x0079c770                          // 0x0079c338    e833040000
                         add               esp, 0x10                                     // 0x0079c33d    83c410
                         push              ebx                                           // 0x0079c340    53
                         call              _jmp_addr_0x0079a640                          // 0x0079c341    e8fae2ffff
                         add               esp, 0x04                                     // 0x0079c346    83c404
                         pop               edi                                           // 0x0079c349    5f
                         pop               esi                                           // 0x0079c34a    5e
                         pop               ebx                                           // 0x0079c34b    5b
                         add               esp, 0x00001408                               // 0x0079c34c    81c408140000
                         ret                                                             // 0x0079c352    c3
_jmp_addr_0x0079c353:    {disp32} mov      edx, dword ptr [_game]                        // 0x0079c353    8b155c19d000
                         xor.s             eax, eax                                      // 0x0079c359    33c0
                         {disp32} mov      al, byte ptr [edx + 0x00205a59]               // 0x0079c35b    8a82595a2000
                         lea               ecx, dword ptr [eax + eax * 0x4]              // 0x0079c361    8d0c80
                         lea               ecx, dword ptr [eax + ecx * 0x8]              // 0x0079c364    8d0cc8
                         lea               eax, dword ptr [eax + ecx * 0x2]              // 0x0079c367    8d0448
                         shl               eax, 5                                        // 0x0079c36a    c1e005
                         add.s             eax, edx                                      // 0x0079c36d    03c2
                         {disp8} lea       ecx, dword ptr [eax + 0x18]                   // 0x0079c36f    8d4818
                         test              ecx, ecx                                      // 0x0079c372    85c9
                         {disp8} je        _jmp_addr_0x0079c3dc                          // 0x0079c374    7466
                         cmp               dword ptr [eax + 0x00000a5c], edi             // 0x0079c376    39b85c0a0000
                         {disp8} je        _jmp_addr_0x0079c3dc                          // 0x0079c37c    745e
                         xor.s             eax, eax                                      // 0x0079c37e    33c0
                         mov               ecx, 0x00000100                               // 0x0079c380    b900010000
                         {disp8} lea       edi, dword ptr [esp + 0x14]                   // 0x0079c385    8d7c2414
                         rep stosd                                                       // 0x0079c389    f3ab
                         {disp32} mov      al, byte ptr [edx + 0x00205a59]               // 0x0079c38b    8a82595a2000
                         push              0x000019cd                                    // 0x0079c391    68cd190000
                         lea               ecx, dword ptr [eax + eax * 0x4]              // 0x0079c396    8d0c80
                         lea               ecx, dword ptr [eax + ecx * 0x8]              // 0x0079c399    8d0cc8
                         lea               eax, dword ptr [eax + ecx * 0x2]              // 0x0079c39c    8d0448
                         shl               eax, 5                                        // 0x0079c39f    c1e005
                         {disp32} mov      ecx, dword ptr [eax + edx * 0x1 + 0x00000a5c] // 0x0079c3a2    8b8c105c0a0000
                         {disp32} mov      esi, dword ptr [ecx + 0x00001124]             // 0x0079c3a9    8bb124110000
                         mov               ecx, 0x00d17ca8                               // 0x0079c3af    b9a87cd100
                         call              _jmp_addr_0x004707f0                          // 0x0079c3b4    e83744cdff
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0079c3b9    8b4008
                         push              esi                                           // 0x0079c3bc    56
                         push              eax                                           // 0x0079c3bd    50
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x0079c3be    8d54241c
                         push              0x00c2a2fc                                    // 0x0079c3c2    68fca2c200
                         push              edx                                           // 0x0079c3c7    52
                         call              dword ptr [rdata_bytes + 0x360]               // 0x0079c3c8    ff1560938a00
                         {disp8} lea       eax, dword ptr [esp + 0x24]                   // 0x0079c3ce    8d442424
                         push              ebx                                           // 0x0079c3d2    53
                         push              eax                                           // 0x0079c3d3    50
                         call              _jmp_addr_0x0079c770                          // 0x0079c3d4    e897030000
                         add               esp, 0x18                                     // 0x0079c3d9    83c418
_jmp_addr_0x0079c3dc:    push              ebx                                           // 0x0079c3dc    53
                         call              _jmp_addr_0x0079a640                          // 0x0079c3dd    e85ee2ffff
                         add               esp, 0x04                                     // 0x0079c3e2    83c404
_jmp_addr_0x0079c3e5:    pop               edi                                           // 0x0079c3e5    5f
                         pop               esi                                           // 0x0079c3e6    5e
                         pop               ebx                                           // 0x0079c3e7    5b
                         add               esp, 0x00001408                               // 0x0079c3e8    81c408140000
                         ret                                                             // 0x0079c3ee    c3

// Snippet: db, [0x0079c3ef, 0x0079c3f0)
.byte 0x90                        // 0x0079c3ef

// Snippet: jmptbl, [0x0079c3f0, 0x0079c548)
.byte 0x63, 0xa9, 0x79, 0x00      // 0x0079c3f0
.byte 0xa3, 0xa9, 0x79, 0x00      // 0x0079c3f4
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c3f8
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c3fc
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c400
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c404
.byte 0xe4, 0xa9, 0x79, 0x00      // 0x0079c408
.byte 0x43, 0xaa, 0x79, 0x00      // 0x0079c40c
.byte 0xa5, 0xaa, 0x79, 0x00      // 0x0079c410
.byte 0x13, 0xab, 0x79, 0x00      // 0x0079c414
.byte 0x97, 0xab, 0x79, 0x00      // 0x0079c418
.byte 0x0c, 0xac, 0x79, 0x00      // 0x0079c41c
.byte 0x81, 0xac, 0x79, 0x00      // 0x0079c420
.byte 0xf6, 0xac, 0x79, 0x00      // 0x0079c424
.byte 0x6b, 0xad, 0x79, 0x00      // 0x0079c428
.byte 0xe0, 0xad, 0x79, 0x00      // 0x0079c42c
.byte 0x55, 0xae, 0x79, 0x00      // 0x0079c430
.byte 0xca, 0xae, 0x79, 0x00      // 0x0079c434
.byte 0x29, 0xaf, 0x79, 0x00      // 0x0079c438
.byte 0x88, 0xaf, 0x79, 0x00      // 0x0079c43c
.byte 0xe7, 0xaf, 0x79, 0x00      // 0x0079c440
.byte 0x46, 0xb0, 0x79, 0x00      // 0x0079c444
.byte 0xa5, 0xb0, 0x79, 0x00      // 0x0079c448
.byte 0x04, 0xb1, 0x79, 0x00      // 0x0079c44c
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c450
.byte 0x63, 0xb1, 0x79, 0x00      // 0x0079c454
.byte 0xd3, 0xb1, 0x79, 0x00      // 0x0079c458
.byte 0x37, 0xb2, 0x79, 0x00      // 0x0079c45c
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c460
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c464
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c468
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c46c
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c470
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c474
.byte 0x09, 0xb3, 0x79, 0x00      // 0x0079c478
.byte 0x54, 0xb3, 0x79, 0x00      // 0x0079c47c
.byte 0x9f, 0xb3, 0x79, 0x00      // 0x0079c480
.byte 0xea, 0xb3, 0x79, 0x00      // 0x0079c484
.byte 0x35, 0xb4, 0x79, 0x00      // 0x0079c488
.byte 0x7d, 0xb4, 0x79, 0x00      // 0x0079c48c
.byte 0xd8, 0xb4, 0x79, 0x00      // 0x0079c490
.byte 0x60, 0xb5, 0x79, 0x00      // 0x0079c494
.byte 0x1b, 0xb6, 0x79, 0x00      // 0x0079c498
.byte 0xe0, 0xbc, 0x79, 0x00      // 0x0079c49c
.byte 0x83, 0xbd, 0x79, 0x00      // 0x0079c4a0
.byte 0x2c, 0xbe, 0x79, 0x00      // 0x0079c4a4
.byte 0xa0, 0xbe, 0x79, 0x00      // 0x0079c4a8
.byte 0x0e, 0xbf, 0x79, 0x00      // 0x0079c4ac
.byte 0x59, 0xbf, 0x79, 0x00      // 0x0079c4b0
.byte 0xa4, 0xbf, 0x79, 0x00      // 0x0079c4b4
.byte 0xef, 0xbf, 0x79, 0x00      // 0x0079c4b8
.byte 0x58, 0xc0, 0x79, 0x00      // 0x0079c4bc
.byte 0xc1, 0xc0, 0x79, 0x00      // 0x0079c4c0
.byte 0x2a, 0xc1, 0x79, 0x00      // 0x0079c4c4
.byte 0x93, 0xc1, 0x79, 0x00      // 0x0079c4c8
.byte 0xf6, 0xc1, 0x79, 0x00      // 0x0079c4cc
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4d0
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4d4
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4d8
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4dc
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4e0
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4e4
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4e8
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4ec
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4f0
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4f4
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4f8
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c4fc
.byte 0xc7, 0xc2, 0x79, 0x00      // 0x0079c500
.byte 0x32, 0xb7, 0x79, 0x00      // 0x0079c504
.byte 0x6e, 0xb7, 0x79, 0x00      // 0x0079c508
.byte 0xcc, 0xb7, 0x79, 0x00      // 0x0079c50c
.byte 0x2a, 0xb8, 0x79, 0x00      // 0x0079c510
.byte 0x7d, 0xb8, 0x79, 0x00      // 0x0079c514
.byte 0xd0, 0xb8, 0x79, 0x00      // 0x0079c518
.byte 0x30, 0xb9, 0x79, 0x00      // 0x0079c51c
.byte 0x90, 0xb9, 0x79, 0x00      // 0x0079c520
.byte 0xe3, 0xb9, 0x79, 0x00      // 0x0079c524
.byte 0x38, 0xba, 0x79, 0x00      // 0x0079c528
.byte 0x8d, 0xba, 0x79, 0x00      // 0x0079c52c
.byte 0xe2, 0xba, 0x79, 0x00      // 0x0079c530
.byte 0x37, 0xbb, 0x79, 0x00      // 0x0079c534
.byte 0x8c, 0xbb, 0x79, 0x00      // 0x0079c538
.byte 0xe1, 0xbb, 0x79, 0x00      // 0x0079c53c
.byte 0x36, 0xbc, 0x79, 0x00      // 0x0079c540
.byte 0x8b, 0xbc, 0x79, 0x00      // 0x0079c544

// Snippet: db, [0x0079c548, 0x0079c550)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0079c548
.byte 0x90, 0x90, 0x90, 0x90      // 0x0079c54c

