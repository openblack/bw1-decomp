.intel_syntax noprefix
.align 16

.section .data

.section .text

.globl _inflate_fast

_inflate_fast:           sub              esp, 0x14                                     // 0x007c4d70    83ec14
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4d73    8b4c2428
                         push             ebx                                           // 0x007c4d77    53
                         push             ebp                                           // 0x007c4d78    55
                         push             esi                                           // 0x007c4d79    56
                         {disp8} mov      ebx, dword ptr [ecx + 0x34]                   // 0x007c4d7a    8b5934
                         {disp8} mov      esi, dword ptr [ecx + 0x30]                   // 0x007c4d7d    8b7130
                         {disp8} mov      edx, dword ptr [ecx + 0x20]                   // 0x007c4d80    8b5120
                         push             edi                                           // 0x007c4d83    57
                         {disp8} mov      edi, dword ptr [esp + 0x3c]                   // 0x007c4d84    8b7c243c
                         cmp.s            ebx, esi                                      // 0x007c4d88    3bde
                         {disp8} mov      dword ptr [esp + 0x14], ebx                   // 0x007c4d8a    895c2414
                         {disp8} mov      eax, dword ptr [edi + 0x04]                   // 0x007c4d8e    8b4704
                         mov              ebp, dword ptr [edi]                          // 0x007c4d91    8b2f
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4d93    89442410
                         {disp8} mov      eax, dword ptr [ecx + 0x1c]                   // 0x007c4d97    8b411c
                         {disp8} jae      _jmp_addr_0x007c4da5                          // 0x007c4d9a    7309
                         sub.s            esi, ebx                                      // 0x007c4d9c    2bf3
                         dec              esi                                           // 0x007c4d9e    4e
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4d9f    89742418
                         {disp8} jmp      _jmp_addr_0x007c4dae                          // 0x007c4da3    eb09
_jmp_addr_0x007c4da5:    {disp8} mov      ecx, dword ptr [ecx + 0x2c]                   // 0x007c4da5    8b492c
                         sub.s            ecx, ebx                                      // 0x007c4da8    2bcb
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007c4daa    894c2418
_jmp_addr_0x007c4dae:    {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4dae    8b4c2428
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c2d350]       // 0x007c4db2    8b0c8d50d3c200
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c4db9    894c241c
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4dbd    8b4c242c
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + 0x00c2d350]       // 0x007c4dc1    8b0c8d50d3c200
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c4dc8    894c2420
_jmp_addr_0x007c4dcc:    cmp              eax, 0x14                                     // 0x007c4dcc    83f814
                         {disp8} jae      _jmp_addr_0x007c4df0                          // 0x007c4dcf    731f
_jmp_addr_0x007c4dd1:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c4dd1    8b4c2410
                         dec              ecx                                           // 0x007c4dd5    49
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4dd6    894c2410
                         xor.s            ecx, ecx                                      // 0x007c4dda    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4ddc    8a4d00
                         mov.s            esi, ecx                                      // 0x007c4ddf    8bf1
                         mov.s            ecx, eax                                      // 0x007c4de1    8bc8
                         shl              esi, cl                                       // 0x007c4de3    d3e6
                         add              eax, 0x08                                     // 0x007c4de5    83c008
                         or.s             edx, esi                                      // 0x007c4de8    0bd6
                         inc              ebp                                           // 0x007c4dea    45
                         cmp              eax, 0x14                                     // 0x007c4deb    83f814
                         .byte            0x72, 0xe1// {disp8} jb _jmp_addr_0x007c4dd1  // 0x007c4dee    72e1
_jmp_addr_0x007c4df0:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c4df0    8b4c241c
                         {disp8} mov      esi, dword ptr [esp + 0x30]                   // 0x007c4df4    8b742430
                         and.s            ecx, edx                                      // 0x007c4df8    23ca
                         xor.s            ebx, ebx                                      // 0x007c4dfa    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4dfc    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4dff    8d34ce
                         test             ebx, ebx                                      // 0x007c4e02    85db
                         {disp32} je      _jmp_addr_0x007c4fa8                          // 0x007c4e04    0f849e010000
                         xor.s            ecx, ecx                                      // 0x007c4e0a    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4e0c    8a4e01
                         shr              edx, cl                                       // 0x007c4e0f    d3ea
                         sub.s            eax, ecx                                      // 0x007c4e11    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4e13    894c242c
                         test             bl, 0x10                                      // 0x007c4e17    f6c310
                         {disp8} jne      _jmp_addr_0x007c4e55                          // 0x007c4e1a    7539
_jmp_addr_0x007c4e1c:    test             bl, 0x40                                      // 0x007c4e1c    f6c340
                         {disp32} jne     _jmp_addr_0x007c504f                          // 0x007c4e1f    0f852a020000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4e25    8b0c9d50d3c200
                         {disp8} mov      ebx, dword ptr [esi + 0x04]                   // 0x007c4e2c    8b5e04
                         and.s            ecx, edx                                      // 0x007c4e2f    23ca
                         add.s            ecx, ebx                                      // 0x007c4e31    03cb
                         xor.s            ebx, ebx                                      // 0x007c4e33    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4e35    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4e38    8d34ce
                         test             ebx, ebx                                      // 0x007c4e3b    85db
                         {disp32} je      _jmp_addr_0x007c4fa8                          // 0x007c4e3d    0f8465010000
                         xor.s            ecx, ecx                                      // 0x007c4e43    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4e45    8a4e01
                         shr              edx, cl                                       // 0x007c4e48    d3ea
                         sub.s            eax, ecx                                      // 0x007c4e4a    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4e4c    894c242c
                         test             bl, 0x10                                      // 0x007c4e50    f6c310
                         {disp8} je       _jmp_addr_0x007c4e1c                          // 0x007c4e53    74c7
_jmp_addr_0x007c4e55:    and              ebx, 0x0f                                     // 0x007c4e55    83e30f
                         sub.s            eax, ebx                                      // 0x007c4e58    2bc3
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4e5a    8b0c9d50d3c200
                         and.s            ecx, edx                                      // 0x007c4e61    23ca
                         add              ecx, dword ptr [esi + 0x04]                   // 0x007c4e63    034e04
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c4e66    894c2428
                         mov.s            ecx, ebx                                      // 0x007c4e6a    8bcb
                         shr              edx, cl                                       // 0x007c4e6c    d3ea
                         cmp              eax, 0x0f                                     // 0x007c4e6e    83f80f
                         {disp8} jae      _jmp_addr_0x007c4e92                          // 0x007c4e71    731f
_jmp_addr_0x007c4e73:    {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c4e73    8b4c2410
                         dec              ecx                                           // 0x007c4e77    49
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4e78    894c2410
                         xor.s            ecx, ecx                                      // 0x007c4e7c    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4e7e    8a4d00
                         mov.s            esi, ecx                                      // 0x007c4e81    8bf1
                         mov.s            ecx, eax                                      // 0x007c4e83    8bc8
                         shl              esi, cl                                       // 0x007c4e85    d3e6
                         add              eax, 0x08                                     // 0x007c4e87    83c008
                         or.s             edx, esi                                      // 0x007c4e8a    0bd6
                         inc              ebp                                           // 0x007c4e8c    45
                         cmp              eax, 0x0f                                     // 0x007c4e8d    83f80f
                         .byte            0x72, 0xe1// {disp8} jb _jmp_addr_0x007c4e73  // 0x007c4e90    72e1
_jmp_addr_0x007c4e92:    {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4e92    8b4c2420
                         {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c4e96    8b742434
                         and.s            ecx, edx                                      // 0x007c4e9a    23ca
                         xor.s            ebx, ebx                                      // 0x007c4e9c    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4e9e    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4ea1    8d34ce
                         xor.s            ecx, ecx                                      // 0x007c4ea4    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4ea6    8a4e01
                         shr              edx, cl                                       // 0x007c4ea9    d3ea
                         sub.s            eax, ecx                                      // 0x007c4eab    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4ead    894c242c
                         test             bl, 0x10                                      // 0x007c4eb1    f6c310
                         {disp8} jne      _jmp_addr_0x007c4ee7                          // 0x007c4eb4    7531
_jmp_addr_0x007c4eb6:    test             bl, 0x40                                      // 0x007c4eb6    f6c340
                         {disp32} jne     _jmp_addr_0x007c4fe2                          // 0x007c4eb9    0f8523010000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4ebf    8b0c9d50d3c200
                         {disp8} mov      ebx, dword ptr [esi + 0x04]                   // 0x007c4ec6    8b5e04
                         and.s            ecx, edx                                      // 0x007c4ec9    23ca
                         add.s            ecx, ebx                                      // 0x007c4ecb    03cb
                         xor.s            ebx, ebx                                      // 0x007c4ecd    33db
                         mov              bl, byte ptr [esi + ecx * 0x8]                // 0x007c4ecf    8a1cce
                         lea              esi, dword ptr [esi + ecx * 0x8]              // 0x007c4ed2    8d34ce
                         xor.s            ecx, ecx                                      // 0x007c4ed5    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4ed7    8a4e01
                         shr              edx, cl                                       // 0x007c4eda    d3ea
                         sub.s            eax, ecx                                      // 0x007c4edc    2bc1
                         {disp8} mov      dword ptr [esp + 0x2c], ecx                   // 0x007c4ede    894c242c
                         test             bl, 0x10                                      // 0x007c4ee2    f6c310
                         {disp8} je       _jmp_addr_0x007c4eb6                          // 0x007c4ee5    74cf
_jmp_addr_0x007c4ee7:    and              ebx, 0x0f                                     // 0x007c4ee7    83e30f
                         cmp.s            eax, ebx                                      // 0x007c4eea    3bc3
                         {disp8} jae      _jmp_addr_0x007c4f0c                          // 0x007c4eec    731e
_jmp_addr_0x007c4eee:    {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4eee    8b7c2410
                         xor.s            ecx, ecx                                      // 0x007c4ef2    33c9
                         {disp8} mov      cl, byte ptr [ebp + 0x00]                     // 0x007c4ef4    8a4d00
                         dec              edi                                           // 0x007c4ef7    4f
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c4ef8    897c2410
                         mov.s            edi, ecx                                      // 0x007c4efc    8bf9
                         mov.s            ecx, eax                                      // 0x007c4efe    8bc8
                         add              eax, 0x08                                     // 0x007c4f00    83c008
                         shl              edi, cl                                       // 0x007c4f03    d3e7
                         or.s             edx, edi                                      // 0x007c4f05    0bd7
                         inc              ebp                                           // 0x007c4f07    45
                         cmp.s            eax, ebx                                      // 0x007c4f08    3bc3
                         .byte            0x72, 0xe2// {disp8} jb _jmp_addr_0x007c4eee  // 0x007c4f0a    72e2
_jmp_addr_0x007c4f0c:    {disp32} mov     edi, dword ptr [ebx * 0x4 + 0x00c2d350]       // 0x007c4f0c    8b3c9d50d3c200
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                   // 0x007c4f13    8b4e04
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c4f16    8b742418
                         and.s            edi, edx                                      // 0x007c4f1a    23fa
                         add.s            edi, ecx                                      // 0x007c4f1c    03f9
                         mov.s            ecx, ebx                                      // 0x007c4f1e    8bcb
                         shr              edx, cl                                       // 0x007c4f20    d3ea
                         {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4f22    8b4c2428
                         sub.s            eax, ebx                                      // 0x007c4f26    2bc3
                         sub.s            esi, ecx                                      // 0x007c4f28    2bf1
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007c4f2a    8b4c2438
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4f2e    89742418
                         {disp8} mov      esi, dword ptr [ecx + 0x28]                   // 0x007c4f32    8b7128
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c4f35    8b4c2414
                         mov.s            ebx, ecx                                      // 0x007c4f39    8bd9
                         sub.s            ebx, esi                                      // 0x007c4f3b    2bde
                         cmp.s            ebx, edi                                      // 0x007c4f3d    3bdf
                         .byte            0x72, 0x1f// {disp8} jb _jmp_addr_0x007c4f60  // 0x007c4f3f    721f
                         mov.s            esi, ecx                                      // 0x007c4f41    8bf1
                         sub.s            esi, edi                                      // 0x007c4f43    2bf7
                         {disp8} mov      edi, dword ptr [esp + 0x28]                   // 0x007c4f45    8b7c2428
                         inc              ecx                                           // 0x007c4f49    41
                         mov              bl, byte ptr [esi]                            // 0x007c4f4a    8a1e
                         inc              esi                                           // 0x007c4f4c    46
                         {disp8} mov      byte ptr [ecx + -0x01], bl                    // 0x007c4f4d    8859ff
                         inc              ecx                                           // 0x007c4f50    41
                         mov              bl, byte ptr [esi]                            // 0x007c4f51    8a1e
                         inc              esi                                           // 0x007c4f53    46
                         {disp8} mov      byte ptr [ecx + -0x01], bl                    // 0x007c4f54    8859ff
                         sub              edi, 0x02                                     // 0x007c4f57    83ef02
                         {disp8} mov      dword ptr [esp + 0x28], edi                   // 0x007c4f5a    897c2428
                         {disp8} jmp      _jmp_addr_0x007c4f8d                          // 0x007c4f5e    eb2d
_jmp_addr_0x007c4f60:    sub.s            esi, ecx                                      // 0x007c4f60    2bf1
                         {disp8} mov      ebx, dword ptr [esp + 0x28]                   // 0x007c4f62    8b5c2428
                         add.s            esi, edi                                      // 0x007c4f66    03f7
                         mov.s            edi, esi                                      // 0x007c4f68    8bfe
                         {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c4f6a    8b742438
                         {disp8} mov      esi, dword ptr [esi + 0x2c]                   // 0x007c4f6e    8b762c
                         sub.s            esi, edi                                      // 0x007c4f71    2bf7
                         cmp.s            ebx, edi                                      // 0x007c4f73    3bdf
                         {disp8} jbe      _jmp_addr_0x007c4f8d                          // 0x007c4f75    7616
                         sub.s            ebx, edi                                      // 0x007c4f77    2bdf
                         {disp8} mov      dword ptr [esp + 0x28], ebx                   // 0x007c4f79    895c2428
_jmp_addr_0x007c4f7d:    mov              bl, byte ptr [esi]                            // 0x007c4f7d    8a1e
                         mov              byte ptr [ecx], bl                            // 0x007c4f7f    8819
                         inc              ecx                                           // 0x007c4f81    41
                         inc              esi                                           // 0x007c4f82    46
                         dec              edi                                           // 0x007c4f83    4f
                         {disp8} jne      _jmp_addr_0x007c4f7d                          // 0x007c4f84    75f7
                         {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c4f86    8b742438
                         {disp8} mov      esi, dword ptr [esi + 0x28]                   // 0x007c4f8a    8b7628
_jmp_addr_0x007c4f8d:    mov              bl, byte ptr [esi]                            // 0x007c4f8d    8a1e
                         {disp8} mov      edi, dword ptr [esp + 0x28]                   // 0x007c4f8f    8b7c2428
                         mov              byte ptr [ecx], bl                            // 0x007c4f93    8819
                         inc              ecx                                           // 0x007c4f95    41
                         inc              esi                                           // 0x007c4f96    46
                         dec              edi                                           // 0x007c4f97    4f
                         {disp8} mov      dword ptr [esp + 0x28], edi                   // 0x007c4f98    897c2428
                         {disp8} jne      _jmp_addr_0x007c4f8d                          // 0x007c4f9c    75ef
                         {disp8} mov      edi, dword ptr [esp + 0x3c]                   // 0x007c4f9e    8b7c243c
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x007c4fa2    894c2414
                         {disp8} jmp      _jmp_addr_0x007c4fc8                          // 0x007c4fa6    eb20
_jmp_addr_0x007c4fa8:    xor.s            ecx, ecx                                      // 0x007c4fa8    33c9
                         {disp8} mov      cl, byte ptr [esi + 0x01]                     // 0x007c4faa    8a4e01
                         shr              edx, cl                                       // 0x007c4fad    d3ea
                         sub.s            eax, ecx                                      // 0x007c4faf    2bc1
                         {disp8} mov      cl, byte ptr [esi + 0x04]                     // 0x007c4fb1    8a4e04
                         {disp8} mov      esi, dword ptr [esp + 0x14]                   // 0x007c4fb4    8b742414
                         mov              byte ptr [esi], cl                            // 0x007c4fb8    880e
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c4fba    8b4c2418
                         inc              esi                                           // 0x007c4fbe    46
                         dec              ecx                                           // 0x007c4fbf    49
                         {disp8} mov      dword ptr [esp + 0x14], esi                   // 0x007c4fc0    89742414
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007c4fc4    894c2418
_jmp_addr_0x007c4fc8:    {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007c4fc8    8b4c2418
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c4fcc    8b5c2410
                         cmp              ecx, 0x00000102                               // 0x007c4fd0    81f902010000
                         .byte            0x72, 0x2c// {disp8} jb _jmp_addr_0x007c5004  // 0x007c4fd6    722c
                         cmp              ebx, 0x0a                                     // 0x007c4fd8    83fb0a
                         .byte            0x72, 0x27// {disp8} jb _jmp_addr_0x007c5004  // 0x007c4fdb    7227
                         {disp32} jmp     _jmp_addr_0x007c4dcc                          // 0x007c4fdd    e9eafdffff
_jmp_addr_0x007c4fe2:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c4fe2    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c4fe5    8b5c2410
                         mov.s            esi, eax                                      // 0x007c4fe9    8bf0
                         sub.s            ecx, ebx                                      // 0x007c4feb    2bcb
                         shr              esi, 3                                        // 0x007c4fed    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c4ff0    3bf1
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c120            // 0x007c4ff2    c7471820c1c200
                         {disp32} jae     _jmp_addr_0x007c50c1                          // 0x007c4ff9    0f83c2000000
                         {disp32} jmp     _jmp_addr_0x007c50bf                          // 0x007c4fff    e9bb000000
_jmp_addr_0x007c5004:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c5004    8b4f04
                         mov.s            esi, eax                                      // 0x007c5007    8bf0
                         sub.s            ecx, ebx                                      // 0x007c5009    2bcb
                         shr              esi, 3                                        // 0x007c500b    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c500e    3bf1
                         {disp8} jae      _jmp_addr_0x007c5014                          // 0x007c5010    7302
                         mov.s            ecx, esi                                      // 0x007c5012    8bce
_jmp_addr_0x007c5014:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c5014    8b742438
                         sub.s            ebp, ecx                                      // 0x007c5018    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c501a    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c501d    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c5024    2bc2
                         add.s            ecx, ebx                                      // 0x007c5026    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c5028    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c502b    8b17
                         mov.s            eax, ebp                                      // 0x007c502d    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c502f    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c5032    8b4f08
                         sub.s            eax, edx                                      // 0x007c5035    2bc2
                         add.s            ecx, eax                                      // 0x007c5037    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c5039    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c503b    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c503e    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c5042    894e34
                         pop              edi                                           // 0x007c5045    5f
                         pop              esi                                           // 0x007c5046    5e
                         pop              ebp                                           // 0x007c5047    5d
                         xor.s            eax, eax                                      // 0x007c5048    33c0
                         pop              ebx                                           // 0x007c504a    5b
                         add              esp, 0x14                                     // 0x007c504b    83c414
                         ret                                                            // 0x007c504e    c3
_jmp_addr_0x007c504f:    test             bl, 0x20                                      // 0x007c504f    f6c320
                         {disp8} je       _jmp_addr_0x007c50a6                          // 0x007c5052    7452
                         {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c5054    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c5057    8b5c2410
                         mov.s            esi, eax                                      // 0x007c505b    8bf0
                         sub.s            ecx, ebx                                      // 0x007c505d    2bcb
                         shr              esi, 3                                        // 0x007c505f    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c5062    3bf1
                         {disp8} jae      _jmp_addr_0x007c5068                          // 0x007c5064    7302
                         mov.s            ecx, esi                                      // 0x007c5066    8bce
_jmp_addr_0x007c5068:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c5068    8b742438
                         sub.s            ebp, ecx                                      // 0x007c506c    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c506e    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c5071    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c5078    2bc2
                         add.s            ecx, ebx                                      // 0x007c507a    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c507c    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c507f    8b17
                         mov.s            eax, ebp                                      // 0x007c5081    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c5083    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c5086    8b4f08
                         sub.s            eax, edx                                      // 0x007c5089    2bc2
                         add.s            ecx, eax                                      // 0x007c508b    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c508d    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c508f    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c5092    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c5096    894e34
                         pop              edi                                           // 0x007c5099    5f
                         pop              esi                                           // 0x007c509a    5e
                         pop              ebp                                           // 0x007c509b    5d
                         mov              eax, 0x00000001                               // 0x007c509c    b801000000
                         pop              ebx                                           // 0x007c50a1    5b
                         add              esp, 0x14                                     // 0x007c50a2    83c414
                         ret                                                            // 0x007c50a5    c3
_jmp_addr_0x007c50a6:    {disp8} mov      ecx, dword ptr [edi + 0x04]                   // 0x007c50a6    8b4f04
                         {disp8} mov      ebx, dword ptr [esp + 0x10]                   // 0x007c50a9    8b5c2410
                         mov.s            esi, eax                                      // 0x007c50ad    8bf0
                         sub.s            ecx, ebx                                      // 0x007c50af    2bcb
                         shr              esi, 3                                        // 0x007c50b1    c1ee03
                         cmp.s            esi, ecx                                      // 0x007c50b4    3bf1
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2c138            // 0x007c50b6    c7471838c1c200
                         {disp8} jae      _jmp_addr_0x007c50c1                          // 0x007c50bd    7302
_jmp_addr_0x007c50bf:    mov.s            ecx, esi                                      // 0x007c50bf    8bce
_jmp_addr_0x007c50c1:    {disp8} mov      esi, dword ptr [esp + 0x38]                   // 0x007c50c1    8b742438
                         sub.s            ebp, ecx                                      // 0x007c50c5    2be9
                         {disp8} mov      dword ptr [esi + 0x20], edx                   // 0x007c50c7    895620
                         {disp32} lea     edx, dword ptr [ecx * 0x8 + 0x00000000]       // 0x007c50ca    8d14cd00000000
                         sub.s            eax, edx                                      // 0x007c50d1    2bc2
                         add.s            ecx, ebx                                      // 0x007c50d3    03cb
                         {disp8} mov      dword ptr [esi + 0x1c], eax                   // 0x007c50d5    89461c
                         mov              edx, dword ptr [edi]                          // 0x007c50d8    8b17
                         mov.s            eax, ebp                                      // 0x007c50da    8bc5
                         {disp8} mov      dword ptr [edi + 0x04], ecx                   // 0x007c50dc    894f04
                         {disp8} mov      ecx, dword ptr [edi + 0x08]                   // 0x007c50df    8b4f08
                         sub.s            eax, edx                                      // 0x007c50e2    2bc2
                         add.s            ecx, eax                                      // 0x007c50e4    03c8
                         mov              dword ptr [edi], ebp                          // 0x007c50e6    892f
                         {disp8} mov      dword ptr [edi + 0x08], ecx                   // 0x007c50e8    894f08
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c50eb    8b4c2414
                         {disp8} mov      dword ptr [esi + 0x34], ecx                   // 0x007c50ef    894e34
                         pop              edi                                           // 0x007c50f2    5f
                         pop              esi                                           // 0x007c50f3    5e
                         pop              ebp                                           // 0x007c50f4    5d
                         mov              eax, 0xfffffffd                               // 0x007c50f5    b8fdffffff
                         pop              ebx                                           // 0x007c50fa    5b
                         add              esp, 0x14                                     // 0x007c50fb    83c414
                         ret                                                            // 0x007c50fe    c3
                         nop                                                            // 0x007c50ff    90
