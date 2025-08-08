.intel_syntax noprefix
.align 16

.globl __msize

.section .rdata

.byte 0x00, 0x00                                                                                                   // [0xf793e] 0x008a9000 + 0xf793e = 0x009a093e
.byte 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xfb, 0xce, 0x7c, 0x00, 0xff, 0xff, 0xff, 0xff               // [0xf7940] 0x008a9000 + 0xf7940 = 0x009a0940
.byte 0x00, 0x00, 0x00, 0x00, 0x76, 0xcf, 0x7c, 0x00                                                               // [0xf7950] 0x008a9000 + 0xf7950 = 0x009a0950

.section .text

__msize:
                         push               ebp                                            // 0x007cce94    55
                         mov.s              ebp, esp                                       // 0x007cce95    8bec
                         push               -0x1                                           // 0x007cce97    6aff
                         push               0x009a0940                                     // 0x007cce99    6840099a00
                         push               0x007cd8ac /*__except_handler3*/               // 0x007cce9e    68acd87c00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007ccea3    64a100000000
                         push               eax                                            // 0x007ccea9    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007cceaa    64892500000000
                         sub                esp, 0x1c                                      // 0x007cceb1    83ec1c
                         push               ebx                                            // 0x007cceb4    53
                         push               esi                                            // 0x007cceb5    56
                         push               edi                                            // 0x007cceb6    57
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5e6cac]         // 0x007cceb7    a1acccfa00
                         cmp                eax, 0x03                                      // 0x007ccebc    83f803
                         {disp8} jne        _jmp_addr_0x007ccf07                           // 0x007ccebf    7546
                         push               0x9                                            // 0x007ccec1    6a09
                         call               __lock                                         // 0x007ccec3    e8eee7ffff
                         pop                ecx                                            // 0x007ccec8    59
                         and                dword ptr [ebp + -0x04], 0x00                  // 0x007ccec9    8365fc00
                         {disp8} mov        esi, dword ptr [ebp + 0x08]                    // 0x007ccecd    8b7508
                         push               esi                                            // 0x007cced0    56
                         call               _jmp_addr_0x007ce6f1                           // 0x007cced1    e81b180000
                         pop                ecx                                            // 0x007cced6    59
                         {disp8} mov        dword ptr [ebp + -0x1c], eax                   // 0x007cced7    8945e4
                         test               eax, eax                                       // 0x007cceda    85c0
                         {disp8} je         _jmp_addr_0x007ccee9                           // 0x007ccedc    740b
                         {disp8} mov        esi, dword ptr [esi + -0x04]                   // 0x007ccede    8b76fc
                         sub                esi, 0x09                                      // 0x007ccee1    83ee09
                         {disp8} mov        dword ptr [ebp + -0x20], esi                   // 0x007ccee4    8975e0
                         {disp8} jmp        _jmp_addr_0x007cceec                           // 0x007ccee7    eb03
_jmp_addr_0x007ccee9:    {disp8} mov        esi, dword ptr [ebp + -0x20]                   // 0x007ccee9    8b75e0
_jmp_addr_0x007cceec:    or                 dword ptr [ebp - 4], 0xffffffff                // 0x007cceec    834dfcff
                         call               _jmp_addr_0x007ccefe                           // 0x007ccef0    e809000000
                         cmp                dword ptr [ebp + -0x1c], 0x00                  // 0x007ccef5    837de400
                         {disp8} jmp        _jmp_addr_0x007ccf50                           // 0x007ccef9    eb55
                         {disp8} mov        esi, dword ptr [ebp + -0x20]                   // 0x007ccefb    8b75e0
_jmp_addr_0x007ccefe:    push               0x9                                            // 0x007ccefe    6a09
                         call               __unlock                                       // 0x007ccf00    e812e8ffff
                         pop                ecx                                            // 0x007ccf05    59
                         ret                                                               // 0x007ccf06    c3
_jmp_addr_0x007ccf07:    cmp                eax, 0x02                                      // 0x007ccf07    83f802
                         {disp8} jne        _jmp_addr_0x007ccf52                           // 0x007ccf0a    7546
                         push               0x9                                            // 0x007ccf0c    6a09
                         call               __lock                                          // 0x007ccf0e    e8a3e7ffff
                         pop                ecx                                            // 0x007ccf13    59
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000001            // 0x007ccf14    c745fc01000000
                         {disp8} lea        eax, dword ptr [ebp + -0x24]                   // 0x007ccf1b    8d45dc
                         push               eax                                            // 0x007ccf1e    50
                         {disp8} lea        eax, dword ptr [ebp + -0x2c]                   // 0x007ccf1f    8d45d4
                         push               eax                                            // 0x007ccf22    50
                         push               dword ptr [ebp + 0x08]                         // 0x007ccf23    ff7508
                         call               _jmp_addr_0x007cf86e                           // 0x007ccf26    e843290000
                         add                esp, 0x0c                                      // 0x007ccf2b    83c40c
                         {disp8} mov        dword ptr [ebp + -0x28], eax                   // 0x007ccf2e    8945d8
                         test               eax, eax                                       // 0x007ccf31    85c0
                         {disp8} je         _jmp_addr_0x007ccf40                           // 0x007ccf33    740b
                         movzx              esi, byte ptr [eax]                            // 0x007ccf35    0fb630
                         shl                esi, 4                                         // 0x007ccf38    c1e604
                         {disp8} mov        dword ptr [ebp + -0x20], esi                   // 0x007ccf3b    8975e0
                         {disp8} jmp        _jmp_addr_0x007ccf43                           // 0x007ccf3e    eb03
_jmp_addr_0x007ccf40:    {disp8} mov        esi, dword ptr [ebp + -0x20]                   // 0x007ccf40    8b75e0
_jmp_addr_0x007ccf43:    or                 dword ptr [ebp - 4], 0xffffffff                // 0x007ccf43    834dfcff
                         call               _jmp_addr_0x007ccf79                           // 0x007ccf47    e82d000000
                         cmp                dword ptr [ebp + -0x28], 0x00                  // 0x007ccf4c    837dd800
_jmp_addr_0x007ccf50:    {disp8} jne        _jmp_addr_0x007ccf65                           // 0x007ccf50    7513
_jmp_addr_0x007ccf52:    push               dword ptr [ebp + 0x08]                         // 0x007ccf52    ff7508
                         push               0x0                                            // 0x007ccf55    6a00
                         push               dword ptr [data_bytes + 0x5e6ca8]              // 0x007ccf57    ff35a8ccfa00
                         call               dword ptr [__imp__HeapSize@4]                  // 0x007ccf5d    ff15f8928a00
                         mov.s              esi, eax                                       // 0x007ccf63    8bf0
_jmp_addr_0x007ccf65:    mov.s              eax, esi                                       // 0x007ccf65    8bc6
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007ccf67    8b4df0
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007ccf6a    64890d00000000
                         pop                edi                                            // 0x007ccf71    5f
                         pop                esi                                            // 0x007ccf72    5e
                         pop                ebx                                            // 0x007ccf73    5b
                         leave                                                             // 0x007ccf74    c9
                         ret                                                               // 0x007ccf75    c3
                         {disp8} mov        esi, dword ptr [ebp + -0x20]                   // 0x007ccf76    8b75e0
_jmp_addr_0x007ccf79:    push               0x9                                            // 0x007ccf79    6a09
                         call               __unlock                                       // 0x007ccf7b    e897e7ffff
                         pop                ecx                                            // 0x007ccf80    59
                         ret                                                               // 0x007ccf81    c3
