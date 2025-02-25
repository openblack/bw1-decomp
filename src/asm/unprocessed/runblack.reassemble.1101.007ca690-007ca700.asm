.intel_syntax noprefix
.align 16

.globl _jmp_addr_0x007ca690
.globl _jmp_addr_0x007ca6ec

_jmp_addr_0x007ca690:    push                 ebp                                         // 0x007ca690    55
                         mov.s                ebp, esp                                    // 0x007ca691    8bec
                         push                 edi                                         // 0x007ca693    57
                         push                 esi                                         // 0x007ca694    56
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007ca695    8b750c
                         {disp8} mov          ecx, dword ptr [ebp + 0x10]                 // 0x007ca698    8b4d10
                         {disp8} mov          edi, dword ptr [ebp + 0x08]                 // 0x007ca69b    8b7d08
                         mov.s                eax, ecx                                    // 0x007ca69e    8bc1
                         mov.s                edx, ecx                                    // 0x007ca6a0    8bd1
                         add.s                eax, esi                                    // 0x007ca6a2    03c6
                         cmp.s                edi, esi                                    // 0x007ca6a4    3bfe
                         {disp8} jbe          _jmp_addr_0x007ca6b0                        // 0x007ca6a6    7608
                         cmp.s                edi, eax                                    // 0x007ca6a8    3bf8
                         {disp32} jb          _jmp_addr_0x007ca828                        // 0x007ca6aa    0f8278010000
_jmp_addr_0x007ca6b0:    test                 edi, 0x00000003                             // 0x007ca6b0    f7c703000000
                         {disp8} jne          _jmp_addr_0x007ca6cc                        // 0x007ca6b6    7514
                         shr                  ecx, 2                                      // 0x007ca6b8    c1e902
                         and                  edx, 0x03                                   // 0x007ca6bb    83e203
                         cmp                  ecx, 0x08                                   // 0x007ca6be    83f908
                         .byte                0x72, 0x29// {disp8} jb _jmp_addr_0x007ca6ec // 0x007ca6c1    7229
                         rep movsd            es:[edi], dword ptr ds:[esi]                // 0x007ca6c3    f3a5
                         jmp                  dword ptr [edx*4 + 0x7ca7d8]                // 0x007ca6c5    ff2495d8a77c00
_jmp_addr_0x007ca6cc:    mov.s                eax, edi                                    // 0x007ca6cc    8bc7
                         mov                  edx, 0x00000003                             // 0x007ca6ce    ba03000000
                         sub                  ecx, 0x04                                   // 0x007ca6d3    83e904
                         .byte                0x72, 0xc// {disp8} jb _jmp_addr_0x007ca6e4 // 0x007ca6d6    720c
                         and                  eax, 0x03                                   // 0x007ca6d8    83e003
                         add.s                ecx, eax                                    // 0x007ca6db    03c8
                         jmp                  dword ptr [eax*4 + 0x7ca6f0]                // 0x007ca6dd    ff2485f0a67c00
_jmp_addr_0x007ca6e4:    jmp                  dword ptr [ecx*4 + 0x7ca7e8]                // 0x007ca6e4    ff248de8a77c00
                         nop                                                              // 0x007ca6eb    90
_jmp_addr_0x007ca6ec:    jmp                  dword ptr [ecx*4 + 0x7ca76c]                // 0x007ca6ec    ff248d6ca77c00

// Snippet: db, [0x007ca6f3, 0x007ca6f4)
.byte 0x90                        // 0x007ca6f3

// Snippet: jmptbl, [0x007ca6f4, 0x007ca700)
.byte 0x00, 0xa7, 0x7c, 0x00      // 0x007ca6f4
.byte 0x2c, 0xa7, 0x7c, 0x00      // 0x007ca6f8
.byte 0x50, 0xa7, 0x7c, 0x00      // 0x007ca6fc

