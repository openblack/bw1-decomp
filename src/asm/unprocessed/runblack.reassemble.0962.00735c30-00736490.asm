.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00735bb0
.extern _jmp_addr_0x00737160
.extern _jmp_addr_0x00737170
.extern __chkstk

.globl _jmp_addr_0x00735c30

start_0x00735c30_0x00736490:
// Snippet: asm, [0x00735c30, 0x0073643c)
_jmp_addr_0x00735c30:    mov              eax, 0x00001308                               // 0x00735c30    b808130000
                         call             __chkstk                                      // 0x00735c35    e876120900
                         push             ebx                                           // 0x00735c3a    53
                         {disp32} mov     ebx, dword ptr [esp + 0x0000131c]             // 0x00735c3b    8b9c241c130000
                         {disp8} mov      dword ptr [esp + 0x0c], ebx                   // 0x00735c42    895c240c
                         and              ebx, 0xfffffff7                               // 0x00735c46    83e3f7
                         push             ebp                                           // 0x00735c49    55
                         mov.s            eax, ebx                                      // 0x00735c4a    8bc3
                         {disp8} mov      dword ptr [esp + 0x48], ecx                   // 0x00735c4c    894c2448
                         {disp32} mov     ecx, dword ptr [esp + 0x00001314]             // 0x00735c50    8b8c2414130000
                         and              eax, 0x03                                     // 0x00735c57    83e003
                         push             esi                                           // 0x00735c5a    56
                         xor.s            ebp, ebp                                      // 0x00735c5b    33ed
                         cmp              eax, 0x03                                     // 0x00735c5d    83f803
                         push             edi                                           // 0x00735c60    57
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x00735c61    894c2410
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x00735c65    894c2420
                         {disp8} ja       _jmp_addr_0x00735ca4                          // 0x00735c69    7739
                         jmp              dword ptr [eax*4 + 0x73643c]                  // 0x00735c6b    ff24853c647300
                         {disp8} mov      dword ptr [esp + 0x28], ebp                   // 0x00735c72    896c2428
                         {disp8} mov      dword ptr [esp + 0x24], 0x00000001            // 0x00735c76    c744242401000000
                         {disp8} jmp      _jmp_addr_0x00735ca4                          // 0x00735c7e    eb24
                         {disp8} mov      dword ptr [esp + 0x28], 0x00000001            // 0x00735c80    c744242801000000
                         {disp8} jmp      _jmp_addr_0x00735ca0                          // 0x00735c88    eb16
                         {disp8} mov      dword ptr [esp + 0x28], ebp                   // 0x00735c8a    896c2428
                         {disp8} mov      dword ptr [esp + 0x24], 0xffffffff            // 0x00735c8e    c7442424ffffffff
                         {disp8} jmp      _jmp_addr_0x00735ca4                          // 0x00735c96    eb0c
                         {disp8} mov      dword ptr [esp + 0x28], 0xffffffff            // 0x00735c98    c7442428ffffffff
_jmp_addr_0x00735ca0:    {disp8} mov      dword ptr [esp + 0x24], ebp                   // 0x00735ca0    896c2424
_jmp_addr_0x00735ca4:    {disp8} mov      dword ptr [esp + 0x34], ecx                   // 0x00735ca4    894c2434
                         {disp32} lea     ecx, dword ptr [esp + 0x0000131c]             // 0x00735ca8    8d8c241c130000
                         call             _jmp_addr_0x00737160                          // 0x00735caf    e8ac140000
                         xor.s            ecx, ecx                                      // 0x00735cb4    33c9
                         mov              cx, word ptr [eax]                            // 0x00735cb6    668b08
                         mov.s            esi, ecx                                      // 0x00735cb9    8bf1
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00735cbb    8d8c2420130000
                         call             _jmp_addr_0x00737160                          // 0x00735cc2    e899140000
                         xor.s            edi, edi                                      // 0x00735cc7    33ff
                         mov              di, word ptr [eax]                            // 0x00735cc9    668b38
                         {disp32} lea     ecx, dword ptr [esp + 0x0000131c]             // 0x00735ccc    8d8c241c130000
                         sub.s            edi, esi                                      // 0x00735cd3    2bfe
                         {disp8} mov      dword ptr [esp + 0x4c], edi                   // 0x00735cd5    897c244c
                         call             _jmp_addr_0x00737170                          // 0x00735cd9    e892140000
                         xor.s            edx, edx                                      // 0x00735cde    33d2
                         mov              dx, word ptr [eax]                            // 0x00735ce0    668b10
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00735ce3    8d8c2420130000
                         mov.s            esi, edx                                      // 0x00735cea    8bf2
                         call             _jmp_addr_0x00737170                          // 0x00735cec    e87f140000
                         xor.s            ecx, ecx                                      // 0x00735cf1    33c9
                         mov              cx, word ptr [eax]                            // 0x00735cf3    668b08
                         mov.s            edx, esi                                      // 0x00735cf6    8bd6
                         xor.s            eax, eax                                      // 0x00735cf8    33c0
                         {disp8} mov      dword ptr [esp + 0x3c], 0x00000000            // 0x00735cfa    c744243c00000000
                         mov.s            esi, ecx                                      // 0x00735d02    8bf1
                         sub.s            esi, edx                                      // 0x00735d04    2bf2
                         test             edi, edi                                      // 0x00735d06    85ff
                         setle            al                                            // 0x00735d08    0f9ec0
                         xor.s            ecx, ecx                                      // 0x00735d0b    33c9
                         {disp8} mov      dword ptr [esp + 0x30], esi                   // 0x00735d0d    89742430
                         dec              eax                                           // 0x00735d11    48
                         and              eax, 0x02                                     // 0x00735d12    83e002
                         dec              eax                                           // 0x00735d15    48
                         test             esi, esi                                      // 0x00735d16    85f6
                         setle            cl                                            // 0x00735d18    0f9ec1
                         {disp8} mov      dword ptr [esp + 0x54], eax                   // 0x00735d1b    89442454
                         dec              ecx                                           // 0x00735d1f    49
                         and              ecx, 0x02                                     // 0x00735d20    83e102
                         dec              ecx                                           // 0x00735d23    49
                         {disp8} mov      dword ptr [esp + 0x40], ecx                   // 0x00735d24    894c2440
                         {disp8} jmp      _jmp_addr_0x00735d2e                          // 0x00735d28    eb04
_jmp_addr_0x00735d2a:    {disp8} mov      esi, dword ptr [esp + 0x30]                   // 0x00735d2a    8b742430
_jmp_addr_0x00735d2e:    {disp8} lea      ecx, dword ptr [esp + 0x34]                   // 0x00735d2e    8d4c2434
                         call             _jmp_addr_0x00737160                          // 0x00735d32    e829140000
                         xor.s            edx, edx                                      // 0x00735d37    33d2
                         mov              dx, word ptr [eax]                            // 0x00735d39    668b10
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00735d3c    8d4c2410
                         mov.s            edi, edx                                      // 0x00735d40    8bfa
                         call             _jmp_addr_0x00737160                          // 0x00735d42    e819140000
                         xor.s            ecx, ecx                                      // 0x00735d47    33c9
                         mov              cx, word ptr [eax]                            // 0x00735d49    668b08
                         {disp8} mov      eax, dword ptr [esp + 0x4c]                   // 0x00735d4c    8b44244c
                         sub.s            ecx, edi                                      // 0x00735d50    2bcf
                         cmp.s            ecx, eax                                      // 0x00735d52    3bc8
                         {disp8} jne      _jmp_addr_0x00735d7e                          // 0x00735d54    7528
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                   // 0x00735d56    8d4c2434
                         call             _jmp_addr_0x00737170                          // 0x00735d5a    e811140000
                         xor.s            edx, edx                                      // 0x00735d5f    33d2
                         mov              dx, word ptr [eax]                            // 0x00735d61    668b10
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00735d64    8d4c2410
                         mov.s            edi, edx                                      // 0x00735d68    8bfa
                         call             _jmp_addr_0x00737170                          // 0x00735d6a    e801140000
                         xor.s            ecx, ecx                                      // 0x00735d6f    33c9
                         mov              cx, word ptr [eax]                            // 0x00735d71    668b08
                         sub.s            ecx, edi                                      // 0x00735d74    2bcf
                         cmp.s            ecx, esi                                      // 0x00735d76    3bce
                         {disp32} je      _jmp_addr_0x0073642d                          // 0x00735d78    0f84af060000
_jmp_addr_0x00735d7e:    cmp              ebp, 0x00000258                               // 0x00735d7e    81fd58020000
                         {disp32} jge     _jmp_addr_0x0073642d                          // 0x00735d84    0f8da3060000
                         test             bl, 0x04                                      // 0x00735d8a    f6c304
                         {disp32} je      _jmp_addr_0x00735f7d                          // 0x00735d8d    0f84ea010000
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x00735d93    8b542410
                         {disp32} mov     eax, dword ptr [esp + 0x00001324]             // 0x00735d97    8b842424130000
                         {disp32} mov     ecx, dword ptr [esp + 0x0000132c]             // 0x00735d9e    8b8c242c130000
                         mov              dword ptr [eax + ebp * 0x4], edx              // 0x00735da5    8914a8
                         mov              dword ptr [ecx + ebp * 0x4], ebx              // 0x00735da8    891ca9
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                   // 0x00735dab    8d4c2434
                         inc              ebp                                           // 0x00735daf    45
                         call             _jmp_addr_0x00737160                          // 0x00735db0    e8ab130000
                         xor.s            edx, edx                                      // 0x00735db5    33d2
                         mov              dx, word ptr [eax]                            // 0x00735db7    668b10
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00735dba    8d4c2410
                         mov.s            edi, edx                                      // 0x00735dbe    8bfa
                         call             _jmp_addr_0x00737160                          // 0x00735dc0    e89b130000
                         xor.s            ecx, ecx                                      // 0x00735dc5    33c9
                         mov              cx, word ptr [eax]                            // 0x00735dc7    668b08
                         mov.s            edx, ecx                                      // 0x00735dca    8bd1
                         sub.s            edx, edi                                      // 0x00735dcc    2bd7
                         imul             edx, esi                                      // 0x00735dce    0fafd6
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                   // 0x00735dd1    8d4c2434
                         {disp8} mov      dword ptr [esp + 0x2c], edx                   // 0x00735dd5    8954242c
                         call             _jmp_addr_0x00737170                          // 0x00735dd9    e892130000
                         xor.s            edx, edx                                      // 0x00735dde    33d2
                         mov              dx, word ptr [eax]                            // 0x00735de0    668b10
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00735de3    8d4c2410
                         mov.s            esi, edx                                      // 0x00735de7    8bf2
                         call             _jmp_addr_0x00737170                          // 0x00735de9    e882130000
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x00735dee    8b54242c
                         {disp8} mov      edi, dword ptr [esp + 0x40]                   // 0x00735df2    8b7c2440
                         xor.s            ecx, ecx                                      // 0x00735df6    33c9
                         mov              cx, word ptr [eax]                            // 0x00735df8    668b08
                         sub.s            ecx, esi                                      // 0x00735dfb    2bce
                         imul             ecx, dword ptr [esp + 0x4c]                   // 0x00735dfd    0faf4c244c
                         {disp8} mov      esi, dword ptr [esp + 0x54]                   // 0x00735e02    8b742454
                         sub.s            edx, ecx                                      // 0x00735e06    2bd1
                         imul             edx, edi                                      // 0x00735e08    0fafd7
                         imul             edx, esi                                      // 0x00735e0b    0fafd6
                         test             edx, edx                                      // 0x00735e0e    85d2
                         {disp8} jg       _jmp_addr_0x00735e3c                          // 0x00735e10    7f2a
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00735e12    8d4c2410
                         call             _jmp_addr_0x00737160                          // 0x00735e16    e845130000
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00735e1b    8d8c2420130000
                         {disp8} mov      dword ptr [esp + 0x2c], eax                   // 0x00735e22    8944242c
                         call             _jmp_addr_0x00737160                          // 0x00735e26    e835130000
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x00735e2b    8b4c242c
                         mov              dx, word ptr [ecx]                            // 0x00735e2f    668b11
                         cmp              dx, word ptr [eax]                            // 0x00735e32    663b10
                         {disp8} mov      byte ptr [esp + 0x17], 0x00                   // 0x00735e35    c644241700
                         {disp8} jne      _jmp_addr_0x00735e41                          // 0x00735e3a    7505
_jmp_addr_0x00735e3c:    {disp8} mov      byte ptr [esp + 0x17], 0x01                   // 0x00735e3c    c644241701
_jmp_addr_0x00735e41:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x00735e41    8b442410
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x00735e45    8944241c
                         {disp8} mov      al, byte ptr [esp + 0x17]                     // 0x00735e49    8a442417
                         test             al, al                                        // 0x00735e4d    84c0
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                   // 0x00735e4f    8d4c241c
                         {disp8} je       _jmp_addr_0x00735e5f                          // 0x00735e53    740a
                         call             _jmp_addr_0x00737170                          // 0x00735e55    e816130000
                         add              word ptr [eax], di                            // 0x00735e5a    660138
                         {disp8} jmp      _jmp_addr_0x00735e67                          // 0x00735e5d    eb08
_jmp_addr_0x00735e5f:    call             _jmp_addr_0x00737160                          // 0x00735e5f    e8fc120000
                         add              word ptr [eax], si                            // 0x00735e64    660130
_jmp_addr_0x00735e67:    {disp32} mov     ecx, dword ptr [esp + 0x00001334]             // 0x00735e67    8b8c2434130000
                         {disp32} mov     edx, dword ptr [esp + 0x00001330]             // 0x00735e6e    8b942430130000
                         push             ecx                                           // 0x00735e75    51
                         {disp8} mov      ecx, dword ptr [esp + 0x54]                   // 0x00735e76    8b4c2454
                         push             edx                                           // 0x00735e7a    52
                         {disp8} lea      eax, dword ptr [esp + 0x24]                   // 0x00735e7b    8d442424
                         push             eax                                           // 0x00735e7f    50
                         call             _jmp_addr_0x00735bb0                          // 0x00735e80    e82bfdffff
                         test             al, al                                        // 0x00735e85    84c0
                         {disp32} je      _jmp_addr_0x00735f70                          // 0x00735e87    0f84e3000000
                         {disp8} mov      al, byte ptr [esp + 0x17]                     // 0x00735e8d    8a442417
                         and              ebx, 0xfffffffb                               // 0x00735e91    83e3fb
                         test             al, al                                        // 0x00735e94    84c0
                         {disp8} mov      dword ptr [esp + 0x3c], ebp                   // 0x00735e96    896c243c
                         {disp8} je       _jmp_addr_0x00735ec5                          // 0x00735e9a    7429
                         xor.s            ecx, ecx                                      // 0x00735e9c    33c9
                         xor.s            eax, eax                                      // 0x00735e9e    33c0
                         cmp.s            edi, eax                                      // 0x00735ea0    3bf8
                         setle            cl                                            // 0x00735ea2    0f9ec1
                         {disp8} mov      dword ptr [esp + 0x24], edi                   // 0x00735ea5    897c2424
                         {disp8} mov      dword ptr [esp + 0x44], edi                   // 0x00735ea9    897c2444
                         {disp8} mov      dword ptr [esp + 0x28], eax                   // 0x00735ead    89442428
                         {disp8} mov      dword ptr [esp + 0x48], eax                   // 0x00735eb1    89442448
                         dec              ecx                                           // 0x00735eb5    49
                         and              ecx, 0xfffffffe                               // 0x00735eb6    83e1fe
                         add              ecx, 0x2                                      // 0x00735eb9    83c102
                         xor.s            ecx, ebx                                      // 0x00735ebc    33cb
                         and              ecx, 0x03                                     // 0x00735ebe    83e103
                         xor.s            ebx, ecx                                      // 0x00735ec1    33d9
                         {disp8} jmp      _jmp_addr_0x00735eec                          // 0x00735ec3    eb27
_jmp_addr_0x00735ec5:    xor.s            edx, edx                                      // 0x00735ec5    33d2
                         xor.s            eax, eax                                      // 0x00735ec7    33c0
                         cmp.s            esi, eax                                      // 0x00735ec9    3bf0
                         setle            dl                                            // 0x00735ecb    0f9ec2
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x00735ece    89742428
                         {disp8} mov      dword ptr [esp + 0x48], esi                   // 0x00735ed2    89742448
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x00735ed6    89442424
                         {disp8} mov      dword ptr [esp + 0x44], eax                   // 0x00735eda    89442444
                         dec              edx                                           // 0x00735ede    4a
                         and              edx, 0xfffffffe                               // 0x00735edf    83e2fe
                         add              edx, 0x03                                     // 0x00735ee2    83c203
                         xor.s            edx, ebx                                      // 0x00735ee5    33d3
                         and              edx, 0x03                                     // 0x00735ee7    83e203
                         xor.s            ebx, edx                                      // 0x00735eea    33da
_jmp_addr_0x00735eec:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x00735eec    8b442410
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00735ef0    8d8c2420130000
                         {disp8} mov      dword ptr [esp + 0x38], eax                   // 0x00735ef7    89442438
                         call             _jmp_addr_0x00737160                          // 0x00735efb    e860120000
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x00735f00    8d4c2438
                         mov.s            esi, eax                                      // 0x00735f04    8bf0
                         call             _jmp_addr_0x00737160                          // 0x00735f06    e855120000
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00735f0b    8d8c2420130000
                         mov.s            edi, eax                                      // 0x00735f12    8bf8
                         call             _jmp_addr_0x00737170                          // 0x00735f14    e857120000
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x00735f19    8d4c2438
                         {disp8} mov      dword ptr [esp + 0x2c], eax                   // 0x00735f1d    8944242c
                         call             _jmp_addr_0x00737170                          // 0x00735f21    e84a120000
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x00735f26    8b54242c
                         mov.s            ecx, eax                                      // 0x00735f2a    8bc8
                         xor.s            eax, eax                                      // 0x00735f2c    33c0
                         mov              ax, word ptr [edx]                            // 0x00735f2e    668b02
                         xor.s            edx, edx                                      // 0x00735f31    33d2
                         mov              dx, word ptr [ecx]                            // 0x00735f33    668b11
                         sub.s            eax, edx                                      // 0x00735f36    2bc2
                         cdq                                                            // 0x00735f38    99
                         mov.s            ecx, eax                                      // 0x00735f39    8bc8
                         xor.s            ecx, edx                                      // 0x00735f3b    33ca
                         sub.s            ecx, edx                                      // 0x00735f3d    2bca
                         xor.s            eax, eax                                      // 0x00735f3f    33c0
                         mov              ax, word ptr [esi]                            // 0x00735f41    668b06
                         xor.s            edx, edx                                      // 0x00735f44    33d2
                         mov              dx, word ptr [edi]                            // 0x00735f46    668b17
                         sub.s            eax, edx                                      // 0x00735f49    2bc2
                         cdq                                                            // 0x00735f4b    99
                         xor.s            eax, edx                                      // 0x00735f4c    33c2
                         sub.s            eax, edx                                      // 0x00735f4e    2bc2
                         add.s            ecx, eax                                      // 0x00735f50    03c8
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x00735f52    8b442410
                         shl              ecx, 4                                        // 0x00735f56    c1e104
                         xor.s            ecx, ebx                                      // 0x00735f59    33cb
                         and              ecx, 0x0000fff0                               // 0x00735f5b    81e1f0ff0000
                         xor.s            ebx, ecx                                      // 0x00735f61    33d9
                         {disp8} mov      dword ptr [esp + 0x18], ebx                   // 0x00735f63    895c2418
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x00735f67    89442420
                         {disp32} jmp     _jmp_addr_0x00735d2a                          // 0x00735f6b    e9bafdffff
_jmp_addr_0x00735f70:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x00735f70    8b4c241c
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x00735f74    894c2410
                         {disp32} jmp     _jmp_addr_0x00735d2a                          // 0x00735f78    e9adfdffff
_jmp_addr_0x00735f7d:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x00735f7d    8b442410
                         {disp32} mov     edx, dword ptr [esp + 0x00001324]             // 0x00735f81    8b942424130000
                         {disp32} mov     ecx, dword ptr [esp + 0x0000132c]             // 0x00735f88    8b8c242c130000
                         mov              dword ptr [edx + ebp * 0x4], eax              // 0x00735f8f    8904aa
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x00735f92    8b542420
                         mov              dword ptr [ecx + ebp * 0x4], ebx              // 0x00735f96    891ca9
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x00735f99    8b4c2418
                         {disp32} mov     dword ptr [esp + ebp * 0x4 + 0x000009b8], ecx // 0x00735f9d    898cacb8090000
                         {disp8} mov      dword ptr [esp + ebp * 0x4 + 0x58], edx       // 0x00735fa4    8954ac58
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                   // 0x00735fa8    8d4c241c
                         inc              ebp                                           // 0x00735fac    45
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x00735fad    8944241c
                         call             _jmp_addr_0x00737170                          // 0x00735fb1    e8ba110000
                         {disp8} mov      edi, dword ptr [esp + 0x28]                   // 0x00735fb6    8b7c2428
                         add              word ptr [eax], di                            // 0x00735fba    660138
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                   // 0x00735fbd    8d4c241c
                         call             _jmp_addr_0x00737160                          // 0x00735fc1    e89a110000
                         {disp8} mov      esi, dword ptr [esp + 0x24]                   // 0x00735fc6    8b742424
                         {disp32} mov     edx, dword ptr [esp + 0x00001334]             // 0x00735fca    8b942434130000
                         sub              word ptr [eax], si                            // 0x00735fd1    662930
                         {disp32} mov     eax, dword ptr [esp + 0x00001330]             // 0x00735fd4    8b842430130000
                         push             edx                                           // 0x00735fdb    52
                         push             eax                                           // 0x00735fdc    50
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x00735fdd    8d4c2424
                         push             ecx                                           // 0x00735fe1    51
                         {disp8} mov      ecx, dword ptr [esp + 0x5c]                   // 0x00735fe2    8b4c245c
                         call             _jmp_addr_0x00735bb0                          // 0x00735fe6    e8c5fbffff
                         test             al, al                                        // 0x00735feb    84c0
                         {disp8} je       _jmp_addr_0x0073604a                          // 0x00735fed    745b
                         mov.s            eax, ebx                                      // 0x00735fef    8bc3
                         and              eax, 0x03                                     // 0x00735ff1    83e003
                         cmp              eax, 0x03                                     // 0x00735ff4    83f803
                         {disp8} ja       _jmp_addr_0x0073603c                          // 0x00735ff7    7743
                         jmp              dword ptr [eax*4 + 0x73644c]                  // 0x00735ff9    ff24854c647300
                         or               ebx, 3                                        // 0x00736000    83cb03
                         mov.s            eax, edi                                      // 0x00736003    8bc7
                         neg              esi                                           // 0x00736005    f7de
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x00736007    89742428
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x0073600b    89442424
                         {disp8} jmp      _jmp_addr_0x00736087                          // 0x0073600f    eb76
                         and              ebx, 0xfffffffc                               // 0x00736011    83e3fc
                         mov.s            eax, edi                                      // 0x00736014    8bc7
                         neg              esi                                           // 0x00736016    f7de
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x00736018    89742428
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x0073601c    89442424
                         {disp8} jmp      _jmp_addr_0x00736087                          // 0x00736020    eb65
                         and              ebx, 0xfffffffd                               // 0x00736022    83e3fd
                         or               ebx, 1                                        // 0x00736025    83cb01
                         mov.s            eax, edi                                      // 0x00736028    8bc7
                         neg              esi                                           // 0x0073602a    f7de
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x0073602c    89742428
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x00736030    89442424
                         {disp8} jmp      _jmp_addr_0x00736087                          // 0x00736034    eb51
                         and              ebx, 0xfffffffe                               // 0x00736036    83e3fe
                         or               ebx, 2                                        // 0x00736039    83cb02
_jmp_addr_0x0073603c:    mov.s            eax, edi                                      // 0x0073603c    8bc7
                         neg              esi                                           // 0x0073603e    f7de
                         {disp8} mov      dword ptr [esp + 0x28], esi                   // 0x00736040    89742428
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x00736044    89442424
                         {disp8} jmp      _jmp_addr_0x00736087                          // 0x00736048    eb3d
_jmp_addr_0x0073604a:    {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x0073604a    8b54241c
                         mov.s            eax, ebx                                      // 0x0073604e    8bc3
                         and              eax, 0x03                                     // 0x00736050    83e003
                         cmp              eax, 0x03                                     // 0x00736053    83f803
                         {disp8} mov      dword ptr [esp + 0x10], edx                   // 0x00736056    89542410
                         {disp8} ja       _jmp_addr_0x0073607b                          // 0x0073605a    771f
                         jmp              dword ptr [eax*4 + 0x73645c]                  // 0x0073605c    ff24855c647300
                         and              ebx, 0xfffffffd                               // 0x00736063    83e3fd
                         or               ebx, 1                                        // 0x00736066    83cb01
                         {disp8} jmp      _jmp_addr_0x0073607b                          // 0x00736069    eb10
                         and              ebx, 0xfffffffe                               // 0x0073606b    83e3fe
                         or               ebx, 2                                        // 0x0073606e    83cb02
                         {disp8} jmp      _jmp_addr_0x0073607b                          // 0x00736071    eb08
                         or               ebx, 3                                        // 0x00736073    83cb03
                         {disp8} jmp      _jmp_addr_0x0073607b                          // 0x00736076    eb03
                         and              ebx, 0xfffffffc                               // 0x00736078    83e3fc
_jmp_addr_0x0073607b:    mov.s            eax, esi                                      // 0x0073607b    8bc6
                         neg              edi                                           // 0x0073607d    f7df
                         {disp8} mov      dword ptr [esp + 0x24], edi                   // 0x0073607f    897c2424
                         {disp8} mov      dword ptr [esp + 0x28], eax                   // 0x00736083    89442428
_jmp_addr_0x00736087:    {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00736087    8d4c2410
                         call             _jmp_addr_0x00737160                          // 0x0073608b    e8d0100000
                         xor.s            ecx, ecx                                      // 0x00736090    33c9
                         mov              cx, word ptr [eax]                            // 0x00736092    668b08
                         mov.s            esi, ecx                                      // 0x00736095    8bf1
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00736097    8d8c2420130000
                         call             _jmp_addr_0x00737160                          // 0x0073609e    e8bd100000
                         xor.s            edx, edx                                      // 0x007360a3    33d2
                         mov              dx, word ptr [eax]                            // 0x007360a5    668b10
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007360a8    8d4c2410
                         sub.s            esi, edx                                      // 0x007360ac    2bf2
                         mov.s            eax, esi                                      // 0x007360ae    8bc6
                         cdq                                                            // 0x007360b0    99
                         mov.s            esi, eax                                      // 0x007360b1    8bf0
                         xor.s            esi, edx                                      // 0x007360b3    33f2
                         sub.s            esi, edx                                      // 0x007360b5    2bf2
                         call             _jmp_addr_0x00737170                          // 0x007360b7    e8b4100000
                         xor.s            ecx, ecx                                      // 0x007360bc    33c9
                         mov              cx, word ptr [eax]                            // 0x007360be    668b08
                         mov.s            edi, ecx                                      // 0x007360c1    8bf9
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x007360c3    8d8c2420130000
                         call             _jmp_addr_0x00737170                          // 0x007360ca    e8a1100000
                         xor.s            edx, edx                                      // 0x007360cf    33d2
                         mov              dx, word ptr [eax]                            // 0x007360d1    668b10
                         sub.s            edi, edx                                      // 0x007360d4    2bfa
                         mov.s            eax, edi                                      // 0x007360d6    8bc7
                         cdq                                                            // 0x007360d8    99
                         xor.s            eax, edx                                      // 0x007360d9    33c2
                         sub.s            eax, edx                                      // 0x007360db    2bc2
                         add.s            esi, eax                                      // 0x007360dd    03f0
                         mov.s            eax, ebx                                      // 0x007360df    8bc3
                         shr              eax, 4                                        // 0x007360e1    c1e804
                         and              eax, 0x00000fff                               // 0x007360e4    25ff0f0000
                         cmp.s            esi, eax                                      // 0x007360e9    3bf0
                         {disp8} jae      _jmp_addr_0x0073616a                          // 0x007360eb    737d
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007360ed    8d4c2410
                         or               ebx, 4                                        // 0x007360f1    83cb04
                         call             _jmp_addr_0x00737160                          // 0x007360f4    e867100000
                         xor.s            ecx, ecx                                      // 0x007360f9    33c9
                         mov              cx, word ptr [eax]                            // 0x007360fb    668b08
                         mov.s            edi, ecx                                      // 0x007360fe    8bf9
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00736100    8d8c2420130000
                         call             _jmp_addr_0x00737160                          // 0x00736107    e854100000
                         xor.s            esi, esi                                      // 0x0073610c    33f6
                         mov              si, word ptr [eax]                            // 0x0073610e    668b30
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x00736111    8d4c2410
                         sub.s            esi, edi                                      // 0x00736115    2bf7
                         {disp8} mov      dword ptr [esp + 0x4c], esi                   // 0x00736117    8974244c
                         call             _jmp_addr_0x00737170                          // 0x0073611b    e850100000
                         xor.s            edx, edx                                      // 0x00736120    33d2
                         mov              dx, word ptr [eax]                            // 0x00736122    668b10
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x00736125    8d8c2420130000
                         mov.s            edi, edx                                      // 0x0073612c    8bfa
                         call             _jmp_addr_0x00737170                          // 0x0073612e    e83d100000
                         xor.s            ecx, ecx                                      // 0x00736133    33c9
                         mov              cx, word ptr [eax]                            // 0x00736135    668b08
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x00736138    8b542410
                         {disp8} mov      dword ptr [esp + 0x34], edx                   // 0x0073613c    89542434
                         mov.s            eax, ecx                                      // 0x00736140    8bc1
                         xor.s            ecx, ecx                                      // 0x00736142    33c9
                         sub.s            eax, edi                                      // 0x00736144    2bc7
                         test             esi, esi                                      // 0x00736146    85f6
                         setle            cl                                            // 0x00736148    0f9ec1
                         xor.s            edx, edx                                      // 0x0073614b    33d2
                         {disp8} mov      dword ptr [esp + 0x30], eax                   // 0x0073614d    89442430
                         dec              ecx                                           // 0x00736151    49
                         and              ecx, 0x02                                     // 0x00736152    83e102
                         dec              ecx                                           // 0x00736155    49
                         test             eax, eax                                      // 0x00736156    85c0
                         setle            dl                                            // 0x00736158    0f9ec2
                         {disp8} mov      dword ptr [esp + 0x54], ecx                   // 0x0073615b    894c2454
                         dec              edx                                           // 0x0073615f    4a
                         and              edx, 0x02                                     // 0x00736160    83e202
                         dec              edx                                           // 0x00736163    4a
                         {disp8} mov      dword ptr [esp + 0x40], edx                   // 0x00736164    89542440
                         {disp8} jmp      _jmp_addr_0x007361b1                          // 0x00736168    eb47
_jmp_addr_0x0073616a:    {disp8} mov      edi, dword ptr [esp + 0x3c]                   // 0x0073616a    8b7c243c
                         {disp8} lea      eax, dword ptr [edi + 0x05]                   // 0x0073616e    8d4705
                         cmp.s            eax, ebp                                      // 0x00736171    3bc5
                         {disp8} jge      _jmp_addr_0x007361b1                          // 0x00736173    7d3c
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x00736175    8d4c2438
                         call             _jmp_addr_0x00737160                          // 0x00736179    e8e20f0000
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x0073617e    8d4c2410
                         mov.s            esi, eax                                      // 0x00736182    8bf0
                         call             _jmp_addr_0x00737160                          // 0x00736184    e8d70f0000
                         mov              cx, word ptr [eax]                            // 0x00736189    668b08
                         cmp              cx, word ptr [esi]                            // 0x0073618c    663b0e
                         {disp8} jne      _jmp_addr_0x007361b1                          // 0x0073618f    7520
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x00736191    8d4c2438
                         call             _jmp_addr_0x00737170                          // 0x00736195    e8d60f0000
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x0073619a    8d4c2410
                         mov.s            esi, eax                                      // 0x0073619e    8bf0
                         call             _jmp_addr_0x00737170                          // 0x007361a0    e8cb0f0000
                         mov              dx, word ptr [eax]                            // 0x007361a5    668b10
                         cmp              dx, word ptr [esi]                            // 0x007361a8    663b16
                         {disp32} je      _jmp_addr_0x00736409                          // 0x007361ab    0f8458020000
_jmp_addr_0x007361b1:    {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x007361b1    8b442420
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                   // 0x007361b5    8d4c241c
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x007361b9    8944241c
                         call             _jmp_addr_0x00737170                          // 0x007361bd    e8ae0f0000
                         {disp8} mov      esi, dword ptr [esp + 0x48]                   // 0x007361c2    8b742448
                         sub              word ptr [eax], si                            // 0x007361c6    662930
                         {disp8} lea      ecx, dword ptr [esp + 0x1c]                   // 0x007361c9    8d4c241c
                         call             _jmp_addr_0x00737160                          // 0x007361cd    e88e0f0000
                         {disp32} mov     ecx, dword ptr [esp + 0x00001334]             // 0x007361d2    8b8c2434130000
                         {disp8} mov      edi, dword ptr [esp + 0x44]                   // 0x007361d9    8b7c2444
                         {disp32} mov     edx, dword ptr [esp + 0x00001330]             // 0x007361dd    8b942430130000
                         add              word ptr [eax], di                            // 0x007361e4    660138
                         push             ecx                                           // 0x007361e7    51
                         {disp8} mov      ecx, dword ptr [esp + 0x54]                   // 0x007361e8    8b4c2454
                         push             edx                                           // 0x007361ec    52
                         {disp8} lea      eax, dword ptr [esp + 0x24]                   // 0x007361ed    8d442424
                         push             eax                                           // 0x007361f1    50
                         call             _jmp_addr_0x00735bb0                          // 0x007361f2    e8b9f9ffff
                         test             al, al                                        // 0x007361f7    84c0
                         {disp8} je       _jmp_addr_0x0073623a                          // 0x007361f9    743f
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x007361fb    8b4c2418
                         mov.s            eax, ecx                                      // 0x007361ff    8bc1
                         and              eax, 0x03                                     // 0x00736201    83e003
                         cmp              eax, 0x03                                     // 0x00736204    83f803
                         {disp8} ja       _jmp_addr_0x0073622c                          // 0x00736207    7723
                         jmp              dword ptr [eax*4 + 0x73646c]                  // 0x00736209    ff24856c647300
                         and              ecx, 0xfffffffd                               // 0x00736210    83e1fd
                         or               ecx, 1                                        // 0x00736213    83c901
                         {disp8} jmp      _jmp_addr_0x00736228                          // 0x00736216    eb10
                         and              ecx, 0xfffffffe                               // 0x00736218    83e1fe
                         or               ecx, 2                                        // 0x0073621b    83c902
                         {disp8} jmp      _jmp_addr_0x00736228                          // 0x0073621e    eb08
                         or               ecx, 3                                        // 0x00736220    83c903
                         {disp8} jmp      _jmp_addr_0x00736228                          // 0x00736223    eb03
                         and              ecx, 0xfffffffc                               // 0x00736225    83e1fc
_jmp_addr_0x00736228:    {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x00736228    894c2418
_jmp_addr_0x0073622c:    mov.s            eax, edi                                      // 0x0073622c    8bc7
                         neg              esi                                           // 0x0073622e    f7de
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x00736230    89742444
                         {disp8} mov      dword ptr [esp + 0x48], eax                   // 0x00736234    89442448
                         {disp8} jmp      _jmp_addr_0x0073627f                          // 0x00736238    eb45
_jmp_addr_0x0073623a:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x0073623a    8b4c241c
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x0073623e    894c2420
                         {disp8} mov      ecx, dword ptr [esp + 0x18]                   // 0x00736242    8b4c2418
                         mov.s            eax, ecx                                      // 0x00736246    8bc1
                         and              eax, 0x03                                     // 0x00736248    83e003
                         cmp              eax, 0x03                                     // 0x0073624b    83f803
                         {disp8} ja       _jmp_addr_0x00736273                          // 0x0073624e    7723
                         jmp              dword ptr [eax*4 + 0x73647c]                  // 0x00736250    ff24857c647300
                         or               ecx, 3                                        // 0x00736257    83c903
                         {disp8} jmp      _jmp_addr_0x0073626f                          // 0x0073625a    eb13
                         and              ecx, 0xfffffffc                               // 0x0073625c    83e1fc
                         {disp8} jmp      _jmp_addr_0x0073626f                          // 0x0073625f    eb0e
                         and              ecx, 0xfffffffd                               // 0x00736261    83e1fd
                         or               ecx, 1                                        // 0x00736264    83c901
                         {disp8} jmp      _jmp_addr_0x0073626f                          // 0x00736267    eb06
                         and              ecx, 0xfffffffe                               // 0x00736269    83e1fe
                         or               ecx, 2                                        // 0x0073626c    83c902
_jmp_addr_0x0073626f:    {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x0073626f    894c2418
_jmp_addr_0x00736273:    mov.s            eax, esi                                      // 0x00736273    8bc6
                         neg              edi                                           // 0x00736275    f7df
                         {disp8} mov      dword ptr [esp + 0x48], edi                   // 0x00736277    897c2448
                         {disp8} mov      dword ptr [esp + 0x44], eax                   // 0x0073627b    89442444
_jmp_addr_0x0073627f:    {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x0073627f    8d4c2420
                         call             _jmp_addr_0x00737160                          // 0x00736283    e8d80e0000
                         xor.s            edx, edx                                      // 0x00736288    33d2
                         mov              dx, word ptr [eax]                            // 0x0073628a    668b10
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x0073628d    8d8c2420130000
                         mov.s            esi, edx                                      // 0x00736294    8bf2
                         call             _jmp_addr_0x00737160                          // 0x00736296    e8c50e0000
                         xor.s            ecx, ecx                                      // 0x0073629b    33c9
                         mov              cx, word ptr [eax]                            // 0x0073629d    668b08
                         sub.s            esi, ecx                                      // 0x007362a0    2bf1
                         mov.s            eax, esi                                      // 0x007362a2    8bc6
                         cdq                                                            // 0x007362a4    99
                         mov.s            esi, eax                                      // 0x007362a5    8bf0
                         xor.s            esi, edx                                      // 0x007362a7    33f2
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x007362a9    8d4c2420
                         sub.s            esi, edx                                      // 0x007362ad    2bf2
                         call             _jmp_addr_0x00737170                          // 0x007362af    e8bc0e0000
                         xor.s            edx, edx                                      // 0x007362b4    33d2
                         mov              dx, word ptr [eax]                            // 0x007362b6    668b10
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x007362b9    8d8c2420130000
                         mov.s            edi, edx                                      // 0x007362c0    8bfa
                         call             _jmp_addr_0x00737170                          // 0x007362c2    e8a90e0000
                         xor.s            ecx, ecx                                      // 0x007362c7    33c9
                         mov              cx, word ptr [eax]                            // 0x007362c9    668b08
                         sub.s            edi, ecx                                      // 0x007362cc    2bf9
                         mov.s            eax, edi                                      // 0x007362ce    8bc7
                         cdq                                                            // 0x007362d0    99
                         xor.s            eax, edx                                      // 0x007362d1    33c2
                         sub.s            eax, edx                                      // 0x007362d3    2bc2
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007362d5    8b542418
                         shr              edx, 4                                        // 0x007362d9    c1ea04
                         add.s            esi, eax                                      // 0x007362dc    03f0
                         and              edx, 0x00000fff                               // 0x007362de    81e2ff0f0000
                         cmp.s            esi, edx                                      // 0x007362e4    3bf2
                         {disp32} jae     _jmp_addr_0x007363b9                          // 0x007362e6    0f83cd000000
                         {disp8} mov      ebx, dword ptr [esp + 0x3c]                   // 0x007362ec    8b5c243c
                         cmp.s            ebx, ebp                                      // 0x007362f0    3bdd
                         {disp8} jge      _jmp_addr_0x0073632b                          // 0x007362f2    7d37
                         {disp32} mov     ecx, dword ptr [esp + 0x00001324]             // 0x007362f4    8b8c2424130000
                         {disp32} mov     edi, dword ptr [esp + 0x0000132c]             // 0x007362fb    8bbc242c130000
                         {disp8} lea      edx, dword ptr [esp + 0x58]                   // 0x00736302    8d542458
                         {disp32} lea     esi, dword ptr [esp + 0x000009b8]             // 0x00736306    8db424b8090000
                         lea              eax, dword ptr [ecx + ebx * 0x4]              // 0x0073630d    8d0499
                         sub.s            edx, ecx                                      // 0x00736310    2bd1
                         sub.s            esi, ecx                                      // 0x00736312    2bf1
                         sub.s            edi, ecx                                      // 0x00736314    2bf9
                         mov.s            ecx, ebp                                      // 0x00736316    8bcd
                         sub.s            ecx, ebx                                      // 0x00736318    2bcb
_jmp_addr_0x0073631a:    mov              ebx, dword ptr [edx + eax * 0x1]              // 0x0073631a    8b1c02
                         mov              dword ptr [eax], ebx                          // 0x0073631d    8918
                         mov              ebx, dword ptr [esi + eax * 0x1]              // 0x0073631f    8b1c06
                         mov              dword ptr [edi + eax * 0x1], ebx              // 0x00736322    891c07
                         add              eax, 0x04                                     // 0x00736325    83c004
                         dec              ecx                                           // 0x00736328    49
                         {disp8} jne      _jmp_addr_0x0073631a                          // 0x00736329    75ef
_jmp_addr_0x0073632b:    {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x0073632b    8b442420
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x0073632f    8b5c2418
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x00736333    8d4c2420
                         or               ebx, 4                                        // 0x00736337    83cb04
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x0073633a    89442410
                         call             _jmp_addr_0x00737160                          // 0x0073633e    e81d0e0000
                         xor.s            ecx, ecx                                      // 0x00736343    33c9
                         mov              cx, word ptr [eax]                            // 0x00736345    668b08
                         mov.s            esi, ecx                                      // 0x00736348    8bf1
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x0073634a    8d8c2420130000
                         call             _jmp_addr_0x00737160                          // 0x00736351    e80a0e0000
                         xor.s            edi, edi                                      // 0x00736356    33ff
                         mov              di, word ptr [eax]                            // 0x00736358    668b38
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x0073635b    8d4c2420
                         sub.s            edi, esi                                      // 0x0073635f    2bfe
                         {disp8} mov      dword ptr [esp + 0x4c], edi                   // 0x00736361    897c244c
                         call             _jmp_addr_0x00737170                          // 0x00736365    e8060e0000
                         xor.s            edx, edx                                      // 0x0073636a    33d2
                         mov              dx, word ptr [eax]                            // 0x0073636c    668b10
                         {disp32} lea     ecx, dword ptr [esp + 0x00001320]             // 0x0073636f    8d8c2420130000
                         mov.s            esi, edx                                      // 0x00736376    8bf2
                         call             _jmp_addr_0x00737170                          // 0x00736378    e8f30d0000
                         xor.s            ecx, ecx                                      // 0x0073637d    33c9
                         mov              cx, word ptr [eax]                            // 0x0073637f    668b08
                         mov.s            edx, esi                                      // 0x00736382    8bd6
                         {disp8} mov      eax, dword ptr [esp + 0x20]                   // 0x00736384    8b442420
                         {disp8} mov      dword ptr [esp + 0x34], eax                   // 0x00736388    89442434
                         mov.s            esi, ecx                                      // 0x0073638c    8bf1
                         sub.s            esi, edx                                      // 0x0073638e    2bf2
                         xor.s            ecx, ecx                                      // 0x00736390    33c9
                         test             edi, edi                                      // 0x00736392    85ff
                         setle            cl                                            // 0x00736394    0f9ec1
                         xor.s            edx, edx                                      // 0x00736397    33d2
                         {disp8} mov      dword ptr [esp + 0x30], esi                   // 0x00736399    89742430
                         dec              ecx                                           // 0x0073639d    49
                         and              ecx, 0x02                                     // 0x0073639e    83e102
                         dec              ecx                                           // 0x007363a1    49
                         test             esi, esi                                      // 0x007363a2    85f6
                         setle            dl                                            // 0x007363a4    0f9ec2
                         {disp8} mov      dword ptr [esp + 0x54], ecx                   // 0x007363a7    894c2454
                         dec              edx                                           // 0x007363ab    4a
                         and              edx, 0x02                                     // 0x007363ac    83e202
                         dec              edx                                           // 0x007363af    4a
                         {disp8} mov      dword ptr [esp + 0x40], edx                   // 0x007363b0    89542440
                         {disp32} jmp     _jmp_addr_0x00735d2e                          // 0x007363b4    e975f9ffff
_jmp_addr_0x007363b9:    {disp8} mov      eax, dword ptr [esp + 0x3c]                   // 0x007363b9    8b44243c
                         add              eax, 0x05                                     // 0x007363bd    83c005
                         cmp.s            eax, ebp                                      // 0x007363c0    3bc5
                         {disp32} jge     _jmp_addr_0x00735d2a                          // 0x007363c2    0f8d62f9ffff
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x007363c8    8d4c2438
                         call             _jmp_addr_0x00737160                          // 0x007363cc    e88f0d0000
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x007363d1    8d4c2420
                         mov.s            esi, eax                                      // 0x007363d5    8bf0
                         call             _jmp_addr_0x00737160                          // 0x007363d7    e8840d0000
                         mov              cx, word ptr [eax]                            // 0x007363dc    668b08
                         cmp              cx, word ptr [esi]                            // 0x007363df    663b0e
                         {disp32} jne     _jmp_addr_0x00735d2a                          // 0x007363e2    0f8542f9ffff
                         {disp8} lea      ecx, dword ptr [esp + 0x38]                   // 0x007363e8    8d4c2438
                         call             _jmp_addr_0x00737170                          // 0x007363ec    e87f0d0000
                         {disp8} lea      ecx, dword ptr [esp + 0x20]                   // 0x007363f1    8d4c2420
                         mov.s            esi, eax                                      // 0x007363f5    8bf0
                         call             _jmp_addr_0x00737170                          // 0x007363f7    e8740d0000
                         mov              dx, word ptr [eax]                            // 0x007363fc    668b10
                         cmp              dx, word ptr [esi]                            // 0x007363ff    663b16
                         {disp8} je       _jmp_addr_0x0073641a                          // 0x00736402    7416
                         {disp32} jmp     _jmp_addr_0x00735d2a                          // 0x00736404    e921f9ffff
_jmp_addr_0x00736409:    mov.s            eax, edi                                      // 0x00736409    8bc7
                         pop              edi                                           // 0x0073640b    5f
                         pop              esi                                           // 0x0073640c    5e
                         pop              ebp                                           // 0x0073640d    5d
                         neg              eax                                           // 0x0073640e    f7d8
                         pop              ebx                                           // 0x00736410    5b
                         add              esp, 0x00001308                               // 0x00736411    81c408130000
                         ret              0x0020                                        // 0x00736417    c22000
_jmp_addr_0x0073641a:    {disp8} mov      eax, dword ptr [esp + 0x3c]                   // 0x0073641a    8b44243c
                         pop              edi                                           // 0x0073641e    5f
                         pop              esi                                           // 0x0073641f    5e
                         pop              ebp                                           // 0x00736420    5d
                         neg              eax                                           // 0x00736421    f7d8
                         pop              ebx                                           // 0x00736423    5b
                         add              esp, 0x00001308                               // 0x00736424    81c408130000
                         ret              0x0020                                        // 0x0073642a    c22000
_jmp_addr_0x0073642d:    pop              edi                                           // 0x0073642d    5f
                         pop              esi                                           // 0x0073642e    5e
                         mov.s            eax, ebp                                      // 0x0073642f    8bc5
                         pop              ebp                                           // 0x00736431    5d
                         pop              ebx                                           // 0x00736432    5b
                         add              esp, 0x00001308                               // 0x00736433    81c408130000
                         ret              0x0020                                        // 0x00736439    c22000

// Snippet: jmptbl, [0x0073643c, 0x0073648c)
.byte 0x72, 0x5c, 0x73, 0x00      // 0x0073643c
.byte 0x80, 0x5c, 0x73, 0x00      // 0x00736440
.byte 0x8a, 0x5c, 0x73, 0x00      // 0x00736444
.byte 0x98, 0x5c, 0x73, 0x00      // 0x00736448
.byte 0x00, 0x60, 0x73, 0x00      // 0x0073644c
.byte 0x11, 0x60, 0x73, 0x00      // 0x00736450
.byte 0x22, 0x60, 0x73, 0x00      // 0x00736454
.byte 0x36, 0x60, 0x73, 0x00      // 0x00736458
.byte 0x63, 0x60, 0x73, 0x00      // 0x0073645c
.byte 0x6b, 0x60, 0x73, 0x00      // 0x00736460
.byte 0x73, 0x60, 0x73, 0x00      // 0x00736464
.byte 0x78, 0x60, 0x73, 0x00      // 0x00736468
.byte 0x10, 0x62, 0x73, 0x00      // 0x0073646c
.byte 0x18, 0x62, 0x73, 0x00      // 0x00736470
.byte 0x20, 0x62, 0x73, 0x00      // 0x00736474
.byte 0x25, 0x62, 0x73, 0x00      // 0x00736478
.byte 0x57, 0x62, 0x73, 0x00      // 0x0073647c
.byte 0x5c, 0x62, 0x73, 0x00      // 0x00736480
.byte 0x61, 0x62, 0x73, 0x00      // 0x00736484
.byte 0x69, 0x62, 0x73, 0x00      // 0x00736488

// Snippet: db, [0x0073648c, 0x00736490)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0073648c

