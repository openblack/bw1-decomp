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
.extern __mbsnbcpy
.extern __lseek
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
