.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern _jmp_addr_0x00481390
.extern _jmp_addr_0x0048b970
.extern _jmp_addr_0x0048d250
.extern _jmp_addr_0x004ec450
.extern _jmp_addr_0x004ec4b0
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z
.extern _jmp_addr_0x005df310
.extern _jmp_addr_0x00617a10
.extern ?MorphAnims@Morphable@@UAEXXZ
.extern ?MorphTexture@Morphable@@UAEXXZ
.extern @GetAnim__9MorphableFll@16
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0064a9f0
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x008465a0
.extern _jmp_addr_0x00866d00
.extern _jmp_addr_0x00867040
.extern _jmp_addr_0x00867400

.globl _jmp_addr_0x0048d520
.globl _jmp_addr_0x0048d750
.globl _jmp_addr_0x0048d7b0
.globl _jmp_addr_0x0048d8e0
.globl _jmp_addr_0x0048d930
.globl _jmp_addr_0x0048d940
.globl _jmp_addr_0x0048dab0
.globl _jmp_addr_0x0048dc70
.globl _jmp_addr_0x0048dd70

start_0x0048d520_0x0048e1c0:
// Snippet: asm, [0x0048d520, 0x0048e1b0)
_jmp_addr_0x0048d520:    {disp32} mov       eax, dword ptr [ecx + 0x00004994]             // 0x0048d520    8b8194490000
                         test               eax, eax                                      // 0x0048d526    85c0
                         {disp8} jne        _jmp_addr_0x0048d52f                          // 0x0048d528    7505
                         {disp32} jmp       _jmp_addr_0x0048d250                          // 0x0048d52a    e921fdffff
_jmp_addr_0x0048d52f:    cmp                eax, 0x23                                     // 0x0048d52f    83f823
                         {disp8} jne        _jmp_addr_0x0048d539                          // 0x0048d532    7505
                         {disp32} jmp       _jmp_addr_0x0048b970                          // 0x0048d534    e937e4ffff
_jmp_addr_0x0048d539:    ret                                                              // 0x0048d539    c3
                         call               dword ptr [__imp__MoveWindow@4]               // 0x0048d53a    ff1550988a00
                         push               ecx                                           // 0x0048d540    51
                         push               ebx                                           // 0x0048d541    53
                         push               ebp                                           // 0x0048d542    55
                         push               esi                                           // 0x0048d543    56
                         push               edi                                           // 0x0048d544    57
                         mov.s              esi, ecx                                      // 0x0048d545    8bf1
                         call               ?MorphTexture@Morphable@@UAEXXZ               // 0x0048d547    e8b4bf1800
                         {disp32} mov       ecx, dword ptr [esi + 0x00004834]             // 0x0048d54c    8b8e34480000
                         test               ecx, ecx                                      // 0x0048d552    85c9
                         {disp8} je         _jmp_addr_0x0048d56c                          // 0x0048d554    7416
                         mov                eax, dword ptr [ecx]                          // 0x0048d556    8b01
                         call               dword ptr [eax + 0x1c]                        // 0x0048d558    ff501c
                         mov.s              ebx, eax                                      // 0x0048d55b    8bd8
                         test               ebx, ebx                                      // 0x0048d55d    85db
                         {disp8} je         _jmp_addr_0x0048d56e                          // 0x0048d55f    740d
                         mov.s              ecx, ebx                                      // 0x0048d561    8bcb
                         call               ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0048d563    e828d21b00
                         mov.s              ebp, eax                                      // 0x0048d568    8be8
                         {disp8} jmp        _jmp_addr_0x0048d57e                          // 0x0048d56a    eb12
_jmp_addr_0x0048d56c:    xor.s              ebx, ebx                                      // 0x0048d56c    33db
_jmp_addr_0x0048d56e:    {disp32} mov       edx, dword ptr [_game]                        // 0x0048d56e    8b155c19d000
                         xor.s              ecx, ecx                                      // 0x0048d574    33c9
                         {disp32} mov       cl, byte ptr [edx + 0x00205a59]               // 0x0048d576    8a8a595a2000
                         mov.s              ebp, ecx                                      // 0x0048d57c    8be9
_jmp_addr_0x0048d57e:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0048d57e    8b0d5c19d000
                         push               ebp                                           // 0x0048d584    55
                         call               ?GetPlayer@GGame@@QAEPAVGPlayer@@K@Z          // 0x0048d585    e826340c00
                         mov.s              ecx, eax                                      // 0x0048d58a    8bc8
                         call               _jmp_addr_0x0064a9f0                          // 0x0048d58c    e85fd41b00
                         test               eax, eax                                      // 0x0048d591    85c0
                         {disp32} je        _jmp_addr_0x0048d697                          // 0x0048d593    0f84fe000000
                         {disp32} mov       eax, dword ptr [esi + 0x00004834]             // 0x0048d599    8b8634480000
                         test               eax, eax                                      // 0x0048d59f    85c0
                         {disp8} je         _jmp_addr_0x0048d5ab                          // 0x0048d5a1    7408
                         {disp32} lea       edi, dword ptr [eax + 0x00001170]             // 0x0048d5a3    8db870110000
                         {disp8} jmp        _jmp_addr_0x0048d5ad                          // 0x0048d5a9    eb02
_jmp_addr_0x0048d5ab:    xor.s              edi, edi                                      // 0x0048d5ab    33ff
_jmp_addr_0x0048d5ad:    {disp32} mov       eax, dword ptr [esi + 0x00004a94]             // 0x0048d5ad    8b86944a0000
                         test               eax, eax                                      // 0x0048d5b3    85c0
                         {disp8} je         _jmp_addr_0x0048d5bb                          // 0x0048d5b5    7404
                         mov.s              edi, eax                                      // 0x0048d5b7    8bf8
                         {disp8} jmp        _jmp_addr_0x0048d5f7                          // 0x0048d5b9    eb3c
_jmp_addr_0x0048d5bb:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0048d5bb    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0048d5c1    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0048d5c3    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0048d5c9    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0048d5cc    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0048d5cf    8d0450
                         shl                eax, 5                                        // 0x0048d5d2    c1e005
                         add.s              eax, ecx                                      // 0x0048d5d5    03c1
                         {disp8} lea        edx, dword ptr [eax + 0x18]                   // 0x0048d5d7    8d5018
                         cmp.s              ebx, edx                                      // 0x0048d5da    3bda
                         {disp8} je         _jmp_addr_0x0048d5e7                          // 0x0048d5dc    7409
                         cmp                dword ptr [ecx + 0x00205a28], 0x01            // 0x0048d5de    83b9285a200001
                         {disp8} jne        _jmp_addr_0x0048d5f7                          // 0x0048d5e5    7510
_jmp_addr_0x0048d5e7:    {disp32} mov       eax, dword ptr [eax + 0x00000a64]             // 0x0048d5e7    8b80640a0000
                         test               eax, eax                                      // 0x0048d5ed    85c0
                         {disp8} je         _jmp_addr_0x0048d5f7                          // 0x0048d5ef    7406
                         {disp32} lea       edi, dword ptr [eax + 0x00001170]             // 0x0048d5f1    8db870110000
_jmp_addr_0x0048d5f7:    test               edi, edi                                      // 0x0048d5f7    85ff
                         {disp32} je        _jmp_addr_0x0048d697                          // 0x0048d5f9    0f8498000000
                         xor.s              ebx, ebx                                      // 0x0048d5ff    33db
_jmp_addr_0x0048d601:    xor.s              eax, eax                                      // 0x0048d601    33c0
                         mov                al, byte ptr [edi]                            // 0x0048d603    8a07
                         shr                eax, 4                                        // 0x0048d605    c1e804
                         cmp                eax, 0x08                                     // 0x0048d608    83f808
                         {disp8} jge        _jmp_addr_0x0048d68a                          // 0x0048d60b    7d7d
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x0000569c] // 0x0048d60d    8b8c869c560000
                         test               ecx, ecx                                      // 0x0048d614    85c9
                         {disp8} je         _jmp_addr_0x0048d68a                          // 0x0048d616    7472
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000056fc] // 0x0048d618    8b8c86fc560000
                         push               0x0                                           // 0x0048d61f    6a00
                         push               ebx                                           // 0x0048d621    53
                         xor.s              edx, edx                                      // 0x0048d622    33d2
                         {disp32} mov       dl, byte ptr [esi + eax * 0x4 + 0x0000567d]   // 0x0048d624    8a94867d560000
                         push               edi                                           // 0x0048d62b    57
                         push               ebp                                           // 0x0048d62c    55
                         push               ecx                                           // 0x0048d62d    51
                         push               ecx                                           // 0x0048d62e    51
                         xor.s              ecx, ecx                                      // 0x0048d62f    33c9
                         {disp32} mov       cl, byte ptr [esi + eax * 0x4 + 0x0000567c]   // 0x0048d631    8a8c867c560000
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0048d638    89542428
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x0048d63c    db442428
                         xor.s              edx, edx                                      // 0x0048d640    33d2
                         {disp32} mov       dl, byte ptr [esi + eax * 0x4 + 0x0000567e]   // 0x0048d642    8a94867e560000
                         fstp               dword ptr [esp]                               // 0x0048d649    d91c24
                         push               ecx                                           // 0x0048d64c    51
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x0048d64d    894c242c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000098]             // 0x0048d651    8b8e98000000
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0048d657    db44242c
                         {disp32} mov       ecx, dword ptr [esi + ecx * 0x4 + 0x000000b4] // 0x0048d65b    8b8c8eb4000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x3c]                   // 0x0048d662    8b493c
                         shr                edx, 6                                        // 0x0048d665    c1ea06
                         fstp               dword ptr [esp]                               // 0x0048d668    d91c24
                         and                edx, 0x03                                     // 0x0048d66b    83e203
                         mov                edx, dword ptr [ecx + edx * 0x4]              // 0x0048d66e    8b1491
                         {disp32} mov       ecx, dword ptr [esi + eax * 0x4 + 0x000056dc] // 0x0048d671    8b8c86dc560000
                         push               edx                                           // 0x0048d678    52
                         {disp32} mov       edx, dword ptr [esi + eax * 0x4 + 0x000056bc] // 0x0048d679    8b9486bc560000
                         push               ecx                                           // 0x0048d680    51
                         push               edx                                           // 0x0048d681    52
                         call               _jmp_addr_0x005df310                          // 0x0048d682    e8891c1500
                         add                esp, 0x28                                     // 0x0048d687    83c428
_jmp_addr_0x0048d68a:    inc                ebx                                           // 0x0048d68a    43
                         add                edi, 0x04                                     // 0x0048d68b    83c704
                         cmp                ebx, 0x08                                     // 0x0048d68e    83fb08
                         {disp32} jl        _jmp_addr_0x0048d601                          // 0x0048d691    0f8c6affffff
_jmp_addr_0x0048d697:    {disp32} mov       eax, dword ptr [esi + 0x00000098]             // 0x0048d697    8b8698000000
                         {disp32} mov       ebp, dword ptr [esi + eax * 0x4 + 0x000000b4] // 0x0048d69d    8bac86b4000000
                         {disp32} mov       esi, dword ptr [esi + 0x00005184]             // 0x0048d6a4    8bb684510000
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0048d6aa    8b4604
                         xor.s              ebx, ebx                                      // 0x0048d6ad    33db
                         test               eax, eax                                      // 0x0048d6af    85c0
                         {disp8} jbe        _jmp_addr_0x0048d6f2                          // 0x0048d6b1    763f
                         {disp32} lea       edi, dword ptr [esi + 0x0000100a]             // 0x0048d6b3    8dbe0a100000
_jmp_addr_0x0048d6b9:    xor.s              eax, eax                                      // 0x0048d6b9    33c0
                         mov                ax, word ptr [edi]                            // 0x0048d6bb    668b07
                         xor.s              ecx, ecx                                      // 0x0048d6be    33c9
                         mov.s              cl, al                                        // 0x0048d6c0    8ac8
                         shr                eax, 8                                        // 0x0048d6c2    c1e808
                         and                eax, 0x07                                     // 0x0048d6c5    83e007
                         and                ecx, 0x3f                                     // 0x0048d6c8    83e13f
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0048d6cb    894c2410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0048d6cf    db442410
                         push               ecx                                           // 0x0048d6d3    51
                         {disp8} lea        ecx, dword ptr [edi + -0x02]                  // 0x0048d6d4    8d4ffe
                         {disp32} fidiv     dword ptr [eax * 0x4 + 0x008cf0b4]            // 0x0048d6d7    da3485b4f08c00
                         fstp               dword ptr [esp]                               // 0x0048d6de    d91c24
                         push               ebp                                           // 0x0048d6e1    55
                         call               _jmp_addr_0x00867040                          // 0x0048d6e2    e859993d00
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0048d6e7    8b4604
                         inc                ebx                                           // 0x0048d6ea    43
                         add                edi, 0x04                                     // 0x0048d6eb    83c704
                         cmp.s              ebx, eax                                      // 0x0048d6ee    3bd8
                         .byte              0x72, 0xc7// {disp8} jb _jmp_addr_0x0048d6b9  // 0x0048d6f0    72c7
_jmp_addr_0x0048d6f2:    mov                eax, dword ptr [esi]                          // 0x0048d6f2    8b06
                         xor.s              ebx, ebx                                      // 0x0048d6f4    33db
                         test               eax, eax                                      // 0x0048d6f6    85c0
                         {disp8} jbe        _jmp_addr_0x0048d740                          // 0x0048d6f8    7646
                         {disp8} lea        edi, dword ptr [esi + 0x0a]                   // 0x0048d6fa    8d7e0a
_jmp_addr_0x0048d6fd:    mov                ax, word ptr [edi]                            // 0x0048d6fd    668b07
                         and                ax, 0x003f                                    // 0x0048d700    66253f00
                         xor.s              ecx, ecx                                      // 0x0048d704    33c9
                         cmp                ax, 0x002a                                    // 0x0048d706    663d2a00
                         {disp8} jbe        _jmp_addr_0x0048d713                          // 0x0048d70a    7607
                         mov                ecx, 0x00000002                               // 0x0048d70c    b902000000
                         {disp8} jmp        _jmp_addr_0x0048d71e                          // 0x0048d711    eb0b
_jmp_addr_0x0048d713:    cmp                ax, 0x0015                                    // 0x0048d713    663d1500
                         {disp8} jbe        _jmp_addr_0x0048d71e                          // 0x0048d717    7605
                         mov                ecx, 0x00000001                               // 0x0048d719    b901000000
_jmp_addr_0x0048d71e:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x260b0]        // 0x0048d71e    8b15b0f08c00
                         push               edx                                           // 0x0048d724    52
                         {disp32} lea       eax, dword ptr [ecx * 0x4 + 0x00c641a4]       // 0x0048d725    8d048da441c600
                         push               eax                                           // 0x0048d72c    50
                         push               ebp                                           // 0x0048d72d    55
                         {disp8} lea        ecx, dword ptr [edi + -0x02]                  // 0x0048d72e    8d4ffe
                         call               _jmp_addr_0x00866d00                          // 0x0048d731    e8ca953d00
                         mov                eax, dword ptr [esi]                          // 0x0048d736    8b06
                         inc                ebx                                           // 0x0048d738    43
                         add                edi, 0x04                                     // 0x0048d739    83c704
                         cmp.s              ebx, eax                                      // 0x0048d73c    3bd8
                         .byte              0x72, 0xbd// {disp8} jb _jmp_addr_0x0048d6fd  // 0x0048d73e    72bd
_jmp_addr_0x0048d740:    pop                edi                                           // 0x0048d740    5f
                         pop                esi                                           // 0x0048d741    5e
                         pop                ebp                                           // 0x0048d742    5d
                         pop                ebx                                           // 0x0048d743    5b
                         pop                ecx                                           // 0x0048d744    59
                         ret                                                              // 0x0048d745    c3
                         nop                                                              // 0x0048d746    90
                         nop                                                              // 0x0048d747    90
                         nop                                                              // 0x0048d748    90
                         nop                                                              // 0x0048d749    90
                         nop                                                              // 0x0048d74a    90
                         nop                                                              // 0x0048d74b    90
                         nop                                                              // 0x0048d74c    90
                         nop                                                              // 0x0048d74d    90
                         nop                                                              // 0x0048d74e    90
                         nop                                                              // 0x0048d74f    90
_jmp_addr_0x0048d750:    xor.s              eax, eax                                      // 0x0048d750    33c0
                         {disp32} mov       dword ptr [ecx + 0x00005244], eax             // 0x0048d752    898144520000
                         {disp32} mov       dword ptr [ecx + 0x00005248], eax             // 0x0048d758    898148520000
                         {disp32} mov       dword ptr [ecx + 0x0000524c], eax             // 0x0048d75e    89814c520000
                         {disp32} mov       dword ptr [ecx + 0x00005254], eax             // 0x0048d764    898154520000
                         {disp32} mov       dword ptr [ecx + 0x00005258], eax             // 0x0048d76a    898158520000
                         {disp32} mov       dword ptr [ecx + 0x00005260], eax             // 0x0048d770    898160520000
                         {disp32} mov       dword ptr [ecx + 0x00005264], eax             // 0x0048d776    898164520000
                         {disp32} mov       dword ptr [ecx + 0x0000525c], eax             // 0x0048d77c    89815c520000
                         {disp32} mov       dword ptr [ecx + 0x00005250], eax             // 0x0048d782    898150520000
                         ret                                                              // 0x0048d788    c3
                         nop                                                              // 0x0048d789    90
                         nop                                                              // 0x0048d78a    90
                         nop                                                              // 0x0048d78b    90
                         nop                                                              // 0x0048d78c    90
                         nop                                                              // 0x0048d78d    90
                         nop                                                              // 0x0048d78e    90
                         nop                                                              // 0x0048d78f    90
                         push               esi                                           // 0x0048d790    56
                         mov.s              esi, ecx                                      // 0x0048d791    8bf1
                         call               ?MorphAnims@Morphable@@UAEXXZ                 // 0x0048d793    e868b91800
                         mov.s              ecx, esi                                      // 0x0048d798    8bce
                         call               _jmp_addr_0x0048d750                          // 0x0048d79a    e8b1ffffff
                         pop                esi                                           // 0x0048d79f    5e
                         ret                                                              // 0x0048d7a0    c3
                         nop                                                              // 0x0048d7a1    90
                         nop                                                              // 0x0048d7a2    90
                         nop                                                              // 0x0048d7a3    90
                         nop                                                              // 0x0048d7a4    90
                         nop                                                              // 0x0048d7a5    90
                         nop                                                              // 0x0048d7a6    90
                         nop                                                              // 0x0048d7a7    90
                         nop                                                              // 0x0048d7a8    90
                         nop                                                              // 0x0048d7a9    90
                         nop                                                              // 0x0048d7aa    90
                         nop                                                              // 0x0048d7ab    90
                         nop                                                              // 0x0048d7ac    90
                         nop                                                              // 0x0048d7ad    90
                         nop                                                              // 0x0048d7ae    90
                         nop                                                              // 0x0048d7af    90
_jmp_addr_0x0048d7b0:    push               ecx                                           // 0x0048d7b0    51
                         push               esi                                           // 0x0048d7b1    56
                         mov.s              esi, ecx                                      // 0x0048d7b2    8bf1
                         {disp32} fld       dword ptr [esi + 0x00000090]                  // 0x0048d7b4    d98690000000
                         {disp32} mov       eax, dword ptr [esi + 0x000051b8]             // 0x0048d7ba    8b86b8510000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x0048d7c0    d80d402c8c00
                         {disp32} mov       dword ptr [esi + 0x00004f64], eax             // 0x0048d7c6    8986644f0000
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0048d7cc    d95c2404
                         call               _jmp_addr_0x004ec450                          // 0x0048d7d0    e87bec0500
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0048d7d5    d84c2404
                         {disp32} mov       ecx, dword ptr [esi + 0x000051d8]             // 0x0048d7d9    8b8ed8510000
                         {disp32} mov       edx, dword ptr [esi + 0x000051c8]             // 0x0048d7df    8b96c8510000
                         {disp32} mov       dword ptr [esi + 0x00004f78], ecx             // 0x0048d7e5    898e784f0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d7eb    d80d20b68a00
                         mov.s              ecx, esi                                      // 0x0048d7f1    8bce
                         {disp32} mov       dword ptr [esi + 0x00004f8c], edx             // 0x0048d7f3    89968c4f0000
                         {disp32} fstp      dword ptr [esi + 0x00004f60]                  // 0x0048d7f9    d99e604f0000
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0048d7ff    d9442404
                         {disp32} fmul      dword ptr [__real@3e2aaaab]                   // 0x0048d803    d80d68b28a00
                         {disp32} fstp      dword ptr [esi + 0x00004f74]                  // 0x0048d809    d99e744f0000
                         call               _jmp_addr_0x004ec4b0                          // 0x0048d80f    e89cec0500
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0048d814    d84c2404
                         {disp32} mov       eax, dword ptr [esi + 0x000051c8]             // 0x0048d818    8b86c8510000
                         push               eax                                           // 0x0048d81e    50
                         mov.s              ecx, esi                                      // 0x0048d81f    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d821    d80d20b68a00
                         {disp32} fstp      dword ptr [esi + 0x00004f88]                  // 0x0048d827    d99e884f0000
                         call               _jmp_addr_0x00481390                          // 0x0048d82d    e85e3bffff
                         mov.s              ecx, esi                                      // 0x0048d832    8bce
                         {disp32} mov       dword ptr [esi + 0x00004fa0], eax             // 0x0048d834    8986a04f0000
                         call               _jmp_addr_0x004ec4b0                          // 0x0048d83a    e871ec0500
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0048d83f    d84c2404
                         {disp32} mov       ecx, dword ptr [esi + 0x000051cc]             // 0x0048d843    8b8ecc510000
                         {disp32} mov       dword ptr [esi + 0x00004fb4], ecx             // 0x0048d849    898eb44f0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d84f    d80d20b68a00
                         mov.s              ecx, esi                                      // 0x0048d855    8bce
                         {disp32} fstp      dword ptr [esi + 0x00004f9c]                  // 0x0048d857    d99e9c4f0000
                         call               _jmp_addr_0x004ec4b0                          // 0x0048d85d    e84eec0500
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0048d862    d84c2404
                         {disp32} mov       edx, dword ptr [esi + 0x000051cc]             // 0x0048d866    8b96cc510000
                         push               edx                                           // 0x0048d86c    52
                         mov.s              ecx, esi                                      // 0x0048d86d    8bce
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d86f    d80d20b68a00
                         {disp32} fstp      dword ptr [esi + 0x00004fb0]                  // 0x0048d875    d99eb04f0000
                         call               _jmp_addr_0x00481390                          // 0x0048d87b    e8103bffff
                         mov.s              ecx, esi                                      // 0x0048d880    8bce
                         {disp32} mov       dword ptr [esi + 0x00004fc8], eax             // 0x0048d882    8986c84f0000
                         call               _jmp_addr_0x004ec4b0                          // 0x0048d888    e823ec0500
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0048d88d    d84c2404
                         {disp32} mov       eax, dword ptr [esi + 0x000051c4]             // 0x0048d891    8b86c4510000
                         push               eax                                           // 0x0048d897    50
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d898    d80d20b68a00
                         mov.s              ecx, esi                                      // 0x0048d89e    8bce
                         {disp32} mov       dword ptr [esi + 0x00004fdc], eax             // 0x0048d8a0    8986dc4f0000
                         {disp32} fstp      dword ptr [esi + 0x00004fc4]                  // 0x0048d8a6    d99ec44f0000
                         {disp8} fld        dword ptr [esp + 0x08]                        // 0x0048d8ac    d9442408
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x0048d8b0    d80d20b68a00
                         {disp8} fst        dword ptr [esp + 0x08]                        // 0x0048d8b6    d9542408
                         {disp32} fstp      dword ptr [esi + 0x00004fd8]                  // 0x0048d8ba    d99ed84f0000
                         call               _jmp_addr_0x00481390                          // 0x0048d8c0    e8cb3affff
                         {disp32} mov       dword ptr [esi + 0x00004ff0], eax             // 0x0048d8c5    8986f04f0000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0048d8cb    8b442404
                         {disp32} mov       dword ptr [esi + 0x00004fec], eax             // 0x0048d8cf    8986ec4f0000
                         pop                esi                                           // 0x0048d8d5    5e
                         pop                ecx                                           // 0x0048d8d6    59
                         ret                                                              // 0x0048d8d7    c3
                         nop                                                              // 0x0048d8d8    90
                         nop                                                              // 0x0048d8d9    90
                         nop                                                              // 0x0048d8da    90
                         nop                                                              // 0x0048d8db    90
                         nop                                                              // 0x0048d8dc    90
                         nop                                                              // 0x0048d8dd    90
                         nop                                                              // 0x0048d8de    90
                         nop                                                              // 0x0048d8df    90
_jmp_addr_0x0048d8e0:    push               ebx                                           // 0x0048d8e0    53
                         push               esi                                           // 0x0048d8e1    56
                         push               edi                                           // 0x0048d8e2    57
                         {disp32} mov       dword ptr [ecx + 0x00005044], 0x00000001      // 0x0048d8e3    c7814450000001000000
                         {disp32} lea       eax, dword ptr [ecx + 0x00004f54]             // 0x0048d8ed    8d81544f0000
                         mov                esi, 0x00000008                               // 0x0048d8f3    be08000000
_jmp_addr_0x0048d8f8:    {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0048d8f8    8b5010
                         {disp32} mov       edi, dword ptr [ecx + 0x00005178]             // 0x0048d8fb    8bb978510000
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x0048d901    8d1452
                         shl                edx, 4                                        // 0x0048d904    c1e204
                         {disp8} lea        edx, dword ptr [edx + edi * 0x1 + 0x24]       // 0x0048d907    8d543a24
                         mov                ebx, dword ptr [edx]                          // 0x0048d90b    8b1a
                         mov.s              edi, eax                                      // 0x0048d90d    8bf8
                         mov                dword ptr [edi], ebx                          // 0x0048d90f    891f
                         {disp8} mov        ebx, dword ptr [edx + 0x04]                   // 0x0048d911    8b5a04
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x0048d914    895f04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0048d917    8b5208
                         add                eax, 0x14                                     // 0x0048d91a    83c014
                         dec                esi                                           // 0x0048d91d    4e
                         {disp8} mov        dword ptr [edi + 0x08], edx                   // 0x0048d91e    895708
                         {disp8} jne        _jmp_addr_0x0048d8f8                          // 0x0048d921    75d5
                         pop                edi                                           // 0x0048d923    5f
                         pop                esi                                           // 0x0048d924    5e
                         pop                ebx                                           // 0x0048d925    5b
                         ret                                                              // 0x0048d926    c3
                         nop                                                              // 0x0048d927    90
                         nop                                                              // 0x0048d928    90
                         nop                                                              // 0x0048d929    90
                         nop                                                              // 0x0048d92a    90
                         nop                                                              // 0x0048d92b    90
                         nop                                                              // 0x0048d92c    90
                         nop                                                              // 0x0048d92d    90
                         nop                                                              // 0x0048d92e    90
                         nop                                                              // 0x0048d92f    90
_jmp_addr_0x0048d930:    {disp32} mov       dword ptr [ecx + 0x00005044], 0x00000000      // 0x0048d930    c7814450000000000000
                         ret                                                              // 0x0048d93a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0048d93b    e8393ff7ff
_jmp_addr_0x0048d940:    push               esi                                           // 0x0048d940    56
                         mov.s              esi, ecx                                      // 0x0048d941    8bf1
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0048d943    d98638480000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x16518]             // 0x0048d949    d81d18f58b00
                         fnstsw             ax                                            // 0x0048d94f    dfe0
                         test               ah, 0x41                                      // 0x0048d951    f6c441
                         {disp32} jne       _jmp_addr_0x0048daab                          // 0x0048d954    0f8551010000
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0048d95a    d98638480000
                         {disp32} fcomp     dword ptr [esi + 0x00004844]                  // 0x0048d960    d89e44480000
                         fnstsw             ax                                            // 0x0048d966    dfe0
                         test               ah, 0x01                                      // 0x0048d968    f6c401
                         {disp32} je        _jmp_addr_0x0048da03                          // 0x0048d96b    0f8492000000
                         push               edi                                           // 0x0048d971    57
                         push               0x0                                           // 0x0048d972    6a00
                         push               0x0                                           // 0x0048d974    6a00
                         call               @GetAnim__9MorphableFll@16                    // 0x0048d976    e8d5bc1800
                         push               0x0                                           // 0x0048d97b    6a00
                         push               0x1                                           // 0x0048d97d    6a01
                         mov.s              ecx, esi                                      // 0x0048d97f    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x0048d981    8986c0470000
                         call               @GetAnim__9MorphableFll@16                    // 0x0048d987    e8c4bc1800
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0048d98c    d98638480000
                         {disp32} fdiv      dword ptr [esi + 0x00004844]                  // 0x0048d992    d8b644480000
                         mov.s              edi, eax                                      // 0x0048d998    8bf8
                         {disp32} mov       eax, dword ptr [esi + 0x000047c0]             // 0x0048d99a    8b86c0470000
                         {disp32} mov       dword ptr [esi + 0x000047c4], edi             // 0x0048d9a0    89bec4470000
                         {disp32} fst       dword ptr [esi + 0x000047e4]                  // 0x0048d9a6    d996e4470000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0048d9ac    d90590a38a00
                         fsub               st, st(1)                                     // 0x0048d9b2    d8e1
                         {disp32} fstp      dword ptr [esi + 0x000047e0]                  // 0x0048d9b4    d99ee0470000
                         {disp8} fld        dword ptr [edi + 0x0c]                        // 0x0048d9ba    d9470c
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x0048d9bd    d88e94000000
                         fmulp              st(1), st                                     // 0x0048d9c3    dec9
                         {disp8} fdivr      dword ptr [esp + 0x0c]                        // 0x0048d9c5    d87c240c
                         fild               dword ptr [eax]                               // 0x0048d9c9    db00
                         {disp32} fmul      dword ptr [esi + 0x00004988]                  // 0x0048d9cb    d88e88490000
                         call               _jmp_addr_0x007a1400                          // 0x0048d9d1    e82a3a3100
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x0048d9d6    8986d0470000
                         fild               dword ptr [edi]                               // 0x0048d9dc    db07
                         fmul               st, st(1)                                     // 0x0048d9de    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x0048d9e0    e81b3a3100
                         fstp               st(0)                                         // 0x0048d9e5    ddd8
                         {disp32} mov       ecx, dword ptr [esi + 0x000047d4]             // 0x0048d9e7    8b8ed4470000
                         push               eax                                           // 0x0048d9ed    50
                         push               ecx                                           // 0x0048d9ee    51
                         push               0x1                                           // 0x0048d9ef    6a01
                         mov.s              ecx, esi                                      // 0x0048d9f1    8bce
                         call               _jmp_addr_0x00617a10                          // 0x0048d9f3    e818a01800
                         pop                edi                                           // 0x0048d9f8    5f
                         {disp32} mov       dword ptr [esi + 0x000047d4], eax             // 0x0048d9f9    8986d4470000
                         pop                esi                                           // 0x0048d9ff    5e
                         ret                0x0004                                        // 0x0048da00    c20400
_jmp_addr_0x0048da03:    push               0x0                                           // 0x0048da03    6a00
                         push               0x1                                           // 0x0048da05    6a01
                         mov.s              ecx, esi                                      // 0x0048da07    8bce
                         call               @GetAnim__9MorphableFll@16                    // 0x0048da09    e842bc1800
                         push               0x0                                           // 0x0048da0e    6a00
                         push               0x2                                           // 0x0048da10    6a02
                         mov.s              ecx, esi                                      // 0x0048da12    8bce
                         {disp32} mov       dword ptr [esi + 0x000047c4], eax             // 0x0048da14    8986c4470000
                         call               @GetAnim__9MorphableFll@16                    // 0x0048da1a    e831bc1800
                         {disp32} fld       dword ptr [esi + 0x00004838]                  // 0x0048da1f    d98638480000
                         {disp32} fsub      dword ptr [esi + 0x00004844]                  // 0x0048da25    d8a644480000
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c4]             // 0x0048da2b    8b8ec4470000
                         {disp32} fld       dword ptr [esi + 0x00004848]                  // 0x0048da31    d98648480000
                         {disp32} mov       dword ptr [esi + 0x000047c0], eax             // 0x0048da37    8986c0470000
                         {disp32} fsub      dword ptr [esi + 0x00004844]                  // 0x0048da3d    d8a644480000
                         fdivp              st(1), st                                     // 0x0048da43    def9
                         {disp32} fst       dword ptr [esi + 0x000047e0]                  // 0x0048da45    d996e0470000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0048da4b    d90590a38a00
                         fsub               st, st(1)                                     // 0x0048da51    d8e1
                         {disp32} fst       dword ptr [esi + 0x000047e4]                  // 0x0048da53    d996e4470000
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x0048da59    d8490c
                         fxch               st(1)                                         // 0x0048da5c    d9c9
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0048da5e    d8480c
                         faddp              st(1), st                                     // 0x0048da61    dec1
                         {disp32} fmul      dword ptr [esi + 0x00000094]                  // 0x0048da63    d88e94000000
                         {disp8} fdivr      dword ptr [esp + 0x08]                        // 0x0048da69    d87c2408
                         fild               dword ptr [ecx]                               // 0x0048da6d    db01
                         fmul               st, st(1)                                     // 0x0048da6f    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x0048da71    e88a393100
                         fstp               st(0)                                         // 0x0048da76    ddd8
                         {disp32} mov       edx, dword ptr [esi + 0x000047d4]             // 0x0048da78    8b96d4470000
                         push               eax                                           // 0x0048da7e    50
                         push               edx                                           // 0x0048da7f    52
                         push               0x1                                           // 0x0048da80    6a01
                         mov.s              ecx, esi                                      // 0x0048da82    8bce
                         call               _jmp_addr_0x00617a10                          // 0x0048da84    e8879f1800
                         mov.s              ecx, eax                                      // 0x0048da89    8bc8
                         {disp32} mov       eax, dword ptr [esi + 0x000047c0]             // 0x0048da8b    8b86c0470000
                         {disp32} mov       dword ptr [esi + 0x000047d4], ecx             // 0x0048da91    898ed4470000
                         mov                eax, dword ptr [eax]                          // 0x0048da97    8b00
                         imul               eax, ecx                                      // 0x0048da99    0fafc1
                         {disp32} mov       ecx, dword ptr [esi + 0x000047c4]             // 0x0048da9c    8b8ec4470000
                         cdq                                                              // 0x0048daa2    99
                         idiv               dword ptr [ecx]                               // 0x0048daa3    f739
                         {disp32} mov       dword ptr [esi + 0x000047d0], eax             // 0x0048daa5    8986d0470000
_jmp_addr_0x0048daab:    pop                esi                                           // 0x0048daab    5e
                         ret                0x0004                                        // 0x0048daac    c20400
                         nop                                                              // 0x0048daaf    90
_jmp_addr_0x0048dab0:    sub                esp, 0x48                                     // 0x0048dab0    83ec48
                         {disp8} mov        eax, dword ptr [esp + 0x4c]                   // 0x0048dab3    8b44244c
                         fld                dword ptr [eax]                               // 0x0048dab7    d900
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x0048dab9    c744244c00000000
                         {disp8} fsub       dword ptr [ecx + 0x78]                        // 0x0048dac1    d86178
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0048dac4    d94004
                         {disp8} fsub       dword ptr [ecx + 0x7c]                        // 0x0048dac7    d8617c
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0048daca    d94008
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x0048dacd    8b442450
                         {disp32} fsub      dword ptr [ecx + 0x00000080]                  // 0x0048dad1    d8a180000000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048dad7    d95c2414
                         {disp32} fld       dword ptr [ecx + 0x00000084]                  // 0x0048dadb    d98184000000
                         fchs                                                             // 0x0048dae1    d9e0
                         fld                st(0)                                         // 0x0048dae3    d9c0
                         fcos                                                             // 0x0048dae5    d9ff
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0048dae7    d95c2438
                         fsin                                                             // 0x0048daeb    d9fe
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x0048daed    d9542420
                         fchs                                                             // 0x0048daf1    d9e0
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0048daf3    d84c2414
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0048daf7    d9442438
                         fmul               st, st(3)                                     // 0x0048dafb    d8cb
                         faddp              st(1), st                                     // 0x0048dafd    dec1
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x0048daff    d844244c
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0048db03    d95c2400
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0048db07    d9442438
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0048db0b    d84c2414
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0048db0f    d9442420
                         fmul               st, st(3)                                     // 0x0048db13    d8cb
                         faddp              st(1), st                                     // 0x0048db15    dec1
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x0048db17    d844244c
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0048db1b    d95c2408
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0048db1f    8b4c2408
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0048db23    d9442400
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0048db27    894808
                         fstp               dword ptr [eax]                               // 0x0048db2a    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0048db2c    d95804
                         fstp               st(0)                                         // 0x0048db2f    ddd8
                         add                esp, 0x48                                     // 0x0048db31    83c448
                         ret                0x0008                                        // 0x0048db34    c20800
                         nop                                                              // 0x0048db37    90
                         nop                                                              // 0x0048db38    90
                         nop                                                              // 0x0048db39    90
                         nop                                                              // 0x0048db3a    90
                         nop                                                              // 0x0048db3b    90
                         nop                                                              // 0x0048db3c    90
                         nop                                                              // 0x0048db3d    90
                         nop                                                              // 0x0048db3e    90
                         nop                                                              // 0x0048db3f    90
                         sub                esp, 0x40                                     // 0x0048db40    83ec40
                         push               ebx                                           // 0x0048db43    53
                         push               ebp                                           // 0x0048db44    55
                         xor.s              eax, eax                                      // 0x0048db45    33c0
                         push               esi                                           // 0x0048db47    56
                         {disp8} mov        esi, dword ptr [esp + 0x54]                   // 0x0048db48    8b742454
                         push               edi                                           // 0x0048db4c    57
                         mov.s              edi, ecx                                      // 0x0048db4d    8bf9
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0048db4f    894608
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0048db52    894604
                         mov                dword ptr [esi], eax                          // 0x0048db55    8906
                         {disp32} fld       dword ptr [edi + 0x00000090]                  // 0x0048db57    d98790000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26194]             // 0x0048db5d    d80d94f18c00
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x0048db63    8b44245c
                         cmp                eax, 0x0e                                     // 0x0048db67    83f80e
                         {disp32} lea       ebx, dword ptr [edi + 0x000049c8]             // 0x0048db6a    8d9fc8490000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048db70    d95c2410
                         {disp8} je         _jmp_addr_0x0048db7c                          // 0x0048db74    7406
                         {disp32} lea       ebx, dword ptr [edi + 0x00004a44]             // 0x0048db76    8d9f444a0000
_jmp_addr_0x0048db7c:    {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0048db7c    8d542420
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0048db80    8d4c2420
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x0048db84    8d4308
                         sub.s              edx, ebx                                      // 0x0048db87    2bd3
                         {disp8} mov        dword ptr [esp + 0x58], 0x00000004            // 0x0048db89    c744245804000000
_jmp_addr_0x0048db91:    {disp32} fld       dword ptr [edi + 0x00000094]                  // 0x0048db91    d98794000000
                         mov.s              ebx, ecx                                      // 0x0048db97    8bd9
                         fld                st(0)                                         // 0x0048db99    d9c0
                         add                eax, 0x0c                                     // 0x0048db9b    83c00c
                         {disp8} fmul       dword ptr [eax + -0x14]                       // 0x0048db9e    d848ec
                         add                ecx, 0xc                                      // 0x0048dba1    83c10c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048dba4    d95c2414
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x0048dba8    8b6c2414
                         fld                st(0)                                         // 0x0048dbac    d9c0
                         mov                dword ptr [ebx], ebp                          // 0x0048dbae    892b
                         {disp8} fmul       dword ptr [eax + -0x10]                       // 0x0048dbb0    d848f0
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0048dbb3    d95c2418
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0048dbb7    8b6c2418
                         {disp8} fmul       dword ptr [eax + -0x0c]                       // 0x0048dbbb    d848f4
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                   // 0x0048dbbe    896b04
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0048dbc1    d95c241c
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x0048dbc5    8b6c241c
                         {disp8} mov        dword ptr [ebx + 0x08], ebp                   // 0x0048dbc9    896b08
                         {disp8} fld        dword ptr [edx + eax * 0x1 + -0x0c]           // 0x0048dbcc    d94402f4
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x0048dbd0    d80dd4b38a00
                         {disp8} mov        ebx, dword ptr [esp + 0x58]                   // 0x0048dbd6    8b5c2458
                         dec                ebx                                           // 0x0048dbda    4b
                         {disp8} mov        dword ptr [esp + 0x58], ebx                   // 0x0048dbdb    895c2458
                         {disp8} fadd       dword ptr [esi + 0x08]                        // 0x0048dbdf    d84608
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0048dbe2    d95e08
                         {disp8} jne        _jmp_addr_0x0048db91                          // 0x0048dbe5    75aa
                         {disp8} mov        ebx, dword ptr [esp + 0x54]                   // 0x0048dbe7    8b5c2454
                         {disp8} mov        ebp, dword ptr [ebx + 0x40]                   // 0x0048dbeb    8b6b40
                         test               ebp, ebp                                      // 0x0048dbee    85ed
                         {disp8} je         _jmp_addr_0x0048dc66                          // 0x0048dbf0    7474
                         mov                eax, dword ptr [ebx]                          // 0x0048dbf2    8b03
                         mov.s              ecx, ebx                                      // 0x0048dbf4    8bcb
                         call               dword ptr [eax + 0x120]                       // 0x0048dbf6    ff9020010000
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x0048dbfc    d95c2458
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0048dc00    8b5500
                         mov.s              ecx, ebp                                      // 0x0048dc03    8bcd
                         call               dword ptr [edx + 0xf8]                        // 0x0048dc05    ff92f8000000
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0048dc0b    d9442458
                         {disp8} fmul       dword ptr [eax + 0x28]                        // 0x0048dc0f    d84828
                         fadd.s             st(0), st(0)                                  // 0x0048dc12    dcc0
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0048dc14    d85c2410
                         fnstsw             ax                                            // 0x0048dc18    dfe0
                         test               ah, 0x41                                      // 0x0048dc1a    f6c441
                         {disp8} jne        _jmp_addr_0x0048dc66                          // 0x0048dc1d    7547
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0048dc1f    d94608
                         mov                eax, dword ptr [ebx]                          // 0x0048dc22    8b03
                         fchs                                                             // 0x0048dc24    d9e0
                         mov.s              ecx, ebx                                      // 0x0048dc26    8bcb
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x0048dc28    d95c2458
                         call               dword ptr [eax + 0x64]                        // 0x0048dc2c    ff5064
                         {disp32} fadd      dword ptr [edi + 0x00005228]                  // 0x0048dc2f    d88728520000
                         {disp8} fcomp      dword ptr [esp + 0x58]                        // 0x0048dc35    d85c2458
                         fnstsw             ax                                            // 0x0048dc39    dfe0
                         test               ah, 0x01                                      // 0x0048dc3b    f6c401
                         {disp8} je         _jmp_addr_0x0048dc54                          // 0x0048dc3e    7414
                         {disp8} fld        dword ptr [esi + 0x08]                        // 0x0048dc40    d94608
                         pop                edi                                           // 0x0048dc43    5f
                         fchs                                                             // 0x0048dc44    d9e0
                         fchs                                                             // 0x0048dc46    d9e0
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0048dc48    d95e08
                         pop                esi                                           // 0x0048dc4b    5e
                         pop                ebp                                           // 0x0048dc4c    5d
                         pop                ebx                                           // 0x0048dc4d    5b
                         add                esp, 0x40                                     // 0x0048dc4e    83c440
                         ret                0x000c                                        // 0x0048dc51    c20c00
_jmp_addr_0x0048dc54:    mov                edx, dword ptr [ebx]                          // 0x0048dc54    8b13
                         mov.s              ecx, ebx                                      // 0x0048dc56    8bcb
                         call               dword ptr [edx + 0x64]                        // 0x0048dc58    ff5264
                         {disp32} fadd      dword ptr [edi + 0x00005228]                  // 0x0048dc5b    d88728520000
                         fchs                                                             // 0x0048dc61    d9e0
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0048dc63    d95e08
_jmp_addr_0x0048dc66:    pop                edi                                           // 0x0048dc66    5f
                         pop                esi                                           // 0x0048dc67    5e
                         pop                ebp                                           // 0x0048dc68    5d
                         pop                ebx                                           // 0x0048dc69    5b
                         add                esp, 0x40                                     // 0x0048dc6a    83c440
                         ret                0x000c                                        // 0x0048dc6d    c20c00
_jmp_addr_0x0048dc70:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0048dc70    8b442414
                         sub                esp, 0x48                                     // 0x0048dc74    83ec48
                         cmp                eax, 0x0e                                     // 0x0048dc77    83f80e
                         {disp32} lea       eax, dword ptr [ecx + 0x000049c8]             // 0x0048dc7a    8d81c8490000
                         {disp8} je         _jmp_addr_0x0048dc88                          // 0x0048dc80    7406
                         {disp32} lea       eax, dword ptr [ecx + 0x00004a44]             // 0x0048dc82    8d81444a0000
_jmp_addr_0x0048dc88:    {disp32} fld       dword ptr [ecx + 0x00000094]                  // 0x0048dc88    d98194000000
                         push               ebx                                           // 0x0048dc8e    53
                         push               esi                                           // 0x0048dc8f    56
                         {disp8} mov        esi, dword ptr [esp + 0x68]                   // 0x0048dc90    8b742468
                         push               edi                                           // 0x0048dc94    57
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x0048dc95    8d4c2424
                         add                eax, 0x08                                     // 0x0048dc99    83c008
                         mov                edx, 0x00000004                               // 0x0048dc9c    ba04000000
_jmp_addr_0x0048dca1:    test               esi, esi                                      // 0x0048dca1    85f6
                         fld                st(0)                                         // 0x0048dca3    d9c0
                         {disp8} fmul       dword ptr [eax + -0x08]                       // 0x0048dca5    d848f8
                         mov.s              edi, ecx                                      // 0x0048dca8    8bf9
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0048dcaa    d95c240c
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x0048dcae    8b5c240c
                         fld                st(0)                                         // 0x0048dcb2    d9c0
                         mov                dword ptr [edi], ebx                          // 0x0048dcb4    891f
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048dcb6    d848fc
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0048dcb9    d95c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0048dcbd    8b5c2410
                         fld                st(0)                                         // 0x0048dcc1    d9c0
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x0048dcc3    895f04
                         fmul               dword ptr [eax]                               // 0x0048dcc6    d808
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048dcc8    d95c2414
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x0048dccc    8b5c2414
                         {disp8} mov        dword ptr [edi + 0x08], ebx                   // 0x0048dcd0    895f08
                         {disp8} je         _jmp_addr_0x0048dcdb                          // 0x0048dcd3    7406
                         fld                dword ptr [ecx]                               // 0x0048dcd5    d901
                         fchs                                                             // 0x0048dcd7    d9e0
                         fstp               dword ptr [ecx]                               // 0x0048dcd9    d919
_jmp_addr_0x0048dcdb:    add                eax, 0x0c                                     // 0x0048dcdb    83c00c
                         add                ecx, 0xc                                      // 0x0048dcde    83c10c
                         dec                edx                                           // 0x0048dce1    4a
                         {disp8} jne        _jmp_addr_0x0048dca1                          // 0x0048dce2    75bd
                         fstp               st(0)                                         // 0x0048dce4    ddd8
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x0048dce6    8b442464
                         fld                dword ptr [eax]                               // 0x0048dcea    d900
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x0048dcec    8b4c2458
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x0048dcf0    d8642424
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                   // 0x0048dcf4    8b54245c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0048dcf8    d9442430
                         pop                edi                                           // 0x0048dcfc    5f
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0048dcfd    d8642420
                         pop                esi                                           // 0x0048dd01    5e
                         pop                ebx                                           // 0x0048dd02    5b
                         fdivp              st(1), st                                     // 0x0048dd03    def9
                         fstp               dword ptr [ecx]                               // 0x0048dd05    d919
                         fld                dword ptr [eax]                               // 0x0048dd07    d900
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0048dd09    d8642430
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0048dd0d    d944243c
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0048dd11    d8642430
                         fdivp              st(1), st                                     // 0x0048dd15    def9
                         fld                st(0)                                         // 0x0048dd17    d9c0
                         fstp               dword ptr [edx]                               // 0x0048dd19    d91a
                         fld                dword ptr [ecx]                               // 0x0048dd1b    d901
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x0048dd1d    d84c242c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0048dd21    d90590a38a00
                         fsub               dword ptr [ecx]                               // 0x0048dd27    d821
                         {disp8} fmul       dword ptr [esp + 0x20]                        // 0x0048dd29    d84c2420
                         fadd               st, st(1)                                     // 0x0048dd2d    d8c1
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x0048dd2f    d95c2408
                         fstp               st(0)                                         // 0x0048dd33    ddd8
                         fld                st(0)                                         // 0x0048dd35    d9c0
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0048dd37    d9442444
                         fmul               st, st(1)                                     // 0x0048dd3b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0048dd3d    d95c2414
                         fstp               st(0)                                         // 0x0048dd41    ddd8
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0048dd43    d82d90a38a00
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0048dd49    d84c2438
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0048dd4d    d8442414
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0048dd51    d94008
                         {disp8} mov        eax, dword ptr [esp + 0x54]                   // 0x0048dd54    8b442454
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x0048dd58    d8642408
                         fxch               st(1)                                         // 0x0048dd5c    d9c9
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x0048dd5e    d8642408
                         fdivp              st(1), st                                     // 0x0048dd62    def9
                         fstp               dword ptr [eax]                               // 0x0048dd64    d918
                         add                esp, 0x48                                     // 0x0048dd66    83c448
                         ret                0x0018                                        // 0x0048dd69    c21800
                         nop                                                              // 0x0048dd6c    90
                         nop                                                              // 0x0048dd6d    90
                         nop                                                              // 0x0048dd6e    90
                         nop                                                              // 0x0048dd6f    90
_jmp_addr_0x0048dd70:    sub                esp, 0x000000b8                               // 0x0048dd70    81ecb8000000
                         push               edi                                           // 0x0048dd76    57
                         mov.s              edi, ecx                                      // 0x0048dd77    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x0000528c]             // 0x0048dd79    8b878c520000
                         test               eax, eax                                      // 0x0048dd7f    85c0
                         {disp32} je        _jmp_addr_0x0048e1a8                          // 0x0048dd81    0f8421040000
                         {disp32} mov       eax, dword ptr [edi + 0x00004834]             // 0x0048dd87    8b8734480000
                         test               eax, eax                                      // 0x0048dd8d    85c0
                         {disp32} je        _jmp_addr_0x0048e1a8                          // 0x0048dd8f    0f8413040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048dd95    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0048dd9b    e8e0e30b00
                         test               eax, eax                                      // 0x0048dda0    85c0
                         {disp32} je        _jmp_addr_0x0048e1a8                          // 0x0048dda2    0f8400040000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048dda8    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x0048ddae    e8cde30b00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x0048ddb3    a1b81dea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0048ddb8    8b0dbc1dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0048ddbe    8b15c01dea00
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0048ddc4    89442434
                         {disp32} mov       eax, dword ptr [edi + 0x00000084]             // 0x0048ddc8    8b8784000000
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0048ddce    894c2438
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0048ddd2    8d4c2444
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0048ddd6    8954243c
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0048ddda    89442410
                         call               ?SetIdentity@LHMatrix@@QAEXXZ                 // 0x0048ddde    e81d57f7ff
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048dde3    d9442410
                         fcos                                                             // 0x0048dde7    d9ff
                         {disp8} mov        eax, dword ptr [edi + 0x7c]                   // 0x0048dde9    8b477c
                         {disp8} mov        edx, dword ptr [edi + 0x78]                   // 0x0048ddec    8b5778
                         {disp8} mov        dword ptr [esp + 0x6c], eax                   // 0x0048ddef    8944246c
                         {disp32} mov       eax, dword ptr [edi + 0x00004b30]             // 0x0048ddf3    8b87304b0000
                         test               eax, eax                                      // 0x0048ddf9    85c0
                         {disp8} mov        dword ptr [esp + 0x68], edx                   // 0x0048ddfb    89542468
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0048ddff    c744241c00000000
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x0048de07    d95c2464
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0048de0b    d9442410
                         fsin                                                             // 0x0048de0f    d9fe
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x0048de11    8b4c2464
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x0048de15    894c2444
                         {disp32} mov       ecx, dword ptr [edi + 0x00000080]             // 0x0048de19    8b8f80000000
                         {disp8} mov        dword ptr [esp + 0x70], ecx                   // 0x0048de1f    894c2470
                         {disp8} fst        dword ptr [esp + 0x4c]                        // 0x0048de23    d954244c
                         fchs                                                             // 0x0048de27    d9e0
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x0048de29    d95c245c
                         {disp32} jle       _jmp_addr_0x0048e1a8                          // 0x0048de2d    0f8e75030000
                         push               ebx                                           // 0x0048de33    53
                         push               ebp                                           // 0x0048de34    55
                         {disp32} lea       ecx, dword ptr [edi + 0x00004bc4]             // 0x0048de35    8d8fc44b0000
                         {disp32} lea       eax, dword ptr [edi + 0x00004da8]             // 0x0048de3b    8d87a84d0000
                         push               esi                                           // 0x0048de41    56
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0048de42    894c2420
                         {disp32} lea       ebx, dword ptr [edi + 0x00004b94]             // 0x0048de46    8d9f944b0000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0048de4c    8944241c
                         {disp8} jmp        _jmp_addr_0x0048de5a                          // 0x0048de50    eb08
_jmp_addr_0x0048de52:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0048de52    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0048de56    8b4c2420
_jmp_addr_0x0048de5a:    {disp8} mov        edx, dword ptr [ebx + -0x60]                  // 0x0048de5a    8b53a0
                         xor.s              ebp, ebp                                      // 0x0048de5d    33ed
                         cmp                edx, 0x03                                     // 0x0048de5f    83fa03
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0048de62    896c242c
                         {disp32} ja        _jmp_addr_0x0048e046                          // 0x0048de66    0f87da010000
                         jmp                dword ptr [edx*4 + 0x48e1b0]                  // 0x0048de6c    ff2495b0e14800
                         {disp32} mov       eax, dword ptr [edi + 0x0000528c]             // 0x0048de73    8b878c520000
                         {disp32} lea       edx, dword ptr [esp + 0x000000bc]             // 0x0048de79    8d9424bc000000
                         push               edx                                           // 0x0048de80    52
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0048de81    8d542414
                         push               edx                                           // 0x0048de85    52
                         {disp32} mov       edx, dword ptr [eax + 0x000047f0]             // 0x0048de86    8b90f0470000
                         push               edx                                           // 0x0048de8c    52
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x0048de8d    8b9098000000
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x0048de93    8b8490b4000000
                         push               eax                                           // 0x0048de9a    50
                         call               _jmp_addr_0x00867400                          // 0x0048de9b    e860953d00
                         {disp8} mov        ecx, dword ptr [ebx + -0x30]                  // 0x0048dea0    8b4bd0
                         mov                esi, dword ptr [ebx]                          // 0x0048dea3    8b33
                         shl                ecx, 3                                        // 0x0048dea5    c1e103
                         mov                eax, 0x1b4e81b5                               // 0x0048dea8    b8b5814e1b
                         mul                ecx                                           // 0x0048dead    f7e1
                         shr                edx, 7                                        // 0x0048deaf    c1ea07
                         add.s              edx, esi                                      // 0x0048deb2    03d6
                         and                edx, 0x0f                                     // 0x0048deb4    83e20f
                         mov                dword ptr [ebx], edx                          // 0x0048deb7    8913
                         cmp                dword ptr [data_bytes + 0x29e20c], ebp        // 0x0048deb9    392d0c42c600
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0048debf    8954242c
                         {disp32} je        _jmp_addr_0x0048e046                          // 0x0048dec3    0f847d010000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0048dec9    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0048decd    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0048ded1    8b4c2418
                         {disp32} mov       dword ptr [data_bytes + 0x34df70], edx        // 0x0048ded5    8915703fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df74], eax        // 0x0048dedb    a3743fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34df78], ecx        // 0x0048dee0    890d783fd100
                         {disp32} mov       dword ptr [data_bytes + 0x34e04c], 0x00000001 // 0x0048dee6    c7054c40d10001000000
                         {disp32} jmp       _jmp_addr_0x0048e046                          // 0x0048def0    e951010000
                         {disp32} lea       edx, dword ptr [esp + 0x000000bc]             // 0x0048def5    8d9424bc000000
                         push               edx                                           // 0x0048defc    52
                         {disp32} mov       edx, dword ptr [edi + 0x000047f0]             // 0x0048defd    8b97f0470000
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0048df03    8d442414
                         push               eax                                           // 0x0048df07    50
                         {disp32} mov       eax, dword ptr [edi + 0x00000098]             // 0x0048df08    8b8798000000
                         push               edx                                           // 0x0048df0e    52
                         {disp32} mov       edx, dword ptr [edi + eax * 0x4 + 0x000000b4] // 0x0048df0f    8b9487b4000000
                         push               edx                                           // 0x0048df16    52
                         call               _jmp_addr_0x00867400                          // 0x0048df17    e8e4943d00
                         {disp32} jmp       _jmp_addr_0x0048e046                          // 0x0048df1c    e925010000
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x0048df21    d9442468
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0048df25    8b0d5c19d000
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0048df2b    d84804
                         {disp32} mov       edx, dword ptr [ecx + 0x00205d64]             // 0x0048df2e    8b91645d2000
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0048df34    d944245c
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0048df38    89542424
                         fmul               dword ptr [eax]                               // 0x0048df3c    d808
                         faddp              st(1), st                                     // 0x0048df3e    dec1
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x0048df40    d9442450
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048df44    d848fc
                         faddp              st(1), st                                     // 0x0048df47    dec1
                         {disp8} fadd       dword ptr [esp + 0x74]                        // 0x0048df49    d8442474
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x0048df4d    d9442454
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048df51    d848fc
                         {disp8} fld        dword ptr [esp + 0x6c]                        // 0x0048df54    d944246c
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0048df58    d84804
                         faddp              st(1), st                                     // 0x0048df5b    dec1
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x0048df5d    d9442460
                         fmul               dword ptr [eax]                               // 0x0048df61    d808
                         faddp              st(1), st                                     // 0x0048df63    dec1
                         {disp8} fadd       dword ptr [esp + 0x78]                        // 0x0048df65    d8442478
                         {disp32} fstp      dword ptr [esp + 0x000000a8]                  // 0x0048df69    d99c24a8000000
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0048df70    d9442458
                         {disp8} fmul       dword ptr [eax + -0x04]                       // 0x0048df74    d848fc
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0048df77    d9442470
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0048df7b    d84804
                         faddp              st(1), st                                     // 0x0048df7e    dec1
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x0048df80    d9442464
                         fmul               dword ptr [eax]                               // 0x0048df84    d808
                         faddp              st(1), st                                     // 0x0048df86    dec1
                         {disp8} fadd       dword ptr [esp + 0x7c]                        // 0x0048df88    d844247c
                         {disp32} fstp      dword ptr [esp + 0x000000ac]                  // 0x0048df8c    d99c24ac000000
                         {disp32} fsub      dword ptr [eax + 0x0000008c]                  // 0x0048df93    d8a08c000000
                         {disp32} fld       dword ptr [esp + 0x000000a8]                  // 0x0048df99    d98424a8000000
                         {disp32} fsub      dword ptr [eax + 0x00000090]                  // 0x0048dfa0    d8a090000000
                         {disp32} fstp      dword ptr [esp + 0x00000084]                  // 0x0048dfa6    d99c2484000000
                         {disp32} fld       dword ptr [esp + 0x000000ac]                  // 0x0048dfad    d98424ac000000
                         {disp32} fsub      dword ptr [eax + 0x00000094]                  // 0x0048dfb4    d8a094000000
                         {disp32} fstp      dword ptr [esp + 0x00000088]                  // 0x0048dfba    d99c2488000000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0048dfc1    d84c2424
                         {disp32} fld       dword ptr [esp + 0x00000084]                  // 0x0048dfc5    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0048dfcc    d84c2424
                         {disp32} fstp      dword ptr [esp + 0x0000009c]                  // 0x0048dfd0    d99c249c000000
                         {disp32} fld       dword ptr [esp + 0x00000088]                  // 0x0048dfd7    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0048dfde    d84c2424
                         {disp32} fstp      dword ptr [esp + 0x000000a0]                  // 0x0048dfe2    d99c24a0000000
                         {disp32} fadd      dword ptr [eax + 0x0000008c]                  // 0x0048dfe9    d8808c000000
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0048dfef    d95c2430
                         {disp32} fld       dword ptr [esp + 0x0000009c]                  // 0x0048dff3    d984249c000000
                         {disp32} fadd      dword ptr [eax + 0x00000090]                  // 0x0048dffa    d88090000000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0048e000    d95c2434
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x0048e004    d98424a0000000
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0048e00b    8b4c2434
                         {disp32} fadd      dword ptr [eax + 0x00000094]                  // 0x0048e00f    d88094000000
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0048e015    8b442430
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0048e019    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0048e01d    894c2414
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0048e021    d95c2438
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0048e025    8b542438
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0048e029    89542418
                         {disp8} jmp        _jmp_addr_0x0048e046                          // 0x0048e02d    eb17
                         add                eax, -0x04                                    // 0x0048e02f    83c0fc
                         mov                ecx, dword ptr [eax]                          // 0x0048e032    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0048e034    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0048e037    8b4008
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0048e03a    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0048e03e    89542414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0048e042    89442418
_jmp_addr_0x0048e046:    {disp32} mov       eax, dword ptr [edi + 0x00004abc]             // 0x0048e046    8b87bc4a0000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0048e04c    8b4c2428
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0048e050    8944243c
                         sub.s              eax, ecx                                      // 0x0048e054    2bc1
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x0048e056    8944244c
                         {disp8} fild       dword ptr [esp + 0x4c]                        // 0x0048e05a    db44244c
                         {disp8} fidiv      dword ptr [esp + 0x3c]                        // 0x0048e05e    da74243c
                         {disp32} fcom      qword ptr [rdata_bytes + 0x261b0]             // 0x0048e062    dc15b0f18c00
                         fnstsw             ax                                            // 0x0048e068    dfe0
                         test               ah, 0x01                                      // 0x0048e06a    f6c401
                         {disp8} je         _jmp_addr_0x0048e086                          // 0x0048e06d    7417
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a8]             // 0x0048e06f    dc0da8f18c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a0]             // 0x0048e075    dc0da0f18c00
                         call               _jmp_addr_0x007a1400                          // 0x0048e07b    e880333100
                         mov.s              esi, eax                                      // 0x0048e080    8bf0
                         xor.s              eax, eax                                      // 0x0048e082    33c0
                         {disp8} jmp        _jmp_addr_0x0048e0d1                          // 0x0048e084    eb4b
_jmp_addr_0x0048e086:    {disp32} fcom      qword ptr [rdata_bytes + 0x26198]             // 0x0048e086    dc1598f18c00
                         mov                esi, 0x000000ff                               // 0x0048e08c    beff000000
                         fnstsw             ax                                            // 0x0048e091    dfe0
                         test               ah, 0x01                                      // 0x0048e093    f6c401
                         {disp8} je         _jmp_addr_0x0048e0b5                          // 0x0048e096    741d
                         {disp32} fsub      qword ptr [rdata_bytes + 0x261b0]             // 0x0048e098    dc25b0f18c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a8]             // 0x0048e09e    dc0da8f18c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a0]             // 0x0048e0a4    dc0da0f18c00
                         call               _jmp_addr_0x007a1400                          // 0x0048e0aa    e851333100
                         mov.s              ebp, eax                                      // 0x0048e0af    8be8
                         xor.s              eax, eax                                      // 0x0048e0b1    33c0
                         {disp8} jmp        _jmp_addr_0x0048e0d1                          // 0x0048e0b3    eb1c
_jmp_addr_0x0048e0b5:    {disp32} fsub      qword ptr [rdata_bytes + 0x26198]             // 0x0048e0b5    dc2598f18c00
                         mov                ebp, 0x000000ff                               // 0x0048e0bb    bdff000000
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a8]             // 0x0048e0c0    dc0da8f18c00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x261a0]             // 0x0048e0c6    dc0da0f18c00
                         call               _jmp_addr_0x007a1400                          // 0x0048e0cc    e82f333100
_jmp_addr_0x0048e0d1:    {disp8} fld        dword ptr [esp + 0x40]                        // 0x0048e0d1    d9442440
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0048e0d5    8b4c242c
                         {disp8} fsub       dword ptr [esp + 0x10]                        // 0x0048e0d9    d8642410
                         {disp32} mov       edx, dword ptr [edi + 0x00000090]             // 0x0048e0dd    8b9790000000
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0048e0e3    d9442444
                         or                 esi, 0xffffa000                               // 0x0048e0e7    81ce00a0ffff
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0048e0ed    d8642414
                         push               ecx                                           // 0x0048e0f1    51
                         shl                esi, 8                                        // 0x0048e0f2    c1e608
                         or.s               esi, ebp                                      // 0x0048e0f5    0bf5
                         {disp32} fstp      dword ptr [esp + 0x000000b8]                  // 0x0048e0f7    d99c24b8000000
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x0048e0fe    d944244c
                         push               edx                                           // 0x0048e102    52
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0048e103    d8642420
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0048e107    8d4c2418
                         shl                esi, 8                                        // 0x0048e10b    c1e608
                         push               ecx                                           // 0x0048e10e    51
                         {disp32} fstp      dword ptr [esp + 0x000000c4]                  // 0x0048e10f    d99c24c4000000
                         or.s               esi, eax                                      // 0x0048e116    0bf0
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0048e118    d80db4a38a00
                         push               esi                                           // 0x0048e11e    56
                         {disp32} fld       dword ptr [esp + 0x000000c4]                  // 0x0048e11f    d98424c4000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0048e126    d80db4a38a00
                         {disp32} fstp      dword ptr [esp + 0x000000a0]                  // 0x0048e12c    d99c24a0000000
                         {disp32} fld       dword ptr [esp + 0x000000c8]                  // 0x0048e133    d98424c8000000
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0048e13a    d80db4a38a00
                         {disp32} fstp      dword ptr [esp + 0x000000a4]                  // 0x0048e140    d99c24a4000000
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0048e147    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0048e14b    d95c2420
                         {disp32} fld       dword ptr [esp + 0x000000a0]                  // 0x0048e14f    d98424a0000000
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0048e156    d8442424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0048e15a    d95c2424
                         {disp32} fld       dword ptr [esp + 0x000000a4]                  // 0x0048e15e    d98424a4000000
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0048e165    d8442428
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0048e169    d95c2428
                         call               _jmp_addr_0x008465a0                          // 0x0048e16d    e82e843b00
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0048e172    8b442438
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x0048e176    8b742430
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0048e17a    8b54242c
                         {disp32} mov       ecx, dword ptr [edi + 0x00004b30]             // 0x0048e17e    8b8f304b0000
                         add                esp, 0x10                                     // 0x0048e184    83c410
                         inc                eax                                           // 0x0048e187    40
                         add                esi, 0x28                                     // 0x0048e188    83c628
                         add                edx, 0x0c                                     // 0x0048e18b    83c20c
                         add                ebx, 0x04                                     // 0x0048e18e    83c304
                         cmp.s              eax, ecx                                      // 0x0048e191    3bc1
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0048e193    89442428
                         {disp8} mov        dword ptr [esp + 0x20], esi                   // 0x0048e197    89742420
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0048e19b    8954241c
                         {disp32} jl        _jmp_addr_0x0048de52                          // 0x0048e19f    0f8cadfcffff
                         pop                esi                                           // 0x0048e1a5    5e
                         pop                ebp                                           // 0x0048e1a6    5d
                         pop                ebx                                           // 0x0048e1a7    5b
_jmp_addr_0x0048e1a8:    pop                edi                                           // 0x0048e1a8    5f
                         add                esp, 0x000000b8                               // 0x0048e1a9    81c4b8000000
                         ret                                                              // 0x0048e1af    c3

// Snippet: jmptbl, [0x0048e1b0, 0x0048e1c0)
.byte 0x73, 0xde, 0x48, 0x00      // 0x0048e1b0
.byte 0xf5, 0xde, 0x48, 0x00      // 0x0048e1b4
.byte 0x21, 0xdf, 0x48, 0x00      // 0x0048e1b8
.byte 0x2f, 0xe0, 0x48, 0x00      // 0x0048e1bc

