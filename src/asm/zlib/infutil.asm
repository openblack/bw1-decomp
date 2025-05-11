.intel_syntax noprefix
.align 16

.globl _inflate_flush

.section .data

_inflate_mask:
.long 0x00000000, 0x00000001, 0x00000003, 0x00000007                                                               // [0x267350] 0x009c6000 + 0x267350 = 0x00c2d350
.long 0x0000000f, 0x0000001f, 0x0000003f, 0x0000007f                                                               // [0x267360] 0x009c6000 + 0x267360 = 0x00c2d360
.long 0x000000ff, 0x000001ff, 0x000003ff, 0x000007ff                                                               // [0x267370] 0x009c6000 + 0x267370 = 0x00c2d370
.long 0x00000fff, 0x00001fff, 0x00003fff, 0x00007fff                                                               // [0x267380] 0x009c6000 + 0x267380 = 0x00c2d380
.long 0x0000ffff                                                                                                   // [0x267390] 0x009c6000 + 0x267390 = 0x00c2d390

.section .text

_inflate_flush:          push             ecx                                           // 0x007c4c30    51
                         push             ebx                                           // 0x007c4c31    53
                         {disp8} mov      ebx, dword ptr [esp + 0x0c]                   // 0x007c4c32    8b5c240c
                         push             ebp                                           // 0x007c4c36    55
                         push             esi                                           // 0x007c4c37    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c4c38    8b742418
                         {disp8} mov      ebp, dword ptr [ebx + 0x34]                   // 0x007c4c3c    8b6b34
                         push             edi                                           // 0x007c4c3f    57
                         {disp8} mov      edi, dword ptr [ebx + 0x30]                   // 0x007c4c40    8b7b30
                         {disp8} mov      eax, dword ptr [esi + 0x0c]                   // 0x007c4c43    8b460c
                         cmp.s            edi, ebp                                      // 0x007c4c46    3bfd
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4c48    89442410
                         {disp8} mov      dword ptr [esp + 0x18], edi                   // 0x007c4c4c    897c2418
                         {disp8} jbe      _jmp_addr_0x007c4c55                          // 0x007c4c50    7603
                         {disp8} mov      ebp, dword ptr [ebx + 0x2c]                   // 0x007c4c52    8b6b2c
_jmp_addr_0x007c4c55:    {disp8} mov      eax, dword ptr [esi + 0x10]                   // 0x007c4c55    8b4610
                         sub.s            ebp, edi                                      // 0x007c4c58    2bef
                         cmp.s            ebp, eax                                      // 0x007c4c5a    3be8
                         {disp8} jbe      _jmp_addr_0x007c4c60                          // 0x007c4c5c    7602
                         mov.s            ebp, eax                                      // 0x007c4c5e    8be8
_jmp_addr_0x007c4c60:    test             ebp, ebp                                      // 0x007c4c60    85ed
                         {disp8} je       _jmp_addr_0x007c4c73                          // 0x007c4c62    740f
                         cmp              dword ptr [esp + 0x20], -0x05                 // 0x007c4c64    837c2420fb
                         {disp8} jne      _jmp_addr_0x007c4c73                          // 0x007c4c69    7508
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000            // 0x007c4c6b    c744242000000000
_jmp_addr_0x007c4c73:    {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c4c73    8b5614
                         sub.s            eax, ebp                                      // 0x007c4c76    2bc5
                         add.s            edx, ebp                                      // 0x007c4c78    03d5
                         {disp8} mov      dword ptr [esi + 0x10], eax                   // 0x007c4c7a    894610
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c4c7d    895614
                         {disp8} mov      eax, dword ptr [ebx + 0x38]                   // 0x007c4c80    8b4338
                         test             eax, eax                                      // 0x007c4c83    85c0
                         {disp8} je       _jmp_addr_0x007c4c98                          // 0x007c4c85    7411
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                   // 0x007c4c87    8b4b3c
                         push             ebp                                           // 0x007c4c8a    55
                         push             edi                                           // 0x007c4c8b    57
                         push             ecx                                           // 0x007c4c8c    51
                         call             eax                                           // 0x007c4c8d    ffd0
                         {disp8} mov      dword ptr [ebx + 0x3c], eax                   // 0x007c4c8f    89433c
                         add              esp, 0x0c                                     // 0x007c4c92    83c40c
                         {disp8} mov      dword ptr [esi + 0x30], eax                   // 0x007c4c95    894630
_jmp_addr_0x007c4c98:    mov.s            ecx, ebp                                      // 0x007c4c98    8bcd
                         mov.s            esi, edi                                      // 0x007c4c9a    8bf7
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4c9c    8b7c2410
                         mov.s            edx, ecx                                      // 0x007c4ca0    8bd1
                         shr              ecx, 2                                        // 0x007c4ca2    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c4ca5    f3a5
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4ca7    8b442418
                         mov.s            ecx, edx                                      // 0x007c4cab    8bca
                         and              ecx, 0x03                                     // 0x007c4cad    83e103
                         add.s            eax, ebp                                      // 0x007c4cb0    03c5
                         rep movsb                                                      // 0x007c4cb2    f3a4
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c4cb4    8b7c2410
                         {disp8} mov      ecx, dword ptr [ebx + 0x2c]                   // 0x007c4cb8    8b4b2c
                         add.s            edi, ebp                                      // 0x007c4cbb    03fd
                         cmp.s            eax, ecx                                      // 0x007c4cbd    3bc1
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c4cbf    897c2410
                         {disp32} jne     _jmp_addr_0x007c4d4a                          // 0x007c4cc3    0f8581000000
                         {disp8} mov      eax, dword ptr [ebx + 0x34]                   // 0x007c4cc9    8b4334
                         {disp8} mov      esi, dword ptr [ebx + 0x28]                   // 0x007c4ccc    8b7328
                         cmp.s            eax, ecx                                      // 0x007c4ccf    3bc1
                         {disp8} mov      dword ptr [esp + 0x18], esi                   // 0x007c4cd1    89742418
                         {disp8} jne      _jmp_addr_0x007c4cda                          // 0x007c4cd5    7503
                         {disp8} mov      dword ptr [ebx + 0x34], esi                   // 0x007c4cd7    897334
_jmp_addr_0x007c4cda:    {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x007c4cda    8b7c241c
                         {disp8} mov      ebp, dword ptr [ebx + 0x34]                   // 0x007c4cde    8b6b34
                         sub.s            ebp, esi                                      // 0x007c4ce1    2bee
                         {disp8} mov      eax, dword ptr [edi + 0x10]                   // 0x007c4ce3    8b4710
                         cmp.s            ebp, eax                                      // 0x007c4ce6    3be8
                         {disp8} jbe      _jmp_addr_0x007c4cec                          // 0x007c4ce8    7602
                         mov.s            ebp, eax                                      // 0x007c4cea    8be8
_jmp_addr_0x007c4cec:    test             ebp, ebp                                      // 0x007c4cec    85ed
                         {disp8} je       _jmp_addr_0x007c4cff                          // 0x007c4cee    740f
                         cmp              dword ptr [esp + 0x20], -0x05                 // 0x007c4cf0    837c2420fb
                         {disp8} jne      _jmp_addr_0x007c4cff                          // 0x007c4cf5    7508
                         {disp8} mov      dword ptr [esp + 0x20], 0x00000000            // 0x007c4cf7    c744242000000000
_jmp_addr_0x007c4cff:    {disp8} mov      edx, dword ptr [edi + 0x14]                   // 0x007c4cff    8b5714
                         sub.s            eax, ebp                                      // 0x007c4d02    2bc5
                         add.s            edx, ebp                                      // 0x007c4d04    03d5
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x007c4d06    894710
                         {disp8} mov      dword ptr [edi + 0x14], edx                   // 0x007c4d09    895714
                         {disp8} mov      eax, dword ptr [ebx + 0x38]                   // 0x007c4d0c    8b4338
                         test             eax, eax                                      // 0x007c4d0f    85c0
                         {disp8} je       _jmp_addr_0x007c4d24                          // 0x007c4d11    7411
                         {disp8} mov      ecx, dword ptr [ebx + 0x3c]                   // 0x007c4d13    8b4b3c
                         push             ebp                                           // 0x007c4d16    55
                         push             esi                                           // 0x007c4d17    56
                         push             ecx                                           // 0x007c4d18    51
                         call             eax                                           // 0x007c4d19    ffd0
                         {disp8} mov      dword ptr [ebx + 0x3c], eax                   // 0x007c4d1b    89433c
                         add              esp, 0x0c                                     // 0x007c4d1e    83c40c
                         {disp8} mov      dword ptr [edi + 0x30], eax                   // 0x007c4d21    894730
_jmp_addr_0x007c4d24:    {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c4d24    8b442410
                         mov.s            ecx, ebp                                      // 0x007c4d28    8bcd
                         mov.s            edx, ecx                                      // 0x007c4d2a    8bd1
                         mov.s            edi, eax                                      // 0x007c4d2c    8bf8
                         shr              ecx, 2                                        // 0x007c4d2e    c1e902
                         rep movsd        es:[edi], dword ptr ds:[esi]                  // 0x007c4d31    f3a5
                         add.s            eax, ebp                                      // 0x007c4d33    03c5
                         mov.s            ecx, edx                                      // 0x007c4d35    8bca
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c4d37    89442410
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4d3b    8b442418
                         and              ecx, 0x03                                     // 0x007c4d3f    83e103
                         add.s            eax, ebp                                      // 0x007c4d42    03c5
                         rep movsb                                                      // 0x007c4d44    f3a4
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c4d46    89442418
_jmp_addr_0x007c4d4a:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c4d4a    8b4c241c
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c4d4e    8b542410
                         pop              edi                                           // 0x007c4d52    5f
                         pop              esi                                           // 0x007c4d53    5e
                         {disp8} mov      dword ptr [ecx + 0x0c], edx                   // 0x007c4d54    89510c
                         {disp8} mov      dword ptr [ebx + 0x30], eax                   // 0x007c4d57    894330
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4d5a    8b442418
                         pop              ebp                                           // 0x007c4d5e    5d
                         pop              ebx                                           // 0x007c4d5f    5b
                         pop              ecx                                           // 0x007c4d60    59
                         ret                                                            // 0x007c4d61    c3
                         nop                                                            // 0x007c4d62    90
                         nop                                                            // 0x007c4d63    90
                         nop                                                            // 0x007c4d64    90
                         nop                                                            // 0x007c4d65    90
                         nop                                                            // 0x007c4d66    90
                         nop                                                            // 0x007c4d67    90
                         nop                                                            // 0x007c4d68    90
                         nop                                                            // 0x007c4d69    90
                         nop                                                            // 0x007c4d6a    90
                         nop                                                            // 0x007c4d6b    90
                         nop                                                            // 0x007c4d6c    90
                         nop                                                            // 0x007c4d6d    90
                         nop                                                            // 0x007c4d6e    90
                         nop                                                            // 0x007c4d6f    90
