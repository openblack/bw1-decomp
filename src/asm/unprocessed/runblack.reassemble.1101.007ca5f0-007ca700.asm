.intel_syntax noprefix
.align 16

.globl _strlen
.globl _jmp_addr_0x007ca66c
.globl _jmp_addr_0x007ca690
.globl _jmp_addr_0x007ca6ec

_strlen:                 {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007ca5f0    8b4c2404
                         test                 ecx, 0x00000003                             // 0x007ca5f4    f7c103000000
                         {disp8} je           _jmp_addr_0x007ca610                        // 0x007ca5fa    7414
_jmp_addr_0x007ca5fc:    mov                  al, byte ptr [ecx]                          // 0x007ca5fc    8a01
                         inc                  ecx                                         // 0x007ca5fe    41
                         test                 al, al                                      // 0x007ca5ff    84c0
                         {disp8} je           _jmp_addr_0x007ca643                        // 0x007ca601    7440
                         test                 ecx, 0x00000003                             // 0x007ca603    f7c103000000
                         {disp8} jne          _jmp_addr_0x007ca5fc                        // 0x007ca609    75f1
                         .byte                0x5, 0x0, 0x0, 0x0, 0x0// add eax, 0x00000000 // 0x007ca60b    0500000000
_jmp_addr_0x007ca610:    mov                  eax, dword ptr [ecx]                        // 0x007ca610    8b01
                         mov                  edx, 0x7efefeff                             // 0x007ca612    bafffefe7e
                         add.s                edx, eax                                    // 0x007ca617    03d0
                         xor                  eax, 0xffffffff                             // 0x007ca619    83f0ff
                         xor.s                eax, edx                                    // 0x007ca61c    33c2
                         add                  ecx, 0x4                                    // 0x007ca61e    83c104
                         test                 eax, 0x81010100                             // 0x007ca621    a900010181
                         {disp8} je           _jmp_addr_0x007ca610                        // 0x007ca626    74e8
                         {disp8} mov          eax, dword ptr [ecx + -0x04]                // 0x007ca628    8b41fc
                         test                 al, al                                      // 0x007ca62b    84c0
                         {disp8} je           _jmp_addr_0x007ca661                        // 0x007ca62d    7432
                         test                 ah, ah                                      // 0x007ca62f    84e4
                         {disp8} je           _jmp_addr_0x007ca657                        // 0x007ca631    7424
                         test                 eax, 0x00ff0000                             // 0x007ca633    a90000ff00
                         {disp8} je           _jmp_addr_0x007ca64d                        // 0x007ca638    7413
                         test                 eax, 0xff000000                             // 0x007ca63a    a9000000ff
                         {disp8} je           _jmp_addr_0x007ca643                        // 0x007ca63f    7402
                         {disp8} jmp          _jmp_addr_0x007ca610                        // 0x007ca641    ebcd
_jmp_addr_0x007ca643:    {disp8} lea          eax, dword ptr [ecx + -0x01]                // 0x007ca643    8d41ff
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007ca646    8b4c2404
                         sub.s                eax, ecx                                    // 0x007ca64a    2bc1
                         ret                                                              // 0x007ca64c    c3
_jmp_addr_0x007ca64d:    {disp8} lea          eax, dword ptr [ecx + -0x02]                // 0x007ca64d    8d41fe
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007ca650    8b4c2404
                         sub.s                eax, ecx                                    // 0x007ca654    2bc1
                         ret                                                              // 0x007ca656    c3
_jmp_addr_0x007ca657:    {disp8} lea          eax, dword ptr [ecx + -0x03]                // 0x007ca657    8d41fd
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007ca65a    8b4c2404
                         sub.s                eax, ecx                                    // 0x007ca65e    2bc1
                         ret                                                              // 0x007ca660    c3
_jmp_addr_0x007ca661:    {disp8} lea          eax, dword ptr [ecx + -0x04]                // 0x007ca661    8d41fc
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007ca664    8b4c2404
                         sub.s                eax, ecx                                    // 0x007ca668    2bc1
                         ret                                                              // 0x007ca66a    c3
                         int3                                                             // 0x007ca66b    cc
_jmp_addr_0x007ca66c:    push                 -0x1                                        // 0x007ca66c    6aff
                         push                 eax                                         // 0x007ca66e    50
                         {disp32} mov         eax, fs:[0x0]                               // 0x007ca66f    64a100000000
                         push                 eax                                         // 0x007ca675    50
                         {disp8} mov          eax, dword ptr [esp + 0x0c]                 // 0x007ca676    8b44240c
                         {disp32} mov         fs:[0x0], esp                               // 0x007ca67a    64892500000000
                         {disp8} mov          dword ptr [esp + 0x0c], ebp                 // 0x007ca681    896c240c
                         {disp8} lea          ebp, dword ptr [esp + 0x0c]                 // 0x007ca685    8d6c240c
                         push                 eax                                         // 0x007ca689    50
                         ret                                                              // 0x007ca68a    c3
                         int3                                                             // 0x007ca68b    cc
                         int3                                                             // 0x007ca68c    cc
                         int3                                                             // 0x007ca68d    cc
                         int3                                                             // 0x007ca68e    cc
                         int3                                                             // 0x007ca68f    cc
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

