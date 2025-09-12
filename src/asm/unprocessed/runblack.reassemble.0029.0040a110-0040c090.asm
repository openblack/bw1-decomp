.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern _GetSmallTextSize__Fv
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern ??1SetupControl@@UAE@XZ  
.extern @AutoScroll__9SetupListFb@9
.extern ?SetFocusNext@SetupBox@@QAEXXZ
.extern ?SetFocusPrev@SetupBox@@QAEXXZ
.extern ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _wcscat
.extern _wcscpy
.extern _memmove
.extern _wcsncpy
.extern _wcslen
.extern ___nw__FUl
.extern @Composition_Get__Q24slim5TbIMEFv@4
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64

.globl @__ct__9SetupListFiiiii@28
.globl ?UpdateHeights@SetupList@@QAEXXZ
.globl @DeleteString__9SetupListFi@12
.globl @InsertString__9SetupListFiPw@16
.globl _jmp_addr_0x0040afe0
.globl _jmp_addr_0x0040b000
.globl @SetNum__9SetupListFi@12
.globl @__ct__14SetupMultiListFiiiiii@32
.globl ??_GSetupMultiList@@UAEPAXI@Z
.globl _KeyDown__9SetupEditFii
.globl _Click__9SetupListFii
.globl _Drag__9SetupListFii
.globl _MouseDown__9SetupListFiib
.globl _IsSelected__14SetupMultiListFi
.globl _Draw__9SetupListFbb
.globl _Char__9SetupEditFi
.globl _MouseUp__9SetupListFiib
.globl _Click__14SetupMultiListFii
.globl _IsSelected__9SetupListFi
.globl ??_GSetupList@@UAEPAXI@Z

_Drag__9SetupListFii:
                         sub                  esp, 0x10                                       // 0x0040a110    83ec10
                         push                 ebx                                             // 0x0040a113    53
                         push                 ebp                                             // 0x0040a114    55
                         push                 esi                                             // 0x0040a115    56
                         mov.s                esi, ecx                                        // 0x0040a116    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x04]                     // 0x0040a118    8b4604
                         test                 eax, eax                                        // 0x0040a11b    85c0
                         push                 edi                                             // 0x0040a11d    57
                         {disp32} jne         _jmp_addr_0x0040a2fa                            // 0x0040a11e    0f85d6010000
                         {disp32} mov         al, byte ptr [esi + 0x00000285]                 // 0x0040a124    8a8685020000
                         test                 al, al                                          // 0x0040a12a    84c0
                         {disp8} jne          _jmp_addr_0x0040a149                            // 0x0040a12c    751b
                         {disp8} mov          ebx, dword ptr [esp + 0x28]                     // 0x0040a12e    8b5c2428
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                     // 0x0040a132    8b4c2424
                         mov                  eax, dword ptr [esi]                            // 0x0040a136    8b06
                         push                 ebx                                             // 0x0040a138    53
                         push                 ecx                                             // 0x0040a139    51
                         mov.s                ecx, esi                                        // 0x0040a13a    8bce
                         call                 dword ptr [eax + 0x10]                          // 0x0040a13c    ff5010
                         test                 al, al                                          // 0x0040a13f    84c0
                         {disp32} je          _jmp_addr_0x0040a2fa                            // 0x0040a141    0f84b3010000
                         {disp8} jmp          _jmp_addr_0x0040a14d                            // 0x0040a147    eb04
_jmp_addr_0x0040a149:    {disp8} mov          ebx, dword ptr [esp + 0x28]                     // 0x0040a149    8b5c2428
_jmp_addr_0x0040a14d:    {disp32} mov         al, byte ptr [esi + 0x00000285]                 // 0x0040a14d    8a8685020000
                         test                 al, al                                          // 0x0040a153    84c0
                         {disp32} je          _jmp_addr_0x0040a25f                            // 0x0040a155    0f8404010000
                         {disp32} mov         ebx, dword ptr [esi + 0x00000280]               // 0x0040a15b    8b9e80020000
                         {disp8} mov          edi, dword ptr [esi + 0x14]                     // 0x0040a161    8b7e14
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040a164    8b460c
                         {disp8} mov          dword ptr [esp + 0x24], ebx                     // 0x0040a167    895c2424
                         {disp8} fild         dword ptr [esp + 0x24]                          // 0x0040a16b    db442424
                         mov.s                edx, edi                                        // 0x0040a16f    8bd7
                         sub.s                edx, eax                                        // 0x0040a171    2bd0
                         {disp8} mov          dword ptr [esp + 0x10], edx                     // 0x0040a173    89542410
                         {disp8} fstp         dword ptr [esp + 0x18]                          // 0x0040a177    d95c2418
                         {disp8} mov          dword ptr [esp + 0x14], eax                     // 0x0040a17b    89442414
                         {disp32} fild        dword ptr [esi + 0x00000270]                    // 0x0040a17f    db8670020000
                         {disp8} fstp         dword ptr [esp + 0x24]                          // 0x0040a185    d95c2424
                         {disp8} fild         dword ptr [esp + 0x10]                          // 0x0040a189    db442410
                         {disp8} fstp         dword ptr [esp + 0x10]                          // 0x0040a18d    d95c2410
                         {disp8} fild         dword ptr [esp + 0x14]                          // 0x0040a191    db442414
                         {disp8} fld          dword ptr [esp + 0x18]                          // 0x0040a195    d9442418
                         {disp8} fdiv         dword ptr [esp + 0x24]                          // 0x0040a199    d8742424
                         {disp8} fmul         dword ptr [esp + 0x10]                          // 0x0040a19d    d84c2410
                         fadd                 st, st(1)                                       // 0x0040a1a1    d8c1
                         call                 _jmp_addr_0x007a1400                            // 0x0040a1a3    e858723900
                         {disp32} mov         ebp, dword ptr [esi + 0x0000028c]               // 0x0040a1a8    8bae8c020000
                         cmp.s                ebp, eax                                        // 0x0040a1ae    3be8
                         {disp8} mov          dword ptr [esp + 0x1c], eax                     // 0x0040a1b0    8944241c
                         {disp8} jl           _jmp_addr_0x0040a202                            // 0x0040a1b4    7c4c
                         sub                  edi, dword ptr [esp + 0x14]                     // 0x0040a1b6    2b7c2414
                         {disp8} lea          eax, dword ptr [edi + ebx * 0x1 + -0x08]        // 0x0040a1ba    8d441ff8
                         {disp8} mov          dword ptr [esp + 0x14], eax                     // 0x0040a1be    89442414
                         {disp8} fild         dword ptr [esp + 0x14]                          // 0x0040a1c2    db442414
                         {disp8} fdiv         dword ptr [esp + 0x24]                          // 0x0040a1c6    d8742424
                         {disp8} fmul         dword ptr [esp + 0x10]                          // 0x0040a1ca    d84c2410
                         fadd                 st, st(1)                                       // 0x0040a1ce    d8c1
                         call                 _jmp_addr_0x007a1400                            // 0x0040a1d0    e82b723900
                         fstp                 st(0)                                           // 0x0040a1d5    ddd8
                         cmp.s                ebp, eax                                        // 0x0040a1d7    3be8
                         {disp8} jge          _jmp_addr_0x0040a206                            // 0x0040a1d9    7d2b
                         {disp8} mov          eax, dword ptr [esp + 0x28]                     // 0x0040a1db    8b442428
                         sub.s                eax, ebp                                        // 0x0040a1df    2bc5
                         {disp8} mov          dword ptr [esp + 0x28], eax                     // 0x0040a1e1    89442428
                         {disp8} fild         dword ptr [esp + 0x28]                          // 0x0040a1e5    db442428
                         {disp8} fmul         dword ptr [esp + 0x24]                          // 0x0040a1e9    d84c2424
                         {disp8} fdiv         dword ptr [esp + 0x10]                          // 0x0040a1ed    d8742410
                         {disp8} fadd         dword ptr [esp + 0x18]                          // 0x0040a1f1    d8442418
                         call                 _jmp_addr_0x007a1400                            // 0x0040a1f5    e806723900
                         {disp32} mov         dword ptr [esi + 0x0000027c], eax               // 0x0040a1fa    89867c020000
                         {disp8} jmp          _jmp_addr_0x0040a227                            // 0x0040a200    eb25
_jmp_addr_0x0040a202:    fstp                 st(0)                                           // 0x0040a202    ddd8
                         {disp8} jmp          _jmp_addr_0x0040a20a                            // 0x0040a204    eb04
_jmp_addr_0x0040a206:    {disp8} mov          eax, dword ptr [esp + 0x1c]                     // 0x0040a206    8b44241c
_jmp_addr_0x0040a20a:    {disp8} mov          ecx, dword ptr [esi + 0x10]                     // 0x0040a20a    8b4e10
                         sub                  ecx, dword ptr [esi + 0x08]                     // 0x0040a20d    2b4e08
                         sub                  ecx, 0x14                                       // 0x0040a210    83e914
                         {disp8} jns          _jmp_addr_0x0040a217                            // 0x0040a213    7902
                         xor.s                ecx, ecx                                        // 0x0040a215    33c9
_jmp_addr_0x0040a217:    cmp.s                ebp, eax                                        // 0x0040a217    3be8
                         {disp8} jge          _jmp_addr_0x0040a21f                            // 0x0040a219    7d04
                         sub.s                ebx, ecx                                        // 0x0040a21b    2bd9
                         {disp8} jmp          _jmp_addr_0x0040a221                            // 0x0040a21d    eb02
_jmp_addr_0x0040a21f:    add.s                ebx, ecx                                        // 0x0040a21f    03d9
_jmp_addr_0x0040a221:    {disp32} mov         dword ptr [esi + 0x0000027c], ebx               // 0x0040a221    899e7c020000
_jmp_addr_0x0040a227:    {disp32} mov         eax, dword ptr [esi + 0x0000027c]               // 0x0040a227    8b867c020000
                         test                 eax, eax                                        // 0x0040a22d    85c0
                         {disp8} jle          _jmp_addr_0x0040a24d                            // 0x0040a22f    7e1c
                         {disp32} mov         ecx, dword ptr [esi + 0x00000278]               // 0x0040a231    8b8e78020000
                         cmp.s                eax, ecx                                        // 0x0040a237    3bc1
                         {disp8} jl           _jmp_addr_0x0040a24f                            // 0x0040a239    7c14
                         pop                  edi                                             // 0x0040a23b    5f
                         mov.s                eax, ecx                                        // 0x0040a23c    8bc1
                         {disp32} mov         dword ptr [esi + 0x0000027c], eax               // 0x0040a23e    89867c020000
                         pop                  esi                                             // 0x0040a244    5e
                         pop                  ebp                                             // 0x0040a245    5d
                         pop                  ebx                                             // 0x0040a246    5b
                         add                  esp, 0x10                                       // 0x0040a247    83c410
                         ret                  0x0008                                          // 0x0040a24a    c20800
_jmp_addr_0x0040a24d:    xor.s                eax, eax                                        // 0x0040a24d    33c0
_jmp_addr_0x0040a24f:    pop                  edi                                             // 0x0040a24f    5f
                         {disp32} mov         dword ptr [esi + 0x0000027c], eax               // 0x0040a250    89867c020000
                         pop                  esi                                             // 0x0040a256    5e
                         pop                  ebp                                             // 0x0040a257    5d
                         pop                  ebx                                             // 0x0040a258    5b
                         add                  esp, 0x10                                       // 0x0040a259    83c410
                         ret                  0x0008                                          // 0x0040a25c    c20800
_jmp_addr_0x0040a25f:    {disp32} mov         ecx, dword ptr [esi + 0x0000027c]               // 0x0040a25f    8b8e7c020000
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040a265    8b460c
                         sub.s                eax, ecx                                        // 0x0040a268    2bc1
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040a26a    8b8e50020000
                         or                   edx, 0xffffffff                                 // 0x0040a270    83caff
                         xor.s                edi, edi                                        // 0x0040a273    33ff
                         test                 ecx, ecx                                        // 0x0040a275    85c9
                         {disp32} mov         dword ptr [esi + 0x00000248], edx               // 0x0040a277    899648020000
                         {disp8} jle          _jmp_addr_0x0040a2a2                            // 0x0040a27d    7e23
_jmp_addr_0x0040a27f:    cmp.s                ebx, eax                                        // 0x0040a27f    3bd8
                         {disp8} jl           _jmp_addr_0x0040a293                            // 0x0040a281    7c10
                         {disp32} mov         ebp, dword ptr [esi + 0x0000025c]               // 0x0040a283    8bae5c020000
                         {disp8} mov          ebp, dword ptr [ebp + edi * 0x4 + 0x00]         // 0x0040a289    8b6cbd00
                         add.s                ebp, eax                                        // 0x0040a28d    03e8
                         cmp.s                ebx, ebp                                        // 0x0040a28f    3bdd
                         {disp8} jl           _jmp_addr_0x0040a2a2                            // 0x0040a291    7c0f
_jmp_addr_0x0040a293:    {disp32} mov         ebp, dword ptr [esi + 0x0000025c]               // 0x0040a293    8bae5c020000
                         add                  eax, dword ptr [ebp + edi * 0x4 + 0x00]         // 0x0040a299    0344bd00
                         inc                  edi                                             // 0x0040a29d    47
                         cmp.s                edi, ecx                                        // 0x0040a29e    3bf9
                         {disp8} jl           _jmp_addr_0x0040a27f                            // 0x0040a2a0    7cdd
_jmp_addr_0x0040a2a2:    cmp.s                edi, ecx                                        // 0x0040a2a2    3bf9
                         {disp8} jge          _jmp_addr_0x0040a2fa                            // 0x0040a2a4    7d54
                         test                 edi, edi                                        // 0x0040a2a6    85ff
                         {disp8} jl           _jmp_addr_0x0040a2b2                            // 0x0040a2a8    7c08
                         {disp32} mov         dword ptr [esi + 0x00000248], edi               // 0x0040a2aa    89be48020000
                         {disp8} jmp          _jmp_addr_0x0040a2b8                            // 0x0040a2b0    eb06
_jmp_addr_0x0040a2b2:    {disp32} mov         dword ptr [esi + 0x00000248], edx               // 0x0040a2b2    899648020000
_jmp_addr_0x0040a2b8:    {disp8} mov          eax, dword ptr [esi + 0x04]                     // 0x0040a2b8    8b4604
                         test                 eax, eax                                        // 0x0040a2bb    85c0
                         {disp8} je           _jmp_addr_0x0040a2fa                            // 0x0040a2bd    743b
                         {disp32} mov         eax, dword ptr [data_bytes + 0x286d00]          // 0x0040a2bf    a100cdc400
                         test                 eax, eax                                        // 0x0040a2c4    85c0
                         {disp8} je           _jmp_addr_0x0040a2fa                            // 0x0040a2c6    7432
                         test                 edi, edi                                        // 0x0040a2c8    85ff
                         {disp8} jl           _jmp_addr_0x0040a2fa                            // 0x0040a2ca    7c2e
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]          // 0x0040a2cc    8b0d04c1e800
                         call                 @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4  // 0x0040a2d2    e8e99a3e00
                         cmp.s                eax, edi                                        // 0x0040a2d7    3bc7
                         {disp8} je           _jmp_addr_0x0040a2fa                            // 0x0040a2d9    741f
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040a2db    8b8e50020000
                         push                 edi                                             // 0x0040a2e1    57
                         dec                  ecx                                             // 0x0040a2e2    49
                         push                 ecx                                             // 0x0040a2e3    51
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]          // 0x0040a2e4    8b0d04c1e800
                         push                 0x0                                             // 0x0040a2ea    6a00
                         call                 @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                            // 0x0040a2ec    e8ef9a3e00
                         push                 0x0                                             // 0x0040a2f1    6a00
                         mov.s                ecx, esi                                        // 0x0040a2f3    8bce
                         call                 @AutoScroll__9SetupListFb@9                     // 0x0040a2f5    e8d6faffff
_jmp_addr_0x0040a2fa:    pop                  edi                                             // 0x0040a2fa    5f
                         pop                  esi                                             // 0x0040a2fb    5e
                         pop                  ebp                                             // 0x0040a2fc    5d
                         pop                  ebx                                             // 0x0040a2fd    5b
                         add                  esp, 0x10                                       // 0x0040a2fe    83c410
                         ret                  0x0008                                          // 0x0040a301    c20800
                         nop                                                                  // 0x0040a304    90
                         nop                                                                  // 0x0040a305    90
                         nop                                                                  // 0x0040a306    90
                         nop                                                                  // 0x0040a307    90
                         nop                                                                  // 0x0040a308    90
                         nop                                                                  // 0x0040a309    90
                         nop                                                                  // 0x0040a30a    90
                         nop                                                                  // 0x0040a30b    90
                         nop                                                                  // 0x0040a30c    90
                         nop                                                                  // 0x0040a30d    90
                         nop                                                                  // 0x0040a30e    90
                         nop                                                                  // 0x0040a30f    90
                         {disp8} mov          edx, dword ptr [ecx + 0x0c]                     // 0x0040a310    8b510c
                         push                 ebx                                             // 0x0040a313    53
                         {disp32} mov         ebx, dword ptr [ecx + 0x0000027c]               // 0x0040a314    8b997c020000
                         push                 esi                                             // 0x0040a31a    56
                         {disp32} mov         esi, dword ptr [ecx + 0x00000250]               // 0x0040a31b    8bb150020000
                         sub.s                edx, ebx                                        // 0x0040a321    2bd3
                         xor.s                eax, eax                                        // 0x0040a323    33c0
                         test                 esi, esi                                        // 0x0040a325    85f6
                         push                 edi                                             // 0x0040a327    57
                         {disp8} jle          _jmp_addr_0x0040a34f                            // 0x0040a328    7e25
                         {disp8} mov          edi, dword ptr [esp + 0x14]                     // 0x0040a32a    8b7c2414
_jmp_addr_0x0040a32e:    cmp.s                edi, edx                                        // 0x0040a32e    3bfa
                         {disp8} jl           _jmp_addr_0x0040a341                            // 0x0040a330    7c0f
                         {disp32} mov         ebx, dword ptr [ecx + 0x0000025c]               // 0x0040a332    8b995c020000
                         mov                  ebx, dword ptr [ebx + eax * 0x4]                // 0x0040a338    8b1c83
                         add.s                ebx, edx                                        // 0x0040a33b    03da
                         cmp.s                edi, ebx                                        // 0x0040a33d    3bfb
                         {disp8} jl           _jmp_addr_0x0040a34f                            // 0x0040a33f    7c0e
_jmp_addr_0x0040a341:    {disp32} mov         ebx, dword ptr [ecx + 0x0000025c]               // 0x0040a341    8b995c020000
                         add                  edx, dword ptr [ebx + eax * 0x4]                // 0x0040a347    031483
                         inc                  eax                                             // 0x0040a34a    40
                         cmp.s                eax, esi                                        // 0x0040a34b    3bc6
                         {disp8} jl           _jmp_addr_0x0040a32e                            // 0x0040a34d    7cdf
_jmp_addr_0x0040a34f:    pop                  edi                                             // 0x0040a34f    5f
                         cmp.s                eax, esi                                        // 0x0040a350    3bc6
                         pop                  esi                                             // 0x0040a352    5e
                         pop                  ebx                                             // 0x0040a353    5b
                         {disp8} jl           _jmp_addr_0x0040a359                            // 0x0040a354    7c03
                         or                   eax, -0x1                                       // 0x0040a356    83c8ff
_jmp_addr_0x0040a359:    ret                  0x0008                                          // 0x0040a359    c20800
                         nop                                                                  // 0x0040a35c    90
                         nop                                                                  // 0x0040a35d    90
                         nop                                                                  // 0x0040a35e    90
                         nop                                                                  // 0x0040a35f    90
_Click__9SetupListFii:
                         ret                  0x0008                                          // 0x0040a360    c20800
                         nop                                                                  // 0x0040a363    90
                         nop                                                                  // 0x0040a364    90
                         nop                                                                  // 0x0040a365    90
                         nop                                                                  // 0x0040a366    90
                         nop                                                                  // 0x0040a367    90
                         nop                                                                  // 0x0040a368    90
                         nop                                                                  // 0x0040a369    90
                         nop                                                                  // 0x0040a36a    90
                         nop                                                                  // 0x0040a36b    90
                         nop                                                                  // 0x0040a36c    90
                         nop                                                                  // 0x0040a36d    90
                         nop                                                                  // 0x0040a36e    90
                         nop                                                                  // 0x0040a36f    90
_MouseDown__9SetupListFiib:
                         {disp8} mov          eax, dword ptr [ecx + 0x04]                     // 0x0040a370    8b4104
                         test                 eax, eax                                        // 0x0040a373    85c0
                         {disp8} jne          _jmp_addr_0x0040a3e8                            // 0x0040a375    7571
                         {disp8} mov          al, byte ptr [esp + 0x0c]                       // 0x0040a377    8a44240c
                         test                 al, al                                          // 0x0040a37b    84c0
                         {disp8} je           _jmp_addr_0x0040a3e8                            // 0x0040a37d    7469
                         {disp32} mov         eax, dword ptr [ecx + 0x00000248]               // 0x0040a37f    8b8148020000
                         {disp8} mov          edx, dword ptr [esp + 0x04]                     // 0x0040a385    8b542404
                         {disp32} mov         dword ptr [ecx + 0x0000024c], eax               // 0x0040a389    89814c020000
                         {disp32} mov         eax, dword ptr [ecx + 0x0000027c]               // 0x0040a38f    8b817c020000
                         push                 esi                                             // 0x0040a395    56
                         {disp8} mov          esi, dword ptr [esp + 0x0c]                     // 0x0040a396    8b74240c
                         {disp32} mov         dword ptr [ecx + 0x00000280], eax               // 0x0040a39a    898180020000
                         {disp8} mov          eax, dword ptr [ecx + 0x10]                     // 0x0040a3a0    8b4110
                         sub                  eax, dword ptr [ecx + 0x00000240]               // 0x0040a3a3    2b8140020000
                         cmp.s                edx, eax                                        // 0x0040a3a9    3bd0
                         {disp32} mov         dword ptr [ecx + 0x00000288], edx               // 0x0040a3ab    899188020000
                         {disp32} mov         dword ptr [ecx + 0x0000028c], esi               // 0x0040a3b1    89b18c020000
                         {disp8} jle          _jmp_addr_0x0040a3ca                            // 0x0040a3b7    7e11
                         {disp32} mov         al, byte ptr [ecx + 0x00000274]                 // 0x0040a3b9    8a8174020000
                         test                 al, al                                          // 0x0040a3bf    84c0
                         {disp8} je           _jmp_addr_0x0040a3ca                            // 0x0040a3c1    7407
                         mov                  eax, 0x00000001                                 // 0x0040a3c3    b801000000
                         {disp8} jmp          _jmp_addr_0x0040a3cc                            // 0x0040a3c8    eb02
_jmp_addr_0x0040a3ca:    xor.s                eax, eax                                        // 0x0040a3ca    33c0
_jmp_addr_0x0040a3cc:    test                 al, al                                          // 0x0040a3cc    84c0
                         {disp32} mov         byte ptr [ecx + 0x00000285], al                 // 0x0040a3ce    888185020000
                         {disp8} je           _jmp_addr_0x0040a3e0                            // 0x0040a3d4    740a
                         {disp32} mov         dword ptr [ecx + 0x00000248], 0xffffffff        // 0x0040a3d6    c78148020000ffffffff
_jmp_addr_0x0040a3e0:    mov                  eax, dword ptr [ecx]                            // 0x0040a3e0    8b01
                         push                 esi                                             // 0x0040a3e2    56
                         push                 edx                                             // 0x0040a3e3    52
                         call                 dword ptr [eax + 0x18]                          // 0x0040a3e4    ff5018
                         pop                  esi                                             // 0x0040a3e7    5e
_jmp_addr_0x0040a3e8:    ret                  0x000c                                          // 0x0040a3e8    c20c00
                         call                 ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                            // 0x0040a3eb    e88974ffff
_MouseUp__9SetupListFiib:
                         {disp8} mov          eax, dword ptr [ecx + 0x04]                     // 0x0040a3f0    8b4104
                         test                 eax, eax                                        // 0x0040a3f3    85c0
                         {disp8} jne          _jmp_addr_0x0040a44a                            // 0x0040a3f5    7553
                         {disp32} mov         al, byte ptr [ecx + 0x00000285]                 // 0x0040a3f7    8a8185020000
                         test                 al, al                                          // 0x0040a3fd    84c0
                         {disp8} mov          al, byte ptr [esp + 0x0c]                       // 0x0040a3ff    8a44240c
                         {disp8} je           _jmp_addr_0x0040a41f                            // 0x0040a403    741a
                         test                 al, al                                          // 0x0040a405    84c0
                         {disp8} je           _jmp_addr_0x0040a415                            // 0x0040a407    740c
                         {disp32} mov         eax, dword ptr [ecx + 0x0000024c]               // 0x0040a409    8b814c020000
                         {disp32} mov         dword ptr [ecx + 0x00000248], eax               // 0x0040a40f    898148020000
_jmp_addr_0x0040a415:    {disp32} mov         byte ptr [ecx + 0x00000285], 0x00               // 0x0040a415    c6818502000000
                         ret                  0x000c                                          // 0x0040a41c    c20c00
_jmp_addr_0x0040a41f:    test                 al, al                                          // 0x0040a41f    84c0
                         {disp8} je           _jmp_addr_0x0040a43e                            // 0x0040a421    741b
                         {disp32} mov         edx, dword ptr [ecx + 0x00000248]               // 0x0040a423    8b9148020000
                         {disp32} mov         eax, dword ptr [ecx + 0x0000027c]               // 0x0040a429    8b817c020000
                         {disp32} mov         dword ptr [ecx + 0x0000024c], edx               // 0x0040a42f    89914c020000
                         {disp32} mov         dword ptr [ecx + 0x00000280], eax               // 0x0040a435    898180020000
                         ret                  0x000c                                          // 0x0040a43b    c20c00
_jmp_addr_0x0040a43e:    {disp32} mov         edx, dword ptr [ecx + 0x0000024c]               // 0x0040a43e    8b914c020000
                         {disp32} mov         dword ptr [ecx + 0x00000248], edx               // 0x0040a444    899148020000
_jmp_addr_0x0040a44a:    ret                  0x000c                                          // 0x0040a44a    c20c00
                         nop                                                                  // 0x0040a44d    90
                         nop                                                                  // 0x0040a44e    90
                         nop                                                                  // 0x0040a44f    90
@__ct__9SetupListFiiiii@28:    {disp8} mov          eax, dword ptr [esp + 0x14]                     // 0x0040a450    8b442414
                         {disp8} mov          edx, dword ptr [esp + 0x0c]                     // 0x0040a454    8b54240c
                         push                 esi                                             // 0x0040a458    56
                         push                 0x00c4cd30                                      // 0x0040a459    6830cdc400
                         push                 eax                                             // 0x0040a45e    50
                         {disp8} mov          eax, dword ptr [esp + 0x14]                     // 0x0040a45f    8b442414
                         mov.s                esi, ecx                                        // 0x0040a463    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                     // 0x0040a465    8b4c241c
                         push                 ecx                                             // 0x0040a469    51
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                     // 0x0040a46a    8b4c2414
                         push                 edx                                             // 0x0040a46e    52
                         push                 eax                                             // 0x0040a46f    50
                         push                 ecx                                             // 0x0040a470    51
                         mov.s                ecx, esi                                        // 0x0040a471    8bce
                         call                 ??0SetupControl@@QAE@HHHHHPA_W@Z                // 0x0040a473    e8d8edffff
                         xor.s                eax, eax                                        // 0x0040a478    33c0
                         or                   ecx, 0xffffffff                                 // 0x0040a47a    83c9ff
                         {disp32} mov         byte ptr [esi + 0x0000023c], al                 // 0x0040a47d    88863c020000
                         {disp32} mov         byte ptr [esi + 0x0000029c], al                 // 0x0040a483    88869c020000
                         {disp32} mov         byte ptr [esi + 0x00000284], al                 // 0x0040a489    888684020000
                         {disp32} mov         dword ptr [esi + 0x00000280], eax               // 0x0040a48f    898680020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax               // 0x0040a495    898650020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040a49b    898654020000
                         {disp32} mov         dword ptr [esi + 0x00000258], eax               // 0x0040a4a1    898658020000
                         {disp32} mov         dword ptr [esi + 0x0000025c], eax               // 0x0040a4a7    89865c020000
                         {disp32} mov         dword ptr [esi + 0x00000264], eax               // 0x0040a4ad    898664020000
                         {disp32} mov         dword ptr [esi + 0x0000026c], eax               // 0x0040a4b3    89866c020000
                         {disp32} mov         dword ptr [esi + 0x00000268], eax               // 0x0040a4b9    898668020000
                         {disp32} mov         dword ptr [esi + 0x00000260], eax               // 0x0040a4bf    898660020000
                         {disp32} mov         dword ptr [esi + 0x00000270], eax               // 0x0040a4c5    898670020000
                         {disp32} mov         byte ptr [esi + 0x00000274], al                 // 0x0040a4cb    888674020000
                         {disp32} mov         dword ptr [esi + 0x0000027c], eax               // 0x0040a4d1    89867c020000
                         {disp32} mov         dword ptr [esi + 0x00000278], eax               // 0x0040a4d7    898678020000
                         {disp32} mov         byte ptr [esi + 0x00000244], al                 // 0x0040a4dd    888644020000
                         {disp32} mov         byte ptr [esi + 0x00000290], al                 // 0x0040a4e3    888690020000
                         mov                  dword ptr [esi], 0x008ab324                     // 0x0040a4e9    c70624b38a00
                         {disp32} mov         dword ptr [esi + 0x00000298], ecx               // 0x0040a4ef    898e98020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], ecx               // 0x0040a4f5    898e4c020000
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx               // 0x0040a4fb    898e48020000
                         {disp32} mov         dword ptr [esi + 0x00000240], 0x00000018        // 0x0040a501    c7864002000018000000
                         {disp32} mov         byte ptr [esi + 0x00000291], 0x01               // 0x0040a50b    c6869102000001
                         {disp32} mov         dword ptr [esi + 0x00000294], ecx               // 0x0040a512    898e94020000
                         mov.s                eax, esi                                        // 0x0040a518    8bc6
                         pop                  esi                                             // 0x0040a51a    5e
                         ret                  0x0014                                          // 0x0040a51b    c21400
                         nop                                                                  // 0x0040a51e    90
                         nop                                                                  // 0x0040a51f    90
_IsSelected__9SetupListFi:
                         {disp8} mov          edx, dword ptr [esp + 0x04]                     // 0x0040a520    8b542404
                         push                 esi                                             // 0x0040a524    56
                         {disp32} mov         esi, dword ptr [ecx + 0x00000248]               // 0x0040a525    8bb148020000
                         xor.s                eax, eax                                        // 0x0040a52b    33c0
                         cmp.s                edx, esi                                        // 0x0040a52d    3bd6
                         sete                 al                                              // 0x0040a52f    0f94c0
                         pop                  esi                                             // 0x0040a532    5e
                         ret                  0x0004                                          // 0x0040a533    c20400
                         nop                                                                  // 0x0040a536    90
                         nop                                                                  // 0x0040a537    90
                         nop                                                                  // 0x0040a538    90
                         nop                                                                  // 0x0040a539    90
                         nop                                                                  // 0x0040a53a    90
                         nop                                                                  // 0x0040a53b    90
                         nop                                                                  // 0x0040a53c    90
                         nop                                                                  // 0x0040a53d    90
                         nop                                                                  // 0x0040a53e    90
                         nop                                                                  // 0x0040a53f    90
??_GSetupList@@UAEPAXI@Z:
                         push                 esi                                             // 0x0040a540    56
                         mov.s                esi, ecx                                        // 0x0040a541    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x00000268]               // 0x0040a543    8b8668020000
                         push                 eax                                             // 0x0040a549    50
                         mov                  dword ptr [esi], 0x008ab324                     // 0x0040a54a    c70624b38a00
                         call                 ??3@YAXPAX@Z                                    // 0x0040a550    e843493a00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000026c]               // 0x0040a555    8b8e6c020000
                         push                 ecx                                             // 0x0040a55b    51
                         call                 ??3@YAXPAX@Z                                    // 0x0040a55c    e837493a00
                         {disp32} mov         edx, dword ptr [esi + 0x00000264]               // 0x0040a561    8b9664020000
                         push                 edx                                             // 0x0040a567    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040a568    e82b493a00
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040a56d    8b865c020000
                         push                 eax                                             // 0x0040a573    50
                         call                 ??3@YAXPAX@Z                                    // 0x0040a574    e81f493a00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000258]               // 0x0040a579    8b8e58020000
                         push                 ecx                                             // 0x0040a57f    51
                         call                 ??3@YAXPAX@Z                                    // 0x0040a580    e813493a00
                         {disp32} mov         edx, dword ptr [esi + 0x00000260]               // 0x0040a585    8b9660020000
                         push                 edx                                             // 0x0040a58b    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040a58c    e807493a00
                         add                  esp, 0x18                                       // 0x0040a591    83c418
                         mov.s                ecx, esi                                        // 0x0040a594    8bce
                         call                 ??1SetupControl@@UAE@XZ                         // 0x0040a596    e825eeffff
                         test                 byte ptr [esp + 0x08], 0x01                     // 0x0040a59b    f644240801
                         {disp8} je           _jmp_addr_0x0040a5ab                            // 0x0040a5a0    7409
                         push                 esi                                             // 0x0040a5a2    56
                         call                 ??3@YAXPAX@Z                                    // 0x0040a5a3    e8f0483a00
                         add                  esp, 0x04                                       // 0x0040a5a8    83c404
_jmp_addr_0x0040a5ab:    mov.s                eax, esi                                        // 0x0040a5ab    8bc6
                         pop                  esi                                             // 0x0040a5ad    5e
                         ret                  0x0004                                          // 0x0040a5ae    c20400
                         nop                                                                  // 0x0040a5b1    90
                         nop                                                                  // 0x0040a5b2    90
                         nop                                                                  // 0x0040a5b3    90
                         nop                                                                  // 0x0040a5b4    90
                         nop                                                                  // 0x0040a5b5    90
                         nop                                                                  // 0x0040a5b6    90
                         nop                                                                  // 0x0040a5b7    90
                         nop                                                                  // 0x0040a5b8    90
                         nop                                                                  // 0x0040a5b9    90
                         nop                                                                  // 0x0040a5ba    90
                         nop                                                                  // 0x0040a5bb    90
                         nop                                                                  // 0x0040a5bc    90
                         nop                                                                  // 0x0040a5bd    90
                         nop                                                                  // 0x0040a5be    90
                         nop                                                                  // 0x0040a5bf    90
_Draw__9SetupListFbb:
                         sub                  esp, 0x30                                       // 0x0040a5c0    83ec30
                         push                 ebx                                             // 0x0040a5c3    53
                         push                 ebp                                             // 0x0040a5c4    55
                         push                 esi                                             // 0x0040a5c5    56
                         mov.s                esi, ecx                                        // 0x0040a5c6    8bf1
                         {disp32} mov         al, byte ptr [esi + 0x00000274]                 // 0x0040a5c8    8a8674020000
                         test                 al, al                                          // 0x0040a5ce    84c0
                         {disp8} mov          ebx, dword ptr [esi + 0x10]                     // 0x0040a5d0    8b5e10
                         push                 edi                                             // 0x0040a5d3    57
                         {disp8} mov          dword ptr [esp + 0x20], ebx                     // 0x0040a5d4    895c2420
                         {disp8} je           _jmp_addr_0x0040a5ed                            // 0x0040a5d8    7413
                         {disp32} mov         edx, dword ptr [esi + 0x00000240]               // 0x0040a5da    8b9640020000
                         mov                  eax, 0xfffffffe                                 // 0x0040a5e0    b8feffffff
                         sub.s                eax, edx                                        // 0x0040a5e5    2bc2
                         add.s                ebx, eax                                        // 0x0040a5e7    03d8
                         {disp8} mov          dword ptr [esp + 0x20], ebx                     // 0x0040a5e9    895c2420
_jmp_addr_0x0040a5ed:    {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040a5ed    8b460c
                         {disp32} mov         ebp, dword ptr [esi + 0x0000027c]               // 0x0040a5f0    8bae7c020000
                         {disp32} mov         dl, byte ptr [esi + 0x00000290]                 // 0x0040a5f6    8a9690020000
                         mov.s                edi, eax                                        // 0x0040a5fc    8bf8
                         xor.s                ecx, ecx                                        // 0x0040a5fe    33c9
                         sub.s                edi, ebp                                        // 0x0040a600    2bfd
                         test                 dl, dl                                          // 0x0040a602    84d2
                         {disp8} mov          edx, dword ptr [esi + 0x04]                     // 0x0040a604    8b5604
                         sete                 cl                                              // 0x0040a607    0f94c1
                         test                 edx, edx                                        // 0x0040a60a    85d2
                         {disp8} je           _jmp_addr_0x0040a61b                            // 0x0040a60c    740d
                         {disp32} mov         edx, dword ptr [data_bytes + 0x286d00]          // 0x0040a60e    8b1500cdc400
                         test                 edx, edx                                        // 0x0040a614    85d2
                         {disp8} je           _jmp_addr_0x0040a61b                            // 0x0040a616    7403
                         add                  ecx, 0x10                                       // 0x0040a618    83c110
_jmp_addr_0x0040a61b:    {disp32} mov         edx, dword ptr [esi + 0x00000294]               // 0x0040a61b    8b9694020000
                         push                 edx                                             // 0x0040a621    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                     // 0x0040a622    8b5608
                         push                 -0x1                                            // 0x0040a625    6aff
                         push                 0x10                                            // 0x0040a627    6a10
                         push                 ecx                                             // 0x0040a629    51
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040a62a    8b4e14
                         push                 ecx                                             // 0x0040a62d    51
                         push                 ebx                                             // 0x0040a62e    53
                         push                 eax                                             // 0x0040a62f    50
                         push                 edx                                             // 0x0040a630    52
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z           // 0x0040a631    e8ea950000
                         {disp8} mov          eax, dword ptr [esi + 0x08]                     // 0x0040a636    8b4608
                         {disp32} mov         dword ptr [esi + 0x000002a8], eax               // 0x0040a639    8986a8020000
                         {disp32} mov         dword ptr [esi + 0x000002a0], eax               // 0x0040a63f    8986a0020000
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040a645    8b460c
                         {disp32} mov         dword ptr [esi + 0x000002ac], eax               // 0x0040a648    8986ac020000
                         {disp32} mov         dword ptr [esi + 0x000002a4], eax               // 0x0040a64e    8986a4020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040a654    8b8650020000
                         xor.s                ecx, ecx                                        // 0x0040a65a    33c9
                         add                  esp, 0x20                                       // 0x0040a65c    83c420
                         test                 eax, eax                                        // 0x0040a65f    85c0
                         {disp8} mov          dword ptr [esp + 0x14], ecx                     // 0x0040a661    894c2414
                         {disp32} jle         _jmp_addr_0x0040aa0f                            // 0x0040a665    0f8ea4030000
                         {disp8} mov          dword ptr [esp + 0x1c], ecx                     // 0x0040a66b    894c241c
                         {disp8} jmp          _jmp_addr_0x0040a675                            // 0x0040a66f    eb04
_jmp_addr_0x0040a671:    {disp8} mov          ecx, dword ptr [esp + 0x14]                     // 0x0040a671    8b4c2414
_jmp_addr_0x0040a675:    {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040a675    8b865c020000
                         mov                  ebp, dword ptr [eax + ecx * 0x4]                // 0x0040a67b    8b2c88
                         {disp32} mov         al, byte ptr [esi + 0x0000023c]                 // 0x0040a67e    8a863c020000
                         add.s                ebp, edi                                        // 0x0040a684    03ef
                         test                 al, al                                          // 0x0040a686    84c0
                         {disp8} mov          dword ptr [esp + 0x18], edi                     // 0x0040a688    897c2418
                         {disp8} mov          dword ptr [esp + 0x28], 0x00000001              // 0x0040a68c    c744242801000000
                         {disp8} jne          _jmp_addr_0x0040a6be                            // 0x0040a694    7528
                         {disp32} mov         edx, dword ptr [esi + 0x0000026c]               // 0x0040a696    8b966c020000
                         mov                  eax, dword ptr [edx + ecx * 0x4]                // 0x0040a69c    8b048a
                         test                 eax, eax                                        // 0x0040a69f    85c0
                         {disp8} je           _jmp_addr_0x0040a6be                            // 0x0040a6a1    741b
                         {disp8} mov          edx, dword ptr [esi + 0x14]                     // 0x0040a6a3    8b5614
                         push                 ebp                                             // 0x0040a6a6    55
                         push                 edi                                             // 0x0040a6a7    57
                         push                 edx                                             // 0x0040a6a8    52
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                     // 0x0040a6a9    8b560c
                         push                 ebx                                             // 0x0040a6ac    53
                         push                 edx                                             // 0x0040a6ad    52
                         {disp8} mov          edx, dword ptr [esi + 0x08]                     // 0x0040a6ae    8b5608
                         push                 edx                                             // 0x0040a6b1    52
                         push                 ecx                                             // 0x0040a6b2    51
                         push                 esi                                             // 0x0040a6b3    56
                         call                 eax                                             // 0x0040a6b4    ffd0
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                     // 0x0040a6b6    8b4c2414
                         {disp8} mov          dword ptr [esp + 0x28], eax                     // 0x0040a6ba    89442428
_jmp_addr_0x0040a6be:    mov                  eax, dword ptr [esi]                            // 0x0040a6be    8b06
                         push                 ecx                                             // 0x0040a6c0    51
                         mov.s                ecx, esi                                        // 0x0040a6c1    8bce
                         call                 dword ptr [eax + 0x34]                          // 0x0040a6c3    ff5034
                         test                 al, al                                          // 0x0040a6c6    84c0
                         {disp32} je          _jmp_addr_0x0040a7b7                            // 0x0040a6c8    0f84e9000000
                         {disp32} mov         al, byte ptr [esi + 0x00000291]                 // 0x0040a6ce    8a8691020000
                         test                 al, al                                          // 0x0040a6d4    84c0
                         {disp32} je          _jmp_addr_0x0040a7b7                            // 0x0040a6d6    0f84db000000
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040a6dc    8b460c
                         cmp.s                edi, eax                                        // 0x0040a6df    3bf8
                         {disp8} jle          _jmp_addr_0x0040a6f0                            // 0x0040a6e1    7e0d
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040a6e3    8b4e14
                         cmp.s                edi, ecx                                        // 0x0040a6e6    3bf9
                         {disp8} jl           _jmp_addr_0x0040a6f4                            // 0x0040a6e8    7c0a
                         {disp8} mov          dword ptr [esp + 0x18], ecx                     // 0x0040a6ea    894c2418
                         {disp8} jmp          _jmp_addr_0x0040a6f8                            // 0x0040a6ee    eb08
_jmp_addr_0x0040a6f0:    {disp8} mov          dword ptr [esp + 0x18], eax                     // 0x0040a6f0    89442418
_jmp_addr_0x0040a6f4:    {disp8} mov          ecx, dword ptr [esp + 0x18]                     // 0x0040a6f4    8b4c2418
_jmp_addr_0x0040a6f8:    cmp.s                ebp, eax                                        // 0x0040a6f8    3be8
                         {disp8} jle          _jmp_addr_0x0040a703                            // 0x0040a6fa    7e07
                         {disp8} mov          eax, dword ptr [esi + 0x14]                     // 0x0040a6fc    8b4614
                         cmp.s                ebp, eax                                        // 0x0040a6ff    3be8
                         {disp8} jl           _jmp_addr_0x0040a705                            // 0x0040a701    7c02
_jmp_addr_0x0040a703:    mov.s                ebp, eax                                        // 0x0040a703    8be8
_jmp_addr_0x0040a705:    cmp.s                ecx, ebp                                        // 0x0040a705    3bcd
                         {disp8} mov          eax, dword ptr [esi + 0x08]                     // 0x0040a707    8b4608
                         {disp32} mov         dword ptr [esi + 0x000002a0], eax               // 0x0040a70a    8986a0020000
                         {disp32} mov         dword ptr [esi + 0x000002a8], ebx               // 0x0040a710    899ea8020000
                         {disp32} mov         dword ptr [esi + 0x000002a4], ecx               // 0x0040a716    898ea4020000
                         {disp32} mov         dword ptr [esi + 0x000002ac], ebp               // 0x0040a71c    89aeac020000
                         {disp8} je           _jmp_addr_0x0040a747                            // 0x0040a722    7423
                         {disp32} mov         edx, dword ptr [esi + 0x00000298]               // 0x0040a724    8b9698020000
                         push                 edx                                             // 0x0040a72a    52
                         xor.s                edx, edx                                        // 0x0040a72b    33d2
                         cmp                  byte ptr [esi + 0x00000290], dl                 // 0x0040a72d    389690020000
                         push                 -0x1                                            // 0x0040a733    6aff
                         setne                dl                                              // 0x0040a735    0f95c2
                         push                 0x10                                            // 0x0040a738    6a10
                         push                 edx                                             // 0x0040a73a    52
                         push                 ebp                                             // 0x0040a73b    55
                         push                 ebx                                             // 0x0040a73c    53
                         push                 ecx                                             // 0x0040a73d    51
                         push                 eax                                             // 0x0040a73e    50
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z           // 0x0040a73f    e8dc940000
                         add                  esp, 0x20                                       // 0x0040a744    83c420
_jmp_addr_0x0040a747:    {disp8} mov          edx, dword ptr [esi + 0x0c]                     // 0x0040a747    8b560c
                         cmp.s                ebp, edx                                        // 0x0040a74a    3bea
                         {disp32} jl          _jmp_addr_0x0040a995                            // 0x0040a74c    0f8c43020000
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040a752    8b4e14
                         cmp                  dword ptr [esp + 0x18], ecx                     // 0x0040a755    394c2418
                         {disp32} jg          _jmp_addr_0x0040a995                            // 0x0040a759    0f8f36020000
                         {disp8} mov          eax, dword ptr [esp + 0x28]                     // 0x0040a75f    8b442428
                         test                 eax, eax                                        // 0x0040a763    85c0
                         {disp32} je          _jmp_addr_0x0040a995                            // 0x0040a765    0f842a020000
                         {disp8} mov          eax, dword ptr [esi + 0x20]                     // 0x0040a76b    8b4620
                         test                 eax, eax                                        // 0x0040a76e    85c0
                         {disp8} jne          _jmp_addr_0x0040a789                            // 0x0040a770    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040a772    8b8634020000
                         test                 eax, eax                                        // 0x0040a778    85c0
                         {disp8} je           _jmp_addr_0x0040a784                            // 0x0040a77a    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]               // 0x0040a77c    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040a789                            // 0x0040a782    eb05
_jmp_addr_0x0040a784:    mov                  eax, 0x0000000a                                 // 0x0040a784    b80a000000
_jmp_addr_0x0040a789:    {disp8} mov          ebx, dword ptr [esp + 0x1c]                     // 0x0040a789    8b5c241c
                         push                 0x0                                             // 0x0040a78d    6a00
                         push                 0x0                                             // 0x0040a78f    6a00
                         push                 0x00c4ccf8                                      // 0x0040a791    68f8ccc400
                         push                 eax                                             // 0x0040a796    50
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]               // 0x0040a797    8b8658020000
                         add.s                eax, ebx                                        // 0x0040a79d    03c3
                         {disp8} mov          ebx, dword ptr [esp + 0x30]                     // 0x0040a79f    8b5c2430
                         push                 eax                                             // 0x0040a7a3    50
                         xor.s                eax, eax                                        // 0x0040a7a4    33c0
                         {disp32} mov         al, byte ptr [esi + 0x00000244]                 // 0x0040a7a6    8a8644020000
                         push                 eax                                             // 0x0040a7ac    50
                         {disp8} lea          eax, dword ptr [edi + 0x02]                     // 0x0040a7ad    8d4702
                         push                 eax                                             // 0x0040a7b0    50
                         push                 ecx                                             // 0x0040a7b1    51
                         {disp32} jmp         _jmp_addr_0x0040a97f                            // 0x0040a7b2    e9c8010000
_jmp_addr_0x0040a7b7:    {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]          // 0x0040a7b7    a1c052e800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]          // 0x0040a7bc    8b0dc452e800
                         {disp8} mov          dword ptr [esp + 0x2c], eax                     // 0x0040a7c2    8944242c
                         {disp8} mov          dword ptr [esp + 0x34], eax                     // 0x0040a7c6    89442434
                         {disp8} lea          eax, dword ptr [esp + 0x2c]                     // 0x0040a7ca    8d44242c
                         {disp8} mov          dword ptr [esp + 0x38], ecx                     // 0x0040a7ce    894c2438
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                     // 0x0040a7d2    894c242c
                         push                 eax                                             // 0x0040a7d6    50
                         {disp8} lea          ecx, dword ptr [esp + 0x38]                     // 0x0040a7d7    8d4c2438
                         push                 ecx                                             // 0x0040a7db    51
                         call                 ?unadjust@SetupThing@@SAMAAH0@Z                 // 0x0040a7dc    e84f740000
                         fstp                 st(0)                                           // 0x0040a7e1    ddd8
                         {disp8} mov          al, byte ptr [esp + 0x4c]                       // 0x0040a7e3    8a44244c
                         add                  esp, 0x08                                       // 0x0040a7e7    83c408
                         test                 al, al                                          // 0x0040a7ea    84c0
                         {disp8} je           _jmp_addr_0x0040a810                            // 0x0040a7ec    7422
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                     // 0x0040a7ee    8b44242c
                         cmp.s                eax, edi                                        // 0x0040a7f2    3bc7
                         {disp8} jl           _jmp_addr_0x0040a810                            // 0x0040a7f4    7c1a
                         {disp32} mov         edx, dword ptr [esi + 0x0000025c]               // 0x0040a7f6    8b965c020000
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                     // 0x0040a7fc    8b4c2414
                         mov                  edx, dword ptr [edx + ecx * 0x4]                // 0x0040a800    8b148a
                         add.s                edx, edi                                        // 0x0040a803    03d7
                         cmp.s                eax, edx                                        // 0x0040a805    3bc2
                         {disp8} jge          _jmp_addr_0x0040a810                            // 0x0040a807    7d07
                         {disp8} mov          byte ptr [esp + 0x13], 0x01                     // 0x0040a809    c644241301
                         {disp8} jmp          _jmp_addr_0x0040a819                            // 0x0040a80e    eb09
_jmp_addr_0x0040a810:    {disp8} mov          ecx, dword ptr [esp + 0x14]                     // 0x0040a810    8b4c2414
                         {disp8} mov          byte ptr [esp + 0x13], 0x00                     // 0x0040a814    c644241300
_jmp_addr_0x0040a819:    {disp8} mov          edx, dword ptr [esi + 0x0c]                     // 0x0040a819    8b560c
                         cmp.s                ebp, edx                                        // 0x0040a81c    3bea
                         {disp32} jl          _jmp_addr_0x0040a995                            // 0x0040a81e    0f8c71010000
                         cmp                  edi, dword ptr [esi + 0x14]                     // 0x0040a824    3b7e14
                         {disp32} jg          _jmp_addr_0x0040a995                            // 0x0040a827    0f8f68010000
                         {disp8} mov          eax, dword ptr [esp + 0x28]                     // 0x0040a82d    8b442428
                         test                 eax, eax                                        // 0x0040a831    85c0
                         {disp32} je          _jmp_addr_0x0040a995                            // 0x0040a833    0f845c010000
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                     // 0x0040a839    8b44241c
                         test                 eax, eax                                        // 0x0040a83d    85c0
                         {disp8} jl           _jmp_addr_0x0040a854                            // 0x0040a83f    7c13
                         cmp                  ecx, dword ptr [esi + 0x00000250]               // 0x0040a841    3b8e50020000
                         {disp8} jge          _jmp_addr_0x0040a854                            // 0x0040a847    7d0b
                         {disp32} mov         eax, dword ptr [esi + 0x00000268]               // 0x0040a849    8b8668020000
                         mov                  eax, dword ptr [eax + ecx * 0x4]                // 0x0040a84f    8b0488
                         {disp8} jmp          _jmp_addr_0x0040a856                            // 0x0040a852    eb02
_jmp_addr_0x0040a854:    xor.s                eax, eax                                        // 0x0040a854    33c0
_jmp_addr_0x0040a856:    test                 eax, 0xff000000                                 // 0x0040a856    a9000000ff
                         {disp32} je          _jmp_addr_0x0040a905                            // 0x0040a85b    0f84a4000000
                         or                   eax, 0xff000000                                 // 0x0040a861    0d000000ff
                         cmp.s                edi, ebp                                        // 0x0040a866    3bfd
                         {disp8} je           _jmp_addr_0x0040a8a1                            // 0x0040a868    7437
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040a86a    8b4e14
                         add                  ecx, -0x2                                       // 0x0040a86d    83c1fe
                         cmp.s                ecx, ebp                                        // 0x0040a870    3bcd
                         mov.s                edx, ecx                                        // 0x0040a872    8bd1
                         {disp8} jl           _jmp_addr_0x0040a878                            // 0x0040a874    7c02
                         mov.s                edx, ebp                                        // 0x0040a876    8bd5
_jmp_addr_0x0040a878:    {disp8} mov          ecx, dword ptr [esi + 0x0c]                     // 0x0040a878    8b4e0c
                         add                  ecx, 0x2                                        // 0x0040a87b    83c102
                         cmp.s                ecx, edi                                        // 0x0040a87e    3bcf
                         {disp8} jg           _jmp_addr_0x0040a884                            // 0x0040a880    7f02
                         mov.s                ecx, edi                                        // 0x0040a882    8bcf
_jmp_addr_0x0040a884:    push                 0x1                                             // 0x0040a884    6a01
                         push                 0x1                                             // 0x0040a886    6a01
                         push                 eax                                             // 0x0040a888    50
                         push                 eax                                             // 0x0040a889    50
                         push                 eax                                             // 0x0040a88a    50
                         push                 eax                                             // 0x0040a88b    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                     // 0x0040a88c    8b4608
                         push                 edx                                             // 0x0040a88f    52
                         {disp8} lea          edx, dword ptr [ebx + -0x02]                    // 0x0040a890    8d53fe
                         push                 edx                                             // 0x0040a893    52
                         push                 ecx                                             // 0x0040a894    51
                         add                  eax, 0x02                                       // 0x0040a895    83c002
                         push                 eax                                             // 0x0040a898    50
                         call                 ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z            // 0x0040a899    e8228a0000
                         add                  esp, 0x28                                       // 0x0040a89e    83c428
_jmp_addr_0x0040a8a1:    {disp8} mov          eax, dword ptr [esi + 0x20]                     // 0x0040a8a1    8b4620
                         test                 eax, eax                                        // 0x0040a8a4    85c0
                         {disp8} jne          _jmp_addr_0x0040a8bf                            // 0x0040a8a6    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040a8a8    8b8634020000
                         test                 eax, eax                                        // 0x0040a8ae    85c0
                         {disp8} je           _jmp_addr_0x0040a8ba                            // 0x0040a8b0    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]               // 0x0040a8b2    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040a8bf                            // 0x0040a8b8    eb05
_jmp_addr_0x0040a8ba:    mov                  eax, 0x0000000a                                 // 0x0040a8ba    b80a000000
_jmp_addr_0x0040a8bf:    {disp32} mov         edx, dword ptr [esi + 0x00000258]               // 0x0040a8bf    8b9658020000
                         push                 0x0                                             // 0x0040a8c5    6a00
                         push                 0x0                                             // 0x0040a8c7    6a00
                         {disp8} lea          ecx, dword ptr [esp + 0x2c]                     // 0x0040a8c9    8d4c242c
                         push                 ecx                                             // 0x0040a8cd    51
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                     // 0x0040a8ce    8b4c2428
                         push                 eax                                             // 0x0040a8d2    50
                         add.s                edx, ecx                                        // 0x0040a8d3    03d1
                         xor.s                eax, eax                                        // 0x0040a8d5    33c0
                         {disp32} mov         al, byte ptr [esi + 0x00000244]                 // 0x0040a8d7    8a8644020000
                         push                 edx                                             // 0x0040a8dd    52
                         {disp8} mov          edx, dword ptr [esi + 0x14]                     // 0x0040a8de    8b5614
                         {disp8} lea          ecx, dword ptr [edi + 0x02]                     // 0x0040a8e1    8d4f02
                         {disp8} mov          byte ptr [esp + 0x38], 0x00                     // 0x0040a8e4    c644243800
                         {disp8} mov          byte ptr [esp + 0x39], 0x00                     // 0x0040a8e9    c644243900
                         {disp8} mov          byte ptr [esp + 0x3a], 0x00                     // 0x0040a8ee    c644243a00
                         push                 eax                                             // 0x0040a8f3    50
                         push                 ecx                                             // 0x0040a8f4    51
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                     // 0x0040a8f5    8b4e0c
                         push                 edx                                             // 0x0040a8f8    52
                         {disp8} lea          eax, dword ptr [ebx + -0x04]                    // 0x0040a8f9    8d43fc
                         push                 eax                                             // 0x0040a8fc    50
                         {disp8} mov          byte ptr [esp + 0x4b], -0x01                    // 0x0040a8fd    c644244bff
                         push                 ecx                                             // 0x0040a902    51
                         {disp8} jmp          _jmp_addr_0x0040a984                            // 0x0040a903    eb7f
_jmp_addr_0x0040a905:    test                 eax, eax                                        // 0x0040a905    85c0
                         {disp8} je           _jmp_addr_0x0040a90e                            // 0x0040a907    7405
                         or                   eax, 0xff000000                                 // 0x0040a909    0d000000ff
_jmp_addr_0x0040a90e:    {disp8} mov          cl, byte ptr [esp + 0x13]                       // 0x0040a90e    8a4c2413
                         test                 cl, cl                                          // 0x0040a912    84c9
                         {disp8} je           _jmp_addr_0x0040a91d                            // 0x0040a914    7407
                         mov                  ecx, 0x00c4cce4                                 // 0x0040a916    b9e4ccc400
                         {disp8} jmp          _jmp_addr_0x0040a93d                            // 0x0040a91b    eb20
_jmp_addr_0x0040a91d:    test                 eax, eax                                        // 0x0040a91d    85c0
                         {disp8} je           _jmp_addr_0x0040a92b                            // 0x0040a91f    740a
                         {disp8} mov          dword ptr [esp + 0x3c], eax                     // 0x0040a921    8944243c
                         {disp8} lea          ecx, dword ptr [esp + 0x3c]                     // 0x0040a925    8d4c243c
                         {disp8} jmp          _jmp_addr_0x0040a93d                            // 0x0040a929    eb12
_jmp_addr_0x0040a92b:    {disp8} mov          al, byte ptr [esp + 0x48]                       // 0x0040a92b    8a442448
                         test                 al, al                                          // 0x0040a92f    84c0
                         mov                  ecx, 0x00c4ccf8                                 // 0x0040a931    b9f8ccc400
                         {disp8} jne          _jmp_addr_0x0040a93d                            // 0x0040a936    7505
                         mov                  ecx, 0x00c4ccd8                                 // 0x0040a938    b9d8ccc400
_jmp_addr_0x0040a93d:    {disp8} mov          eax, dword ptr [esi + 0x20]                     // 0x0040a93d    8b4620
                         test                 eax, eax                                        // 0x0040a940    85c0
                         {disp8} jne          _jmp_addr_0x0040a95b                            // 0x0040a942    7517
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040a944    8b8634020000
                         test                 eax, eax                                        // 0x0040a94a    85c0
                         {disp8} je           _jmp_addr_0x0040a956                            // 0x0040a94c    7408
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]               // 0x0040a94e    8b80ac000000
                         {disp8} jmp          _jmp_addr_0x0040a95b                            // 0x0040a954    eb05
_jmp_addr_0x0040a956:    mov                  eax, 0x0000000a                                 // 0x0040a956    b80a000000
_jmp_addr_0x0040a95b:    push                 0x0                                             // 0x0040a95b    6a00
                         push                 0x0                                             // 0x0040a95d    6a00
                         push                 ecx                                             // 0x0040a95f    51
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                     // 0x0040a960    8b4c2428
                         push                 eax                                             // 0x0040a964    50
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]               // 0x0040a965    8b8658020000
                         add.s                eax, ecx                                        // 0x0040a96b    03c1
                         xor.s                ecx, ecx                                        // 0x0040a96d    33c9
                         {disp32} mov         cl, byte ptr [esi + 0x00000244]                 // 0x0040a96f    8a8e44020000
                         push                 eax                                             // 0x0040a975    50
                         {disp8} lea          eax, dword ptr [edi + 0x02]                     // 0x0040a976    8d4702
                         push                 ecx                                             // 0x0040a979    51
                         push                 eax                                             // 0x0040a97a    50
                         {disp8} mov          eax, dword ptr [esi + 0x14]                     // 0x0040a97b    8b4614
                         push                 eax                                             // 0x0040a97e    50
_jmp_addr_0x0040a97f:    {disp8} lea          ecx, dword ptr [ebx + -0x04]                    // 0x0040a97f    8d4bfc
                         push                 ecx                                             // 0x0040a982    51
                         push                 edx                                             // 0x0040a983    52
_jmp_addr_0x0040a984:    {disp8} mov          edx, dword ptr [esi + 0x08]                     // 0x0040a984    8b5608
                         add                  edx, 0x04                                       // 0x0040a987    83c204
                         push                 edx                                             // 0x0040a98a    52
                         call                 ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z                   // 0x0040a98b    e8c06d0000
                         fstp                 st(0)                                           // 0x0040a990    ddd8
                         add                  esp, 0x2c                                       // 0x0040a992    83c42c
_jmp_addr_0x0040a995:    {disp32} mov         al, byte ptr [esi + 0x0000023c]                 // 0x0040a995    8a863c020000
                         test                 al, al                                          // 0x0040a99b    84c0
                         {disp8} je           _jmp_addr_0x0040a9df                            // 0x0040a99d    7440
                         {disp8} mov          edx, dword ptr [esi + 0x0c]                     // 0x0040a99f    8b560c
                         cmp.s                ebp, edx                                        // 0x0040a9a2    3bea
                         {disp8} jl           _jmp_addr_0x0040a9df                            // 0x0040a9a4    7c39
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040a9a6    8b4e14
                         cmp                  dword ptr [esp + 0x18], ecx                     // 0x0040a9a9    394c2418
                         {disp8} jg           _jmp_addr_0x0040a9df                            // 0x0040a9ad    7f30
                         {disp32} mov         eax, dword ptr [esi + 0x0000026c]               // 0x0040a9af    8b866c020000
                         {disp8} mov          ebx, dword ptr [esp + 0x14]                     // 0x0040a9b5    8b5c2414
                         mov                  eax, dword ptr [eax + ebx * 0x4]                // 0x0040a9b9    8b0498
                         test                 eax, eax                                        // 0x0040a9bc    85c0
                         {disp8} je           _jmp_addr_0x0040a9db                            // 0x0040a9be    741b
                         {disp8} mov          ebx, dword ptr [esp + 0x18]                     // 0x0040a9c0    8b5c2418
                         push                 ebp                                             // 0x0040a9c4    55
                         push                 ebx                                             // 0x0040a9c5    53
                         {disp8} mov          ebx, dword ptr [esp + 0x28]                     // 0x0040a9c6    8b5c2428
                         push                 ecx                                             // 0x0040a9ca    51
                         {disp8} mov          ecx, dword ptr [esi + 0x08]                     // 0x0040a9cb    8b4e08
                         push                 ebx                                             // 0x0040a9ce    53
                         push                 edx                                             // 0x0040a9cf    52
                         {disp8} mov          edx, dword ptr [esp + 0x28]                     // 0x0040a9d0    8b542428
                         push                 ecx                                             // 0x0040a9d4    51
                         push                 edx                                             // 0x0040a9d5    52
                         push                 esi                                             // 0x0040a9d6    56
                         call                 eax                                             // 0x0040a9d7    ffd0
                         {disp8} jmp          _jmp_addr_0x0040a9df                            // 0x0040a9d9    eb04
_jmp_addr_0x0040a9db:    {disp8} mov          ebx, dword ptr [esp + 0x20]                     // 0x0040a9db    8b5c2420
_jmp_addr_0x0040a9df:    {disp8} mov          eax, dword ptr [esp + 0x14]                     // 0x0040a9df    8b442414
                         {disp32} mov         ecx, dword ptr [esi + 0x0000025c]               // 0x0040a9e3    8b8e5c020000
                         mov                  edx, dword ptr [ecx + eax * 0x4]                // 0x0040a9e9    8b1481
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040a9ec    8b8e50020000
                         add.s                edi, edx                                        // 0x0040a9f2    03fa
                         {disp8} mov          edx, dword ptr [esp + 0x1c]                     // 0x0040a9f4    8b54241c
                         inc                  eax                                             // 0x0040a9f8    40
                         add                  edx, 0x00000200                                 // 0x0040a9f9    81c200020000
                         cmp.s                eax, ecx                                        // 0x0040a9ff    3bc1
                         {disp8} mov          dword ptr [esp + 0x14], eax                     // 0x0040aa01    89442414
                         {disp8} mov          dword ptr [esp + 0x1c], edx                     // 0x0040aa05    8954241c
                         {disp32} jl          _jmp_addr_0x0040a671                            // 0x0040aa09    0f8c62fcffff
_jmp_addr_0x0040aa0f:    {disp32} mov         al, byte ptr [esi + 0x00000274]                 // 0x0040aa0f    8a8674020000
                         test                 al, al                                          // 0x0040aa15    84c0
                         {disp32} je          _jmp_addr_0x0040aade                            // 0x0040aa17    0f84c1000000
                         {disp8} mov          edi, dword ptr [esi + 0x14]                     // 0x0040aa1d    8b7e14
                         {disp32} fild        dword ptr [esi + 0x00000270]                    // 0x0040aa20    db8670020000
                         {disp8} mov          ebp, dword ptr [esi + 0x0c]                     // 0x0040aa26    8b6e0c
                         mov.s                edx, edi                                        // 0x0040aa29    8bd7
                         add                  ebx, 0x02                                       // 0x0040aa2b    83c302
                         sub.s                edx, ebp                                        // 0x0040aa2e    2bd5
                         sub                  edx, 0x06                                       // 0x0040aa30    83ea06
                         {disp8} mov          dword ptr [esp + 0x20], ebx                     // 0x0040aa33    895c2420
                         {disp32} mov         ebx, dword ptr [esi + 0x0000027c]               // 0x0040aa37    8b9e7c020000
                         {disp8} mov          dword ptr [esp + 0x44], edx                     // 0x0040aa3d    89542444
                         {disp8} fild         dword ptr [esp + 0x44]                          // 0x0040aa41    db442444
                         {disp8} mov          dword ptr [esp + 0x48], ebx                     // 0x0040aa45    895c2448
                         {disp8} fild         dword ptr [esp + 0x48]                          // 0x0040aa49    db442448
                         fdiv                 st, st(2)                                       // 0x0040aa4d    d8f2
                         fmul                 st, st(1)                                       // 0x0040aa4f    d8c9
                         call                 _jmp_addr_0x007a1400                            // 0x0040aa51    e8aa693900
                         {disp8} mov          dword ptr [esp + 0x48], eax                     // 0x0040aa56    89442448
                         mov.s                eax, edi                                        // 0x0040aa5a    8bc7
                         sub.s                eax, ebp                                        // 0x0040aa5c    2bc5
                         {disp8} lea          ecx, dword ptr [eax + ebx * 0x1 + -0x08]        // 0x0040aa5e    8d4c18f8
                         {disp8} mov          dword ptr [esp + 0x44], ecx                     // 0x0040aa62    894c2444
                         {disp8} fild         dword ptr [esp + 0x44]                          // 0x0040aa66    db442444
                         fdiv                 st, st(2)                                       // 0x0040aa6a    d8f2
                         fmul                 st, st(1)                                       // 0x0040aa6c    d8c9
                         call                 _jmp_addr_0x007a1400                            // 0x0040aa6e    e88d693900
                         fstp                 st(0)                                           // 0x0040aa73    ddd8
                         {disp32} mov         cl, byte ptr [esi + 0x00000290]                 // 0x0040aa75    8a8e90020000
                         fstp                 st(0)                                           // 0x0040aa7b    ddd8
                         xor.s                edx, edx                                        // 0x0040aa7d    33d2
                         push                 -0x1                                            // 0x0040aa7f    6aff
                         test                 cl, cl                                          // 0x0040aa81    84c9
                         sete                 dl                                              // 0x0040aa83    0f94c2
                         push                 -0x1                                            // 0x0040aa86    6aff
                         push                 0x10                                            // 0x0040aa88    6a10
                         mov.s                ebx, eax                                        // 0x0040aa8a    8bd8
                         {disp32} mov         eax, dword ptr [esi + 0x00000240]               // 0x0040aa8c    8b8640020000
                         push                 edx                                             // 0x0040aa92    52
                         push                 edi                                             // 0x0040aa93    57
                         {disp8} mov          edi, dword ptr [esp + 0x34]                     // 0x0040aa94    8b7c2434
                         add.s                eax, edi                                        // 0x0040aa98    03c7
                         push                 eax                                             // 0x0040aa9a    50
                         push                 ebp                                             // 0x0040aa9b    55
                         push                 edi                                             // 0x0040aa9c    57
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z           // 0x0040aa9d    e87e910000
                         {disp32} mov         dl, byte ptr [esi + 0x00000290]                 // 0x0040aaa2    8a9690020000
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040aaa8    8b460c
                         xor.s                ecx, ecx                                        // 0x0040aaab    33c9
                         test                 dl, dl                                          // 0x0040aaad    84d2
                         push                 -0x1                                            // 0x0040aaaf    6aff
                         setne                cl                                              // 0x0040aab1    0f95c1
                         push                 -0x1                                            // 0x0040aab4    6aff
                         push                 0x10                                            // 0x0040aab6    6a10
                         {disp8} lea          edx, dword ptr [eax + ebx * 0x1 + 0x03]         // 0x0040aab8    8d541803
                         push                 ecx                                             // 0x0040aabc    51
                         {disp32} mov         ecx, dword ptr [esi + 0x00000240]               // 0x0040aabd    8b8e40020000
                         push                 edx                                             // 0x0040aac3    52
                         {disp8} lea          edx, dword ptr [ecx + edi * 0x1 + -0x03]        // 0x0040aac4    8d5439fd
                         {disp8} mov          ecx, dword ptr [esp + 0x7c]                     // 0x0040aac8    8b4c247c
                         push                 edx                                             // 0x0040aacc    52
                         {disp8} lea          edx, dword ptr [eax + ecx * 0x1 + 0x03]         // 0x0040aacd    8d540803
                         push                 edx                                             // 0x0040aad1    52
                         add                  edi, 0x03                                       // 0x0040aad2    83c703
                         push                 edi                                             // 0x0040aad5    57
                         call                 ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z           // 0x0040aad6    e845910000
                         add                  esp, 0x40                                       // 0x0040aadb    83c440
_jmp_addr_0x0040aade:    pop                  edi                                             // 0x0040aade    5f
                         pop                  esi                                             // 0x0040aadf    5e
                         pop                  ebp                                             // 0x0040aae0    5d
                         pop                  ebx                                             // 0x0040aae1    5b
                         add                  esp, 0x30                                       // 0x0040aae2    83c430
                         ret                  0x0008                                          // 0x0040aae5    c20800
                         nop                                                                  // 0x0040aae8    90
                         nop                                                                  // 0x0040aae9    90
                         nop                                                                  // 0x0040aaea    90
                         nop                                                                  // 0x0040aaeb    90
                         nop                                                                  // 0x0040aaec    90
                         nop                                                                  // 0x0040aaed    90
                         nop                                                                  // 0x0040aaee    90
                         nop                                                                  // 0x0040aaef    90
?UpdateHeights@SetupList@@QAEXXZ:
                                   sub                  esp, 0x0c                                       // 0x0040aaf0    83ec0c
                         push                 ebx                                             // 0x0040aaf3    53
                         push                 ebp                                             // 0x0040aaf4    55
                         push                 esi                                             // 0x0040aaf5    56
                         mov.s                esi, ecx                                        // 0x0040aaf6    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040aaf8    8b8650020000
                         push                 edi                                             // 0x0040aafe    57
                         xor.s                edi, edi                                        // 0x0040aaff    33ff
                         cmp.s                eax, edi                                        // 0x0040ab01    3bc7
                         {disp32} mov         byte ptr [esi + 0x00000274], 0x00               // 0x0040ab03    c6867402000000
                         {disp32} mov         dword ptr [esi + 0x00000278], edi               // 0x0040ab0a    89be78020000
                         {disp32} mov         dword ptr [esi + 0x00000270], edi               // 0x0040ab10    89be70020000
                         {disp32} jle         _jmp_addr_0x0040abf6                            // 0x0040ab16    0f8eda000000
                         xor.s                ebp, ebp                                        // 0x0040ab1c    33ed
_jmp_addr_0x0040ab1e:    {disp8} mov          eax, dword ptr [esi + 0x20]                     // 0x0040ab1e    8b4620
                         test                 eax, eax                                        // 0x0040ab21    85c0
                         {disp8} je           _jmp_addr_0x0040ab2b                            // 0x0040ab23    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                     // 0x0040ab25    89442410
                         {disp8} jmp          _jmp_addr_0x0040ab49                            // 0x0040ab29    eb1e
_jmp_addr_0x0040ab2b:    {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040ab2b    8b8634020000
                         test                 eax, eax                                        // 0x0040ab31    85c0
                         {disp8} je           _jmp_addr_0x0040ab41                            // 0x0040ab33    740c
                         {disp32} mov         eax, dword ptr [eax + 0x000000ac]               // 0x0040ab35    8b80ac000000
                         {disp8} mov          dword ptr [esp + 0x10], eax                     // 0x0040ab3b    89442410
                         {disp8} jmp          _jmp_addr_0x0040ab49                            // 0x0040ab3f    eb08
_jmp_addr_0x0040ab41:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a              // 0x0040ab41    c74424100a000000
_jmp_addr_0x0040ab49:    {disp8} fild         dword ptr [esi + 0x0c]                          // 0x0040ab49    db460c
                         push                 0x1                                             // 0x0040ab4c    6a01
                         push                 0x0                                             // 0x0040ab4e    6a00
                         {disp8} mov          edx, dword ptr [esi + 0x08]                     // 0x0040ab50    8b5608
                         {disp8} fstp         dword ptr [esp + 0x1c]                          // 0x0040ab53    d95c241c
                         push                 0x0                                             // 0x0040ab57    6a00
                         {disp8} fild         dword ptr [esi + 0x14]                          // 0x0040ab59    db4614
                         {disp8} mov          eax, dword ptr [esp + 0x20]                     // 0x0040ab5c    8b442420
                         push                 0x00c4cce0                                      // 0x0040ab60    68e0ccc400
                         push                 ecx                                             // 0x0040ab65    51
                         {disp8} fstp         dword ptr [esp + 0x2c]                          // 0x0040ab66    d95c242c
                         add                  edx, 0x04                                       // 0x0040ab6a    83c204
                         {disp8} fild         dword ptr [esp + 0x24]                          // 0x0040ab6d    db442424
                         {disp8} mov          ecx, dword ptr [esp + 0x2c]                     // 0x0040ab71    8b4c242c
                         fstp                 dword ptr [esp]                                 // 0x0040ab75    d91c24
                         push                 0x40a00000                                      // 0x0040ab78    680000a040
                         push                 eax                                             // 0x0040ab7d    50
                         push                 ecx                                             // 0x0040ab7e    51
                         push                 ecx                                             // 0x0040ab7f    51
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                     // 0x0040ab80    8b4e10
                         sub                  ecx, 0x04                                       // 0x0040ab83    83e904
                         {disp8} mov          dword ptr [esp + 0x3c], ecx                     // 0x0040ab86    894c243c
                         {disp8} fild         dword ptr [esp + 0x3c]                          // 0x0040ab8a    db44243c
                         push                 ecx                                             // 0x0040ab8e    51
                         {disp8} mov          dword ptr [esp + 0x40], edx                     // 0x0040ab8f    89542440
                         {disp32} mov         edx, dword ptr [esi + 0x00000258]               // 0x0040ab93    8b9658020000
                         fstp                 dword ptr [esp]                                 // 0x0040ab99    d91c24
                         push                 eax                                             // 0x0040ab9c    50
                         {disp8} fild         dword ptr [esp + 0x44]                          // 0x0040ab9d    db442444
                         push                 eax                                             // 0x0040aba1    50
                         push                 ecx                                             // 0x0040aba2    51
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]          // 0x0040aba3    8b0d2ccdc400
                         mov.s                eax, ebp                                        // 0x0040aba9    8bc5
                         fstp                 dword ptr [esp]                                 // 0x0040abab    d91c24
                         add.s                eax, edx                                        // 0x0040abae    03c2
                         push                 eax                                             // 0x0040abb0    50
                         call                 @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                            // 0x0040abb1    e8fa694200
                         {disp32} fadd        dword ptr [rdata_bytes + 0x235c]                // 0x0040abb6    d8055cb38a00
                         call                 _jmp_addr_0x007a1400                            // 0x0040abbc    e83f683900
                         {disp32} mov         ecx, dword ptr [esi + 0x0000025c]               // 0x0040abc1    8b8e5c020000
                         mov                  dword ptr [ecx + edi * 0x4], eax                // 0x0040abc7    8904b9
                         {disp32} mov         edx, dword ptr [esi + 0x0000025c]               // 0x0040abca    8b965c020000
                         mov                  eax, dword ptr [edx + edi * 0x4]                // 0x0040abd0    8b04ba
                         {disp32} mov         ebx, dword ptr [esi + 0x00000270]               // 0x0040abd3    8b9e70020000
                         add.s                ebx, eax                                        // 0x0040abd9    03d8
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040abdb    8b8650020000
                         inc                  edi                                             // 0x0040abe1    47
                         add                  ebp, 0x00000200                                 // 0x0040abe2    81c500020000
                         cmp.s                edi, eax                                        // 0x0040abe8    3bf8
                         {disp32} mov         dword ptr [esi + 0x00000270], ebx               // 0x0040abea    899e70020000
                         {disp32} jl          _jmp_addr_0x0040ab1e                            // 0x0040abf0    0f8c28ffffff
_jmp_addr_0x0040abf6:    {disp8} mov          ecx, dword ptr [esi + 0x14]                     // 0x0040abf6    8b4e14
                         {disp8} mov          edi, dword ptr [esi + 0x0c]                     // 0x0040abf9    8b7e0c
                         {disp32} mov         eax, dword ptr [esi + 0x00000270]               // 0x0040abfc    8b8670020000
                         sub.s                ecx, edi                                        // 0x0040ac02    2bcf
                         sub                  ecx, 0x08                                       // 0x0040ac04    83e908
                         cmp.s                eax, ecx                                        // 0x0040ac07    3bc1
                         {disp32} jle         _jmp_addr_0x0040ad26                            // 0x0040ac09    0f8e17010000
                         {disp32} mov         edi, dword ptr [esi + 0x00000240]               // 0x0040ac0f    8bbe40020000
                         {disp8} mov          eax, dword ptr [esi + 0x10]                     // 0x0040ac15    8b4610
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040ac18    8b8e50020000
                         sub.s                eax, edi                                        // 0x0040ac1e    2bc7
                         xor.s                ebp, ebp                                        // 0x0040ac20    33ed
                         sub                  eax, 0x02                                       // 0x0040ac22    83e802
                         xor.s                edi, edi                                        // 0x0040ac25    33ff
                         cmp.s                ecx, ebp                                        // 0x0040ac27    3bcd
                         {disp32} mov         byte ptr [esi + 0x00000274], 0x01               // 0x0040ac29    c6867402000001
                         {disp32} mov         dword ptr [esi + 0x00000270], ebp               // 0x0040ac30    89ae70020000
                         {disp32} jle         _jmp_addr_0x0040ad0e                            // 0x0040ac36    0f8ed2000000
                         add                  eax, -0x04                                      // 0x0040ac3c    83c0fc
                         {disp8} mov          dword ptr [esp + 0x18], eax                     // 0x0040ac3f    89442418
                         {disp8} fild         dword ptr [esp + 0x18]                          // 0x0040ac43    db442418
                         {disp8} fstp         dword ptr [esp + 0x18]                          // 0x0040ac47    d95c2418
                         {disp8} mov          ebx, dword ptr [esp + 0x18]                     // 0x0040ac4b    8b5c2418
_jmp_addr_0x0040ac4f:    {disp8} mov          eax, dword ptr [esi + 0x20]                     // 0x0040ac4f    8b4620
                         test                 eax, eax                                        // 0x0040ac52    85c0
                         {disp8} je           _jmp_addr_0x0040ac5c                            // 0x0040ac54    7406
                         {disp8} mov          dword ptr [esp + 0x10], eax                     // 0x0040ac56    89442410
                         {disp8} jmp          _jmp_addr_0x0040ac7a                            // 0x0040ac5a    eb1e
_jmp_addr_0x0040ac5c:    {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040ac5c    8b8634020000
                         test                 eax, eax                                        // 0x0040ac62    85c0
                         {disp8} je           _jmp_addr_0x0040ac72                            // 0x0040ac64    740c
                         {disp32} mov         edx, dword ptr [eax + 0x000000ac]               // 0x0040ac66    8b90ac000000
                         {disp8} mov          dword ptr [esp + 0x10], edx                     // 0x0040ac6c    89542410
                         {disp8} jmp          _jmp_addr_0x0040ac7a                            // 0x0040ac70    eb08
_jmp_addr_0x0040ac72:    {disp8} mov          dword ptr [esp + 0x10], 0x0000000a              // 0x0040ac72    c74424100a000000
_jmp_addr_0x0040ac7a:    {disp8} fild         dword ptr [esi + 0x0c]                          // 0x0040ac7a    db460c
                         push                 0x1                                             // 0x0040ac7d    6a01
                         push                 0x0                                             // 0x0040ac7f    6a00
                         push                 0x0                                             // 0x0040ac81    6a00
                         {disp8} fstp         dword ptr [esp + 0x20]                          // 0x0040ac83    d95c2420
                         push                 0x00c4cce0                                      // 0x0040ac87    68e0ccc400
                         {disp8} fild         dword ptr [esi + 0x14]                          // 0x0040ac8c    db4614
                         {disp8} mov          eax, dword ptr [esp + 0x24]                     // 0x0040ac8f    8b442424
                         push                 ecx                                             // 0x0040ac93    51
                         {disp8} fstp         dword ptr [esp + 0x2c]                          // 0x0040ac94    d95c242c
                         {disp8} fild         dword ptr [esp + 0x24]                          // 0x0040ac98    db442424
                         {disp8} mov          ecx, dword ptr [esp + 0x2c]                     // 0x0040ac9c    8b4c242c
                         fstp                 dword ptr [esp]                                 // 0x0040aca0    d91c24
                         push                 0x40a00000                                      // 0x0040aca3    680000a040
                         push                 eax                                             // 0x0040aca8    50
                         push                 ecx                                             // 0x0040aca9    51
                         push                 ecx                                             // 0x0040acaa    51
                         push                 ebx                                             // 0x0040acab    53
                         push                 eax                                             // 0x0040acac    50
                         push                 eax                                             // 0x0040acad    50
                         {disp8} mov          eax, dword ptr [esi + 0x08]                     // 0x0040acae    8b4608
                         add                  eax, 0x04                                       // 0x0040acb1    83c004
                         push                 ecx                                             // 0x0040acb4    51
                         {disp8} mov          dword ptr [esp + 0x4c], eax                     // 0x0040acb5    8944244c
                         {disp8} fild         dword ptr [esp + 0x4c]                          // 0x0040acb9    db44244c
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]               // 0x0040acbd    8b8658020000
                         mov.s                ecx, ebp                                        // 0x0040acc3    8bcd
                         add.s                ecx, eax                                        // 0x0040acc5    03c8
                         fstp                 dword ptr [esp]                                 // 0x0040acc7    d91c24
                         push                 ecx                                             // 0x0040acca    51
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x286d2c]          // 0x0040accb    8b0d2ccdc400
                         call                 @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                            // 0x0040acd1    e8da684200
                         {disp32} fadd        dword ptr [rdata_bytes + 0x235c]                // 0x0040acd6    d8055cb38a00
                         call                 _jmp_addr_0x007a1400                            // 0x0040acdc    e81f673900
                         {disp32} mov         edx, dword ptr [esi + 0x0000025c]               // 0x0040ace1    8b965c020000
                         mov                  dword ptr [edx + edi * 0x4], eax                // 0x0040ace7    8904ba
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040acea    8b865c020000
                         mov                  ecx, dword ptr [eax + edi * 0x4]                // 0x0040acf0    8b0cb8
                         add                  dword ptr [esi + 0x00000270], ecx               // 0x0040acf3    018e70020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040acf9    8b8650020000
                         inc                  edi                                             // 0x0040acff    47
                         add                  ebp, 0x00000200                                 // 0x0040ad00    81c500020000
                         cmp.s                edi, eax                                        // 0x0040ad06    3bf8
                         {disp32} jl          _jmp_addr_0x0040ac4f                            // 0x0040ad08    0f8c41ffffff
_jmp_addr_0x0040ad0e:    {disp8} mov          eax, dword ptr [esi + 0x14]                     // 0x0040ad0e    8b4614
                         {disp32} mov         edx, dword ptr [esi + 0x00000270]               // 0x0040ad11    8b9670020000
                         sub.s                edx, eax                                        // 0x0040ad17    2bd0
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                     // 0x0040ad19    8b460c
                         {disp8} lea          ecx, dword ptr [edx + eax * 0x1 + 0x08]         // 0x0040ad1c    8d4c0208
                         {disp32} mov         dword ptr [esi + 0x00000278], ecx               // 0x0040ad20    898e78020000
_jmp_addr_0x0040ad26:    {disp32} mov         eax, dword ptr [esi + 0x0000027c]               // 0x0040ad26    8b867c020000
                         test                 eax, eax                                        // 0x0040ad2c    85c0
                         {disp8} jle          _jmp_addr_0x0040ad48                            // 0x0040ad2e    7e18
                         {disp32} mov         ecx, dword ptr [esi + 0x00000278]               // 0x0040ad30    8b8e78020000
                         cmp.s                eax, ecx                                        // 0x0040ad36    3bc1
                         {disp8} jl           _jmp_addr_0x0040ad4a                            // 0x0040ad38    7c10
                         pop                  edi                                             // 0x0040ad3a    5f
                         {disp32} mov         dword ptr [esi + 0x0000027c], ecx               // 0x0040ad3b    898e7c020000
                         pop                  esi                                             // 0x0040ad41    5e
                         pop                  ebp                                             // 0x0040ad42    5d
                         pop                  ebx                                             // 0x0040ad43    5b
                         add                  esp, 0x0c                                       // 0x0040ad44    83c40c
                         ret                                                                  // 0x0040ad47    c3
_jmp_addr_0x0040ad48:    xor.s                eax, eax                                        // 0x0040ad48    33c0
_jmp_addr_0x0040ad4a:    pop                  edi                                             // 0x0040ad4a    5f
                         {disp32} mov         dword ptr [esi + 0x0000027c], eax               // 0x0040ad4b    89867c020000
                         pop                  esi                                             // 0x0040ad51    5e
                         pop                  ebp                                             // 0x0040ad52    5d
                         pop                  ebx                                             // 0x0040ad53    5b
                         add                  esp, 0x0c                                       // 0x0040ad54    83c40c
                         ret                                                                  // 0x0040ad57    c3
                         nop                                                                  // 0x0040ad58    90
                         nop                                                                  // 0x0040ad59    90
                         nop                                                                  // 0x0040ad5a    90
                         nop                                                                  // 0x0040ad5b    90
                         nop                                                                  // 0x0040ad5c    90
                         nop                                                                  // 0x0040ad5d    90
                         nop                                                                  // 0x0040ad5e    90
                         nop                                                                  // 0x0040ad5f    90
@DeleteString__9SetupListFi@12:    push                 ebp                                             // 0x0040ad60    55
                         {disp8} mov          ebp, dword ptr [esp + 0x08]                     // 0x0040ad61    8b6c2408
                         test                 ebp, ebp                                        // 0x0040ad65    85ed
                         push                 esi                                             // 0x0040ad67    56
                         mov.s                esi, ecx                                        // 0x0040ad68    8bf1
                         {disp32} jl          _jmp_addr_0x0040ae69                            // 0x0040ad6a    0f8cf9000000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040ad70    8b8e50020000
                         cmp.s                ebp, ecx                                        // 0x0040ad76    3be9
                         {disp32} jge         _jmp_addr_0x0040ae69                            // 0x0040ad78    0f8deb000000
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]               // 0x0040ad7e    8b8658020000
                         push                 ebx                                             // 0x0040ad84    53
                         {disp8} lea          ebx, dword ptr [ebp + 0x01]                     // 0x0040ad85    8d5d01
                         mov.s                edx, ebx                                        // 0x0040ad88    8bd3
                         shl                  edx, 0x17                                       // 0x0040ad8a    c1e217
                         sub.s                edx, ebx                                        // 0x0040ad8d    2bd3
                         add.s                edx, ecx                                        // 0x0040ad8f    03d1
                         shl                  edx, 9                                          // 0x0040ad91    c1e209
                         push                 edi                                             // 0x0040ad94    57
                         push                 edx                                             // 0x0040ad95    52
                         mov.s                ecx, ebx                                        // 0x0040ad96    8bcb
                         shl                  ecx, 9                                          // 0x0040ad98    c1e109
                         mov.s                edx, ebp                                        // 0x0040ad9b    8bd5
                         add.s                ecx, eax                                        // 0x0040ad9d    03c8
                         shl                  edx, 9                                          // 0x0040ad9f    c1e209
                         push                 ecx                                             // 0x0040ada2    51
                         add.s                edx, eax                                        // 0x0040ada3    03d0
                         push                 edx                                             // 0x0040ada5    52
                         call                 _memmove                                        // 0x0040ada6    e845b33b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040adab    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040adb1    8b865c020000
                         mov.s                edi, ebx                                        // 0x0040adb7    8bfb
                         shl                  edi, 0x1e                                       // 0x0040adb9    c1e71e
                         sub.s                edi, ebx                                        // 0x0040adbc    2bfb
                         mov.s                ecx, edi                                        // 0x0040adbe    8bcf
                         add.s                ecx, edx                                        // 0x0040adc0    03ca
                         shl                  ecx, 2                                          // 0x0040adc2    c1e102
                         push                 ecx                                             // 0x0040adc5    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040adc6    8d1498
                         push                 edx                                             // 0x0040adc9    52
                         lea                  eax, dword ptr [eax + ebp * 0x4]                // 0x0040adca    8d04a8
                         push                 eax                                             // 0x0040adcd    50
                         call                 _memmove                                        // 0x0040adce    e81db33b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040add3    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000264]               // 0x0040add9    8b8664020000
                         mov.s                ecx, edi                                        // 0x0040addf    8bcf
                         add.s                ecx, edx                                        // 0x0040ade1    03ca
                         shl                  ecx, 2                                          // 0x0040ade3    c1e102
                         push                 ecx                                             // 0x0040ade6    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040ade7    8d1498
                         push                 edx                                             // 0x0040adea    52
                         lea                  eax, dword ptr [eax + ebp * 0x4]                // 0x0040adeb    8d04a8
                         push                 eax                                             // 0x0040adee    50
                         call                 _memmove                                        // 0x0040adef    e8fcb23b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040adf4    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x0000026c]               // 0x0040adfa    8b866c020000
                         mov.s                ecx, edi                                        // 0x0040ae00    8bcf
                         add.s                ecx, edx                                        // 0x0040ae02    03ca
                         shl                  ecx, 2                                          // 0x0040ae04    c1e102
                         push                 ecx                                             // 0x0040ae07    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040ae08    8d1498
                         push                 edx                                             // 0x0040ae0b    52
                         lea                  eax, dword ptr [eax + ebp * 0x4]                // 0x0040ae0c    8d04a8
                         push                 eax                                             // 0x0040ae0f    50
                         call                 _memmove                                        // 0x0040ae10    e8dbb23b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040ae15    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000268]               // 0x0040ae1b    8b8668020000
                         mov.s                ecx, edi                                        // 0x0040ae21    8bcf
                         add.s                ecx, edx                                        // 0x0040ae23    03ca
                         shl                  ecx, 2                                          // 0x0040ae25    c1e102
                         push                 ecx                                             // 0x0040ae28    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040ae29    8d1498
                         push                 edx                                             // 0x0040ae2c    52
                         lea                  eax, dword ptr [eax + ebp * 0x4]                // 0x0040ae2d    8d04a8
                         push                 eax                                             // 0x0040ae30    50
                         call                 _memmove                                        // 0x0040ae31    e8bab23b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040ae36    8b8e50020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000260]               // 0x0040ae3c    8b8660020000
                         add.s                edi, ecx                                        // 0x0040ae42    03f9
                         shl                  edi, 2                                          // 0x0040ae44    c1e702
                         push                 edi                                             // 0x0040ae47    57
                         lea                  ecx, dword ptr [eax + ebx * 0x4]                // 0x0040ae48    8d0c98
                         push                 ecx                                             // 0x0040ae4b    51
                         lea                  edx, dword ptr [eax + ebp * 0x4]                // 0x0040ae4c    8d14a8
                         push                 edx                                             // 0x0040ae4f    52
                         call                 _memmove                                        // 0x0040ae50    e89bb23b00
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040ae55    8b8650020000
                         add                  esp, 0x48                                       // 0x0040ae5b    83c448
                         dec                  eax                                             // 0x0040ae5e    48
                         push                 eax                                             // 0x0040ae5f    50
                         mov.s                ecx, esi                                        // 0x0040ae60    8bce
                         call                 @SetNum__9SetupListFi@12                        // 0x0040ae62    e8e9010000
                         pop                  edi                                             // 0x0040ae67    5f
                         pop                  ebx                                             // 0x0040ae68    5b
_jmp_addr_0x0040ae69:    pop                  esi                                             // 0x0040ae69    5e
                         pop                  ebp                                             // 0x0040ae6a    5d
                         ret                  0x0004                                          // 0x0040ae6b    c20400
                         nop                                                                  // 0x0040ae6e    90
                         nop                                                                  // 0x0040ae6f    90
@InsertString__9SetupListFiPw@16:    push                 ebp                                             // 0x0040ae70    55
                         {disp8} mov          ebp, dword ptr [esp + 0x08]                     // 0x0040ae71    8b6c2408
                         test                 ebp, ebp                                        // 0x0040ae75    85ed
                         push                 esi                                             // 0x0040ae77    56
                         mov.s                esi, ecx                                        // 0x0040ae78    8bf1
                         {disp32} jl          _jmp_addr_0x0040afcd                            // 0x0040ae7a    0f8c4d010000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040ae80    8b8650020000
                         cmp.s                ebp, eax                                        // 0x0040ae86    3be8
                         {disp32} jg          _jmp_addr_0x0040afcd                            // 0x0040ae88    0f8f3f010000
                         push                 ebx                                             // 0x0040ae8e    53
                         push                 edi                                             // 0x0040ae8f    57
                         inc                  eax                                             // 0x0040ae90    40
                         push                 eax                                             // 0x0040ae91    50
                         call                 @SetNum__9SetupListFi@12                        // 0x0040ae92    e8b9010000
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040ae97    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000258]               // 0x0040ae9d    8b8658020000
                         {disp8} lea          ebx, dword ptr [ebp + 0x01]                     // 0x0040aea3    8d5d01
                         mov.s                ecx, ebx                                        // 0x0040aea6    8bcb
                         shl                  ecx, 0x17                                       // 0x0040aea8    c1e117
                         sub.s                ecx, ebx                                        // 0x0040aeab    2bcb
                         add.s                ecx, edx                                        // 0x0040aead    03ca
                         shl                  ecx, 9                                          // 0x0040aeaf    c1e109
                         push                 ecx                                             // 0x0040aeb2    51
                         mov.s                edx, ebp                                        // 0x0040aeb3    8bd5
                         shl                  edx, 9                                          // 0x0040aeb5    c1e209
                         mov.s                ecx, ebx                                        // 0x0040aeb8    8bcb
                         add.s                edx, eax                                        // 0x0040aeba    03d0
                         shl                  ecx, 9                                          // 0x0040aebc    c1e109
                         push                 edx                                             // 0x0040aebf    52
                         add.s                ecx, eax                                        // 0x0040aec0    03c8
                         push                 ecx                                             // 0x0040aec2    51
                         call                 _memmove                                        // 0x0040aec3    e828b23b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040aec8    8b8e50020000
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040aece    8b865c020000
                         mov.s                edi, ebx                                        // 0x0040aed4    8bfb
                         shl                  edi, 0x1e                                       // 0x0040aed6    c1e71e
                         sub.s                edi, ebx                                        // 0x0040aed9    2bfb
                         mov.s                edx, edi                                        // 0x0040aedb    8bd7
                         add.s                edx, ecx                                        // 0x0040aedd    03d1
                         shl                  edx, 2                                          // 0x0040aedf    c1e202
                         push                 edx                                             // 0x0040aee2    52
                         lea                  ecx, dword ptr [eax + ebp * 0x4]                // 0x0040aee3    8d0ca8
                         push                 ecx                                             // 0x0040aee6    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040aee7    8d1498
                         push                 edx                                             // 0x0040aeea    52
                         call                 _memmove                                        // 0x0040aeeb    e800b23b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040aef0    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000264]               // 0x0040aef6    8b8664020000
                         mov.s                ecx, edi                                        // 0x0040aefc    8bcf
                         add.s                ecx, edx                                        // 0x0040aefe    03ca
                         shl                  ecx, 2                                          // 0x0040af00    c1e102
                         push                 ecx                                             // 0x0040af03    51
                         lea                  edx, dword ptr [eax + ebp * 0x4]                // 0x0040af04    8d14a8
                         push                 edx                                             // 0x0040af07    52
                         lea                  eax, dword ptr [eax + ebx * 0x4]                // 0x0040af08    8d0498
                         push                 eax                                             // 0x0040af0b    50
                         call                 _memmove                                        // 0x0040af0c    e8dfb13b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040af11    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x0000026c]               // 0x0040af17    8b866c020000
                         mov.s                ecx, edi                                        // 0x0040af1d    8bcf
                         add.s                ecx, edx                                        // 0x0040af1f    03ca
                         shl                  ecx, 2                                          // 0x0040af21    c1e102
                         push                 ecx                                             // 0x0040af24    51
                         lea                  edx, dword ptr [eax + ebp * 0x4]                // 0x0040af25    8d14a8
                         push                 edx                                             // 0x0040af28    52
                         lea                  eax, dword ptr [eax + ebx * 0x4]                // 0x0040af29    8d0498
                         push                 eax                                             // 0x0040af2c    50
                         call                 _memmove                                        // 0x0040af2d    e8beb13b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000250]               // 0x0040af32    8b9650020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000268]               // 0x0040af38    8b8668020000
                         mov.s                ecx, edi                                        // 0x0040af3e    8bcf
                         add.s                ecx, edx                                        // 0x0040af40    03ca
                         shl                  ecx, 2                                          // 0x0040af42    c1e102
                         push                 ecx                                             // 0x0040af45    51
                         lea                  edx, dword ptr [eax + ebp * 0x4]                // 0x0040af46    8d14a8
                         push                 edx                                             // 0x0040af49    52
                         lea                  eax, dword ptr [eax + ebx * 0x4]                // 0x0040af4a    8d0498
                         push                 eax                                             // 0x0040af4d    50
                         call                 _memmove                                        // 0x0040af4e    e89db13b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040af53    8b8e50020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000260]               // 0x0040af59    8b8660020000
                         add.s                edi, ecx                                        // 0x0040af5f    03f9
                         shl                  edi, 2                                          // 0x0040af61    c1e702
                         push                 edi                                             // 0x0040af64    57
                         lea                  ecx, dword ptr [eax + ebp * 0x4]                // 0x0040af65    8d0ca8
                         push                 ecx                                             // 0x0040af68    51
                         lea                  edx, dword ptr [eax + ebx * 0x4]                // 0x0040af69    8d1498
                         push                 edx                                             // 0x0040af6c    52
                         call                 _memmove                                        // 0x0040af6d    e87eb13b00
                         add                  esp, 0x48                                       // 0x0040af72    83c448
                         {disp8} mov          eax, dword ptr [esp + 0x18]                     // 0x0040af75    8b442418
                         push                 eax                                             // 0x0040af79    50
                         push                 ebp                                             // 0x0040af7a    55
                         mov.s                ecx, esi                                        // 0x0040af7b    8bce
                         call                 _jmp_addr_0x0040b000                            // 0x0040af7d    e87e000000
                         cmp                  ebp, dword ptr [esi + 0x00000250]               // 0x0040af82    3bae50020000
                         pop                  edi                                             // 0x0040af88    5f
                         pop                  ebx                                             // 0x0040af89    5b
                         {disp8} jge          _jmp_addr_0x0040af99                            // 0x0040af8a    7d0d
                         {disp32} mov         ecx, dword ptr [esi + 0x00000264]               // 0x0040af8c    8b8e64020000
                         mov                  dword ptr [ecx + ebp * 0x4], 0x00000000         // 0x0040af92    c704a900000000
_jmp_addr_0x0040af99:    cmp                  ebp, dword ptr [esi + 0x00000250]               // 0x0040af99    3bae50020000
                         {disp8} jge          _jmp_addr_0x0040afc3                            // 0x0040af9f    7d22
                         {disp32} mov         edx, dword ptr [esi + 0x0000026c]               // 0x0040afa1    8b966c020000
                         mov                  dword ptr [edx + ebp * 0x4], 0x00000000         // 0x0040afa7    c704aa00000000
                         cmp                  ebp, dword ptr [esi + 0x00000250]               // 0x0040afae    3bae50020000
                         {disp8} jge          _jmp_addr_0x0040afc3                            // 0x0040afb4    7d0d
                         {disp32} mov         eax, dword ptr [esi + 0x00000268]               // 0x0040afb6    8b8668020000
                         mov                  dword ptr [eax + ebp * 0x4], 0x00000000         // 0x0040afbc    c704a800000000
_jmp_addr_0x0040afc3:    push                 0x0                                             // 0x0040afc3    6a00
                         push                 ebp                                             // 0x0040afc5    55
                         mov.s                ecx, esi                                        // 0x0040afc6    8bce
                         call                 _jmp_addr_0x0040afe0                            // 0x0040afc8    e813000000
_jmp_addr_0x0040afcd:    pop                  esi                                             // 0x0040afcd    5e
                         pop                  ebp                                             // 0x0040afce    5d
                         ret                  0x0008                                          // 0x0040afcf    c20800
                         nop                                                                  // 0x0040afd2    90
                         nop                                                                  // 0x0040afd3    90
                         nop                                                                  // 0x0040afd4    90
                         nop                                                                  // 0x0040afd5    90
                         nop                                                                  // 0x0040afd6    90
                         nop                                                                  // 0x0040afd7    90
                         nop                                                                  // 0x0040afd8    90
                         nop                                                                  // 0x0040afd9    90
                         nop                                                                  // 0x0040afda    90
                         nop                                                                  // 0x0040afdb    90
                         nop                                                                  // 0x0040afdc    90
                         nop                                                                  // 0x0040afdd    90
                         nop                                                                  // 0x0040afde    90
                         nop                                                                  // 0x0040afdf    90
_jmp_addr_0x0040afe0:    {disp8} mov          eax, dword ptr [esp + 0x04]                     // 0x0040afe0    8b442404
                         test                 eax, eax                                        // 0x0040afe4    85c0
                         {disp8} jl           _jmp_addr_0x0040affd                            // 0x0040afe6    7c15
                         cmp                  eax, dword ptr [ecx + 0x00000250]               // 0x0040afe8    3b8150020000
                         {disp8} jge          _jmp_addr_0x0040affd                            // 0x0040afee    7d0d
                         {disp32} mov         ecx, dword ptr [ecx + 0x00000260]               // 0x0040aff0    8b8960020000
                         {disp8} mov          edx, dword ptr [esp + 0x08]                     // 0x0040aff6    8b542408
                         mov                  dword ptr [ecx + eax * 0x4], edx                // 0x0040affa    891481
_jmp_addr_0x0040affd:    ret                  0x0008                                          // 0x0040affd    c20800
_jmp_addr_0x0040b000:    {disp8} mov          eax, dword ptr [esp + 0x04]                     // 0x0040b000    8b442404
                         test                 eax, eax                                        // 0x0040b004    85c0
                         push                 esi                                             // 0x0040b006    56
                         mov.s                esi, ecx                                        // 0x0040b007    8bf1
                         {disp8} jl           _jmp_addr_0x0040b04c                            // 0x0040b009    7c41
                         cmp                  eax, dword ptr [esi + 0x00000250]               // 0x0040b00b    3b8650020000
                         {disp8} jge          _jmp_addr_0x0040b04c                            // 0x0040b011    7d39
                         {disp32} mov         ecx, dword ptr [esi + 0x00000258]               // 0x0040b013    8b8e58020000
                         push                 edi                                             // 0x0040b019    57
                         shl                  eax, 9                                          // 0x0040b01a    c1e009
                         mov.s                edi, eax                                        // 0x0040b01d    8bf8
                         {disp8} mov          eax, dword ptr [esp + 0x10]                     // 0x0040b01f    8b442410
                         push                 0x000000ff                                      // 0x0040b023    68ff000000
                         push                 eax                                             // 0x0040b028    50
                         add.s                ecx, edi                                        // 0x0040b029    03cf
                         push                 ecx                                             // 0x0040b02b    51
                         call                 _wcsncpy                                        // 0x0040b02c    e8f4b33b00
                         {disp32} mov         edx, dword ptr [esi + 0x00000258]               // 0x0040b031    8b9658020000
                         add                  esp, 0x0c                                       // 0x0040b037    83c40c
                         mov.s                ecx, esi                                        // 0x0040b03a    8bce
                         {disp32} mov         word ptr [edx + edi * 0x1 + 0x000001fe], 0x0000 // 0x0040b03c    66c7843afe0100000000
                         call                 ?UpdateHeights@SetupList@@QAEXXZ                // 0x0040b046    e8a5faffff
                         pop                  edi                                             // 0x0040b04b    5f
_jmp_addr_0x0040b04c:    pop                  esi                                             // 0x0040b04c    5e
                         ret                  0x0008                                          // 0x0040b04d    c20800
@SetNum__9SetupListFi@12:sub                  esp, 0x14                                       // 0x0040b050    83ec14
                         push                 ebx                                             // 0x0040b053    53
                         push                 ebp                                             // 0x0040b054    55
                         {disp8} mov          ebp, dword ptr [esp + 0x20]                     // 0x0040b055    8b6c2420
                         test                 ebp, ebp                                        // 0x0040b059    85ed
                         mov.s                ebx, ecx                                        // 0x0040b05b    8bd9
                         {disp8} jge          _jmp_addr_0x0040b061                            // 0x0040b05d    7d02
                         xor.s                ebp, ebp                                        // 0x0040b05f    33ed
_jmp_addr_0x0040b061:    {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b061    8b8b54020000
                         mov.s                eax, ecx                                        // 0x0040b067    8bc1
                         cdq                                                                  // 0x0040b069    99
                         sub.s                eax, edx                                        // 0x0040b06a    2bc2
                         sar                  eax, 1                                          // 0x0040b06c    d1f8
                         cmp.s                ebp, eax                                        // 0x0040b06e    3be8
                         push                 esi                                             // 0x0040b070    56
                         push                 edi                                             // 0x0040b071    57
                         {disp32} jl          _jmp_addr_0x0040b15f                            // 0x0040b072    0f8ce7000000
                         cmp.s                ebp, ecx                                        // 0x0040b078    3be9
                         {disp32} jg          _jmp_addr_0x0040b15f                            // 0x0040b07a    0f8fdf000000
                         {disp32} mov         edi, dword ptr [ebx + 0x00000250]               // 0x0040b080    8bbb50020000
                         cmp.s                ebp, edi                                        // 0x0040b086    3bef
                         {disp32} jle         _jmp_addr_0x0040b3ef                            // 0x0040b088    0f8e61030000
                         {disp32} mov         esi, dword ptr [ebx + 0x00000258]               // 0x0040b08e    8bb358020000
                         xor.s                eax, eax                                        // 0x0040b094    33c0
                         mov.s                edx, ebp                                        // 0x0040b096    8bd5
                         sub.s                edx, edi                                        // 0x0040b098    2bd7
                         shl                  edi, 9                                          // 0x0040b09a    c1e709
                         add.s                edi, esi                                        // 0x0040b09d    03fe
                         mov.s                ecx, edx                                        // 0x0040b09f    8bca
                         shl                  ecx, 9                                          // 0x0040b0a1    c1e109
                         mov.s                esi, ecx                                        // 0x0040b0a4    8bf1
                         shr                  ecx, 2                                          // 0x0040b0a6    c1e902
                         rep stosd                                                            // 0x0040b0a9    f3ab
                         mov.s                ecx, esi                                        // 0x0040b0ab    8bce
                         and                  ecx, 0x03                                       // 0x0040b0ad    83e103
                         rep stosb                                                            // 0x0040b0b0    f3aa
                         {disp32} mov         esi, dword ptr [ebx + 0x00000250]               // 0x0040b0b2    8bb350020000
                         {disp32} mov         edi, dword ptr [ebx + 0x0000025c]               // 0x0040b0b8    8bbb5c020000
                         lea                  edi, dword ptr [edi + esi * 0x4]                // 0x0040b0be    8d3cb7
                         shl                  edx, 2                                          // 0x0040b0c1    c1e202
                         xor.s                eax, eax                                        // 0x0040b0c4    33c0
                         mov.s                ecx, edx                                        // 0x0040b0c6    8bca
                         mov.s                esi, ecx                                        // 0x0040b0c8    8bf1
                         shr                  ecx, 2                                          // 0x0040b0ca    c1e902
                         rep stosd                                                            // 0x0040b0cd    f3ab
                         mov.s                ecx, esi                                        // 0x0040b0cf    8bce
                         and                  ecx, 0x03                                       // 0x0040b0d1    83e103
                         rep stosb                                                            // 0x0040b0d4    f3aa
                         {disp32} mov         esi, dword ptr [ebx + 0x00000250]               // 0x0040b0d6    8bb350020000
                         {disp32} mov         edi, dword ptr [ebx + 0x00000264]               // 0x0040b0dc    8bbb64020000
                         lea                  edi, dword ptr [edi + esi * 0x4]                // 0x0040b0e2    8d3cb7
                         xor.s                eax, eax                                        // 0x0040b0e5    33c0
                         mov.s                ecx, edx                                        // 0x0040b0e7    8bca
                         mov.s                esi, ecx                                        // 0x0040b0e9    8bf1
                         shr                  ecx, 2                                          // 0x0040b0eb    c1e902
                         rep stosd                                                            // 0x0040b0ee    f3ab
                         mov.s                ecx, esi                                        // 0x0040b0f0    8bce
                         and                  ecx, 0x03                                       // 0x0040b0f2    83e103
                         rep stosb                                                            // 0x0040b0f5    f3aa
                         {disp32} mov         esi, dword ptr [ebx + 0x00000250]               // 0x0040b0f7    8bb350020000
                         {disp32} mov         edi, dword ptr [ebx + 0x0000026c]               // 0x0040b0fd    8bbb6c020000
                         lea                  edi, dword ptr [edi + esi * 0x4]                // 0x0040b103    8d3cb7
                         mov.s                ecx, edx                                        // 0x0040b106    8bca
                         mov.s                esi, ecx                                        // 0x0040b108    8bf1
                         shr                  ecx, 2                                          // 0x0040b10a    c1e902
                         xor.s                eax, eax                                        // 0x0040b10d    33c0
                         rep stosd                                                            // 0x0040b10f    f3ab
                         mov.s                ecx, esi                                        // 0x0040b111    8bce
                         and                  ecx, 0x03                                       // 0x0040b113    83e103
                         rep stosb                                                            // 0x0040b116    f3aa
                         {disp32} mov         esi, dword ptr [ebx + 0x00000250]               // 0x0040b118    8bb350020000
                         {disp32} mov         edi, dword ptr [ebx + 0x00000268]               // 0x0040b11e    8bbb68020000
                         lea                  edi, dword ptr [edi + esi * 0x4]                // 0x0040b124    8d3cb7
                         mov.s                ecx, edx                                        // 0x0040b127    8bca
                         mov.s                esi, ecx                                        // 0x0040b129    8bf1
                         shr                  ecx, 2                                          // 0x0040b12b    c1e902
                         xor.s                eax, eax                                        // 0x0040b12e    33c0
                         rep stosd                                                            // 0x0040b130    f3ab
                         mov.s                ecx, esi                                        // 0x0040b132    8bce
                         and                  ecx, 0x03                                       // 0x0040b134    83e103
                         rep stosb                                                            // 0x0040b137    f3aa
                         {disp32} mov         esi, dword ptr [ebx + 0x00000260]               // 0x0040b139    8bb360020000
                         mov.s                ecx, edx                                        // 0x0040b13f    8bca
                         {disp32} mov         edx, dword ptr [ebx + 0x00000250]               // 0x0040b141    8b9350020000
                         lea                  edi, dword ptr [esi + edx * 0x4]                // 0x0040b147    8d3c96
                         mov.s                edx, ecx                                        // 0x0040b14a    8bd1
                         shr                  ecx, 2                                          // 0x0040b14c    c1e902
                         xor.s                eax, eax                                        // 0x0040b14f    33c0
                         rep stosd                                                            // 0x0040b151    f3ab
                         mov.s                ecx, edx                                        // 0x0040b153    8bca
                         and                  ecx, 0x03                                       // 0x0040b155    83e103
                         rep stosb                                                            // 0x0040b158    f3aa
                         {disp32} jmp         _jmp_addr_0x0040b3ef                            // 0x0040b15a    e990020000
_jmp_addr_0x0040b15f:    {disp8} lea          eax, dword ptr [ebp + 0x10]                     // 0x0040b15f    8d4510
                         push                 0x00000555                                      // 0x0040b162    6855050000
                         {disp32} mov         dword ptr [ebx + 0x00000254], eax               // 0x0040b167    898354020000
                         shl                  eax, 9                                          // 0x0040b16d    c1e009
                         push                 0x009c8190                                      // 0x0040b170    6890819c00
                         push                 eax                                             // 0x0040b175    50
                         call                 ___nw__FUl                                      // 0x0040b176    e815063d00
                         mov.s                edi, eax                                        // 0x0040b17b    8bf8
                         {disp32} mov         eax, dword ptr [ebx + 0x00000254]               // 0x0040b17d    8b8354020000
                         push                 0x00000556                                      // 0x0040b183    6856050000
                         shl                  eax, 2                                          // 0x0040b188    c1e002
                         push                 0x009c8190                                      // 0x0040b18b    6890819c00
                         push                 eax                                             // 0x0040b190    50
                         {disp8} mov          dword ptr [esp + 0x30], edi                     // 0x0040b191    897c2430
                         call                 ___nw__FUl                                      // 0x0040b195    e8f6053d00
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b19a    8b8b54020000
                         push                 0x00000557                                      // 0x0040b1a0    6857050000
                         shl                  ecx, 2                                          // 0x0040b1a5    c1e102
                         mov.s                esi, eax                                        // 0x0040b1a8    8bf0
                         push                 0x009c8190                                      // 0x0040b1aa    6890819c00
                         push                 ecx                                             // 0x0040b1af    51
                         {disp8} mov          dword ptr [esp + 0x40], esi                     // 0x0040b1b0    89742440
                         call                 ___nw__FUl                                      // 0x0040b1b4    e8d7053d00
                         {disp32} mov         edx, dword ptr [ebx + 0x00000254]               // 0x0040b1b9    8b9354020000
                         push                 0x00000558                                      // 0x0040b1bf    6858050000
                         shl                  edx, 2                                          // 0x0040b1c4    c1e202
                         push                 0x009c8190                                      // 0x0040b1c7    6890819c00
                         push                 edx                                             // 0x0040b1cc    52
                         {disp8} mov          dword ptr [esp + 0x58], eax                     // 0x0040b1cd    89442458
                         call                 ___nw__FUl                                      // 0x0040b1d1    e8ba053d00
                         {disp8} mov          dword ptr [esp + 0x40], eax                     // 0x0040b1d6    89442440
                         {disp32} mov         eax, dword ptr [ebx + 0x00000254]               // 0x0040b1da    8b8354020000
                         push                 0x00000559                                      // 0x0040b1e0    6859050000
                         shl                  eax, 2                                          // 0x0040b1e5    c1e002
                         push                 0x009c8190                                      // 0x0040b1e8    6890819c00
                         push                 eax                                             // 0x0040b1ed    50
                         call                 ___nw__FUl                                      // 0x0040b1ee    e89d053d00
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b1f3    8b8b54020000
                         push                 0x0000055a                                      // 0x0040b1f9    685a050000
                         shl                  ecx, 2                                          // 0x0040b1fe    c1e102
                         push                 0x009c8190                                      // 0x0040b201    6890819c00
                         push                 ecx                                             // 0x0040b206    51
                         {disp8} mov          dword ptr [esp + 0x5c], eax                     // 0x0040b207    8944245c
                         call                 ___nw__FUl                                      // 0x0040b20b    e880053d00
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b210    8b8b54020000
                         shl                  ecx, 9                                          // 0x0040b216    c1e109
                         mov.s                edx, ecx                                        // 0x0040b219    8bd1
                         shr                  ecx, 2                                          // 0x0040b21b    c1e902
                         {disp8} mov          dword ptr [esp + 0x68], eax                     // 0x0040b21e    89442468
                         xor.s                eax, eax                                        // 0x0040b222    33c0
                         rep stosd                                                            // 0x0040b224    f3ab
                         mov.s                ecx, edx                                        // 0x0040b226    8bca
                         and                  ecx, 0x03                                       // 0x0040b228    83e103
                         rep stosb                                                            // 0x0040b22b    f3aa
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b22d    8b8b54020000
                         shl                  ecx, 2                                          // 0x0040b233    c1e102
                         mov.s                edx, ecx                                        // 0x0040b236    8bd1
                         shr                  ecx, 2                                          // 0x0040b238    c1e902
                         xor.s                eax, eax                                        // 0x0040b23b    33c0
                         mov.s                edi, esi                                        // 0x0040b23d    8bfe
                         rep stosd                                                            // 0x0040b23f    f3ab
                         mov.s                ecx, edx                                        // 0x0040b241    8bca
                         and                  ecx, 0x03                                       // 0x0040b243    83e103
                         rep stosb                                                            // 0x0040b246    f3aa
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b248    8b8b54020000
                         {disp8} mov          edi, dword ptr [esp + 0x70]                     // 0x0040b24e    8b7c2470
                         shl                  ecx, 2                                          // 0x0040b252    c1e102
                         mov.s                edx, ecx                                        // 0x0040b255    8bd1
                         shr                  ecx, 2                                          // 0x0040b257    c1e902
                         xor.s                eax, eax                                        // 0x0040b25a    33c0
                         rep stosd                                                            // 0x0040b25c    f3ab
                         mov.s                ecx, edx                                        // 0x0040b25e    8bca
                         and                  ecx, 0x03                                       // 0x0040b260    83e103
                         rep stosb                                                            // 0x0040b263    f3aa
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b265    8b8b54020000
                         {disp8} mov          edi, dword ptr [esp + 0x58]                     // 0x0040b26b    8b7c2458
                         shl                  ecx, 2                                          // 0x0040b26f    c1e102
                         mov.s                edx, ecx                                        // 0x0040b272    8bd1
                         add                  esp, 0x48                                       // 0x0040b274    83c448
                         xor.s                eax, eax                                        // 0x0040b277    33c0
                         shr                  ecx, 2                                          // 0x0040b279    c1e902
                         rep stosd                                                            // 0x0040b27c    f3ab
                         mov.s                ecx, edx                                        // 0x0040b27e    8bca
                         and                  ecx, 0x03                                       // 0x0040b280    83e103
                         rep stosb                                                            // 0x0040b283    f3aa
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b285    8b8b54020000
                         {disp8} mov          edi, dword ptr [esp + 0x14]                     // 0x0040b28b    8b7c2414
                         shl                  ecx, 2                                          // 0x0040b28f    c1e102
                         mov.s                edx, ecx                                        // 0x0040b292    8bd1
                         shr                  ecx, 2                                          // 0x0040b294    c1e902
                         xor.s                eax, eax                                        // 0x0040b297    33c0
                         rep stosd                                                            // 0x0040b299    f3ab
                         mov.s                ecx, edx                                        // 0x0040b29b    8bca
                         {disp8} mov          edx, dword ptr [esp + 0x20]                     // 0x0040b29d    8b542420
                         and                  ecx, 0x03                                       // 0x0040b2a1    83e103
                         rep stosb                                                            // 0x0040b2a4    f3aa
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000254]               // 0x0040b2a6    8b8b54020000
                         shl                  ecx, 2                                          // 0x0040b2ac    c1e102
                         mov.s                esi, ecx                                        // 0x0040b2af    8bf1
                         shr                  ecx, 2                                          // 0x0040b2b1    c1e902
                         xor.s                eax, eax                                        // 0x0040b2b4    33c0
                         mov.s                edi, edx                                        // 0x0040b2b6    8bfa
                         rep stosd                                                            // 0x0040b2b8    f3ab
                         mov.s                ecx, esi                                        // 0x0040b2ba    8bce
                         and                  ecx, 0x03                                       // 0x0040b2bc    83e103
                         rep stosb                                                            // 0x0040b2bf    f3aa
                         {disp32} mov         eax, dword ptr [ebx + 0x00000250]               // 0x0040b2c1    8b8350020000
                         cmp.s                ebp, eax                                        // 0x0040b2c7    3be8
                         {disp8} jge          _jmp_addr_0x0040b2cd                            // 0x0040b2c9    7d02
                         mov.s                eax, ebp                                        // 0x0040b2cb    8bc5
_jmp_addr_0x0040b2cd:    {disp32} mov         esi, dword ptr [ebx + 0x00000258]               // 0x0040b2cd    8bb358020000
                         {disp8} mov          edi, dword ptr [esp + 0x18]                     // 0x0040b2d3    8b7c2418
                         mov.s                ecx, eax                                        // 0x0040b2d7    8bc8
                         shl                  ecx, 9                                          // 0x0040b2d9    c1e109
                         mov.s                eax, ecx                                        // 0x0040b2dc    8bc1
                         shr                  ecx, 2                                          // 0x0040b2de    c1e902
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b2e1    f3a5
                         mov.s                ecx, eax                                        // 0x0040b2e3    8bc8
                         and                  ecx, 0x03                                       // 0x0040b2e5    83e103
                         rep movsb                                                            // 0x0040b2e8    f3a4
                         {disp32} mov         eax, dword ptr [ebx + 0x00000250]               // 0x0040b2ea    8b8350020000
                         cmp.s                ebp, eax                                        // 0x0040b2f0    3be8
                         {disp8} jge          _jmp_addr_0x0040b2f6                            // 0x0040b2f2    7d02
                         mov.s                eax, ebp                                        // 0x0040b2f4    8bc5
_jmp_addr_0x0040b2f6:    {disp32} mov         esi, dword ptr [ebx + 0x0000025c]               // 0x0040b2f6    8bb35c020000
                         {disp8} mov          edi, dword ptr [esp + 0x1c]                     // 0x0040b2fc    8b7c241c
                         mov.s                ecx, eax                                        // 0x0040b300    8bc8
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b302    f3a5
                         {disp32} mov         eax, dword ptr [ebx + 0x00000250]               // 0x0040b304    8b8350020000
                         cmp.s                ebp, eax                                        // 0x0040b30a    3be8
                         {disp8} jge          _jmp_addr_0x0040b310                            // 0x0040b30c    7d02
                         mov.s                eax, ebp                                        // 0x0040b30e    8bc5
_jmp_addr_0x0040b310:    {disp32} mov         esi, dword ptr [ebx + 0x00000264]               // 0x0040b310    8bb364020000
                         {disp8} mov          edi, dword ptr [esp + 0x28]                     // 0x0040b316    8b7c2428
                         mov.s                ecx, eax                                        // 0x0040b31a    8bc8
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b31c    f3a5
                         {disp32} mov         eax, dword ptr [ebx + 0x00000250]               // 0x0040b31e    8b8350020000
                         cmp.s                ebp, eax                                        // 0x0040b324    3be8
                         {disp8} jge          _jmp_addr_0x0040b32a                            // 0x0040b326    7d02
                         mov.s                eax, ebp                                        // 0x0040b328    8bc5
_jmp_addr_0x0040b32a:    {disp32} mov         esi, dword ptr [ebx + 0x0000026c]               // 0x0040b32a    8bb36c020000
                         {disp8} mov          edi, dword ptr [esp + 0x10]                     // 0x0040b330    8b7c2410
                         mov.s                ecx, eax                                        // 0x0040b334    8bc8
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b336    f3a5
                         {disp32} mov         eax, dword ptr [ebx + 0x00000250]               // 0x0040b338    8b8350020000
                         cmp.s                ebp, eax                                        // 0x0040b33e    3be8
                         {disp8} jge          _jmp_addr_0x0040b344                            // 0x0040b340    7d02
                         mov.s                eax, ebp                                        // 0x0040b342    8bc5
_jmp_addr_0x0040b344:    {disp32} mov         esi, dword ptr [ebx + 0x00000268]               // 0x0040b344    8bb368020000
                         {disp8} mov          edi, dword ptr [esp + 0x14]                     // 0x0040b34a    8b7c2414
                         mov.s                ecx, eax                                        // 0x0040b34e    8bc8
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b350    f3a5
                         {disp32} mov         ecx, dword ptr [ebx + 0x00000250]               // 0x0040b352    8b8b50020000
                         cmp.s                ebp, ecx                                        // 0x0040b358    3be9
                         {disp8} jge          _jmp_addr_0x0040b35e                            // 0x0040b35a    7d02
                         mov.s                ecx, ebp                                        // 0x0040b35c    8bcd
_jmp_addr_0x0040b35e:    {disp32} mov         esi, dword ptr [ebx + 0x00000260]               // 0x0040b35e    8bb360020000
                         mov.s                edi, edx                                        // 0x0040b364    8bfa
                         rep movsd            es:[edi], dword ptr ds:[esi]                    // 0x0040b366    f3a5
                         {disp32} mov         ecx, dword ptr [ebx + 0x0000025c]               // 0x0040b368    8b8b5c020000
                         push                 ecx                                             // 0x0040b36e    51
                         call                 ??3@YAXPAX@Z                                    // 0x0040b36f    e8243b3a00
                         {disp32} mov         edx, dword ptr [ebx + 0x00000258]               // 0x0040b374    8b9358020000
                         push                 edx                                             // 0x0040b37a    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040b37b    e8183b3a00
                         {disp32} mov         eax, dword ptr [ebx + 0x00000264]               // 0x0040b380    8b8364020000
                         push                 eax                                             // 0x0040b386    50
                         call                 ??3@YAXPAX@Z                                    // 0x0040b387    e80c3b3a00
                         {disp32} mov         ecx, dword ptr [ebx + 0x0000026c]               // 0x0040b38c    8b8b6c020000
                         push                 ecx                                             // 0x0040b392    51
                         call                 ??3@YAXPAX@Z                                    // 0x0040b393    e8003b3a00
                         {disp32} mov         edx, dword ptr [ebx + 0x00000268]               // 0x0040b398    8b9368020000
                         push                 edx                                             // 0x0040b39e    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040b39f    e8f43a3a00
                         {disp32} mov         eax, dword ptr [ebx + 0x00000260]               // 0x0040b3a4    8b8360020000
                         push                 eax                                             // 0x0040b3aa    50
                         call                 ??3@YAXPAX@Z                                    // 0x0040b3ab    e8e83a3a00
                         {disp8} mov          ecx, dword ptr [esp + 0x40]                     // 0x0040b3b0    8b4c2440
                         {disp8} mov          edx, dword ptr [esp + 0x28]                     // 0x0040b3b4    8b542428
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                     // 0x0040b3b8    8b44242c
                         {disp32} mov         dword ptr [ebx + 0x00000264], ecx               // 0x0040b3bc    898b64020000
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                     // 0x0040b3c2    8b4c2430
                         {disp32} mov         dword ptr [ebx + 0x0000026c], edx               // 0x0040b3c6    89936c020000
                         {disp8} mov          edx, dword ptr [esp + 0x34]                     // 0x0040b3cc    8b542434
                         {disp32} mov         dword ptr [ebx + 0x00000268], eax               // 0x0040b3d0    898368020000
                         {disp8} mov          eax, dword ptr [esp + 0x38]                     // 0x0040b3d6    8b442438
                         add                  esp, 0x18                                       // 0x0040b3da    83c418
                         {disp32} mov         dword ptr [ebx + 0x00000258], ecx               // 0x0040b3dd    898b58020000
                         {disp32} mov         dword ptr [ebx + 0x0000025c], edx               // 0x0040b3e3    89935c020000
                         {disp32} mov         dword ptr [ebx + 0x00000260], eax               // 0x0040b3e9    898360020000
_jmp_addr_0x0040b3ef:    cmp                  dword ptr [ebx + 0x00000248], ebp               // 0x0040b3ef    39ab48020000
                         pop                  edi                                             // 0x0040b3f5    5f
                         {disp32} mov         dword ptr [ebx + 0x00000250], ebp               // 0x0040b3f6    89ab50020000
                         pop                  esi                                             // 0x0040b3fc    5e
                         {disp8} jl           _jmp_addr_0x0040b409                            // 0x0040b3fd    7c0a
                         {disp32} mov         dword ptr [ebx + 0x00000248], 0xffffffff        // 0x0040b3ff    c78348020000ffffffff
_jmp_addr_0x0040b409:    mov.s                ecx, ebx                                        // 0x0040b409    8bcb
                         call                 ?UpdateHeights@SetupList@@QAEXXZ                // 0x0040b40b    e8e0f6ffff
                         pop                  ebp                                             // 0x0040b410    5d
                         pop                  ebx                                             // 0x0040b411    5b
                         add                  esp, 0x14                                       // 0x0040b412    83c414
                         ret                  0x0004                                          // 0x0040b415    c20400
                         nop                                                                  // 0x0040b418    90
                         nop                                                                  // 0x0040b419    90
                         nop                                                                  // 0x0040b41a    90
                         nop                                                                  // 0x0040b41b    90
                         nop                                                                  // 0x0040b41c    90
                         nop                                                                  // 0x0040b41d    90
                         nop                                                                  // 0x0040b41e    90
                         nop                                                                  // 0x0040b41f    90
@__ct__14SetupMultiListFiiiiii@32:    {disp8} mov          eax, dword ptr [esp + 0x14]                     // 0x0040b420    8b442414
                         {disp8} mov          edx, dword ptr [esp + 0x0c]                     // 0x0040b424    8b54240c
                         push                 esi                                             // 0x0040b428    56
                         push                 eax                                             // 0x0040b429    50
                         {disp8} mov          eax, dword ptr [esp + 0x10]                     // 0x0040b42a    8b442410
                         mov.s                esi, ecx                                        // 0x0040b42e    8bf1
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                     // 0x0040b430    8b4c2418
                         push                 ecx                                             // 0x0040b434    51
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                     // 0x0040b435    8b4c2410
                         push                 edx                                             // 0x0040b439    52
                         push                 eax                                             // 0x0040b43a    50
                         push                 ecx                                             // 0x0040b43b    51
                         mov.s                ecx, esi                                        // 0x0040b43c    8bce
                         call                 @__ct__9SetupListFiiiii@28                      // 0x0040b43e    e80df0ffff
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                     // 0x0040b443    8b44241c
                         push                 0x0000058e                                      // 0x0040b447    688e050000
                         push                 0x009c8190                                      // 0x0040b44c    6890819c00
                         push                 eax                                             // 0x0040b451    50
                         mov                  dword ptr [esi], 0x008ab364                     // 0x0040b452    c70664b38a00
                         {disp32} mov         dword ptr [esi + 0x000002b8], eax               // 0x0040b458    8986b8020000
                         {disp32} mov         dword ptr [esi + 0x000002b4], 0x00000000        // 0x0040b45e    c786b402000000000000
                         call                 ___nw__FUl                                      // 0x0040b468    e823033d00
                         {disp32} mov         ecx, dword ptr [esi + 0x000002b8]               // 0x0040b46d    8b8eb8020000
                         {disp32} mov         dword ptr [esi + 0x000002b0], eax               // 0x0040b473    8986b0020000
                         add                  esp, 0x0c                                       // 0x0040b479    83c40c
                         xor.s                eax, eax                                        // 0x0040b47c    33c0
                         test                 ecx, ecx                                        // 0x0040b47e    85c9
                         {disp8} jle          _jmp_addr_0x0040b497                            // 0x0040b480    7e15
_jmp_addr_0x0040b482:    {disp32} mov         edx, dword ptr [esi + 0x000002b0]               // 0x0040b482    8b96b0020000
                         mov                  byte ptr [edx + eax * 0x1], 0x00                // 0x0040b488    c6040200
                         {disp32} mov         ecx, dword ptr [esi + 0x000002b8]               // 0x0040b48c    8b8eb8020000
                         inc                  eax                                             // 0x0040b492    40
                         cmp.s                eax, ecx                                        // 0x0040b493    3bc1
                         {disp8} jl           _jmp_addr_0x0040b482                            // 0x0040b495    7ceb
_jmp_addr_0x0040b497:    mov.s                eax, esi                                        // 0x0040b497    8bc6
                         pop                  esi                                             // 0x0040b499    5e
                         ret                  0x0018                                          // 0x0040b49a    c21800
                         nop                                                                  // 0x0040b49d    90
                         nop                                                                  // 0x0040b49e    90
                         nop                                                                  // 0x0040b49f    90
??_GSetupMultiList@@UAEPAXI@Z:
                         push                 esi                                             // 0x0040b4a0    56
                         mov.s                esi, ecx                                        // 0x0040b4a1    8bf1
                         call                 _jmp_addr_0x0040b4c0                            // 0x0040b4a3    e818000000
                         test                 byte ptr [esp + 0x08], 0x01                     // 0x0040b4a8    f644240801
                         {disp8} je           _jmp_addr_0x0040b4b8                            // 0x0040b4ad    7409
                         push                 esi                                             // 0x0040b4af    56
                         call                 ??3@YAXPAX@Z                                    // 0x0040b4b0    e8e3393a00
                         add                  esp, 0x04                                       // 0x0040b4b5    83c404
_jmp_addr_0x0040b4b8:    mov.s                eax, esi                                        // 0x0040b4b8    8bc6
                         pop                  esi                                             // 0x0040b4ba    5e
                         ret                  0x0004                                          // 0x0040b4bb    c20400
                         nop                                                                  // 0x0040b4be    90
                         nop                                                                  // 0x0040b4bf    90
_jmp_addr_0x0040b4c0:    push                 esi                                             // 0x0040b4c0    56
                         mov.s                esi, ecx                                        // 0x0040b4c1    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x000002b0]               // 0x0040b4c3    8b86b0020000
                         push                 eax                                             // 0x0040b4c9    50
                         mov                  dword ptr [esi], 0x008ab364                     // 0x0040b4ca    c70664b38a00
                         call                 ??3@YAXPAX@Z                                    // 0x0040b4d0    e8c3393a00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000268]               // 0x0040b4d5    8b8e68020000
                         push                 ecx                                             // 0x0040b4db    51
                         mov                  dword ptr [esi], 0x008ab324                     // 0x0040b4dc    c70624b38a00
                         call                 ??3@YAXPAX@Z                                    // 0x0040b4e2    e8b1393a00
                         {disp32} mov         edx, dword ptr [esi + 0x0000026c]               // 0x0040b4e7    8b966c020000
                         push                 edx                                             // 0x0040b4ed    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040b4ee    e8a5393a00
                         {disp32} mov         eax, dword ptr [esi + 0x00000264]               // 0x0040b4f3    8b8664020000
                         push                 eax                                             // 0x0040b4f9    50
                         call                 ??3@YAXPAX@Z                                    // 0x0040b4fa    e899393a00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000025c]               // 0x0040b4ff    8b8e5c020000
                         push                 ecx                                             // 0x0040b505    51
                         call                 ??3@YAXPAX@Z                                    // 0x0040b506    e88d393a00
                         {disp32} mov         edx, dword ptr [esi + 0x00000258]               // 0x0040b50b    8b9658020000
                         push                 edx                                             // 0x0040b511    52
                         call                 ??3@YAXPAX@Z                                    // 0x0040b512    e881393a00
                         {disp32} mov         eax, dword ptr [esi + 0x00000260]               // 0x0040b517    8b8660020000
                         push                 eax                                             // 0x0040b51d    50
                         call                 ??3@YAXPAX@Z                                    // 0x0040b51e    e875393a00
                         add                  esp, 0x1c                                       // 0x0040b523    83c41c
                         mov.s                ecx, esi                                        // 0x0040b526    8bce
                         call                 ??1SetupControl@@UAE@XZ                         // 0x0040b528    e893deffff
                         pop                  esi                                             // 0x0040b52d    5e
                         ret                                                                  // 0x0040b52e    c3
                         nop                                                                  // 0x0040b52f    90
_IsSelected__14SetupMultiListFi:
                         {disp8} mov          eax, dword ptr [esp + 0x04]                     // 0x0040b530    8b442404
                         test                 eax, eax                                        // 0x0040b534    85c0
                         {disp8} jl           _jmp_addr_0x0040b54c                            // 0x0040b536    7c14
                         cmp                  eax, dword ptr [ecx + 0x000002b8]               // 0x0040b538    3b81b8020000
                         {disp8} jg           _jmp_addr_0x0040b54c                            // 0x0040b53e    7f0c
                         {disp32} mov         ecx, dword ptr [ecx + 0x000002b0]               // 0x0040b540    8b89b0020000
                         mov                  al, byte ptr [ecx + eax * 0x1]                  // 0x0040b546    8a0401
                         ret                  0x0004                                          // 0x0040b549    c20400
_jmp_addr_0x0040b54c:    xor.s                al, al                                          // 0x0040b54c    32c0
                         ret                  0x0004                                          // 0x0040b54e    c20400
                         nop                                                                  // 0x0040b551    90
                         nop                                                                  // 0x0040b552    90
                         nop                                                                  // 0x0040b553    90
                         nop                                                                  // 0x0040b554    90
                         nop                                                                  // 0x0040b555    90
                         nop                                                                  // 0x0040b556    90
                         nop                                                                  // 0x0040b557    90
                         nop                                                                  // 0x0040b558    90
                         nop                                                                  // 0x0040b559    90
                         nop                                                                  // 0x0040b55a    90
                         nop                                                                  // 0x0040b55b    90
                         nop                                                                  // 0x0040b55c    90
                         nop                                                                  // 0x0040b55d    90
                         nop                                                                  // 0x0040b55e    90
                         nop                                                                  // 0x0040b55f    90
_Click__14SetupMultiListFii:
                         {disp8} mov          edx, dword ptr [ecx + 0x0c]                     // 0x0040b560    8b510c
                         {disp32} mov         al, byte ptr [ecx + 0x00000285]                 // 0x0040b563    8a8185020000
                         push                 ebx                                             // 0x0040b569    53
                         push                 esi                                             // 0x0040b56a    56
                         sub                  edx, dword ptr [ecx + 0x0000027c]               // 0x0040b56b    2b917c020000
                         test                 al, al                                          // 0x0040b571    84c0
                         {disp8} jne          _jmp_addr_0x0040b5e2                            // 0x0040b573    756d
                         {disp32} mov         esi, dword ptr [ecx + 0x00000250]               // 0x0040b575    8bb150020000
                         xor.s                eax, eax                                        // 0x0040b57b    33c0
                         test                 esi, esi                                        // 0x0040b57d    85f6
                         push                 edi                                             // 0x0040b57f    57
                         {disp8} jle          _jmp_addr_0x0040b5a7                            // 0x0040b580    7e25
                         {disp8} mov          edi, dword ptr [esp + 0x14]                     // 0x0040b582    8b7c2414
_jmp_addr_0x0040b586:    cmp.s                edi, edx                                        // 0x0040b586    3bfa
                         {disp8} jl           _jmp_addr_0x0040b599                            // 0x0040b588    7c0f
                         {disp32} mov         ebx, dword ptr [ecx + 0x0000025c]               // 0x0040b58a    8b995c020000
                         mov                  ebx, dword ptr [ebx + eax * 0x4]                // 0x0040b590    8b1c83
                         add.s                ebx, edx                                        // 0x0040b593    03da
                         cmp.s                edi, ebx                                        // 0x0040b595    3bfb
                         {disp8} jl           _jmp_addr_0x0040b5a7                            // 0x0040b597    7c0e
_jmp_addr_0x0040b599:    {disp32} mov         ebx, dword ptr [ecx + 0x0000025c]               // 0x0040b599    8b995c020000
                         add                  edx, dword ptr [ebx + eax * 0x4]                // 0x0040b59f    031483
                         inc                  eax                                             // 0x0040b5a2    40
                         cmp.s                eax, esi                                        // 0x0040b5a3    3bc6
                         {disp8} jl           _jmp_addr_0x0040b586                            // 0x0040b5a5    7cdf
_jmp_addr_0x0040b5a7:    cmp.s                eax, esi                                        // 0x0040b5a7    3bc6
                         pop                  edi                                             // 0x0040b5a9    5f
                         {disp8} jge          _jmp_addr_0x0040b5e2                            // 0x0040b5aa    7d36
                         {disp32} mov         edx, dword ptr [ecx + 0x000002b0]               // 0x0040b5ac    8b91b0020000
                         lea                  esi, dword ptr [edx + eax * 0x1]                // 0x0040b5b2    8d3402
                         cmp                  byte ptr [esi], 0x00                            // 0x0040b5b5    803e00
                         sete                 dl                                              // 0x0040b5b8    0f94c2
                         mov                  byte ptr [esi], dl                              // 0x0040b5bb    8816
                         {disp32} mov         edx, dword ptr [ecx + 0x000002b0]               // 0x0040b5bd    8b91b0020000
                         cmp                  byte ptr [edx + eax * 0x1], 0x00                // 0x0040b5c3    803c0200
                         {disp32} mov         eax, dword ptr [ecx + 0x000002b4]               // 0x0040b5c7    8b81b4020000
                         {disp8} je           _jmp_addr_0x0040b5db                            // 0x0040b5cd    740c
                         inc                  eax                                             // 0x0040b5cf    40
                         pop                  esi                                             // 0x0040b5d0    5e
                         {disp32} mov         dword ptr [ecx + 0x000002b4], eax               // 0x0040b5d1    8981b4020000
                         pop                  ebx                                             // 0x0040b5d7    5b
                         ret                  0x0008                                          // 0x0040b5d8    c20800
_jmp_addr_0x0040b5db:    dec                  eax                                             // 0x0040b5db    48
                         {disp32} mov         dword ptr [ecx + 0x000002b4], eax               // 0x0040b5dc    8981b4020000
_jmp_addr_0x0040b5e2:    pop                  esi                                             // 0x0040b5e2    5e
                         pop                  ebx                                             // 0x0040b5e3    5b
                         ret                  0x0008                                          // 0x0040b5e4    c20800
                         nop                                                                  // 0x0040b5e7    90
                         nop                                                                  // 0x0040b5e8    90
                         nop                                                                  // 0x0040b5e9    90
                         nop                                                                  // 0x0040b5ea    90
                         nop                                                                  // 0x0040b5eb    90
                         nop                                                                  // 0x0040b5ec    90
                         nop                                                                  // 0x0040b5ed    90
                         nop                                                                  // 0x0040b5ee    90
                         nop                                                                  // 0x0040b5ef    90
_Char__9SetupEditFi:
                         sub                  esp, 0x00000200                                 // 0x0040b5f0    81ec00020000
                         push                 ebx                                             // 0x0040b5f6    53
                         push                 ebp                                             // 0x0040b5f7    55
                         push                 esi                                             // 0x0040b5f8    56
                         mov.s                esi, ecx                                        // 0x0040b5f9    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040b5fb    8b865c020000
                         test                 eax, eax                                        // 0x0040b601    85c0
                         push                 edi                                             // 0x0040b603    57
                         {disp32} je          _jmp_addr_0x0040bad8                            // 0x0040b604    0f84ce040000
                         {disp32} mov         ebp, dword ptr [esi + 0x00000254]               // 0x0040b60a    8bae54020000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040b610    8b8650020000
                         {disp32} mov         ecx, dword ptr [esp + 0x00000214]               // 0x0040b616    8b8c2414020000
                         mov.s                ebx, ebp                                        // 0x0040b61d    8bdd
                         sub.s                ebx, eax                                        // 0x0040b61f    2bd8
                         cmp                  ecx, 0x08                                       // 0x0040b621    83f908
                         {disp8} je           _jmp_addr_0x0040b66d                            // 0x0040b624    7447
                         cmp                  ecx, 0x0d                                       // 0x0040b626    83f90d
                         {disp32} jne         _jmp_addr_0x0040b773                            // 0x0040b629    0f8544010000
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040b62f    8b8634020000
                         test                 eax, eax                                        // 0x0040b635    85c0
                         {disp32} je          _jmp_addr_0x0040bad8                            // 0x0040b637    0f849b040000
                         {disp32} mov         ecx, dword ptr [eax + 0x000000b0]               // 0x0040b63d    8b88b0000000
                         test                 ecx, ecx                                        // 0x0040b643    85c9
                         {disp32} je          _jmp_addr_0x0040bad8                            // 0x0040b645    0f848d040000
                         push                 0x0                                             // 0x0040b64b    6a00
                         push                 0x0                                             // 0x0040b64d    6a00
                         push                 esi                                             // 0x0040b64f    56
                         push                 eax                                             // 0x0040b650    50
                         push                 0x1                                             // 0x0040b651    6a01
                         call                 ecx                                             // 0x0040b653    ffd1
                         {disp32} mov         ecx, dword ptr [esi + 0x00000234]               // 0x0040b655    8b8e34020000
                         call                 ?SetFocusNext@SetupBox@@QAEXXZ                  // 0x0040b65b    e8305a0000
                         pop                  edi                                             // 0x0040b660    5f
                         pop                  esi                                             // 0x0040b661    5e
                         pop                  ebp                                             // 0x0040b662    5d
                         pop                  ebx                                             // 0x0040b663    5b
                         add                  esp, 0x00000200                                 // 0x0040b664    81c400020000
                         ret                  0x0004                                          // 0x0040b66a    c20400
_jmp_addr_0x0040b66d:    test                 ebx, ebx                                        // 0x0040b66d    85db
                         {disp8} je           _jmp_addr_0x0040b6e7                            // 0x0040b66f    7476
                         mov.s                ebx, eax                                        // 0x0040b671    8bd8
                         {disp8} lea          eax, dword ptr [esi + 0x24]                     // 0x0040b673    8d4624
                         push                 eax                                             // 0x0040b676    50
                         call                 _wcslen                                         // 0x0040b677    e8e6ad3b00
                         add                  esp, 0x04                                       // 0x0040b67c    83c404
                         test                 ebx, ebx                                        // 0x0040b67f    85db
                         mov.s                edi, eax                                        // 0x0040b681    8bf8
                         {disp8} jle          _jmp_addr_0x0040b68d                            // 0x0040b683    7e08
                         cmp.s                ebx, edi                                        // 0x0040b685    3bdf
                         {disp8} jl           _jmp_addr_0x0040b68f                            // 0x0040b687    7c06
                         mov.s                ebx, edi                                        // 0x0040b689    8bdf
                         {disp8} jmp          _jmp_addr_0x0040b68f                            // 0x0040b68b    eb02
_jmp_addr_0x0040b68d:    xor.s                ebx, ebx                                        // 0x0040b68d    33db
_jmp_addr_0x0040b68f:    test                 ebp, ebp                                        // 0x0040b68f    85ed
                         {disp8} jle          _jmp_addr_0x0040b69b                            // 0x0040b691    7e08
                         cmp.s                ebp, edi                                        // 0x0040b693    3bef
                         {disp8} jl           _jmp_addr_0x0040b69d                            // 0x0040b695    7c06
                         mov.s                ebp, edi                                        // 0x0040b697    8bef
                         {disp8} jmp          _jmp_addr_0x0040b69d                            // 0x0040b699    eb02
_jmp_addr_0x0040b69b:    xor.s                ebp, ebp                                        // 0x0040b69b    33ed
_jmp_addr_0x0040b69d:    mov.s                ecx, ebp                                        // 0x0040b69d    8bcd
                         neg                  ecx                                             // 0x0040b69f    f7d9
                         shl                  ecx, 0x1f                                       // 0x0040b6a1    c1e11f
                         sub.s                ecx, ebp                                        // 0x0040b6a4    2bcd
                         add.s                ecx, edi                                        // 0x0040b6a6    03cf
                         shl                  ecx, 1                                          // 0x0040b6a8    d1e1
                         push                 ecx                                             // 0x0040b6aa    51
                         {disp8} lea          edx, dword ptr [esi + ebp * 0x2 + 0x24]         // 0x0040b6ab    8d546e24
                         push                 edx                                             // 0x0040b6af    52
                         {disp8} lea          eax, dword ptr [esi + ebx * 0x2 + 0x24]         // 0x0040b6b0    8d445e24
                         push                 eax                                             // 0x0040b6b4    50
                         call                 _memmove                                        // 0x0040b6b5    e836aa3b00
                         add                  esp, 0x0c                                       // 0x0040b6ba    83c40c
                         sub.s                edi, ebp                                        // 0x0040b6bd    2bfd
                         add.s                edi, ebx                                        // 0x0040b6bf    03fb
                         {disp8} mov          word ptr [esi + edi * 0x2 + 0x24], 0x0000       // 0x0040b6c1    66c7447e240000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040b6c8    8b8650020000
                         pop                  edi                                             // 0x0040b6ce    5f
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040b6cf    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040b6d5    89864c020000
                         pop                  esi                                             // 0x0040b6db    5e
                         pop                  ebp                                             // 0x0040b6dc    5d
                         pop                  ebx                                             // 0x0040b6dd    5b
                         add                  esp, 0x00000200                                 // 0x0040b6de    81c400020000
                         ret                  0x0004                                          // 0x0040b6e4    c20400
_jmp_addr_0x0040b6e7:    {disp32} mov         ebx, dword ptr [esi + 0x0000024c]               // 0x0040b6e7    8b9e4c020000
                         test                 ebx, ebx                                        // 0x0040b6ed    85db
                         {disp32} jle         _jmp_addr_0x0040bad8                            // 0x0040b6ef    0f8ee3030000
                         {disp8} lea          ecx, dword ptr [esi + 0x24]                     // 0x0040b6f5    8d4e24
                         mov.s                ebp, ebx                                        // 0x0040b6f8    8beb
                         push                 ecx                                             // 0x0040b6fa    51
                         dec                  ebx                                             // 0x0040b6fb    4b
                         call                 _wcslen                                         // 0x0040b6fc    e861ad3b00
                         add                  esp, 0x04                                       // 0x0040b701    83c404
                         test                 ebx, ebx                                        // 0x0040b704    85db
                         mov.s                edi, eax                                        // 0x0040b706    8bf8
                         {disp8} jle          _jmp_addr_0x0040b712                            // 0x0040b708    7e08
                         cmp.s                ebx, edi                                        // 0x0040b70a    3bdf
                         {disp8} jl           _jmp_addr_0x0040b714                            // 0x0040b70c    7c06
                         mov.s                ebx, edi                                        // 0x0040b70e    8bdf
                         {disp8} jmp          _jmp_addr_0x0040b714                            // 0x0040b710    eb02
_jmp_addr_0x0040b712:    xor.s                ebx, ebx                                        // 0x0040b712    33db
_jmp_addr_0x0040b714:    test                 ebp, ebp                                        // 0x0040b714    85ed
                         {disp8} jle          _jmp_addr_0x0040b720                            // 0x0040b716    7e08
                         cmp.s                ebp, edi                                        // 0x0040b718    3bef
                         {disp8} jl           _jmp_addr_0x0040b722                            // 0x0040b71a    7c06
                         mov.s                ebp, edi                                        // 0x0040b71c    8bef
                         {disp8} jmp          _jmp_addr_0x0040b722                            // 0x0040b71e    eb02
_jmp_addr_0x0040b720:    xor.s                ebp, ebp                                        // 0x0040b720    33ed
_jmp_addr_0x0040b722:    mov.s                edx, ebp                                        // 0x0040b722    8bd5
                         neg                  edx                                             // 0x0040b724    f7da
                         shl                  edx, 0x1f                                       // 0x0040b726    c1e21f
                         sub.s                edx, ebp                                        // 0x0040b729    2bd5
                         add.s                edx, edi                                        // 0x0040b72b    03d7
                         shl                  edx, 1                                          // 0x0040b72d    d1e2
                         push                 edx                                             // 0x0040b72f    52
                         {disp8} lea          eax, dword ptr [esi + ebp * 0x2 + 0x24]         // 0x0040b730    8d446e24
                         push                 eax                                             // 0x0040b734    50
                         {disp8} lea          ecx, dword ptr [esi + ebx * 0x2 + 0x24]         // 0x0040b735    8d4c5e24
                         push                 ecx                                             // 0x0040b739    51
                         call                 _memmove                                        // 0x0040b73a    e8b1a93b00
                         sub.s                edi, ebp                                        // 0x0040b73f    2bfd
                         add.s                edi, ebx                                        // 0x0040b741    03fb
                         {disp8} mov          word ptr [esi + edi * 0x2 + 0x24], 0x0000       // 0x0040b743    66c7447e240000
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040b74a    8b864c020000
                         add                  esp, 0x0c                                       // 0x0040b750    83c40c
                         dec                  eax                                             // 0x0040b753    48
                         pop                  edi                                             // 0x0040b754    5f
                         {disp32} mov         dword ptr [esi + 0x00000250], eax               // 0x0040b755    898650020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040b75b    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040b761    89864c020000
                         pop                  esi                                             // 0x0040b767    5e
                         pop                  ebp                                             // 0x0040b768    5d
                         pop                  ebx                                             // 0x0040b769    5b
                         add                  esp, 0x00000200                                 // 0x0040b76a    81c400020000
                         ret                  0x0004                                          // 0x0040b770    c20400
_jmp_addr_0x0040b773:    cmp                  ecx, 0x20                                       // 0x0040b773    83f920
                         {disp32} jl          _jmp_addr_0x0040bad8                            // 0x0040b776    0f8c5c030000
                         {disp8} lea          edi, dword ptr [esi + 0x24]                     // 0x0040b77c    8d7e24
                         push                 edi                                             // 0x0040b77f    57
                         call                 _wcslen                                         // 0x0040b780    e8ddac3b00
                         add                  esp, 0x04                                       // 0x0040b785    83c404
                         test                 ebx, ebx                                        // 0x0040b788    85db
                         {disp8} je           _jmp_addr_0x0040b7fc                            // 0x0040b78a    7470
                         {disp32} mov         ebp, dword ptr [esi + 0x00000254]               // 0x0040b78c    8bae54020000
                         {disp32} mov         ebx, dword ptr [esi + 0x00000250]               // 0x0040b792    8b9e50020000
                         push                 edi                                             // 0x0040b798    57
                         call                 _wcslen                                         // 0x0040b799    e8c4ac3b00
                         add                  esp, 0x04                                       // 0x0040b79e    83c404
                         test                 ebx, ebx                                        // 0x0040b7a1    85db
                         mov.s                edi, eax                                        // 0x0040b7a3    8bf8
                         {disp8} jle          _jmp_addr_0x0040b7af                            // 0x0040b7a5    7e08
                         cmp.s                ebx, edi                                        // 0x0040b7a7    3bdf
                         {disp8} jl           _jmp_addr_0x0040b7b1                            // 0x0040b7a9    7c06
                         mov.s                ebx, edi                                        // 0x0040b7ab    8bdf
                         {disp8} jmp          _jmp_addr_0x0040b7b1                            // 0x0040b7ad    eb02
_jmp_addr_0x0040b7af:    xor.s                ebx, ebx                                        // 0x0040b7af    33db
_jmp_addr_0x0040b7b1:    test                 ebp, ebp                                        // 0x0040b7b1    85ed
                         {disp8} jle          _jmp_addr_0x0040b7bd                            // 0x0040b7b3    7e08
                         cmp.s                ebp, edi                                        // 0x0040b7b5    3bef
                         {disp8} jl           _jmp_addr_0x0040b7bf                            // 0x0040b7b7    7c06
                         mov.s                ebp, edi                                        // 0x0040b7b9    8bef
                         {disp8} jmp          _jmp_addr_0x0040b7bf                            // 0x0040b7bb    eb02
_jmp_addr_0x0040b7bd:    xor.s                ebp, ebp                                        // 0x0040b7bd    33ed
_jmp_addr_0x0040b7bf:    mov.s                edx, ebp                                        // 0x0040b7bf    8bd5
                         neg                  edx                                             // 0x0040b7c1    f7da
                         shl                  edx, 0x1f                                       // 0x0040b7c3    c1e21f
                         sub.s                edx, ebp                                        // 0x0040b7c6    2bd5
                         add.s                edx, edi                                        // 0x0040b7c8    03d7
                         shl                  edx, 1                                          // 0x0040b7ca    d1e2
                         push                 edx                                             // 0x0040b7cc    52
                         {disp8} lea          eax, dword ptr [esi + ebp * 0x2 + 0x24]         // 0x0040b7cd    8d446e24
                         push                 eax                                             // 0x0040b7d1    50
                         {disp8} lea          ecx, dword ptr [esi + ebx * 0x2 + 0x24]         // 0x0040b7d2    8d4c5e24
                         push                 ecx                                             // 0x0040b7d6    51
                         call                 _memmove                                        // 0x0040b7d7    e814a93b00
                         sub.s                edi, ebp                                        // 0x0040b7dc    2bfd
                         add                  esp, 0x0c                                       // 0x0040b7de    83c40c
                         add.s                edi, ebx                                        // 0x0040b7e1    03fb
                         {disp8} mov          word ptr [esi + edi * 0x2 + 0x24], 0x0000       // 0x0040b7e3    66c7447e240000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040b7ea    8b8650020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040b7f0    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040b7f6    89864c020000
_jmp_addr_0x0040b7fc:    {disp32} mov         eax, dword ptr [esp + 0x00000214]               // 0x0040b7fc    8b842414020000
                         test                 eax, eax                                        // 0x0040b803    85c0
                         {disp32} je          _jmp_addr_0x0040b88e                            // 0x0040b805    0f8483000000
                         {disp32} mov         edi, dword ptr [esi + 0x0000024c]               // 0x0040b80b    8bbe4c020000
                         {disp8} lea          eax, dword ptr [esi + 0x24]                     // 0x0040b811    8d4624
                         push                 eax                                             // 0x0040b814    50
                         call                 _wcslen                                         // 0x0040b815    e848ac3b00
                         mov.s                ebx, eax                                        // 0x0040b81a    8bd8
                         {disp32} mov         eax, dword ptr [esi + 0x00000240]               // 0x0040b81c    8b8640020000
                         add                  esp, 0x04                                       // 0x0040b822    83c404
                         cmp.s                ebx, eax                                        // 0x0040b825    3bd8
                         {disp8} jge          _jmp_addr_0x0040b875                            // 0x0040b827    7d4c
                         test                 edi, edi                                        // 0x0040b829    85ff
                         {disp8} jle          _jmp_addr_0x0040b835                            // 0x0040b82b    7e08
                         cmp.s                edi, ebx                                        // 0x0040b82d    3bfb
                         {disp8} jl           _jmp_addr_0x0040b837                            // 0x0040b82f    7c06
                         mov.s                edi, ebx                                        // 0x0040b831    8bfb
                         {disp8} jmp          _jmp_addr_0x0040b837                            // 0x0040b833    eb02
_jmp_addr_0x0040b835:    xor.s                edi, edi                                        // 0x0040b835    33ff
_jmp_addr_0x0040b837:    mov.s                edx, edi                                        // 0x0040b837    8bd7
                         neg                  edx                                             // 0x0040b839    f7da
                         shl                  edx, 0x1f                                       // 0x0040b83b    c1e21f
                         sub.s                edx, edi                                        // 0x0040b83e    2bd7
                         add.s                edx, ebx                                        // 0x0040b840    03d3
                         shl                  edx, 1                                          // 0x0040b842    d1e2
                         push                 edx                                             // 0x0040b844    52
                         {disp8} lea          ebp, dword ptr [esi + edi * 0x2 + 0x24]         // 0x0040b845    8d6c7e24
                         {disp8} lea          eax, dword ptr [esi + edi * 0x2 + 0x26]         // 0x0040b849    8d447e26
                         push                 ebp                                             // 0x0040b84d    55
                         push                 eax                                             // 0x0040b84e    50
                         call                 _memmove                                        // 0x0040b84f    e89ca83b00
                         {disp32} mov         cx, word ptr [esp + 0x00000220]                 // 0x0040b854    668b8c2420020000
                         add                  esp, 0x0c                                       // 0x0040b85c    83c40c
                         {disp8} mov          word ptr [ebp + 0x00], cx                       // 0x0040b85f    66894d00
                         xor.s                eax, eax                                        // 0x0040b863    33c0
                         {disp8} mov          word ptr [esi + ebx * 0x2 + 0x26], ax           // 0x0040b865    6689445e26
                         {disp32} mov         edx, dword ptr [esi + 0x00000240]               // 0x0040b86a    8b9640020000
                         {disp8} mov          word ptr [esi + edx * 0x2 + 0x24], ax           // 0x0040b870    6689445624
_jmp_addr_0x0040b875:    {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040b875    8b864c020000
                         inc                  eax                                             // 0x0040b87b    40
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040b87c    89864c020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040b882    898654020000
                         {disp32} mov         dword ptr [esi + 0x00000250], eax               // 0x0040b888    898650020000
_jmp_addr_0x0040b88e:    {disp8} lea          edi, dword ptr [esi + 0x24]                     // 0x0040b88e    8d7e24
                         push                 edi                                             // 0x0040b891    57
                         call                 _wcslen                                         // 0x0040b892    e8cbab3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040b897    8b8e50020000
                         xor.s                ebp, ebp                                        // 0x0040b89d    33ed
                         add                  esp, 0x04                                       // 0x0040b89f    83c404
                         cmp.s                ecx, ebp                                        // 0x0040b8a2    3bcd
                         {disp8} jle          _jmp_addr_0x0040b8ae                            // 0x0040b8a4    7e08
                         cmp.s                ecx, eax                                        // 0x0040b8a6    3bc8
                         {disp8} jl           _jmp_addr_0x0040b8b0                            // 0x0040b8a8    7c06
                         mov.s                ecx, eax                                        // 0x0040b8aa    8bc8
                         {disp8} jmp          _jmp_addr_0x0040b8b0                            // 0x0040b8ac    eb02
_jmp_addr_0x0040b8ae:    xor.s                ecx, ecx                                        // 0x0040b8ae    33c9
_jmp_addr_0x0040b8b0:    {disp32} mov         dword ptr [esi + 0x00000250], ecx               // 0x0040b8b0    898e50020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000254]               // 0x0040b8b6    8b8e54020000
                         cmp.s                ecx, ebp                                        // 0x0040b8bc    3bcd
                         {disp8} jle          _jmp_addr_0x0040b8c8                            // 0x0040b8be    7e08
                         cmp.s                ecx, eax                                        // 0x0040b8c0    3bc8
                         {disp8} jl           _jmp_addr_0x0040b8ca                            // 0x0040b8c2    7c06
                         mov.s                ecx, eax                                        // 0x0040b8c4    8bc8
                         {disp8} jmp          _jmp_addr_0x0040b8ca                            // 0x0040b8c6    eb02
_jmp_addr_0x0040b8c8:    xor.s                ecx, ecx                                        // 0x0040b8c8    33c9
_jmp_addr_0x0040b8ca:    {disp32} mov         dword ptr [esi + 0x00000254], ecx               // 0x0040b8ca    898e54020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040b8d0    8b8e4c020000
                         cmp.s                ecx, ebp                                        // 0x0040b8d6    3bcd
                         {disp8} jle          _jmp_addr_0x0040b8e2                            // 0x0040b8d8    7e08
                         cmp.s                ecx, eax                                        // 0x0040b8da    3bc8
                         {disp8} jl           _jmp_addr_0x0040b8e4                            // 0x0040b8dc    7c06
                         mov.s                ecx, eax                                        // 0x0040b8de    8bc8
                         {disp8} jmp          _jmp_addr_0x0040b8e4                            // 0x0040b8e0    eb02
_jmp_addr_0x0040b8e2:    xor.s                ecx, ecx                                        // 0x0040b8e2    33c9
_jmp_addr_0x0040b8e4:    {disp32} mov         dword ptr [esi + 0x0000024c], ecx               // 0x0040b8e4    898e4c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000258]               // 0x0040b8ea    8b8e58020000
                         cmp.s                ecx, ebp                                        // 0x0040b8f0    3bcd
                         {disp8} jle          _jmp_addr_0x0040b8fc                            // 0x0040b8f2    7e08
                         cmp.s                ecx, eax                                        // 0x0040b8f4    3bc8
                         {disp8} jl           _jmp_addr_0x0040b8fe                            // 0x0040b8f6    7c06
                         mov.s                ecx, eax                                        // 0x0040b8f8    8bc8
                         {disp8} jmp          _jmp_addr_0x0040b8fe                            // 0x0040b8fa    eb02
_jmp_addr_0x0040b8fc:    xor.s                ecx, ecx                                        // 0x0040b8fc    33c9
_jmp_addr_0x0040b8fe:    {disp32} mov         eax, dword ptr [esi + 0x00000240]               // 0x0040b8fe    8b8640020000
                         {disp32} mov         dword ptr [esi + 0x00000258], ecx               // 0x0040b904    898e58020000
                         {disp8} mov          word ptr [esi + eax * 0x2 + 0x24], bp           // 0x0040b90a    66896c4624
                         {disp32} mov         ecx, dword ptr [esi + 0x00000240]               // 0x0040b90f    8b8e40020000
                         {disp32} mov         word ptr [esi + ecx * 0x2 + 0x00000262], bp     // 0x0040b915    6689ac4e62020000
                         {disp32} mov         al, byte ptr [esi + 0x00000260]                 // 0x0040b91d    8a8660020000
                         test                 al, al                                          // 0x0040b923    84c0
                         push                 edi                                             // 0x0040b925    57
                         {disp8} je           _jmp_addr_0x0040b95c                            // 0x0040b926    7434
                         call                 _wcslen                                         // 0x0040b928    e835ab3b00
                         mov.s                edx, eax                                        // 0x0040b92d    8bd0
                         add                  esp, 0x04                                       // 0x0040b92f    83c404
                         xor.s                eax, eax                                        // 0x0040b932    33c0
                         cmp.s                edx, ebp                                        // 0x0040b934    3bd5
                         {disp8} jle          _jmp_addr_0x0040b950                            // 0x0040b936    7e18
                         mov.s                ecx, edx                                        // 0x0040b938    8bca
                         shr                  ecx, 1                                          // 0x0040b93a    d1e9
                         {disp32} lea         edi, dword ptr [esi + 0x00000262]               // 0x0040b93c    8dbe62020000
                         mov                  eax, 0x00230023                                 // 0x0040b942    b823002300
                         rep stosd                                                            // 0x0040b947    f3ab
                         adc.s                ecx, ecx                                        // 0x0040b949    13c9
                         data16 rep stosd                                                     // 0x0040b94b    66f3ab
                         mov.s                eax, edx                                        // 0x0040b94e    8bc2
_jmp_addr_0x0040b950:    xor.s                ebp, ebp                                        // 0x0040b950    33ed
                         {disp32} mov         word ptr [esi + eax * 0x2 + 0x00000262], bp     // 0x0040b952    6689ac4662020000
                         {disp8} jmp          _jmp_addr_0x0040b96b                            // 0x0040b95a    eb0f
_jmp_addr_0x0040b95c:    {disp32} lea         edx, dword ptr [esi + 0x00000262]               // 0x0040b95c    8d9662020000
                         push                 edx                                             // 0x0040b962    52
                         call                 _wcscpy                                         // 0x0040b963    e84ea63b00
                         add                  esp, 0x08                                       // 0x0040b968    83c408
_jmp_addr_0x0040b96b:    {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040b96b    8b864c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], eax               // 0x0040b971    898644020000
                         {disp32} mov         dword ptr [esi + 0x00000248], eax               // 0x0040b977    898648020000
                         cmp                  dword ptr [data_bytes + 0x4c6104], ebp          // 0x0040b97d    392d04c1e800
                         {disp32} je          _jmp_addr_0x0040baa8                            // 0x0040b983    0f841f010000
                         {disp32} mov         cl, byte ptr [esi + 0x00000228]                 // 0x0040b989    8a8e28020000
                         test                 cl, cl                                          // 0x0040b98f    84c9
                         {disp32} je          _jmp_addr_0x0040baa8                            // 0x0040b991    0f8411010000
                         cmp                  dword ptr [data_bytes + 0x286d00], ebp          // 0x0040b997    392d00cdc400
                         {disp32} je          _jmp_addr_0x0040baa8                            // 0x0040b99d    0f8405010000
                         cmp.s                eax, ebp                                        // 0x0040b9a3    3bc5
                         {disp32} jl          _jmp_addr_0x0040baa8                            // 0x0040b9a5    0f8cfd000000
                         {disp32} lea         ebx, dword ptr [esi + 0x00000262]               // 0x0040b9ab    8d9e62020000
                         push                 ebx                                             // 0x0040b9b1    53
                         call                 _wcslen                                         // 0x0040b9b2    e8abaa3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040b9b7    8b8e4c020000
                         add                  esp, 0x04                                       // 0x0040b9bd    83c404
                         cmp.s                ecx, eax                                        // 0x0040b9c0    3bc8
                         {disp32} jg          _jmp_addr_0x0040baa8                            // 0x0040b9c2    0f8fe0000000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]          // 0x0040b9c8    8b0d04c1e800
                         call                 @Composition_Get__Q24slim5TbIMEFv@4             // 0x0040b9ce    e87d833e00
                         mov.s                edi, eax                                        // 0x0040b9d3    8bf8
                         cmp.s                edi, ebp                                        // 0x0040b9d5    3bfd
                         {disp8} je           _jmp_addr_0x0040ba27                            // 0x0040b9d7    744e
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040b9d9    8b864c020000
                         {disp32} lea         ecx, dword ptr [esi + eax * 0x2 + 0x00000262]   // 0x0040b9df    8d8c4662020000
                         push                 ecx                                             // 0x0040b9e6    51
                         {disp8} lea          edx, dword ptr [esp + 0x14]                     // 0x0040b9e7    8d542414
                         push                 edx                                             // 0x0040b9eb    52
                         call                 _wcscpy                                         // 0x0040b9ec    e8c5a53b00
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040b9f1    8b864c020000
                         {disp32} lea         ecx, dword ptr [esi + eax * 0x2 + 0x00000262]   // 0x0040b9f7    8d8c4662020000
                         push                 edi                                             // 0x0040b9fe    57
                         push                 ecx                                             // 0x0040b9ff    51
                         call                 _wcscpy                                         // 0x0040ba00    e8b1a53b00
                         {disp8} lea          edx, dword ptr [esp + 0x20]                     // 0x0040ba05    8d542420
                         push                 edx                                             // 0x0040ba09    52
                         push                 ebx                                             // 0x0040ba0a    53
                         call                 _wcscat                                         // 0x0040ba0b    e87ca53b00
                         push                 edi                                             // 0x0040ba10    57
                         call                 _wcslen                                         // 0x0040ba11    e84caa3b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000248]               // 0x0040ba16    8b8e48020000
                         add                  esp, 0x1c                                       // 0x0040ba1c    83c41c
                         add.s                ecx, eax                                        // 0x0040ba1f    03c8
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx               // 0x0040ba21    898e48020000
_jmp_addr_0x0040ba27:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040ba27    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                     // 0x0040ba2d    8b4e10
                         {disp8} mov          dword ptr [eax + 0x10], ecx                     // 0x0040ba30    894810
                         {disp8} mov          edx, dword ptr [esi + 0x10]                     // 0x0040ba33    8b5610
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040ba36    8b863c020000
                         sub                  edx, 0x00000096                                 // 0x0040ba3c    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x08], edx                     // 0x0040ba42    895008
                         call                 _GetSmallTextSize__Fv                           // 0x0040ba45    e8c6bfffff
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]               // 0x0040ba4a    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x20], eax                     // 0x0040ba50    894120
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]               // 0x0040ba53    8b963c020000
                         {disp32} mov         dword ptr [edx + 0x00000240], 0x0000000a        // 0x0040ba59    c782400200000a000000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                     // 0x0040ba63    8b4614
                         cmp                  eax, 0x00000190                                 // 0x0040ba66    3d90010000
                         {disp8} jge          _jmp_addr_0x0040ba8a                            // 0x0040ba6b    7d1d
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]               // 0x0040ba6d    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x0c], eax                     // 0x0040ba73    89410c
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040ba76    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x0c]                     // 0x0040ba7c    8b500c
                         add                  edx, 0x00000096                                 // 0x0040ba7f    81c296000000
                         {disp8} mov          dword ptr [eax + 0x14], edx                     // 0x0040ba85    895014
                         {disp8} jmp          _jmp_addr_0x0040baa8                            // 0x0040ba88    eb1e
_jmp_addr_0x0040ba8a:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040ba8a    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                     // 0x0040ba90    8b4e0c
                         {disp8} mov          dword ptr [eax + 0x14], ecx                     // 0x0040ba93    894814
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040ba96    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x14]                     // 0x0040ba9c    8b5014
                         sub                  edx, 0x00000096                                 // 0x0040ba9f    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x0c], edx                     // 0x0040baa5    89500c
_jmp_addr_0x0040baa8:    {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040baa8    8b8650020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000254]               // 0x0040baae    8b8e54020000
                         cmp.s                eax, ecx                                        // 0x0040bab4    3bc1
                         {disp8} jle          _jmp_addr_0x0040bac4                            // 0x0040bab6    7e0c
                         {disp32} mov         dword ptr [esi + 0x00000250], ecx               // 0x0040bab8    898e50020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040babe    898654020000
_jmp_addr_0x0040bac4:    {disp32} mov         eax, dword ptr [esi + 0x00000248]               // 0x0040bac4    8b8648020000
                         cmp                  dword ptr [esi + 0x00000258], eax               // 0x0040baca    398658020000
                         {disp8} jle          _jmp_addr_0x0040bad8                            // 0x0040bad0    7e06
                         {disp32} mov         dword ptr [esi + 0x00000258], eax               // 0x0040bad2    898658020000
_jmp_addr_0x0040bad8:    pop                  edi                                             // 0x0040bad8    5f
                         pop                  esi                                             // 0x0040bad9    5e
                         pop                  ebp                                             // 0x0040bada    5d
                         pop                  ebx                                             // 0x0040badb    5b
                         add                  esp, 0x00000200                                 // 0x0040badc    81c400020000
                         ret                  0x0004                                          // 0x0040bae2    c20400
                         nop                                                                  // 0x0040bae5    90
                         nop                                                                  // 0x0040bae6    90
                         nop                                                                  // 0x0040bae7    90
                         nop                                                                  // 0x0040bae8    90
                         nop                                                                  // 0x0040bae9    90
                         nop                                                                  // 0x0040baea    90
                         nop                                                                  // 0x0040baeb    90
                         nop                                                                  // 0x0040baec    90
                         nop                                                                  // 0x0040baed    90
                         nop                                                                  // 0x0040baee    90
                         nop                                                                  // 0x0040baef    90
_KeyDown__9SetupEditFii:
                         sub                  esp, 0x00000204                                 // 0x0040baf0    81ec04020000
                         push                 esi                                             // 0x0040baf6    56
                         mov.s                esi, ecx                                        // 0x0040baf7    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x0000025c]               // 0x0040baf9    8b865c020000
                         test                 eax, eax                                        // 0x0040baff    85c0
                         {disp32} je          _jmp_addr_0x0040bf99                            // 0x0040bb01    0f8492040000
                         push                 ebx                                             // 0x0040bb07    53
                         push                 ebp                                             // 0x0040bb08    55
                         push                 edi                                             // 0x0040bb09    57
                         {disp8} lea          edi, dword ptr [esi + 0x24]                     // 0x0040bb0a    8d7e24
                         push                 edi                                             // 0x0040bb0d    57
                         call                 _wcslen                                         // 0x0040bb0e    e84fa93b00
                         {disp32} mov         ebp, dword ptr [esi + 0x00000254]               // 0x0040bb13    8bae54020000
                         {disp32} mov         ebx, dword ptr [esi + 0x00000250]               // 0x0040bb19    8b9e50020000
                         {disp8} mov          dword ptr [esp + 0x14], eax                     // 0x0040bb1f    89442414
                         {disp32} mov         eax, dword ptr [esp + 0x0000021c]               // 0x0040bb23    8b84241c020000
                         mov.s                ecx, ebp                                        // 0x0040bb2a    8bcd
                         add                  eax, -0x0f                                      // 0x0040bb2c    83c0f1
                         add                  esp, 0x04                                       // 0x0040bb2f    83c404
                         sub.s                ecx, ebx                                        // 0x0040bb32    2bcb
                         cmp                  eax, 0x000000c4                                 // 0x0040bb34    3dc4000000
                         {disp32} ja          _jmp_addr_0x0040bd4c                            // 0x0040bb39    0f870d020000
                         xor.s                edx, edx                                        // 0x0040bb3f    33d2
                         {disp32} mov         dl, byte ptr [eax + 0x0040bfc0]                 // 0x0040bb41    8a90c0bf4000
                         jmp                  dword ptr [edx*4 + 0x40bfa4]                    // 0x0040bb47    ff2495a4bf4000
                         {disp32} mov         eax, dword ptr [esi + 0x00000234]               // 0x0040bb4e    8b8634020000
                         test                 eax, eax                                        // 0x0040bb54    85c0
                         {disp32} je          _jmp_addr_0x0040bd4c                            // 0x0040bb56    0f84f0010000
                         {disp32} mov         ecx, dword ptr [eax + 0x000000b0]               // 0x0040bb5c    8b88b0000000
                         test                 ecx, ecx                                        // 0x0040bb62    85c9
                         {disp32} je          _jmp_addr_0x0040bd4c                            // 0x0040bb64    0f84e2010000
                         push                 0x0                                             // 0x0040bb6a    6a00
                         push                 0x0                                             // 0x0040bb6c    6a00
                         push                 esi                                             // 0x0040bb6e    56
                         push                 eax                                             // 0x0040bb6f    50
                         push                 0x1                                             // 0x0040bb70    6a01
                         call                 ecx                                             // 0x0040bb72    ffd1
                         {disp32} mov         ecx, dword ptr [esp + 0x0000021c]               // 0x0040bb74    8b8c241c020000
                         xor.s                eax, eax                                        // 0x0040bb7b    33c0
                         {disp32} mov         ax, word ptr [rdata_bytes + 0xf861c]            // 0x0040bb7d    66a11c169a00
                         test                 eax, ecx                                        // 0x0040bb83    85c8
                         {disp32} mov         ecx, dword ptr [esi + 0x00000234]               // 0x0040bb85    8b8e34020000
                         {disp8} je           _jmp_addr_0x0040bb97                            // 0x0040bb8b    740a
                         call                 ?SetFocusPrev@SetupBox@@QAEXXZ                  // 0x0040bb8d    e86e550000
                         {disp32} jmp         _jmp_addr_0x0040bd4c                            // 0x0040bb92    e9b5010000
_jmp_addr_0x0040bb97:    call                 ?SetFocusNext@SetupBox@@QAEXXZ                  // 0x0040bb97    e8f4540000
                         {disp32} jmp         _jmp_addr_0x0040bd4c                            // 0x0040bb9c    e9ab010000
                         {disp32} mov         edi, dword ptr [esp + 0x0000021c]               // 0x0040bba1    8bbc241c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040bba8    8b8e4c020000
                         xor.s                edx, edx                                        // 0x0040bbae    33d2
                         {disp32} mov         dx, word ptr [rdata_bytes + 0xf861c]            // 0x0040bbb0    668b151c169a00
                         {disp8} lea          eax, dword ptr [ecx + -0x01]                    // 0x0040bbb7    8d41ff
                         test                 edx, edi                                        // 0x0040bbba    85fa
                         {disp8} je           _jmp_addr_0x0040bc09                            // 0x0040bbbc    744b
                         cmp.s                ebx, ebp                                        // 0x0040bbbe    3bdd
                         {disp8} je           _jmp_addr_0x0040bc0f                            // 0x0040bbc0    744d
_jmp_addr_0x0040bbc2:    cmp.s                ecx, ebx                                        // 0x0040bbc2    3bcb
                         {disp8} je           _jmp_addr_0x0040bc0f                            // 0x0040bbc4    7449
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bbc6    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bbcc    89864c020000
                         {disp32} jmp         _jmp_addr_0x0040bd4c                            // 0x0040bbd2    e975010000
                         {disp32} mov         edi, dword ptr [esp + 0x0000021c]               // 0x0040bbd7    8bbc241c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040bbde    8b8e4c020000
                         xor.s                edx, edx                                        // 0x0040bbe4    33d2
                         {disp32} mov         dx, word ptr [rdata_bytes + 0xf861c]            // 0x0040bbe6    668b151c169a00
                         {disp8} lea          eax, dword ptr [ecx + 0x01]                     // 0x0040bbed    8d4101
                         test                 edx, edi                                        // 0x0040bbf0    85fa
                         {disp8} je           _jmp_addr_0x0040bc09                            // 0x0040bbf2    7415
                         cmp.s                ebx, ebp                                        // 0x0040bbf4    3bdd
                         {disp8} jne          _jmp_addr_0x0040bbc2                            // 0x0040bbf6    75ca
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bbf8    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bbfe    89864c020000
                         {disp32} jmp         _jmp_addr_0x0040bd4c                            // 0x0040bc04    e943010000
_jmp_addr_0x0040bc09:    {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bc09    898654020000
_jmp_addr_0x0040bc0f:    {disp32} mov         dword ptr [esi + 0x00000250], eax               // 0x0040bc0f    898650020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bc15    89864c020000
                         {disp32} jmp         _jmp_addr_0x0040bd4c                            // 0x0040bc1b    e92c010000
                         {disp32} mov         edx, dword ptr [esp + 0x0000021c]               // 0x0040bc20    8b94241c020000
                         xor.s                eax, eax                                        // 0x0040bc27    33c0
                         xor.s                ecx, ecx                                        // 0x0040bc29    33c9
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bc2b    89864c020000
                         {disp32} mov         cx, word ptr [rdata_bytes + 0xf861c]            // 0x0040bc31    668b0d1c169a00
                         test                 ecx, edx                                        // 0x0040bc38    85d1
                         {disp32} jne         _jmp_addr_0x0040bd46                            // 0x0040bc3a    0f8506010000
                         {disp32} jmp         _jmp_addr_0x0040bd40                            // 0x0040bc40    e9fb000000
                         {disp8} mov          eax, dword ptr [esp + 0x10]                     // 0x0040bc45    8b442410
                         {disp32} mov         ecx, dword ptr [esp + 0x0000021c]               // 0x0040bc49    8b8c241c020000
                         xor.s                edx, edx                                        // 0x0040bc50    33d2
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bc52    89864c020000
                         {disp32} mov         dx, word ptr [rdata_bytes + 0xf861c]            // 0x0040bc58    668b151c169a00
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bc5f    898654020000
                         test                 edx, ecx                                        // 0x0040bc65    85ca
                         {disp32} jne         _jmp_addr_0x0040bd4c                            // 0x0040bc67    0f85df000000
                         {disp32} jmp         _jmp_addr_0x0040bd46                            // 0x0040bc6d    e9d4000000
                         test                 ecx, ecx                                        // 0x0040bc72    85c9
                         {disp8} je           _jmp_addr_0x0040bcdc                            // 0x0040bc74    7466
                         push                 edi                                             // 0x0040bc76    57
                         call                 _wcslen                                         // 0x0040bc77    e8e6a73b00
                         add                  esp, 0x04                                       // 0x0040bc7c    83c404
                         test                 ebx, ebx                                        // 0x0040bc7f    85db
                         mov.s                edi, eax                                        // 0x0040bc81    8bf8
                         {disp8} jle          _jmp_addr_0x0040bc8d                            // 0x0040bc83    7e08
                         cmp.s                ebx, edi                                        // 0x0040bc85    3bdf
                         {disp8} jl           _jmp_addr_0x0040bc8f                            // 0x0040bc87    7c06
                         mov.s                ebx, edi                                        // 0x0040bc89    8bdf
                         {disp8} jmp          _jmp_addr_0x0040bc8f                            // 0x0040bc8b    eb02
_jmp_addr_0x0040bc8d:    xor.s                ebx, ebx                                        // 0x0040bc8d    33db
_jmp_addr_0x0040bc8f:    test                 ebp, ebp                                        // 0x0040bc8f    85ed
                         {disp8} jle          _jmp_addr_0x0040bc9b                            // 0x0040bc91    7e08
                         cmp.s                ebp, edi                                        // 0x0040bc93    3bef
                         {disp8} jl           _jmp_addr_0x0040bc9d                            // 0x0040bc95    7c06
                         mov.s                ebp, edi                                        // 0x0040bc97    8bef
                         {disp8} jmp          _jmp_addr_0x0040bc9d                            // 0x0040bc99    eb02
_jmp_addr_0x0040bc9b:    xor.s                ebp, ebp                                        // 0x0040bc9b    33ed
_jmp_addr_0x0040bc9d:    mov.s                eax, ebp                                        // 0x0040bc9d    8bc5
                         neg                  eax                                             // 0x0040bc9f    f7d8
                         shl                  eax, 0x1f                                       // 0x0040bca1    c1e01f
                         sub.s                eax, ebp                                        // 0x0040bca4    2bc5
                         add.s                eax, edi                                        // 0x0040bca6    03c7
                         shl                  eax, 1                                          // 0x0040bca8    d1e0
                         push                 eax                                             // 0x0040bcaa    50
                         {disp8} lea          ecx, dword ptr [esi + ebp * 0x2 + 0x24]         // 0x0040bcab    8d4c6e24
                         push                 ecx                                             // 0x0040bcaf    51
                         {disp8} lea          edx, dword ptr [esi + ebx * 0x2 + 0x24]         // 0x0040bcb0    8d545e24
                         push                 edx                                             // 0x0040bcb4    52
                         call                 _memmove                                        // 0x0040bcb5    e836a43b00
                         sub.s                edi, ebp                                        // 0x0040bcba    2bfd
                         add                  esp, 0x0c                                       // 0x0040bcbc    83c40c
                         add.s                edi, ebx                                        // 0x0040bcbf    03fb
                         {disp8} mov          word ptr [esi + edi * 0x2 + 0x24], 0x0000       // 0x0040bcc1    66c7447e240000
                         {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040bcc8    8b8650020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bcce    898654020000
                         {disp32} mov         dword ptr [esi + 0x0000024c], eax               // 0x0040bcd4    89864c020000
                         {disp8} jmp          _jmp_addr_0x0040bd4c                            // 0x0040bcda    eb70
_jmp_addr_0x0040bcdc:    {disp32} mov         ebx, dword ptr [esi + 0x0000024c]               // 0x0040bcdc    8b9e4c020000
                         {disp8} lea          eax, dword ptr [esi + 0x24]                     // 0x0040bce2    8d4624
                         push                 eax                                             // 0x0040bce5    50
                         {disp8} lea          ebp, dword ptr [ebx + 0x01]                     // 0x0040bce6    8d6b01
                         call                 _wcslen                                         // 0x0040bce9    e874a73b00
                         add                  esp, 0x04                                       // 0x0040bcee    83c404
                         test                 ebx, ebx                                        // 0x0040bcf1    85db
                         mov.s                edi, eax                                        // 0x0040bcf3    8bf8
                         {disp8} jle          _jmp_addr_0x0040bcff                            // 0x0040bcf5    7e08
                         cmp.s                ebx, edi                                        // 0x0040bcf7    3bdf
                         {disp8} jl           _jmp_addr_0x0040bd01                            // 0x0040bcf9    7c06
                         mov.s                ebx, edi                                        // 0x0040bcfb    8bdf
                         {disp8} jmp          _jmp_addr_0x0040bd01                            // 0x0040bcfd    eb02
_jmp_addr_0x0040bcff:    xor.s                ebx, ebx                                        // 0x0040bcff    33db
_jmp_addr_0x0040bd01:    test                 ebp, ebp                                        // 0x0040bd01    85ed
                         {disp8} jle          _jmp_addr_0x0040bd0d                            // 0x0040bd03    7e08
                         cmp.s                ebp, edi                                        // 0x0040bd05    3bef
                         {disp8} jl           _jmp_addr_0x0040bd0f                            // 0x0040bd07    7c06
                         mov.s                ebp, edi                                        // 0x0040bd09    8bef
                         {disp8} jmp          _jmp_addr_0x0040bd0f                            // 0x0040bd0b    eb02
_jmp_addr_0x0040bd0d:    xor.s                ebp, ebp                                        // 0x0040bd0d    33ed
_jmp_addr_0x0040bd0f:    mov.s                eax, ebp                                        // 0x0040bd0f    8bc5
                         neg                  eax                                             // 0x0040bd11    f7d8
                         shl                  eax, 0x1f                                       // 0x0040bd13    c1e01f
                         sub.s                eax, ebp                                        // 0x0040bd16    2bc5
                         add.s                eax, edi                                        // 0x0040bd18    03c7
                         shl                  eax, 1                                          // 0x0040bd1a    d1e0
                         push                 eax                                             // 0x0040bd1c    50
                         {disp8} lea          ecx, dword ptr [esi + ebp * 0x2 + 0x24]         // 0x0040bd1d    8d4c6e24
                         push                 ecx                                             // 0x0040bd21    51
                         {disp8} lea          edx, dword ptr [esi + ebx * 0x2 + 0x24]         // 0x0040bd22    8d545e24
                         push                 edx                                             // 0x0040bd26    52
                         call                 _memmove                                        // 0x0040bd27    e8c4a33b00
                         sub.s                edi, ebp                                        // 0x0040bd2c    2bfd
                         add                  esp, 0x0c                                       // 0x0040bd2e    83c40c
                         add.s                edi, ebx                                        // 0x0040bd31    03fb
                         {disp8} mov          word ptr [esi + edi * 0x2 + 0x24], 0x0000       // 0x0040bd33    66c7447e240000
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040bd3a    8b864c020000
_jmp_addr_0x0040bd40:    {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bd40    898654020000
_jmp_addr_0x0040bd46:    {disp32} mov         dword ptr [esi + 0x00000250], eax               // 0x0040bd46    898650020000
_jmp_addr_0x0040bd4c:    {disp8} lea          edi, dword ptr [esi + 0x24]                     // 0x0040bd4c    8d7e24
                         push                 edi                                             // 0x0040bd4f    57
                         call                 _wcslen                                         // 0x0040bd50    e80da73b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000250]               // 0x0040bd55    8b8e50020000
                         xor.s                ebp, ebp                                        // 0x0040bd5b    33ed
                         add                  esp, 0x04                                       // 0x0040bd5d    83c404
                         cmp.s                ecx, ebp                                        // 0x0040bd60    3bcd
                         {disp8} jle          _jmp_addr_0x0040bd6c                            // 0x0040bd62    7e08
                         cmp.s                ecx, eax                                        // 0x0040bd64    3bc8
                         {disp8} jl           _jmp_addr_0x0040bd6e                            // 0x0040bd66    7c06
                         mov.s                ecx, eax                                        // 0x0040bd68    8bc8
                         {disp8} jmp          _jmp_addr_0x0040bd6e                            // 0x0040bd6a    eb02
_jmp_addr_0x0040bd6c:    xor.s                ecx, ecx                                        // 0x0040bd6c    33c9
_jmp_addr_0x0040bd6e:    {disp32} mov         dword ptr [esi + 0x00000250], ecx               // 0x0040bd6e    898e50020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000254]               // 0x0040bd74    8b8e54020000
                         cmp.s                ecx, ebp                                        // 0x0040bd7a    3bcd
                         {disp8} jle          _jmp_addr_0x0040bd86                            // 0x0040bd7c    7e08
                         cmp.s                ecx, eax                                        // 0x0040bd7e    3bc8
                         {disp8} jl           _jmp_addr_0x0040bd88                            // 0x0040bd80    7c06
                         mov.s                ecx, eax                                        // 0x0040bd82    8bc8
                         {disp8} jmp          _jmp_addr_0x0040bd88                            // 0x0040bd84    eb02
_jmp_addr_0x0040bd86:    xor.s                ecx, ecx                                        // 0x0040bd86    33c9
_jmp_addr_0x0040bd88:    {disp32} mov         dword ptr [esi + 0x00000254], ecx               // 0x0040bd88    898e54020000
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040bd8e    8b8e4c020000
                         cmp.s                ecx, ebp                                        // 0x0040bd94    3bcd
                         {disp8} jle          _jmp_addr_0x0040bda0                            // 0x0040bd96    7e08
                         cmp.s                ecx, eax                                        // 0x0040bd98    3bc8
                         {disp8} jl           _jmp_addr_0x0040bda2                            // 0x0040bd9a    7c06
                         mov.s                ecx, eax                                        // 0x0040bd9c    8bc8
                         {disp8} jmp          _jmp_addr_0x0040bda2                            // 0x0040bd9e    eb02
_jmp_addr_0x0040bda0:    xor.s                ecx, ecx                                        // 0x0040bda0    33c9
_jmp_addr_0x0040bda2:    {disp32} mov         dword ptr [esi + 0x0000024c], ecx               // 0x0040bda2    898e4c020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000258]               // 0x0040bda8    8b8e58020000
                         cmp.s                ecx, ebp                                        // 0x0040bdae    3bcd
                         {disp8} jle          _jmp_addr_0x0040bdba                            // 0x0040bdb0    7e08
                         cmp.s                ecx, eax                                        // 0x0040bdb2    3bc8
                         {disp8} jl           _jmp_addr_0x0040bdbc                            // 0x0040bdb4    7c06
                         mov.s                ecx, eax                                        // 0x0040bdb6    8bc8
                         {disp8} jmp          _jmp_addr_0x0040bdbc                            // 0x0040bdb8    eb02
_jmp_addr_0x0040bdba:    xor.s                ecx, ecx                                        // 0x0040bdba    33c9
_jmp_addr_0x0040bdbc:    {disp32} mov         eax, dword ptr [esi + 0x00000240]               // 0x0040bdbc    8b8640020000
                         {disp32} mov         dword ptr [esi + 0x00000258], ecx               // 0x0040bdc2    898e58020000
                         {disp8} mov          word ptr [esi + eax * 0x2 + 0x24], bp           // 0x0040bdc8    66896c4624
                         {disp32} mov         ecx, dword ptr [esi + 0x00000240]               // 0x0040bdcd    8b8e40020000
                         {disp32} mov         word ptr [esi + ecx * 0x2 + 0x00000262], bp     // 0x0040bdd3    6689ac4e62020000
                         {disp32} mov         al, byte ptr [esi + 0x00000260]                 // 0x0040bddb    8a8660020000
                         test                 al, al                                          // 0x0040bde1    84c0
                         push                 edi                                             // 0x0040bde3    57
                         {disp8} je           _jmp_addr_0x0040be1a                            // 0x0040bde4    7434
                         call                 _wcslen                                         // 0x0040bde6    e877a63b00
                         mov.s                edx, eax                                        // 0x0040bdeb    8bd0
                         add                  esp, 0x04                                       // 0x0040bded    83c404
                         xor.s                eax, eax                                        // 0x0040bdf0    33c0
                         cmp.s                edx, ebp                                        // 0x0040bdf2    3bd5
                         {disp8} jle          _jmp_addr_0x0040be0e                            // 0x0040bdf4    7e18
                         mov.s                ecx, edx                                        // 0x0040bdf6    8bca
                         shr                  ecx, 1                                          // 0x0040bdf8    d1e9
                         {disp32} lea         edi, dword ptr [esi + 0x00000262]               // 0x0040bdfa    8dbe62020000
                         mov                  eax, 0x00230023                                 // 0x0040be00    b823002300
                         rep stosd                                                            // 0x0040be05    f3ab
                         adc.s                ecx, ecx                                        // 0x0040be07    13c9
                         data16 rep stosd                                                     // 0x0040be09    66f3ab
                         mov.s                eax, edx                                        // 0x0040be0c    8bc2
_jmp_addr_0x0040be0e:    xor.s                ebp, ebp                                        // 0x0040be0e    33ed
                         {disp32} mov         word ptr [esi + eax * 0x2 + 0x00000262], bp     // 0x0040be10    6689ac4662020000
                         {disp8} jmp          _jmp_addr_0x0040be29                            // 0x0040be18    eb0f
_jmp_addr_0x0040be1a:    {disp32} lea         edx, dword ptr [esi + 0x00000262]               // 0x0040be1a    8d9662020000
                         push                 edx                                             // 0x0040be20    52
                         call                 _wcscpy                                         // 0x0040be21    e890a13b00
                         add                  esp, 0x08                                       // 0x0040be26    83c408
_jmp_addr_0x0040be29:    {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040be29    8b864c020000
                         {disp32} mov         dword ptr [esi + 0x00000244], eax               // 0x0040be2f    898644020000
                         {disp32} mov         dword ptr [esi + 0x00000248], eax               // 0x0040be35    898648020000
                         cmp                  dword ptr [data_bytes + 0x4c6104], ebp          // 0x0040be3b    392d04c1e800
                         {disp32} je          _jmp_addr_0x0040bf66                            // 0x0040be41    0f841f010000
                         {disp32} mov         cl, byte ptr [esi + 0x00000228]                 // 0x0040be47    8a8e28020000
                         test                 cl, cl                                          // 0x0040be4d    84c9
                         {disp32} je          _jmp_addr_0x0040bf66                            // 0x0040be4f    0f8411010000
                         cmp                  dword ptr [data_bytes + 0x286d00], ebp          // 0x0040be55    392d00cdc400
                         {disp32} je          _jmp_addr_0x0040bf66                            // 0x0040be5b    0f8405010000
                         cmp.s                eax, ebp                                        // 0x0040be61    3bc5
                         {disp32} jl          _jmp_addr_0x0040bf66                            // 0x0040be63    0f8cfd000000
                         {disp32} lea         ebx, dword ptr [esi + 0x00000262]               // 0x0040be69    8d9e62020000
                         push                 ebx                                             // 0x0040be6f    53
                         call                 _wcslen                                         // 0x0040be70    e8eda53b00
                         {disp32} mov         ecx, dword ptr [esi + 0x0000024c]               // 0x0040be75    8b8e4c020000
                         add                  esp, 0x04                                       // 0x0040be7b    83c404
                         cmp.s                ecx, eax                                        // 0x0040be7e    3bc8
                         {disp32} jg          _jmp_addr_0x0040bf66                            // 0x0040be80    0f8fe0000000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4c6104]          // 0x0040be86    8b0d04c1e800
                         call                 @Composition_Get__Q24slim5TbIMEFv@4             // 0x0040be8c    e8bf7e3e00
                         mov.s                edi, eax                                        // 0x0040be91    8bf8
                         cmp.s                edi, ebp                                        // 0x0040be93    3bfd
                         {disp8} je           _jmp_addr_0x0040bee5                            // 0x0040be95    744e
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040be97    8b864c020000
                         {disp32} lea         ecx, dword ptr [esi + eax * 0x2 + 0x00000262]   // 0x0040be9d    8d8c4662020000
                         push                 ecx                                             // 0x0040bea4    51
                         {disp8} lea          edx, dword ptr [esp + 0x18]                     // 0x0040bea5    8d542418
                         push                 edx                                             // 0x0040bea9    52
                         call                 _wcscpy                                         // 0x0040beaa    e807a13b00
                         {disp32} mov         eax, dword ptr [esi + 0x0000024c]               // 0x0040beaf    8b864c020000
                         {disp32} lea         ecx, dword ptr [esi + eax * 0x2 + 0x00000262]   // 0x0040beb5    8d8c4662020000
                         push                 edi                                             // 0x0040bebc    57
                         push                 ecx                                             // 0x0040bebd    51
                         call                 _wcscpy                                         // 0x0040bebe    e8f3a03b00
                         {disp8} lea          edx, dword ptr [esp + 0x24]                     // 0x0040bec3    8d542424
                         push                 edx                                             // 0x0040bec7    52
                         push                 ebx                                             // 0x0040bec8    53
                         call                 _wcscat                                         // 0x0040bec9    e8bea03b00
                         push                 edi                                             // 0x0040bece    57
                         call                 _wcslen                                         // 0x0040becf    e88ea53b00
                         {disp32} mov         ecx, dword ptr [esi + 0x00000248]               // 0x0040bed4    8b8e48020000
                         add                  esp, 0x1c                                       // 0x0040beda    83c41c
                         add.s                ecx, eax                                        // 0x0040bedd    03c8
                         {disp32} mov         dword ptr [esi + 0x00000248], ecx               // 0x0040bedf    898e48020000
_jmp_addr_0x0040bee5:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040bee5    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                     // 0x0040beeb    8b4e10
                         {disp8} mov          dword ptr [eax + 0x10], ecx                     // 0x0040beee    894810
                         {disp8} mov          edx, dword ptr [esi + 0x10]                     // 0x0040bef1    8b5610
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040bef4    8b863c020000
                         sub                  edx, 0x00000096                                 // 0x0040befa    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x08], edx                     // 0x0040bf00    895008
                         call                 _GetSmallTextSize__Fv                           // 0x0040bf03    e808bbffff
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]               // 0x0040bf08    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x20], eax                     // 0x0040bf0e    894120
                         {disp32} mov         edx, dword ptr [esi + 0x0000023c]               // 0x0040bf11    8b963c020000
                         {disp32} mov         dword ptr [edx + 0x00000240], 0x0000000a        // 0x0040bf17    c782400200000a000000
                         {disp8} mov          eax, dword ptr [esi + 0x14]                     // 0x0040bf21    8b4614
                         cmp                  eax, 0x00000190                                 // 0x0040bf24    3d90010000
                         {disp8} jge          _jmp_addr_0x0040bf48                            // 0x0040bf29    7d1d
                         {disp32} mov         ecx, dword ptr [esi + 0x0000023c]               // 0x0040bf2b    8b8e3c020000
                         {disp8} mov          dword ptr [ecx + 0x0c], eax                     // 0x0040bf31    89410c
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040bf34    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x0c]                     // 0x0040bf3a    8b500c
                         add                  edx, 0x00000096                                 // 0x0040bf3d    81c296000000
                         {disp8} mov          dword ptr [eax + 0x14], edx                     // 0x0040bf43    895014
                         {disp8} jmp          _jmp_addr_0x0040bf66                            // 0x0040bf46    eb1e
_jmp_addr_0x0040bf48:    {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040bf48    8b863c020000
                         {disp8} mov          ecx, dword ptr [esi + 0x0c]                     // 0x0040bf4e    8b4e0c
                         {disp8} mov          dword ptr [eax + 0x14], ecx                     // 0x0040bf51    894814
                         {disp32} mov         eax, dword ptr [esi + 0x0000023c]               // 0x0040bf54    8b863c020000
                         {disp8} mov          edx, dword ptr [eax + 0x14]                     // 0x0040bf5a    8b5014
                         sub                  edx, 0x00000096                                 // 0x0040bf5d    81ea96000000
                         {disp8} mov          dword ptr [eax + 0x0c], edx                     // 0x0040bf63    89500c
_jmp_addr_0x0040bf66:    {disp32} mov         eax, dword ptr [esi + 0x00000250]               // 0x0040bf66    8b8650020000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000254]               // 0x0040bf6c    8b8e54020000
                         cmp.s                eax, ecx                                        // 0x0040bf72    3bc1
                         pop                  edi                                             // 0x0040bf74    5f
                         pop                  ebp                                             // 0x0040bf75    5d
                         pop                  ebx                                             // 0x0040bf76    5b
                         {disp8} jle          _jmp_addr_0x0040bf85                            // 0x0040bf77    7e0c
                         {disp32} mov         dword ptr [esi + 0x00000250], ecx               // 0x0040bf79    898e50020000
                         {disp32} mov         dword ptr [esi + 0x00000254], eax               // 0x0040bf7f    898654020000
_jmp_addr_0x0040bf85:    {disp32} mov         eax, dword ptr [esi + 0x00000248]               // 0x0040bf85    8b8648020000
                         cmp                  dword ptr [esi + 0x00000258], eax               // 0x0040bf8b    398658020000
                         {disp8} jle          _jmp_addr_0x0040bf99                            // 0x0040bf91    7e06
                         {disp32} mov         dword ptr [esi + 0x00000258], eax               // 0x0040bf93    898658020000
_jmp_addr_0x0040bf99:    pop                  esi                                             // 0x0040bf99    5e
                         add                  esp, 0x00000204                                 // 0x0040bf9a    81c404020000
                         ret                  0x0008                                          // 0x0040bfa0    c20800

// Snippet: db, [0x0040bfa3, 0x0040bfa4)
.byte 0x90                        // 0x0040bfa3

// Snippet: jmptbl, [0x0040bfa4, 0x0040bfc0)
.byte 0x4e, 0xbb, 0x40, 0x00      // 0x0040bfa4
.byte 0x20, 0xbc, 0x40, 0x00      // 0x0040bfa8
.byte 0xa1, 0xbb, 0x40, 0x00      // 0x0040bfac
.byte 0xd7, 0xbb, 0x40, 0x00      // 0x0040bfb0
.byte 0x45, 0xbc, 0x40, 0x00      // 0x0040bfb4
.byte 0x72, 0xbc, 0x40, 0x00      // 0x0040bfb8
.byte 0x4c, 0xbd, 0x40, 0x00      // 0x0040bfbc

// Snippet: ijmptbl, [0x0040bfc0, 0x0040c085)
.byte 0x00, 0x06, 0x06, 0x06      // 0x0040bfc0
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfc4
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfc8
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfcc
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfd0
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfd4
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfd8
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfdc
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfe0
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfe4
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfe8
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bfec
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bff0
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bff4
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bff8
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040bffc
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c000
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c004
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c008
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c00c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c010
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c014
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c018
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c01c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c020
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c024
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c028
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c02c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c030
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c034
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c038
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c03c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c040
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c044
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c048
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c04c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c050
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c054
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c058
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c05c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c060
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c064
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c068
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c06c
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c070
.byte 0x06, 0x06, 0x06, 0x06      // 0x0040c074
.byte 0x01, 0x06, 0x06, 0x06      // 0x0040c078
.byte 0x02, 0x06, 0x03, 0x06      // 0x0040c07c
.byte 0x04, 0x06, 0x06, 0x06      // 0x0040c080
.byte 0x05                        // 0x0040c084

// Snippet: db, [0x0040c085, 0x0040c090)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040c085
.byte 0x90, 0x90, 0x90, 0x90      // 0x0040c089
.byte 0x90, 0x90, 0x90            // 0x0040c08d

