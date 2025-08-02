.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x005cb190
.extern _jmp_addr_0x005cb1d0
.extern _jmp_addr_0x005cb3e0
.extern _jmp_addr_0x005cb400
.extern _jmp_addr_0x005cb4c0
.extern _jmp_addr_0x005ccea0
.extern __wtoi

.globl _jmp_addr_0x005cb2a0

start_0x005cb2a0_0x005cb3e0:
// Snippet: asm, [0x005cb2a0, 0x005cb393)
_jmp_addr_0x005cb2a0:    push             ebx                             // 0x005cb2a0    53
                         push             esi                             // 0x005cb2a1    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]     // 0x005cb2a2    8b74240c
                         xor.s            eax, eax                        // 0x005cb2a6    33c0
                         mov              ax, word ptr [esi]              // 0x005cb2a8    668b06
                         push             edi                             // 0x005cb2ab    57
                         mov.s            edi, ecx                        // 0x005cb2ac    8bf9
                         xor.s            ebx, ebx                        // 0x005cb2ae    33db
                         push             eax                             // 0x005cb2b0    50
                         call             _jmp_addr_0x005cb190            // 0x005cb2b1    e8dafeffff
                         test             eax, eax                        // 0x005cb2b6    85c0
                         {disp8} jne      _jmp_addr_0x005cb2c0            // 0x005cb2b8    7506
                         pop              edi                             // 0x005cb2ba    5f
                         pop              esi                             // 0x005cb2bb    5e
                         pop              ebx                             // 0x005cb2bc    5b
                         ret              0x0008                          // 0x005cb2bd    c20800
_jmp_addr_0x005cb2c0:    xor.s            ecx, ecx                        // 0x005cb2c0    33c9
                         {disp8} mov      cx, word ptr [esi + 0x02]       // 0x005cb2c2    668b4e02
                         add              esi, 0x02                       // 0x005cb2c6    83c602
                         push             ecx                             // 0x005cb2c9    51
                         mov.s            ecx, edi                        // 0x005cb2ca    8bcf
                         call             _jmp_addr_0x005cb1d0            // 0x005cb2cc    e8fffeffff
                         test             eax, eax                        // 0x005cb2d1    85c0
                         {disp8} jne      _jmp_addr_0x005cb2db            // 0x005cb2d3    7506
                         pop              edi                             // 0x005cb2d5    5f
                         pop              esi                             // 0x005cb2d6    5e
                         pop              ebx                             // 0x005cb2d7    5b
                         ret              0x0008                          // 0x005cb2d8    c20800
_jmp_addr_0x005cb2db:    xor.s            eax, eax                        // 0x005cb2db    33c0
                         mov              ax, word ptr [esi]              // 0x005cb2dd    668b06
                         add              eax, -0x43                      // 0x005cb2e0    83c0bd
                         cmp              eax, 0x2d                       // 0x005cb2e3    83f82d
                         {disp32} ja      _jmp_addr_0x005cb378            // 0x005cb2e6    0f878c000000
                         xor.s            edx, edx                        // 0x005cb2ec    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x005cb3b0] // 0x005cb2ee    8a90b0b35c00
                         jmp              dword ptr [edx*4 + 0x5cb394]    // 0x005cb2f4    ff249594b35c00
                         add              esi, 0x02                       // 0x005cb2fb    83c602
                         push             esi                             // 0x005cb2fe    56
                         call             __wtoi                          // 0x005cb2ff    e8d4d41f00
                         add              esp, 0x04                       // 0x005cb304    83c404
                         push             eax                             // 0x005cb307    50
                         mov.s            ecx, edi                        // 0x005cb308    8bcf
                         call             _jmp_addr_0x005cb400            // 0x005cb30a    e8f1000000
                         pop              edi                             // 0x005cb30f    5f
                         pop              esi                             // 0x005cb310    5e
                         mov.s            eax, ebx                        // 0x005cb311    8bc3
                         pop              ebx                             // 0x005cb313    5b
                         ret              0x0008                          // 0x005cb314    c20800
                         pop              edi                             // 0x005cb317    5f
                         pop              esi                             // 0x005cb318    5e
                         mov              eax, 0x00000001                 // 0x005cb319    b801000000
                         pop              ebx                             // 0x005cb31e    5b
                         ret              0x0008                          // 0x005cb31f    c20800
                         pop              edi                             // 0x005cb322    5f
                         pop              esi                             // 0x005cb323    5e
                         mov              eax, 0x00000004                 // 0x005cb324    b804000000
                         pop              ebx                             // 0x005cb329    5b
                         ret              0x0008                          // 0x005cb32a    c20800
                         pop              edi                             // 0x005cb32d    5f
                         pop              esi                             // 0x005cb32e    5e
                         mov              eax, 0x00000005                 // 0x005cb32f    b805000000
                         pop              ebx                             // 0x005cb334    5b
                         ret              0x0008                          // 0x005cb335    c20800
                         add              esi, 0x02                       // 0x005cb338    83c602
                         push             esi                             // 0x005cb33b    56
                         call             __wtoi                          // 0x005cb33c    e897d41f00
                         {disp8} mov      ecx, dword ptr [esp + 0x18]     // 0x005cb341    8b4c2418
                         add              esp, 0x04                       // 0x005cb345    83c404
                         test             ecx, ecx                        // 0x005cb348    85c9
                         {disp8} je       _jmp_addr_0x005cb38b            // 0x005cb34a    743f
                         push             eax                             // 0x005cb34c    50
                         mov.s            ecx, edi                        // 0x005cb34d    8bcf
                         call             _jmp_addr_0x005cb3e0            // 0x005cb34f    e88c000000
                         pop              edi                             // 0x005cb354    5f
                         pop              esi                             // 0x005cb355    5e
                         mov.s            eax, ebx                        // 0x005cb356    8bc3
                         pop              ebx                             // 0x005cb358    5b
                         ret              0x0008                          // 0x005cb359    c20800
                         add              esi, 0x02                       // 0x005cb35c    83c602
                         push             esi                             // 0x005cb35f    56
                         call             __wtoi                          // 0x005cb360    e873d41f00
                         add              esp, 0x04                       // 0x005cb365    83c404
                         push             eax                             // 0x005cb368    50
                         mov.s            ecx, edi                        // 0x005cb369    8bcf
                         call             _jmp_addr_0x005ccea0            // 0x005cb36b    e8301b0000
                         pop              edi                             // 0x005cb370    5f
                         pop              esi                             // 0x005cb371    5e
                         mov.s            eax, ebx                        // 0x005cb372    8bc3
                         pop              ebx                             // 0x005cb374    5b
                         ret              0x0008                          // 0x005cb375    c20800
_jmp_addr_0x005cb378:    push             esi                             // 0x005cb378    56
                         call             __wtoi                          // 0x005cb379    e85ad41f00
                         add              esp, 0x04                       // 0x005cb37e    83c404
                         push             eax                             // 0x005cb381    50
                         mov.s            ecx, edi                        // 0x005cb382    8bcf
                         call             _jmp_addr_0x005cb4c0            // 0x005cb384    e837010000
                         mov.s            ebx, eax                        // 0x005cb389    8bd8
_jmp_addr_0x005cb38b:    pop              edi                             // 0x005cb38b    5f
                         pop              esi                             // 0x005cb38c    5e
                         mov.s            eax, ebx                        // 0x005cb38d    8bc3
                         pop              ebx                             // 0x005cb38f    5b
                         ret              0x0008                          // 0x005cb390    c20800

// Snippet: db, [0x005cb393, 0x005cb394)
.byte 0x90                        // 0x005cb393

// Snippet: jmptbl, [0x005cb394, 0x005cb3b0)
.byte 0xfb, 0xb2, 0x5c, 0x00      // 0x005cb394
.byte 0x2d, 0xb3, 0x5c, 0x00      // 0x005cb398
.byte 0x5c, 0xb3, 0x5c, 0x00      // 0x005cb39c
.byte 0x38, 0xb3, 0x5c, 0x00      // 0x005cb3a0
.byte 0x17, 0xb3, 0x5c, 0x00      // 0x005cb3a4
.byte 0x22, 0xb3, 0x5c, 0x00      // 0x005cb3a8
.byte 0x78, 0xb3, 0x5c, 0x00      // 0x005cb3ac

// Snippet: ijmptbl, [0x005cb3b0, 0x005cb3de)
.byte 0x00, 0x01, 0x06, 0x02      // 0x005cb3b0
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3b4
.byte 0x06, 0x06, 0x03, 0x04      // 0x005cb3b8
.byte 0x06, 0x05, 0x06, 0x06      // 0x005cb3bc
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3c0
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3c4
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3c8
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3cc
.byte 0x00, 0x01, 0x06, 0x02      // 0x005cb3d0
.byte 0x06, 0x06, 0x06, 0x06      // 0x005cb3d4
.byte 0x06, 0x06, 0x03, 0x04      // 0x005cb3d8
.byte 0x06, 0x05                  // 0x005cb3dc

// Snippet: db, [0x005cb3de, 0x005cb3e0)
.byte 0x90, 0x90                  // 0x005cb3de

