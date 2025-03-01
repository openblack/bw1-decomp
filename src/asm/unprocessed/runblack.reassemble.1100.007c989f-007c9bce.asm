.intel_syntax noprefix
.align 0

.extern rdata_bytes
.extern data_bytes

.extern __lock
.extern __unlock
.extern _jmp_addr_0x007ce342
.extern _jmp_addr_0x007ce6f1
.extern _jmp_addr_0x007ce71c
.extern _jmp_addr_0x007cea45
.extern _jmp_addr_0x007ceefa
.extern _jmp_addr_0x007cf86e
.extern _jmp_addr_0x007cf8c5
.extern _jmp_addr_0x007cf90a
.extern _jmp_addr_0x007cfc36

.globl _jmp_addr_0x007c989f

// Probably a type of realloc but it doesn't seem to match VS98
_jmp_addr_0x007c989f:    push                 ebp                                         // 0x007c989f    55
                         mov.s                ebp, esp                                    // 0x007c98a0    8bec
                         push                 -0x1                                        // 0x007c98a2    6aff
                         push                 0x009a0720                                  // 0x007c98a4    6820079a00
                         push                 0x007cd8ac /*__except_handler3*/            // 0x007c98a9    68acd87c00
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c98ae    64a100000000
                         push                 eax                                         // 0x007c98b4    50
                         {disp32} mov         fs:[0x0], esp                               // 0x007c98b5    64892500000000
                         sub                  esp, 0x28                                   // 0x007c98bc    83ec28
                         push                 ebx                                         // 0x007c98bf    53
                         push                 esi                                         // 0x007c98c0    56
                         push                 edi                                         // 0x007c98c1    57
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c98c2    8b5d08
                         xor.s                edi, edi                                    // 0x007c98c5    33ff
                         cmp.s                ebx, edi                                    // 0x007c98c7    3bdf
                         {disp8} jne          _jmp_addr_0x007c98d9                        // 0x007c98c9    750e
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c98cb    ff750c
                         call                 _malloc                                     // 0x007c98ce    e879cdffff
                         pop                  ecx                                         // 0x007c98d3    59
                         {disp32} jmp         _jmp_addr_0x007c9bbf                        // 0x007c98d4    e9e6020000
_jmp_addr_0x007c98d9:    {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c98d9    8b750c
                         cmp.s                esi, edi                                    // 0x007c98dc    3bf7
                         {disp8} jne          _jmp_addr_0x007c98ec                        // 0x007c98de    750c
                         push                 ebx                                         // 0x007c98e0    53
                         call                 _free                                       // 0x007c98e1    e8a0ceffff
                         pop                  ecx                                         // 0x007c98e6    59
                         {disp32} jmp         _jmp_addr_0x007c9bbd                        // 0x007c98e7    e9d1020000
_jmp_addr_0x007c98ec:    {disp32} mov         eax, dword ptr [data_bytes + 0x5e6cac]      // 0x007c98ec    a1acccfa00
                         cmp                  eax, 0x03                                   // 0x007c98f1    83f803
                         {disp32} jne         _jmp_addr_0x007c9a33                        // 0x007c98f4    0f8539010000
_jmp_addr_0x007c98fa:    {disp8} mov          dword ptr [ebp + -0x24], edi                // 0x007c98fa    897ddc
                         cmp                  esi, -0x20                                  // 0x007c98fd    83fee0
                         {disp32} ja          _jmp_addr_0x007c99f7                        // 0x007c9900    0f87f1000000
                         push                 0x9                                         // 0x007c9906    6a09
                         call                 __lock                                      // 0x007c9908    e8a91d0000
                         pop                  ecx                                         // 0x007c990d    59
                         {disp8} mov          dword ptr [ebp + -0x04], edi                // 0x007c990e    897dfc
                         push                 ebx                                         // 0x007c9911    53
                         call                 _jmp_addr_0x007ce6f1                        // 0x007c9912    e8da4d0000
                         pop                  ecx                                         // 0x007c9917    59
                         {disp8} mov          dword ptr [ebp + -0x28], eax                // 0x007c9918    8945d8
                         cmp.s                eax, edi                                    // 0x007c991b    3bc7
                         {disp32} je          _jmp_addr_0x007c99c7                        // 0x007c991d    0f84a4000000
                         cmp                  esi, dword ptr [data_bytes + 0x5e6ca4]      // 0x007c9923    3b35a4ccfa00
                         {disp8} ja           _jmp_addr_0x007c9977                        // 0x007c9929    774c
                         push                 esi                                         // 0x007c992b    56
                         push                 ebx                                         // 0x007c992c    53
                         push                 eax                                         // 0x007c992d    50
                         call                 _jmp_addr_0x007ceefa                        // 0x007c992e    e8c7550000
                         add                  esp, 0x0c                                   // 0x007c9933    83c40c
                         test                 eax, eax                                    // 0x007c9936    85c0
                         {disp8} je           _jmp_addr_0x007c993f                        // 0x007c9938    7405
                         {disp8} mov          dword ptr [ebp + -0x24], ebx                // 0x007c993a    895ddc
                         {disp8} jmp          _jmp_addr_0x007c9977                        // 0x007c993d    eb38
_jmp_addr_0x007c993f:    push                 esi                                         // 0x007c993f    56
                         call                 _jmp_addr_0x007cea45                        // 0x007c9940    e800510000
                         pop                  ecx                                         // 0x007c9945    59
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c9946    8945dc
                         cmp.s                eax, edi                                    // 0x007c9949    3bc7
                         {disp8} je           _jmp_addr_0x007c9977                        // 0x007c994b    742a
                         {disp8} mov          eax, dword ptr [ebx + -0x04]                // 0x007c994d    8b43fc
                         dec                  eax                                         // 0x007c9950    48
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c9951    8945e0
                         cmp.s                eax, esi                                    // 0x007c9954    3bc6
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c995a // 0x007c9956    7202
                         mov.s                eax, esi                                    // 0x007c9958    8bc6
_jmp_addr_0x007c995a:    push                 eax                                         // 0x007c995a    50
                         push                 ebx                                         // 0x007c995b    53
                         push                 dword ptr [ebp + -0x24]                     // 0x007c995c    ff75dc
                         call                 _memcpy                                     // 0x007c995f    e82c0d0000
                         push                 ebx                                         // 0x007c9964    53
                         call                 _jmp_addr_0x007ce6f1                        // 0x007c9965    e8874d0000
                         {disp8} mov          dword ptr [ebp + -0x28], eax                // 0x007c996a    8945d8
                         push                 ebx                                         // 0x007c996d    53
                         push                 eax                                         // 0x007c996e    50
                         call                 _jmp_addr_0x007ce71c                        // 0x007c996f    e8a84d0000
                         add                  esp, 0x18                                   // 0x007c9974    83c418
_jmp_addr_0x007c9977:    cmp                  dword ptr [ebp + -0x24], edi                // 0x007c9977    397ddc
                         {disp8} jne          _jmp_addr_0x007c99c7                        // 0x007c997a    754b
                         cmp.s                esi, edi                                    // 0x007c997c    3bf7
                         {disp8} jne          _jmp_addr_0x007c9986                        // 0x007c997e    7506
                         push                 0x1                                         // 0x007c9980    6a01
                         pop                  esi                                         // 0x007c9982    5e
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c9983    89750c
_jmp_addr_0x007c9986:    add                  esi, 0x0f                                   // 0x007c9986    83c60f
                         and                  esi, 0xfffffff0                             // 0x007c9989    83e6f0
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c998c    89750c
                         push                 esi                                         // 0x007c998f    56
                         push                 edi                                         // 0x007c9990    57
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c9991    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x204]             // 0x007c9997    ff1504928a00
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c999d    8945dc
                         cmp.s                eax, edi                                    // 0x007c99a0    3bc7
                         {disp8} je           _jmp_addr_0x007c99c7                        // 0x007c99a2    7423
                         {disp8} mov          eax, dword ptr [ebx + -0x04]                // 0x007c99a4    8b43fc
                         dec                  eax                                         // 0x007c99a7    48
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c99a8    8945e0
                         cmp.s                eax, esi                                    // 0x007c99ab    3bc6
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c99b1 // 0x007c99ad    7202
                         mov.s                eax, esi                                    // 0x007c99af    8bc6
_jmp_addr_0x007c99b1:    push                 eax                                         // 0x007c99b1    50
                         push                 ebx                                         // 0x007c99b2    53
                         push                 dword ptr [ebp + -0x24]                     // 0x007c99b3    ff75dc
                         call                 _memcpy                                     // 0x007c99b6    e8d50c0000
                         push                 ebx                                         // 0x007c99bb    53
                         push                 dword ptr [ebp + -0x28]                     // 0x007c99bc    ff75d8
                         call                 _jmp_addr_0x007ce71c                        // 0x007c99bf    e8584d0000
                         add                  esp, 0x14                                   // 0x007c99c4    83c414
_jmp_addr_0x007c99c7:    or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c99c7    834dfcff
                         call                 _jmp_addr_0x007c9a2a                        // 0x007c99cb    e85a000000
                         cmp                  dword ptr [ebp + -0x28], edi                // 0x007c99d0    397dd8
                         {disp8} jne          _jmp_addr_0x007c99f7                        // 0x007c99d3    7522
                         cmp.s                esi, edi                                    // 0x007c99d5    3bf7
                         {disp8} jne          _jmp_addr_0x007c99dc                        // 0x007c99d7    7503
                         push                 0x1                                         // 0x007c99d9    6a01
                         pop                  esi                                         // 0x007c99db    5e
_jmp_addr_0x007c99dc:    add                  esi, 0x0f                                   // 0x007c99dc    83c60f
                         and                  esi, 0xfffffff0                             // 0x007c99df    83e6f0
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c99e2    89750c
                         push                 esi                                         // 0x007c99e5    56
                         push                 ebx                                         // 0x007c99e6    53
                         push                 edi                                         // 0x007c99e7    57
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c99e8    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x1e0]             // 0x007c99ee    ff15e0918a00
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c99f4    8945dc
_jmp_addr_0x007c99f7:    {disp8} mov          eax, dword ptr [ebp + -0x24]                // 0x007c99f7    8b45dc
                         cmp.s                eax, edi                                    // 0x007c99fa    3bc7
                         {disp32} jne         _jmp_addr_0x007c9bbf                        // 0x007c99fc    0f85bd010000
                         cmp                  dword ptr [data_bytes + 0x4be2c0], edi      // 0x007c9a02    393dc042e800
                         {disp32} je          _jmp_addr_0x007c9bbf                        // 0x007c9a08    0f84b1010000
                         push                 esi                                         // 0x007c9a0e    56
                         call                 _jmp_addr_0x007ce342                        // 0x007c9a0f    e82e490000
                         pop                  ecx                                         // 0x007c9a14    59
                         test                 eax, eax                                    // 0x007c9a15    85c0
                         {disp32} jne         _jmp_addr_0x007c98fa                        // 0x007c9a17    0f85ddfeffff
                         {disp32} jmp         _jmp_addr_0x007c9bbd                        // 0x007c9a1d    e99b010000
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c9a22    8b750c
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c9a25    8b5d08
                         xor.s                edi, edi                                    // 0x007c9a28    33ff
_jmp_addr_0x007c9a2a:    push                 0x9                                         // 0x007c9a2a    6a09
                         call                 __unlock                                    // 0x007c9a2c    e8e61c0000
                         pop                  ecx                                         // 0x007c9a31    59
                         ret                                                              // 0x007c9a32    c3
_jmp_addr_0x007c9a33:    cmp                  eax, 0x02                                   // 0x007c9a33    83f802
                         {disp32} jne         _jmp_addr_0x007c9b83                        // 0x007c9a36    0f8547010000
                         cmp                  esi, -0x20                                  // 0x007c9a3c    83fee0
                         {disp8} ja           _jmp_addr_0x007c9a53                        // 0x007c9a3f    7712
                         cmp.s                esi, edi                                    // 0x007c9a41    3bf7
                         {disp8} jbe          _jmp_addr_0x007c9a4d                        // 0x007c9a43    7608
                         add                  esi, 0x0f                                   // 0x007c9a45    83c60f
                         and                  esi, 0xfffffff0                             // 0x007c9a48    83e6f0
                         {disp8} jmp          _jmp_addr_0x007c9a50                        // 0x007c9a4b    eb03
_jmp_addr_0x007c9a4d:    push                 0x10                                        // 0x007c9a4d    6a10
                         pop                  esi                                         // 0x007c9a4f    5e
_jmp_addr_0x007c9a50:    {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c9a50    89750c
_jmp_addr_0x007c9a53:    {disp8} mov          dword ptr [ebp + -0x24], edi                // 0x007c9a53    897ddc
                         cmp                  esi, -0x20                                  // 0x007c9a56    83fee0
                         {disp32} ja          _jmp_addr_0x007c9b52                        // 0x007c9a59    0f87f3000000
                         push                 0x9                                         // 0x007c9a5f    6a09
                         call                 __lock                                      // 0x007c9a61    e8501c0000
                         pop                  ecx                                         // 0x007c9a66    59
                         {disp8} mov          dword ptr [ebp + -0x04], 0x00000001         // 0x007c9a67    c745fc01000000
                         {disp8} lea          eax, dword ptr [ebp + -0x2c]                // 0x007c9a6e    8d45d4
                         push                 eax                                         // 0x007c9a71    50
                         {disp8} lea          eax, dword ptr [ebp + -0x38]                // 0x007c9a72    8d45c8
                         push                 eax                                         // 0x007c9a75    50
                         push                 ebx                                         // 0x007c9a76    53
                         call                 _jmp_addr_0x007cf86e                        // 0x007c9a77    e8f25d0000
                         add                  esp, 0x0c                                   // 0x007c9a7c    83c40c
                         mov.s                edi, eax                                    // 0x007c9a7f    8bf8
                         {disp8} mov          dword ptr [ebp + -0x30], edi                // 0x007c9a81    897dd0
                         test                 edi, edi                                    // 0x007c9a84    85ff
                         {disp32} je          _jmp_addr_0x007c9b36                        // 0x007c9a86    0f84aa000000
                         cmp                  esi, dword ptr [data_bytes + 0x269e44]      // 0x007c9a8c    3b3544fec200
                         {disp8} jae          _jmp_addr_0x007c9af0                        // 0x007c9a92    735c
                         mov.s                ebx, esi                                    // 0x007c9a94    8bde
                         shr                  ebx, 4                                      // 0x007c9a96    c1eb04
                         push                 ebx                                         // 0x007c9a99    53
                         push                 edi                                         // 0x007c9a9a    57
                         push                 dword ptr [ebp + -0x2c]                     // 0x007c9a9b    ff75d4
                         push                 dword ptr [ebp + -0x38]                     // 0x007c9a9e    ff75c8
                         call                 _jmp_addr_0x007cfc36                        // 0x007c9aa1    e890610000
                         add                  esp, 0x10                                   // 0x007c9aa6    83c410
                         test                 eax, eax                                    // 0x007c9aa9    85c0
                         {disp8} je           _jmp_addr_0x007c9ab5                        // 0x007c9aab    7408
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c9aad    8b4508
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c9ab0    8945dc
                         {disp8} jmp          _jmp_addr_0x007c9aed                        // 0x007c9ab3    eb38
_jmp_addr_0x007c9ab5:    push                 ebx                                         // 0x007c9ab5    53
                         call                 _jmp_addr_0x007cf90a                        // 0x007c9ab6    e84f5e0000
                         pop                  ecx                                         // 0x007c9abb    59
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c9abc    8945dc
                         test                 eax, eax                                    // 0x007c9abf    85c0
                         {disp8} je           _jmp_addr_0x007c9aed                        // 0x007c9ac1    742a
                         movzx                eax, byte ptr [edi]                         // 0x007c9ac3    0fb607
                         shl                  eax, 4                                      // 0x007c9ac6    c1e004
                         {disp8} mov          dword ptr [ebp + -0x34], eax                // 0x007c9ac9    8945cc
                         cmp.s                eax, esi                                    // 0x007c9acc    3bc6
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c9ad2 // 0x007c9ace    7202
                         mov.s                eax, esi                                    // 0x007c9ad0    8bc6
_jmp_addr_0x007c9ad2:    push                 eax                                         // 0x007c9ad2    50
                         push                 dword ptr [ebp + 0x08]                      // 0x007c9ad3    ff7508
                         push                 dword ptr [ebp + -0x24]                     // 0x007c9ad6    ff75dc
                         call                 _memcpy                                     // 0x007c9ad9    e8b20b0000
                         push                 edi                                         // 0x007c9ade    57
                         push                 dword ptr [ebp + -0x2c]                     // 0x007c9adf    ff75d4
                         push                 dword ptr [ebp + -0x38]                     // 0x007c9ae2    ff75c8
                         call                 _jmp_addr_0x007cf8c5                        // 0x007c9ae5    e8db5d0000
                         add                  esp, 0x18                                   // 0x007c9aea    83c418
_jmp_addr_0x007c9aed:    {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c9aed    8b5d08
_jmp_addr_0x007c9af0:    cmp                  dword ptr [ebp + -0x24], 0x00               // 0x007c9af0    837ddc00
                         {disp8} jne          _jmp_addr_0x007c9b49                        // 0x007c9af4    7553
                         push                 esi                                         // 0x007c9af6    56
                         push                 0x0                                         // 0x007c9af7    6a00
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c9af9    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x204]             // 0x007c9aff    ff1504928a00
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c9b05    8945dc
                         test                 eax, eax                                    // 0x007c9b08    85c0
                         {disp8} je           _jmp_addr_0x007c9b49                        // 0x007c9b0a    743d
                         movzx                eax, byte ptr [edi]                         // 0x007c9b0c    0fb607
                         shl                  eax, 4                                      // 0x007c9b0f    c1e004
                         {disp8} mov          dword ptr [ebp + -0x34], eax                // 0x007c9b12    8945cc
                         cmp.s                eax, esi                                    // 0x007c9b15    3bc6
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c9b1b // 0x007c9b17    7202
                         mov.s                eax, esi                                    // 0x007c9b19    8bc6
_jmp_addr_0x007c9b1b:    push                 eax                                         // 0x007c9b1b    50
                         push                 ebx                                         // 0x007c9b1c    53
                         push                 dword ptr [ebp + -0x24]                     // 0x007c9b1d    ff75dc
                         call                 _memcpy                                     // 0x007c9b20    e86b0b0000
                         push                 edi                                         // 0x007c9b25    57
                         push                 dword ptr [ebp + -0x2c]                     // 0x007c9b26    ff75d4
                         push                 dword ptr [ebp + -0x38]                     // 0x007c9b29    ff75c8
                         call                 _jmp_addr_0x007cf8c5                        // 0x007c9b2c    e8945d0000
                         add                  esp, 0x18                                   // 0x007c9b31    83c418
                         {disp8} jmp          _jmp_addr_0x007c9b49                        // 0x007c9b34    eb13
_jmp_addr_0x007c9b36:    push                 esi                                         // 0x007c9b36    56
                         push                 ebx                                         // 0x007c9b37    53
                         push                 0x0                                         // 0x007c9b38    6a00
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c9b3a    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x1e0]             // 0x007c9b40    ff15e0918a00
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c9b46    8945dc
_jmp_addr_0x007c9b49:    or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c9b49    834dfcff
                         call                 _jmp_addr_0x007c9b78                        // 0x007c9b4d    e826000000
_jmp_addr_0x007c9b52:    {disp8} mov          eax, dword ptr [ebp + -0x24]                // 0x007c9b52    8b45dc
                         cmp.s                eax, edi                                    // 0x007c9b55    3bc7
                         {disp8} jne          _jmp_addr_0x007c9bbf                        // 0x007c9b57    7566
                         cmp                  dword ptr [data_bytes + 0x4be2c0], edi      // 0x007c9b59    393dc042e800
                         {disp8} je           _jmp_addr_0x007c9bbf                        // 0x007c9b5f    745e
                         push                 esi                                         // 0x007c9b61    56
                         call                 _jmp_addr_0x007ce342                        // 0x007c9b62    e8db470000
                         pop                  ecx                                         // 0x007c9b67    59
                         test                 eax, eax                                    // 0x007c9b68    85c0
                         {disp32} jne         _jmp_addr_0x007c9a53                        // 0x007c9b6a    0f85e3feffff
                         {disp8} jmp          _jmp_addr_0x007c9bbd                        // 0x007c9b70    eb4b
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c9b72    8b750c
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c9b75    8b5d08
_jmp_addr_0x007c9b78:    push                 0x9                                         // 0x007c9b78    6a09
                         call                 __unlock                                    // 0x007c9b7a    e8981b0000
                         pop                  ecx                                         // 0x007c9b7f    59
                         xor.s                edi, edi                                    // 0x007c9b80    33ff
                         ret                                                              // 0x007c9b82    c3
_jmp_addr_0x007c9b83:    xor.s                eax, eax                                    // 0x007c9b83    33c0
                         cmp                  esi, -0x20                                  // 0x007c9b85    83fee0
                         {disp8} ja           _jmp_addr_0x007c9ba6                        // 0x007c9b88    771c
                         cmp.s                esi, edi                                    // 0x007c9b8a    3bf7
                         {disp8} jne          _jmp_addr_0x007c9b91                        // 0x007c9b8c    7503
                         push                 0x1                                         // 0x007c9b8e    6a01
                         pop                  esi                                         // 0x007c9b90    5e
_jmp_addr_0x007c9b91:    add                  esi, 0x0f                                   // 0x007c9b91    83c60f
                         and                  esi, 0xfffffff0                             // 0x007c9b94    83e6f0
                         push                 esi                                         // 0x007c9b97    56
                         push                 ebx                                         // 0x007c9b98    53
                         push                 edi                                         // 0x007c9b99    57
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c9b9a    ff35a8ccfa00
                         call                 dword ptr [rdata_bytes + 0x1e0]             // 0x007c9ba0    ff15e0918a00
_jmp_addr_0x007c9ba6:    cmp.s                eax, edi                                    // 0x007c9ba6    3bc7
                         {disp8} jne          _jmp_addr_0x007c9bbf                        // 0x007c9ba8    7515
                         cmp                  dword ptr [data_bytes + 0x4be2c0], edi      // 0x007c9baa    393dc042e800
                         {disp8} je           _jmp_addr_0x007c9bbf                        // 0x007c9bb0    740d
                         push                 esi                                         // 0x007c9bb2    56
                         call                 _jmp_addr_0x007ce342                        // 0x007c9bb3    e88a470000
                         pop                  ecx                                         // 0x007c9bb8    59
                         test                 eax, eax                                    // 0x007c9bb9    85c0
                         {disp8} jne          _jmp_addr_0x007c9b83                        // 0x007c9bbb    75c6
_jmp_addr_0x007c9bbd:    xor.s                eax, eax                                    // 0x007c9bbd    33c0
_jmp_addr_0x007c9bbf:    {disp8} mov          ecx, dword ptr [ebp + -0x10]                // 0x007c9bbf    8b4df0
                         {disp32} mov         fs:[0x0], ecx                               // 0x007c9bc2    64890d00000000
                         pop                  edi                                         // 0x007c9bc9    5f
                         pop                  esi                                         // 0x007c9bca    5e
                         pop                  ebx                                         // 0x007c9bcb    5b
                         leave                                                            // 0x007c9bcc    c9
                         ret                                                              // 0x007c9bcd    c3