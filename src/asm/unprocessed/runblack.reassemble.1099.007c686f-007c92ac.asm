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
