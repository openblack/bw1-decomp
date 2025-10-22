.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern _jmp_addr_0x0061cc80
.extern _jmp_addr_0x0061ccb0
.extern _jmp_addr_0x00622f20
.extern _jmp_addr_0x00622ff0
.extern _jmp_addr_0x00623200
.extern _jmp_addr_0x00623310
.extern _jmp_addr_0x00623590
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf

.globl _jmp_addr_0x0061e640
.globl _jmp_addr_0x0061e7c0
.globl _jmp_addr_0x0061e8d0
.globl _jmp_addr_0x0061ea40

start_0x0061e640_0x0061ed30:
// Snippet: asm, [0x0061e640, 0x0061ed06)
_jmp_addr_0x0061e640:    push              ebx                                           // 0x0061e640    53
                         push              esi                                           // 0x0061e641    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x0061e642    8b74240c
                         {disp32} mov      eax, dword ptr [esi + 0x00000a44]             // 0x0061e646    8b86440a0000
                         xor.s             ebx, ebx                                      // 0x0061e64c    33db
                         cmp.s             eax, ebx                                      // 0x0061e64e    3bc3
                         push              edi                                           // 0x0061e650    57
                         {disp32} je       _jmp_addr_0x0061e7ba                          // 0x0061e651    0f8463010000
                         cmp               dword ptr [esp + 0x14], 0x08                  // 0x0061e657    837c241408
                         {disp32} mov      byte ptr [esi + 0x00000150], bl               // 0x0061e65c    889e50010000
                         {disp32} jne      _jmp_addr_0x0061e7ba                          // 0x0061e662    0f8552010000
                         {disp32} mov      edi, dword ptr [esi + 0x00000144]             // 0x0061e668    8bbe44010000
                         cmp               dword ptr [esp + 0x1c], edi                   // 0x0061e66e    397c241c
                         {disp32} jne      _jmp_addr_0x0061e7ba                          // 0x0061e672    0f8542010000
                         {disp8} mov       eax, dword ptr [esp + 0x20]                   // 0x0061e678    8b442420
                         cmp               eax, 0x0d                                     // 0x0061e67c    83f80d
                         {disp32} jne      _jmp_addr_0x0061e773                          // 0x0061e67f    0f85ee000000
                         push              ebp                                           // 0x0061e685    55
                         add               edi, 0x24                                     // 0x0061e686    83c724
                         push              edi                                           // 0x0061e689    57
                         xor.s             ebp, ebp                                      // 0x0061e68a    33ed
                         call              _wcslen                                       // 0x0061e68c    e8d17d1a00
                         add               esp, 0x04                                     // 0x0061e691    83c404
                         test              eax, eax                                      // 0x0061e694    85c0
                         {disp32} jbe      _jmp_addr_0x0061e724                          // 0x0061e696    0f8688000000
                         mov               edi, 0x00000024                               // 0x0061e69c    bf24000000
_jmp_addr_0x0061e6a1:    {disp32} mov      eax, dword ptr [esi + 0x00000144]             // 0x0061e6a1    8b8644010000
                         cmp               word ptr [edi + eax * 0x1], 0x20              // 0x0061e6a7    66833c0720
                         {disp8} ja        _jmp_addr_0x0061e6c4                          // 0x0061e6ac    7716
                         add               eax, 0x24                                     // 0x0061e6ae    83c024
                         push              eax                                           // 0x0061e6b1    50
                         inc               ebp                                           // 0x0061e6b2    45
                         add               edi, 0x02                                     // 0x0061e6b3    83c702
                         call              _wcslen                                       // 0x0061e6b6    e8a77d1a00
                         add               esp, 0x04                                     // 0x0061e6bb    83c404
                         cmp.s             ebp, eax                                      // 0x0061e6be    3be8
                         .byte             0x72, 0xdf// {disp8} jb _jmp_addr_0x0061e6a1  // 0x0061e6c0    72df
                         {disp8} jmp       _jmp_addr_0x0061e724                          // 0x0061e6c2    eb60
_jmp_addr_0x0061e6c4:    {disp8} mov       eax, dword ptr [esi + 0x14]                   // 0x0061e6c4    8b4614
                         cmp               eax, 0x05                                     // 0x0061e6c7    83f805
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061e6ca    8b8e4c0a0000
                         {disp8} je        _jmp_addr_0x0061e6fc                          // 0x0061e6d0    742a
                         mov               edi, dword ptr [ecx + eax * 0x8]              // 0x0061e6d2    8b3cc1
                         cmp.s             edi, ebx                                      // 0x0061e6d5    3bfb
                         {disp8} je        _jmp_addr_0x0061e724                          // 0x0061e6d7    744b
_jmp_addr_0x0061e6d9:    {disp32} mov      edx, dword ptr [esi + 0x00000144]             // 0x0061e6d9    8b9644010000
                         mov               eax, dword ptr [edi]                          // 0x0061e6df    8b07
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061e6e1    8b8e4c0a0000
                         push              0x1                                           // 0x0061e6e7    6a01
                         add               edx, 0x24                                     // 0x0061e6e9    83c224
                         push              edx                                           // 0x0061e6ec    52
                         push              eax                                           // 0x0061e6ed    50
                         call              _jmp_addr_0x00622f20                          // 0x0061e6ee    e82d480000
                         {disp8} mov       edi, dword ptr [edi + 0x04]                   // 0x0061e6f3    8b7f04
                         cmp.s             edi, ebx                                      // 0x0061e6f6    3bfb
                         {disp8} jne       _jmp_addr_0x0061e6d9                          // 0x0061e6f8    75df
                         {disp8} jmp       _jmp_addr_0x0061e724                          // 0x0061e6fa    eb28
_jmp_addr_0x0061e6fc:    {disp32} mov      eax, dword ptr [ecx + 0x00000a58]             // 0x0061e6fc    8b81580a0000
                         cmp.s             eax, ebx                                      // 0x0061e702    3bc3
                         push              ebx                                           // 0x0061e704    53
                         {disp8} je        _jmp_addr_0x0061e714                          // 0x0061e705    740d
                         {disp32} mov      edx, dword ptr [esi + 0x00000144]             // 0x0061e707    8b9644010000
                         add               edx, 0x24                                     // 0x0061e70d    83c224
                         push              edx                                           // 0x0061e710    52
                         push              eax                                           // 0x0061e711    50
                         {disp8} jmp       _jmp_addr_0x0061e71f                          // 0x0061e712    eb0b
_jmp_addr_0x0061e714:    {disp32} mov      eax, dword ptr [esi + 0x00000144]             // 0x0061e714    8b8644010000
                         add               eax, 0x24                                     // 0x0061e71a    83c024
                         push              eax                                           // 0x0061e71d    50
                         push              ebx                                           // 0x0061e71e    53
_jmp_addr_0x0061e71f:    call              _jmp_addr_0x00622f20                          // 0x0061e71f    e8fc470000
_jmp_addr_0x0061e724:    {disp32} mov      esi, dword ptr [esi + 0x00000144]             // 0x0061e724    8bb644010000
                         push              0x000000ff                                    // 0x0061e72a    68ff000000
                         {disp8} lea       edi, dword ptr [esi + 0x24]                   // 0x0061e72f    8d7e24
                         push              0x00c4cd30                                    // 0x0061e732    6830cdc400
                         push              edi                                           // 0x0061e737    57
                         call              _wcsncpy                                      // 0x0061e738    e8e87c1a00
                         push              edi                                           // 0x0061e73d    57
                         {disp32} mov      word ptr [esi + 0x00000222], bx               // 0x0061e73e    66899e22020000
                         call              _wcslen                                       // 0x0061e745    e8187d1a00
                         add               esp, 0x10                                     // 0x0061e74a    83c410
                         pop               ebp                                           // 0x0061e74d    5d
                         {disp32} mov      dword ptr [esi + 0x00000258], ebx             // 0x0061e74e    899e58020000
                         pop               edi                                           // 0x0061e754    5f
                         {disp32} mov      dword ptr [esi + 0x0000024c], eax             // 0x0061e755    89864c020000
                         {disp32} mov      dword ptr [esi + 0x00000254], eax             // 0x0061e75b    898654020000
                         {disp32} mov      dword ptr [esi + 0x00000250], eax             // 0x0061e761    898650020000
                         pop               esi                                           // 0x0061e767    5e
                         {disp32} mov      byte ptr [data_bytes + 0x379010], 0x01        // 0x0061e768    c60510f0d30001
                         pop               ebx                                           // 0x0061e76f    5b
                         ret               0x0018                                        // 0x0061e770    c21800
_jmp_addr_0x0061e773:    cmp               eax, 0x1b                                     // 0x0061e773    83f81b
                         {disp8} jne       _jmp_addr_0x0061e7ba                          // 0x0061e776    7542
                         push              0x000000ff                                    // 0x0061e778    68ff000000
                         {disp8} lea       esi, dword ptr [edi + 0x24]                   // 0x0061e77d    8d7724
                         push              0x00c4cd30                                    // 0x0061e780    6830cdc400
                         push              esi                                           // 0x0061e785    56
                         call              _wcsncpy                                      // 0x0061e786    e89a7c1a00
                         push              esi                                           // 0x0061e78b    56
                         {disp32} mov      word ptr [edi + 0x00000222], bx               // 0x0061e78c    66899f22020000
                         call              _wcslen                                       // 0x0061e793    e8ca7c1a00
                         {disp32} mov      dword ptr [edi + 0x0000024c], eax             // 0x0061e798    89874c020000
                         {disp32} mov      dword ptr [edi + 0x00000254], eax             // 0x0061e79e    898754020000
                         {disp32} mov      dword ptr [edi + 0x00000250], eax             // 0x0061e7a4    898750020000
                         {disp32} mov      dword ptr [edi + 0x00000258], ebx             // 0x0061e7aa    899f58020000
                         add               esp, 0x10                                     // 0x0061e7b0    83c410
                         {disp32} mov      byte ptr [data_bytes + 0x379010], 0x01        // 0x0061e7b3    c60510f0d30001
_jmp_addr_0x0061e7ba:    pop               edi                                           // 0x0061e7ba    5f
                         pop               esi                                           // 0x0061e7bb    5e
                         pop               ebx                                           // 0x0061e7bc    5b
                         ret               0x0018                                        // 0x0061e7bd    c21800
_jmp_addr_0x0061e7c0:    push              ecx                                           // 0x0061e7c0    51
                         {disp8} mov       eax, dword ptr [esp + 0x18]                   // 0x0061e7c1    8b442418
                         {disp32} mov      edx, dword ptr [ecx + eax * 0x4 + 0x000009ac] // 0x0061e7c5    8b9481ac090000
                         test              edx, edx                                      // 0x0061e7cc    85d2
                         push              ebx                                           // 0x0061e7ce    53
                         push              esi                                           // 0x0061e7cf    56
                         push              edi                                           // 0x0061e7d0    57
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                   // 0x0061e7d1    894c240c
                         {disp32} je       _jmp_addr_0x0061e8c9                          // 0x0061e7d5    0f84ee000000
                         {disp8} mov       ebx, dword ptr [esp + 0x14]                   // 0x0061e7db    8b5c2414
                         {disp8} mov       ecx, dword ptr [esp + 0x18]                   // 0x0061e7df    8b4c2418
                         push              ebp                                           // 0x0061e7e3    55
                         {disp8} mov       ebp, dword ptr [esp + 0x20]                   // 0x0061e7e4    8b6c2420
                         lea               eax, dword ptr [ebx + ebp * 0x1]              // 0x0061e7e8    8d042b
                         cdq                                                             // 0x0061e7eb    99
                         sub.s             eax, edx                                      // 0x0061e7ec    2bc2
                         {disp8} mov       edx, dword ptr [esp + 0x24]                   // 0x0061e7ee    8b542424
                         mov.s             esi, eax                                      // 0x0061e7f2    8bf0
                         lea               eax, dword ptr [ecx + edx * 0x1]              // 0x0061e7f4    8d0411
                         cdq                                                             // 0x0061e7f7    99
                         sub.s             eax, edx                                      // 0x0061e7f8    2bc2
                         {disp8} mov       edx, dword ptr [esp + 0x24]                   // 0x0061e7fa    8b542424
                         mov.s             edi, eax                                      // 0x0061e7fe    8bf8
                         mov.s             eax, ebp                                      // 0x0061e800    8bc5
                         sub.s             eax, ebx                                      // 0x0061e802    2bc3
                         sub.s             edx, ecx                                      // 0x0061e804    2bd1
                         sar               esi, 1                                        // 0x0061e806    d1fe
                         sar               edi, 1                                        // 0x0061e808    d1ff
                         cmp.s             eax, edx                                      // 0x0061e80a    3bc2
                         pop               ebp                                           // 0x0061e80c    5d
                         {disp8} jl        _jmp_addr_0x0061e811                          // 0x0061e80d    7c02
                         mov.s             eax, edx                                      // 0x0061e80f    8bc2
_jmp_addr_0x0061e811:    {disp8} mov       ecx, dword ptr [esp + 0x24]                   // 0x0061e811    8b4c2424
                         add               eax, -0x0a                                    // 0x0061e815    83c0f6
                         cdq                                                             // 0x0061e818    99
                         sub.s             eax, edx                                      // 0x0061e819    2bc2
                         mov.s             ebx, eax                                      // 0x0061e81b    8bd8
                         mov.s             eax, ecx                                      // 0x0061e81d    8bc1
                         and               eax, 0x03                                     // 0x0061e81f    83e003
                         {disp8} mov       dword ptr [esp + 0x20], eax                   // 0x0061e822    89442420
                         mov.s             eax, ecx                                      // 0x0061e826    8bc1
                         {disp8} fild      dword ptr [esp + 0x20]                        // 0x0061e828    db442420
                         cdq                                                             // 0x0061e82c    99
                         and               edx, 0x03                                     // 0x0061e82d    83e203
                         add.s             eax, edx                                      // 0x0061e830    03c2
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23d4]              // 0x0061e832    d80dd4b38a00
                         sar               eax, 2                                        // 0x0061e838    c1f802
                         {disp8} mov       dword ptr [esp + 0x20], eax                   // 0x0061e83b    89442420
                         sar               ebx, 1                                        // 0x0061e83f    d1fb
                         {disp8} fstp      dword ptr [esp + 0x24]                        // 0x0061e841    d95c2424
                         or                edx, 0xffffffff                               // 0x0061e845    83caff
                         cmp               ecx, 0x05                                     // 0x0061e848    83f905
                         {disp8} fild      dword ptr [esp + 0x20]                        // 0x0061e84b    db442420
                         {disp32} fmul     dword ptr [rdata_bytes + 0x23d4]              // 0x0061e84f    d80dd4b38a00
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x0061e855    d95c2420
                         {disp8} jge       _jmp_addr_0x0061e862                          // 0x0061e859    7d07
                         {disp32} mov      edx, dword ptr [ecx * 0x4 + 0x00bf456c]       // 0x0061e85b    8b148d6c45bf00
_jmp_addr_0x0061e862:    {disp8} mov       ecx, dword ptr [esp + 0x0c]                   // 0x0061e862    8b4c240c
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a30]             // 0x0061e866    8b81300a0000
                         test              eax, eax                                      // 0x0061e86c    85c0
                         {disp8} je        _jmp_addr_0x0061e8c9                          // 0x0061e86e    7459
                         {disp8} fld       dword ptr [esp + 0x20]                        // 0x0061e870    d9442420
                         push              0x42c80000                                    // 0x0061e874    680000c842
                         {disp32} fadd     qword ptr [rdata_bytes + 0x1ebe0]             // 0x0061e879    dc05e07b8c00
                         push              0x0                                           // 0x0061e87f    6a00
                         push              0x0000a000                                    // 0x0061e881    6800a00000
                         push              0xffff6000                                    // 0x0061e886    680060ffff
                         push              0x1                                           // 0x0061e88b    6a01
                         {disp8} mov       dword ptr [esp + 0x28], edx                   // 0x0061e88d    89542428
                         {disp8} lea       edx, dword ptr [esp + 0x28]                   // 0x0061e891    8d542428
                         push              edx                                           // 0x0061e895    52
                         push              eax                                           // 0x0061e896    50
                         {disp8} mov       eax, dword ptr [esp + 0x3c]                   // 0x0061e897    8b44243c
                         push              ecx                                           // 0x0061e89b    51
                         fstp              dword ptr [esp]                               // 0x0061e89c    d91c24
                         push              ecx                                           // 0x0061e89f    51
                         {disp8} fld       dword ptr [esp + 0x48]                        // 0x0061e8a0    d9442448
                         {disp8} mov       ecx, dword ptr [esp + 0x48]                   // 0x0061e8a4    8b4c2448
                         {disp32} fadd     qword ptr [rdata_bytes + 0x1ebe0]             // 0x0061e8a8    dc05e07b8c00
                         lea               edx, dword ptr [ebx + edi * 0x1]              // 0x0061e8ae    8d143b
                         sub.s             edi, ebx                                      // 0x0061e8b1    2bfb
                         fstp              dword ptr [esp]                               // 0x0061e8b3    d91c24
                         push              eax                                           // 0x0061e8b6    50
                         push              ecx                                           // 0x0061e8b7    51
                         push              edx                                           // 0x0061e8b8    52
                         lea               eax, dword ptr [ebx + esi * 0x1]              // 0x0061e8b9    8d0433
                         push              eax                                           // 0x0061e8bc    50
                         push              edi                                           // 0x0061e8bd    57
                         sub.s             esi, ebx                                      // 0x0061e8be    2bf3
                         push              esi                                           // 0x0061e8c0    56
                         call              ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0061e8c1    e8ba40dfff
                         add               esp, 0x3c                                     // 0x0061e8c6    83c43c
_jmp_addr_0x0061e8c9:    pop               edi                                           // 0x0061e8c9    5f
                         pop               esi                                           // 0x0061e8ca    5e
                         pop               ebx                                           // 0x0061e8cb    5b
                         pop               ecx                                           // 0x0061e8cc    59
                         ret               0x0014                                        // 0x0061e8cd    c21400
_jmp_addr_0x0061e8d0:    push              esi                                           // 0x0061e8d0    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                   // 0x0061e8d1    8b742408
                         {disp32} mov      edx, dword ptr [esi + 0x00000a44]             // 0x0061e8d5    8b96440a0000
                         test              edx, edx                                      // 0x0061e8db    85d2
                         push              edi                                           // 0x0061e8dd    57
                         {disp32} je       _jmp_addr_0x0061ea32                          // 0x0061e8de    0f844e010000
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061e8e4    8b8e4c0a0000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a58]             // 0x0061e8ea    8b81580a0000
                         mov.s             edi, eax                                      // 0x0061e8f0    8bf8
                         test              edi, edi                                      // 0x0061e8f2    85ff
                         {disp8} jne       _jmp_addr_0x0061e8f8                          // 0x0061e8f4    7502
                         mov.s             edi, edx                                      // 0x0061e8f6    8bfa
_jmp_addr_0x0061e8f8:    {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x0061e8f8    8b542410
                         dec               edx                                           // 0x0061e8fc    4a
                         {disp32} je       _jmp_addr_0x0061e9da                          // 0x0061e8fd    0f84d7000000
                         sub               edx, 0x0c                                     // 0x0061e903    83ea0c
                         {disp32} jne      _jmp_addr_0x0061ea32                          // 0x0061e906    0f8526010000
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a8f // 0x0061e90c    813dac7cd1008f1a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061e916    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0061e922                          // 0x0061e91b    7605
                         add               eax, 0x00013eb4                               // 0x0061e91d    05b43e0100
_jmp_addr_0x0061e922:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0061e922    8b4808
                         {disp32} mov      edx, dword ptr [esi + 0x00000174]             // 0x0061e925    8b9674010000
                         push              ebx                                           // 0x0061e92b    53
                         push              ebp                                           // 0x0061e92c    55
                         push              edi                                           // 0x0061e92d    57
                         push              ecx                                           // 0x0061e92e    51
                         add               edx, 0x24                                     // 0x0061e92f    83c224
                         push              edx                                           // 0x0061e932    52
                         call              _swprintf                                     // 0x0061e933    e8477b1a00
                         {disp32} mov      ebp, dword ptr [esi + 0x00000a44]             // 0x0061e938    8bae440a0000
                         {disp32} mov      ecx, dword ptr [edi + 0x00000110]             // 0x0061e93e    8b8f10010000
                         {disp32} mov      eax, dword ptr [ebp + 0x00000110]             // 0x0061e944    8b8510010000
                         add               esp, 0x0c                                     // 0x0061e94a    83c40c
                         cmp.s             ecx, eax                                      // 0x0061e94d    3bc8
                         setne             bl                                            // 0x0061e94f    0f95c3
                         cmp.s             eax, ecx                                      // 0x0061e952    3bc1
                         {disp8} je        _jmp_addr_0x0061e965                          // 0x0061e954    740f
                         {disp32} mov      dl, byte ptr [esi + 0x00000a48]               // 0x0061e956    8a96480a0000
                         test              dl, dl                                        // 0x0061e95c    84d2
                         {disp8} mov       byte ptr [esp + 0x14], 0x01                   // 0x0061e95e    c644241401
                         {disp8} jne       _jmp_addr_0x0061e96a                          // 0x0061e963    7505
_jmp_addr_0x0061e965:    {disp8} mov       byte ptr [esp + 0x14], 0x00                   // 0x0061e965    c644241400
_jmp_addr_0x0061e96a:    cmp.s             eax, ecx                                      // 0x0061e96a    3bc1
                         {disp8} jne       _jmp_addr_0x0061e97c                          // 0x0061e96c    750e
                         {disp32} mov      al, byte ptr [esi + 0x00000a48]               // 0x0061e96e    8a86480a0000
                         test              al, al                                        // 0x0061e974    84c0
                         {disp8} je        _jmp_addr_0x0061e97c                          // 0x0061e976    7404
                         mov               al, 0x01                                      // 0x0061e978    b001
                         {disp8} jmp       _jmp_addr_0x0061e97e                          // 0x0061e97a    eb02
_jmp_addr_0x0061e97c:    xor.s             al, al                                        // 0x0061e97c    32c0
_jmp_addr_0x0061e97e:    test              ecx, ecx                                      // 0x0061e97e    85c9
                         {disp8} jne       _jmp_addr_0x0061e984                          // 0x0061e980    7502
                         xor.s             al, al                                        // 0x0061e982    32c0
_jmp_addr_0x0061e984:    {disp32} mov      cl, byte ptr [ebp + 0x00000100]               // 0x0061e984    8a8d00010000
                         test              cl, cl                                        // 0x0061e98a    84c9
                         {disp8} je        _jmp_addr_0x0061e990                          // 0x0061e98c    7402
                         mov               al, 0x01                                      // 0x0061e98e    b001
_jmp_addr_0x0061e990:    cmp.s             edi, ebp                                      // 0x0061e990    3bfd
                         {disp8} jne       _jmp_addr_0x0061e99c                          // 0x0061e992    7508
                         xor.s             bl, bl                                        // 0x0061e994    32db
                         {disp8} mov       byte ptr [esp + 0x14], bl                     // 0x0061e996    885c2414
                         xor.s             al, al                                        // 0x0061e99a    32c0
_jmp_addr_0x0061e99c:    {disp32} mov      ecx, dword ptr [esi + 0x00000180]             // 0x0061e99c    8b8e80010000
                         mov               edx, dword ptr [ecx]                          // 0x0061e9a2    8b11
                         test              al, al                                        // 0x0061e9a4    84c0
                         sete              al                                            // 0x0061e9a6    0f94c0
                         push              eax                                           // 0x0061e9a9    50
                         call              dword ptr [edx + 8]                           // 0x0061e9aa    ff5208
                         {disp32} mov      ecx, dword ptr [esi + 0x0000017c]             // 0x0061e9ad    8b8e7c010000
                         mov               edx, dword ptr [ecx]                          // 0x0061e9b3    8b11
                         test              bl, bl                                        // 0x0061e9b5    84db
                         sete              al                                            // 0x0061e9b7    0f94c0
                         push              eax                                           // 0x0061e9ba    50
                         call              dword ptr [edx + 8]                           // 0x0061e9bb    ff5208
                         {disp8} mov       bl, byte ptr [esp + 0x14]                     // 0x0061e9be    8a5c2414
                         {disp32} mov      ecx, dword ptr [esi + 0x00000184]             // 0x0061e9c2    8b8e84010000
                         mov               edx, dword ptr [ecx]                          // 0x0061e9c8    8b11
                         test              bl, bl                                        // 0x0061e9ca    84db
                         sete              al                                            // 0x0061e9cc    0f94c0
                         push              eax                                           // 0x0061e9cf    50
                         call              dword ptr [edx + 8]                           // 0x0061e9d0    ff5208
                         pop               ebp                                           // 0x0061e9d3    5d
                         pop               ebx                                           // 0x0061e9d4    5b
                         pop               edi                                           // 0x0061e9d5    5f
                         pop               esi                                           // 0x0061e9d6    5e
                         ret               0x0018                                        // 0x0061e9d7    c21800
_jmp_addr_0x0061e9da:    {disp8} mov       edi, dword ptr [esp + 0x18]                   // 0x0061e9da    8b7c2418
                         cmp               edi, dword ptr [esi + 0x00000180]             // 0x0061e9de    3bbe80010000
                         {disp8} jne       _jmp_addr_0x0061e9f0                          // 0x0061e9e4    750a
                         test              eax, eax                                      // 0x0061e9e6    85c0
                         {disp8} je        _jmp_addr_0x0061e9f0                          // 0x0061e9e8    7406
                         push              eax                                           // 0x0061e9ea    50
                         call              _jmp_addr_0x00623200                          // 0x0061e9eb    e810480000
_jmp_addr_0x0061e9f0:    cmp               edi, dword ptr [esi + 0x00000184]             // 0x0061e9f0    3bbe84010000
                         {disp8} jne       _jmp_addr_0x0061ea0e                          // 0x0061e9f6    7516
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061e9f8    8b8e4c0a0000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a58]             // 0x0061e9fe    8b81580a0000
                         test              eax, eax                                      // 0x0061ea04    85c0
                         {disp8} je        _jmp_addr_0x0061ea0e                          // 0x0061ea06    7406
                         push              eax                                           // 0x0061ea08    50
                         call              _jmp_addr_0x00623310                          // 0x0061ea09    e802490000
_jmp_addr_0x0061ea0e:    cmp               edi, dword ptr [esi + 0x0000017c]             // 0x0061ea0e    3bbe7c010000
                         {disp8} jne       _jmp_addr_0x0061ea32                          // 0x0061ea14    751c
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061ea16    8b8e4c0a0000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000a58]             // 0x0061ea1c    8b81580a0000
                         test              eax, eax                                      // 0x0061ea22    85c0
                         {disp8} je        _jmp_addr_0x0061ea32                          // 0x0061ea24    740c
                         {disp32} mov      edx, dword ptr [eax + 0x00000110]             // 0x0061ea26    8b9010010000
                         push              edx                                           // 0x0061ea2c    52
                         call              _jmp_addr_0x00622ff0                          // 0x0061ea2d    e8be450000
_jmp_addr_0x0061ea32:    pop               edi                                           // 0x0061ea32    5f
                         pop               esi                                           // 0x0061ea33    5e
                         ret               0x0018                                        // 0x0061ea34    c21800
                         nop                                                             // 0x0061ea37    90
                         nop                                                             // 0x0061ea38    90
                         nop                                                             // 0x0061ea39    90
                         nop                                                             // 0x0061ea3a    90
                         nop                                                             // 0x0061ea3b    90
                         nop                                                             // 0x0061ea3c    90
                         nop                                                             // 0x0061ea3d    90
                         nop                                                             // 0x0061ea3e    90
                         nop                                                             // 0x0061ea3f    90
_jmp_addr_0x0061ea40:    push              ebx                                           // 0x0061ea40    53
                         push              ebp                                           // 0x0061ea41    55
                         push              esi                                           // 0x0061ea42    56
                         {disp8} mov       esi, dword ptr [esp + 0x10]                   // 0x0061ea43    8b742410
                         {disp32} mov      eax, dword ptr [esi + 0x00000a44]             // 0x0061ea47    8b86440a0000
                         test              eax, eax                                      // 0x0061ea4d    85c0
                         push              edi                                           // 0x0061ea4f    57
                         {disp32} je       _jmp_addr_0x0061ecff                          // 0x0061ea50    0f84a9020000
                         {disp8} mov       edx, dword ptr [esp + 0x18]                   // 0x0061ea56    8b542418
                         {disp32} mov      ecx, dword ptr [esi + 0x00000a4c]             // 0x0061ea5a    8b8e4c0a0000
                         {disp32} mov      ebp, dword ptr [ecx + 0x00000a58]             // 0x0061ea60    8ba9580a0000
                         {disp8} lea       eax, dword ptr [edx + -0x01]                  // 0x0061ea66    8d42ff
                         cmp               eax, 0x0d                                     // 0x0061ea69    83f80d
                         {disp32} ja       _jmp_addr_0x0061ecff                          // 0x0061ea6c    0f878d020000
                         {disp8} mov       edi, dword ptr [esp + 0x20]                   // 0x0061ea72    8b7c2420
                         xor.s             ebx, ebx                                      // 0x0061ea76    33db
                         {disp32} mov      bl, byte ptr [eax + 0x0061ed1c]               // 0x0061ea78    8a981ced6100
                         jmp               dword ptr [ebx*4 + 0x61ed08]                  // 0x0061ea7e    ff249d08ed6100
                         cmp               edi, dword ptr [esi + 0x00000168]             // 0x0061ea85    3bbe68010000
                         {disp8} jne       _jmp_addr_0x0061eaa7                          // 0x0061ea8b    751a
                         {disp32} mov      eax, dword ptr [esi + 0x00000170]             // 0x0061ea8d    8b8670010000
                         push              eax                                           // 0x0061ea93    50
                         call              _jmp_addr_0x00623590                          // 0x0061ea94    e8f74a0000
                         mov.s             ecx, esi                                      // 0x0061ea99    8bce
                         call              _jmp_addr_0x0061cc80                          // 0x0061ea9b    e8e0e1ffff
                         pop               edi                                           // 0x0061eaa0    5f
                         pop               esi                                           // 0x0061eaa1    5e
                         pop               ebp                                           // 0x0061eaa2    5d
                         pop               ebx                                           // 0x0061eaa3    5b
                         ret               0x0018                                        // 0x0061eaa4    c21800
_jmp_addr_0x0061eaa7:    cmp               edi, dword ptr [esi + 0x0000016c]             // 0x0061eaa7    3bbe6c010000
                         {disp8} jne       _jmp_addr_0x0061eac4                          // 0x0061eaad    7515
                         push              0x0                                           // 0x0061eaaf    6a00
                         call              _jmp_addr_0x00623590                          // 0x0061eab1    e8da4a0000
                         mov.s             ecx, esi                                      // 0x0061eab6    8bce
                         call              _jmp_addr_0x0061cc80                          // 0x0061eab8    e8c3e1ffff
                         pop               edi                                           // 0x0061eabd    5f
                         pop               esi                                           // 0x0061eabe    5e
                         pop               ebp                                           // 0x0061eabf    5d
                         pop               ebx                                           // 0x0061eac0    5b
                         ret               0x0018                                        // 0x0061eac1    c21800
_jmp_addr_0x0061eac4:    {disp32} mov      ecx, dword ptr [esi + 0x00000160]             // 0x0061eac4    8b8e60010000
                         cmp.s             edi, ecx                                      // 0x0061eaca    3bf9
                         {disp32} jne      _jmp_addr_0x0061ecff                          // 0x0061eacc    0f852d020000
                         {disp32} mov      al, byte ptr [ecx + 0x00000285]               // 0x0061ead2    8a8185020000
                         test              al, al                                        // 0x0061ead8    84c0
                         {disp8} je        _jmp_addr_0x0061eae5                          // 0x0061eada    7409
                         cmp               edx, 0x04                                     // 0x0061eadc    83fa04
                         {disp32} je       _jmp_addr_0x0061ecff                          // 0x0061eadf    0f841a020000
_jmp_addr_0x0061eae5:    {disp32} mov      edx, dword ptr [esi + 0x00000170]             // 0x0061eae5    8b9670010000
                         {disp32} mov      dword ptr [esi + 0x00000170], 0x00000000      // 0x0061eaeb    c7867001000000000000
                         {disp32} mov      eax, dword ptr [ecx + 0x00000248]             // 0x0061eaf5    8b8148020000
                         test              eax, eax                                      // 0x0061eafb    85c0
                         {disp8} jl        _jmp_addr_0x0061eb1a                          // 0x0061eafd    7c1b
                         cmp               eax, dword ptr [ecx + 0x00000250]             // 0x0061eaff    3b8150020000
                         {disp8} jge       _jmp_addr_0x0061eb12                          // 0x0061eb05    7d0b
                         {disp32} mov      ecx, dword ptr [ecx + 0x00000264]             // 0x0061eb07    8b8964020000
                         mov               eax, dword ptr [ecx + eax * 0x4]              // 0x0061eb0d    8b0481
                         {disp8} jmp       _jmp_addr_0x0061eb14                          // 0x0061eb10    eb02
_jmp_addr_0x0061eb12:    xor.s             eax, eax                                      // 0x0061eb12    33c0
_jmp_addr_0x0061eb14:    {disp32} mov      dword ptr [esi + 0x00000170], eax             // 0x0061eb14    898670010000
_jmp_addr_0x0061eb1a:    cmp               edx, dword ptr [esi + 0x00000170]             // 0x0061eb1a    3b9670010000
                         {disp32} je       _jmp_addr_0x0061ecff                          // 0x0061eb20    0f84d9010000
                         mov.s             ecx, esi                                      // 0x0061eb26    8bce
                         call              _jmp_addr_0x0061ccb0                          // 0x0061eb28    e883e1ffff
                         pop               edi                                           // 0x0061eb2d    5f
                         pop               esi                                           // 0x0061eb2e    5e
                         pop               ebp                                           // 0x0061eb2f    5d
                         pop               ebx                                           // 0x0061eb30    5b
                         ret               0x0018                                        // 0x0061eb31    c21800
                         {disp32} mov      edx, dword ptr [esi + 0x0000015c]             // 0x0061eb34    8b965c010000
                         xor.s             ebx, ebx                                      // 0x0061eb3a    33db
                         cmp.s             ebp, ebx                                      // 0x0061eb3c    3beb
                         {disp8} mov       word ptr [edx + 0x24], bx                     // 0x0061eb3e    66895a24
                         {disp32} mov      eax, dword ptr [esi + 0x00000158]             // 0x0061eb42    8b8658010000
                         {disp8} mov       word ptr [eax + 0x24], bx                     // 0x0061eb48    66895824
                         {disp32} je       _jmp_addr_0x0061ec59                          // 0x0061eb4c    0f8407010000
                         {disp32} mov      eax, dword ptr [ebp + 0x00000110]             // 0x0061eb52    8b8510010000
                         {disp32} mov      edx, dword ptr [esi + 0x00000a4c]             // 0x0061eb58    8b964c0a0000
                         mov.s             ecx, eax                                      // 0x0061eb5e    8bc8
                         shl               ecx, 6                                        // 0x0061eb60    c1e106
                         add.s             ecx, eax                                      // 0x0061eb63    03c8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0061eb65    a1ac7cd100
                         {disp32} mov      edi, dword ptr [edx + ecx * 0x8 + 0x00000228] // 0x0061eb6a    8bbcca28020000
                         cmp               eax, 0x00001a29                               // 0x0061eb71    3d291a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061eb76    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0061eb82                          // 0x0061eb7b    7605
                         add               eax, 0x000139ec                               // 0x0061eb7d    05ec390100
_jmp_addr_0x0061eb82:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0061eb82    8b4808
                         {disp32} mov      edx, dword ptr [esi + 0x00000158]             // 0x0061eb85    8b9658010000
                         push              ebp                                           // 0x0061eb8b    55
                         push              ecx                                           // 0x0061eb8c    51
                         add               edx, 0x24                                     // 0x0061eb8d    83c224
                         push              edx                                           // 0x0061eb90    52
                         call              _swprintf                                     // 0x0061eb91    e8e9781a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0061eb96    a1ac7cd100
                         add               esp, 0x0c                                     // 0x0061eb9b    83c40c
                         cmp               eax, 0x00001a40                               // 0x0061eb9e    3d401a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0061eba3    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0061ebaf                          // 0x0061eba8    7605
                         add               eax, 0x00013b00                               // 0x0061ebaa    05003b0100
_jmp_addr_0x0061ebaf:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0061ebaf    8b4808
                         {disp32} mov      edx, dword ptr [esi + 0x0000015c]             // 0x0061ebb2    8b965c010000
                         push              ecx                                           // 0x0061ebb8    51
                         add               edx, 0x24                                     // 0x0061ebb9    83c224
                         push              edx                                           // 0x0061ebbc    52
                         call              _wcscpy                                       // 0x0061ebbd    e8f4731a00
                         {disp32} mov      eax, dword ptr [esi + 0x00000170]             // 0x0061ebc2    8b8670010000
                         add               esp, 0x08                                     // 0x0061ebc8    83c408
                         cmp.s             eax, ebx                                      // 0x0061ebcb    3bc3
                         {disp8} je        _jmp_addr_0x0061ec01                          // 0x0061ebcd    7432
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a3e // 0x0061ebcf    813dac7cd1003e1a0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0061ebd9    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0061ebe7                          // 0x0061ebdf    7606
                         add               ecx, 0x00013ae8                               // 0x0061ebe1    81c1e83a0100
_jmp_addr_0x0061ebe7:    {disp8} mov       edx, dword ptr [ecx + 0x08]                   // 0x0061ebe7    8b5108
                         add               eax, 0x08                                     // 0x0061ebea    83c008
                         push              eax                                           // 0x0061ebed    50
                         {disp32} mov      eax, dword ptr [esi + 0x0000015c]             // 0x0061ebee    8b865c010000
                         push              edx                                           // 0x0061ebf4    52
                         add               eax, 0x24                                     // 0x0061ebf5    83c024
                         push              eax                                           // 0x0061ebf8    50
                         call              _swprintf                                     // 0x0061ebf9    e881781a00
                         add               esp, 0x0c                                     // 0x0061ebfe    83c40c
_jmp_addr_0x0061ec01:    {disp32} mov      eax, dword ptr [esi + 0x00000160]             // 0x0061ec01    8b8660010000
                         cmp               dword ptr [eax + 0x00000248], ebx             // 0x0061ec07    399848020000
                         {disp8} jge       _jmp_addr_0x0061ec17                          // 0x0061ec0d    7d08
                         cmp               byte ptr [eax + 0x00000285], bl               // 0x0061ec0f    389885020000
                         {disp8} je        _jmp_addr_0x0061ec46                          // 0x0061ec15    742f
_jmp_addr_0x0061ec17:    cmp               byte ptr [esi + 0x00000a48], bl               // 0x0061ec17    389e480a0000
                         {disp8} je        _jmp_addr_0x0061ec46                          // 0x0061ec1d    7427
                         {disp32} mov      eax, dword ptr [esi + 0x00000170]             // 0x0061ec1f    8b8670010000
                         cmp.s             eax, ebx                                      // 0x0061ec25    3bc3
                         {disp8} je        _jmp_addr_0x0061ec46                          // 0x0061ec27    741d
                         cmp               dword ptr [eax + 0x04], edi                   // 0x0061ec29    397804
                         {disp8} je        _jmp_addr_0x0061ec46                          // 0x0061ec2c    7418
                         cmp               ebp, dword ptr [esi + 0x00000a44]             // 0x0061ec2e    3bae440a0000
                         {disp8} jne       _jmp_addr_0x0061ec46                          // 0x0061ec34    7510
                         {disp32} mov      ecx, dword ptr [esi + 0x00000168]             // 0x0061ec36    8b8e68010000
                         mov               edx, dword ptr [ecx]                          // 0x0061ec3c    8b11
                         xor.s             eax, eax                                      // 0x0061ec3e    33c0
                         push              eax                                           // 0x0061ec40    50
                         call              dword ptr [edx + 8]                           // 0x0061ec41    ff5208
                         {disp8} jmp       _jmp_addr_0x0061ec66                          // 0x0061ec44    eb20
_jmp_addr_0x0061ec46:    {disp32} mov      ecx, dword ptr [esi + 0x00000168]             // 0x0061ec46    8b8e68010000
                         mov               edx, dword ptr [ecx]                          // 0x0061ec4c    8b11
                         mov               eax, 0x00000001                               // 0x0061ec4e    b801000000
                         push              eax                                           // 0x0061ec53    50
                         call              dword ptr [edx + 8]                           // 0x0061ec54    ff5208
                         {disp8} jmp       _jmp_addr_0x0061ec66                          // 0x0061ec57    eb0d
_jmp_addr_0x0061ec59:    {disp32} mov      ecx, dword ptr [esi + 0x00000168]             // 0x0061ec59    8b8e68010000
                         mov               eax, dword ptr [ecx]                          // 0x0061ec5f    8b01
                         push              0x1                                           // 0x0061ec61    6a01
                         call              dword ptr [eax + 8]                           // 0x0061ec63    ff5008
_jmp_addr_0x0061ec66:    {disp32} mov      ecx, dword ptr [esi + 0x0000016c]             // 0x0061ec66    8b8e6c010000
                         mov               edx, dword ptr [ecx]                          // 0x0061ec6c    8b11
                         push              0x1                                           // 0x0061ec6e    6a01
                         call              dword ptr [edx + 8]                           // 0x0061ec70    ff5208
                         {disp32} mov      eax, dword ptr [esi + 0x00000168]             // 0x0061ec73    8b8668010000
                         cmp               byte ptr [eax + 0x00000229], bl               // 0x0061ec79    389829020000
                         {disp8} je        _jmp_addr_0x0061ecff                          // 0x0061ec7f    747e
                         cmp.s             ebp, ebx                                      // 0x0061ec81    3beb
                         {disp8} je        _jmp_addr_0x0061ecff                          // 0x0061ec83    747a
                         cmp               byte ptr [esi + 0x00000a48], bl               // 0x0061ec85    389e480a0000
                         {disp8} je        _jmp_addr_0x0061ecff                          // 0x0061ec8b    7472
                         {disp32} mov      eax, dword ptr [ebp + 0x00000110]             // 0x0061ec8d    8b8510010000
                         {disp32} mov      edx, dword ptr [esi + 0x00000a4c]             // 0x0061ec93    8b964c0a0000
                         mov.s             ecx, eax                                      // 0x0061ec99    8bc8
                         shl               ecx, 6                                        // 0x0061ec9b    c1e106
                         add.s             ecx, eax                                      // 0x0061ec9e    03c8
                         cmp               dword ptr [edx + ecx * 0x8 + 0x00000228], ebx // 0x0061eca0    399cca28020000
                         {disp8} je        _jmp_addr_0x0061ecff                          // 0x0061eca7    7456
                         cmp               ebp, dword ptr [esi + 0x00000a44]             // 0x0061eca9    3bae440a0000
                         {disp8} jne       _jmp_addr_0x0061ecff                          // 0x0061ecaf    754e
                         {disp32} mov      ecx, dword ptr [esi + 0x0000016c]             // 0x0061ecb1    8b8e6c010000
                         mov               eax, dword ptr [ecx]                          // 0x0061ecb7    8b01
                         push              ebx                                           // 0x0061ecb9    53
                         call              dword ptr [eax + 8]                           // 0x0061ecba    ff5008
                         pop               edi                                           // 0x0061ecbd    5f
                         pop               esi                                           // 0x0061ecbe    5e
                         pop               ebp                                           // 0x0061ecbf    5d
                         pop               ebx                                           // 0x0061ecc0    5b
                         ret               0x0018                                        // 0x0061ecc1    c21800
                         {disp32} mov      edi, dword ptr [data_bytes + 0x2078]          // 0x0061ecc4    8b3d78809c00
                         mov.s             eax, edi                                      // 0x0061ecca    8bc7
                         cdq                                                             // 0x0061eccc    99
                         and               edx, 0x03                                     // 0x0061eccd    83e203
                         add.s             eax, edx                                      // 0x0061ecd0    03c2
                         sar               eax, 2                                        // 0x0061ecd2    c1f802
                         {disp32} mov      dword ptr [data_bytes + 0x2078], eax          // 0x0061ecd5    a378809c00
                         {disp32} mov      eax, dword ptr [esi + 0x00000164]             // 0x0061ecda    8b8664010000
                         {disp8} mov       ecx, dword ptr [eax + 0x14]                   // 0x0061ece0    8b4814
                         {disp8} mov       edx, dword ptr [eax + 0x10]                   // 0x0061ece3    8b5010
                         push              0x5                                           // 0x0061ece6    6a05
                         push              ecx                                           // 0x0061ece8    51
                         {disp8} mov       ecx, dword ptr [eax + 0x0c]                   // 0x0061ece9    8b480c
                         push              edx                                           // 0x0061ecec    52
                         {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0061eced    8b5008
                         push              ecx                                           // 0x0061ecf0    51
                         push              edx                                           // 0x0061ecf1    52
                         mov.s             ecx, esi                                      // 0x0061ecf2    8bce
                         call              _jmp_addr_0x0061e7c0                          // 0x0061ecf4    e8c7faffff
                         {disp32} mov      dword ptr [data_bytes + 0x2078], edi          // 0x0061ecf9    893d78809c00
_jmp_addr_0x0061ecff:    pop               edi                                           // 0x0061ecff    5f
                         pop               esi                                           // 0x0061ed00    5e
                         pop               ebp                                           // 0x0061ed01    5d
                         pop               ebx                                           // 0x0061ed02    5b
                         ret               0x0018                                        // 0x0061ed03    c21800

// Snippet: db, [0x0061ed06, 0x0061ed08)
.byte 0x8b, 0xff                  // 0x0061ed06

// Snippet: jmptbl, [0x0061ed08, 0x0061ed1c)
.byte 0x85, 0xea, 0x61, 0x00      // 0x0061ed08
.byte 0xc4, 0xea, 0x61, 0x00      // 0x0061ed0c
.byte 0x34, 0xeb, 0x61, 0x00      // 0x0061ed10
.byte 0xc4, 0xec, 0x61, 0x00      // 0x0061ed14
.byte 0xff, 0xec, 0x61, 0x00      // 0x0061ed18

// Snippet: ijmptbl, [0x0061ed1c, 0x0061ed2a)
.byte 0x00, 0x04, 0x04, 0x01      // 0x0061ed1c
.byte 0x04, 0x04, 0x04, 0x04      // 0x0061ed20
.byte 0x04, 0x04, 0x04, 0x04      // 0x0061ed24
.byte 0x02, 0x03                  // 0x0061ed28

// Snippet: db, [0x0061ed2a, 0x0061ed30)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0061ed2a
.byte 0x90, 0x90                  // 0x0061ed2e

