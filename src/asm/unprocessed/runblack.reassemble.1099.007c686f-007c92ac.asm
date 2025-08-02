.intel_syntax noprefix
.align 0

.extern rdata_bytes
.extern data_bytes

.extern putc
.extern  ___dl__FPv
.extern _toupper
.extern _jmp_addr_0x007ca828
.extern _memset
.extern __lock_file
.extern __lock_file2
.extern __unlock_file
.extern __unlock_file2
.extern __lock
.extern __unlock
.extern ___crtLCMapStringA
.extern __isctype
.extern __setdefaultprecision
.extern __flsbuf
.extern __output
.extern __woutput
.extern __callnewh
.extern __heap_init
.extern _jmp_addr_0x007ce6f1
.extern _jmp_addr_0x007ce71c
.extern _jmp_addr_0x007cea45
.extern _jmp_addr_0x007ceefa
.extern _jmp_addr_0x007cf86e
.extern _jmp_addr_0x007cf8c5
.extern _jmp_addr_0x007cf90a
.extern _jmp_addr_0x007cfc36
.extern __input
.extern _iswctype
.extern __mbsnbicoll
.extern ___wtomb_environ
.extern __stbuf
.extern __ftbuf
.extern __openfile
.extern __getstream
.extern __close
.extern __freebuf
.extern _ldexp
.extern __set_exp
.extern __sptype
.extern __decomp
.extern __handle_qnan1
.extern __handle_qnan2
.extern __except1
.extern __except2
.extern __ctrlfp
.extern __startTwoArgErrorHandling
.extern __startOneArgErrorHandling
.extern __twoToTOS
.extern __load_CW
.extern __convertTOStoQNaN
.extern __fload_withFB
.extern __checkTOS_withFB
.extern __fast_exit
.extern __math_exit
.extern __check_range_exit
.extern __filbuf
.extern __read
.extern __write
.extern __mtinit
.extern __getptd
.extern ___tzset
.extern __isindst
.extern _gmtime
.extern ___loctotime_t
.extern __powhlp
.extern __cintrindisp2
.extern __frnd
.extern ___InternalCxxFrameHandler
.extern ___FrameUnwindToState
.extern __CallSettingFrame@12
.extern ?_inconsistency@@YAXXZ
.extern _jmp_addr_0x007d4cdf
.extern _jmp_addr_0x007d4d79
.extern __ioinit
.extern _strcpy
.extern __winput
.extern _raise
.extern ___pxcptinfoptrs
.extern __FF_MSGBANNER
.extern __NMSG_WRITE
.extern __getbuf
.extern __commit
.extern __wincmdln
.extern __setenvp
.extern __setargv
.extern ___crtGetEnvironmentStringsA
.extern _jmp_addr_0x008a5168
.extern __tolower_lk

.globl _jmp_addr_0x007c8606
.globl _jmp_addr_0x007c8668
.globl _jmp_addr_0x007c87d8
.globl _jmp_addr_0x007c882a
.globl _jmp_addr_0x007c8837
.globl _jmp_addr_0x007c8859
.globl _jmp_addr_0x007c8912
.globl _jmp_addr_0x007c8a95
.globl _floor
.globl ??0exception@@QAE@ABQBD@Z
.globl ??0exception@@QAE@ABV0@@Z
.globl ??1exception@@UAE@XZ
.globl __CxxThrowException@8
.globl _strcspn
.globl ??2@YAPAXI@Z
.globl ??2@YAPAXI@Z  
.globl ??1exception@@UAE@XZ
.globl ?what@exception@@UBEPBDXZ
.globl ??_Gexception@@UAEPAXI@Z

_jmp_addr_0x007c8606:          push                 ebp                                         // 0x007c8606    55
                         mov.s                ebp, esp                                    // 0x007c8607    8bec
                         cmp                  dword ptr [ebp + 0x0c], 0x00                // 0x007c8609    837d0c00
                         push                 ebx                                         // 0x007c860d    53
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c860e    8b5d08
                         push                 edi                                         // 0x007c8611    57
                         mov.s                edi, ebx                                    // 0x007c8612    8bfb
                         {disp8} jg           _jmp_addr_0x007c861a                        // 0x007c8614    7f04
                         xor.s                eax, eax                                    // 0x007c8616    33c0
                         {disp8} jmp          _jmp_addr_0x007c8664                        // 0x007c8618    eb4a
_jmp_addr_0x007c861a:    push                 esi                                         // 0x007c861a    56
                         {disp8} mov          esi, dword ptr [ebp + 0x10]                 // 0x007c861b    8b7510
                         push                 esi                                         // 0x007c861e    56
                         call                 __lock_file                                 // 0x007c861f    e8f02b0000
                         pop                  ecx                                         // 0x007c8624    59
_jmp_addr_0x007c8625:    dec                  dword ptr [ebp + 0x0c]                      // 0x007c8625    ff4d0c
                         {disp8} je           _jmp_addr_0x007c8657                        // 0x007c8628    742d
                         dec                  dword ptr [esi + 0x04]                      // 0x007c862a    ff4e04
                         {disp8} js           _jmp_addr_0x007c8639                        // 0x007c862d    780a
                         mov                  ecx, dword ptr [esi]                        // 0x007c862f    8b0e
                         movzx                eax, byte ptr [ecx]                         // 0x007c8631    0fb601
                         inc                  ecx                                         // 0x007c8634    41
                         mov                  dword ptr [esi], ecx                        // 0x007c8635    890e
                         {disp8} jmp          _jmp_addr_0x007c8640                        // 0x007c8637    eb07
_jmp_addr_0x007c8639:    push                 esi                                         // 0x007c8639    56
                         call                 __filbuf                                    // 0x007c863a    e85d970000
                         pop                  ecx                                         // 0x007c863f    59
_jmp_addr_0x007c8640:    cmp                  eax, -0x01                                  // 0x007c8640    83f8ff
                         {disp8} je           _jmp_addr_0x007c864e                        // 0x007c8643    7409
                         mov                  byte ptr [edi], al                          // 0x007c8645    8807
                         inc                  edi                                         // 0x007c8647    47
                         cmp                  al, 0x0a                                    // 0x007c8648    3c0a
                         {disp8} je           _jmp_addr_0x007c8657                        // 0x007c864a    740b
                         {disp8} jmp          _jmp_addr_0x007c8625                        // 0x007c864c    ebd7
_jmp_addr_0x007c864e:    cmp                  edi, dword ptr [ebp + 0x08]                 // 0x007c864e    3b7d08
                         {disp8} jne          _jmp_addr_0x007c8657                        // 0x007c8651    7504
                         xor.s                ebx, ebx                                    // 0x007c8653    33db
                         {disp8} jmp          _jmp_addr_0x007c865a                        // 0x007c8655    eb03
_jmp_addr_0x007c8657:    and                  byte ptr [edi], 0x00                        // 0x007c8657    802700
_jmp_addr_0x007c865a:    push                 esi                                         // 0x007c865a    56
                         call                 __unlock_file                               // 0x007c865b    e8062c0000
                         pop                  ecx                                         // 0x007c8660    59
                         mov.s                eax, ebx                                    // 0x007c8661    8bc3
                         pop                  esi                                         // 0x007c8663    5e
_jmp_addr_0x007c8664:    pop                  edi                                         // 0x007c8664    5f
                         pop                  ebx                                         // 0x007c8665    5b
                         pop                  ebp                                         // 0x007c8666    5d
                         ret                                                              // 0x007c8667    c3
_jmp_addr_0x007c8668:    push                 ebp                                         // 0x007c8668    55
                         mov.s                ebp, esp                                    // 0x007c8669    8bec
                         push                 ecx                                         // 0x007c866b    51
                         and                  dword ptr [ebp + -0x04], 0x00               // 0x007c866c    8365fc00
                         push                 ebx                                         // 0x007c8670    53
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c8671    8b5d08
                         push                 esi                                         // 0x007c8674    56
                         push                 edi                                         // 0x007c8675    57
                         push                 ebx                                         // 0x007c8676    53
                         call                 _strlen                                     // 0x007c8677    e8741f0000
                         cmp                  eax, 0x01                                   // 0x007c867c    83f801
                         pop                  ecx                                         // 0x007c867f    59
                         .byte                0x72, 0x21// {disp8} jb _jmp_addr_0x007c86a3 // 0x007c8680    7221
                         cmp                  byte ptr [ebx + 0x01], 0x3a                 // 0x007c8682    807b013a
                         {disp8} jne          _jmp_addr_0x007c86a3                        // 0x007c8686    751b
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c8688    8b750c
                         test                 esi, esi                                    // 0x007c868b    85f6
                         {disp8} je           _jmp_addr_0x007c869f                        // 0x007c868d    7410
                         push                 0x2                                         // 0x007c868f    6a02
                         push                 ebx                                         // 0x007c8691    53
                         push                 esi                                         // 0x007c8692    56
                         call                 _jmp_addr_0x007d4cdf                        // 0x007c8693    e847c60000
                         add                  esp, 0x0c                                   // 0x007c8698    83c40c
                         and                  byte ptr [esi + 0x02], 0x00                 // 0x007c869b    80660200
_jmp_addr_0x007c869f:    inc                  ebx                                         // 0x007c869f    43
                         inc                  ebx                                         // 0x007c86a0    43
                         {disp8} jmp          _jmp_addr_0x007c86ad                        // 0x007c86a1    eb0a
_jmp_addr_0x007c86a3:    {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c86a3    8b450c
                         test                 eax, eax                                    // 0x007c86a6    85c0
                         {disp8} je           _jmp_addr_0x007c86ad                        // 0x007c86a8    7403
                         and                  byte ptr [eax], 0x00                        // 0x007c86aa    802000
_jmp_addr_0x007c86ad:    and                  dword ptr [ebp + 0x0c], 0x00                // 0x007c86ad    83650c00
                         cmp                  byte ptr [ebx], 0x00                        // 0x007c86b1    803b00
                         mov.s                eax, ebx                                    // 0x007c86b4    8bc3
                         mov                  esi, 0x000000ff                             // 0x007c86b6    beff000000
                         {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c86bb    894508
                         {disp8} je           _jmp_addr_0x007c8725                        // 0x007c86be    7465
_jmp_addr_0x007c86c0:    mov                  cl, byte ptr [eax]                          // 0x007c86c0    8a08
                         movzx                edx, cl                                     // 0x007c86c2    0fb6d1
                         test                 byte ptr [edx + 0x00facb81], 0x04           // 0x007c86c5    f68281cbfa0004
                         {disp8} je           _jmp_addr_0x007c86d1                        // 0x007c86cc    7403
                         inc                  eax                                         // 0x007c86ce    40
                         {disp8} jmp          _jmp_addr_0x007c86eb                        // 0x007c86cf    eb1a
_jmp_addr_0x007c86d1:    cmp                  cl, 0x2f                                    // 0x007c86d1    80f92f
                         {disp8} je           _jmp_addr_0x007c86e5                        // 0x007c86d4    740f
                         cmp                  cl, 0x5c                                    // 0x007c86d6    80f95c
                         {disp8} je           _jmp_addr_0x007c86e5                        // 0x007c86d9    740a
                         cmp                  cl, 0x2e                                    // 0x007c86db    80f92e
                         {disp8} jne          _jmp_addr_0x007c86eb                        // 0x007c86de    750b
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c86e0    8945fc
                         {disp8} jmp          _jmp_addr_0x007c86eb                        // 0x007c86e3    eb06
_jmp_addr_0x007c86e5:    {disp8} lea          ecx, dword ptr [eax + 0x01]                 // 0x007c86e5    8d4801
                         {disp8} mov          dword ptr [ebp + 0x0c], ecx                 // 0x007c86e8    894d0c
_jmp_addr_0x007c86eb:    inc                  eax                                         // 0x007c86eb    40
                         cmp                  byte ptr [eax], 0x00                        // 0x007c86ec    803800
                         {disp8} jne          _jmp_addr_0x007c86c0                        // 0x007c86ef    75cf
                         {disp8} mov          edi, dword ptr [ebp + 0x0c]                 // 0x007c86f1    8b7d0c
                         {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c86f4    894508
                         test                 edi, edi                                    // 0x007c86f7    85ff
                         {disp8} je           _jmp_addr_0x007c8725                        // 0x007c86f9    742a
                         cmp                  dword ptr [ebp + 0x10], 0x00                // 0x007c86fb    837d1000
                         {disp8} je           _jmp_addr_0x007c8720                        // 0x007c86ff    741f
                         sub.s                edi, ebx                                    // 0x007c8701    2bfb
                         cmp.s                edi, esi                                    // 0x007c8703    3bfe
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c8709 // 0x007c8705    7202
                         mov.s                edi, esi                                    // 0x007c8707    8bfe
_jmp_addr_0x007c8709:    push                 edi                                         // 0x007c8709    57
                         push                 ebx                                         // 0x007c870a    53
                         push                 dword ptr [ebp + 0x10]                      // 0x007c870b    ff7510
                         call                 _jmp_addr_0x007d4cdf                        // 0x007c870e    e8ccc50000
                         {disp8} mov          eax, dword ptr [ebp + 0x10]                 // 0x007c8713    8b4510
                         add                  esp, 0x0c                                   // 0x007c8716    83c40c
                         and                  byte ptr [edi + eax * 0x1], 0x00            // 0x007c8719    80240700
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c871d    8b4508
_jmp_addr_0x007c8720:    {disp8} mov          ebx, dword ptr [ebp + 0x0c]                 // 0x007c8720    8b5d0c
                         {disp8} jmp          _jmp_addr_0x007c872f                        // 0x007c8723    eb0a
_jmp_addr_0x007c8725:    {disp8} mov          ecx, dword ptr [ebp + 0x10]                 // 0x007c8725    8b4d10
                         test                 ecx, ecx                                    // 0x007c8728    85c9
                         {disp8} je           _jmp_addr_0x007c872f                        // 0x007c872a    7403
                         and                  byte ptr [ecx], 0x00                        // 0x007c872c    802100
_jmp_addr_0x007c872f:    {disp8} mov          edi, dword ptr [ebp + -0x04]                // 0x007c872f    8b7dfc
                         test                 edi, edi                                    // 0x007c8732    85ff
                         {disp8} je           _jmp_addr_0x007c8782                        // 0x007c8734    744c
                         cmp.s                edi, ebx                                    // 0x007c8736    3bfb
                         .byte                0x72, 0x48// {disp8} jb _jmp_addr_0x007c8782 // 0x007c8738    7248
                         cmp                  dword ptr [ebp + 0x14], 0x00                // 0x007c873a    837d1400
                         {disp8} je           _jmp_addr_0x007c875f                        // 0x007c873e    741f
                         sub.s                edi, ebx                                    // 0x007c8740    2bfb
                         cmp.s                edi, esi                                    // 0x007c8742    3bfe
                         .byte                0x72, 0x2// {disp8} jb _jmp_addr_0x007c8748 // 0x007c8744    7202
                         mov.s                edi, esi                                    // 0x007c8746    8bfe
_jmp_addr_0x007c8748:    push                 edi                                         // 0x007c8748    57
                         push                 ebx                                         // 0x007c8749    53
                         push                 dword ptr [ebp + 0x14]                      // 0x007c874a    ff7514
                         call                 _jmp_addr_0x007d4cdf                        // 0x007c874d    e88dc50000
                         {disp8} mov          eax, dword ptr [ebp + 0x14]                 // 0x007c8752    8b4514
                         add                  esp, 0x0c                                   // 0x007c8755    83c40c
                         and                  byte ptr [edi + eax * 0x1], 0x00            // 0x007c8758    80240700
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c875c    8b4508
_jmp_addr_0x007c875f:    {disp8} mov          edi, dword ptr [ebp + 0x18]                 // 0x007c875f    8b7d18
                         test                 edi, edi                                    // 0x007c8762    85ff
                         {disp8} je           _jmp_addr_0x007c87aa                        // 0x007c8764    7444
                         sub                  eax, dword ptr [ebp + -0x04]                // 0x007c8766    2b45fc
                         cmp.s                eax, esi                                    // 0x007c8769    3bc6
                         {disp8} jae          _jmp_addr_0x007c876f                        // 0x007c876b    7302
                         mov.s                esi, eax                                    // 0x007c876d    8bf0
_jmp_addr_0x007c876f:    push                 esi                                         // 0x007c876f    56
                         push                 dword ptr [ebp + -0x04]                     // 0x007c8770    ff75fc
                         push                 edi                                         // 0x007c8773    57
                         call                 _jmp_addr_0x007d4cdf                        // 0x007c8774    e866c50000
                         add                  esp, 0x0c                                   // 0x007c8779    83c40c
                         and                  byte ptr [esi + edi * 0x1], 0x00            // 0x007c877c    80243e00
                         {disp8} jmp          _jmp_addr_0x007c87aa                        // 0x007c8780    eb28
_jmp_addr_0x007c8782:    {disp8} mov          edi, dword ptr [ebp + 0x14]                 // 0x007c8782    8b7d14
                         test                 edi, edi                                    // 0x007c8785    85ff
                         {disp8} je           _jmp_addr_0x007c87a0                        // 0x007c8787    7417
                         sub.s                eax, ebx                                    // 0x007c8789    2bc3
                         cmp.s                eax, esi                                    // 0x007c878b    3bc6
                         {disp8} jae          _jmp_addr_0x007c8791                        // 0x007c878d    7302
                         mov.s                esi, eax                                    // 0x007c878f    8bf0
_jmp_addr_0x007c8791:    push                 esi                                         // 0x007c8791    56
                         push                 ebx                                         // 0x007c8792    53
                         push                 edi                                         // 0x007c8793    57
                         call                 _jmp_addr_0x007d4cdf                        // 0x007c8794    e846c50000
                         add                  esp, 0x0c                                   // 0x007c8799    83c40c
                         and                  byte ptr [esi + edi * 0x1], 0x00            // 0x007c879c    80243e00
_jmp_addr_0x007c87a0:    {disp8} mov          eax, dword ptr [ebp + 0x18]                 // 0x007c87a0    8b4518
                         test                 eax, eax                                    // 0x007c87a3    85c0
                         {disp8} je           _jmp_addr_0x007c87aa                        // 0x007c87a5    7403
                         and                  byte ptr [eax], 0x00                        // 0x007c87a7    802000
_jmp_addr_0x007c87aa:    pop                  edi                                         // 0x007c87aa    5f
                         pop                  esi                                         // 0x007c87ab    5e
                         pop                  ebx                                         // 0x007c87ac    5b
                         leave                                                            // 0x007c87ad    c9
                         ret                                                              // 0x007c87ae    c3
                         push                 ebp                                         // 0x007c87af    55
                         mov.s                ebp, esp                                    // 0x007c87b0    8bec
                         sub                  esp, 0x14                                   // 0x007c87b2    83ec14
                         xor.s                eax, eax                                    // 0x007c87b5    33c0
                         {disp8} lea          ecx, dword ptr [ebp + -0x14]                // 0x007c87b7    8d4dec
                         push                 eax                                         // 0x007c87ba    50
                         push                 eax                                         // 0x007c87bb    50
                         push                 0x14                                        // 0x007c87bc    6a14
                         push                 ecx                                         // 0x007c87be    51
                         push                 -0x1                                        // 0x007c87bf    6aff
                         push                 dword ptr [ebp + 0x08]                      // 0x007c87c1    ff7508
                         push                 eax                                         // 0x007c87c4    50
                         push                 eax                                         // 0x007c87c5    50
                         call                 dword ptr [__imp__WideCharToMultiByte@4]    // 0x007c87c6    ff152c928a00
                         {disp8} lea          eax, dword ptr [ebp + -0x14]                // 0x007c87cc    8d45ec
                         push                 eax                                         // 0x007c87cf    50
                         call                 _atol                                       // 0x007c87d0    e827ddffff
                         pop                  ecx                                         // 0x007c87d5    59
                         leave                                                            // 0x007c87d6    c9
                         ret                                                              // 0x007c87d7    c3
_jmp_addr_0x007c87d8:    push                 ebp                                         // 0x007c87d8    55
                         mov.s                ebp, esp                                    // 0x007c87d9    8bec
                         sub                  esp, 0x14                                   // 0x007c87db    83ec14
                         xor.s                eax, eax                                    // 0x007c87de    33c0
                         {disp8} lea          ecx, dword ptr [ebp + -0x14]                // 0x007c87e0    8d4dec
                         push                 eax                                         // 0x007c87e3    50
                         push                 eax                                         // 0x007c87e4    50
                         push                 0x14                                        // 0x007c87e5    6a14
                         push                 ecx                                         // 0x007c87e7    51
                         push                 -0x1                                        // 0x007c87e8    6aff
                         push                 dword ptr [ebp + 0x08]                      // 0x007c87ea    ff7508
                         push                 eax                                         // 0x007c87ed    50
                         push                 eax                                         // 0x007c87ee    50
                         call                 dword ptr [__imp__WideCharToMultiByte@4]    // 0x007c87ef    ff152c928a00
                         {disp8} lea          eax, dword ptr [ebp + -0x14]                // 0x007c87f5    8d45ec
                         push                 eax                                         // 0x007c87f8    50
                         call                 _atol                                       // 0x007c87f9    e8fedcffff
                         pop                  ecx                                         // 0x007c87fe    59
                         leave                                                            // 0x007c87ff    c9
                         ret                                                              // 0x007c8800    c3
                         push                 ebp                                         // 0x007c8801    55
                         mov.s                ebp, esp                                    // 0x007c8802    8bec
                         sub                  esp, 0x50                                   // 0x007c8804    83ec50
                         xor.s                eax, eax                                    // 0x007c8807    33c0
                         {disp8} lea          ecx, dword ptr [ebp + -0x50]                // 0x007c8809    8d4db0
                         push                 eax                                         // 0x007c880c    50
                         push                 eax                                         // 0x007c880d    50
                         push                 0x50                                        // 0x007c880e    6a50
                         push                 ecx                                         // 0x007c8810    51
                         push                 -0x1                                        // 0x007c8811    6aff
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8813    ff7508
                         push                 eax                                         // 0x007c8816    50
                         push                 eax                                         // 0x007c8817    50
                         call                 dword ptr [__imp__WideCharToMultiByte@4]    // 0x007c8818    ff152c928a00
                         {disp8} lea          eax, dword ptr [ebp + -0x50]                // 0x007c881e    8d45b0
                         push                 eax                                         // 0x007c8821    50
                         call                 __atoi64                                    // 0x007c8822    e86bddffff
                         pop                  ecx                                         // 0x007c8827    59
                         leave                                                            // 0x007c8828    c9
                         ret                                                              // 0x007c8829    c3
_jmp_addr_0x007c882a:    call                 __getptd                                    // 0x007c882a    e8fc9a0000
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007c882f    8b4c2404
                         {disp8} mov          dword ptr [eax + 0x14], ecx                 // 0x007c8833    894814
                         ret                                                              // 0x007c8836    c3
_jmp_addr_0x007c8837:    call                 __getptd                                    // 0x007c8837    e8ef9a0000
                         {disp8} mov          ecx, dword ptr [eax + 0x14]                 // 0x007c883c    8b4814
                         imul                 ecx, ecx, 0x000343fd                        // 0x007c883f    69c9fd430300
                         add                  ecx, 0x00269ec3                             // 0x007c8845    81c1c39e2600
                         {disp8} mov          dword ptr [eax + 0x14], ecx                 // 0x007c884b    894814
                         mov.s                eax, ecx                                    // 0x007c884e    8bc1
                         shr                  eax, 0x10                                   // 0x007c8850    c1e810
                         and                  eax, 0x00007fff                             // 0x007c8853    25ff7f0000
                         ret                                                              // 0x007c8858    c3
_jmp_addr_0x007c8859:    push                 ebp                                         // 0x007c8859    55
                         mov.s                ebp, esp                                    // 0x007c885a    8bec
                         push                 esi                                         // 0x007c885c    56
                         push                 dword ptr [ebp + 0x08]                      // 0x007c885d    ff7508
                         call                 __lock_file                                 // 0x007c8860    e8af290000
                         push                 dword ptr [ebp + 0x10]                      // 0x007c8865    ff7510
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c8868    ff750c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c886b    ff7508
                         call                 _jmp_addr_0x007c8885                        // 0x007c886e    e812000000
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8873    ff7508
                         mov.s                esi, eax                                    // 0x007c8876    8bf0
                         call                 __unlock_file                               // 0x007c8878    e8e9290000
                         add                  esp, 0x14                                   // 0x007c887d    83c414
                         mov.s                eax, esi                                    // 0x007c8880    8bc6
                         pop                  esi                                         // 0x007c8882    5e
                         pop                  ebp                                         // 0x007c8883    5d
                         ret                                                              // 0x007c8884    c3
_jmp_addr_0x007c8885:    push                 esi                                         // 0x007c8885    56
                         {disp8} mov          esi, dword ptr [esp + 0x08]                 // 0x007c8886    8b742408
                         push                 edi                                         // 0x007c888a    57
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                 // 0x007c888b    8b460c
                         test                 al, -0x7d                                   // 0x007c888e    a883
                         {disp8} je           _jmp_addr_0x007c8901                        // 0x007c8890    746f
                         {disp8} mov          edi, dword ptr [esp + 0x14]                 // 0x007c8892    8b7c2414
                         test                 edi, edi                                    // 0x007c8896    85ff
                         {disp8} je           _jmp_addr_0x007c88a4                        // 0x007c8898    740a
                         cmp                  edi, 0x01                                   // 0x007c889a    83ff01
                         {disp8} je           _jmp_addr_0x007c88a4                        // 0x007c889d    7405
                         cmp                  edi, 0x02                                   // 0x007c889f    83ff02
                         {disp8} jne          _jmp_addr_0x007c8901                        // 0x007c88a2    755d
_jmp_addr_0x007c88a4:    and                  al, -0x11                                   // 0x007c88a4    24ef
                         cmp                  edi, 0x01                                   // 0x007c88a6    83ff01
                         {disp8} mov          dword ptr [esi + 0x0c], eax                 // 0x007c88a9    89460c
                         {disp8} jne          _jmp_addr_0x007c88bb                        // 0x007c88ac    750d
                         push                 esi                                         // 0x007c88ae    56
                         call                 _jmp_addr_0x007c8934                        // 0x007c88af    e880000000
                         add                  dword ptr [esp + 0x14], eax                 // 0x007c88b4    01442414
                         pop                  ecx                                         // 0x007c88b8    59
                         xor.s                edi, edi                                    // 0x007c88b9    33ff
_jmp_addr_0x007c88bb:    push                 esi                                         // 0x007c88bb    56
                         call                 __flush                                     // 0x007c88bc    e8951a0000
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                 // 0x007c88c1    8b460c
                         pop                  ecx                                         // 0x007c88c4    59
                         test                 al, -0x80                                   // 0x007c88c5    a880
                         {disp8} je           _jmp_addr_0x007c88d0                        // 0x007c88c7    7407
                         and                  al, -0x04                                   // 0x007c88c9    24fc
                         {disp8} mov          dword ptr [esi + 0x0c], eax                 // 0x007c88cb    89460c
                         {disp8} jmp          _jmp_addr_0x007c88e4                        // 0x007c88ce    eb14
_jmp_addr_0x007c88d0:    test                 al, 0x01                                    // 0x007c88d0    a801
                         {disp8} je           _jmp_addr_0x007c88e4                        // 0x007c88d2    7410
                         test                 al, 0x08                                    // 0x007c88d4    a808
                         {disp8} je           _jmp_addr_0x007c88e4                        // 0x007c88d6    740c
                         test                 ah, 0x04                                    // 0x007c88d8    f6c404
                         {disp8} jne          _jmp_addr_0x007c88e4                        // 0x007c88db    7507
                         {disp8} mov          dword ptr [esi + 0x18], 0x00000200          // 0x007c88dd    c7461800020000
_jmp_addr_0x007c88e4:    push                 edi                                         // 0x007c88e4    57
                         push                 dword ptr [esp + 0x14]                      // 0x007c88e5    ff742414
                         push                 dword ptr [esi + 0x10]                      // 0x007c88e9    ff7610
                         call                 _jmp_addr_0x007d4d79                        // 0x007c88ec    e888c40000
                         add                  esp, 0x0c                                   // 0x007c88f1    83c40c
                         xor.s                ecx, ecx                                    // 0x007c88f4    33c9
                         cmp                  eax, -0x01                                  // 0x007c88f6    83f8ff
                         setne                cl                                          // 0x007c88f9    0f95c1
                         dec                  ecx                                         // 0x007c88fc    49
                         mov.s                eax, ecx                                    // 0x007c88fd    8bc1
                         {disp8} jmp          _jmp_addr_0x007c890f                        // 0x007c88ff    eb0e
_jmp_addr_0x007c8901:    call                 __errno                                     // 0x007c8901    e87b070000
                         mov                  dword ptr [eax], 0x00000016                 // 0x007c8906    c70016000000
                         or                   eax, -0x1                                   // 0x007c890c    83c8ff
_jmp_addr_0x007c890f:    pop                  edi                                         // 0x007c890f    5f
                         pop                  esi                                         // 0x007c8910    5e
                         ret                                                              // 0x007c8911    c3
_jmp_addr_0x007c8912:    push                 esi                                         // 0x007c8912    56
                         {disp8} mov          esi, dword ptr [esp + 0x08]                 // 0x007c8913    8b742408
                         push                 edi                                         // 0x007c8917    57
                         push                 esi                                         // 0x007c8918    56
                         call                 __lock_file                                 // 0x007c8919    e8f6280000
                         push                 esi                                         // 0x007c891e    56
                         call                 _jmp_addr_0x007c8934                        // 0x007c891f    e810000000
                         push                 esi                                         // 0x007c8924    56
                         mov.s                edi, eax                                    // 0x007c8925    8bf8
                         call                 __unlock_file                               // 0x007c8927    e83a290000
                         add                  esp, 0x0c                                   // 0x007c892c    83c40c
                         mov.s                eax, edi                                    // 0x007c892f    8bc7
                         pop                  edi                                         // 0x007c8931    5f
                         pop                  esi                                         // 0x007c8932    5e
                         ret                                                              // 0x007c8933    c3
_jmp_addr_0x007c8934:    push                 ebp                                         // 0x007c8934    55
                         mov.s                ebp, esp                                    // 0x007c8935    8bec
                         sub                  esp, 0x0c                                   // 0x007c8937    83ec0c
                         push                 ebx                                         // 0x007c893a    53
                         push                 esi                                         // 0x007c893b    56
                         push                 edi                                         // 0x007c893c    57
                         {disp8} mov          edi, dword ptr [ebp + 0x08]                 // 0x007c893d    8b7d08
                         xor.s                ebx, ebx                                    // 0x007c8940    33db
                         {disp8} mov          esi, dword ptr [edi + 0x10]                 // 0x007c8942    8b7710
                         cmp                  dword ptr [edi + 0x04], ebx                 // 0x007c8945    395f04
                         {disp8} mov          dword ptr [ebp + -0x0c], esi                // 0x007c8948    8975f4
                         {disp8} jge          _jmp_addr_0x007c8950                        // 0x007c894b    7d03
                         {disp8} mov          dword ptr [edi + 0x04], ebx                 // 0x007c894d    895f04
_jmp_addr_0x007c8950:    push                 0x1                                         // 0x007c8950    6a01
                         push                 ebx                                         // 0x007c8952    53
                         push                 esi                                         // 0x007c8953    56
                         call                 _jmp_addr_0x007d4d79                        // 0x007c8954    e820c40000
                         add                  esp, 0x0c                                   // 0x007c8959    83c40c
                         cmp.s                eax, ebx                                    // 0x007c895c    3bc3
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c895e    8945fc
                         {disp8} jl           _jmp_addr_0x007c89c2                        // 0x007c8961    7c5f
                         {disp8} mov          ecx, dword ptr [edi + 0x0c]                 // 0x007c8963    8b4f0c
                         test                 cx, 0x0108                                  // 0x007c8966    66f7c10801
                         {disp8} jne          _jmp_addr_0x007c8975                        // 0x007c896b    7508
                         sub                  eax, dword ptr [edi + 0x04]                 // 0x007c896d    2b4704
                         {disp32} jmp         _jmp_addr_0x007c8a90                        // 0x007c8970    e91b010000
_jmp_addr_0x007c8975:    mov                  eax, dword ptr [edi]                        // 0x007c8975    8b07
                         {disp8} mov          edx, dword ptr [edi + 0x08]                 // 0x007c8977    8b5708
                         mov.s                ebx, eax                                    // 0x007c897a    8bd8
                         sub.s                ebx, edx                                    // 0x007c897c    2bda
                         test                 cl, 0x03                                    // 0x007c897e    f6c103
                         {disp8} mov          dword ptr [ebp + -0x08], ebx                // 0x007c8981    895df8
                         {disp8} je           _jmp_addr_0x007c89b2                        // 0x007c8984    742c
                         mov.s                ebx, esi                                    // 0x007c8986    8bde
                         mov.s                ecx, esi                                    // 0x007c8988    8bce
                         sar                  ebx, 5                                      // 0x007c898a    c1fb05
                         and                  ecx, 0x1f                                   // 0x007c898d    83e11f
                         {disp32} mov         ebx, dword ptr [ebx * 0x4 + ___pioinfo]     // 0x007c8990    8b1c9d60c9fa00
                         lea                  ecx, dword ptr [ecx + ecx * 0x8]            // 0x007c8997    8d0cc9
                         test                 byte ptr [ebx + ecx * 0x4 + 0x04], -0x80    // 0x007c899a    f6448b0480
                         {disp8} je           _jmp_addr_0x007c89ca                        // 0x007c899f    7429
                         mov.s                ecx, edx                                    // 0x007c89a1    8bca
_jmp_addr_0x007c89a3:    cmp.s                ecx, eax                                    // 0x007c89a3    3bc8
                         {disp8} jae          _jmp_addr_0x007c89ca                        // 0x007c89a5    7323
                         cmp                  byte ptr [ecx], 0x0a                        // 0x007c89a7    80390a
                         {disp8} jne          _jmp_addr_0x007c89af                        // 0x007c89aa    7503
                         {disp8} inc          dword ptr [ebp + -0x08]                     // 0x007c89ac    ff45f8
_jmp_addr_0x007c89af:    inc                  ecx                                         // 0x007c89af    41
                         {disp8} jmp          _jmp_addr_0x007c89a3                        // 0x007c89b0    ebf1
_jmp_addr_0x007c89b2:    test                 cl, -0x80                                   // 0x007c89b2    f6c180
                         {disp8} jne          _jmp_addr_0x007c89ca                        // 0x007c89b5    7513
                         call                 __errno                                     // 0x007c89b7    e8c5060000
                         mov                  dword ptr [eax], 0x00000016                 // 0x007c89bc    c70016000000
_jmp_addr_0x007c89c2:    or                   eax, -0x1                                   // 0x007c89c2    83c8ff
                         {disp32} jmp         _jmp_addr_0x007c8a90                        // 0x007c89c5    e9c6000000
_jmp_addr_0x007c89ca:    cmp                  dword ptr [ebp + -0x04], 0x00               // 0x007c89ca    837dfc00
                         {disp8} jne          _jmp_addr_0x007c89d8                        // 0x007c89ce    7508
                         {disp8} mov          eax, dword ptr [ebp + -0x08]                // 0x007c89d0    8b45f8
                         {disp32} jmp         _jmp_addr_0x007c8a90                        // 0x007c89d3    e9b8000000
_jmp_addr_0x007c89d8:    test                 byte ptr [edi + 0x0c], 0x01                 // 0x007c89d8    f6470c01
                         {disp32} je          _jmp_addr_0x007c8a88                        // 0x007c89dc    0f84a6000000
                         {disp8} mov          ecx, dword ptr [edi + 0x04]                 // 0x007c89e2    8b4f04
                         test                 ecx, ecx                                    // 0x007c89e5    85c9
                         {disp8} jne          _jmp_addr_0x007c89f1                        // 0x007c89e7    7508
                         and                  dword ptr [ebp + -0x08], ecx                // 0x007c89e9    214df8
                         {disp32} jmp         _jmp_addr_0x007c8a88                        // 0x007c89ec    e997000000
_jmp_addr_0x007c89f1:    sub.s                eax, edx                                    // 0x007c89f1    2bc2
                         add.s                eax, ecx                                    // 0x007c89f3    03c1
                         {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c89f5    894508
                         mov.s                eax, esi                                    // 0x007c89f8    8bc6
                         sar                  eax, 5                                      // 0x007c89fa    c1f805
                         {disp32} lea         ebx, dword ptr [eax * 0x4 + ___pioinfo]     // 0x007c89fd    8d1c8560c9fa00
                         mov.s                eax, esi                                    // 0x007c8a04    8bc6
                         and                  eax, 0x1f                                   // 0x007c8a06    83e01f
                         lea                  esi, dword ptr [eax + eax * 0x8]            // 0x007c8a09    8d34c0
                         mov                  eax, dword ptr [ebx]                        // 0x007c8a0c    8b03
                         shl                  esi, 2                                      // 0x007c8a0e    c1e602
                         test                 byte ptr [esi + eax * 0x1 + 0x04], -0x80    // 0x007c8a11    f644060480
                         {disp8} je           _jmp_addr_0x007c8a82                        // 0x007c8a16    746a
                         push                 0x2                                         // 0x007c8a18    6a02
                         push                 0x0                                         // 0x007c8a1a    6a00
                         push                 dword ptr [ebp + -0x0c]                     // 0x007c8a1c    ff75f4
                         call                 _jmp_addr_0x007d4d79                        // 0x007c8a1f    e855c30000
                         add                  esp, 0x0c                                   // 0x007c8a24    83c40c
                         cmp                  eax, dword ptr [ebp + -0x04]                // 0x007c8a27    3b45fc
                         {disp8} jne          _jmp_addr_0x007c8a49                        // 0x007c8a2a    751d
                         {disp8} mov          eax, dword ptr [edi + 0x08]                 // 0x007c8a2c    8b4708
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                 // 0x007c8a2f    8b4d08
                         add.s                ecx, eax                                    // 0x007c8a32    03c8
_jmp_addr_0x007c8a34:    cmp.s                eax, ecx                                    // 0x007c8a34    3bc1
                         {disp8} jae          _jmp_addr_0x007c8a43                        // 0x007c8a36    730b
                         cmp                  byte ptr [eax], 0x0a                        // 0x007c8a38    80380a
                         {disp8} jne          _jmp_addr_0x007c8a40                        // 0x007c8a3b    7503
                         {disp8} inc          dword ptr [ebp + 0x08]                      // 0x007c8a3d    ff4508
_jmp_addr_0x007c8a40:    inc                  eax                                         // 0x007c8a40    40
                         {disp8} jmp          _jmp_addr_0x007c8a34                        // 0x007c8a41    ebf1
_jmp_addr_0x007c8a43:    test                 byte ptr [edi + 0x0d], 0x20                 // 0x007c8a43    f6470d20
                         {disp8} jmp          _jmp_addr_0x007c8a7d                        // 0x007c8a47    eb34
_jmp_addr_0x007c8a49:    push                 0x0                                         // 0x007c8a49    6a00
                         push                 dword ptr [ebp + -0x04]                     // 0x007c8a4b    ff75fc
                         push                 dword ptr [ebp + -0x0c]                     // 0x007c8a4e    ff75f4
                         call                 _jmp_addr_0x007d4d79                        // 0x007c8a51    e823c30000
                         mov                  eax, 0x00000200                             // 0x007c8a56    b800020000
                         add                  esp, 0x0c                                   // 0x007c8a5b    83c40c
                         cmp                  dword ptr [ebp + 0x08], eax                 // 0x007c8a5e    394508
                         {disp8} ja           _jmp_addr_0x007c8a70                        // 0x007c8a61    770d
                         {disp8} mov          ecx, dword ptr [edi + 0x0c]                 // 0x007c8a63    8b4f0c
                         test                 cl, 0x08                                    // 0x007c8a66    f6c108
                         {disp8} je           _jmp_addr_0x007c8a70                        // 0x007c8a69    7405
                         test                 ch, 0x04                                    // 0x007c8a6b    f6c504
                         {disp8} je           _jmp_addr_0x007c8a73                        // 0x007c8a6e    7403
_jmp_addr_0x007c8a70:    {disp8} mov          eax, dword ptr [edi + 0x18]                 // 0x007c8a70    8b4718
_jmp_addr_0x007c8a73:    {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c8a73    894508
                         mov                  eax, dword ptr [ebx]                        // 0x007c8a76    8b03
                         test                 byte ptr [esi + eax * 0x1 + 0x04], 0x04     // 0x007c8a78    f644060404
_jmp_addr_0x007c8a7d:    {disp8} je           _jmp_addr_0x007c8a82                        // 0x007c8a7d    7403
                         {disp8} inc          dword ptr [ebp + 0x08]                      // 0x007c8a7f    ff4508
_jmp_addr_0x007c8a82:    {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c8a82    8b4508
                         sub                  dword ptr [ebp + -0x04], eax                // 0x007c8a85    2945fc
_jmp_addr_0x007c8a88:    {disp8} mov          eax, dword ptr [ebp + -0x08]                // 0x007c8a88    8b45f8
                         {disp8} mov          ecx, dword ptr [ebp + -0x04]                // 0x007c8a8b    8b4dfc
                         add.s                eax, ecx                                    // 0x007c8a8e    03c1
_jmp_addr_0x007c8a90:    pop                  edi                                         // 0x007c8a90    5f
                         pop                  esi                                         // 0x007c8a91    5e
                         pop                  ebx                                         // 0x007c8a92    5b
                         leave                                                            // 0x007c8a93    c9
                         ret                                                              // 0x007c8a94    c3
_jmp_addr_0x007c8a95:    push                 ebp                                         // 0x007c8a95    55
                         mov.s                ebp, esp                                    // 0x007c8a96    8bec
                         push                 ebx                                         // 0x007c8a98    53
                         push                 esi                                         // 0x007c8a99    56
                         push                 edi                                         // 0x007c8a9a    57
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8a9b    ff7508
                         call                 _strlen                                     // 0x007c8a9e    e84d1b0000
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c8aa3    8b750c
                         mov.s                edi, eax                                    // 0x007c8aa6    8bf8
                         push                 esi                                         // 0x007c8aa8    56
                         call                 __lock_file                                 // 0x007c8aa9    e866270000
                         push                 esi                                         // 0x007c8aae    56
                         call                 __stbuf                                     // 0x007c8aaf    e8497f0000
                         push                 esi                                         // 0x007c8ab4    56
                         push                 edi                                         // 0x007c8ab5    57
                         push                 0x1                                         // 0x007c8ab6    6a01
                         mov.s                ebx, eax                                    // 0x007c8ab8    8bd8
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8aba    ff7508
                         call                 __fwrite_lk                                 // 0x007c8abd    e80febffff
                         push                 esi                                         // 0x007c8ac2    56
                         push                 ebx                                         // 0x007c8ac3    53
                         {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c8ac4    894508
                         call                 __ftbuf                                     // 0x007c8ac7    e8be7f0000
                         push                 esi                                         // 0x007c8acc    56
                         call                 __unlock_file                               // 0x007c8acd    e894270000
                         add                  esp, 0x28                                   // 0x007c8ad2    83c428
                         xor.s                eax, eax                                    // 0x007c8ad5    33c0
                         cmp                  dword ptr [ebp + 0x08], edi                 // 0x007c8ad7    397d08
                         pop                  edi                                         // 0x007c8ada    5f
                         pop                  esi                                         // 0x007c8adb    5e
                         sete                 al                                          // 0x007c8adc    0f94c0
                         dec                  eax                                         // 0x007c8adf    48
                         pop                  ebx                                         // 0x007c8ae0    5b
                         pop                  ebp                                         // 0x007c8ae1    5d
                         ret                                                              // 0x007c8ae2    c3
_floor:    push                 ebp                                         // 0x007c8ae3    55
                         mov.s                ebp, esp                                    // 0x007c8ae4    8bec
                         push                 ecx                                         // 0x007c8ae6    51
                         push                 ecx                                         // 0x007c8ae7    51
                         push                 ebx                                         // 0x007c8ae8    53
                         push                 esi                                         // 0x007c8ae9    56
                         mov                  esi, 0x0000ffff                             // 0x007c8aea    beffff0000
                         push                 esi                                         // 0x007c8aef    56
                         push                 dword ptr [data_bytes + 0x2674b4]           // 0x007c8af0    ff35b4d4c200
                         call                 __ctrlfp                                    // 0x007c8af6    e8648e0000
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8afb    dd4508
                         pop                  ecx                                         // 0x007c8afe    59
                         mov.s                ebx, eax                                    // 0x007c8aff    8bd8
                         {disp8} mov          eax, dword ptr [ebp + 0x0e]                 // 0x007c8b01    8b450e
                         pop                  ecx                                         // 0x007c8b04    59
                         push                 ecx                                         // 0x007c8b05    51
                         and                  ax, 0x7ff0                                  // 0x007c8b06    6625f07f
                         push                 ecx                                         // 0x007c8b0a    51
                         cmp                  ax, 0x7ff0                                  // 0x007c8b0b    663df07f
                         fstp                 qword ptr [esp]                             // 0x007c8b0f    dd1c24
                         {disp8} jne          _jmp_addr_0x007c8b69                        // 0x007c8b12    7555
                         call                 __sptype                                    // 0x007c8b14    e851850000
                         pop                  ecx                                         // 0x007c8b19    59
                         test                 eax, eax                                    // 0x007c8b1a    85c0
                         pop                  ecx                                         // 0x007c8b1c    59
                         {disp8} jle          _jmp_addr_0x007c8b4c                        // 0x007c8b1d    7e2d
                         cmp                  eax, 0x02                                   // 0x007c8b1f    83f802
                         {disp8} jle          _jmp_addr_0x007c8b3e                        // 0x007c8b22    7e1a
                         cmp                  eax, 0x03                                   // 0x007c8b24    83f803
                         {disp8} jne          _jmp_addr_0x007c8b4c                        // 0x007c8b27    7523
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8b29    dd4508
                         push                 ebx                                         // 0x007c8b2c    53
                         push                 ecx                                         // 0x007c8b2d    51
                         push                 ecx                                         // 0x007c8b2e    51
                         fstp                 qword ptr [esp]                             // 0x007c8b2f    dd1c24
                         push                 0xb                                         // 0x007c8b32    6a0b
                         call                 __handle_qnan1                              // 0x007c8b34    e84c860000
                         add                  esp, 0x10                                   // 0x007c8b39    83c410
                         {disp8} jmp          _jmp_addr_0x007c8bae                        // 0x007c8b3c    eb70
_jmp_addr_0x007c8b3e:    push                 esi                                         // 0x007c8b3e    56
                         push                 ebx                                         // 0x007c8b3f    53
                         call                 __ctrlfp                                    // 0x007c8b40    e81a8e0000
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8b45    dd4508
                         pop                  ecx                                         // 0x007c8b48    59
                         pop                  ecx                                         // 0x007c8b49    59
                         {disp8} jmp          _jmp_addr_0x007c8bae                        // 0x007c8b4a    eb62
_jmp_addr_0x007c8b4c:    {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8b4c    dd4508
                         {disp32} fadd        qword ptr [__real@8@3fff8000000000000000] // 0x007c8b4f    dc0580b68a00
                         push                 ebx                                         // 0x007c8b55    53
                         push                 ecx                                         // 0x007c8b56    51
                         push                 ecx                                         // 0x007c8b57    51
                         fstp                 qword ptr [esp]                             // 0x007c8b58    dd1c24
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8b5b    dd4508
                         push                 ecx                                         // 0x007c8b5e    51
                         push                 ecx                                         // 0x007c8b5f    51
                         fstp                 qword ptr [esp]                             // 0x007c8b60    dd1c24
                         push                 0xb                                         // 0x007c8b63    6a0b
                         push                 0x8                                         // 0x007c8b65    6a08
                         {disp8} jmp          _jmp_addr_0x007c8ba6                        // 0x007c8b67    eb3d
_jmp_addr_0x007c8b69:    call                 __frnd                                      // 0x007c8b69    e81db40000
                         {disp8} fstp         qword ptr [ebp + -0x08]                     // 0x007c8b6e    dd5df8
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8b71    dd45f8
                         {disp8} fcomp        qword ptr [ebp + 0x08]                      // 0x007c8b74    dc5d08
                         pop                  ecx                                         // 0x007c8b77    59
                         pop                  ecx                                         // 0x007c8b78    59
                         fnstsw               ax                                          // 0x007c8b79    dfe0
                         sahf                                                             // 0x007c8b7b    9e
                         {disp8} jne          _jmp_addr_0x007c8b8c                        // 0x007c8b7c    750e
_jmp_addr_0x007c8b7e:    push                 esi                                         // 0x007c8b7e    56
                         push                 ebx                                         // 0x007c8b7f    53
                         call                 __ctrlfp                                    // 0x007c8b80    e8da8d0000
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8b85    dd45f8
                         pop                  ecx                                         // 0x007c8b88    59
                         pop                  ecx                                         // 0x007c8b89    59
                         {disp8} jmp          _jmp_addr_0x007c8bae                        // 0x007c8b8a    eb22
_jmp_addr_0x007c8b8c:    test                 bl, 0x20                                    // 0x007c8b8c    f6c320
                         {disp8} jne          _jmp_addr_0x007c8b7e                        // 0x007c8b8f    75ed
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8b91    dd45f8
                         push                 ebx                                         // 0x007c8b94    53
                         push                 ecx                                         // 0x007c8b95    51
                         push                 ecx                                         // 0x007c8b96    51
                         fstp                 qword ptr [esp]                             // 0x007c8b97    dd1c24
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8b9a    dd4508
                         push                 ecx                                         // 0x007c8b9d    51
                         push                 ecx                                         // 0x007c8b9e    51
                         fstp                 qword ptr [esp]                             // 0x007c8b9f    dd1c24
                         push                 0xb                                         // 0x007c8ba2    6a0b
                         push                 0x10                                        // 0x007c8ba4    6a10
_jmp_addr_0x007c8ba6:    call                 __except1                                   // 0x007c8ba6    e88e860000
                         add                  esp, 0x1c                                   // 0x007c8bab    83c41c
_jmp_addr_0x007c8bae:    pop                  esi                                         // 0x007c8bae    5e
                         pop                  ebx                                         // 0x007c8baf    5b
                         leave                                                            // 0x007c8bb0    c9
                         ret                                                              // 0x007c8bb1    c3
??0exception@@QAE@XZ:    mov.s                eax, ecx                                    // 0x007c8bb2    8bc1
                         and                  dword ptr [eax + 0x04], 0x00                // 0x007c8bb4    83600400
                         and                  dword ptr [eax + 0x08], 0x00                // 0x007c8bb8    83600800
                         mov                  dword ptr [eax], 0x009a06cc                 // 0x007c8bbc    c700cc069a00
                         ret                                                              // 0x007c8bc2    c3
??_Gexception@@UAEPAXI@Z: push                 esi                                         // 0x007c8bc3    56
                         mov.s                esi, ecx                                    // 0x007c8bc4    8bf1
                         call                 ??1exception@@UAE@XZ                        // 0x007c8bc6    e8ba000000
                         test                 byte ptr [esp + 0x08], 0x01                 // 0x007c8bcb    f644240801
                         {disp8} je           _jmp_addr_0x007c8bd9                        // 0x007c8bd0    7407
                         push                 esi                                         // 0x007c8bd2    56
                         call                 _operator_delete                            // 0x007c8bd3    e8c062feff
                         pop                  ecx                                         // 0x007c8bd8    59
_jmp_addr_0x007c8bd9:    mov.s                eax, esi                                    // 0x007c8bd9    8bc6
                         pop                  esi                                         // 0x007c8bdb    5e
                         ret                  0x0004                                      // 0x007c8bdc    c20400
??0exception@@QAE@ABQBD@Z:    push                 esi                                         // 0x007c8bdf    56
                         push                 edi                                         // 0x007c8be0    57
                         {disp8} mov          edi, dword ptr [esp + 0x0c]                 // 0x007c8be1    8b7c240c
                         mov.s                esi, ecx                                    // 0x007c8be5    8bf1
                         mov                  dword ptr [esi], 0x009a06cc                 // 0x007c8be7    c706cc069a00
                         push                 dword ptr [edi]                             // 0x007c8bed    ff37
                         call                 _strlen                                     // 0x007c8bef    e8fc190000
                         inc                  eax                                         // 0x007c8bf4    40
                         push                 eax                                         // 0x007c8bf5    50
                         call                 ??2@YAPAXI@Z                                 // 0x007c8bf6    e8f3d8ffff
                         pop                  ecx                                         // 0x007c8bfb    59
                         {disp8} mov          dword ptr [esi + 0x04], eax                 // 0x007c8bfc    894604
                         test                 eax, eax                                    // 0x007c8bff    85c0
                         pop                  ecx                                         // 0x007c8c01    59
                         {disp8} je           _jmp_addr_0x007c8c0e                        // 0x007c8c02    740a
                         push                 dword ptr [edi]                             // 0x007c8c04    ff37
                         push                 eax                                         // 0x007c8c06    50
                         call                 _strcpy                                     // 0x007c8c07    e864c40000
                         pop                  ecx                                         // 0x007c8c0c    59
                         pop                  ecx                                         // 0x007c8c0d    59
_jmp_addr_0x007c8c0e:    {disp8} mov          dword ptr [esi + 0x08], 0x00000001          // 0x007c8c0e    c7460801000000
                         mov.s                eax, esi                                    // 0x007c8c15    8bc6
                         pop                  edi                                         // 0x007c8c17    5f
                         pop                  esi                                         // 0x007c8c18    5e
                         ret                  0x0004                                      // 0x007c8c19    c20400
??0exception@@QAE@ABV0@@Z:    push                 esi                                         // 0x007c8c1c    56
                         push                 edi                                         // 0x007c8c1d    57
                         {disp8} mov          edi, dword ptr [esp + 0x0c]                 // 0x007c8c1e    8b7c240c
                         mov.s                esi, ecx                                    // 0x007c8c22    8bf1
                         mov                  dword ptr [esi], 0x009a06cc                 // 0x007c8c24    c706cc069a00
                         {disp8} mov          eax, dword ptr [edi + 0x08]                 // 0x007c8c2a    8b4708
                         test                 eax, eax                                    // 0x007c8c2d    85c0
                         {disp8} mov          dword ptr [esi + 0x08], eax                 // 0x007c8c2f    894608
                         {disp8} je           _jmp_addr_0x007c8c59                        // 0x007c8c32    7425
                         push                 dword ptr [edi + 0x04]                      // 0x007c8c34    ff7704
                         call                 _strlen                                     // 0x007c8c37    e8b4190000
                         inc                  eax                                         // 0x007c8c3c    40
                         push                 eax                                         // 0x007c8c3d    50
                         call                 ??2@YAPAXI@Z                                 // 0x007c8c3e    e8abd8ffff
                         pop                  ecx                                         // 0x007c8c43    59
                         {disp8} mov          dword ptr [esi + 0x04], eax                 // 0x007c8c44    894604
                         test                 eax, eax                                    // 0x007c8c47    85c0
                         pop                  ecx                                         // 0x007c8c49    59
                         {disp8} je           _jmp_addr_0x007c8c5f                        // 0x007c8c4a    7413
                         push                 dword ptr [edi + 0x04]                      // 0x007c8c4c    ff7704
                         push                 eax                                         // 0x007c8c4f    50
                         call                 _strcpy                                     // 0x007c8c50    e81bc40000
                         pop                  ecx                                         // 0x007c8c55    59
                         pop                  ecx                                         // 0x007c8c56    59
                         {disp8} jmp          _jmp_addr_0x007c8c5f                        // 0x007c8c57    eb06
_jmp_addr_0x007c8c59:    {disp8} mov          eax, dword ptr [edi + 0x04]                 // 0x007c8c59    8b4704
                         {disp8} mov          dword ptr [esi + 0x04], eax                 // 0x007c8c5c    894604
_jmp_addr_0x007c8c5f:    mov.s                eax, esi                                    // 0x007c8c5f    8bc6
                         pop                  edi                                         // 0x007c8c61    5f
                         pop                  esi                                         // 0x007c8c62    5e
                         ret                  0x0004                                      // 0x007c8c63    c20400
??4exception@@QAEAAV0@ABV0@@Z:    push                 esi                                         // 0x007c8c66    56
                         mov.s                esi, ecx                                    // 0x007c8c67    8bf1
                         cmp                  esi, dword ptr [esp + 0x08]                 // 0x007c8c69    3b742408
                         {disp8} je           _jmp_addr_0x007c8c7f                        // 0x007c8c6d    7410
                         call                 ??1exception@@UAE@XZ                        // 0x007c8c6f    e811000000
                         push                 dword ptr [esp + 0x08]                      // 0x007c8c74    ff742408
                         mov.s                ecx, esi                                    // 0x007c8c78    8bce
                         call                 ??0exception@@QAE@ABV0@@Z                   // 0x007c8c7a    e89dffffff
_jmp_addr_0x007c8c7f:    mov.s                eax, esi                                    // 0x007c8c7f    8bc6
                         pop                  esi                                         // 0x007c8c81    5e
                         ret                  0x0004                                      // 0x007c8c82    c20400
??1exception@@UAE@XZ:    cmp                  dword ptr [ecx + 0x08], 0x00                // 0x007c8c85    83790800
                         mov                  dword ptr [ecx], 0x009a06cc                 // 0x007c8c89    c701cc069a00
                         {disp8} je           _jmp_addr_0x007c8c9a                        // 0x007c8c8f    7409
                         push                 dword ptr [ecx + 0x04]                      // 0x007c8c91    ff7104
                         call                 _operator_delete                            // 0x007c8c94    e8ff61feff
                         pop                  ecx                                         // 0x007c8c99    59
_jmp_addr_0x007c8c9a:    ret                                                              // 0x007c8c9a    c3
?what@exception@@UBEPBDXZ:  {disp8} mov          eax, dword ptr [ecx + 0x04]                 // 0x007c8c9b    8b4104
                         test                 eax, eax                                    // 0x007c8c9e    85c0
                         {disp8} jne          _jmp_addr_0x007c8ca7                        // 0x007c8ca0    7505
                         mov                  eax, 0x009a06d4                             // 0x007c8ca2    b8d4069a00
_jmp_addr_0x007c8ca7:    ret                                                              // 0x007c8ca7    c6431000
