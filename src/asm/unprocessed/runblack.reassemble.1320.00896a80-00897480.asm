.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _memmove
.extern _atoi
.extern _strncpy
.extern _strncmp
.extern _strstr
.extern __strdup
.extern _jmp_addr_0x008862d0
.extern _jmp_addr_0x00886570
.extern _jmp_addr_0x00886690
.extern _jmp_addr_0x008866b0
.extern _jmp_addr_0x00887d90
.extern _jmp_addr_0x00887de0
.extern _jmp_addr_0x00887e40
.extern _jmp_addr_0x00887e50
.extern _jmp_addr_0x00887e70
.extern _jmp_addr_0x0088a8d0
.extern _jmp_addr_0x0088fa60
.extern _jmp_addr_0x0088fad0
.extern _jmp_addr_0x0088fb40
.extern _jmp_addr_0x00896560
.extern _jmp_addr_0x008967a0
.extern _jmp_addr_0x008969b0
.extern _jmp_addr_0x008a507e
.extern _jmp_addr_0x008a509c
.extern _jmp_addr_0x008a50ba
.extern _jmp_addr_0x008a50c0
.extern _jmp_addr_0x008a50c6
.extern _jmp_addr_0x008a50d2
.extern _jmp_addr_0x008a50d8
.extern _jmp_addr_0x008a50f0
.extern _jmp_addr_0x008a50fc

.globl _jmp_addr_0x00896a80
.globl _jmp_addr_0x00896b80
.globl _jmp_addr_0x00897010
.globl _jmp_addr_0x00897380
.globl _jmp_addr_0x008973a0
.globl _jmp_addr_0x00897410

start_0x00896a80_0x00897480:
// Snippet: asm, [0x00896a80, 0x0089745a)
_jmp_addr_0x00896a80:    sub              esp, 0x000006fc                                // 0x00896a80    81ecfc060000
                         push             esi                                            // 0x00896a86    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000704]              // 0x00896a87    8bb42404070000
                         {disp8} mov      dword ptr [esp + 0x08], 0x00000000             // 0x00896a8e    c744240800000000
                         {disp8} mov      dword ptr [esp + 0x0c], 0x00000000             // 0x00896a96    c744240c00000000
                         {disp8} mov      dword ptr [esp + 0x04], 0x00000010             // 0x00896a9e    c744240410000000
_jmp_addr_0x00896aa6:    {disp32} mov     eax, dword ptr [esi + 0x00000088]              // 0x00896aa6    8b8688000000
                         {disp8} lea      ecx, dword ptr [esp + 0x08]                    // 0x00896aac    8d4c2408
                         push             ecx                                            // 0x00896ab0    51
                         push             0x0                                            // 0x00896ab1    6a00
                         {disp8} lea      edx, dword ptr [esp + 0x28]                    // 0x00896ab3    8d542428
                         push             0x0                                            // 0x00896ab7    6a00
                         push             edx                                            // 0x00896ab9    52
                         push             0x40                                           // 0x00896aba    6a40
                         {disp8} mov      dword ptr [esp + 0x38], eax                    // 0x00896abc    89442438
                         {disp8} mov      dword ptr [esp + 0x34], 0x00000001             // 0x00896ac0    c744243401000000
                         call             _jmp_WSOCK32_DLL__Ordinal_18                   // 0x00896ac8    e8f3e50000
                         cmp              eax, -0x01                                     // 0x00896acd    83f8ff
                         {disp8} je       _jmp_addr_0x00896b39                           // 0x00896ad0    7467
                         test             eax, eax                                       // 0x00896ad2    85c0
                         {disp8} je       _jmp_addr_0x00896b39                           // 0x00896ad4    7463
                         {disp8} lea      eax, dword ptr [esp + 0x04]                    // 0x00896ad6    8d442404
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x00896ada    8d4c2410
                         push             eax                                            // 0x00896ade    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000088]              // 0x00896adf    8b8688000000
                         push             ecx                                            // 0x00896ae5    51
                         push             0x0                                            // 0x00896ae6    6a00
                         {disp32} lea     edx, dword ptr [esp + 0x00000130]              // 0x00896ae8    8d942430010000
                         push             0x000005db                                     // 0x00896aef    68db050000
                         push             edx                                            // 0x00896af4    52
                         push             eax                                            // 0x00896af5    50
                         call             _jmp_WSOCK32_DLL__Ordinal_17                   // 0x00896af6    e8bfe50000
                         cmp              eax, -0x01                                     // 0x00896afb    83f8ff
                         {disp8} je       _jmp_addr_0x00896aa6                           // 0x00896afe    74a6
                         {disp32} lea     ecx, dword ptr [esp + 0x00000124]              // 0x00896b00    8d8c2424010000
                         push             0x00c3a8ec                                     // 0x00896b07    68eca8c300
                         push             ecx                                            // 0x00896b0c    51
                         call             _strstr                                        // 0x00896b0d    e84e2af3ff
                         add              esp, 0x08                                      // 0x00896b12    83c408
                         test             eax, eax                                       // 0x00896b15    85c0
                         {disp8} je       _jmp_addr_0x00896aa6                           // 0x00896b17    748d
                         {disp8} mov      edx, dword ptr [esp + 0x12]                    // 0x00896b19    8b542412
                         push             0x5                                            // 0x00896b1d    6a05
                         push             edx                                            // 0x00896b1f    52
                         call             _jmp_WSOCK32_DLL__Ordinal_15                   // 0x00896b20    e877e50000
                         push             eax                                            // 0x00896b25    50
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                    // 0x00896b26    8b44241c
                         push             eax                                            // 0x00896b2a    50
                         push             esi                                            // 0x00896b2b    56
                         call             _jmp_addr_0x008969b0                           // 0x00896b2c    e87ffeffff
                         add              esp, 0x10                                      // 0x00896b31    83c410
                         {disp32} jmp     _jmp_addr_0x00896aa6                           // 0x00896b34    e96dffffff
_jmp_addr_0x00896b39:    call             _jmp_addr_0x0088a8d0                           // 0x00896b39    e8923dffff
                         sub              eax, dword ptr [esi + 0x0000008c]              // 0x00896b3e    2b868c000000
                         cmp              eax, 0x00000bb8                                // 0x00896b44    3db80b0000
                         {disp8} jbe      _jmp_addr_0x00896b6c                           // 0x00896b49    7621
                         {disp32} mov     ecx, dword ptr [esi + 0x00000088]              // 0x00896b4b    8b8e88000000
                         push             ecx                                            // 0x00896b51    51
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x00896b52    e86fe50000
                         push             0x3                                            // 0x00896b57    6a03
                         push             esi                                            // 0x00896b59    56
                         {disp32} mov     dword ptr [esi + 0x00000088], 0xffffffff       // 0x00896b5a    c78688000000ffffffff
                         call             _jmp_addr_0x00896560                           // 0x00896b64    e8f7f9ffff
                         add              esp, 0x08                                      // 0x00896b69    83c408
_jmp_addr_0x00896b6c:    xor.s            eax, eax                                       // 0x00896b6c    33c0
                         pop              esi                                            // 0x00896b6e    5e
                         add              esp, 0x000006fc                                // 0x00896b6f    81c4fc060000
                         ret                                                             // 0x00896b75    c3
                         nop                                                             // 0x00896b76    90
                         nop                                                             // 0x00896b77    90
                         nop                                                             // 0x00896b78    90
                         nop                                                             // 0x00896b79    90
                         nop                                                             // 0x00896b7a    90
                         nop                                                             // 0x00896b7b    90
                         nop                                                             // 0x00896b7c    90
                         nop                                                             // 0x00896b7d    90
                         nop                                                             // 0x00896b7e    90
                         nop                                                             // 0x00896b7f    90
_jmp_addr_0x00896b80:    sub              esp, 0x0000010c                                // 0x00896b80    81ec0c010000
                         push             ebx                                            // 0x00896b86    53
                         push             ebp                                            // 0x00896b87    55
                         push             esi                                            // 0x00896b88    56
                         {disp8} lea      ecx, dword ptr [esp + 0x0c]                    // 0x00896b89    8d4c240c
                         push             edi                                            // 0x00896b8d    57
                         {disp32} mov     edi, dword ptr [esp + 0x00000120]              // 0x00896b8e    8bbc2420010000
                         xor.s            ebx, ebx                                       // 0x00896b95    33db
                         push             ecx                                            // 0x00896b97    51
                         {disp32} mov     eax, dword ptr [edi + 0x00000088]              // 0x00896b98    8b8788000000
                         push             ebx                                            // 0x00896b9e    53
                         {disp8} lea      edx, dword ptr [esp + 0x20]                    // 0x00896b9f    8d542420
                         push             ebx                                            // 0x00896ba3    53
                         push             edx                                            // 0x00896ba4    52
                         push             0x40                                           // 0x00896ba5    6a40
                         {disp8} mov      dword ptr [esp + 0x24], ebx                    // 0x00896ba7    895c2424
                         {disp8} mov      dword ptr [esp + 0x28], ebx                    // 0x00896bab    895c2428
                         {disp8} mov      dword ptr [esp + 0x30], eax                    // 0x00896baf    89442430
                         {disp8} mov      dword ptr [esp + 0x2c], 0x00000001             // 0x00896bb3    c744242c01000000
                         call             _jmp_WSOCK32_DLL__Ordinal_18                   // 0x00896bbb    e800e50000
                         test             eax, eax                                       // 0x00896bc0    85c0
                         {disp8} jg       _jmp_addr_0x00896bd1                           // 0x00896bc2    7f0d
                         pop              edi                                            // 0x00896bc4    5f
                         pop              esi                                            // 0x00896bc5    5e
                         pop              ebp                                            // 0x00896bc6    5d
                         xor.s            eax, eax                                       // 0x00896bc7    33c0
                         pop              ebx                                            // 0x00896bc9    5b
                         add              esp, 0x0000010c                                // 0x00896bca    81c40c010000
                         ret                                                             // 0x00896bd0    c3
_jmp_addr_0x00896bd1:    {disp32} mov     eax, dword ptr [data_bytes + 0x5e67c4]         // 0x00896bd1    a1c4c7fa00
                         mov              ecx, 0x000007ff                                // 0x00896bd6    b9ff070000
                         sub.s            ecx, eax                                       // 0x00896bdb    2bc8
                         push             ebx                                            // 0x00896bdd    53
                         {disp32} lea     edx, dword ptr [eax + 0x00fabf70]              // 0x00896bde    8d9070bffa00
                         {disp32} mov     eax, dword ptr [edi + 0x00000088]              // 0x00896be4    8b8788000000
                         push             ecx                                            // 0x00896bea    51
                         push             edx                                            // 0x00896beb    52
                         push             eax                                            // 0x00896bec    50
                         call             _jmp_WSOCK32_DLL__Ordinal_16                   // 0x00896bed    e80ae50000
                         cmp              eax, -0x01                                     // 0x00896bf2    83f8ff
                         {disp32} je      _jmp_addr_0x00896d78                           // 0x00896bf5    0f847d010000
                         cmp.s            eax, ebx                                       // 0x00896bfb    3bc3
                         {disp32} je      _jmp_addr_0x00896d78                           // 0x00896bfd    0f8475010000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e67c4]         // 0x00896c03    8b0dc4c7fa00
                         mov              esi, 0x00fabf70                                // 0x00896c09    be70bffa00
                         add.s            ecx, eax                                       // 0x00896c0e    03c8
                         {disp32} mov     dword ptr [data_bytes + 0x5e67c4], ecx         // 0x00896c10    890dc4c7fa00
                         {disp8} lea      edx, dword ptr [ecx + -0x06]                   // 0x00896c16    8d51fa
                         test             edx, edx                                       // 0x00896c19    85d2
                         {disp32} jl      _jmp_addr_0x00896d4d                           // 0x00896c1b    0f8c2c010000
                         {disp8} jmp      _jmp_addr_0x00896c25                           // 0x00896c21    eb02
_jmp_addr_0x00896c23:    xor.s            ebx, ebx                                       // 0x00896c23    33db
_jmp_addr_0x00896c25:    push             0x7                                            // 0x00896c25    6a07
                         push             0x00c3a8ec                                     // 0x00896c27    68eca8c300
                         push             esi                                            // 0x00896c2c    56
                         call             _strncmp                                       // 0x00896c2d    e86e25f3ff
                         add              esp, 0x0c                                      // 0x00896c32    83c40c
                         test             eax, eax                                       // 0x00896c35    85c0
                         {disp32} je      _jmp_addr_0x00896cec                           // 0x00896c37    0f84af000000
                         cmp              dword ptr [edi + 0x74], ebx                    // 0x00896c3d    395f74
                         {disp32} jne     _jmp_addr_0x00896cec                           // 0x00896c40    0f85a6000000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e67c4]         // 0x00896c46    8b0dc4c7fa00
                         cmp              ecx, 0x06                                      // 0x00896c4c    83f906
                         {disp32} jl      _jmp_addr_0x00896d4d                           // 0x00896c4f    0f8cf8000000
                         {disp32} mov     eax, dword ptr [edi + 0x00000090]              // 0x00896c55    8b8790000000
                         cmp              eax, 0x06                                      // 0x00896c5b    83f806
                         {disp8} je       _jmp_addr_0x00896cad                           // 0x00896c5e    744d
                         cmp              eax, 0x07                                      // 0x00896c60    83f807
                         {disp8} je       _jmp_addr_0x00896cad                           // 0x00896c63    7448
                         mov              ebx, dword ptr [esi]                           // 0x00896c65    8b1e
                         {disp32} mov     eax, dword ptr [edi + 0x00000098]              // 0x00896c67    8b8798000000
                         {disp8} mov      bp, word ptr [esi + 0x04]                      // 0x00896c6d    668b6e04
                         add              esi, 0x04                                      // 0x00896c71    83c604
                         push             eax                                            // 0x00896c74    50
                         push             ebp                                            // 0x00896c75    55
                         add              esi, 0x02                                      // 0x00896c76    83c602
                         call             _jmp_WSOCK32_DLL__Ordinal_15                   // 0x00896c79    e81ee40000
                         and              eax, 0x0000ffff                                // 0x00896c7e    25ffff0000
                         push             eax                                            // 0x00896c83    50
                         push             ebx                                            // 0x00896c84    53
                         push             edi                                            // 0x00896c85    57
                         call             _jmp_addr_0x008967a0                           // 0x00896c86    e815fbffff
                         add              esp, 0x10                                      // 0x00896c8b    83c410
                         cmp              eax, -0x01                                     // 0x00896c8e    83f8ff
                         {disp8} jne      _jmp_addr_0x00896cd1                           // 0x00896c91    753e
                         {disp32} mov     ecx, dword ptr [edi + 0x00000090]              // 0x00896c93    8b8f90000000
                         push             ecx                                            // 0x00896c99    51
                         push             ebp                                            // 0x00896c9a    55
                         call             _jmp_WSOCK32_DLL__Ordinal_15                   // 0x00896c9b    e8fce30000
                         push             eax                                            // 0x00896ca0    50
                         push             ebx                                            // 0x00896ca1    53
                         push             edi                                            // 0x00896ca2    57
                         call             _jmp_addr_0x008969b0                           // 0x00896ca3    e808fdffff
                         add              esp, 0x10                                      // 0x00896ca8    83c410
                         {disp8} jmp      _jmp_addr_0x00896cd1                           // 0x00896cab    eb24
_jmp_addr_0x00896cad:    sub.s            ecx, esi                                       // 0x00896cad    2bce
                         add              ecx, 0x00fabf70                                // 0x00896caf    81c170bffa00
                         push             ecx                                            // 0x00896cb5    51
                         push             esi                                            // 0x00896cb6    56
                         push             edi                                            // 0x00896cb7    57
                         call             _jmp_addr_0x00896dc0                           // 0x00896cb8    e803010000
                         add              esp, 0x0c                                      // 0x00896cbd    83c40c
                         cmp.s            eax, ebx                                       // 0x00896cc0    3bc3
                         {disp8} jge      _jmp_addr_0x00896ccd                           // 0x00896cc2    7d09
                         {disp8} mov      dword ptr [edi + 0x74], 0x00000001             // 0x00896cc4    c7477401000000
                         {disp8} jmp      _jmp_addr_0x00896cd1                           // 0x00896ccb    eb04
_jmp_addr_0x00896ccd:    {disp8} je       _jmp_addr_0x00896d47                           // 0x00896ccd    7478
                         add.s            esi, eax                                       // 0x00896ccf    03f0
_jmp_addr_0x00896cd1:    {disp32} mov     ecx, dword ptr [data_bytes + 0x5e67c4]         // 0x00896cd1    8b0dc4c7fa00
                         mov.s            edx, esi                                       // 0x00896cd7    8bd6
                         sub              edx, 0x00fabf70                                // 0x00896cd9    81ea70bffa00
                         {disp8} lea      eax, dword ptr [ecx + -0x06]                   // 0x00896cdf    8d41fa
                         cmp.s            edx, eax                                       // 0x00896ce2    3bd0
                         {disp32} jle     _jmp_addr_0x00896c23                           // 0x00896ce4    0f8e39ffffff
                         {disp8} jmp      _jmp_addr_0x00896d4d                           // 0x00896cea    eb61
_jmp_addr_0x00896cec:    {disp32} mov     ecx, dword ptr [edi + 0x00000088]              // 0x00896cec    8b8f88000000
                         push             ecx                                            // 0x00896cf2    51
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x00896cf3    e8cee30000
                         {disp32} mov     dword ptr [edi + 0x00000088], 0xffffffff       // 0x00896cf8    c78788000000ffffffff
                         {disp32} mov     dword ptr [data_bytes + 0x5e67c4], ebx         // 0x00896d02    891dc4c7fa00
                         {disp32} mov     eax, dword ptr [edi + 0x00000090]              // 0x00896d08    8b8790000000
                         cmp              eax, 0x06                                      // 0x00896d0e    83f806
                         {disp8} je       _jmp_addr_0x00896d30                           // 0x00896d11    741d
                         cmp              eax, 0x07                                      // 0x00896d13    83f807
                         {disp8} je       _jmp_addr_0x00896d30                           // 0x00896d16    7418
                         push             0x3                                            // 0x00896d18    6a03
                         push             edi                                            // 0x00896d1a    57
                         call             _jmp_addr_0x00896560                           // 0x00896d1b    e840f8ffff
                         add              esp, 0x08                                      // 0x00896d20    83c408
                         xor.s            eax, eax                                       // 0x00896d23    33c0
                         pop              edi                                            // 0x00896d25    5f
                         pop              esi                                            // 0x00896d26    5e
                         pop              ebp                                            // 0x00896d27    5d
                         pop              ebx                                            // 0x00896d28    5b
                         add              esp, 0x0000010c                                // 0x00896d29    81c40c010000
                         ret                                                             // 0x00896d2f    c3
_jmp_addr_0x00896d30:    push             ebx                                            // 0x00896d30    53
                         push             edi                                            // 0x00896d31    57
                         call             _jmp_addr_0x00896560                           // 0x00896d32    e829f8ffff
                         add              esp, 0x08                                      // 0x00896d37    83c408
                         xor.s            eax, eax                                       // 0x00896d3a    33c0
                         pop              edi                                            // 0x00896d3c    5f
                         pop              esi                                            // 0x00896d3d    5e
                         pop              ebp                                            // 0x00896d3e    5d
                         pop              ebx                                            // 0x00896d3f    5b
                         add              esp, 0x0000010c                                // 0x00896d40    81c40c010000
                         ret                                                             // 0x00896d46    c3
_jmp_addr_0x00896d47:    {disp32} mov     ecx, dword ptr [data_bytes + 0x5e67c4]         // 0x00896d47    8b0dc4c7fa00
_jmp_addr_0x00896d4d:    mov              edx, 0x00fabf70                                // 0x00896d4d    ba70bffa00
                         sub.s            edx, esi                                       // 0x00896d52    2bd6
                         add.s            ecx, edx                                       // 0x00896d54    03ca
                         push             ecx                                            // 0x00896d56    51
                         push             esi                                            // 0x00896d57    56
                         push             0x00fabf70                                     // 0x00896d58    6870bffa00
                         {disp32} mov     dword ptr [data_bytes + 0x5e67c4], ecx         // 0x00896d5d    890dc4c7fa00
                         call             _memmove                                       // 0x00896d63    e888f3f2ff
                         add              esp, 0x0c                                      // 0x00896d68    83c40c
                         xor.s            eax, eax                                       // 0x00896d6b    33c0
                         pop              edi                                            // 0x00896d6d    5f
                         pop              esi                                            // 0x00896d6e    5e
                         pop              ebp                                            // 0x00896d6f    5d
                         pop              ebx                                            // 0x00896d70    5b
                         add              esp, 0x0000010c                                // 0x00896d71    81c40c010000
                         ret                                                             // 0x00896d77    c3
_jmp_addr_0x00896d78:    {disp32} mov     eax, dword ptr [edi + 0x00000088]              // 0x00896d78    8b8788000000
                         push             eax                                            // 0x00896d7e    50
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x00896d7f    e842e30000
                         {disp32} mov     dword ptr [edi + 0x00000088], 0xffffffff       // 0x00896d84    c78788000000ffffffff
                         push             edi                                            // 0x00896d8e    57
                         {disp32} mov     dword ptr [data_bytes + 0x5e67c4], ebx         // 0x00896d8f    891dc4c7fa00
                         call             _jmp_addr_0x00897380                           // 0x00896d95    e8e6050000
                         push             0x3                                            // 0x00896d9a    6a03
                         push             edi                                            // 0x00896d9c    57
                         call             _jmp_addr_0x00896560                           // 0x00896d9d    e8bef7ffff
                         add              esp, 0x0c                                      // 0x00896da2    83c40c
                         mov              eax, 0x00000003                                // 0x00896da5    b803000000
                         pop              edi                                            // 0x00896daa    5f
                         pop              esi                                            // 0x00896dab    5e
                         pop              ebp                                            // 0x00896dac    5d
                         pop              ebx                                            // 0x00896dad    5b
                         add              esp, 0x0000010c                                // 0x00896dae    81c40c010000
                         ret                                                             // 0x00896db4    c3
                         nop                                                             // 0x00896db5    90
                         nop                                                             // 0x00896db6    90
                         nop                                                             // 0x00896db7    90
                         nop                                                             // 0x00896db8    90
                         nop                                                             // 0x00896db9    90
                         nop                                                             // 0x00896dba    90
                         nop                                                             // 0x00896dbb    90
                         nop                                                             // 0x00896dbc    90
                         nop                                                             // 0x00896dbd    90
                         nop                                                             // 0x00896dbe    90
                         nop                                                             // 0x00896dbf    90
_jmp_addr_0x00896dc0:    sub              esp, 0x40                                      // 0x00896dc0    83ec40
                         push             ebp                                            // 0x00896dc3    55
                         push             esi                                            // 0x00896dc4    56
                         {disp8} mov      esi, dword ptr [esp + 0x4c]                    // 0x00896dc5    8b74244c
                         push             edi                                            // 0x00896dc9    57
                         {disp32} mov     eax, dword ptr [esi + 0x0000009c]              // 0x00896dca    8b869c000000
                         sub              eax, 0x00                                      // 0x00896dd0    83e800
                         {disp32} je      _jmp_addr_0x00896eef                           // 0x00896dd3    0f8416010000
                         dec              eax                                            // 0x00896dd9    48
                         {disp8} je       _jmp_addr_0x00896e44                           // 0x00896dda    7468
                         dec              eax                                            // 0x00896ddc    48
                         {disp32} jne     _jmp_addr_0x00896f50                           // 0x00896ddd    0f856d010000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e6770]         // 0x00896de3    a170c7fa00
                         {disp8} mov      ecx, dword ptr [esp + 0x58]                    // 0x00896de8    8b4c2458
                         {disp8} mov      ebp, dword ptr [esp + 0x54]                    // 0x00896dec    8b6c2454
                         inc              eax                                            // 0x00896df0    40
                         push             eax                                            // 0x00896df1    50
                         push             ecx                                            // 0x00896df2    51
                         push             ebp                                            // 0x00896df3    55
                         call             _jmp_addr_0x00896fd0                           // 0x00896df4    e8d7010000
                         mov.s            edi, eax                                       // 0x00896df9    8bf8
                         add              esp, 0x0c                                      // 0x00896dfb    83c40c
                         cmp              edi, -0x01                                     // 0x00896dfe    83ffff
                         {disp8} jne      _jmp_addr_0x00896e0c                           // 0x00896e01    7509
                         pop              edi                                            // 0x00896e03    5f
                         pop              esi                                            // 0x00896e04    5e
                         xor.s            eax, eax                                       // 0x00896e05    33c0
                         pop              ebp                                            // 0x00896e07    5d
                         add              esp, 0x40                                      // 0x00896e08    83c440
                         ret                                                             // 0x00896e0b    c3
_jmp_addr_0x00896e0c:    {disp32} mov     edx, dword ptr [esi + 0x00000090]              // 0x00896e0c    8b9690000000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x5e6770]         // 0x00896e12    a170c7fa00
                         push             edx                                            // 0x00896e17    52
                         push             ebp                                            // 0x00896e18    55
                         push             eax                                            // 0x00896e19    50
                         push             0x00fac774                                     // 0x00896e1a    6874c7fa00
                         push             esi                                            // 0x00896e1f    56
                         call             _jmp_addr_0x00896f90                           // 0x00896e20    e86b010000
                         {disp8} mov      byte ptr [edi + ebp * 0x1 + -0x01], 0x5c       // 0x00896e25    c6442fff5c
                         {disp8} mov      ecx, dword ptr [esi + 0x7c]                    // 0x00896e2a    8b4e7c
                         push             0x0                                            // 0x00896e2d    6a00
                         push             eax                                            // 0x00896e2f    50
                         push             ecx                                            // 0x00896e30    51
                         push             0x2                                            // 0x00896e31    6a02
                         push             esi                                            // 0x00896e33    56
                         call             dword ptr [esi + 0x78]                         // 0x00896e34    ff5678
                         add              esp, 0x28                                      // 0x00896e37    83c428
                         {disp8} lea      eax, dword ptr [edi + -0x01]                   // 0x00896e3a    8d47ff
                         pop              edi                                            // 0x00896e3d    5f
                         pop              esi                                            // 0x00896e3e    5e
                         pop              ebp                                            // 0x00896e3f    5d
                         add              esp, 0x40                                      // 0x00896e40    83c440
                         ret                                                             // 0x00896e43    c3
_jmp_addr_0x00896e44:    {disp8} mov      edx, dword ptr [esp + 0x58]                    // 0x00896e44    8b542458
                         {disp8} mov      ebp, dword ptr [esp + 0x54]                    // 0x00896e48    8b6c2454
                         push             0x2                                            // 0x00896e4c    6a02
                         push             edx                                            // 0x00896e4e    52
                         push             ebp                                            // 0x00896e4f    55
                         call             _jmp_addr_0x00896fd0                           // 0x00896e50    e87b010000
                         mov.s            edi, eax                                       // 0x00896e55    8bf8
                         add              esp, 0x0c                                      // 0x00896e57    83c40c
                         cmp              edi, -0x01                                     // 0x00896e5a    83ffff
                         {disp8} jne      _jmp_addr_0x00896e68                           // 0x00896e5d    7509
                         pop              edi                                            // 0x00896e5f    5f
                         pop              esi                                            // 0x00896e60    5e
                         xor.s            eax, eax                                       // 0x00896e61    33c0
                         pop              ebp                                            // 0x00896e63    5d
                         add              esp, 0x40                                      // 0x00896e64    83c440
                         ret                                                             // 0x00896e67    c3
_jmp_addr_0x00896e68:    {disp8} lea      eax, dword ptr [edi + -0x02]                   // 0x00896e68    8d47fe
                         inc              ebp                                            // 0x00896e6b    45
                         push             eax                                            // 0x00896e6c    50
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                    // 0x00896e6d    8d4c2410
                         push             ebp                                            // 0x00896e71    55
                         push             ecx                                            // 0x00896e72    51
                         call             _strncpy                                       // 0x00896e73    e82822f3ff
                         {disp8} lea      edx, dword ptr [esp + 0x18]                    // 0x00896e78    8d542418
                         {disp8} mov      byte ptr [esp + edi * 0x1 + 0x16], 0x00        // 0x00896e7c    c6443c1600
                         push             edx                                            // 0x00896e81    52
                         call             __strdup                                       // 0x00896e82    e8553ef4ff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000094]              // 0x00896e87    8b8e94000000
                         {disp8} mov      dword ptr [esp + 0x68], eax                    // 0x00896e8d    89442468
                         {disp8} lea      eax, dword ptr [esp + 0x68]                    // 0x00896e91    8d442468
                         push             eax                                            // 0x00896e95    50
                         push             ecx                                            // 0x00896e96    51
                         call             _jmp_addr_0x0088fb40                           // 0x00896e97    e8a48cffff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e6770]         // 0x00896e9c    8b0d70c7fa00
                         add              esp, 0x18                                      // 0x00896ea2    83c418
                         xor.s            eax, eax                                       // 0x00896ea5    33c0
                         test             ecx, ecx                                       // 0x00896ea7    85c9
                         {disp32} jle     _jmp_addr_0x00896f50                           // 0x00896ea9    0f8ea1000000
                         mov              edx, 0x00fac774                                // 0x00896eaf    ba74c7fa00
_jmp_addr_0x00896eb4:    cmp              dword ptr [edx], 0x00                          // 0x00896eb4    833a00
                         {disp8} je       _jmp_addr_0x00896ecb                           // 0x00896eb7    7412
                         inc              eax                                            // 0x00896eb9    40
                         add              edx, 0x04                                      // 0x00896eba    83c204
                         cmp.s            eax, ecx                                       // 0x00896ebd    3bc1
                         {disp8} jl       _jmp_addr_0x00896eb4                           // 0x00896ebf    7cf3
                         pop              edi                                            // 0x00896ec1    5f
                         pop              esi                                            // 0x00896ec2    5e
                         or               eax, -0x1                                      // 0x00896ec3    83c8ff
                         pop              ebp                                            // 0x00896ec6    5d
                         add              esp, 0x40                                      // 0x00896ec7    83c440
                         ret                                                             // 0x00896eca    c3
_jmp_addr_0x00896ecb:    {disp8} mov      edx, dword ptr [esp + 0x58]                    // 0x00896ecb    8b542458
                         dec              ecx                                            // 0x00896ecf    49
                         cmp.s            eax, ecx                                       // 0x00896ed0    3bc1
                         {disp32} mov     dword ptr [eax * 0x4 + 0x00fac774], edx        // 0x00896ed2    89148574c7fa00
                         {disp8} jne      _jmp_addr_0x00896ee5                           // 0x00896ed9    750a
                         {disp32} mov     dword ptr [esi + 0x0000009c], 0x00000002       // 0x00896edb    c7869c00000002000000
_jmp_addr_0x00896ee5:    {disp8} lea      eax, dword ptr [edi + -0x01]                   // 0x00896ee5    8d47ff
                         pop              edi                                            // 0x00896ee8    5f
                         pop              esi                                            // 0x00896ee9    5e
                         pop              ebp                                            // 0x00896eea    5d
                         add              esp, 0x40                                      // 0x00896eeb    83c440
                         ret                                                             // 0x00896eee    c3
_jmp_addr_0x00896eef:    {disp8} mov      eax, dword ptr [esp + 0x58]                    // 0x00896eef    8b442458
                         {disp8} mov      edi, dword ptr [esp + 0x54]                    // 0x00896ef3    8b7c2454
                         push             0x3                                            // 0x00896ef7    6a03
                         push             eax                                            // 0x00896ef9    50
                         push             edi                                            // 0x00896efa    57
                         call             _jmp_addr_0x00896fd0                           // 0x00896efb    e8d0000000
                         mov.s            ebp, eax                                       // 0x00896f00    8be8
                         add              esp, 0x0c                                      // 0x00896f02    83c40c
                         cmp              ebp, -0x01                                     // 0x00896f05    83fdff
                         {disp8} jne      _jmp_addr_0x00896f13                           // 0x00896f08    7509
                         pop              edi                                            // 0x00896f0a    5f
                         pop              esi                                            // 0x00896f0b    5e
                         xor.s            eax, eax                                       // 0x00896f0c    33c0
                         pop              ebp                                            // 0x00896f0e    5d
                         add              esp, 0x40                                      // 0x00896f0f    83c440
                         ret                                                             // 0x00896f12    c3
_jmp_addr_0x00896f13:    cmp              ebp, 0x0c                                      // 0x00896f13    83fd0c
                         {disp8} jge      _jmp_addr_0x00896f22                           // 0x00896f16    7d0a
                         pop              edi                                            // 0x00896f18    5f
                         pop              esi                                            // 0x00896f19    5e
                         or               eax, -0x1                                      // 0x00896f1a    83c8ff
                         pop              ebp                                            // 0x00896f1d    5d
                         add              esp, 0x40                                      // 0x00896f1e    83c440
                         ret                                                             // 0x00896f21    c3
_jmp_addr_0x00896f22:    {disp8} lea      ecx, dword ptr [ebp + -0x0c]                   // 0x00896f22    8d4df4
                         add              edi, 0x0c                                      // 0x00896f25    83c70c
                         push             ecx                                            // 0x00896f28    51
                         {disp8} lea      edx, dword ptr [esp + 0x10]                    // 0x00896f29    8d542410
                         push             edi                                            // 0x00896f2d    57
                         push             edx                                            // 0x00896f2e    52
                         call             _strncpy                                       // 0x00896f2f    e86c21f3ff
                         {disp8} lea      eax, dword ptr [esp + 0x18]                    // 0x00896f34    8d442418
                         {disp8} mov      byte ptr [esp + ebp * 0x1 + 0x0b], 0x00        // 0x00896f38    c6442c0b00
                         push             eax                                            // 0x00896f3d    50
                         call             _atoi                           // 0x00896f3e    e844f6f2ff
                         add              esp, 0x10                                      // 0x00896f43    83c410
                         cmp              eax, 0x14                                      // 0x00896f46    83f814
                         {disp32} mov     dword ptr [data_bytes + 0x5e6770], eax         // 0x00896f49    a370c7fa00
                         {disp8} jle      _jmp_addr_0x00896f5a                           // 0x00896f4e    7e0a
_jmp_addr_0x00896f50:    pop              edi                                            // 0x00896f50    5f
                         pop              esi                                            // 0x00896f51    5e
                         or               eax, -0x1                                      // 0x00896f52    83c8ff
                         pop              ebp                                            // 0x00896f55    5d
                         add              esp, 0x40                                      // 0x00896f56    83c440
                         ret                                                             // 0x00896f59    c3
_jmp_addr_0x00896f5a:    {disp32} mov     dword ptr [esi + 0x0000009c], 0x00000001       // 0x00896f5a    c7869c00000001000000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x5e6770]         // 0x00896f64    8b0d70c7fa00
                         test             ecx, ecx                                       // 0x00896f6a    85c9
                         {disp8} jle      _jmp_addr_0x00896f77                           // 0x00896f6c    7e09
                         xor.s            eax, eax                                       // 0x00896f6e    33c0
                         mov              edi, 0x00fac774                                // 0x00896f70    bf74c7fa00
                         rep stosd                                                       // 0x00896f75    f3ab
_jmp_addr_0x00896f77:    pop              edi                                            // 0x00896f77    5f
                         {disp8} lea      eax, dword ptr [ebp + -0x01]                   // 0x00896f78    8d45ff
                         pop              esi                                            // 0x00896f7b    5e
                         pop              ebp                                            // 0x00896f7c    5d
                         add              esp, 0x40                                      // 0x00896f7d    83c440
                         ret                                                             // 0x00896f80    c3
                         nop                                                             // 0x00896f81    90
                         nop                                                             // 0x00896f82    90
                         nop                                                             // 0x00896f83    90
                         nop                                                             // 0x00896f84    90
                         nop                                                             // 0x00896f85    90
                         nop                                                             // 0x00896f86    90
                         nop                                                             // 0x00896f87    90
                         nop                                                             // 0x00896f88    90
                         nop                                                             // 0x00896f89    90
                         nop                                                             // 0x00896f8a    90
                         nop                                                             // 0x00896f8b    90
                         nop                                                             // 0x00896f8c    90
                         nop                                                             // 0x00896f8d    90
                         nop                                                             // 0x00896f8e    90
                         nop                                                             // 0x00896f8f    90
_jmp_addr_0x00896f90:    {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x00896f90    8b4c2414
                         {disp8} mov      edx, dword ptr [esp + 0x10]                    // 0x00896f94    8b542410
                         push             esi                                            // 0x00896f98    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00896f99    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x00000094]              // 0x00896f9d    8b8694000000
                         push             eax                                            // 0x00896fa3    50
                         {disp8} mov      eax, dword ptr [esp + 0x14]                    // 0x00896fa4    8b442414
                         push             ecx                                            // 0x00896fa8    51
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                    // 0x00896fa9    8b4c2414
                         push             edx                                            // 0x00896fad    52
                         push             eax                                            // 0x00896fae    50
                         push             ecx                                            // 0x00896faf    51
                         call             _jmp_addr_0x008862d0                           // 0x00896fb0    e81bf3feff
                         {disp8} mov      dword ptr [esp + 0x1c], eax                    // 0x00896fb5    8944241c
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00896fb9    8b4604
                         {disp8} lea      edx, dword ptr [esp + 0x1c]                    // 0x00896fbc    8d54241c
                         push             edx                                            // 0x00896fc0    52
                         push             eax                                            // 0x00896fc1    50
                         call             _jmp_addr_0x00887e70                           // 0x00896fc2    e8a90effff
                         {disp8} mov      eax, dword ptr [esp + 0x24]                    // 0x00896fc7    8b442424
                         add              esp, 0x1c                                      // 0x00896fcb    83c41c
                         pop              esi                                            // 0x00896fce    5e
                         ret                                                             // 0x00896fcf    c3
_jmp_addr_0x00896fd0:    {disp8} mov      ecx, dword ptr [esp + 0x0c]                    // 0x00896fd0    8b4c240c
                         push             esi                                            // 0x00896fd4    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x00896fd5    8b742408
                         test             ecx, ecx                                       // 0x00896fd9    85c9
                         mov.s            eax, esi                                       // 0x00896fdb    8bc6
                         {disp8} je       _jmp_addr_0x00896ffc                           // 0x00896fdd    741d
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                    // 0x00896fdf    8b54240c
                         add.s            edx, esi                                       // 0x00896fe3    03d6
_jmp_addr_0x00896fe5:    cmp.s            eax, edx                                       // 0x00896fe5    3bc2
                         {disp8} je       _jmp_addr_0x00896ff8                           // 0x00896fe7    740f
                         cmp              byte ptr [eax], 0x5c                           // 0x00896fe9    80385c
                         {disp8} jne      _jmp_addr_0x00896fef                           // 0x00896fec    7501
                         dec              ecx                                            // 0x00896fee    49
_jmp_addr_0x00896fef:    inc              eax                                            // 0x00896fef    40
                         test             ecx, ecx                                       // 0x00896ff0    85c9
                         {disp8} jne      _jmp_addr_0x00896fe5                           // 0x00896ff2    75f1
                         sub.s            eax, esi                                       // 0x00896ff4    2bc6
                         pop              esi                                            // 0x00896ff6    5e
                         ret                                                             // 0x00896ff7    c3
_jmp_addr_0x00896ff8:    test             ecx, ecx                                       // 0x00896ff8    85c9
                         {disp8} jne      _jmp_addr_0x00897000                           // 0x00896ffa    7504
_jmp_addr_0x00896ffc:    sub.s            eax, esi                                       // 0x00896ffc    2bc6
                         pop              esi                                            // 0x00896ffe    5e
                         ret                                                             // 0x00896fff    c3
_jmp_addr_0x00897000:    pop              esi                                            // 0x00897000    5e
                         or               eax, -0x1                                      // 0x00897001    83c8ff
                         ret                                                             // 0x00897004    c3
                         nop                                                             // 0x00897005    90
                         nop                                                             // 0x00897006    90
                         nop                                                             // 0x00897007    90
                         nop                                                             // 0x00897008    90
                         nop                                                             // 0x00897009    90
                         nop                                                             // 0x0089700a    90
                         nop                                                             // 0x0089700b    90
                         nop                                                             // 0x0089700c    90
                         nop                                                             // 0x0089700d    90
                         nop                                                             // 0x0089700e    90
                         nop                                                             // 0x0089700f    90
_jmp_addr_0x00897010:    sub              esp, 0x00000704                                // 0x00897010    81ec04070000
                         push             ebx                                            // 0x00897016    53
                         push             ebp                                            // 0x00897017    55
                         push             esi                                            // 0x00897018    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000714]              // 0x00897019    8bb42414070000
                         push             edi                                            // 0x00897020    57
                         xor.s            ebp, ebp                                       // 0x00897021    33ed
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x00897023    8b466c
                         xor.s            edi, edi                                       // 0x00897026    33ff
                         xor.s            edx, edx                                       // 0x00897028    33d2
                         cmp.s            eax, ebp                                       // 0x0089702a    3bc5
                         {disp8} mov      dword ptr [esp + 0x18], edi                    // 0x0089702c    897c2418
                         {disp8} mov      dword ptr [esp + 0x1c], ebp                    // 0x00897030    896c241c
                         {disp8} mov      dword ptr [esp + 0x20], ebp                    // 0x00897034    896c2420
                         {disp8} mov      dword ptr [esp + 0x14], 0x00000010             // 0x00897038    c744241410000000
                         {disp8} mov      dword ptr [esp + 0x34], edx                    // 0x00897040    89542434
                         {disp32} jle     _jmp_addr_0x008971dc                           // 0x00897044    0f8e92010000
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x0089704a    8b4e08
_jmp_addr_0x0089704d:    cmp              dword ptr [ecx + 0x04], ebp                    // 0x0089704d    396904
                         {disp8} je       _jmp_addr_0x00897067                           // 0x00897050    7415
                         inc              edi                                            // 0x00897052    47
                         cmp              edx, 0x40                                      // 0x00897053    83fa40
                         {disp8} jae      _jmp_addr_0x00897067                           // 0x00897056    730f
                         mov              ebx, dword ptr [ecx]                           // 0x00897058    8b19
                         {disp8} mov      dword ptr [esp + edx * 0x4 + 0x38], ebx        // 0x0089705a    895c9438
                         {disp8} mov      edx, dword ptr [esp + 0x34]                    // 0x0089705e    8b542434
                         inc              edx                                            // 0x00897062    42
                         {disp8} mov      dword ptr [esp + 0x34], edx                    // 0x00897063    89542434
_jmp_addr_0x00897067:    add              ecx, 0x1c                                      // 0x00897067    83c11c
                         dec              eax                                            // 0x0089706a    48
                         {disp8} jne      _jmp_addr_0x0089704d                           // 0x0089706b    75e0
                         cmp.s            edi, ebp                                       // 0x0089706d    3bfd
                         {disp8} mov      dword ptr [esp + 0x18], edi                    // 0x0089706f    897c2418
                         {disp32} jle     _jmp_addr_0x008971dc                           // 0x00897073    0f8e63010000
                         {disp8} lea      eax, dword ptr [esp + 0x1c]                    // 0x00897079    8d44241c
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                    // 0x0089707d    8d4c2434
                         push             eax                                            // 0x00897081    50
                         push             ebp                                            // 0x00897082    55
                         push             ebp                                            // 0x00897083    55
                         push             ecx                                            // 0x00897084    51
                         push             0x40                                           // 0x00897085    6a40
                         call             _jmp_WSOCK32_DLL__Ordinal_18                   // 0x00897087    e834e00000
                         cmp              eax, -0x01                                     // 0x0089708c    83f8ff
                         {disp32} je      _jmp_addr_0x008971dc                           // 0x0089708f    0f8447010000
                         cmp.s            eax, ebp                                       // 0x00897095    3bc5
                         {disp32} je      _jmp_addr_0x008971dc                           // 0x00897097    0f843f010000
                         {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x0089709d    8b466c
                         {disp8} mov      dword ptr [esp + 0x10], ebp                    // 0x008970a0    896c2410
                         cmp.s            eax, ebp                                       // 0x008970a4    3bc5
                         {disp32} jle     _jmp_addr_0x008971dc                           // 0x008970a6    0f8e30010000
_jmp_addr_0x008970ac:    {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x008970ac    8b5608
                         {disp8} mov      ecx, dword ptr [edx + ebp * 0x1 + 0x04]        // 0x008970af    8b4c2a04
                         lea              eax, dword ptr [edx + ebp * 0x1]               // 0x008970b3    8d042a
                         test             ecx, ecx                                       // 0x008970b6    85c9
                         {disp32} je      _jmp_addr_0x008971c5                           // 0x008970b8    0f8407010000
                         mov              edx, dword ptr [eax]                           // 0x008970be    8b10
                         {disp8} lea      ecx, dword ptr [esp + 0x34]                    // 0x008970c0    8d4c2434
                         push             ecx                                            // 0x008970c4    51
                         push             edx                                            // 0x008970c5    52
                         call             _jmp_WSOCK32_DLL__Ordinal_151                  // 0x008970c6    e825e00000
                         test             eax, eax                                       // 0x008970cb    85c0
                         {disp32} je      _jmp_addr_0x008971c5                           // 0x008970cd    0f84f2000000
                         {disp8} lea      eax, dword ptr [esp + 0x14]                    // 0x008970d3    8d442414
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                    // 0x008970d7    8d4c2424
                         push             eax                                            // 0x008970db    50
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x008970dc    8b4608
                         push             ecx                                            // 0x008970df    51
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000010             // 0x008970e0    c744241c10000000
                         mov              ecx, dword ptr [eax + ebp * 0x1]               // 0x008970e8    8b0c28
                         push             0x0                                            // 0x008970eb    6a00
                         {disp32} lea     edx, dword ptr [esp + 0x00000144]              // 0x008970ed    8d942444010000
                         push             0x000005db                                     // 0x008970f4    68db050000
                         push             edx                                            // 0x008970f9    52
                         push             ecx                                            // 0x008970fa    51
                         call             _jmp_WSOCK32_DLL__Ordinal_17                   // 0x008970fb    e8badf0000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x00897100    8b5608
                         {disp8} mov      edi, dword ptr [edx + ebp * 0x1 + 0x10]        // 0x00897103    8b7c2a10
                         lea              ecx, dword ptr [edx + ebp * 0x1]               // 0x00897107    8d0c2a
                         {disp8} mov      edx, dword ptr [esp + 0x28]                    // 0x0089710a    8b542428
                         cmp.s            edx, edi                                       // 0x0089710e    3bd7
                         {disp32} jne     _jmp_addr_0x008971c5                           // 0x00897110    0f85af000000
                         {disp8} mov      dx, word ptr [esp + 0x26]                      // 0x00897116    668b542426
                         cmp              dx, word ptr [ecx + 0x0e]                      // 0x0089711b    663b510e
                         {disp32} jne     _jmp_addr_0x008971c5                           // 0x0089711f    0f85a0000000
                         cmp              eax, -0x01                                     // 0x00897125    83f8ff
                         {disp32} je      _jmp_addr_0x008971be                           // 0x00897128    0f8490000000
                         {disp32} mov     byte ptr [esp + eax * 0x1 + 0x00000138], 0x00  // 0x0089712e    c684043801000000
                         {disp32} lea     eax, dword ptr [esp + 0x00000138]              // 0x00897136    8d842438010000
                         push             0x00c3a8ec                                     // 0x0089713d    68eca8c300
                         push             eax                                            // 0x00897142    50
                         call             _strstr                                        // 0x00897143    e81824f3ff
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x00897148    8b4e08
                         mov.s            edi, eax                                       // 0x0089714b    8bf8
                         add              esp, 0x08                                      // 0x0089714d    83c408
                         {disp8} mov      ebx, dword ptr [ecx + ebp * 0x1 + 0x04]        // 0x00897150    8b5c2904
                         neg              edi                                            // 0x00897154    f7df
                         sbb.s            edi, edi                                       // 0x00897156    1bff
                         neg              edi                                            // 0x00897158    f7df
                         cmp              word ptr [ebx + 0x06], 0x270f                  // 0x0089715a    66817b060f27
                         {disp8} jne      _jmp_addr_0x00897173                           // 0x00897160    7511
                         call             _jmp_addr_0x0088a8d0                           // 0x00897162    e86937ffff
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x00897167    8b5608
                         sub              ax, word ptr [edx + ebp * 0x1 + 0x08]          // 0x0089716a    662b442a08
                         {disp8} mov      word ptr [ebx + 0x06], ax                      // 0x0089716f    66894306
_jmp_addr_0x00897173:    {disp32} lea     eax, dword ptr [esp + 0x00000138]              // 0x00897173    8d842438010000
                         push             eax                                            // 0x0089717a    50
                         push             ebx                                            // 0x0089717b    53
                         call             _jmp_addr_0x00886570                           // 0x0089717c    e8eff3feff
                         add              esp, 0x08                                      // 0x00897181    83c408
                         test             edi, edi                                       // 0x00897184    85ff
                         {disp8} je       _jmp_addr_0x008971c5                           // 0x00897186    743d
                         {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x00897188    8b4e04
                         push             ecx                                            // 0x0089718b    51
                         call             _jmp_addr_0x00887e40                           // 0x0089718c    e8af0cffff
                         mov.s            ecx, eax                                       // 0x00897191    8bc8
                         {disp8} mov      eax, dword ptr [esi + 0x70]                    // 0x00897193    8b4670
                         lea              eax, dword ptr [eax + eax * 0x4]               // 0x00897196    8d0480
                         lea              eax, dword ptr [eax + eax * 0x4]               // 0x00897199    8d0480
                         shl              eax, 2                                         // 0x0089719c    c1e002
                         cdq                                                             // 0x0089719f    99
                         idiv             ecx                                            // 0x008971a0    f7f9
                         {disp8} mov      edx, dword ptr [esi + 0x7c]                    // 0x008971a2    8b567c
                         push             eax                                            // 0x008971a5    50
                         push             ebx                                            // 0x008971a6    53
                         push             edx                                            // 0x008971a7    52
                         push             0x2                                            // 0x008971a8    6a02
                         push             esi                                            // 0x008971aa    56
                         call             dword ptr [esi + 0x78]                         // 0x008971ab    ff5678
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x008971ae    8b4608
                         add              esp, 0x18                                      // 0x008971b1    83c418
                         {disp8} mov      dword ptr [eax + ebp * 0x1 + 0x04], 0x00000000 // 0x008971b4    c744280400000000
                         {disp8} jmp      _jmp_addr_0x008971c5                           // 0x008971bc    eb07
_jmp_addr_0x008971be:    {disp8} mov      dword ptr [ecx + 0x04], 0x00000000             // 0x008971be    c7410400000000
_jmp_addr_0x008971c5:    {disp8} mov      eax, dword ptr [esp + 0x10]                    // 0x008971c5    8b442410
                         {disp8} mov      ecx, dword ptr [esi + 0x6c]                    // 0x008971c9    8b4e6c
                         inc              eax                                            // 0x008971cc    40
                         add              ebp, 0x1c                                      // 0x008971cd    83c51c
                         cmp.s            eax, ecx                                       // 0x008971d0    3bc1
                         {disp8} mov      dword ptr [esp + 0x10], eax                    // 0x008971d2    89442410
                         {disp32} jl      _jmp_addr_0x008970ac                           // 0x008971d6    0f8cd0feffff
_jmp_addr_0x008971dc:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x008971dc    8b466c
                         xor.s            ebx, ebx                                       // 0x008971df    33db
                         test             eax, eax                                       // 0x008971e1    85c0
                         {disp8} jle      _jmp_addr_0x00897218                           // 0x008971e3    7e33
                         xor.s            edi, edi                                       // 0x008971e5    33ff
_jmp_addr_0x008971e7:    {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x008971e7    8b4e08
                         {disp8} mov      eax, dword ptr [edi + ecx * 0x1 + 0x04]        // 0x008971ea    8b440f04
                         test             eax, eax                                       // 0x008971ee    85c0
                         {disp8} je       _jmp_addr_0x0089720d                           // 0x008971f0    741b
                         mov.s            edx, ecx                                       // 0x008971f2    8bd1
                         lea              ebp, dword ptr [edi + edx * 0x1]               // 0x008971f4    8d2c17
                         call             _jmp_addr_0x0088a8d0                           // 0x008971f7    e8d436ffff
                         sub              eax, dword ptr [ebp + 0x08]                    // 0x008971fc    2b4508
                         cmp              eax, 0x00000bb8                                // 0x008971ff    3db80b0000
                         {disp8} jbe      _jmp_addr_0x0089720d                           // 0x00897204    7607
                         {disp8} mov      dword ptr [ebp + 0x04], 0x00000000             // 0x00897206    c7450400000000
_jmp_addr_0x0089720d:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x0089720d    8b466c
                         inc              ebx                                            // 0x00897210    43
                         add              edi, 0x1c                                      // 0x00897211    83c71c
                         cmp.s            ebx, eax                                       // 0x00897214    3bd8
                         {disp8} jl       _jmp_addr_0x008971e7                           // 0x00897216    7ccf
_jmp_addr_0x00897218:    {disp8} mov      eax, dword ptr [esi + 0x74]                    // 0x00897218    8b4674
                         test             eax, eax                                       // 0x0089721b    85c0
                         {disp32} jne     _jmp_addr_0x00897319                           // 0x0089721d    0f85f6000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00897223    8b4604
                         push             eax                                            // 0x00897226    50
                         call             _jmp_addr_0x00887e40                           // 0x00897227    e8140cffff
                         {disp8} mov      ecx, dword ptr [esi + 0x70]                    // 0x0089722c    8b4e70
                         add              esp, 0x04                                      // 0x0089722f    83c404
                         cmp.s            ecx, eax                                       // 0x00897232    3bc8
                         {disp8} jl       _jmp_addr_0x00897242                           // 0x00897234    7c0c
                         {disp8} mov      eax, dword ptr [esp + 0x18]                    // 0x00897236    8b442418
                         test             eax, eax                                       // 0x0089723a    85c0
                         {disp32} je      _jmp_addr_0x00897319                           // 0x0089723c    0f84d7000000
_jmp_addr_0x00897242:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x00897242    8b466c
                         xor.s            ebx, ebx                                       // 0x00897245    33db
                         test             eax, eax                                       // 0x00897247    85c0
                         {disp32} jle     _jmp_addr_0x0089732a                           // 0x00897249    0f8edb000000
                         xor.s            edi, edi                                       // 0x0089724f    33ff
_jmp_addr_0x00897251:    {disp8} mov      ecx, dword ptr [esi + 0x04]                    // 0x00897251    8b4e04
                         {disp8} mov      ebp, dword ptr [esi + 0x70]                    // 0x00897254    8b6e70
                         push             ecx                                            // 0x00897257    51
                         call             _jmp_addr_0x00887e40                           // 0x00897258    e8e30bffff
                         add              esp, 0x04                                      // 0x0089725d    83c404
                         cmp.s            ebp, eax                                       // 0x00897260    3be8
                         {disp32} jge     _jmp_addr_0x0089732a                           // 0x00897262    0f8dc2000000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x00897268    8b5608
                         {disp8} mov      eax, dword ptr [edi + edx * 0x1 + 0x04]        // 0x0089726b    8b441704
                         test             eax, eax                                       // 0x0089726f    85c0
                         {disp32} jne     _jmp_addr_0x008972fd                           // 0x00897271    0f8586000000
                         {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x00897277    8b4604
                         push             ebp                                            // 0x0089727a    55
                         push             eax                                            // 0x0089727b    50
                         call             _jmp_addr_0x00887e50                           // 0x0089727c    e8cf0bffff
                         {disp8} mov      ecx, dword ptr [esi + 0x70]                    // 0x00897281    8b4e70
                         mov              ebp, dword ptr [eax]                           // 0x00897284    8b28
                         inc              ecx                                            // 0x00897286    41
                         push             ebp                                            // 0x00897287    55
                         {disp8} mov      dword ptr [esi + 0x70], ecx                    // 0x00897288    894e70
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x0089728b    8b4e08
                         {disp8} mov      dword ptr [edi + ecx * 0x1 + 0x04], ebp        // 0x0089728e    896c0f04
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x00897292    8b5608
                         {disp8} mov      word ptr [edi + edx * 0x1 + 0x0c], 0x0002      // 0x00897295    66c744170c0200
                         call             _jmp_addr_0x00886690                           // 0x0089729c    e8eff3feff
                         add              esp, 0x0c                                      // 0x008972a1    83c40c
                         push             eax                                            // 0x008972a4    50
                         call             _jmp_WSOCK32_DLL__Ordinal_10                   // 0x008972a5    e8d4dd0000
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x008972aa    8b4e08
                         push             ebp                                            // 0x008972ad    55
                         {disp8} mov      dword ptr [edi + ecx * 0x1 + 0x10], eax        // 0x008972ae    89440f10
                         call             _jmp_addr_0x008866b0                           // 0x008972b2    e8f9f3feff
                         add              esp, 0x04                                      // 0x008972b7    83c404
                         push             eax                                            // 0x008972ba    50
                         call             _jmp_WSOCK32_DLL__Ordinal_9                    // 0x008972bb    e812de0000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                    // 0x008972c0    8b5608
                         push             0x10                                           // 0x008972c3    6a10
                         {disp8} mov      word ptr [edi + edx * 0x1 + 0x0e], ax          // 0x008972c5    668944170e
                         {disp8} mov      eax, dword ptr [esi + 0x08]                    // 0x008972ca    8b4608
                         {disp8} mov      ebp, dword ptr [ebp + 0x08]                    // 0x008972cd    8b6d08
                         add.s            eax, edi                                       // 0x008972d0    03c7
                         shl              ebp, 2                                         // 0x008972d2    c1e502
                         {disp8} lea      ecx, dword ptr [eax + 0x0c]                    // 0x008972d5    8d480c
                         {disp32} mov     edx, dword ptr [ebp + 0x009a3f54]              // 0x008972d8    8b95543f9a00
                         push             ecx                                            // 0x008972de    51
                         {disp32} mov     ecx, dword ptr [ebp + 0x00c3ace0]              // 0x008972df    8b8de0acc300
                         push             0x0                                            // 0x008972e5    6a00
                         push             edx                                            // 0x008972e7    52
                         mov              edx, dword ptr [eax]                           // 0x008972e8    8b10
                         push             ecx                                            // 0x008972ea    51
                         push             edx                                            // 0x008972eb    52
                         call             _jmp_WSOCK32_DLL__Ordinal_20                   // 0x008972ec    e8e7dd0000
                         call             _jmp_addr_0x0088a8d0                           // 0x008972f1    e8da35ffff
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                    // 0x008972f6    8b4e08
                         {disp8} mov      dword ptr [edi + ecx * 0x1 + 0x08], eax        // 0x008972f9    89440f08
_jmp_addr_0x008972fd:    {disp8} mov      eax, dword ptr [esi + 0x6c]                    // 0x008972fd    8b466c
                         inc              ebx                                            // 0x00897300    43
                         add              edi, 0x1c                                      // 0x00897301    83c71c
                         cmp.s            ebx, eax                                       // 0x00897304    3bd8
                         {disp32} jl      _jmp_addr_0x00897251                           // 0x00897306    0f8c45ffffff
                         pop              edi                                            // 0x0089730c    5f
                         pop              esi                                            // 0x0089730d    5e
                         pop              ebp                                            // 0x0089730e    5d
                         xor.s            eax, eax                                       // 0x0089730f    33c0
                         pop              ebx                                            // 0x00897311    5b
                         add              esp, 0x00000704                                // 0x00897312    81c404070000
                         ret                                                             // 0x00897318    c3
_jmp_addr_0x00897319:    push             esi                                            // 0x00897319    56
                         call             _jmp_addr_0x00897340                           // 0x0089731a    e821000000
                         push             0x0                                            // 0x0089731f    6a00
                         push             esi                                            // 0x00897321    56
                         call             _jmp_addr_0x00896560                           // 0x00897322    e839f2ffff
                         add              esp, 0x0c                                      // 0x00897327    83c40c
_jmp_addr_0x0089732a:    pop              edi                                            // 0x0089732a    5f
                         pop              esi                                            // 0x0089732b    5e
                         pop              ebp                                            // 0x0089732c    5d
                         xor.s            eax, eax                                       // 0x0089732d    33c0
                         pop              ebx                                            // 0x0089732f    5b
                         add              esp, 0x00000704                                // 0x00897330    81c404070000
                         ret                                                             // 0x00897336    c3
                         nop                                                             // 0x00897337    90
                         nop                                                             // 0x00897338    90
                         nop                                                             // 0x00897339    90
                         nop                                                             // 0x0089733a    90
                         nop                                                             // 0x0089733b    90
                         nop                                                             // 0x0089733c    90
                         nop                                                             // 0x0089733d    90
                         nop                                                             // 0x0089733e    90
                         nop                                                             // 0x0089733f    90
_jmp_addr_0x00897340:    push             ebx                                            // 0x00897340    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                    // 0x00897341    8b5c2408
                         push             esi                                            // 0x00897345    56
                         xor.s            esi, esi                                       // 0x00897346    33f6
                         {disp8} mov      eax, dword ptr [ebx + 0x6c]                    // 0x00897348    8b436c
                         test             eax, eax                                       // 0x0089734b    85c0
                         {disp8} jle      _jmp_addr_0x0089736f                           // 0x0089734d    7e20
                         push             edi                                            // 0x0089734f    57
                         xor.s            edi, edi                                       // 0x00897350    33ff
_jmp_addr_0x00897352:    {disp8} mov      eax, dword ptr [ebx + 0x08]                    // 0x00897352    8b4308
                         mov              ecx, dword ptr [eax + edi * 0x1]               // 0x00897355    8b0c38
                         push             ecx                                            // 0x00897358    51
                         call             _jmp_WSOCK32_DLL__Ordinal_3                    // 0x00897359    e868dd0000
                         {disp8} mov      eax, dword ptr [ebx + 0x6c]                    // 0x0089735e    8b436c
                         inc              esi                                            // 0x00897361    46
                         add              edi, 0x1c                                      // 0x00897362    83c71c
                         cmp.s            esi, eax                                       // 0x00897365    3bf0
                         {disp8} jl       _jmp_addr_0x00897352                           // 0x00897367    7ce9
                         pop              edi                                            // 0x00897369    5f
                         pop              esi                                            // 0x0089736a    5e
                         xor.s            eax, eax                                       // 0x0089736b    33c0
                         pop              ebx                                            // 0x0089736d    5b
                         ret                                                             // 0x0089736e    c3
_jmp_addr_0x0089736f:    pop              esi                                            // 0x0089736f    5e
                         xor.s            eax, eax                                       // 0x00897370    33c0
                         pop              ebx                                            // 0x00897372    5b
                         ret                                                             // 0x00897373    c3
                         nop                                                             // 0x00897374    90
                         nop                                                             // 0x00897375    90
                         nop                                                             // 0x00897376    90
                         nop                                                             // 0x00897377    90
                         nop                                                             // 0x00897378    90
                         nop                                                             // 0x00897379    90
                         nop                                                             // 0x0089737a    90
                         nop                                                             // 0x0089737b    90
                         nop                                                             // 0x0089737c    90
                         nop                                                             // 0x0089737d    90
                         nop                                                             // 0x0089737e    90
                         nop                                                             // 0x0089737f    90
_jmp_addr_0x00897380:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00897380    8b442404
                         cmp              dword ptr [eax], 0x00                          // 0x00897384    833800
                         {disp8} je       _jmp_addr_0x00897390                           // 0x00897387    7407
                         {disp8} mov      dword ptr [eax + 0x74], 0x00000001             // 0x00897389    c7407401000000
_jmp_addr_0x00897390:    xor.s            eax, eax                                       // 0x00897390    33c0
                         ret                                                             // 0x00897392    c3
                         nop                                                             // 0x00897393    90
                         nop                                                             // 0x00897394    90
                         nop                                                             // 0x00897395    90
                         nop                                                             // 0x00897396    90
                         nop                                                             // 0x00897397    90
                         nop                                                             // 0x00897398    90
                         nop                                                             // 0x00897399    90
                         nop                                                             // 0x0089739a    90
                         nop                                                             // 0x0089739b    90
                         nop                                                             // 0x0089739c    90
                         nop                                                             // 0x0089739d    90
                         nop                                                             // 0x0089739e    90
                         nop                                                             // 0x0089739f    90
_jmp_addr_0x008973a0:    push             esi                                            // 0x008973a0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                    // 0x008973a1    8b742408
                         cmp              dword ptr [esi], 0x00                          // 0x008973a5    833e00
                         {disp8} je       _jmp_addr_0x008973b1                           // 0x008973a8    7407
                         mov              eax, 0x00000004                                // 0x008973aa    b804000000
                         pop              esi                                            // 0x008973af    5e
                         ret                                                             // 0x008973b0    c3
_jmp_addr_0x008973b1:    {disp8} mov      eax, dword ptr [esi + 0x04]                    // 0x008973b1    8b4604
                         push             eax                                            // 0x008973b4    50
                         call             _jmp_addr_0x00887de0                           // 0x008973b5    e8260affff
                         push             0x008862b0                                     // 0x008973ba    68b0628800
                         push             0x40                                           // 0x008973bf    6a40
                         push             0x4                                            // 0x008973c1    6a04
                         call             _jmp_addr_0x00887d90                           // 0x008973c3    e8c809ffff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000094]              // 0x008973c8    8b8e94000000
                         {disp8} mov      dword ptr [esi + 0x04], eax                    // 0x008973ce    894604
                         push             ecx                                            // 0x008973d1    51
                         call             _jmp_addr_0x0088fad0                           // 0x008973d2    e8f986ffff
                         push             0x00886a40                                     // 0x008973d7    68406a8800
                         push             0x00886a10                                     // 0x008973dc    68106a8800
                         push             0x00886990                                     // 0x008973e1    6890698800
                         push             0x4                                            // 0x008973e6    6a04
                         push             0x000001f4                                     // 0x008973e8    68f4010000
                         push             0x4                                            // 0x008973ed    6a04
                         call             _jmp_addr_0x0088fa60                           // 0x008973ef    e86c86ffff
                         add              esp, 0x2c                                      // 0x008973f4    83c42c
                         {disp32} mov     dword ptr [esi + 0x00000094], eax              // 0x008973f7    898694000000
                         {disp32} mov     dword ptr [esi + 0x00000098], 0x00000000       // 0x008973fd    c7869800000000000000
                         xor.s            eax, eax                                       // 0x00897407    33c0
                         pop              esi                                            // 0x00897409    5e
                         ret                                                             // 0x0089740a    c3
                         nop                                                             // 0x0089740b    90
                         nop                                                             // 0x0089740c    90
                         nop                                                             // 0x0089740d    90
                         nop                                                             // 0x0089740e    90
                         nop                                                             // 0x0089740f    90
_jmp_addr_0x00897410:    {disp8} mov      eax, dword ptr [esp + 0x04]                    // 0x00897410    8b442404
                         mov              eax, dword ptr [eax]                           // 0x00897414    8b00
                         ret                                                             // 0x00897416    c3
                         nop                                                             // 0x00897417    90
                         nop                                                             // 0x00897418    90
                         nop                                                             // 0x00897419    90
                         nop                                                             // 0x0089741a    90
                         nop                                                             // 0x0089741b    90
                         nop                                                             // 0x0089741c    90
                         nop                                                             // 0x0089741d    90
                         nop                                                             // 0x0089741e    90
                         nop                                                             // 0x0089741f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                    // 0x00897420    8b442408
                         cmp              eax, 0x05                                      // 0x00897424    83f805
                         {disp8} ja       _jmp_addr_0x00897454                           // 0x00897427    772b
                         jmp              dword ptr [eax*4 + 0x89745c]                   // 0x00897429    ff24855c748900
                         mov              eax, 0x00c58370                                // 0x00897430    b87083c500
                         ret                                                             // 0x00897435    c3
                         mov              eax, 0x00c3ae64                                // 0x00897436    b864aec300
                         ret                                                             // 0x0089743b    c3
                         mov              eax, 0x00c3ae48                                // 0x0089743c    b848aec300
                         ret                                                             // 0x00897441    c3
                         mov              eax, 0x00c3ae2c                                // 0x00897442    b82caec300
                         ret                                                             // 0x00897447    c3
                         mov              eax, 0x00c3ae18                                // 0x00897448    b818aec300
                         ret                                                             // 0x0089744d    c3
                         mov              eax, 0x00c3adf8                                // 0x0089744e    b8f8adc300
                         ret                                                             // 0x00897453    c3
_jmp_addr_0x00897454:    mov              eax, 0x00c3ade4                                // 0x00897454    b8e4adc300
                         ret                                                             // 0x00897459    c3

// Snippet: db, [0x0089745a, 0x0089745c)
.byte 0x8b, 0xff                  // 0x0089745a

// Snippet: jmptbl, [0x0089745c, 0x00897474)
.byte 0x30, 0x74, 0x89, 0x00      // 0x0089745c
.byte 0x36, 0x74, 0x89, 0x00      // 0x00897460
.byte 0x3c, 0x74, 0x89, 0x00      // 0x00897464
.byte 0x42, 0x74, 0x89, 0x00      // 0x00897468
.byte 0x48, 0x74, 0x89, 0x00      // 0x0089746c
.byte 0x4e, 0x74, 0x89, 0x00      // 0x00897470

// Snippet: db, [0x00897474, 0x00897480)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00897474
.byte 0x90, 0x90, 0x90, 0x90      // 0x00897478
.byte 0x90, 0x90, 0x90, 0x90      // 0x0089747c

