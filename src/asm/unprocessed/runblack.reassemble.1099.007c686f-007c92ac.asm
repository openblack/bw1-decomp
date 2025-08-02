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
.extern _jmp_addr_0x007d1bb0
.extern __startOneArgErrorHandling
.extern _jmp_addr_0x007d1c10
.extern __load_CW
.extern __convertTOStoQNaN
.extern __fload_withFB
.extern __checkTOS_withFB
.extern __fast_exit
.extern __math_exit
.extern _jmp_addr_0x007d1cf9
.extern __filbuf
.extern __read
.extern __write
.extern __mtinit
.extern __getptd
.extern ___tzset
.extern __isindst
.extern _gmtime
.extern ___loctotime_t
.extern _jmp_addr_0x007d2df7
.extern _jmp_addr_0x007d2f90
.extern _jmp_addr_0x007d300b
.extern _jmp_addr_0x007d3c0c
.extern _jmp_addr_0x007d3f8b
.extern _jmp_addr_0x007d3f9d
.extern _jmp_addr_0x007d42f2
.extern _jmp_addr_0x007d47c0
.extern _jmp_addr_0x007d4885
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

.globl _jmp_addr_0x007c7ae0
.globl _jmp_addr_0x007c7d00
.globl _fscanf_10LHFilePath
.globl _getc_10LHFilePath
.globl _jmp_addr_0x007c7e13
.globl _jmp_addr_0x007c7e64
.globl _jmp_addr_0x007c804a
.globl _jmp_addr_0x007c8072
.globl _jmp_addr_0x007c8141
.globl _jmp_addr_0x007c81cd
.globl _jmp_addr_0x007c820e
.globl _jmp_addr_0x007c8242
.globl _jmp_addr_0x007c8249
.globl _jmp_addr_0x007c8250
.globl _jmp_addr_0x007c8257
.globl _jmp_addr_0x007c82a6
.globl _jmp_addr_0x007c82f6
.globl _jmp_addr_0x007c836f
.globl _jmp_addr_0x007c849a
.globl __global_unwind2
.globl __local_unwind2
.globl _jmp_addr_0x007c85c2
.globl _jmp_addr_0x007c85e5
.globl __NLG_Notify
.globl _jmp_addr_0x007c8606
.globl _jmp_addr_0x007c8668
.globl _jmp_addr_0x007c87d8
.globl _jmp_addr_0x007c882a
.globl _jmp_addr_0x007c8837
.globl _jmp_addr_0x007c8859
.globl _jmp_addr_0x007c8912
.globl _jmp_addr_0x007c8a95
.globl _jmp_addr_0x007c8ae3
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

                         int3                                                             // 0x007c7ad9    cc
                         int3                                                             // 0x007c7ada    cc
                         int3                                                             // 0x007c7adb    cc
                         int3                                                             // 0x007c7adc    cc
                         int3                                                             // 0x007c7add    cc
                         int3                                                             // 0x007c7ade    cc
                         int3                                                             // 0x007c7adf    cc
_jmp_addr_0x007c7ae0:    sub                  esp, 0x10                                   // 0x007c7ae0    83ec10
                         fxch                 st(1)                                       // 0x007c7ae3    d9c9
                         fstp                 qword ptr [esp]                             // 0x007c7ae5    dd1c24
                         {disp8} fst          qword ptr [esp + 0x08]                      // 0x007c7ae8    dd542408
                         {disp8} mov          eax, dword ptr [esp + 0x0c]                 // 0x007c7aec    8b44240c
                         call                 _jmp_addr_0x007c7b02                        // 0x007c7af0    e80d000000
                         add                  esp, 0x10                                   // 0x007c7af5    83c410
                         ret                                                              // 0x007c7af8    c3
                         {disp8} lea          edx, dword ptr [esp + 0x0c]                 // 0x007c7af9    8d54240c
                         call                 __fload_withFB                              // 0x007c7afd    e853a10000
_jmp_addr_0x007c7b02:    mov.s                ecx, eax                                    // 0x007c7b02    8bc8
                         push                 eax                                         // 0x007c7b04    50
                         wait                                                             // 0x007c7b05    9b
                         fnstcw               word ptr [esp]                              // 0x007c7b06    d93c24
                         cmp                  word ptr [esp], 0x027f                      // 0x007c7b09    66813c247f02
                         {disp8} je           _jmp_addr_0x007c7b16                        // 0x007c7b0f    7405
                         call                 __load_CW                                   // 0x007c7b11    e80fa10000
_jmp_addr_0x007c7b16:    and                  ecx, 0x7ff00000                             // 0x007c7b16    81e10000f07f
                         {disp8} lea          edx, dword ptr [esp + 0x08]                 // 0x007c7b1c    8d542408
                         cmp                  ecx, 0x7ff00000                             // 0x007c7b20    81f90000f07f
                         {disp32} je          _jmp_addr_0x007c7bc9                        // 0x007c7b26    0f849d000000
                         call                 __fload_withFB                              // 0x007c7b2c    e824a10000
                         {disp32} je          _jmp_addr_0x007c7bc5                        // 0x007c7b31    0f848e000000
                         test                 eax, 0x7ff00000                             // 0x007c7b37    a90000f07f
                         {disp32} je          _jmp_addr_0x007c7c38                        // 0x007c7b3c    0f84f6000000
_jmp_addr_0x007c7b42:    {disp8} mov          cl, byte ptr [esp + 0x0f]                   // 0x007c7b42    8a4c240f
                         and                  cl, -0x80                                   // 0x007c7b46    80e180
                         {disp32} jne         _jmp_addr_0x007c7cb0                        // 0x007c7b49    0f8561010000
_jmp_addr_0x007c7b4f:    fyl2x                                                            // 0x007c7b4f    d9f1
                         call                 _jmp_addr_0x007d1c10                        // 0x007c7b51    e8baa00000
                         cmp                  cl, 0x01                                    // 0x007c7b56    80f901
                         {disp8} jne          _jmp_addr_0x007c7b5d                        // 0x007c7b59    7502
                         fchs                                                             // 0x007c7b5b    d9e0
_jmp_addr_0x007c7b5d:    cmp                  dword ptr [data_bytes + 0x4be190], 0x00     // 0x007c7b5d    833d9041e80000
                         {disp32} jne         __fast_exit                                 // 0x007c7b64    0f8544a10000
                         {disp32} lea         ecx, dword ptr [data_bytes + 0x267448]      // 0x007c7b6a    8d0d48d4c200
                         mov                  edx, 0x0000001d                             // 0x007c7b70    ba1d000000
                         {disp32} jmp         _jmp_addr_0x007d1cf9                        // 0x007c7b75    e97fa10000
_jmp_addr_0x007c7b7a:    cmp                  dword ptr [data_bytes + 0x4be190], 0x00     // 0x007c7b7a    833d9041e80000
                         {disp32} jne         __fast_exit                                 // 0x007c7b81    0f8527a10000
                         {disp32} lea         ecx, dword ptr [data_bytes + 0x267448]      // 0x007c7b87    8d0d48d4c200
                         mov                  edx, 0x0000001d                             // 0x007c7b8d    ba1d000000
                         call                 _jmp_addr_0x007d1bb0                        // 0x007c7b92    e819a00000
                         pop                  edx                                         // 0x007c7b97    5a
                         ret                                                              // 0x007c7b98    c3
_jmp_addr_0x007c7b99:    {disp8} lea          edx, dword ptr [esp + 0x08]                 // 0x007c7b99    8d542408
                         call                 __fload_withFB                              // 0x007c7b9d    e8b3a00000
                         test                 byte ptr [esp + 0x16], 0x08                 // 0x007c7ba2    f644241608
                         {disp8} jne          _jmp_addr_0x007c7bac                        // 0x007c7ba7    7503
                         inc                  ecx                                         // 0x007c7ba9    41
                         {disp8} jmp          _jmp_addr_0x007c7bdf                        // 0x007c7baa    eb33
_jmp_addr_0x007c7bac:    faddp                st(1), st                                   // 0x007c7bac    dec1
                         mov                  eax, 0x00000001                             // 0x007c7bae    b801000000
                         {disp8} jmp          _jmp_addr_0x007c7b7a                        // 0x007c7bb3    ebc5
_jmp_addr_0x007c7bb5:    test                 byte ptr [esp + 0x0e], 0x08                 // 0x007c7bb5    f644240e08
                         {disp8} jne          _jmp_addr_0x007c7bac                        // 0x007c7bba    75f0
_jmp_addr_0x007c7bbc:    faddp                st(1), st                                   // 0x007c7bbc    dec1
                         mov                  eax, 0x00000007                             // 0x007c7bbe    b807000000
                         {disp8} jmp          _jmp_addr_0x007c7b7a                        // 0x007c7bc3    ebb5
_jmp_addr_0x007c7bc5:    xor.s                ecx, ecx                                    // 0x007c7bc5    33c9
                         {disp8} jmp          _jmp_addr_0x007c7bdf                        // 0x007c7bc7    eb16
_jmp_addr_0x007c7bc9:    xor.s                ecx, ecx                                    // 0x007c7bc9    33c9
                         and                  eax, 0x000fffff                             // 0x007c7bcb    25ffff0f00
                         or                   eax, dword ptr [esp + 0x10]                 // 0x007c7bd0    0b442410
                         {disp8} jne          _jmp_addr_0x007c7b99                        // 0x007c7bd4    75c3
                         {disp8} lea          edx, dword ptr [esp + 0x08]                 // 0x007c7bd6    8d542408
                         call                 __fload_withFB                              // 0x007c7bda    e876a00000
_jmp_addr_0x007c7bdf:    {disp8} mov          eax, dword ptr [esp + 0x0c]                 // 0x007c7bdf    8b44240c
                         mov.s                edx, eax                                    // 0x007c7be3    8bd0
                         and                  eax, 0x7ff00000                             // 0x007c7be5    250000f07f
                         and                  edx, 0x000fffff                             // 0x007c7bea    81e2ffff0f00
                         cmp                  eax, 0x7ff00000                             // 0x007c7bf0    3d0000f07f
                         {disp8} jne          _jmp_addr_0x007c7bfd                        // 0x007c7bf5    7506
                         or                   edx, dword ptr [esp + 8]                    // 0x007c7bf7    0b542408
                         {disp8} jne          _jmp_addr_0x007c7bb5                        // 0x007c7bfb    75b8
_jmp_addr_0x007c7bfd:    test                 ecx, ecx                                    // 0x007c7bfd    85c9
                         {disp8} jne          _jmp_addr_0x007c7bbc                        // 0x007c7bff    75bb
                         sub                  esp, 0x74                                   // 0x007c7c01    83ec74
                         mov.s                ecx, esp                                    // 0x007c7c04    8bcc
                         push                 ecx                                         // 0x007c7c06    51
                         sub                  esp, 0x10                                   // 0x007c7c07    83ec10
                         fstp                 qword ptr [esp]                             // 0x007c7c0a    dd1c24
                         {disp8} fstp         qword ptr [esp + 0x08]                      // 0x007c7c0d    dd5c2408
                         wait                                                             // 0x007c7c11    9b
                         fnsave               dword ptr [ecx + 0x08]                      // 0x007c7c12    dd7108
                         call                 _jmp_addr_0x007d2df7                        // 0x007c7c15    e8ddb10000
                         add                  esp, 0x10                                   // 0x007c7c1a    83c410
                         pop                  ecx                                         // 0x007c7c1d    59
                         frstor               dword ptr [ecx + 0x08]                      // 0x007c7c1e    dd6108
                         fld                  qword ptr [ecx]                             // 0x007c7c21    dd01
                         add                  esp, 0x74                                   // 0x007c7c23    83c474
                         test                 eax, eax                                    // 0x007c7c26    85c0
                         {disp32} je          __fast_exit                                 // 0x007c7c28    0f8480a00000
                         mov                  eax, 0x00000001                             // 0x007c7c2e    b801000000
                         {disp32} jmp         _jmp_addr_0x007c7b7a                        // 0x007c7c33    e942ffffff
_jmp_addr_0x007c7c38:    {disp8} mov          eax, dword ptr [esp + 0x0c]                 // 0x007c7c38    8b44240c
                         and                  eax, 0x000fffff                             // 0x007c7c3c    25ffff0f00
                         or                   eax, dword ptr [esp + 8]                    // 0x007c7c41    0b442408
                         {disp32} jne         _jmp_addr_0x007c7b42                        // 0x007c7c45    0f85f7feffff
                         fstp                 st(0)                                       // 0x007c7c4b    ddd8
                         {disp8} mov          eax, dword ptr [esp + 0x14]                 // 0x007c7c4d    8b442414
                         test                 eax, 0x7ff00000                             // 0x007c7c51    a90000f07f
                         {disp8} je           _jmp_addr_0x007c7c95                        // 0x007c7c56    743d
                         call                 _jmp_addr_0x007c7cd5                        // 0x007c7c58    e878000000
                         {disp8} mov          ch, byte ptr [esp + 0x0f]                   // 0x007c7c5d    8a6c240f
                         shr                  ch, 7                                       // 0x007c7c61    c0ed07
                         test                 dword ptr [esp + 0x17], 0x00000080          // 0x007c7c64    f744241780000000
                         {disp8} je           _jmp_addr_0x007c7c84                        // 0x007c7c6c    7416
                         {disp32} fld         tbyte ptr [data_bytes + 0x26a060]           // 0x007c7c6e    db2d6000c300
                         test                 ch, cl                                      // 0x007c7c74    84cd
                         {disp8} je           _jmp_addr_0x007c7c7a                        // 0x007c7c76    7402
                         fchs                                                             // 0x007c7c78    d9e0
_jmp_addr_0x007c7c7a:    mov                  eax, 0x00000002                             // 0x007c7c7a    b802000000
                         {disp32} jmp         _jmp_addr_0x007c7b7a                        // 0x007c7c7f    e9f6feffff
_jmp_addr_0x007c7c84:    fldz                                                             // 0x007c7c84    d9ee
                         test                 ch, cl                                      // 0x007c7c86    84cd
                         {disp32} je          __fast_exit                                 // 0x007c7c88    0f8420a00000
                         fchs                                                             // 0x007c7c8e    d9e0
                         {disp32} jmp         __fast_exit                                 // 0x007c7c90    e919a00000
_jmp_addr_0x007c7c95:    fstp                 st(0)                                       // 0x007c7c95    ddd8
                         and                  eax, 0x000fffff                             // 0x007c7c97    25ffff0f00
                         or                   eax, dword ptr [esp + 0x10]                 // 0x007c7c9c    0b442410
                         {disp8} jne          _jmp_addr_0x007c7ca9                        // 0x007c7ca0    7507
                         fld1                                                             // 0x007c7ca2    d9e8
                         {disp32} jmp         __fast_exit                                 // 0x007c7ca4    e905a00000
_jmp_addr_0x007c7ca9:    fldz                                                             // 0x007c7ca9    d9ee
                         {disp32} jmp         __fast_exit                                 // 0x007c7cab    e9fe9f0000
_jmp_addr_0x007c7cb0:    fld                  st(1)                                       // 0x007c7cb0    d9c1
                         call                 _jmp_addr_0x007c7cd5                        // 0x007c7cb2    e81e000000
                         fchs                                                             // 0x007c7cb7    d9e0
                         test                 cl, cl                                      // 0x007c7cb9    84c9
                         {disp32} jne         _jmp_addr_0x007c7b4f                        // 0x007c7cbb    0f858efeffff
                         fstp                 st(0)                                       // 0x007c7cc1    ddd8
                         fstp                 st(0)                                       // 0x007c7cc3    ddd8
                         {disp32} fld         tbyte ptr [data_bytes + 0x269f70]           // 0x007c7cc5    db2d70ffc200
                         mov                  eax, 0x00000001                             // 0x007c7ccb    b801000000
                         {disp32} jmp         _jmp_addr_0x007c7b7a                        // 0x007c7cd0    e9a5feffff
_jmp_addr_0x007c7cd5:    fld                  st(0)                                       // 0x007c7cd5    d9c0
                         frndint                                                          // 0x007c7cd7    d9fc
                         fcomp                st(1)                                       // 0x007c7cd9    d8d9
                         mov                  cl, 0x00                                    // 0x007c7cdb    b100
                         wait                                                             // 0x007c7cdd    9b
                         fnstsw               ax                                          // 0x007c7cde    dfe0
                         sahf                                                             // 0x007c7ce0    9e
                         {disp8} jne          _jmp_addr_0x007c7cfa                        // 0x007c7ce1    7517
                         {disp32} fmul        qword ptr [data_bytes + 0x267440]           // 0x007c7ce3    dc0d40d4c200
                         inc                  cl                                          // 0x007c7ce9    fec1
                         fld                  st(0)                                       // 0x007c7ceb    d9c0
                         frndint                                                          // 0x007c7ced    d9fc
                         fcompp                                                           // 0x007c7cef    ded9
                         wait                                                             // 0x007c7cf1    9b
                         fnstsw               ax                                          // 0x007c7cf2    dfe0
                         sahf                                                             // 0x007c7cf4    9e
                         {disp8} jne          _jmp_addr_0x007c7cf9                        // 0x007c7cf5    7502
                         inc                  cl                                          // 0x007c7cf7    fec1
_jmp_addr_0x007c7cf9:    ret                                                              // 0x007c7cf9    c3
_jmp_addr_0x007c7cfa:    fstp                 st(0)                                       // 0x007c7cfa    ddd8
                         ret                                                              // 0x007c7cfc    c3
                         int3                                                             // 0x007c7cfd    cc
                         int3                                                             // 0x007c7cfe    cc
                         int3                                                             // 0x007c7cff    cc
_jmp_addr_0x007c7d00:    push                 edi                                         // 0x007c7d00    57
                         push                 esi                                         // 0x007c7d01    56
                         push                 ebx                                         // 0x007c7d02    53
                         xor.s                edi, edi                                    // 0x007c7d03    33ff
                         {disp8} mov          eax, dword ptr [esp + 0x14]                 // 0x007c7d05    8b442414
                         or.s                 eax, eax                                    // 0x007c7d09    0bc0
                         {disp8} jge          _jmp_addr_0x007c7d21                        // 0x007c7d0b    7d14
                         inc                  edi                                         // 0x007c7d0d    47
                         {disp8} mov          edx, dword ptr [esp + 0x10]                 // 0x007c7d0e    8b542410
                         neg                  eax                                         // 0x007c7d12    f7d8
                         neg                  edx                                         // 0x007c7d14    f7da
                         sbb                  eax, 0x00                                   // 0x007c7d16    83d800
                         {disp8} mov          dword ptr [esp + 0x14], eax                 // 0x007c7d19    89442414
                         {disp8} mov          dword ptr [esp + 0x10], edx                 // 0x007c7d1d    89542410
_jmp_addr_0x007c7d21:    {disp8} mov          eax, dword ptr [esp + 0x1c]                 // 0x007c7d21    8b44241c
                         or.s                 eax, eax                                    // 0x007c7d25    0bc0
                         {disp8} jge          _jmp_addr_0x007c7d3d                        // 0x007c7d27    7d14
                         inc                  edi                                         // 0x007c7d29    47
                         {disp8} mov          edx, dword ptr [esp + 0x18]                 // 0x007c7d2a    8b542418
                         neg                  eax                                         // 0x007c7d2e    f7d8
                         neg                  edx                                         // 0x007c7d30    f7da
                         sbb                  eax, 0x00                                   // 0x007c7d32    83d800
                         {disp8} mov          dword ptr [esp + 0x1c], eax                 // 0x007c7d35    8944241c
                         {disp8} mov          dword ptr [esp + 0x18], edx                 // 0x007c7d39    89542418
_jmp_addr_0x007c7d3d:    or.s                 eax, eax                                    // 0x007c7d3d    0bc0
                         {disp8} jne          _jmp_addr_0x007c7d59                        // 0x007c7d3f    7518
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                 // 0x007c7d41    8b4c2418
                         {disp8} mov          eax, dword ptr [esp + 0x14]                 // 0x007c7d45    8b442414
                         xor.s                edx, edx                                    // 0x007c7d49    33d2
                         div                  ecx                                         // 0x007c7d4b    f7f1
                         mov.s                ebx, eax                                    // 0x007c7d4d    8bd8
                         {disp8} mov          eax, dword ptr [esp + 0x10]                 // 0x007c7d4f    8b442410
                         div                  ecx                                         // 0x007c7d53    f7f1
                         mov.s                edx, ebx                                    // 0x007c7d55    8bd3
                         {disp8} jmp          _jmp_addr_0x007c7d9a                        // 0x007c7d57    eb41
_jmp_addr_0x007c7d59:    mov.s                ebx, eax                                    // 0x007c7d59    8bd8
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                 // 0x007c7d5b    8b4c2418
                         {disp8} mov          edx, dword ptr [esp + 0x14]                 // 0x007c7d5f    8b542414
                         {disp8} mov          eax, dword ptr [esp + 0x10]                 // 0x007c7d63    8b442410
_jmp_addr_0x007c7d67:    shr                  ebx, 1                                      // 0x007c7d67    d1eb
                         rcr                  ecx, 1                                      // 0x007c7d69    d1d9
                         shr                  edx, 1                                      // 0x007c7d6b    d1ea
                         rcr                  eax, 1                                      // 0x007c7d6d    d1d8
                         or.s                 ebx, ebx                                    // 0x007c7d6f    0bdb
                         {disp8} jne          _jmp_addr_0x007c7d67                        // 0x007c7d71    75f4
                         div                  ecx                                         // 0x007c7d73    f7f1
                         mov.s                esi, eax                                    // 0x007c7d75    8bf0
                         mul                  dword ptr [esp + 0x1c]                      // 0x007c7d77    f764241c
                         mov.s                ecx, eax                                    // 0x007c7d7b    8bc8
                         {disp8} mov          eax, dword ptr [esp + 0x18]                 // 0x007c7d7d    8b442418
                         mul                  esi                                         // 0x007c7d81    f7e6
                         add.s                edx, ecx                                    // 0x007c7d83    03d1
                         .byte                0x72, 0xe// {disp8} jb _jmp_addr_0x007c7d95 // 0x007c7d85    720e
                         cmp                  edx, dword ptr [esp + 0x14]                 // 0x007c7d87    3b542414
                         {disp8} ja           _jmp_addr_0x007c7d95                        // 0x007c7d8b    7708
                         .byte                0x72, 0x7// {disp8} jb _jmp_addr_0x007c7d96 // 0x007c7d8d    7207
                         cmp                  eax, dword ptr [esp + 0x10]                 // 0x007c7d8f    3b442410
                         {disp8} jbe          _jmp_addr_0x007c7d96                        // 0x007c7d93    7601
_jmp_addr_0x007c7d95:    dec                  esi                                         // 0x007c7d95    4e
_jmp_addr_0x007c7d96:    xor.s                edx, edx                                    // 0x007c7d96    33d2
                         mov.s                eax, esi                                    // 0x007c7d98    8bc6
_jmp_addr_0x007c7d9a:    dec                  edi                                         // 0x007c7d9a    4f
                         {disp8} jne          _jmp_addr_0x007c7da4                        // 0x007c7d9b    7507
                         neg                  edx                                         // 0x007c7d9d    f7da
                         neg                  eax                                         // 0x007c7d9f    f7d8
                         sbb                  edx, 0x00                                   // 0x007c7da1    83da00
_jmp_addr_0x007c7da4:    pop                  ebx                                         // 0x007c7da4    5b
                         pop                  esi                                         // 0x007c7da5    5e
                         pop                  edi                                         // 0x007c7da6    5f
                         ret                  0x0010                                      // 0x007c7da7    c21000
_fscanf_10LHFilePath:    push                 ebp                                         // 0x007c7daa    55
                         mov.s                ebp, esp                                    // 0x007c7dab    8bec
                         push                 esi                                         // 0x007c7dad    56
                         push                 dword ptr [ebp + 0x08]                      // 0x007c7dae    ff7508
                         call                 __lock_file                                 // 0x007c7db1    e85e340000
                         {disp8} lea          eax, dword ptr [ebp + 0x10]                 // 0x007c7db6    8d4510
                         push                 eax                                         // 0x007c7db9    50
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c7dba    ff750c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c7dbd    ff7508
                         call                 __input                                     // 0x007c7dc0    e878800000
                         push                 dword ptr [ebp + 0x08]                      // 0x007c7dc5    ff7508
                         mov.s                esi, eax                                    // 0x007c7dc8    8bf0
                         call                 __unlock_file                               // 0x007c7dca    e897340000
                         add                  esp, 0x14                                   // 0x007c7dcf    83c414
                         mov.s                eax, esi                                    // 0x007c7dd2    8bc6
                         pop                  esi                                         // 0x007c7dd4    5e
                         pop                  ebp                                         // 0x007c7dd5    5d
                         ret                                                              // 0x007c7dd6    c3
_getc_10LHFilePath:      push                 esi                                         // 0x007c7dd7    56
                         {disp8} mov          esi, dword ptr [esp + 0x08]                 // 0x007c7dd8    8b742408
                         push                 edi                                         // 0x007c7ddc    57
                         push                 esi                                         // 0x007c7ddd    56
                         call                 __lock_file                                 // 0x007c7dde    e831340000
                         dec                  dword ptr [esi + 0x04]                      // 0x007c7de3    ff4e04
                         pop                  ecx                                         // 0x007c7de6    59
                         {disp8} js           _jmp_addr_0x007c7df3                        // 0x007c7de7    780a
                         mov                  eax, dword ptr [esi]                        // 0x007c7de9    8b06
                         movzx                edi, byte ptr [eax]                         // 0x007c7deb    0fb638
                         inc                  eax                                         // 0x007c7dee    40
                         mov                  dword ptr [esi], eax                        // 0x007c7def    8906
                         {disp8} jmp          _jmp_addr_0x007c7dfc                        // 0x007c7df1    eb09
_jmp_addr_0x007c7df3:    push                 esi                                         // 0x007c7df3    56
                         call                 __filbuf                                    // 0x007c7df4    e8a39f0000
                         pop                  ecx                                         // 0x007c7df9    59
                         mov.s                edi, eax                                    // 0x007c7dfa    8bf8
_jmp_addr_0x007c7dfc:    push                 esi                                         // 0x007c7dfc    56
                         call                 __unlock_file                               // 0x007c7dfd    e864340000
                         pop                  ecx                                         // 0x007c7e02    59
                         mov.s                eax, edi                                    // 0x007c7e03    8bc7
                         pop                  edi                                         // 0x007c7e05    5f
                         pop                  esi                                         // 0x007c7e06    5e
                         ret                                                              // 0x007c7e07    c3
                         push                 dword ptr [esp + 0x04]                      // 0x007c7e08    ff742404
                         call                 _getc_10LHFilePath                          // 0x007c7e0c    e8c6ffffff
                         pop                  ecx                                         // 0x007c7e11    59
                         ret                                                              // 0x007c7e12    c3
_jmp_addr_0x007c7e13:    push                 ebp                                         // 0x007c7e13    55
                         mov.s                ebp, esp                                    // 0x007c7e14    8bec
                         sub                  esp, 0x20                                   // 0x007c7e16    83ec20
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c7e19    8b4508
                         push                 esi                                         // 0x007c7e1c    56
                         push                 dword ptr [ebp + 0x10]                      // 0x007c7e1d    ff7510
                         {disp8} mov          dword ptr [ebp + -0x18], eax                // 0x007c7e20    8945e8
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c7e23    8945e0
                         {disp8} lea          eax, dword ptr [ebp + -0x20]                // 0x007c7e26    8d45e0
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c7e29    ff750c
                         {disp8} mov          dword ptr [ebp + -0x14], 0x00000042         // 0x007c7e2c    c745ec42000000
                         {disp8} mov          dword ptr [ebp + -0x1c], 0x7fffffff         // 0x007c7e33    c745e4ffffff7f
                         push                 eax                                         // 0x007c7e3a    50
                         call                 __output                                    // 0x007c7e3b    e85a520000
                         add                  esp, 0x0c                                   // 0x007c7e40    83c40c
                         dec                  dword ptr [ebp + -0x1c]                     // 0x007c7e43    ff4de4
                         mov.s                esi, eax                                    // 0x007c7e46    8bf0
                         {disp8} js           _jmp_addr_0x007c7e52                        // 0x007c7e48    7808
                         {disp8} mov          eax, dword ptr [ebp + -0x20]                // 0x007c7e4a    8b45e0
                         and                  byte ptr [eax], 0x00                        // 0x007c7e4d    802000
                         {disp8} jmp          _jmp_addr_0x007c7e5f                        // 0x007c7e50    eb0d
_jmp_addr_0x007c7e52:    {disp8} lea          eax, dword ptr [ebp + -0x20]                // 0x007c7e52    8d45e0
                         push                 eax                                         // 0x007c7e55    50
                         push                 0x0                                         // 0x007c7e56    6a00
                         call                 __flsbuf                                    // 0x007c7e58    e825510000
                         pop                  ecx                                         // 0x007c7e5d    59
                         pop                  ecx                                         // 0x007c7e5e    59
_jmp_addr_0x007c7e5f:    mov.s                eax, esi                                    // 0x007c7e5f    8bc6
                         pop                  esi                                         // 0x007c7e61    5e
                         leave                                                            // 0x007c7e62    c9
                         ret                                                              // 0x007c7e63    c3
_jmp_addr_0x007c7e64:    push                 ebp                                         // 0x007c7e64    55
                         mov.s                ebp, esp                                    // 0x007c7e65    8bec
                         sub                  esp, 0x000000f8                             // 0x007c7e67    81ecf8000000
                         push                 ebx                                         // 0x007c7e6d    53
                         push                 esi                                         // 0x007c7e6e    56
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c7e6f    8b750c
                         push                 edi                                         // 0x007c7e72    57
                         cmp                  esi, 0x02                                   // 0x007c7e73    83fe02
                         {disp32} jb          _jmp_addr_0x007c7fb3                        // 0x007c7e76    0f8237010000
                         cmp                  dword ptr [ebp + 0x10], 0x00                // 0x007c7e7c    837d1000
                         {disp32} je          _jmp_addr_0x007c7fb3                        // 0x007c7e80    0f842d010000
                         and                  dword ptr [ebp + -0x04], 0x00               // 0x007c7e86    8365fc00
                         dec                  esi                                         // 0x007c7e8a    4e
                         imul                 esi, dword ptr [ebp + 0x10]                 // 0x007c7e8b    0faf7510
                         {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c7e8f    8b5d08
                         {disp8} lea          eax, dword ptr [ebp + -0x80]                // 0x007c7e92    8d4580
                         {disp8} mov          dword ptr [ebp + 0x08], eax                 // 0x007c7e95    894508
                         {disp32} lea         eax, dword ptr [ebp + -0x000000f8]          // 0x007c7e98    8d8508ffffff
                         add.s                esi, ebx                                    // 0x007c7e9e    03f3
                         {disp8} mov          dword ptr [ebp + 0x0c], eax                 // 0x007c7ea0    89450c
_jmp_addr_0x007c7ea3:    {disp8} mov          edi, dword ptr [ebp + 0x10]                 // 0x007c7ea3    8b7d10
                         mov.s                eax, esi                                    // 0x007c7ea6    8bc6
                         sub.s                eax, ebx                                    // 0x007c7ea8    2bc3
                         xor.s                edx, edx                                    // 0x007c7eaa    33d2
                         div                  edi                                         // 0x007c7eac    f7f7
                         inc                  eax                                         // 0x007c7eae    40
                         cmp                  eax, 0x08                                   // 0x007c7eaf    83f808
                         {disp8} ja           _jmp_addr_0x007c7ee3                        // 0x007c7eb2    772f
                         push                 dword ptr [ebp + 0x14]                      // 0x007c7eb4    ff7514
                         push                 edi                                         // 0x007c7eb7    57
                         push                 esi                                         // 0x007c7eb8    56
                         push                 ebx                                         // 0x007c7eb9    53
                         call                 _jmp_addr_0x007c7fb8                        // 0x007c7eba    e8f9000000
                         add                  esp, 0x10                                   // 0x007c7ebf    83c410
_jmp_addr_0x007c7ec2:    dec                  dword ptr [ebp + -0x04]                     // 0x007c7ec2    ff4dfc
                         sub                  dword ptr [ebp + 0x0c], 0x04                // 0x007c7ec5    836d0c04
                         sub                  dword ptr [ebp + 0x08], 0x04                // 0x007c7ec9    836d0804
                         cmp                  dword ptr [ebp + -0x04], 0x00               // 0x007c7ecd    837dfc00
                         {disp32} jl          _jmp_addr_0x007c7fb3                        // 0x007c7ed1    0f8cdc000000
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c7ed7    8b450c
                         mov                  ebx, dword ptr [eax]                        // 0x007c7eda    8b18
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c7edc    8b4508
                         mov                  esi, dword ptr [eax]                        // 0x007c7edf    8b30
                         {disp8} jmp          _jmp_addr_0x007c7ea3                        // 0x007c7ee1    ebc0
_jmp_addr_0x007c7ee3:    shr                  eax, 1                                      // 0x007c7ee3    d1e8
                         imul                 eax, edi                                    // 0x007c7ee5    0fafc7
                         push                 edi                                         // 0x007c7ee8    57
                         add.s                eax, ebx                                    // 0x007c7ee9    03c3
                         push                 ebx                                         // 0x007c7eeb    53
                         push                 eax                                         // 0x007c7eec    50
                         call                 _jmp_addr_0x007c8006                        // 0x007c7eed    e814010000
                         add                  esp, 0x0c                                   // 0x007c7ef2    83c40c
                         {disp8} mov          dword ptr [ebp + -0x08], ebx                // 0x007c7ef5    895df8
                         add.s                edi, esi                                    // 0x007c7ef8    03fe
_jmp_addr_0x007c7efa:    {disp8} mov          eax, dword ptr [ebp + -0x08]                // 0x007c7efa    8b45f8
                         add                  eax, dword ptr [ebp + 0x10]                 // 0x007c7efd    034510
                         cmp.s                eax, esi                                    // 0x007c7f00    3bc6
                         {disp8} mov          dword ptr [ebp + -0x08], eax                // 0x007c7f02    8945f8
                         {disp8} ja           _jmp_addr_0x007c7f12                        // 0x007c7f05    770b
                         push                 ebx                                         // 0x007c7f07    53
                         push                 eax                                         // 0x007c7f08    50
                         call                 dword ptr [ebp + 0x14]                      // 0x007c7f09    ff5514
                         pop                  ecx                                         // 0x007c7f0c    59
                         test                 eax, eax                                    // 0x007c7f0d    85c0
                         pop                  ecx                                         // 0x007c7f0f    59
                         {disp8} jle          _jmp_addr_0x007c7efa                        // 0x007c7f10    7ee8
_jmp_addr_0x007c7f12:    sub                  edi, dword ptr [ebp + 0x10]                 // 0x007c7f12    2b7d10
                         cmp.s                edi, ebx                                    // 0x007c7f15    3bfb
                         {disp8} jbe          _jmp_addr_0x007c7f24                        // 0x007c7f17    760b
                         push                 ebx                                         // 0x007c7f19    53
                         push                 edi                                         // 0x007c7f1a    57
                         call                 dword ptr [ebp + 0x14]                      // 0x007c7f1b    ff5514
                         pop                  ecx                                         // 0x007c7f1e    59
                         test                 eax, eax                                    // 0x007c7f1f    85c0
                         pop                  ecx                                         // 0x007c7f21    59
                         {disp8} jge          _jmp_addr_0x007c7f12                        // 0x007c7f22    7dee
_jmp_addr_0x007c7f24:    push                 dword ptr [ebp + 0x10]                      // 0x007c7f24    ff7510
                         cmp                  edi, dword ptr [ebp + -0x08]                // 0x007c7f27    3b7df8
                         push                 edi                                         // 0x007c7f2a    57
                         .byte                0x72, 0xd// {disp8} jb _jmp_addr_0x007c7f3a // 0x007c7f2b    720d
                         push                 dword ptr [ebp + -0x08]                     // 0x007c7f2d    ff75f8
                         call                 _jmp_addr_0x007c8006                        // 0x007c7f30    e8d1000000
                         add                  esp, 0x0c                                   // 0x007c7f35    83c40c
                         {disp8} jmp          _jmp_addr_0x007c7efa                        // 0x007c7f38    ebc0
_jmp_addr_0x007c7f3a:    push                 ebx                                         // 0x007c7f3a    53
                         call                 _jmp_addr_0x007c8006                        // 0x007c7f3b    e8c6000000
                         {disp8} mov          eax, dword ptr [ebp + -0x08]                // 0x007c7f40    8b45f8
                         mov.s                ecx, edi                                    // 0x007c7f43    8bcf
                         sub.s                ecx, ebx                                    // 0x007c7f45    2bcb
                         mov.s                edx, esi                                    // 0x007c7f47    8bd6
                         add                  esp, 0x0c                                   // 0x007c7f49    83c40c
                         dec                  ecx                                         // 0x007c7f4c    49
                         sub.s                edx, eax                                    // 0x007c7f4d    2bd0
                         cmp.s                ecx, edx                                    // 0x007c7f4f    3bca
                         {disp8} jl           _jmp_addr_0x007c7f83                        // 0x007c7f51    7c30
                         {disp8} mov          ecx, dword ptr [ebp + 0x10]                 // 0x007c7f53    8b4d10
                         lea                  edx, dword ptr [ebx + ecx * 0x1]            // 0x007c7f56    8d140b
                         cmp.s                edx, edi                                    // 0x007c7f59    3bd7
                         {disp8} jae          _jmp_addr_0x007c7f74                        // 0x007c7f5b    7317
                         {disp8} mov          edx, dword ptr [ebp + 0x0c]                 // 0x007c7f5d    8b550c
                         add                  dword ptr [ebp + 0x0c], 0x04                // 0x007c7f60    83450c04
                         sub.s                edi, ecx                                    // 0x007c7f64    2bf9
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                 // 0x007c7f66    8b4d08
                         {disp8} inc          dword ptr [ebp + -0x04]                     // 0x007c7f69    ff45fc
                         add                  dword ptr [ebp + 0x08], 0x04                // 0x007c7f6c    83450804
                         mov                  dword ptr [edx], ebx                        // 0x007c7f70    891a
                         mov                  dword ptr [ecx], edi                        // 0x007c7f72    8939
_jmp_addr_0x007c7f74:    cmp.s                eax, esi                                    // 0x007c7f74    3bc6
                         {disp32} jae         _jmp_addr_0x007c7ec2                        // 0x007c7f76    0f8346ffffff
                         mov.s                ebx, eax                                    // 0x007c7f7c    8bd8
                         {disp32} jmp         _jmp_addr_0x007c7ea3                        // 0x007c7f7e    e920ffffff
_jmp_addr_0x007c7f83:    cmp.s                eax, esi                                    // 0x007c7f83    3bc6
                         {disp8} jae          _jmp_addr_0x007c7f9c                        // 0x007c7f85    7315
                         {disp8} mov          ecx, dword ptr [ebp + 0x0c]                 // 0x007c7f87    8b4d0c
                         {disp8} inc          dword ptr [ebp + -0x04]                     // 0x007c7f8a    ff45fc
                         add                  dword ptr [ebp + 0x0c], 0x04                // 0x007c7f8d    83450c04
                         mov                  dword ptr [ecx], eax                        // 0x007c7f91    8901
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c7f93    8b4508
                         add                  dword ptr [ebp + 0x08], 0x04                // 0x007c7f96    83450804
                         mov                  dword ptr [eax], esi                        // 0x007c7f9a    8930
_jmp_addr_0x007c7f9c:    {disp8} mov          eax, dword ptr [ebp + 0x10]                 // 0x007c7f9c    8b4510
                         add.s                eax, ebx                                    // 0x007c7f9f    03c3
                         cmp.s                eax, edi                                    // 0x007c7fa1    3bc7
                         {disp32} jae         _jmp_addr_0x007c7ec2                        // 0x007c7fa3    0f8319ffffff
                         sub                  edi, dword ptr [ebp + 0x10]                 // 0x007c7fa9    2b7d10
                         mov.s                esi, edi                                    // 0x007c7fac    8bf7
                         {disp32} jmp         _jmp_addr_0x007c7ea3                        // 0x007c7fae    e9f0feffff
_jmp_addr_0x007c7fb3:    pop                  edi                                         // 0x007c7fb3    5f
                         pop                  esi                                         // 0x007c7fb4    5e
                         pop                  ebx                                         // 0x007c7fb5    5b
                         leave                                                            // 0x007c7fb6    c9
                         ret                                                              // 0x007c7fb7    c3
_jmp_addr_0x007c7fb8:    push                 ebp                                         // 0x007c7fb8    55
                         mov.s                ebp, esp                                    // 0x007c7fb9    8bec
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c7fbb    8b4508
                         push                 edi                                         // 0x007c7fbe    57
                         {disp8} mov          edi, dword ptr [ebp + 0x0c]                 // 0x007c7fbf    8b7d0c
                         cmp.s                edi, eax                                    // 0x007c7fc2    3bf8
                         {disp8} jbe          _jmp_addr_0x007c8003                        // 0x007c7fc4    763d
                         {disp8} mov          ecx, dword ptr [ebp + 0x10]                 // 0x007c7fc6    8b4d10
                         push                 ebx                                         // 0x007c7fc9    53
                         add.s                eax, ecx                                    // 0x007c7fca    03c1
                         push                 esi                                         // 0x007c7fcc    56
                         {disp8} mov          dword ptr [ebp + 0x0c], eax                 // 0x007c7fcd    89450c
_jmp_addr_0x007c7fd0:    {disp8} mov          ebx, dword ptr [ebp + 0x08]                 // 0x007c7fd0    8b5d08
                         {disp8} mov          esi, dword ptr [ebp + 0x0c]                 // 0x007c7fd3    8b750c
_jmp_addr_0x007c7fd6:    cmp.s                esi, edi                                    // 0x007c7fd6    3bf7
                         {disp8} ja           _jmp_addr_0x007c7fec                        // 0x007c7fd8    7712
                         push                 ebx                                         // 0x007c7fda    53
                         push                 esi                                         // 0x007c7fdb    56
                         call                 dword ptr [ebp + 0x14]                      // 0x007c7fdc    ff5514
                         pop                  ecx                                         // 0x007c7fdf    59
                         test                 eax, eax                                    // 0x007c7fe0    85c0
                         pop                  ecx                                         // 0x007c7fe2    59
                         {disp8} jle          _jmp_addr_0x007c7fe7                        // 0x007c7fe3    7e02
                         mov.s                ebx, esi                                    // 0x007c7fe5    8bde
_jmp_addr_0x007c7fe7:    add                  esi, dword ptr [ebp + 0x10]                 // 0x007c7fe7    037510
                         {disp8} jmp          _jmp_addr_0x007c7fd6                        // 0x007c7fea    ebea
_jmp_addr_0x007c7fec:    push                 dword ptr [ebp + 0x10]                      // 0x007c7fec    ff7510
                         push                 edi                                         // 0x007c7fef    57
                         push                 ebx                                         // 0x007c7ff0    53
                         call                 _jmp_addr_0x007c8006                        // 0x007c7ff1    e810000000
                         sub                  edi, dword ptr [ebp + 0x10]                 // 0x007c7ff6    2b7d10
                         add                  esp, 0x0c                                   // 0x007c7ff9    83c40c
                         cmp                  edi, dword ptr [ebp + 0x08]                 // 0x007c7ffc    3b7d08
                         {disp8} ja           _jmp_addr_0x007c7fd0                        // 0x007c7fff    77cf
                         pop                  esi                                         // 0x007c8001    5e
                         pop                  ebx                                         // 0x007c8002    5b
_jmp_addr_0x007c8003:    pop                  edi                                         // 0x007c8003    5f
                         pop                  ebp                                         // 0x007c8004    5d
                         ret                                                              // 0x007c8005    c3
_jmp_addr_0x007c8006:    {disp8} mov          eax, dword ptr [esp + 0x04]                 // 0x007c8006    8b442404
                         {disp8} mov          ecx, dword ptr [esp + 0x08]                 // 0x007c800a    8b4c2408
                         cmp.s                eax, ecx                                    // 0x007c800e    3bc1
                         push                 esi                                         // 0x007c8010    56
                         {disp8} je           _jmp_addr_0x007c8030                        // 0x007c8011    741d
                         {disp8} mov          edx, dword ptr [esp + 0x10]                 // 0x007c8013    8b542410
                         mov.s                esi, edx                                    // 0x007c8017    8bf2
                         dec                  edx                                         // 0x007c8019    4a
                         test                 esi, esi                                    // 0x007c801a    85f6
                         {disp8} je           _jmp_addr_0x007c8030                        // 0x007c801c    7412
                         push                 ebx                                         // 0x007c801e    53
                         {disp8} lea          esi, dword ptr [edx + 0x01]                 // 0x007c801f    8d7201
_jmp_addr_0x007c8022:    mov                  bl, byte ptr [ecx]                          // 0x007c8022    8a19
                         mov                  dl, byte ptr [eax]                          // 0x007c8024    8a10
                         mov                  byte ptr [eax], bl                          // 0x007c8026    8818
                         inc                  eax                                         // 0x007c8028    40
                         mov                  byte ptr [ecx], dl                          // 0x007c8029    8811
                         inc                  ecx                                         // 0x007c802b    41
                         dec                  esi                                         // 0x007c802c    4e
                         {disp8} jne          _jmp_addr_0x007c8022                        // 0x007c802d    75f3
                         pop                  ebx                                         // 0x007c802f    5b
_jmp_addr_0x007c8030:    pop                  esi                                         // 0x007c8030    5e
                         ret                                                              // 0x007c8031    c3
                         int3                                                             // 0x007c8032    cc
                         int3                                                             // 0x007c8033    cc
                         int3                                                             // 0x007c8034    cc
                         int3                                                             // 0x007c8035    cc
                         int3                                                             // 0x007c8036    cc
                         int3                                                             // 0x007c8037    cc
                         int3                                                             // 0x007c8038    cc
                         int3                                                             // 0x007c8039    cc
                         int3                                                             // 0x007c803a    cc
                         int3                                                             // 0x007c803b    cc
                         int3                                                             // 0x007c803c    cc
                         int3                                                             // 0x007c803d    cc
                         int3                                                             // 0x007c803e    cc
                         int3                                                             // 0x007c803f    cc
                         mov                  edx, 0x00c2d450                             // 0x007c8040    ba50d4c200
                         {disp32} jmp         _jmp_addr_0x007d300b                        // 0x007c8045    e9c1af0000
_jmp_addr_0x007c804a:    mov                  edx, 0x00c2d450                             // 0x007c804a    ba50d4c200
                         {disp32} jmp         _jmp_addr_0x007d2f90                        // 0x007c804f    e93caf0000
                         fxch                 st(1)                                       // 0x007c8054    d9c9
_jmp_addr_0x007c8056:    cmp                  dword ptr [OFFSET __adjust_fdiv], 0x01      // 0x007c8056    833d9441e80001
                         {disp8} je           _jmp_addr_0x007c8063                        // 0x007c805d    7404
                         fprem                                                            // 0x007c805f    d9f8
                         {disp8} jmp          _jmp_addr_0x007c8068                        // 0x007c8061    eb05
_jmp_addr_0x007c8063:    call                 _jmp_addr_0x007d3c0c                        // 0x007c8063    e8a4bb0000
_jmp_addr_0x007c8068:    wait                                                             // 0x007c8068    9b
                         fnstsw               ax                                          // 0x007c8069    dfe0
                         wait                                                             // 0x007c806b    9b
                         sahf                                                             // 0x007c806c    9e
                         {disp8} jp           _jmp_addr_0x007c8056                        // 0x007c806d    7ae7
                         fstp                 st(1)                                       // 0x007c806f    ddd9
                         ret                                                              // 0x007c8071    c3
_jmp_addr_0x007c8072:    push                 ebp                                         // 0x007c8072    55
                         mov.s                ebp, esp                                    // 0x007c8073    8bec
                         push                 ecx                                         // 0x007c8075    51
                         push                 ecx                                         // 0x007c8076    51
                         push                 ebx                                         // 0x007c8077    53
                         push                 esi                                         // 0x007c8078    56
                         mov                  esi, 0x0000ffff                             // 0x007c8079    beffff0000
                         push                 esi                                         // 0x007c807e    56
                         push                 dword ptr [data_bytes + 0x2674a0]           // 0x007c807f    ff35a0d4c200
                         call                 __ctrlfp                                    // 0x007c8085    e8d5980000
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c808a    dd4508
                         pop                  ecx                                         // 0x007c808d    59
                         mov.s                ebx, eax                                    // 0x007c808e    8bd8
                         {disp8} mov          eax, dword ptr [ebp + 0x0e]                 // 0x007c8090    8b450e
                         pop                  ecx                                         // 0x007c8093    59
                         push                 ecx                                         // 0x007c8094    51
                         and                  ax, 0x7ff0                                  // 0x007c8095    6625f07f
                         push                 ecx                                         // 0x007c8099    51
                         cmp                  ax, 0x7ff0                                  // 0x007c809a    663df07f
                         fstp                 qword ptr [esp]                             // 0x007c809e    dd1c24
                         {disp8} jne          _jmp_addr_0x007c80f8                        // 0x007c80a1    7555
                         call                 __sptype                                    // 0x007c80a3    e8c28f0000
                         pop                  ecx                                         // 0x007c80a8    59
                         test                 eax, eax                                    // 0x007c80a9    85c0
                         pop                  ecx                                         // 0x007c80ab    59
                         {disp8} jle          _jmp_addr_0x007c80db                        // 0x007c80ac    7e2d
                         cmp                  eax, 0x02                                   // 0x007c80ae    83f802
                         {disp8} jle          _jmp_addr_0x007c80cd                        // 0x007c80b1    7e1a
                         cmp                  eax, 0x03                                   // 0x007c80b3    83f803
                         {disp8} jne          _jmp_addr_0x007c80db                        // 0x007c80b6    7523
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c80b8    dd4508
                         push                 ebx                                         // 0x007c80bb    53
                         push                 ecx                                         // 0x007c80bc    51
                         push                 ecx                                         // 0x007c80bd    51
                         fstp                 qword ptr [esp]                             // 0x007c80be    dd1c24
                         push                 0xc                                         // 0x007c80c1    6a0c
                         call                 __handle_qnan1                              // 0x007c80c3    e8bd900000
                         add                  esp, 0x10                                   // 0x007c80c8    83c410
                         {disp8} jmp          _jmp_addr_0x007c813d                        // 0x007c80cb    eb70
_jmp_addr_0x007c80cd:    push                 esi                                         // 0x007c80cd    56
                         push                 ebx                                         // 0x007c80ce    53
                         call                 __ctrlfp                                    // 0x007c80cf    e88b980000
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c80d4    dd4508
                         pop                  ecx                                         // 0x007c80d7    59
                         pop                  ecx                                         // 0x007c80d8    59
                         {disp8} jmp          _jmp_addr_0x007c813d                        // 0x007c80d9    eb62
_jmp_addr_0x007c80db:    {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c80db    dd4508
                         {disp32} fadd        qword ptr [__real@8@3fff8000000000000000] // 0x007c80de    dc0580b68a00
                         push                 ebx                                         // 0x007c80e4    53
                         push                 ecx                                         // 0x007c80e5    51
                         push                 ecx                                         // 0x007c80e6    51
                         fstp                 qword ptr [esp]                             // 0x007c80e7    dd1c24
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c80ea    dd4508
                         push                 ecx                                         // 0x007c80ed    51
                         push                 ecx                                         // 0x007c80ee    51
                         fstp                 qword ptr [esp]                             // 0x007c80ef    dd1c24
                         push                 0xc                                         // 0x007c80f2    6a0c
                         push                 0x8                                         // 0x007c80f4    6a08
                         {disp8} jmp          _jmp_addr_0x007c8135                        // 0x007c80f6    eb3d
_jmp_addr_0x007c80f8:    call                 _jmp_addr_0x007d3f8b                        // 0x007c80f8    e88ebe0000
                         {disp8} fstp         qword ptr [ebp + -0x08]                     // 0x007c80fd    dd5df8
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8100    dd45f8
                         {disp8} fcomp        qword ptr [ebp + 0x08]                      // 0x007c8103    dc5d08
                         pop                  ecx                                         // 0x007c8106    59
                         pop                  ecx                                         // 0x007c8107    59
                         fnstsw               ax                                          // 0x007c8108    dfe0
                         sahf                                                             // 0x007c810a    9e
                         {disp8} jne          _jmp_addr_0x007c811b                        // 0x007c810b    750e
_jmp_addr_0x007c810d:    push                 esi                                         // 0x007c810d    56
                         push                 ebx                                         // 0x007c810e    53
                         call                 __ctrlfp                                    // 0x007c810f    e84b980000
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8114    dd45f8
                         pop                  ecx                                         // 0x007c8117    59
                         pop                  ecx                                         // 0x007c8118    59
                         {disp8} jmp          _jmp_addr_0x007c813d                        // 0x007c8119    eb22
_jmp_addr_0x007c811b:    test                 bl, 0x20                                    // 0x007c811b    f6c320
                         {disp8} jne          _jmp_addr_0x007c810d                        // 0x007c811e    75ed
                         {disp8} fld          qword ptr [ebp + -0x08]                     // 0x007c8120    dd45f8
                         push                 ebx                                         // 0x007c8123    53
                         push                 ecx                                         // 0x007c8124    51
                         push                 ecx                                         // 0x007c8125    51
                         fstp                 qword ptr [esp]                             // 0x007c8126    dd1c24
                         {disp8} fld          qword ptr [ebp + 0x08]                      // 0x007c8129    dd4508
                         push                 ecx                                         // 0x007c812c    51
                         push                 ecx                                         // 0x007c812d    51
                         fstp                 qword ptr [esp]                             // 0x007c812e    dd1c24
                         push                 0xc                                         // 0x007c8131    6a0c
                         push                 0x10                                        // 0x007c8133    6a10
_jmp_addr_0x007c8135:    call                 __except1                                   // 0x007c8135    e8ff900000
                         add                  esp, 0x1c                                   // 0x007c813a    83c41c
_jmp_addr_0x007c813d:    pop                  esi                                         // 0x007c813d    5e
                         pop                  ebx                                         // 0x007c813e    5b
                         leave                                                            // 0x007c813f    c9
                         ret                                                              // 0x007c8140    c3
_jmp_addr_0x007c8141:    push                 ebp                                         // 0x007c8141    55
                         mov.s                ebp, esp                                    // 0x007c8142    8bec
                         {disp8} mov          eax, dword ptr [ebp + 0x10]                 // 0x007c8144    8b4510
                         push                 ebx                                         // 0x007c8147    53
                         push                 esi                                         // 0x007c8148    56
                         push                 edi                                         // 0x007c8149    57
                         {disp8} lea          edi, dword ptr [eax + -0x01]                // 0x007c814a    8d78ff
                         {disp8} mov          ecx, dword ptr [ebp + 0x0c]                 // 0x007c814d    8b4d0c
                         imul                 edi, dword ptr [ebp + 0x14]                 // 0x007c8150    0faf7d14
                         add.s                edi, ecx                                    // 0x007c8154    03f9
                         {disp8} mov          dword ptr [ebp + 0x0c], ecx                 // 0x007c8156    894d0c
                         cmp.s                ecx, edi                                    // 0x007c8159    3bcf
                         {disp8} ja           _jmp_addr_0x007c81a8                        // 0x007c815b    774b
_jmp_addr_0x007c815d:    mov.s                ebx, eax                                    // 0x007c815d    8bd8
                         shr                  ebx, 1                                      // 0x007c815f    d1eb
                         {disp8} je           _jmp_addr_0x007c81b3                        // 0x007c8161    7450
                         {disp8} mov          dword ptr [ebp + 0x10], eax                 // 0x007c8163    894510
                         mov.s                eax, ebx                                    // 0x007c8166    8bc3
                         and                  dword ptr [ebp + 0x10], 0x01                // 0x007c8168    83651001
                         {disp8} jne          _jmp_addr_0x007c8171                        // 0x007c816c    7503
                         {disp8} lea          eax, dword ptr [ebx + -0x01]                // 0x007c816e    8d43ff
_jmp_addr_0x007c8171:    imul                 eax, dword ptr [ebp + 0x14]                 // 0x007c8171    0faf4514
                         add                  eax, dword ptr [ebp + 0x0c]                 // 0x007c8175    03450c
                         mov.s                esi, eax                                    // 0x007c8178    8bf0
                         push                 esi                                         // 0x007c817a    56
                         push                 dword ptr [ebp + 0x08]                      // 0x007c817b    ff7508
                         call                 dword ptr [ebp + 0x18]                      // 0x007c817e    ff5518
                         pop                  ecx                                         // 0x007c8181    59
                         test                 eax, eax                                    // 0x007c8182    85c0
                         pop                  ecx                                         // 0x007c8184    59
                         {disp8} je           _jmp_addr_0x007c81af                        // 0x007c8185    7428
                         {disp8} jge          _jmp_addr_0x007c8199                        // 0x007c8187    7d10
                         sub                  esi, dword ptr [ebp + 0x14]                 // 0x007c8189    2b7514
                         cmp                  dword ptr [ebp + 0x10], 0x00                // 0x007c818c    837d1000
                         mov.s                edi, esi                                    // 0x007c8190    8bfe
                         {disp8} jne          _jmp_addr_0x007c81a1                        // 0x007c8192    750d
                         {disp8} lea          eax, dword ptr [ebx + -0x01]                // 0x007c8194    8d43ff
                         {disp8} jmp          _jmp_addr_0x007c81a3                        // 0x007c8197    eb0a
_jmp_addr_0x007c8199:    {disp8} mov          eax, dword ptr [ebp + 0x14]                 // 0x007c8199    8b4514
                         add.s                esi, eax                                    // 0x007c819c    03f0
                         {disp8} mov          dword ptr [ebp + 0x0c], esi                 // 0x007c819e    89750c
_jmp_addr_0x007c81a1:    mov.s                eax, ebx                                    // 0x007c81a1    8bc3
_jmp_addr_0x007c81a3:    cmp                  dword ptr [ebp + 0x0c], edi                 // 0x007c81a3    397d0c
                         {disp8} jbe          _jmp_addr_0x007c815d                        // 0x007c81a6    76b5
_jmp_addr_0x007c81a8:    xor.s                eax, eax                                    // 0x007c81a8    33c0
_jmp_addr_0x007c81aa:    pop                  edi                                         // 0x007c81aa    5f
                         pop                  esi                                         // 0x007c81ab    5e
                         pop                  ebx                                         // 0x007c81ac    5b
                         pop                  ebp                                         // 0x007c81ad    5d
                         ret                                                              // 0x007c81ae    c3
_jmp_addr_0x007c81af:    mov.s                eax, esi                                    // 0x007c81af    8bc6
                         {disp8} jmp          _jmp_addr_0x007c81aa                        // 0x007c81b1    ebf7
_jmp_addr_0x007c81b3:    test                 eax, eax                                    // 0x007c81b3    85c0
                         {disp8} je           _jmp_addr_0x007c81a8                        // 0x007c81b5    74f1
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c81b7    ff750c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c81ba    ff7508
                         call                 dword ptr [ebp + 0x18]                      // 0x007c81bd    ff5518
                         neg                  eax                                         // 0x007c81c0    f7d8
                         sbb.s                eax, eax                                    // 0x007c81c2    1bc0
                         pop                  ecx                                         // 0x007c81c4    59
                         not                  eax                                         // 0x007c81c5    f7d0
                         and                  eax, dword ptr [ebp + 0x0c]                 // 0x007c81c7    23450c
                         pop                  ecx                                         // 0x007c81ca    59
                         {disp8} jmp          _jmp_addr_0x007c81aa                        // 0x007c81cb    ebdd
_jmp_addr_0x007c81cd:    {disp8} mov          eax, dword ptr [esp + 0x04]                 // 0x007c81cd    8b442404
                         push                 esi                                         // 0x007c81d1    56
                         push                 edi                                         // 0x007c81d2    57
_jmp_addr_0x007c81d3:    mov                  dx, word ptr [eax]                          // 0x007c81d3    668b10
                         test                 dx, dx                                      // 0x007c81d6    6685d2
                         {disp8} je           _jmp_addr_0x007c8209                        // 0x007c81d9    742e
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                 // 0x007c81db    8b4c2410
                         mov.s                edx, eax                                    // 0x007c81df    8bd0
                         sub.s                edx, ecx                                    // 0x007c81e1    2bd1
_jmp_addr_0x007c81e3:    mov                  si, word ptr [ecx]                          // 0x007c81e3    668b31
                         test                 si, si                                      // 0x007c81e6    6685f6
                         {disp8} je           _jmp_addr_0x007c81ff                        // 0x007c81e9    7414
                         movzx                edi, word ptr [edx + ecx * 0x1]             // 0x007c81eb    0fb73c0a
                         movzx                esi, si                                     // 0x007c81ef    0fb7f6
                         sub.s                edi, esi                                    // 0x007c81f2    2bfe
                         {disp8} jne          _jmp_addr_0x007c81ff                        // 0x007c81f4    7509
                         inc                  ecx                                         // 0x007c81f6    41
                         inc                  ecx                                         // 0x007c81f7    41
                         cmp                  word ptr [edx + ecx * 0x1], 0x00            // 0x007c81f8    66833c0a00
                         {disp8} jne          _jmp_addr_0x007c81e3                        // 0x007c81fd    75e4
_jmp_addr_0x007c81ff:    cmp                  word ptr [ecx], 0x00                        // 0x007c81ff    66833900
                         {disp8} je           _jmp_addr_0x007c820b                        // 0x007c8203    7406
                         inc                  eax                                         // 0x007c8205    40
                         inc                  eax                                         // 0x007c8206    40
                         {disp8} jmp          _jmp_addr_0x007c81d3                        // 0x007c8207    ebca
_jmp_addr_0x007c8209:    xor.s                eax, eax                                    // 0x007c8209    33c0
_jmp_addr_0x007c820b:    pop                  edi                                         // 0x007c820b    5f
                         pop                  esi                                         // 0x007c820c    5e
                         ret                                                              // 0x007c820d    c3
_jmp_addr_0x007c820e:    push                 ebp                                         // 0x007c820e    55
                         mov.s                ebp, esp                                    // 0x007c820f    8bec
                         push                 ecx                                         // 0x007c8211    51
                         push                 ebx                                         // 0x007c8212    53
                         push                 esi                                         // 0x007c8213    56
                         push                 edi                                         // 0x007c8214    57
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8215    8b450c
                         add                  eax, 0x0c                                   // 0x007c8218    83c00c
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c821b    8945fc
                         {disp32} mov         ebx, fs:[0x0]                               // 0x007c821e    648b1d00000000
                         mov                  eax, dword ptr [ebx]                        // 0x007c8225    8b03
                         {disp32} mov         fs:[0x0], eax                               // 0x007c8227    64a300000000
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c822d    8b4508
                         {disp8} mov          ebx, dword ptr [ebp + 0x0c]                 // 0x007c8230    8b5d0c
                         {disp8} mov          esp, dword ptr [ebx + -0x04]                // 0x007c8233    8b63fc
                         {disp8} mov          ebp, dword ptr [ebp + -0x04]                // 0x007c8236    8b6dfc
                         jmp                  eax                                         // 0x007c8239    ffe0
                         pop                  edi                                         // 0x007c823b    5f
                         pop                  esi                                         // 0x007c823c    5e
                         pop                  ebx                                         // 0x007c823d    5b
                         leave                                                            // 0x007c823e    c9
                         ret                  0x0008                                      // 0x007c823f    c20800
_jmp_addr_0x007c8242:    pop                  eax                                         // 0x007c8242    58
                         pop                  ecx                                         // 0x007c8243    59
                         xchg                 dword ptr [esp], eax                        // 0x007c8244    870424
                         jmp                  eax                                         // 0x007c8247    ffe0
_jmp_addr_0x007c8249:    pop                  eax                                         // 0x007c8249    58
                         pop                  ecx                                         // 0x007c824a    59
                         xchg                 dword ptr [esp], eax                        // 0x007c824b    870424
                         jmp                  eax                                         // 0x007c824e    ffe0
_jmp_addr_0x007c8250:    pop                  eax                                         // 0x007c8250    58
                         pop                  ecx                                         // 0x007c8251    59
                         xchg                 dword ptr [esp], eax                        // 0x007c8252    870424
                         jmp                  eax                                         // 0x007c8255    ffe0
_jmp_addr_0x007c8257:    push                 ebp                                         // 0x007c8257    55
                         mov.s                ebp, esp                                    // 0x007c8258    8bec
                         push                 ecx                                         // 0x007c825a    51
                         push                 ecx                                         // 0x007c825b    51
                         push                 ebx                                         // 0x007c825c    53
                         push                 esi                                         // 0x007c825d    56
                         push                 edi                                         // 0x007c825e    57
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c825f    64a100000000
                         {disp8} mov          dword ptr [ebp + -0x08], eax                // 0x007c8265    8945f8
                         {disp8} mov          dword ptr [ebp + -0x04], 0x007c827f         // 0x007c8268    c745fc7f827c00
                         push                 0x0                                         // 0x007c826f    6a00
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c8271    ff750c
                         push                 dword ptr [ebp + -0x04]                     // 0x007c8274    ff75fc
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8277    ff7508
                         call                 _jmp_KERNEL32_DLL__RtlUnwind                // 0x007c827a    e8e9ce0d00
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c827f    8b450c
                         {disp8} mov          eax, dword ptr [eax + 0x04]                 // 0x007c8282    8b4004
                         and                  al, -0x03                                   // 0x007c8285    24fd
                         {disp8} mov          ecx, dword ptr [ebp + 0x0c]                 // 0x007c8287    8b4d0c
                         {disp8} mov          dword ptr [ecx + 0x04], eax                 // 0x007c828a    894104
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c828d    64a100000000
                         {disp8} mov          ebx, dword ptr [ebp + -0x08]                // 0x007c8293    8b5df8
                         mov                  dword ptr [ebx], eax                        // 0x007c8296    8903
                         {disp32} mov         fs:[0x0], ebx                               // 0x007c8298    64891d00000000
                         pop                  edi                                         // 0x007c829f    5f
                         pop                  esi                                         // 0x007c82a0    5e
                         pop                  ebx                                         // 0x007c82a1    5b
                         leave                                                            // 0x007c82a2    c9
                         ret                  0x0008                                      // 0x007c82a3    c20800
_jmp_addr_0x007c82a6:    push                 ebp                                         // 0x007c82a6    55
                         mov.s                ebp, esp                                    // 0x007c82a7    8bec
                         sub                  esp, 0x04                                   // 0x007c82a9    83ec04
                         push                 ebx                                         // 0x007c82ac    53
                         push                 esi                                         // 0x007c82ad    56
                         push                 edi                                         // 0x007c82ae    57
                         cld                                                              // 0x007c82af    fc
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c82b0    8945fc
                         xor.s                eax, eax                                    // 0x007c82b3    33c0
                         push                 eax                                         // 0x007c82b5    50
                         push                 eax                                         // 0x007c82b6    50
                         push                 eax                                         // 0x007c82b7    50
                         push                 dword ptr [ebp + -0x04]                     // 0x007c82b8    ff75fc
                         push                 dword ptr [ebp + 0x14]                      // 0x007c82bb    ff7514
                         push                 dword ptr [ebp + 0x10]                      // 0x007c82be    ff7510
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c82c1    ff750c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c82c4    ff7508
                         call                 _jmp_addr_0x007d3f9d                        // 0x007c82c7    e8d1bc0000
                         add                  esp, 0x20                                   // 0x007c82cc    83c420
                         {disp8} mov          dword ptr [ebp + 0x14], eax                 // 0x007c82cf    894514
                         pop                  edi                                         // 0x007c82d2    5f
                         pop                  esi                                         // 0x007c82d3    5e
                         pop                  ebx                                         // 0x007c82d4    5b
                         {disp8} mov          eax, dword ptr [ebp + 0x14]                 // 0x007c82d5    8b4514
                         mov.s                esp, ebp                                    // 0x007c82d8    8be5
                         pop                  ebp                                         // 0x007c82da    5d
                         ret                                                              // 0x007c82db    c3
                         {disp8} mov          eax, dword ptr [esp + 0x04]                 // 0x007c82dc    8b442404
                         push                 dword ptr [eax + 0x1c]                      // 0x007c82e0    ff701c
                         push                 dword ptr [eax + 0x28]                      // 0x007c82e3    ff7028
                         push                 0x0                                         // 0x007c82e6    6a00
                         push                 dword ptr [eax + 0x18]                      // 0x007c82e8    ff7018
                         call                 _jmp_addr_0x007d42f2                        // 0x007c82eb    e802c00000
                         add                  esp, 0x10                                   // 0x007c82f0    83c410
                         ret                  0x0004                                      // 0x007c82f3    c20400
_jmp_addr_0x007c82f6:    push                 ebp                                         // 0x007c82f6    55
                         mov.s                ebp, esp                                    // 0x007c82f7    8bec
                         sub                  esp, 0x14                                   // 0x007c82f9    83ec14
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c82fc    8b450c
                         and                  dword ptr [ebp + -0x14], 0x00               // 0x007c82ff    8365ec00
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                 // 0x007c8303    8b4d08
                         {disp8} mov          dword ptr [ebp + -0x0c], eax                // 0x007c8306    8945f4
                         {disp8} mov          eax, dword ptr [ebp + 0x14]                 // 0x007c8309    8b4514
                         {disp8} mov          dword ptr [ebp + -0x10], 0x007c834a         // 0x007c830c    c745f04a837c00
                         inc                  eax                                         // 0x007c8313    40
                         {disp8} mov          dword ptr [ebp + -0x08], ecx                // 0x007c8314    894df8
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c8317    8945fc
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c831a    64a100000000
                         {disp8} mov          dword ptr [ebp + -0x14], eax                // 0x007c8320    8945ec
                         {disp32} lea         eax, dword ptr [ebp + -0x00000014]          // 0x007c8323    8d85ecffffff
                         {disp32} mov         fs:[0x0], eax                               // 0x007c8329    64a300000000
                         push                 dword ptr [ebp + 0x18]                      // 0x007c832f    ff7518
                         push                 ecx                                         // 0x007c8332    51
                         push                 dword ptr [ebp + 0x10]                      // 0x007c8333    ff7510
                         call                 _jmp_addr_0x007d47c0                        // 0x007c8336    e885c40000
                         mov.s                ecx, eax                                    // 0x007c833b    8bc8
                         {disp8} mov          eax, dword ptr [ebp + -0x14]                // 0x007c833d    8b45ec
                         {disp32} mov         fs:[0x0], eax                               // 0x007c8340    64a300000000
                         mov.s                eax, ecx                                    // 0x007c8346    8bc1
                         leave                                                            // 0x007c8348    c9
                         ret                                                              // 0x007c8349    c3
                         push                 ebp                                         // 0x007c834a    55
                         mov.s                ebp, esp                                    // 0x007c834b    8bec
                         cld                                                              // 0x007c834d    fc
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c834e    8b450c
                         push                 0x0                                         // 0x007c8351    6a00
                         push                 eax                                         // 0x007c8353    50
                         push                 dword ptr [eax + 0x10]                      // 0x007c8354    ff7010
                         push                 dword ptr [eax + 0x08]                      // 0x007c8357    ff7008
                         push                 0x0                                         // 0x007c835a    6a00
                         push                 dword ptr [ebp + 0x10]                      // 0x007c835c    ff7510
                         push                 dword ptr [eax + 0x0c]                      // 0x007c835f    ff700c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8362    ff7508
                         call                 _jmp_addr_0x007d3f9d                        // 0x007c8365    e833bc0000
                         add                  esp, 0x20                                   // 0x007c836a    83c420
                         pop                  ebp                                         // 0x007c836d    5d
                         ret                                                              // 0x007c836e    c3
_jmp_addr_0x007c836f:    push                 ebp                                         // 0x007c836f    55
                         mov.s                ebp, esp                                    // 0x007c8370    8bec
                         sub                  esp, 0x34                                   // 0x007c8372    83ec34
                         push                 ebx                                         // 0x007c8375    53
                         push                 esi                                         // 0x007c8376    56
                         push                 edi                                         // 0x007c8377    57
                         and                  dword ptr [ebp + -0x28], 0x00               // 0x007c8378    8365d800
                         {disp8} mov          dword ptr [ebp + -0x24], 0x007c8425         // 0x007c837c    c745dc25847c00
                         {disp8} mov          eax, dword ptr [ebp + 0x18]                 // 0x007c8383    8b4518
                         {disp8} mov          dword ptr [ebp + -0x20], eax                // 0x007c8386    8945e0
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8389    8b450c
                         {disp8} mov          dword ptr [ebp + -0x1c], eax                // 0x007c838c    8945e4
                         {disp8} mov          eax, dword ptr [ebp + 0x1c]                 // 0x007c838f    8b451c
                         {disp8} mov          dword ptr [ebp + -0x18], eax                // 0x007c8392    8945e8
                         {disp8} mov          eax, dword ptr [ebp + 0x20]                 // 0x007c8395    8b4520
                         {disp8} mov          dword ptr [ebp + -0x14], eax                // 0x007c8398    8945ec
                         and                  dword ptr [ebp + -0x10], 0x00               // 0x007c839b    8365f000
                         and                  dword ptr [ebp + -0x0c], 0x00               // 0x007c839f    8365f400
                         and                  dword ptr [ebp + -0x08], 0x00               // 0x007c83a3    8365f800
                         and                  dword ptr [ebp + -0x04], 0x00               // 0x007c83a7    8365fc00
                         {disp8} mov          dword ptr [ebp + -0x10], 0x007c83f7         // 0x007c83ab    c745f0f7837c00
                         {disp8} mov          dword ptr [ebp + -0x0c], esp                // 0x007c83b2    8965f4
                         {disp8} mov          dword ptr [ebp + -0x08], ebp                // 0x007c83b5    896df8
                         {disp32} mov         eax, fs:[0x0]                               // 0x007c83b8    64a100000000
                         {disp8} mov          dword ptr [ebp + -0x28], eax                // 0x007c83be    8945d8
                         {disp32} lea         eax, dword ptr [ebp + -0x00000028]          // 0x007c83c1    8d85d8ffffff
                         {disp32} mov         fs:[0x0], eax                               // 0x007c83c7    64a300000000
                         {disp8} mov          dword ptr [ebp + -0x34], 0x00000001         // 0x007c83cd    c745cc01000000
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c83d4    8b4508
                         {disp8} mov          dword ptr [ebp + -0x30], eax                // 0x007c83d7    8945d0
                         {disp8} mov          eax, dword ptr [ebp + 0x10]                 // 0x007c83da    8b4510
                         {disp8} mov          dword ptr [ebp + -0x2c], eax                // 0x007c83dd    8945d4
                         {disp8} lea          eax, dword ptr [ebp + -0x30]                // 0x007c83e0    8d45d0
                         push                 eax                                         // 0x007c83e3    50
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c83e4    8b4508
                         push                 dword ptr [eax]                             // 0x007c83e7    ff30
                         call                 __getptd                                    // 0x007c83e9    e83d9f0000
                         call                 dword ptr [eax + 0x68]                      // 0x007c83ee    ff5068
                         pop                  ecx                                         // 0x007c83f1    59
                         pop                  ecx                                         // 0x007c83f2    59
                         and                  dword ptr [ebp + -0x34], 0x00               // 0x007c83f3    8365cc00
                         cmp                  dword ptr [ebp + -0x04], 0x00               // 0x007c83f7    837dfc00
                         {disp8} je           _jmp_addr_0x007c8414                        // 0x007c83fb    7417
                         {disp32} mov         ebx, fs:[0x0]                               // 0x007c83fd    648b1d00000000
                         mov                  eax, dword ptr [ebx]                        // 0x007c8404    8b03
                         {disp8} mov          ebx, dword ptr [ebp + -0x28]                // 0x007c8406    8b5dd8
                         mov                  dword ptr [ebx], eax                        // 0x007c8409    8903
                         {disp32} mov         fs:[0x0], ebx                               // 0x007c840b    64891d00000000
                         {disp8} jmp          _jmp_addr_0x007c841d                        // 0x007c8412    eb09
_jmp_addr_0x007c8414:    {disp8} mov          eax, dword ptr [ebp + -0x28]                // 0x007c8414    8b45d8
                         {disp32} mov         fs:[0x0], eax                               // 0x007c8417    64a300000000
_jmp_addr_0x007c841d:    {disp8} mov          eax, dword ptr [ebp + -0x34]                // 0x007c841d    8b45cc
                         pop                  edi                                         // 0x007c8420    5f
                         pop                  esi                                         // 0x007c8421    5e
                         pop                  ebx                                         // 0x007c8422    5b
                         leave                                                            // 0x007c8423    c9
                         ret                                                              // 0x007c8424    c3
                         push                 ebp                                         // 0x007c8425    55
                         mov.s                ebp, esp                                    // 0x007c8426    8bec
                         push                 ebx                                         // 0x007c8428    53
                         push                 esi                                         // 0x007c8429    56
                         push                 edi                                         // 0x007c842a    57
                         cld                                                              // 0x007c842b    fc
                         {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c842c    8b4508
                         {disp8} mov          eax, dword ptr [eax + 0x04]                 // 0x007c842f    8b4004
                         and                  eax, 0x66                                   // 0x007c8432    83e066
                         test                 eax, eax                                    // 0x007c8435    85c0
                         {disp8} je           _jmp_addr_0x007c8448                        // 0x007c8437    740f
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8439    8b450c
                         {disp8} mov          dword ptr [eax + 0x24], 0x00000001          // 0x007c843c    c7402401000000
                         push                 0x1                                         // 0x007c8443    6a01
                         pop                  eax                                         // 0x007c8445    58
                         {disp8} jmp          _jmp_addr_0x007c8495                        // 0x007c8446    eb4d
_jmp_addr_0x007c8448:    push                 0x1                                         // 0x007c8448    6a01
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c844a    8b450c
                         push                 dword ptr [eax + 0x14]                      // 0x007c844d    ff7014
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8450    8b450c
                         push                 dword ptr [eax + 0x10]                      // 0x007c8453    ff7010
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8456    8b450c
                         push                 dword ptr [eax + 0x08]                      // 0x007c8459    ff7008
                         push                 0x0                                         // 0x007c845c    6a00
                         push                 dword ptr [ebp + 0x10]                      // 0x007c845e    ff7510
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8461    8b450c
                         push                 dword ptr [eax + 0x0c]                      // 0x007c8464    ff700c
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8467    ff7508
                         call                 _jmp_addr_0x007d3f9d                        // 0x007c846a    e82ebb0000
                         add                  esp, 0x20                                   // 0x007c846f    83c420
                         {disp8} mov          eax, dword ptr [ebp + 0x0c]                 // 0x007c8472    8b450c
                         cmp                  dword ptr [eax + 0x24], 0x00                // 0x007c8475    83782400
                         {disp8} jne          _jmp_addr_0x007c8486                        // 0x007c8479    750b
                         push                 dword ptr [ebp + 0x08]                      // 0x007c847b    ff7508
                         push                 dword ptr [ebp + 0x0c]                      // 0x007c847e    ff750c
                         call                 _jmp_addr_0x007c8257                        // 0x007c8481    e8d1fdffff
_jmp_addr_0x007c8486:    {disp8} mov          ebx, dword ptr [ebp + 0x0c]                 // 0x007c8486    8b5d0c
                         {disp8} mov          esp, dword ptr [ebx + 0x1c]                 // 0x007c8489    8b631c
                         {disp8} mov          ebp, dword ptr [ebx + 0x20]                 // 0x007c848c    8b6b20
                         {disp8} jmp          dword ptr [ebx + 0x18]                      // 0x007c848f    ff6318
                         push                 0x1                                         // 0x007c8492    6a01
                         pop                  eax                                         // 0x007c8494    58
_jmp_addr_0x007c8495:    pop                  edi                                         // 0x007c8495    5f
                         pop                  esi                                         // 0x007c8496    5e
                         pop                  ebx                                         // 0x007c8497    5b
                         pop                  ebp                                         // 0x007c8498    5d
                         ret                                                              // 0x007c8499    c3
_jmp_addr_0x007c849a:    push                 ebp                                         // 0x007c849a    55
                         mov.s                ebp, esp                                    // 0x007c849b    8bec
                         push                 ecx                                         // 0x007c849d    51
                         push                 ebx                                         // 0x007c849e    53
                         push                 esi                                         // 0x007c849f    56
                         cmp                  dword ptr [ebp + 0x0c], 0x00                // 0x007c84a0    837d0c00
                         push                 edi                                         // 0x007c84a4    57
                         {disp8} mov          edi, dword ptr [ebp + 0x08]                 // 0x007c84a5    8b7d08
                         {disp8} mov          esi, dword ptr [edi + 0x0c]                 // 0x007c84a8    8b770c
                         {disp8} mov          ebx, dword ptr [edi + 0x10]                 // 0x007c84ab    8b5f10
                         mov.s                eax, esi                                    // 0x007c84ae    8bc6
                         {disp8} mov          dword ptr [ebp + 0x08], esi                 // 0x007c84b0    897508
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c84b3    8945fc
                         {disp8} jl           _jmp_addr_0x007c84f1                        // 0x007c84b6    7c39
_jmp_addr_0x007c84b8:    cmp                  esi, -0x01                                  // 0x007c84b8    83feff
                         {disp8} jne          _jmp_addr_0x007c84c2                        // 0x007c84bb    7505
                         call                 _jmp_addr_0x007d4885                        // 0x007c84bd    e8c3c30000
_jmp_addr_0x007c84c2:    {disp8} mov          ecx, dword ptr [ebp + 0x10]                 // 0x007c84c2    8b4d10
                         dec                  esi                                         // 0x007c84c5    4e
                         lea                  eax, dword ptr [esi + esi * 0x4]            // 0x007c84c6    8d04b6
                         cmp                  dword ptr [ebx + eax * 0x4 + 0x04], ecx     // 0x007c84c9    394c8304
                         lea                  eax, dword ptr [ebx + eax * 0x4]            // 0x007c84cd    8d0483
                         {disp8} jge          _jmp_addr_0x007c84d7                        // 0x007c84d0    7d05
                         cmp                  ecx, dword ptr [eax + 0x08]                 // 0x007c84d2    3b4808
                         {disp8} jle          _jmp_addr_0x007c84dc                        // 0x007c84d5    7e05
_jmp_addr_0x007c84d7:    cmp                  esi, -0x01                                  // 0x007c84d7    83feff
                         {disp8} jne          _jmp_addr_0x007c84e8                        // 0x007c84da    750c
_jmp_addr_0x007c84dc:    {disp8} mov          eax, dword ptr [ebp + 0x08]                 // 0x007c84dc    8b4508
                         dec                  dword ptr [ebp + 0x0c]                      // 0x007c84df    ff4d0c
                         {disp8} mov          dword ptr [ebp + -0x04], eax                // 0x007c84e2    8945fc
                         {disp8} mov          dword ptr [ebp + 0x08], esi                 // 0x007c84e5    897508
_jmp_addr_0x007c84e8:    cmp                  dword ptr [ebp + 0x0c], 0x00                // 0x007c84e8    837d0c00
                         {disp8} jge          _jmp_addr_0x007c84b8                        // 0x007c84ec    7dca
                         {disp8} mov          eax, dword ptr [ebp + -0x04]                // 0x007c84ee    8b45fc
_jmp_addr_0x007c84f1:    {disp8} mov          ecx, dword ptr [ebp + 0x14]                 // 0x007c84f1    8b4d14
                         inc                  esi                                         // 0x007c84f4    46
                         mov                  dword ptr [ecx], esi                        // 0x007c84f5    8931
                         {disp8} mov          ecx, dword ptr [ebp + 0x18]                 // 0x007c84f7    8b4d18
                         mov                  dword ptr [ecx], eax                        // 0x007c84fa    8901
                         cmp                  eax, dword ptr [edi + 0x0c]                 // 0x007c84fc    3b470c
                         {disp8} ja           _jmp_addr_0x007c8505                        // 0x007c84ff    7704
                         cmp.s                esi, eax                                    // 0x007c8501    3bf0
                         {disp8} jbe          _jmp_addr_0x007c850a                        // 0x007c8503    7605
_jmp_addr_0x007c8505:    call                 _jmp_addr_0x007d4885                        // 0x007c8505    e87bc30000
_jmp_addr_0x007c850a:    lea                  eax, dword ptr [esi + esi * 0x4]            // 0x007c850a    8d04b6
                         pop                  edi                                         // 0x007c850d    5f
                         pop                  esi                                         // 0x007c850e    5e
                         lea                  eax, dword ptr [ebx + eax * 0x4]            // 0x007c850f    8d0483
                         pop                  ebx                                         // 0x007c8512    5b
                         leave                                                            // 0x007c8513    c9
                         ret                                                              // 0x007c8514    c3
                         int3                                                             // 0x007c8515    cc
                         int3                                                             // 0x007c8516    cc
                         int3                                                             // 0x007c8517    cc

__global_unwind2:        push                 ebp                                         // 0x007c8518    55
                         mov.s                ebp, esp                                    // 0x007c8519    8bec
                         push                 ebx                                         // 0x007c851b    53
                         push                 esi                                         // 0x007c851c    56
                         push                 edi                                         // 0x007c851d    57
                         push                 ebp                                         // 0x007c851e    55
                         push                 0x0                                         // 0x007c851f    6a00
                         push                 0x0                                         // 0x007c8521    6a00
                         push                 0x007c8530                                  // 0x007c8523    6830857c00
                         push                 dword ptr [ebp + 0x08]                      // 0x007c8528    ff7508
                         call                 _jmp_KERNEL32_DLL__RtlUnwind                // 0x007c852b    e838cc0d00
                         pop                  ebp                                         // 0x007c8530    5d
                         pop                  edi                                         // 0x007c8531    5f
                         pop                  esi                                         // 0x007c8532    5e
                         pop                  ebx                                         // 0x007c8533    5b
                         mov.s                esp, ebp                                    // 0x007c8534    8be5
                         pop                  ebp                                         // 0x007c8536    5d
                         ret                                                              // 0x007c8537    c3
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                 // 0x007c8538    8b4c2404
                         test                 dword ptr [ecx + 0x04], 0x00000006          // 0x007c853c    f7410406000000
                         mov                  eax, 0x00000001                             // 0x007c8543    b801000000
                         {disp8} je           _jmp_addr_0x007c8559                        // 0x007c8548    740f
                         {disp8} mov          eax, dword ptr [esp + 0x08]                 // 0x007c854a    8b442408
                         {disp8} mov          edx, dword ptr [esp + 0x10]                 // 0x007c854e    8b542410
                         mov                  dword ptr [edx], eax                        // 0x007c8552    8902
                         mov                  eax, 0x00000003                             // 0x007c8554    b803000000
_jmp_addr_0x007c8559:    ret                                                              // 0x007c8559    c3

__local_unwind2:         push                 ebx                                         // 0x007c855a    53
                         push                 esi                                         // 0x007c855b    56
                         push                 edi                                         // 0x007c855c    57
                         {disp8} mov          eax, dword ptr [esp + 0x10]                 // 0x007c855d    8b442410
                         push                 eax                                         // 0x007c8561    50
                         push                 -0x2                                        // 0x007c8562    6afe
                         push                 0x007c8538                                  // 0x007c8564    6838857c00
                         push                 fs:[0x0]                                    // 0x007c8569    64ff3500000000
                         {disp32} mov         fs:[0x0], esp                               // 0x007c8570    64892500000000
_jmp_addr_0x007c8577:    {disp8} mov          eax, dword ptr [esp + 0x20]                 // 0x007c8577    8b442420
                         {disp8} mov          ebx, dword ptr [eax + 0x08]                 // 0x007c857b    8b5808
                         {disp8} mov          esi, dword ptr [eax + 0x0c]                 // 0x007c857e    8b700c
                         cmp                  esi, -0x01                                  // 0x007c8581    83feff
                         {disp8} je           _jmp_addr_0x007c85b4                        // 0x007c8584    742e
                         cmp                  esi, dword ptr [esp + 0x24]                 // 0x007c8586    3b742424
                         {disp8} je           _jmp_addr_0x007c85b4                        // 0x007c858a    7428
                         lea                  esi, dword ptr [esi + esi * 0x2]            // 0x007c858c    8d3476
                         mov                  ecx, dword ptr [ebx + esi * 0x4]            // 0x007c858f    8b0cb3
                         {disp8} mov          dword ptr [esp + 0x08], ecx                 // 0x007c8592    894c2408
                         {disp8} mov          dword ptr [eax + 0x0c], ecx                 // 0x007c8596    89480c
                         cmp                  dword ptr [ebx + esi * 0x4 + 0x04], 0x00    // 0x007c8599    837cb30400
                         {disp8} jne          _jmp_addr_0x007c85b2                        // 0x007c859e    7512
                         push                 0x00000101                                  // 0x007c85a0    6801010000
                         {disp8} mov          eax, dword ptr [ebx + esi * 0x4 + 0x08]     // 0x007c85a5    8b44b308
                         call                 __NLG_Notify                                // 0x007c85a9    e840000000
                         call                 dword ptr [ebx + esi*4 + 8]                 // 0x007c85ae    ff54b308
_jmp_addr_0x007c85b2:    {disp8} jmp          _jmp_addr_0x007c8577                        // 0x007c85b2    ebc3
_jmp_addr_0x007c85b4:    pop                  dword ptr fs:[0x0]                          // 0x007c85b4    648f0500000000
                         add                  esp, 0x0c                                   // 0x007c85bb    83c40c
                         pop                  edi                                         // 0x007c85be    5f
                         pop                  esi                                         // 0x007c85bf    5e
                         pop                  ebx                                         // 0x007c85c0    5b
                         ret                                                              // 0x007c85c1    c3
_jmp_addr_0x007c85c2:    xor.s                eax, eax                                    // 0x007c85c2    33c0
                         {disp32} mov         ecx, fs:[0x0]                               // 0x007c85c4    648b0d00000000
                         cmp                  dword ptr [ecx + 0x04], 0x007c8538          // 0x007c85cb    81790438857c00
                         {disp8} jne          _jmp_addr_0x007c85e4                        // 0x007c85d2    7510
                         {disp8} mov          edx, dword ptr [ecx + 0x0c]                 // 0x007c85d4    8b510c
                         {disp8} mov          edx, dword ptr [edx + 0x0c]                 // 0x007c85d7    8b520c
                         cmp                  dword ptr [ecx + 0x08], edx                 // 0x007c85da    395108
                         {disp8} jne          _jmp_addr_0x007c85e4                        // 0x007c85dd    7505
                         mov                  eax, 0x00000001                             // 0x007c85df    b801000000
_jmp_addr_0x007c85e4:    ret                                                              // 0x007c85e4    c3
_jmp_addr_0x007c85e5:    push                 ebx                                         // 0x007c85e5    53
                         push                 ecx                                         // 0x007c85e6    51
                         mov                  ebx, /* __NLG_Destination */ 0x00c2d4a4     // 0x007c85e7    bba4d4c200
                         {disp8} jmp          _jmp_addr_0x007c85f8                        // 0x007c85ec    eb0a

__NLG_Notify:            push                 ebx                                         // 0x007c85ee    53
                         push                 ecx                                         // 0x007c85ef    51
                         mov                  ebx, /* __NLG_Destination */ 0x00c2d4a4     // 0x007c85f0    bba4d4c200
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                 // 0x007c85f5    8b4d08
_jmp_addr_0x007c85f8:    {disp8} mov          dword ptr [ebx + 0x08], ecx                 // 0x007c85f8    894b08
                         {disp8} mov          dword ptr [ebx + 0x04], eax                 // 0x007c85fb    894304
                         {disp8} mov          dword ptr [ebx + 0x0c], ebp                 // 0x007c85fe    896b0c
                         pop                  ecx                                         // 0x007c8601    59
                         pop                  ebx                                         // 0x007c8602    5b
                         ret                  0x0004                                      // 0x007c8603    c20400
_jmp_addr_0x007c8606:    push                 ebp                                         // 0x007c8606    55
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
_jmp_addr_0x007c8ae3:    push                 ebp                                         // 0x007c8ae3    55
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
_jmp_addr_0x007c8b69:    call                 _jmp_addr_0x007d3f8b                        // 0x007c8b69    e81db40000
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
