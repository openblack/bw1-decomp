.intel_syntax noprefix
.align 16

.globl _adler32

_adler32:                push             esi                                           // 0x007c10c0    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x007c10c1    8b74240c
                         push             edi                                           // 0x007c10c5    57
                         {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x007c10c6    8b7c240c
                         mov.s            ecx, edi                                      // 0x007c10ca    8bcf
                         and              ecx, 0x0000ffff                               // 0x007c10cc    81e1ffff0000
                         shr              edi, 0x10                                     // 0x007c10d2    c1ef10
                         test             esi, esi                                      // 0x007c10d5    85f6
                         {disp8} jne      _jmp_addr_0x007c10e1                          // 0x007c10d7    7508
                         pop              edi                                           // 0x007c10d9    5f
                         mov              eax, 0x00000001                               // 0x007c10da    b801000000
                         pop              esi                                           // 0x007c10df    5e
                         ret                                                            // 0x007c10e0    c3
_jmp_addr_0x007c10e1:    push             ebx                                           // 0x007c10e1    53
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x007c10e2    8b5c2418
                         test             ebx, ebx                                      // 0x007c10e6    85db
                         {disp32} jbe     _jmp_addr_0x007c11e3                          // 0x007c10e8    0f86f5000000
                         push             ebp                                           // 0x007c10ee    55
_jmp_addr_0x007c10ef:    cmp              ebx, 0x000015b0                               // 0x007c10ef    81fbb0150000
                         mov.s            eax, ebx                                      // 0x007c10f5    8bc3
                         .byte            0x72, 0x5// {disp8} jb _jmp_addr_0x007c10fe   // 0x007c10f7    7205
                         mov              eax, 0x000015b0                               // 0x007c10f9    b8b0150000
_jmp_addr_0x007c10fe:    sub.s            ebx, eax                                      // 0x007c10fe    2bd8
                         cmp              eax, 0x10                                     // 0x007c1100    83f810
                         {disp32} jl      _jmp_addr_0x007c11b0                          // 0x007c1103    0f8ca7000000
                         mov.s            ebp, eax                                      // 0x007c1109    8be8
                         shr              ebp, 4                                        // 0x007c110b    c1ed04
                         mov.s            edx, ebp                                      // 0x007c110e    8bd5
                         neg              edx                                           // 0x007c1110    f7da
                         shl              edx, 4                                        // 0x007c1112    c1e204
                         add.s            eax, edx                                      // 0x007c1115    03c2
_jmp_addr_0x007c1117:    xor.s            edx, edx                                      // 0x007c1117    33d2
                         mov              dl, byte ptr [esi]                            // 0x007c1119    8a16
                         add              esi, 0x10                                     // 0x007c111b    83c610
                         add.s            ecx, edx                                      // 0x007c111e    03ca
                         xor.s            edx, edx                                      // 0x007c1120    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0f]                    // 0x007c1122    8a56f1
                         add.s            edi, ecx                                      // 0x007c1125    03f9
                         add.s            ecx, edx                                      // 0x007c1127    03ca
                         xor.s            edx, edx                                      // 0x007c1129    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0e]                    // 0x007c112b    8a56f2
                         add.s            edi, ecx                                      // 0x007c112e    03f9
                         add.s            ecx, edx                                      // 0x007c1130    03ca
                         xor.s            edx, edx                                      // 0x007c1132    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0d]                    // 0x007c1134    8a56f3
                         add.s            edi, ecx                                      // 0x007c1137    03f9
                         add.s            ecx, edx                                      // 0x007c1139    03ca
                         xor.s            edx, edx                                      // 0x007c113b    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0c]                    // 0x007c113d    8a56f4
                         add.s            edi, ecx                                      // 0x007c1140    03f9
                         add.s            ecx, edx                                      // 0x007c1142    03ca
                         xor.s            edx, edx                                      // 0x007c1144    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0b]                    // 0x007c1146    8a56f5
                         add.s            edi, ecx                                      // 0x007c1149    03f9
                         add.s            ecx, edx                                      // 0x007c114b    03ca
                         xor.s            edx, edx                                      // 0x007c114d    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x0a]                    // 0x007c114f    8a56f6
                         add.s            edi, ecx                                      // 0x007c1152    03f9
                         add.s            ecx, edx                                      // 0x007c1154    03ca
                         xor.s            edx, edx                                      // 0x007c1156    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x09]                    // 0x007c1158    8a56f7
                         add.s            edi, ecx                                      // 0x007c115b    03f9
                         add.s            ecx, edx                                      // 0x007c115d    03ca
                         xor.s            edx, edx                                      // 0x007c115f    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x08]                    // 0x007c1161    8a56f8
                         add.s            edi, ecx                                      // 0x007c1164    03f9
                         add.s            ecx, edx                                      // 0x007c1166    03ca
                         xor.s            edx, edx                                      // 0x007c1168    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x07]                    // 0x007c116a    8a56f9
                         add.s            edi, ecx                                      // 0x007c116d    03f9
                         add.s            ecx, edx                                      // 0x007c116f    03ca
                         xor.s            edx, edx                                      // 0x007c1171    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x06]                    // 0x007c1173    8a56fa
                         add.s            edi, ecx                                      // 0x007c1176    03f9
                         add.s            ecx, edx                                      // 0x007c1178    03ca
                         xor.s            edx, edx                                      // 0x007c117a    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x05]                    // 0x007c117c    8a56fb
                         add.s            edi, ecx                                      // 0x007c117f    03f9
                         add.s            ecx, edx                                      // 0x007c1181    03ca
                         xor.s            edx, edx                                      // 0x007c1183    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x04]                    // 0x007c1185    8a56fc
                         add.s            edi, ecx                                      // 0x007c1188    03f9
                         add.s            ecx, edx                                      // 0x007c118a    03ca
                         xor.s            edx, edx                                      // 0x007c118c    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x03]                    // 0x007c118e    8a56fd
                         add.s            edi, ecx                                      // 0x007c1191    03f9
                         add.s            ecx, edx                                      // 0x007c1193    03ca
                         xor.s            edx, edx                                      // 0x007c1195    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x02]                    // 0x007c1197    8a56fe
                         add.s            edi, ecx                                      // 0x007c119a    03f9
                         add.s            ecx, edx                                      // 0x007c119c    03ca
                         xor.s            edx, edx                                      // 0x007c119e    33d2
                         {disp8} mov      dl, byte ptr [esi + -0x01]                    // 0x007c11a0    8a56ff
                         add.s            edi, ecx                                      // 0x007c11a3    03f9
                         add.s            ecx, edx                                      // 0x007c11a5    03ca
                         add.s            edi, ecx                                      // 0x007c11a7    03f9
                         dec              ebp                                           // 0x007c11a9    4d
                         {disp32} jne     _jmp_addr_0x007c1117                          // 0x007c11aa    0f8567ffffff
_jmp_addr_0x007c11b0:    test             eax, eax                                      // 0x007c11b0    85c0
                         {disp8} je       _jmp_addr_0x007c11c0                          // 0x007c11b2    740c
_jmp_addr_0x007c11b4:    xor.s            edx, edx                                      // 0x007c11b4    33d2
                         mov              dl, byte ptr [esi]                            // 0x007c11b6    8a16
                         add.s            ecx, edx                                      // 0x007c11b8    03ca
                         inc              esi                                           // 0x007c11ba    46
                         add.s            edi, ecx                                      // 0x007c11bb    03f9
                         dec              eax                                           // 0x007c11bd    48
                         {disp8} jne      _jmp_addr_0x007c11b4                          // 0x007c11be    75f4
_jmp_addr_0x007c11c0:    mov.s            eax, ecx                                      // 0x007c11c0    8bc1
                         xor.s            edx, edx                                      // 0x007c11c2    33d2
                         mov              ecx, 0x0000fff1                               // 0x007c11c4    b9f1ff0000
                         div              ecx                                           // 0x007c11c9    f7f1
                         mov.s            eax, edi                                      // 0x007c11cb    8bc7
                         mov              edi, 0x0000fff1                               // 0x007c11cd    bff1ff0000
                         mov.s            ecx, edx                                      // 0x007c11d2    8bca
                         xor.s            edx, edx                                      // 0x007c11d4    33d2
                         div              edi                                           // 0x007c11d6    f7f7
                         test             ebx, ebx                                      // 0x007c11d8    85db
                         mov.s            edi, edx                                      // 0x007c11da    8bfa
                         {disp32} ja      _jmp_addr_0x007c10ef                          // 0x007c11dc    0f870dffffff
                         pop              ebp                                           // 0x007c11e2    5d
_jmp_addr_0x007c11e3:    mov.s            eax, edi                                      // 0x007c11e3    8bc7
                         pop              ebx                                           // 0x007c11e5    5b
                         shl              eax, 0x10                                     // 0x007c11e6    c1e010
                         pop              edi                                           // 0x007c11e9    5f
                         or.s             eax, ecx                                      // 0x007c11ea    0bc1
                         pop              esi                                           // 0x007c11ec    5e
                         ret                                                            // 0x007c11ed    c3
                         nop                                                            // 0x007c11ee    90
                         nop                                                            // 0x007c11ef    90