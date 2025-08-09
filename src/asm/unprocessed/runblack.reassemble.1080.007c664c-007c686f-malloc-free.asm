.intel_syntax noprefix
.align 0

.globl _malloc
.globl __nh_malloc
.globl __heap_alloc
.globl _free

.section .rdata

.long 0xffffffff                                                                         // [0xf7698] 0x008a9000 + 0xf7698 = 0x009a0698
.long 0x00000000                                                                         // [0xf769c] 0x008a9000 + 0xf769c = 0x009a069c
.long _jmp_addr_0x007c66f1                                                               // [0xf76a0] 0x008a9000 + 0xf76a0 = 0x009a06a0
.long 0xffffffff                                                                         // [0xf76a4] 0x008a9000 + 0xf76a4 = 0x009a06a4
.long 0x00000000                                                                         // [0xf76a8] 0x008a9000 + 0xf76a8 = 0x009a06a8
.long _jmp_addr_0x007c674d                                                               // [0xf76ac] 0x008a9000 + 0xf76ac = 0x009a06ac
.long 0xffffffff                                                                         // [0xf76b0] 0x008a9000 + 0xf76b0 = 0x009a06b0
.long 0x00000000                                                                         // [0xf76b4] 0x008a9000 + 0xf76b4 = 0x009a06b4
.long _jmp_addr_0x007c67f0                                                               // [0xf76b8] 0x008a9000 + 0xf76b8 = 0x009a06b8
.long 0xffffffff                                                                         // [0xf76bc] 0x008a9000 + 0xf76bc = 0x009a06bc
.long 0x00000000                                                                         // [0xf76c0] 0x008a9000 + 0xf76c0 = 0x009a06c0
.long _jmp_addr_0x007c6848                                                               // [0xf76c4] 0x008a9000 + 0xf76c4 = 0x009a06c4

.section .text

_malloc:                 push                 dword ptr [__newmode]                       // 0x007c664c    ff35c042e800
                         push                 dword ptr [esp + 0x08]                      // 0x007c6652    ff742408
                         call                 __nh_malloc                                 // 0x007c6656    e803000000
                         pop                  ecx                                         // 0x007c665b    59
                         pop                  ecx                                         // 0x007c665c    59
                         ret                                                              // 0x007c665d    c3
__nh_malloc:             cmp                  dword ptr [esp + 0x04], -0x20               // 0x007c665e    837c2404e0
                         {disp8} ja           _jmp_addr_0x007c6687                        // 0x007c6663    7722
_jmp_addr_0x007c6665:    push                 dword ptr [esp + 0x04]                      // 0x007c6665    ff742404
                         call                 __heap_alloc                                // 0x007c6669    e81c000000
                         test                 eax, eax                                    // 0x007c666e    85c0
                         pop                  ecx                                         // 0x007c6670    59
                         {disp8} jne          _jmp_addr_0x007c6689                        // 0x007c6671    7516
                         cmp                  dword ptr [esp + 0x08], eax                 // 0x007c6673    39442408
                         {disp8} je           _jmp_addr_0x007c6689                        // 0x007c6677    7410
                         push                 dword ptr [esp + 0x04]                      // 0x007c6679    ff742404
                         call                 __callnewh                                  // 0x007c667d    e8c07c0000
                         test                 eax, eax                                    // 0x007c6682    85c0
                         pop                  ecx                                         // 0x007c6684    59
                         {disp8} jne          _jmp_addr_0x007c6665                        // 0x007c6685    75de
_jmp_addr_0x007c6687:    xor.s                eax, eax                                    // 0x007c6687    33c0
_jmp_addr_0x007c6689:    ret                                                              // 0x007c6689    c3

// Different from the one from LIBCMT
__heap_alloc:            push                 ebp                                         // 0x007c668a    55
                         mov.s                ebp, esp                                    // 0x007c668b    8bec
                         push                 -0x1                                        // 0x007c668d    6aff
                         push                 0x009a0698                                  // 0x007c668f    6898069a00
                         push                 0x007cd8ac /*__except_handler3*/            // 0x007c6694    68acd87c00
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c6699    64a100000000
                         push                 eax                                         // 0x007c669f    50
                         {disp32} mov         fs:[0x0], esp                               // 0x007c66a0    64892500000000
                         sub                  esp, 0x0c                                   // 0x007c66a7    83ec0c
                         push                 ebx                                         // 0x007c66aa    53
                         push                 esi                                         // 0x007c66ab    56
                         push                 edi                                         // 0x007c66ac    57
                         {disp32} mov         eax, dword ptr [data_bytes + 0x5e6cac]      // 0x007c66ad    a1acccfa00
                         cmp                  eax, 0x03                                   // 0x007c66b2    83f803
                         {disp8} jne          _jmp_addr_0x007c66fa                        // 0x007c66b5    7543
                         {disp8} mov          esi, dword ptr [ebp + 0x08]                 // 0x007c66b7    8b7508
                         cmp                  esi, dword ptr [data_bytes + 0x5e6ca4]      // 0x007c66ba    3b35a4ccfa00
                         {disp32} ja          _jmp_addr_0x007c6759                        // 0x007c66c0    0f8793000000
                         push                 0x9                                         // 0x007c66c6    6a09
                         call                 __lock                                       // 0x007c66c8    e8e94f0000
                         pop                  ecx                                         // 0x007c66cd    59
                         and                  dword ptr [ebp + -0x04], 0x00               // 0x007c66ce    8365fc00
                         push                 esi                                         // 0x007c66d2    56
                         call                 ___sbh_alloc_block                          // 0x007c66d3    e86d830000
                         pop                  ecx                                         // 0x007c66d8    59
                         {disp8} mov          dword ptr [ebp + -0x1c], eax                // 0x007c66d9    8945e4
                         or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c66dc    834dfcff
                         call                 _jmp_addr_0x007c66f1                        // 0x007c66e0    e80c000000
                         {disp8} mov          eax, dword ptr [ebp + -0x1c]                // 0x007c66e5    8b45e4
                         test                 eax, eax                                    // 0x007c66e8    85c0
                         {disp8} je           _jmp_addr_0x007c6759                        // 0x007c66ea    746d
                         {disp32} jmp         _jmp_addr_0x007c6777                        // 0x007c66ec    e986000000
_jmp_addr_0x007c66f1:    push                 0x9                                         // 0x007c66f1    6a09
                         call                 __unlock                                    // 0x007c66f3    e81f500000
                         pop                  ecx                                         // 0x007c66f8    59
                         ret                                                              // 0x007c66f9    c3
_jmp_addr_0x007c66fa:    cmp                  eax, 0x02                                   // 0x007c66fa    83f802
                         {disp8} jne          _jmp_addr_0x007c6759                        // 0x007c66fd    755a
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c66ff    8b4508
                         test                 eax, eax                                    // 0x007c6702    85c0
                         {disp8} je           _jmp_addr_0x007c670e                        // 0x007c6704    7408
                         {disp8} lea          esi, dword ptr [eax + 0x0f]                 // 0x007c6706    8d700f
                         and                  esi, 0xfffffff0                             // 0x007c6709    83e6f0
                         {disp8} jmp          _jmp_addr_0x007c6711                        // 0x007c670c    eb03
_jmp_addr_0x007c670e:    push                 0x10                                        // 0x007c670e    6a10
                         pop                  esi                                         // 0x007c6710    5e
_jmp_addr_0x007c6711:    {disp8} mov          dword ptr [ebp + 0x08], esi                 // 0x007c6711    897508
                         cmp                  esi, dword ptr [data_bytes + 0x269e44]      // 0x007c6714    3b3544fec200
                         {disp8} ja           _jmp_addr_0x007c674a                        // 0x007c671a    772e
                         push                 0x9                                         // 0x007c671c    6a09
                         call                 __lock                                       // 0x007c671e    e8934f0000
                         pop                  ecx                                         // 0x007c6723    59
                         {disp8} mov          dword ptr [ebp + -0x04], 0x00000001         // 0x007c6724    c745fc01000000
                         mov.s                eax, esi                                    // 0x007c672b    8bc6
                         shr                  eax, 4                                      // 0x007c672d    c1e804
                         push                 eax                                         // 0x007c6730    50
                         call                 ___old_sbh_alloc_block                      // 0x007c6731    e8d4910000
                         pop                  ecx                                         // 0x007c6736    59
                         {disp8} mov          dword ptr [ebp + -0x1c], eax                // 0x007c6737    8945e4
                         or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c673a    834dfcff
                         call                 _jmp_addr_0x007c6750                        // 0x007c673e    e80d000000
                         {disp8} mov          eax, dword ptr [ebp + -0x1c]                // 0x007c6743    8b45e4
                         test                 eax, eax                                    // 0x007c6746    85c0
                         {disp8} jne          _jmp_addr_0x007c6777                        // 0x007c6748    752d
_jmp_addr_0x007c674a:    push                 esi                                         // 0x007c674a    56
                         {disp8} jmp          _jmp_addr_0x007c6769                        // 0x007c674b    eb1c

_jmp_addr_0x007c674d:    {disp8} mov          esi, dword ptr [ebp + 0x08]                 // 0x007c674d    8b7508
_jmp_addr_0x007c6750:    push                 0x9                                         // 0x007c6750    6a09
                         call                 __unlock                                    // 0x007c6752    e8c04f0000
                         pop                  ecx                                         // 0x007c6757    59
                         ret                                                              // 0x007c6758    c3
_jmp_addr_0x007c6759:    {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c6759    8b4508
                         test                 eax, eax                                    // 0x007c675c    85c0
                         {disp8} jne          _jmp_addr_0x007c6763                        // 0x007c675e    7503
                         push                 0x1                                         // 0x007c6760    6a01
                         pop                  eax                                         // 0x007c6762    58
_jmp_addr_0x007c6763:    add                  eax, 0x0f                                   // 0x007c6763    83c00f
                         and                  al, -0x10                                   // 0x007c6766    24f0
                         push                 eax                                         // 0x007c6768    50
_jmp_addr_0x007c6769:    push                 0x0                                         // 0x007c6769    6a00
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c676b    ff35a8ccfa00
                         call                 dword ptr [__imp__HeapAlloc@12]             // 0x007c6771    ff1504928a00
_jmp_addr_0x007c6777:    {disp8} mov          ecx, dword ptr [ebp + -0x10]                // 0x007c6777    8b4df0
                         {disp32} mov         fs:[0x0], ecx                               // 0x007c677a    64890d00000000
                         pop                  edi                                         // 0x007c6781    5f
                         pop                  esi                                         // 0x007c6782    5e
                         pop                  ebx                                         // 0x007c6783    5b
                         leave                                                            // 0x007c6784    c9
                         ret                                                              // 0x007c6785    c3


_free:                   push                 ebp                                         // 0x007c6786    55
                         mov.s                ebp, esp                                    // 0x007c6787    8bec
                         push                 -0x1                                        // 0x007c6789    6aff
                         push                 0x009a06b0                                  // 0x007c678b    68b0069a00
                         push                 0x007cd8ac /*__except_handler3*/            // 0x007c6790    68acd87c00
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c6795    64a100000000
                         push                 eax                                         // 0x007c679b    50
                         {disp32} mov         fs:[0x0], esp                               // 0x007c679c    64892500000000
                         sub                  esp, 0x18                                   // 0x007c67a3    83ec18
                         push                 ebx                                         // 0x007c67a6    53
                         push                 esi                                         // 0x007c67a7    56
                         push                 edi                                         // 0x007c67a8    57
                         {disp8} mov          esi, dword ptr [ebp + 0x08]                 // 0x007c67a9    8b7508
                         test                 esi, esi                                    // 0x007c67ac    85f6
                         {disp32} je          _jmp_addr_0x007c6860                        // 0x007c67ae    0f84ac000000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x5e6cac]      // 0x007c67b4    a1acccfa00
                         cmp                  eax, 0x03                                   // 0x007c67b9    83f803
                         {disp8} jne          _jmp_addr_0x007c67f9                        // 0x007c67bc    753b
                         push                 0x9                                         // 0x007c67be    6a09
                         call                 __lock                                       // 0x007c67c0    e8f14e0000
                         pop                  ecx                                         // 0x007c67c5    59
                         and                  dword ptr [ebp + -0x04], 0x00               // 0x007c67c6    8365fc00
                         push                 esi                                         // 0x007c67ca    56
                         call                 ___sbh_find_block                           // 0x007c67cb    e8217f0000
                         pop                  ecx                                         // 0x007c67d0    59
                         {disp8} mov          dword ptr [ebp + -0x1c], eax                // 0x007c67d1    8945e4
                         test                 eax, eax                                    // 0x007c67d4    85c0
                         {disp8} je           _jmp_addr_0x007c67e1                        // 0x007c67d6    7409
                         push                 esi                                         // 0x007c67d8    56
                         push                 eax                                         // 0x007c67d9    50
                         call                 ___sbh_free_block                           // 0x007c67da    e83d7f0000
                         pop                  ecx                                         // 0x007c67df    59
                         pop                  ecx                                         // 0x007c67e0    59
_jmp_addr_0x007c67e1:    or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c67e1    834dfcff
                         call                 _jmp_addr_0x007c67f0                        // 0x007c67e5    e806000000
                         cmp                  dword ptr [ebp + -0x1c], 0x00               // 0x007c67ea    837de400
                         {disp8} jmp          _jmp_addr_0x007c6841                        // 0x007c67ee    eb51
_jmp_addr_0x007c67f0:    push                 0x9                                         // 0x007c67f0    6a09
                         call                 __unlock                                    // 0x007c67f2    e8204f0000
                         pop                  ecx                                         // 0x007c67f7    59
                         ret                                                              // 0x007c67f8    c3
_jmp_addr_0x007c67f9:    cmp                  eax, 0x02                                   // 0x007c67f9    83f802
                         {disp8} jne          _jmp_addr_0x007c6851                        // 0x007c67fc    7553
                         push                 0x9                                         // 0x007c67fe    6a09
                         call                 __lock                                       // 0x007c6800    e8b14e0000
                         pop                  ecx                                         // 0x007c6805    59
                         {disp8} mov          dword ptr [ebp + -0x04], 0x00000001         // 0x007c6806    c745fc01000000
                         {disp8} lea          eax, dword ptr [ebp + -0x20]                // 0x007c680d    8d45e0
                         push                 eax                                         // 0x007c6810    50
                         {disp8} lea          eax, dword ptr [ebp + -0x28]                // 0x007c6811    8d45d8
                         push                 eax                                         // 0x007c6814    50
                         push                 esi                                         // 0x007c6815    56
                         call                 ___old_sbh_find_block                       // 0x007c6816    e853900000
                         add                  esp, 0x0c                                   // 0x007c681b    83c40c
                         {disp8} mov          dword ptr [ebp + -0x24], eax                // 0x007c681e    8945dc
                         test                 eax, eax                                    // 0x007c6821    85c0
                         {disp8} je           _jmp_addr_0x007c6834                        // 0x007c6823    740f
                         push                 eax                                         // 0x007c6825    50
                         push                 dword ptr [ebp + -0x20]                     // 0x007c6826    ff75e0
                         push                 dword ptr [ebp + -0x28]                     // 0x007c6829    ff75d8
                         call                 ___old_sbh_free_block                       // 0x007c682c    e894900000
                         add                  esp, 0x0c                                   // 0x007c6831    83c40c
_jmp_addr_0x007c6834:    or                   dword ptr [ebp - 4], 0xffffffff             // 0x007c6834    834dfcff
                         call                 _jmp_addr_0x007c6848                        // 0x007c6838    e80b000000
                         cmp                  dword ptr [ebp + -0x24], 0x00               // 0x007c683d    837ddc00
_jmp_addr_0x007c6841:    {disp8} jne          _jmp_addr_0x007c6860                        // 0x007c6841    751d
                         push                 dword ptr [ebp + 0x08]                      // 0x007c6843    ff7508
                         {disp8} jmp          _jmp_addr_0x007c6852                        // 0x007c6846    eb0a
_jmp_addr_0x007c6848:    push                 0x9                                         // 0x007c6848    6a09
                         call                 __unlock                                    // 0x007c684a    e8c84e0000
                         pop                  ecx                                         // 0x007c684f    59
                         ret                                                              // 0x007c6850    c3
_jmp_addr_0x007c6851:    push                 esi                                         // 0x007c6851    56
_jmp_addr_0x007c6852:    push                 0x0                                         // 0x007c6852    6a00
                         push                 dword ptr [data_bytes + 0x5e6ca8]           // 0x007c6854    ff35a8ccfa00
                         call                 dword ptr [__imp__HeapFree@12]              // 0x007c685a    ff1500928a00
_jmp_addr_0x007c6860:    {disp8} mov          ecx, dword ptr [ebp + -0x10]                // 0x007c6860    8b4df0
                         {disp32} mov         fs:[0x0], ecx                               // 0x007c6863    64890d00000000
                         pop                  edi                                         // 0x007c686a    5f
                         pop                  esi                                         // 0x007c686b    5e
                         pop                  ebx                                         // 0x007c686c    5b
                         leave                                                            // 0x007c686d    c9
                         ret                                                              // 0x007c686e    c3