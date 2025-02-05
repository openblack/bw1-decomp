.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00864190
.extern _jmp_addr_0x008641f0
.extern _jmp_addr_0x008642c0
.extern @GameTurnUpdate__5RPlanFi@12
.extern @GetRange__7Point2DCFRC7Point2D@12

.globl _jmp_addr_0x00864040

start_0x00864040_0x00864190:
// Snippet: asm, [0x00864040, 0x00864177)
_jmp_addr_0x00864040:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00864040    8b442404
                         push              ebx                                           // 0x00864044    53
                         push              ebp                                           // 0x00864045    55
                         push              esi                                           // 0x00864046    56
                         mov.s             esi, ecx                                      // 0x00864047    8bf1
                         xor.s             ecx, ecx                                      // 0x00864049    33c9
                         cmp.s             eax, ecx                                      // 0x0086404b    3bc1
                         {disp8} je        _jmp_addr_0x00864065                          // 0x0086404d    7416
                         {disp8} mov       ebp, dword ptr [esp + 0x14]                   // 0x0086404f    8b6c2414
                         {disp32} mov      dword ptr [data_bytes + 0x5df1d0], eax        // 0x00864053    a3d051fa00
                         {disp32} mov      eax, dword ptr [esi + 0x00064060]             // 0x00864058    8b8660400600
                         {disp32} mov      dword ptr [data_bytes + 0x5df1c4], eax        // 0x0086405e    a3c451fa00
                         {disp8} jmp       _jmp_addr_0x0086406b                          // 0x00864063    eb06
_jmp_addr_0x00864065:    {disp32} mov      ebp, dword ptr [esi + 0x0006405c]             // 0x00864065    8bae5c400600
_jmp_addr_0x0086406b:    cmp               dword ptr [esi + 0x000640b8], ecx             // 0x0086406b    398eb8400600
                         {disp32} je       _jmp_addr_0x0086416b                          // 0x00864071    0f84f4000000
                         xor.s             ebx, ebx                                      // 0x00864077    33db
                         cmp.s             ebp, ecx                                      // 0x00864079    3be9
                         {disp32} jle      _jmp_addr_0x0086416b                          // 0x0086407b    0f8eea000000
                         push              edi                                           // 0x00864081    57
                         {disp8} jmp       _jmp_addr_0x00864086                          // 0x00864082    eb02
_jmp_addr_0x00864084:    xor.s             ecx, ecx                                      // 0x00864084    33c9
_jmp_addr_0x00864086:    {disp32} mov      edi, dword ptr [esi + 0x000640b8]             // 0x00864086    8bbeb8400600
                         {disp32} mov      dword ptr [esi + 0x000640bc], ecx             // 0x0086408c    898ebc400600
                         {disp32} mov      ecx, dword ptr [esi + 0x00064090]             // 0x00864092    8b8e90400600
                         {disp8} fld       dword ptr [ecx + 0x4c]                        // 0x00864098    d9414c
                         mov               ecx, 0x00000001                               // 0x0086409b    b901000000
                         cmp.s             edi, ecx                                      // 0x008640a0    3bf9
                         {disp8} jle       _jmp_addr_0x008640cb                          // 0x008640a2    7e27
                         {disp32} lea      edx, dword ptr [esi + 0x00064094]             // 0x008640a4    8d9694400600
_jmp_addr_0x008640aa:    mov               eax, dword ptr [edx]                          // 0x008640aa    8b02
                         {disp8} fcom      dword ptr [eax + 0x4c]                        // 0x008640ac    d8504c
                         fnstsw            ax                                            // 0x008640af    dfe0
                         test              ah, 0x41                                      // 0x008640b1    f6c441
                         {disp8} jne       _jmp_addr_0x008640c3                          // 0x008640b4    750d
                         {disp32} mov      dword ptr [esi + 0x000640bc], ecx             // 0x008640b6    898ebc400600
                         fstp              st(0)                                         // 0x008640bc    ddd8
                         mov               eax, dword ptr [edx]                          // 0x008640be    8b02
                         {disp8} fld       dword ptr [eax + 0x4c]                        // 0x008640c0    d9404c
_jmp_addr_0x008640c3:    inc               ecx                                           // 0x008640c3    41
                         add               edx, 0x04                                     // 0x008640c4    83c204
                         cmp.s             ecx, edi                                      // 0x008640c7    3bcf
                         {disp8} jl        _jmp_addr_0x008640aa                          // 0x008640c9    7cdf
_jmp_addr_0x008640cb:    {disp32} mov      ecx, dword ptr [esi + 0x000640bc]             // 0x008640cb    8b8ebc400600
                         fstp              st(0)                                         // 0x008640d1    ddd8
                         {disp32} mov      edi, dword ptr [esi + ecx * 0x4 + 0x00064090] // 0x008640d3    8bbc8e90400600
                         {disp8} mov       eax, dword ptr [edi + 0x50]                   // 0x008640da    8b4750
                         cmp               eax, 0x05                                     // 0x008640dd    83f805
                         {disp8} je        _jmp_addr_0x00864148                          // 0x008640e0    7466
                         cmp               eax, 0x02                                     // 0x008640e2    83f802
                         {disp8} jne       _jmp_addr_0x008640f0                          // 0x008640e5    7509
                         push              0x0                                           // 0x008640e7    6a00
                         mov.s             ecx, edi                                      // 0x008640e9    8bcf
                         call              @GameTurnUpdate__5RPlanFi@12                  // 0x008640eb    e8b0a80000
_jmp_addr_0x008640f0:    {disp8} mov       eax, dword ptr [edi + 0x50]                   // 0x008640f0    8b4750
                         cmp               eax, 0x05                                     // 0x008640f3    83f805
                         {disp8} ja        _jmp_addr_0x00864151                          // 0x008640f6    7759
                         jmp               dword ptr [eax*4 + 0x864178]                  // 0x008640f8    ff248578418600
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x008640ff    8b442414
                         test              eax, eax                                      // 0x00864103    85c0
                         {disp8} je        _jmp_addr_0x00864136                          // 0x00864105    742f
                         {disp32} lea      edx, dword ptr [esi + 0x0006402c]             // 0x00864107    8d962c400600
                         push              edx                                           // 0x0086410d    52
                         {disp32} lea      ecx, dword ptr [esi + 0x00064074]             // 0x0086410e    8d8e74400600
                         call              @GetRange__7Point2DCFRC7Point2D@12            // 0x00864114    e8a7bc0000
                         {disp8} fcomp     dword ptr [edi + 0x5c]                        // 0x00864119    d85f5c
                         fnstsw            ax                                            // 0x0086411c    dfe0
                         test              ah, 0x41                                      // 0x0086411e    f6c441
                         {disp8} jne       _jmp_addr_0x00864136                          // 0x00864121    7513
                         mov.s             ecx, esi                                      // 0x00864123    8bce
                         {disp32} mov      dword ptr [esi + 0x00064054], 0x00000006      // 0x00864125    c7865440060006000000
                         call              _jmp_addr_0x00864190                          // 0x0086412f    e85c000000
                         {disp8} jmp       _jmp_addr_0x0086414f                          // 0x00864134    eb19
_jmp_addr_0x00864136:    mov.s             ecx, esi                                      // 0x00864136    8bce
                         call              _jmp_addr_0x008641f0                          // 0x00864138    e8b3000000
                         {disp8} jmp       _jmp_addr_0x0086414f                          // 0x0086413d    eb10
                         cmp               dword ptr [esi + 0x00064054], 0x04            // 0x0086413f    83be5440060004
                         {disp8} je        _jmp_addr_0x00864151                          // 0x00864146    7409
_jmp_addr_0x00864148:    mov.s             ecx, esi                                      // 0x00864148    8bce
                         call              _jmp_addr_0x008642c0                          // 0x0086414a    e871010000
_jmp_addr_0x0086414f:    mov.s             ebx, ebp                                      // 0x0086414f    8bdd
_jmp_addr_0x00864151:    inc               ebx                                           // 0x00864151    43
                         cmp.s             ebx, ebp                                      // 0x00864152    3bdd
                         {disp32} jl       _jmp_addr_0x00864084                          // 0x00864154    0f8c2affffff
                         pop               edi                                           // 0x0086415a    5f
                         pop               esi                                           // 0x0086415b    5e
                         pop               ebp                                           // 0x0086415c    5d
                         {disp32} mov      dword ptr [data_bytes + 0x5df1d0], 0x00000000 // 0x0086415d    c705d051fa0000000000
                         pop               ebx                                           // 0x00864167    5b
                         ret               0x0008                                        // 0x00864168    c20800
_jmp_addr_0x0086416b:    pop               esi                                           // 0x0086416b    5e
                         pop               ebp                                           // 0x0086416c    5d
                         {disp32} mov      dword ptr [data_bytes + 0x5df1d0], ecx        // 0x0086416d    890dd051fa00
                         pop               ebx                                           // 0x00864173    5b
                         ret               0x0008                                        // 0x00864174    c20800

// Snippet: db, [0x00864177, 0x00864178)
.byte 0x90                        // 0x00864177

// Snippet: jmptbl, [0x00864178, 0x00864190)
.byte 0x4f, 0x41, 0x86, 0x00      // 0x00864178
.byte 0x4f, 0x41, 0x86, 0x00      // 0x0086417c
.byte 0x51, 0x41, 0x86, 0x00      // 0x00864180
.byte 0x36, 0x41, 0x86, 0x00      // 0x00864184
.byte 0xff, 0x40, 0x86, 0x00      // 0x00864188
.byte 0x3f, 0x41, 0x86, 0x00      // 0x0086418c

