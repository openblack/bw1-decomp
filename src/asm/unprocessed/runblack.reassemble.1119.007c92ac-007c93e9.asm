.intel_syntax noprefix
.align 0

.extern rdata_bytes
.extern data_bytes

.globl _calloc

_calloc:                 push                 ebp                                         // 0x007c92ac    55
                         mov.s                ebp, esp                                    // 0x007c92ad    8bec
                         push                 -0x1                                        // 0x007c92af    6aff
                         push                 0x009a0708                                  // 0x007c92b1    6808079a00
                         push                 0x007cd8ac /*__except_handler3*/            // 0x007c92b6    68acd87c00
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c92bb    64a100000000
                         push                 eax                                         // 0x007c92c1    50
                         {disp32} mov         fs:[0x0], esp                               // 0x007c92c2    64892500000000
                         sub                  esp, 0x18                                   // 0x007c92c9    83ec18
                         push                 ebx                                         // 0x007c92cc    53
                         push                 esi                                         // 0x007c92cd    56
                         push                 edi                                         // 0x007c92ce    57
                         {disp8} mov          esi, dword ptr [ebp + 0x08]                 // 0x007c92cf    8b7508
                         imul                 esi, dword ptr [ebp + 0x0c]                 // 0x007c92d2    0faf750c
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c92d6    89750c
                         {disp8} mov          dword ptr [ebp + -0x1c], esi                // 0x007c92d9    8975e4
                         cmp                  esi, -0x20                                  // 0x007c92dc    83fee0
                         {disp8} ja           _jmp_addr_0x007c92f5                        // 0x007c92df    7714
                         xor.s                ebx, ebx                                    // 0x007c92e1    33db
                         cmp.s                esi, ebx                                    // 0x007c92e3    3bf3
                         {disp8} jne          _jmp_addr_0x007c92ea                        // 0x007c92e5    7503
                         push                 0x1                                         // 0x007c92e7    6a01
                         pop                  esi                                         // 0x007c92e9    5e
_jmp_addr_0x007c92ea:    add                  esi, 0x0f                                   // 0x007c92ea    83c60f
                         and                  esi, 0xfffffff0                             // 0x007c92ed    83e6f0
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c92f0    89750c
                         {disp8} jmp          _jmp_addr_0x007c92f7                        // 0x007c92f3    eb02
_jmp_addr_0x007c92f5:    xor.s                ebx, ebx                                    // 0x007c92f5    33db
_jmp_addr_0x007c92f7:    {disp8} mov          dword ptr [ebp + -0x20], ebx                // 0x007c92f7    895de0
                         cmp                  esi, -0x20                                  // 0x007c92fa    83fee0
                         {disp32} ja          _jmp_addr_0x007c93ab                        // 0x007c92fd    0f87a8000000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x5e6cac]      // 0x007c9303    a1acccfa00
                         cmp                  eax, 0x03                                   // 0x007c9308    83f803
                         {disp8} jne          _jmp_addr_0x007c934e                        // 0x007c930b    7541
                         {disp8} mov          edi, dword ptr [ebp + -0x1c]                // 0x007c930d    8b7de4
                         cmp                  edi, dword ptr [data_bytes + 0x5e6ca4]      // 0x007c9310    3b3da4ccfa00
                         {disp8} ja           _jmp_addr_0x007c9394                        // 0x007c9316    777c
                         push                 0x9                                         // 0x007c9318    6a09
                         call                 __lock                                       // 0x007c931a    e897230000
                         pop                  ecx                                         // 0x007c931f    59
                         {disp8} mov          dword ptr [ebp + -0x04], ebx                // 0x007c9320    895dfc
                         push                 edi                                         // 0x007c9323    57
                         call                 _jmp_addr_0x007cea45                        // 0x007c9324    e81c570000
                         pop                  ecx                                         // 0x007c9329    59
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c932a    8945e0
                         or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c932d    834dfcff
                         call                 _jmp_addr_0x007c9345                        // 0x007c9331    e80f000000
                         cmp                  dword ptr [ebp + -0x20], ebx                // 0x007c9336    395de0
                         {disp8} je           _jmp_addr_0x007c9399                        // 0x007c9339    745e
                         push                 dword ptr [ebp + -0x1c]                     // 0x007c933b    ff75e4
                         {disp8} jmp          _jmp_addr_0x007c9388                        // 0x007c933e    eb48
                         xor.s                ebx, ebx                                    // 0x007c9340    33db
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c9342    8b750c
_jmp_addr_0x007c9345:    push                 0x9                                         // 0x007c9345    6a09
                         call                 __unlock                                    // 0x007c9347    e8cb230000
                         pop                  ecx                                         // 0x007c934c    59
                         ret                                                              // 0x007c934d    c3
_jmp_addr_0x007c934e:    cmp                  eax, 0x02                                   // 0x007c934e    83f802
                         {disp8} jne          _jmp_addr_0x007c9394                        // 0x007c9351    7541
                         cmp                  esi, dword ptr [data_bytes + 0x269e44]      // 0x007c9353    3b3544fec200
                         {disp8} ja           _jmp_addr_0x007c9394                        // 0x007c9359    7739
                         push                 0x9                                         // 0x007c935b    6a09
                         call                 __lock                                       // 0x007c935d    e854230000
                         pop                  ecx                                         // 0x007c9362    59
                         {disp8} mov          dword ptr [ebp + -0x04], 0x00000001         // 0x007c9363    c745fc01000000
                         mov.s                eax, esi                                    // 0x007c936a    8bc6
                         shr                  eax, 4                                      // 0x007c936c    c1e804
                         push                 eax                                         // 0x007c936f    50
                         call                 _jmp_addr_0x007cf90a                        // 0x007c9370    e895650000
                         pop                  ecx                                         // 0x007c9375    59
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c9376    8945e0
                         or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c9379    834dfcff
                         call                 _jmp_addr_0x007c93ce                        // 0x007c937d    e84c000000
                         cmp                  dword ptr [ebp + -0x20], ebx                // 0x007c9382    395de0
                         {disp8} je           _jmp_addr_0x007c9399                        // 0x007c9385    7412
                         push                 esi                                         // 0x007c9387    56
_jmp_addr_0x007c9388:    push                 ebx                                         // 0x007c9388    53
                         push                 dword ptr [ebp + -0x20]                     // 0x007c9389    ff75e0
                         call                 _memset                                     // 0x007c938c    e86f1d0000
                         add                  esp, 0x0c                                   // 0x007c9391    83c40c
_jmp_addr_0x007c9394:    cmp                  dword ptr [ebp + -0x20], ebx                // 0x007c9394    395de0
                         {disp8} jne          _jmp_addr_0x007c93d7                        // 0x007c9397    753e
_jmp_addr_0x007c9399:    push                 esi                                         // 0x007c9399    56
                         push                 0x8                                         // 0x007c939a    6a08
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c939c    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x204]             // 0x007c93a2    ff1504928a00
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c93a8    8945e0
_jmp_addr_0x007c93ab:    cmp                  dword ptr [ebp + -0x20], ebx                // 0x007c93ab    395de0
                         {disp8} jne          _jmp_addr_0x007c93d7                        // 0x007c93ae    7527
                         cmp                  dword ptr [data_bytes + 0x4be2c0], ebx      // 0x007c93b0    391dc042e800
                         {disp8} je           _jmp_addr_0x007c93d7                        // 0x007c93b6    741f
                         push                 esi                                         // 0x007c93b8    56
                         call                 _jmp_addr_0x007ce342                        // 0x007c93b9    e8844f0000
                         pop                  ecx                                         // 0x007c93be    59
                         test                 eax, eax                                    // 0x007c93bf    85c0
                         {disp32} jne         _jmp_addr_0x007c92f7                        // 0x007c93c1    0f8530ffffff
                         {disp8} jmp          _jmp_addr_0x007c93da                        // 0x007c93c7    eb11
                         xor.s                ebx, ebx                                    // 0x007c93c9    33db
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c93cb    8b750c
_jmp_addr_0x007c93ce:    push                 0x9                                         // 0x007c93ce    6a09
                         call                 __unlock                                    // 0x007c93d0    e842230000
                         pop                  ecx                                         // 0x007c93d5    59
                         ret                                                              // 0x007c93d6    c3
_jmp_addr_0x007c93d7:    {disp8} mov          eax, dword ptr [ebp + -0x20]                // 0x007c93d7    8b45e0
_jmp_addr_0x007c93da:    {disp8} mov          ecx, dword ptr [ebp + -0x10]                // 0x007c93da    8b4df0
                         {disp32} mov         fs:[0x0], ecx                               // 0x007c93dd    64890d00000000
                         pop                  edi                                         // 0x007c93e4    5f
                         pop                  esi                                         // 0x007c93e5    5e
                         pop                  ebx                                         // 0x007c93e6    5b
                         leave                                                            // 0x007c93e7    c9
                         ret                                                              // 0x007c93e8    c3
