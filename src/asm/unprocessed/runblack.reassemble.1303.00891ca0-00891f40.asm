.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00890d60
.extern _jmp_addr_0x00892790

.globl _jmp_addr_0x00891ca0

start_0x00891ca0_0x00891f40:
// Snippet: asm, [0x00891ca0, 0x00891ec9)
_jmp_addr_0x00891ca0:    push            esi                          // 0x00891ca0    56
                         {disp8} mov     esi, dword ptr [esp + 0x0c]  // 0x00891ca1    8b74240c
                         push            edi                          // 0x00891ca5    57
                         mov             eax, dword ptr [esi]         // 0x00891ca6    8b06
                         {disp8} mov     edi, dword ptr [esi + 0x0c]  // 0x00891ca8    8b7e0c
                         cmp             eax, 0x1b                    // 0x00891cab    83f81b
                         {disp32} ja     _jmp_addr_0x00891ebd         // 0x00891cae    0f8709020000
                         jmp             dword ptr [eax*4 + 0x891ecc] // 0x00891cb4    ff2485cc1e8900
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891cbb    8b4608
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x00891cbe    8b54240c
                         push            edi                          // 0x00891cc2    57
                         mov             ecx, dword ptr [eax]         // 0x00891cc3    8b08
                         push            ecx                          // 0x00891cc5    51
                         push            edx                          // 0x00891cc6    52
                         call            dword ptr [esi + 4]          // 0x00891cc7    ff5604
                         add             esp, 0x0c                    // 0x00891cca    83c40c
                         push            esi                          // 0x00891ccd    56
                         call            _jmp_addr_0x00890d60         // 0x00891cce    e88df0ffff
                         add             esp, 0x04                    // 0x00891cd3    83c404
                         pop             edi                          // 0x00891cd6    5f
                         pop             esi                          // 0x00891cd7    5e
                         ret                                          // 0x00891cd8    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891cd9    8b4608
                         {disp8} mov     ecx, dword ptr [esp + 0x0c]  // 0x00891cdc    8b4c240c
                         push            edi                          // 0x00891ce0    57
                         {disp8} mov     edx, dword ptr [eax + 0x04]  // 0x00891ce1    8b5004
                         mov             eax, dword ptr [eax]         // 0x00891ce4    8b00
                         push            edx                          // 0x00891ce6    52
                         push            eax                          // 0x00891ce7    50
                         push            ecx                          // 0x00891ce8    51
                         call            dword ptr [esi + 4]          // 0x00891ce9    ff5604
                         add             esp, 0x10                    // 0x00891cec    83c410
                         push            esi                          // 0x00891cef    56
                         call            _jmp_addr_0x00890d60         // 0x00891cf0    e86bf0ffff
                         add             esp, 0x04                    // 0x00891cf5    83c404
                         pop             edi                          // 0x00891cf8    5f
                         pop             esi                          // 0x00891cf9    5e
                         ret                                          // 0x00891cfa    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891cfb    8b4608
                         push            edi                          // 0x00891cfe    57
                         {disp8} mov     edx, dword ptr [eax + 0x08]  // 0x00891cff    8b5008
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891d02    8b4804
                         push            edx                          // 0x00891d05    52
                         mov             edx, dword ptr [eax]         // 0x00891d06    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x14]  // 0x00891d08    8b442414
                         push            ecx                          // 0x00891d0c    51
                         push            edx                          // 0x00891d0d    52
                         push            eax                          // 0x00891d0e    50
                         call            dword ptr [esi + 4]          // 0x00891d0f    ff5604
                         add             esp, 0x14                    // 0x00891d12    83c414
                         push            esi                          // 0x00891d15    56
                         call            _jmp_addr_0x00890d60         // 0x00891d16    e845f0ffff
                         add             esp, 0x04                    // 0x00891d1b    83c404
                         pop             edi                          // 0x00891d1e    5f
                         pop             esi                          // 0x00891d1f    5e
                         ret                                          // 0x00891d20    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891d21    8b4608
                         push            edi                          // 0x00891d24    57
                         {disp8} mov     edx, dword ptr [eax + 0x10]  // 0x00891d25    8b5010
                         {disp8} mov     ecx, dword ptr [eax + 0x0c]  // 0x00891d28    8b480c
                         push            edx                          // 0x00891d2b    52
                         {disp8} mov     edx, dword ptr [eax + 0x08]  // 0x00891d2c    8b5008
                         push            ecx                          // 0x00891d2f    51
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891d30    8b4804
                         push            edx                          // 0x00891d33    52
                         mov             edx, dword ptr [eax]         // 0x00891d34    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x1c]  // 0x00891d36    8b44241c
                         push            ecx                          // 0x00891d3a    51
                         push            edx                          // 0x00891d3b    52
                         push            eax                          // 0x00891d3c    50
                         call            dword ptr [esi + 4]          // 0x00891d3d    ff5604
                         add             esp, 0x1c                    // 0x00891d40    83c41c
                         push            esi                          // 0x00891d43    56
                         call            _jmp_addr_0x00890d60         // 0x00891d44    e817f0ffff
                         add             esp, 0x04                    // 0x00891d49    83c404
                         pop             edi                          // 0x00891d4c    5f
                         pop             esi                          // 0x00891d4d    5e
                         ret                                          // 0x00891d4e    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891d4f    8b4608
                         push            edi                          // 0x00891d52    57
                         {disp8} mov     edx, dword ptr [eax + 0x08]  // 0x00891d53    8b5008
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891d56    8b4804
                         push            edx                          // 0x00891d59    52
                         mov             edx, dword ptr [eax]         // 0x00891d5a    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x14]  // 0x00891d5c    8b442414
                         push            ecx                          // 0x00891d60    51
                         push            edx                          // 0x00891d61    52
                         push            eax                          // 0x00891d62    50
                         call            dword ptr [esi + 4]          // 0x00891d63    ff5604
                         add             esp, 0x14                    // 0x00891d66    83c414
                         push            esi                          // 0x00891d69    56
                         call            _jmp_addr_0x00890d60         // 0x00891d6a    e8f1efffff
                         add             esp, 0x04                    // 0x00891d6f    83c404
                         pop             edi                          // 0x00891d72    5f
                         pop             esi                          // 0x00891d73    5e
                         ret                                          // 0x00891d74    c3
                         {disp8} mov     ecx, dword ptr [esi + 0x08]  // 0x00891d75    8b4e08
                         {disp8} mov     eax, dword ptr [esp + 0x0c]  // 0x00891d78    8b44240c
                         push            edi                          // 0x00891d7c    57
                         mov             edx, dword ptr [ecx]         // 0x00891d7d    8b11
                         push            edx                          // 0x00891d7f    52
                         push            eax                          // 0x00891d80    50
                         call            dword ptr [esi + 4]          // 0x00891d81    ff5604
                         add             esp, 0x0c                    // 0x00891d84    83c40c
                         push            esi                          // 0x00891d87    56
                         call            _jmp_addr_0x00890d60         // 0x00891d88    e8d3efffff
                         add             esp, 0x04                    // 0x00891d8d    83c404
                         pop             edi                          // 0x00891d90    5f
                         pop             esi                          // 0x00891d91    5e
                         ret                                          // 0x00891d92    c3
                         {disp8} mov     edx, dword ptr [esp + 0x0c]  // 0x00891d93    8b54240c
                         push            ebx                          // 0x00891d97    53
                         {disp8} mov     ebx, dword ptr [esi + 0x08]  // 0x00891d98    8b5e08
                         push            ebp                          // 0x00891d9b    55
                         {disp8} mov     ebp, dword ptr [esi + 0x04]  // 0x00891d9c    8b6e04
                         {disp8} mov     ecx, dword ptr [ebx + 0x04]  // 0x00891d9f    8b4b04
                         push            ecx                          // 0x00891da2    51
                         push            edx                          // 0x00891da3    52
                         call            _jmp_addr_0x00892790         // 0x00891da4    e8e7090000
                         {disp8} mov     eax, dword ptr [ebx + 0x04]  // 0x00891da9    8b4304
                         mov             ecx, dword ptr [ebx]         // 0x00891dac    8b0b
                         {disp8} mov     edx, dword ptr [esp + 0x1c]  // 0x00891dae    8b54241c
                         push            edi                          // 0x00891db2    57
                         push            eax                          // 0x00891db3    50
                         push            ecx                          // 0x00891db4    51
                         push            edx                          // 0x00891db5    52
                         call            ebp                          // 0x00891db6    ffd5
                         add             esp, 0x18                    // 0x00891db8    83c418
                         pop             ebp                          // 0x00891dbb    5d
                         pop             ebx                          // 0x00891dbc    5b
                         push            esi                          // 0x00891dbd    56
                         call            _jmp_addr_0x00890d60         // 0x00891dbe    e89defffff
                         add             esp, 0x04                    // 0x00891dc3    83c404
                         pop             edi                          // 0x00891dc6    5f
                         pop             esi                          // 0x00891dc7    5e
                         ret                                          // 0x00891dc8    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891dc9    8b4608
                         push            edi                          // 0x00891dcc    57
                         {disp8} mov     ecx, dword ptr [eax + 0x10]  // 0x00891dcd    8b4810
                         {disp8} mov     edx, dword ptr [eax + 0x0c]  // 0x00891dd0    8b500c
                         push            ecx                          // 0x00891dd3    51
                         {disp8} mov     ecx, dword ptr [eax + 0x08]  // 0x00891dd4    8b4808
                         push            edx                          // 0x00891dd7    52
                         {disp8} mov     edx, dword ptr [eax + 0x04]  // 0x00891dd8    8b5004
                         mov             eax, dword ptr [eax]         // 0x00891ddb    8b00
                         push            ecx                          // 0x00891ddd    51
                         {disp8} mov     ecx, dword ptr [esp + 0x1c]  // 0x00891dde    8b4c241c
                         push            edx                          // 0x00891de2    52
                         push            eax                          // 0x00891de3    50
                         push            ecx                          // 0x00891de4    51
                         call            dword ptr [esi + 4]          // 0x00891de5    ff5604
                         add             esp, 0x1c                    // 0x00891de8    83c41c
                         push            esi                          // 0x00891deb    56
                         call            _jmp_addr_0x00890d60         // 0x00891dec    e86fefffff
                         add             esp, 0x04                    // 0x00891df1    83c404
                         pop             edi                          // 0x00891df4    5f
                         pop             esi                          // 0x00891df5    5e
                         ret                                          // 0x00891df6    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891df7    8b4608
                         push            edi                          // 0x00891dfa    57
                         {disp8} mov     edx, dword ptr [eax + 0x18]  // 0x00891dfb    8b5018
                         {disp8} mov     ecx, dword ptr [eax + 0x14]  // 0x00891dfe    8b4814
                         push            edx                          // 0x00891e01    52
                         {disp8} mov     edx, dword ptr [eax + 0x10]  // 0x00891e02    8b5010
                         push            ecx                          // 0x00891e05    51
                         {disp8} mov     ecx, dword ptr [eax + 0x0c]  // 0x00891e06    8b480c
                         push            edx                          // 0x00891e09    52
                         {disp8} mov     edx, dword ptr [eax + 0x08]  // 0x00891e0a    8b5008
                         push            ecx                          // 0x00891e0d    51
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891e0e    8b4804
                         push            edx                          // 0x00891e11    52
                         mov             edx, dword ptr [eax]         // 0x00891e12    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x24]  // 0x00891e14    8b442424
                         push            ecx                          // 0x00891e18    51
                         push            edx                          // 0x00891e19    52
                         push            eax                          // 0x00891e1a    50
                         call            dword ptr [esi + 4]          // 0x00891e1b    ff5604
                         add             esp, 0x24                    // 0x00891e1e    83c424
                         push            esi                          // 0x00891e21    56
                         call            _jmp_addr_0x00890d60         // 0x00891e22    e839efffff
                         add             esp, 0x04                    // 0x00891e27    83c404
                         pop             edi                          // 0x00891e2a    5f
                         pop             esi                          // 0x00891e2b    5e
                         ret                                          // 0x00891e2c    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891e2d    8b4608
                         push            edi                          // 0x00891e30    57
                         {disp8} mov     ecx, dword ptr [eax + 0x0c]  // 0x00891e31    8b480c
                         {disp8} mov     edx, dword ptr [eax + 0x08]  // 0x00891e34    8b5008
                         push            ecx                          // 0x00891e37    51
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891e38    8b4804
                         push            edx                          // 0x00891e3b    52
                         mov             edx, dword ptr [eax]         // 0x00891e3c    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x18]  // 0x00891e3e    8b442418
                         push            ecx                          // 0x00891e42    51
                         push            edx                          // 0x00891e43    52
                         push            eax                          // 0x00891e44    50
                         call            dword ptr [esi + 4]          // 0x00891e45    ff5604
                         add             esp, 0x18                    // 0x00891e48    83c418
                         push            esi                          // 0x00891e4b    56
                         call            _jmp_addr_0x00890d60         // 0x00891e4c    e80fefffff
                         add             esp, 0x04                    // 0x00891e51    83c404
                         pop             edi                          // 0x00891e54    5f
                         pop             esi                          // 0x00891e55    5e
                         ret                                          // 0x00891e56    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891e57    8b4608
                         push            edi                          // 0x00891e5a    57
                         {disp8} mov     ecx, dword ptr [eax + 0x04]  // 0x00891e5b    8b4804
                         mov             edx, dword ptr [eax]         // 0x00891e5e    8b10
                         {disp8} mov     eax, dword ptr [esp + 0x10]  // 0x00891e60    8b442410
                         push            ecx                          // 0x00891e64    51
                         push            edx                          // 0x00891e65    52
                         push            eax                          // 0x00891e66    50
                         call            dword ptr [esi + 4]          // 0x00891e67    ff5604
                         add             esp, 0x10                    // 0x00891e6a    83c410
                         push            esi                          // 0x00891e6d    56
                         call            _jmp_addr_0x00890d60         // 0x00891e6e    e8edeeffff
                         add             esp, 0x04                    // 0x00891e73    83c404
                         pop             edi                          // 0x00891e76    5f
                         pop             esi                          // 0x00891e77    5e
                         ret                                          // 0x00891e78    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891e79    8b4608
                         push            edi                          // 0x00891e7c    57
                         {disp8} mov     ecx, dword ptr [eax + 0x08]  // 0x00891e7d    8b4808
                         {disp8} mov     edx, dword ptr [eax + 0x04]  // 0x00891e80    8b5004
                         mov             eax, dword ptr [eax]         // 0x00891e83    8b00
                         push            ecx                          // 0x00891e85    51
                         {disp8} mov     ecx, dword ptr [esp + 0x14]  // 0x00891e86    8b4c2414
                         push            edx                          // 0x00891e8a    52
                         push            eax                          // 0x00891e8b    50
                         push            ecx                          // 0x00891e8c    51
                         call            dword ptr [esi + 4]          // 0x00891e8d    ff5604
                         add             esp, 0x14                    // 0x00891e90    83c414
                         push            esi                          // 0x00891e93    56
                         call            _jmp_addr_0x00890d60         // 0x00891e94    e8c7eeffff
                         add             esp, 0x04                    // 0x00891e99    83c404
                         pop             edi                          // 0x00891e9c    5f
                         pop             esi                          // 0x00891e9d    5e
                         ret                                          // 0x00891e9e    c3
                         {disp8} mov     eax, dword ptr [esi + 0x08]  // 0x00891e9f    8b4608
                         push            edi                          // 0x00891ea2    57
                         {disp8} mov     edx, dword ptr [eax + 0x0c]  // 0x00891ea3    8b500c
                         {disp8} mov     ecx, dword ptr [eax + 0x08]  // 0x00891ea6    8b4808
                         push            edx                          // 0x00891ea9    52
                         {disp8} mov     edx, dword ptr [eax + 0x04]  // 0x00891eaa    8b5004
                         mov             eax, dword ptr [eax]         // 0x00891ead    8b00
                         push            ecx                          // 0x00891eaf    51
                         {disp8} mov     ecx, dword ptr [esp + 0x18]  // 0x00891eb0    8b4c2418
                         push            edx                          // 0x00891eb4    52
                         push            eax                          // 0x00891eb5    50
                         push            ecx                          // 0x00891eb6    51
                         call            dword ptr [esi + 4]          // 0x00891eb7    ff5604
                         add             esp, 0x18                    // 0x00891eba    83c418
_jmp_addr_0x00891ebd:    push            esi                          // 0x00891ebd    56
                         call            _jmp_addr_0x00890d60         // 0x00891ebe    e89deeffff
                         add             esp, 0x04                    // 0x00891ec3    83c404
                         pop             edi                          // 0x00891ec6    5f
                         pop             esi                          // 0x00891ec7    5e
                         ret                                          // 0x00891ec8    c3

// Snippet: db, [0x00891ec9, 0x00891ecc)
.byte 0x8d, 0x49, 0x00            // 0x00891ec9

// Snippet: jmptbl, [0x00891ecc, 0x00891f3c)
.byte 0xbb, 0x1c, 0x89, 0x00      // 0x00891ecc
.byte 0xbb, 0x1c, 0x89, 0x00      // 0x00891ed0
.byte 0x79, 0x1e, 0x89, 0x00      // 0x00891ed4
.byte 0xd9, 0x1c, 0x89, 0x00      // 0x00891ed8
.byte 0x9f, 0x1e, 0x89, 0x00      // 0x00891edc
.byte 0xfb, 0x1c, 0x89, 0x00      // 0x00891ee0
.byte 0x79, 0x1e, 0x89, 0x00      // 0x00891ee4
.byte 0x21, 0x1d, 0x89, 0x00      // 0x00891ee8
.byte 0x79, 0x1e, 0x89, 0x00      // 0x00891eec
.byte 0xd9, 0x1c, 0x89, 0x00      // 0x00891ef0
.byte 0xd9, 0x1c, 0x89, 0x00      // 0x00891ef4
.byte 0x4f, 0x1d, 0x89, 0x00      // 0x00891ef8
.byte 0x75, 0x1d, 0x89, 0x00      // 0x00891efc
.byte 0x75, 0x1d, 0x89, 0x00      // 0x00891f00
.byte 0xc9, 0x1d, 0x89, 0x00      // 0x00891f04
.byte 0x21, 0x1d, 0x89, 0x00      // 0x00891f08
.byte 0x93, 0x1d, 0x89, 0x00      // 0x00891f0c
.byte 0x79, 0x1e, 0x89, 0x00      // 0x00891f10
.byte 0xfb, 0x1c, 0x89, 0x00      // 0x00891f14
.byte 0x2d, 0x1e, 0x89, 0x00      // 0x00891f18
.byte 0xc9, 0x1d, 0x89, 0x00      // 0x00891f1c
.byte 0xf7, 0x1d, 0x89, 0x00      // 0x00891f20
.byte 0x2d, 0x1e, 0x89, 0x00      // 0x00891f24
.byte 0x2d, 0x1e, 0x89, 0x00      // 0x00891f28
.byte 0x2d, 0x1e, 0x89, 0x00      // 0x00891f2c
.byte 0x57, 0x1e, 0x89, 0x00      // 0x00891f30
.byte 0x79, 0x1e, 0x89, 0x00      // 0x00891f34
.byte 0x9f, 0x1e, 0x89, 0x00      // 0x00891f38

// Snippet: db, [0x00891f3c, 0x00891f40)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00891f3c

