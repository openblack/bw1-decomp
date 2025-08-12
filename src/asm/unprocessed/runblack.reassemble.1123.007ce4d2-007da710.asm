.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _memmove
.extern _wcslen
.extern _atol
.extern _malloc
.extern _free
.extern _isspace
.extern _iswspace
.extern __getenv_lk
.extern __strcmpi
.extern _fclose
.extern __chkstk
.extern __copysign
.extern __fpclass
.extern ?_JumpToContinuation@@YGXPAXPAUEHRegistrationNode@@@Z
.extern ?_CallMemberFunction0@@YGXPAX0@Z
.extern ?_CallMemberFunction1@@YGXPAX00@Z
.extern ?_CallMemberFunction2@@YGXPAX00H@Z
.extern ?_UnwindNestedFrames@@YGXPAUEHRegistrationNode@@PAUEHExceptionRecord@@@Z
.extern ?_CallCatchBlock2@@YAPAXPAUEHRegistrationNode@@PBU_s_FuncInfo@@PAXHK@Z
.extern ?_CallSETranslator@@YAHPAUEHExceptionRecord@@PAUEHRegistrationNode@@PAX2PBU_s_FuncInfo@@H1@Z
.extern ?_GetRangeOfTrysToCheck@@YAPBU_s_TryBlockMapEntry@@PBU_s_FuncInfo@@HHPAI1@Z
.extern __global_unwind2
.extern __local_unwind2
.extern __abnormal_termination
.extern __NLG_Notify1
.extern __NLG_Notify
.extern _strcspn
.extern _strtol
.extern __dosmaperr
.extern __errno
.extern ___doserrno
.extern _strncpy
.extern _strncmp
.extern _strchr
.extern _calloc
.extern _strstr
.extern _tolower
.extern _abort
.extern _realloc
.extern __controlfp
.extern __aulldiv
.extern __allmul
.extern __exit
.extern __allshl
.extern _ungetc
.extern __ungetc_lk
.extern __flush
.extern __flushall
.extern __amsg_exit
.extern _strlen
.extern _memcpy
.extern __strnicmp
.extern ___addl
.extern ___mtold12
.extern _$I10_OUTPUT
.extern __mbschr
.extern __strdup
.extern __chsize_lk
.extern ___multtenpow12
.extern ___crtGetLocaleInfoW
.extern ___crtGetLocaleInfoA
.extern __clocalestr
.extern _?cachein@?1??_expandlocale@@9@9
.extern _?cacheout@?1??_expandlocale@@9@9

.globl _memcmp
.globl _fputwc
.globl _ungetwc
.globl _fgetwc
.globl __lock
.globl __unlock
.globl ___crtLCMapStringA
.globl __isctype
.globl _strtod
.globl ___crtCompareStringA
.globl __setdefaultprecision
.globl __ms_p5_mp_test_fdiv
.globl _strcmp
.globl __msize
.globl __flsbuf
.globl __output
.globl __itoa
.globl __ltoa
.globl __ultoa
.globl __i64toa
.globl __ui64toa
.globl __woutput
.globl __callnewh
.globl __heap_init
.globl ___sbh_find_block
.globl ___sbh_free_block
.globl ___sbh_alloc_block  
.globl ___sbh_resize_block
.globl ___old_sbh_find_block
.globl ___old_sbh_free_block
.globl ___old_sbh_alloc_block
.globl ___old_sbh_resize_block
.globl __input
.globl _iswctype
.globl __mbsnbicoll
.globl __stbuf
.globl __ftbuf
.globl __openfile
.globl __getstream
.globl __close
.globl __freebuf
.globl _ldexp
.globl __set_exp
.globl __sptype
.globl __decomp
.globl __handle_qnan1
.globl __handle_qnan2
.globl __except1
.globl __except2
.globl __ctrlfp
.globl __filbuf
.globl __read
.globl __write
.globl __write_lk
.globl __mtinit
.globl __getptd
.globl ___tzset
.globl __isindst
.globl _gmtime
.globl ___loctotime_t
.globl __powhlp
.globl __cintrindisp2
.globl __ctrandisp2
.globl __adj_fprem
.globl __frnd
.globl ___InternalCxxFrameHandler
.globl ___FrameUnwindToState
.globl __CallSettingFrame@12
.globl ?terminate@@YAXXZ
.globl ?_inconsistency@@YAXXZ
.globl __mbsnbcpy
.globl __lseek
.globl __lseek_lk
.globl __ioinit
.globl _strcpy
.globl _strcat
.globl ?__CxxSetUnhandledExceptionFilter@@YAXXZ
.globl ?__CxxRestoreUnhandledExceptionFilter@@YAXXZ
.globl __fltin2
.globl __winput
.globl ___crtLCMapStringW
.globl _signal
.globl _raise
.globl ___pxcptinfoptrs
.globl __FF_MSGBANNER
.globl __NMSG_WRITE
.globl __getbuf
.globl __ftelli64
.globl __fseeki64
.globl __commit
.globl __XcptFilter
.globl __wincmdln
.globl __setenvp
.globl __setargv
.globl ___crtGetEnvironmentStringsA
.globl _strpbrk
.globl __sopen
.globl __get_osfhandle
.globl __lock_fhandle
.globl __unlock_fhandle
.globl __except_handler3
.globl ___get_qualified_locale
.globl ___init_time
.globl ___init_ctype
.globl ___init_numeric
.globl ___init_monetary
.globl ___init_collate
.globl ___initmbctable
.globl ?__CxxUnhandledExceptionFilter@@YGJPAU_EXCEPTION_POINTERS@@@Z
.globl __fcloseall
.globl __flswbuf
.globl _wctomb
.globl _mbtowc
.globl __filwbuf
.globl __fptrap
.globl __cfltcvt
.globl __cropzeros
.globl __fassign
.globl __forcdecpt
.globl __positive
.globl __tosnan2
.globl __nosnan2
.globl __rtindfpop
.globl __rtnospop
.globl __rtzeropop
.globl __nan2
.globl ___crtGetStringTypeA
.globl __atodbl
.globl __atoflt
.globl __fptostr
.globl __fltout2
.globl __isatty
.globl __aullrem
.globl ___old_sbh_new_region
.globl ___sbh_heap_init
.globl ___crtGetStringTypeW
.globl ___crtsetenv
.globl __free_osfhnd
.globl __clrfp
.globl __statfp
.globl __set_statfp
.globl __ctrlfp
.globl __matherr
.globl __87except
.globl __safe_fdivr
.globl ?_ValidateRead@@YAHPBXI@Z
.globl ?_ValidateWrite@@YAHPAXI@Z
.globl ?_ValidateExecute@@YAHP6GHXZ@Z
.globl __ld12tod
.globl ___strgtold12
.globl _wcstombs
.globl ___crtMessageBoxA
.globl __lseeki64
.globl __ismbblead
.globl ___getlocaleinfo

.section .text

___strgtold12:           push               ebp                                            // 0x007d9c01    55
                         mov.s              ebp, esp                                       // 0x007d9c02    8bec
                         sub                esp, 0x5c                                      // 0x007d9c04    83ec5c
                         push               ebx                                            // 0x007d9c07    53
                         push               esi                                            // 0x007d9c08    56
                         push               edi                                            // 0x007d9c09    57
                         {disp8} mov        edi, dword ptr [ebp + 0x10]                    // 0x007d9c0a    8b7d10
                         {disp8} lea        eax, dword ptr [ebp + -0x5c]                   // 0x007d9c0d    8d45a4
                         push               0x1                                            // 0x007d9c10    6a01
                         {disp8} mov        dword ptr [ebp + -0x0c], eax                   // 0x007d9c12    8945f4
                         xor.s              eax, eax                                       // 0x007d9c15    33c0
                         pop                edx                                            // 0x007d9c17    5a
                         {disp8} mov        dword ptr [ebp + -0x28], eax                   // 0x007d9c18    8945d8
                         {disp8} mov        dword ptr [ebp + -0x18], edx                   // 0x007d9c1b    8955e8
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007d9c1e    8945fc
                         {disp8} mov        dword ptr [ebp + -0x10], eax                   // 0x007d9c21    8945f0
                         {disp8} mov        dword ptr [ebp + -0x24], eax                   // 0x007d9c24    8945dc
                         {disp8} mov        dword ptr [ebp + -0x20], eax                   // 0x007d9c27    8945e0
                         {disp8} mov        dword ptr [ebp + -0x2c], eax                   // 0x007d9c2a    8945d4
                         {disp8} mov        dword ptr [ebp + -0x30], eax                   // 0x007d9c2d    8945d0
                         {disp8} mov        dword ptr [ebp + -0x1c], eax                   // 0x007d9c30    8945e4
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007d9c33    8945f8
                         {disp8} mov        dword ptr [ebp + -0x14], eax                   // 0x007d9c36    8945ec
                         {disp8} mov        dword ptr [ebp + 0x10], edi                    // 0x007d9c39    897d10
_jmp_addr_0x007d9c3c:    mov                cl, byte ptr [edi]                             // 0x007d9c3c    8a0f
                         cmp                cl, 0x20                                       // 0x007d9c3e    80f920
                         {disp8} je         _jmp_addr_0x007d9c52                           // 0x007d9c41    740f
                         cmp                cl, 0x09                                       // 0x007d9c43    80f909
                         {disp8} je         _jmp_addr_0x007d9c52                           // 0x007d9c46    740a
                         cmp                cl, 0x0a                                       // 0x007d9c48    80f90a
                         {disp8} je         _jmp_addr_0x007d9c52                           // 0x007d9c4b    7405
                         cmp                cl, 0x0d                                       // 0x007d9c4d    80f90d
                         {disp8} jne        _jmp_addr_0x007d9c55                           // 0x007d9c50    7503
_jmp_addr_0x007d9c52:    inc                edi                                            // 0x007d9c52    47
                         {disp8} jmp        _jmp_addr_0x007d9c3c                           // 0x007d9c53    ebe7
_jmp_addr_0x007d9c55:    push               0x4                                            // 0x007d9c55    6a04
                         pop                esi                                            // 0x007d9c57    5e
_jmp_addr_0x007d9c58:    mov                bl, byte ptr [edi]                             // 0x007d9c58    8a1f
                         inc                edi                                            // 0x007d9c5a    47
                         cmp                eax, 0x0b                                      // 0x007d9c5b    83f80b
                         {disp32} ja        _jmp_addr_0x007d9edb                           // 0x007d9c5e    0f8777020000
                         jmp                dword ptr [eax*4 + 0x7da0a2]                   // 0x007d9c64    ff2485a2a07d00
                         cmp                bl, 0x31                                       // 0x007d9c6b    80fb31
                         {disp8} jl         _jmp_addr_0x007d9c7c                           // 0x007d9c6e    7c0c
                         cmp                bl, 0x39                                       // 0x007d9c70    80fb39
                         {disp8} jg         _jmp_addr_0x007d9c7c                           // 0x007d9c73    7f07
_jmp_addr_0x007d9c75:    push               0x3                                            // 0x007d9c75    6a03
                         {disp32} jmp       _jmp_addr_0x007d9e99                           // 0x007d9c77    e91d020000
_jmp_addr_0x007d9c7c:    cmp                bl, byte ptr [data_bytes + 0x267d30]           // 0x007d9c7c    3a1d30ddc200
                         {disp8} jne        _jmp_addr_0x007d9c8b                           // 0x007d9c82    7507
_jmp_addr_0x007d9c84:    push               0x5                                            // 0x007d9c84    6a05
                         {disp32} jmp       _jmp_addr_0x007d9ed1                           // 0x007d9c86    e946020000
_jmp_addr_0x007d9c8b:    movsx              eax, bl                                        // 0x007d9c8b    0fbec3
                         sub                eax, 0x2b                                      // 0x007d9c8e    83e82b
                         {disp8} je         _jmp_addr_0x007d9cb1                           // 0x007d9c91    741e
                         dec                eax                                            // 0x007d9c93    48
                         dec                eax                                            // 0x007d9c94    48
                         {disp8} je         _jmp_addr_0x007d9ca5                           // 0x007d9c95    740e
                         sub                eax, 0x03                                      // 0x007d9c97    83e803
                         {disp32} jne       _jmp_addr_0x007d9f74                           // 0x007d9c9a    0f85d4020000
                         {disp32} jmp       _jmp_addr_0x007d9d34                           // 0x007d9ca0    e98f000000
_jmp_addr_0x007d9ca5:    push               0x2                                            // 0x007d9ca5    6a02
                         {disp8} mov        dword ptr [ebp + -0x28], 0x00008000            // 0x007d9ca7    c745d800800000
                         pop                eax                                            // 0x007d9cae    58
                         {disp8} jmp        _jmp_addr_0x007d9c58                           // 0x007d9caf    eba7
_jmp_addr_0x007d9cb1:    and                dword ptr [ebp + -0x28], 0x00                  // 0x007d9cb1    8365d800
                         push               0x2                                            // 0x007d9cb5    6a02
                         pop                eax                                            // 0x007d9cb7    58
                         {disp8} jmp        _jmp_addr_0x007d9c58                           // 0x007d9cb8    eb9e
                         cmp                bl, 0x31                                       // 0x007d9cba    80fb31
                         {disp8} mov        dword ptr [ebp + -0x10], edx                   // 0x007d9cbd    8955f0
                         {disp8} jl         _jmp_addr_0x007d9cc7                           // 0x007d9cc0    7c05
                         cmp                bl, 0x39                                       // 0x007d9cc2    80fb39
                         {disp8} jle        _jmp_addr_0x007d9c75                           // 0x007d9cc5    7eae
_jmp_addr_0x007d9cc7:    cmp                bl, byte ptr [data_bytes + 0x267d30]           // 0x007d9cc7    3a1d30ddc200
                         {disp32} je        _jmp_addr_0x007d9d8f                           // 0x007d9ccd    0f84bc000000
                         cmp                bl, 0x2b                                       // 0x007d9cd3    80fb2b
                         {disp8} je         _jmp_addr_0x007d9d09                           // 0x007d9cd6    7431
                         cmp                bl, 0x2d                                       // 0x007d9cd8    80fb2d
                         {disp8} je         _jmp_addr_0x007d9d09                           // 0x007d9cdb    742c
                         cmp                bl, 0x30                                       // 0x007d9cdd    80fb30
                         {disp8} je         _jmp_addr_0x007d9d34                           // 0x007d9ce0    7452
_jmp_addr_0x007d9ce2:    cmp                bl, 0x43                                       // 0x007d9ce2    80fb43
                         {disp32} jle       _jmp_addr_0x007d9f74                           // 0x007d9ce5    0f8e89020000
                         cmp                bl, 0x45                                       // 0x007d9ceb    80fb45
                         {disp8} jle        _jmp_addr_0x007d9d02                           // 0x007d9cee    7e12
                         cmp                bl, 0x63                                       // 0x007d9cf0    80fb63
                         {disp32} jle       _jmp_addr_0x007d9f74                           // 0x007d9cf3    0f8e7b020000
                         cmp                bl, 0x65                                       // 0x007d9cf9    80fb65
                         {disp32} jg        _jmp_addr_0x007d9f74                           // 0x007d9cfc    0f8f72020000
_jmp_addr_0x007d9d02:    push               0x6                                            // 0x007d9d02    6a06
                         {disp32} jmp       _jmp_addr_0x007d9ed1                           // 0x007d9d04    e9c8010000
_jmp_addr_0x007d9d09:    dec                edi                                            // 0x007d9d09    4f
                         push               0xb                                            // 0x007d9d0a    6a0b
                         {disp32} jmp       _jmp_addr_0x007d9ed1                           // 0x007d9d0c    e9c0010000
                         cmp                bl, 0x31                                       // 0x007d9d11    80fb31
                         {disp8} jl         _jmp_addr_0x007d9d1f                           // 0x007d9d14    7c09
                         cmp                bl, 0x39                                       // 0x007d9d16    80fb39
                         {disp32} jle       _jmp_addr_0x007d9c75                           // 0x007d9d19    0f8e56ffffff
_jmp_addr_0x007d9d1f:    cmp                bl, byte ptr [data_bytes + 0x267d30]           // 0x007d9d1f    3a1d30ddc200
                         {disp32} je        _jmp_addr_0x007d9c84                           // 0x007d9d25    0f8459ffffff
                         cmp                bl, 0x30                                       // 0x007d9d2b    80fb30
                         {disp32} jne       _jmp_addr_0x007d9ee9                           // 0x007d9d2e    0f85b5010000
_jmp_addr_0x007d9d34:    mov.s              eax, edx                                       // 0x007d9d34    8bc2
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9d36    e91dffffff
                         {disp8} mov        dword ptr [ebp + -0x10], edx                   // 0x007d9d3b    8955f0
_jmp_addr_0x007d9d3e:    cmp                dword ptr [data_bytes + 0x267d2c], edx         // 0x007d9d3e    39152cddc200
                         {disp8} jle        _jmp_addr_0x007d9d57                           // 0x007d9d44    7e11
                         movzx              eax, bl                                        // 0x007d9d46    0fb6c3
                         push               esi                                            // 0x007d9d49    56
                         push               eax                                            // 0x007d9d4a    50
                         call               __isctype                                      // 0x007d9d4b    e8431cffff
                         pop                ecx                                            // 0x007d9d50    59
                         pop                ecx                                            // 0x007d9d51    59
                         push               0x1                                            // 0x007d9d52    6a01
                         pop                edx                                            // 0x007d9d54    5a
                         {disp8} jmp        _jmp_addr_0x007d9d65                           // 0x007d9d55    eb0e
_jmp_addr_0x007d9d57:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d9d57    8b0d20dbc200
                         movzx              eax, bl                                        // 0x007d9d5d    0fb6c3
                         mov                al, byte ptr [ecx + eax * 0x2]                 // 0x007d9d60    8a0441
                         and.s              eax, esi                                       // 0x007d9d63    23c6
_jmp_addr_0x007d9d65:    test               eax, eax                                       // 0x007d9d65    85c0
                         {disp8} je         _jmp_addr_0x007d9d87                           // 0x007d9d67    741e
                         cmp                dword ptr [ebp + -0x04], 0x19                  // 0x007d9d69    837dfc19
                         {disp8} jae        _jmp_addr_0x007d9d7f                           // 0x007d9d6d    7310
                         {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x007d9d6f    8b45f4
                         {disp8} inc        dword ptr [ebp + -0x04]                        // 0x007d9d72    ff45fc
                         sub                bl, 0x30                                       // 0x007d9d75    80eb30
                         {disp8} inc        dword ptr [ebp + -0x0c]                        // 0x007d9d78    ff45f4
                         mov                byte ptr [eax], bl                             // 0x007d9d7b    8818
                         {disp8} jmp        _jmp_addr_0x007d9d82                           // 0x007d9d7d    eb03
_jmp_addr_0x007d9d7f:    {disp8} inc        dword ptr [ebp + -0x08]                        // 0x007d9d7f    ff45f8
_jmp_addr_0x007d9d82:    mov                bl, byte ptr [edi]                             // 0x007d9d82    8a1f
                         inc                edi                                            // 0x007d9d84    47
                         {disp8} jmp        _jmp_addr_0x007d9d3e                           // 0x007d9d85    ebb7
_jmp_addr_0x007d9d87:    cmp                bl, byte ptr [data_bytes + 0x267d30]           // 0x007d9d87    3a1d30ddc200
                         {disp8} jne        _jmp_addr_0x007d9df6                           // 0x007d9d8d    7567
_jmp_addr_0x007d9d8f:    mov.s              eax, esi                                       // 0x007d9d8f    8bc6
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9d91    e9c2feffff
                         cmp                dword ptr [ebp + -0x04], 0x00                  // 0x007d9d96    837dfc00
                         {disp8} mov        dword ptr [ebp + -0x10], edx                   // 0x007d9d9a    8955f0
                         {disp8} mov        dword ptr [ebp + -0x24], edx                   // 0x007d9d9d    8955dc
                         {disp8} jne        _jmp_addr_0x007d9daf                           // 0x007d9da0    750d
_jmp_addr_0x007d9da2:    cmp                bl, 0x30                                       // 0x007d9da2    80fb30
                         {disp8} jne        _jmp_addr_0x007d9daf                           // 0x007d9da5    7508
                         dec                dword ptr [ebp + -0x08]                        // 0x007d9da7    ff4df8
                         mov                bl, byte ptr [edi]                             // 0x007d9daa    8a1f
                         inc                edi                                            // 0x007d9dac    47
                         {disp8} jmp        _jmp_addr_0x007d9da2                           // 0x007d9dad    ebf3
_jmp_addr_0x007d9daf:    cmp                dword ptr [data_bytes + 0x267d2c], edx         // 0x007d9daf    39152cddc200
                         {disp8} jle        _jmp_addr_0x007d9dc8                           // 0x007d9db5    7e11
                         movzx              eax, bl                                        // 0x007d9db7    0fb6c3
                         push               esi                                            // 0x007d9dba    56
                         push               eax                                            // 0x007d9dbb    50
                         call               __isctype                                      // 0x007d9dbc    e8d21bffff
                         pop                ecx                                            // 0x007d9dc1    59
                         pop                ecx                                            // 0x007d9dc2    59
                         push               0x1                                            // 0x007d9dc3    6a01
                         pop                edx                                            // 0x007d9dc5    5a
                         {disp8} jmp        _jmp_addr_0x007d9dd6                           // 0x007d9dc6    eb0e
_jmp_addr_0x007d9dc8:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d9dc8    8b0d20dbc200
                         movzx              eax, bl                                        // 0x007d9dce    0fb6c3
                         mov                al, byte ptr [ecx + eax * 0x2]                 // 0x007d9dd1    8a0441
                         and.s              eax, esi                                       // 0x007d9dd4    23c6
_jmp_addr_0x007d9dd6:    test               eax, eax                                       // 0x007d9dd6    85c0
                         {disp8} je         _jmp_addr_0x007d9df6                           // 0x007d9dd8    741c
                         cmp                dword ptr [ebp + -0x04], 0x19                  // 0x007d9dda    837dfc19
                         {disp8} jae        _jmp_addr_0x007d9df1                           // 0x007d9dde    7311
                         {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x007d9de0    8b45f4
                         {disp8} inc        dword ptr [ebp + -0x04]                        // 0x007d9de3    ff45fc
                         sub                bl, 0x30                                       // 0x007d9de6    80eb30
                         {disp8} inc        dword ptr [ebp + -0x0c]                        // 0x007d9de9    ff45f4
                         dec                dword ptr [ebp + -0x08]                        // 0x007d9dec    ff4df8
                         mov                byte ptr [eax], bl                             // 0x007d9def    8818
_jmp_addr_0x007d9df1:    mov                bl, byte ptr [edi]                             // 0x007d9df1    8a1f
                         inc                edi                                            // 0x007d9df3    47
                         {disp8} jmp        _jmp_addr_0x007d9daf                           // 0x007d9df4    ebb9
_jmp_addr_0x007d9df6:    cmp                bl, 0x2b                                       // 0x007d9df6    80fb2b
                         {disp32} je        _jmp_addr_0x007d9d09                           // 0x007d9df9    0f840affffff
                         cmp                bl, 0x2d                                       // 0x007d9dff    80fb2d
                         {disp32} je        _jmp_addr_0x007d9d09                           // 0x007d9e02    0f8401ffffff
                         {disp32} jmp       _jmp_addr_0x007d9ce2                           // 0x007d9e08    e9d5feffff
                         cmp                dword ptr [data_bytes + 0x267d2c], edx         // 0x007d9e0d    39152cddc200
                         {disp8} mov        dword ptr [ebp + -0x24], edx                   // 0x007d9e13    8955dc
                         {disp8} jle        _jmp_addr_0x007d9e29                           // 0x007d9e16    7e11
                         movzx              eax, bl                                        // 0x007d9e18    0fb6c3
                         push               esi                                            // 0x007d9e1b    56
                         push               eax                                            // 0x007d9e1c    50
                         call               __isctype                                      // 0x007d9e1d    e8711bffff
                         pop                ecx                                            // 0x007d9e22    59
                         pop                ecx                                            // 0x007d9e23    59
                         push               0x1                                            // 0x007d9e24    6a01
                         pop                edx                                            // 0x007d9e26    5a
                         {disp8} jmp        _jmp_addr_0x007d9e37                           // 0x007d9e27    eb0e
_jmp_addr_0x007d9e29:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d9e29    8b0d20dbc200
                         movzx              eax, bl                                        // 0x007d9e2f    0fb6c3
                         mov                al, byte ptr [ecx + eax * 0x2]                 // 0x007d9e32    8a0441
                         and.s              eax, esi                                       // 0x007d9e35    23c6
_jmp_addr_0x007d9e37:    test               eax, eax                                       // 0x007d9e37    85c0
                         {disp32} je        _jmp_addr_0x007d9ee9                           // 0x007d9e39    0f84aa000000
                         mov.s              eax, esi                                       // 0x007d9e3f    8bc6
                         {disp8} jmp        _jmp_addr_0x007d9e9a                           // 0x007d9e41    eb57
                         {disp8} lea        ecx, dword ptr [edi + -0x02]                   // 0x007d9e43    8d4ffe
                         cmp                bl, 0x31                                       // 0x007d9e46    80fb31
                         {disp8} mov        dword ptr [ebp + 0x10], ecx                    // 0x007d9e49    894d10
                         {disp8} jl         _jmp_addr_0x007d9e53                           // 0x007d9e4c    7c05
                         cmp                bl, 0x39                                       // 0x007d9e4e    80fb39
                         {disp8} jle        _jmp_addr_0x007d9e97                           // 0x007d9e51    7e44
_jmp_addr_0x007d9e53:    movsx              eax, bl                                        // 0x007d9e53    0fbec3
                         sub                eax, 0x2b                                      // 0x007d9e56    83e82b
                         {disp8} je         _jmp_addr_0x007d9ecf                           // 0x007d9e59    7474
                         dec                eax                                            // 0x007d9e5b    48
                         dec                eax                                            // 0x007d9e5c    48
                         {disp8} je         _jmp_addr_0x007d9ec3                           // 0x007d9e5d    7464
                         sub                eax, 0x03                                      // 0x007d9e5f    83e803
                         {disp32} jne       _jmp_addr_0x007d9f77                           // 0x007d9e62    0f850f010000
_jmp_addr_0x007d9e68:    push               0x8                                            // 0x007d9e68    6a08
                         {disp8} jmp        _jmp_addr_0x007d9ed1                           // 0x007d9e6a    eb65
                         {disp8} mov        dword ptr [ebp + -0x20], edx                   // 0x007d9e6c    8955e0
_jmp_addr_0x007d9e6f:    cmp                bl, 0x30                                       // 0x007d9e6f    80fb30
                         {disp8} jne        _jmp_addr_0x007d9e79                           // 0x007d9e72    7505
                         mov                bl, byte ptr [edi]                             // 0x007d9e74    8a1f
                         inc                edi                                            // 0x007d9e76    47
                         {disp8} jmp        _jmp_addr_0x007d9e6f                           // 0x007d9e77    ebf6
_jmp_addr_0x007d9e79:    cmp                bl, 0x31                                       // 0x007d9e79    80fb31
                         {disp32} jl        _jmp_addr_0x007d9f74                           // 0x007d9e7c    0f8cf2000000
                         cmp                bl, 0x39                                       // 0x007d9e82    80fb39
                         {disp32} jg        _jmp_addr_0x007d9f74                           // 0x007d9e85    0f8fe9000000
                         {disp8} jmp        _jmp_addr_0x007d9e97                           // 0x007d9e8b    eb0a
                         cmp                bl, 0x31                                       // 0x007d9e8d    80fb31
                         {disp8} jl         _jmp_addr_0x007d9ea0                           // 0x007d9e90    7c0e
                         cmp                bl, 0x39                                       // 0x007d9e92    80fb39
                         {disp8} jg         _jmp_addr_0x007d9ea0                           // 0x007d9e95    7f09
_jmp_addr_0x007d9e97:    push               0x9                                            // 0x007d9e97    6a09
_jmp_addr_0x007d9e99:    pop                eax                                            // 0x007d9e99    58
_jmp_addr_0x007d9e9a:    dec                edi                                            // 0x007d9e9a    4f
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9e9b    e9b8fdffff
_jmp_addr_0x007d9ea0:    cmp                bl, 0x30                                       // 0x007d9ea0    80fb30
                         {disp8} jne        _jmp_addr_0x007d9ee9                           // 0x007d9ea3    7544
                         {disp8} jmp        _jmp_addr_0x007d9e68                           // 0x007d9ea5    ebc1
                         cmp                dword ptr [ebp + 0x20], 0x00                   // 0x007d9ea7    837d2000
                         {disp8} je         _jmp_addr_0x007d9ed7                           // 0x007d9eab    742a
                         movsx              eax, bl                                        // 0x007d9ead    0fbec3
                         {disp8} lea        ecx, dword ptr [edi + -0x01]                   // 0x007d9eb0    8d4fff
                         sub                eax, 0x2b                                      // 0x007d9eb3    83e82b
                         {disp8} mov        dword ptr [ebp + 0x10], ecx                    // 0x007d9eb6    894d10
                         {disp8} je         _jmp_addr_0x007d9ecf                           // 0x007d9eb9    7414
                         dec                eax                                            // 0x007d9ebb    48
                         dec                eax                                            // 0x007d9ebc    48
                         {disp32} jne       _jmp_addr_0x007d9f77                           // 0x007d9ebd    0f85b4000000
_jmp_addr_0x007d9ec3:    or                 dword ptr [ebp - 0x18], 0xffffffff             // 0x007d9ec3    834de8ff
                         push               0x7                                            // 0x007d9ec7    6a07
                         pop                eax                                            // 0x007d9ec9    58
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9eca    e989fdffff
_jmp_addr_0x007d9ecf:    push               0x7                                            // 0x007d9ecf    6a07
_jmp_addr_0x007d9ed1:    pop                eax                                            // 0x007d9ed1    58
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9ed2    e981fdffff
_jmp_addr_0x007d9ed7:    push               0xa                                            // 0x007d9ed7    6a0a
                         dec                edi                                            // 0x007d9ed9    4f
                         pop                eax                                            // 0x007d9eda    58
_jmp_addr_0x007d9edb:    cmp                eax, 0x0a                                      // 0x007d9edb    83f80a
                         {disp32} je        _jmp_addr_0x007d9f79                           // 0x007d9ede    0f8495000000
                         {disp32} jmp       _jmp_addr_0x007d9c58                           // 0x007d9ee4    e96ffdffff
_jmp_addr_0x007d9ee9:    {disp8} mov        edi, dword ptr [ebp + 0x10]                    // 0x007d9ee9    8b7d10
                         {disp32} jmp       _jmp_addr_0x007d9f79                           // 0x007d9eec    e988000000
                         {disp8} mov        dword ptr [ebp + -0x20], 0x00000001            // 0x007d9ef1    c745e001000000
                         xor.s              esi, esi                                       // 0x007d9ef8    33f6
_jmp_addr_0x007d9efa:    cmp                dword ptr [data_bytes + 0x267d2c], 0x01        // 0x007d9efa    833d2cddc20001
                         {disp8} jle        _jmp_addr_0x007d9f12                           // 0x007d9f01    7e0f
                         movzx              eax, bl                                        // 0x007d9f03    0fb6c3
                         push               0x4                                            // 0x007d9f06    6a04
                         push               eax                                            // 0x007d9f08    50
                         call               __isctype                                      // 0x007d9f09    e8851affff
                         pop                ecx                                            // 0x007d9f0e    59
                         pop                ecx                                            // 0x007d9f0f    59
                         {disp8} jmp        _jmp_addr_0x007d9f21                           // 0x007d9f10    eb0f
_jmp_addr_0x007d9f12:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d9f12    8b0d20dbc200
                         movzx              eax, bl                                        // 0x007d9f18    0fb6c3
                         mov                al, byte ptr [ecx + eax * 0x2]                 // 0x007d9f1b    8a0441
                         and                eax, 0x04                                      // 0x007d9f1e    83e004
_jmp_addr_0x007d9f21:    test               eax, eax                                       // 0x007d9f21    85c0
                         {disp8} je         _jmp_addr_0x007d9f41                           // 0x007d9f23    741c
                         movsx              ecx, bl                                        // 0x007d9f25    0fbecb
                         lea                eax, dword ptr [esi + esi * 0x4]               // 0x007d9f28    8d04b6
                         {disp8} lea        esi, dword ptr [ecx + eax * 0x2 + -0x30]       // 0x007d9f2b    8d7441d0
                         cmp                esi, 0x00001450                                // 0x007d9f2f    81fe50140000
                         {disp8} jg         _jmp_addr_0x007d9f3c                           // 0x007d9f35    7f05
                         mov                bl, byte ptr [edi]                             // 0x007d9f37    8a1f
                         inc                edi                                            // 0x007d9f39    47
                         {disp8} jmp        _jmp_addr_0x007d9efa                           // 0x007d9f3a    ebbe
_jmp_addr_0x007d9f3c:    mov                esi, 0x00001451                                // 0x007d9f3c    be51140000
_jmp_addr_0x007d9f41:    {disp8} mov        dword ptr [ebp + -0x1c], esi                   // 0x007d9f41    8975e4
_jmp_addr_0x007d9f44:    cmp                dword ptr [data_bytes + 0x267d2c], 0x01        // 0x007d9f44    833d2cddc20001
                         {disp8} jle        _jmp_addr_0x007d9f5c                           // 0x007d9f4b    7e0f
                         movzx              eax, bl                                        // 0x007d9f4d    0fb6c3
                         push               0x4                                            // 0x007d9f50    6a04
                         push               eax                                            // 0x007d9f52    50
                         call               __isctype                                      // 0x007d9f53    e83b1affff
                         pop                ecx                                            // 0x007d9f58    59
                         pop                ecx                                            // 0x007d9f59    59
                         {disp8} jmp        _jmp_addr_0x007d9f6b                           // 0x007d9f5a    eb0f
_jmp_addr_0x007d9f5c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d9f5c    8b0d20dbc200
                         movzx              eax, bl                                        // 0x007d9f62    0fb6c3
                         mov                al, byte ptr [ecx + eax * 0x2]                 // 0x007d9f65    8a0441
                         and                eax, 0x04                                      // 0x007d9f68    83e004
_jmp_addr_0x007d9f6b:    test               eax, eax                                       // 0x007d9f6b    85c0
                         {disp8} je         _jmp_addr_0x007d9f74                           // 0x007d9f6d    7405
                         mov                bl, byte ptr [edi]                             // 0x007d9f6f    8a1f
                         inc                edi                                            // 0x007d9f71    47
                         {disp8} jmp        _jmp_addr_0x007d9f44                           // 0x007d9f72    ebd0
_jmp_addr_0x007d9f74:    dec                edi                                            // 0x007d9f74    4f
                         {disp8} jmp        _jmp_addr_0x007d9f79                           // 0x007d9f75    eb02
_jmp_addr_0x007d9f77:    mov.s              edi, ecx                                       // 0x007d9f77    8bf9
_jmp_addr_0x007d9f79:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d9f79    8b450c
                         cmp                dword ptr [ebp + -0x10], 0x00                  // 0x007d9f7c    837df000
                         mov                dword ptr [eax], edi                           // 0x007d9f80    8938
                         {disp32} je        _jmp_addr_0x007da061                           // 0x007d9f82    0f84d9000000
                         push               0x18                                           // 0x007d9f88    6a18
                         pop                eax                                            // 0x007d9f8a    58
                         cmp                dword ptr [ebp + -0x04], eax                   // 0x007d9f8b    3945fc
                         {disp8} jbe        _jmp_addr_0x007d9fa5                           // 0x007d9f8e    7615
                         cmp                byte ptr [ebp + -0x45], 0x05                   // 0x007d9f90    807dbb05
                         {disp8} jl         _jmp_addr_0x007d9f99                           // 0x007d9f94    7c03
                         {disp8} inc        byte ptr [ebp + -0x45]                         // 0x007d9f96    fe45bb
_jmp_addr_0x007d9f99:    {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007d9f99    8945fc
                         {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x007d9f9c    8b45f4
                         dec                eax                                            // 0x007d9f9f    48
                         {disp8} inc        dword ptr [ebp + -0x08]                        // 0x007d9fa0    ff45f8
                         {disp8} jmp        _jmp_addr_0x007d9fa8                           // 0x007d9fa3    eb03
_jmp_addr_0x007d9fa5:    {disp8} mov        eax, dword ptr [ebp + -0x0c]                   // 0x007d9fa5    8b45f4
_jmp_addr_0x007d9fa8:    cmp                dword ptr [ebp + -0x04], 0x00                  // 0x007d9fa8    837dfc00
                         {disp32} jbe       _jmp_addr_0x007da057                           // 0x007d9fac    0f86a5000000
_jmp_addr_0x007d9fb2:    dec                eax                                            // 0x007d9fb2    48
                         cmp                byte ptr [eax], 0x00                           // 0x007d9fb3    803800
                         {disp8} jne        _jmp_addr_0x007d9fc0                           // 0x007d9fb6    7508
                         dec                dword ptr [ebp + -0x04]                        // 0x007d9fb8    ff4dfc
                         {disp8} inc        dword ptr [ebp + -0x08]                        // 0x007d9fbb    ff45f8
                         {disp8} jmp        _jmp_addr_0x007d9fb2                           // 0x007d9fbe    ebf2
_jmp_addr_0x007d9fc0:    {disp8} lea        eax, dword ptr [ebp + -0x40]                   // 0x007d9fc0    8d45c0
                         push               eax                                            // 0x007d9fc3    50
                         {disp8} lea        eax, dword ptr [ebp + -0x5c]                   // 0x007d9fc4    8d45a4
                         push               dword ptr [ebp + -0x04]                        // 0x007d9fc7    ff75fc
                         push               eax                                            // 0x007d9fca    50
                         call               ___mtold12                                     // 0x007d9fcb    e81b090000
                         {disp8} mov        eax, dword ptr [ebp + -0x1c]                   // 0x007d9fd0    8b45e4
                         xor.s              ecx, ecx                                       // 0x007d9fd3    33c9
                         add                esp, 0x0c                                      // 0x007d9fd5    83c40c
                         cmp                dword ptr [ebp + -0x18], ecx                   // 0x007d9fd8    394de8
                         {disp8} jge        _jmp_addr_0x007d9fdf                           // 0x007d9fdb    7d02
                         neg                eax                                            // 0x007d9fdd    f7d8
_jmp_addr_0x007d9fdf:    add                eax, dword ptr [ebp + -0x08]                   // 0x007d9fdf    0345f8
                         cmp                dword ptr [ebp + -0x20], ecx                   // 0x007d9fe2    394de0
                         {disp8} jne        _jmp_addr_0x007d9fea                           // 0x007d9fe5    7503
                         add                eax, dword ptr [ebp + 0x18]                    // 0x007d9fe7    034518
_jmp_addr_0x007d9fea:    cmp                dword ptr [ebp + -0x24], ecx                   // 0x007d9fea    394ddc
                         {disp8} jne        _jmp_addr_0x007d9ff2                           // 0x007d9fed    7503
                         sub                eax, dword ptr [ebp + 0x1c]                    // 0x007d9fef    2b451c
_jmp_addr_0x007d9ff2:    cmp                eax, 0x00001450                                // 0x007d9ff2    3d50140000
                         {disp8} jle        _jmp_addr_0x007da029                           // 0x007d9ff7    7e30
                         {disp8} mov        dword ptr [ebp + -0x2c], 0x00000001            // 0x007d9ff9    c745d401000000
_jmp_addr_0x007da000:    {disp8} mov        ebx, dword ptr [ebp + 0x10]                    // 0x007da000    8b5d10
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                    // 0x007da003    8b7510
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x007da006    8b4510
                         {disp8} mov        edx, dword ptr [ebp + 0x10]                    // 0x007da009    8b5510
_jmp_addr_0x007da00c:    cmp                dword ptr [ebp + -0x2c], 0x00                  // 0x007da00c    837dd400
                         {disp8} je         _jmp_addr_0x007da072                           // 0x007da010    7460
                         xor.s              ebx, ebx                                       // 0x007da012    33db
                         mov                eax, 0x00007fff                                // 0x007da014    b8ff7f0000
                         mov                esi, 0x80000000                                // 0x007da019    be00000080
                         xor.s              edx, edx                                       // 0x007da01e    33d2
                         {disp8} mov        dword ptr [ebp + -0x14], 0x00000002            // 0x007da020    c745ec02000000
                         {disp8} jmp        _jmp_addr_0x007da087                           // 0x007da027    eb5e
_jmp_addr_0x007da029:    cmp                eax, 0xffffebb0                                // 0x007da029    3db0ebffff
                         {disp8} jge        _jmp_addr_0x007da039                           // 0x007da02e    7d09
                         {disp8} mov        dword ptr [ebp + -0x30], 0x00000001            // 0x007da030    c745d001000000
                         {disp8} jmp        _jmp_addr_0x007da000                           // 0x007da037    ebc7
_jmp_addr_0x007da039:    push               dword ptr [ebp + 0x14]                         // 0x007da039    ff7514
                         push               eax                                            // 0x007da03c    50
                         {disp8} lea        eax, dword ptr [ebp + -0x40]                   // 0x007da03d    8d45c0
                         push               eax                                            // 0x007da040    50
                         call               ___multtenpow12                                // 0x007da041    e85f100000
                         {disp8} mov        edx, dword ptr [ebp + -0x40]                   // 0x007da046    8b55c0
                         {disp8} mov        ebx, dword ptr [ebp + -0x3e]                   // 0x007da049    8b5dc2
                         {disp8} mov        esi, dword ptr [ebp + -0x3a]                   // 0x007da04c    8b75c6
                         {disp8} mov        eax, dword ptr [ebp + -0x36]                   // 0x007da04f    8b45ca
                         add                esp, 0x0c                                      // 0x007da052    83c40c
                         {disp8} jmp        _jmp_addr_0x007da00c                           // 0x007da055    ebb5
_jmp_addr_0x007da057:    xor.s              edx, edx                                       // 0x007da057    33d2
                         xor.s              eax, eax                                       // 0x007da059    33c0
                         xor.s              esi, esi                                       // 0x007da05b    33f6
                         xor.s              ebx, ebx                                       // 0x007da05d    33db
                         {disp8} jmp        _jmp_addr_0x007da00c                           // 0x007da05f    ebab
_jmp_addr_0x007da061:    xor.s              edx, edx                                       // 0x007da061    33d2
                         xor.s              eax, eax                                       // 0x007da063    33c0
                         xor.s              esi, esi                                       // 0x007da065    33f6
                         xor.s              ebx, ebx                                       // 0x007da067    33db
                         {disp8} mov        dword ptr [ebp + -0x14], 0x00000004            // 0x007da069    c745ec04000000
                         {disp8} jmp        _jmp_addr_0x007da087                           // 0x007da070    eb15
_jmp_addr_0x007da072:    cmp                dword ptr [ebp + -0x30], 0x00                  // 0x007da072    837dd000
                         {disp8} je         _jmp_addr_0x007da087                           // 0x007da076    740f
                         xor.s              edx, edx                                       // 0x007da078    33d2
                         xor.s              eax, eax                                       // 0x007da07a    33c0
                         xor.s              esi, esi                                       // 0x007da07c    33f6
                         xor.s              ebx, ebx                                       // 0x007da07e    33db
                         {disp8} mov        dword ptr [ebp + -0x14], 0x00000001            // 0x007da080    c745ec01000000
_jmp_addr_0x007da087:    {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007da087    8b4d08
                         or                 eax, dword ptr [ebp - 0x28]                    // 0x007da08a    0b45d8
                         pop                edi                                            // 0x007da08d    5f
                         {disp8} mov        dword ptr [ecx + 0x06], esi                    // 0x007da08e    897106
                         {disp8} mov        dword ptr [ecx + 0x02], ebx                    // 0x007da091    895902
                         {disp8} mov        word ptr [ecx + 0x0a], ax                      // 0x007da094    6689410a
                         {disp8} mov        eax, dword ptr [ebp + -0x14]                   // 0x007da098    8b45ec
                         pop                esi                                            // 0x007da09b    5e
                         mov                word ptr [ecx], dx                             // 0x007da09c    668911
                         pop                ebx                                            // 0x007da09f    5b
                         leave                                                             // 0x007da0a0    c9
                         ret                                                               // 0x007da0a1    c3

// Snippet: jmptbl, [0x007da0a2, 0x007da0d2)
.byte 0x6b, 0x9c, 0x7d, 0x00      // 0x007da0a2
.byte 0xba, 0x9c, 0x7d, 0x00      // 0x007da0a6
.byte 0x11, 0x9d, 0x7d, 0x00      // 0x007da0aa
.byte 0x3b, 0x9d, 0x7d, 0x00      // 0x007da0ae
.byte 0x96, 0x9d, 0x7d, 0x00      // 0x007da0b2
.byte 0x0d, 0x9e, 0x7d, 0x00      // 0x007da0b6
.byte 0x43, 0x9e, 0x7d, 0x00      // 0x007da0ba
.byte 0x8d, 0x9e, 0x7d, 0x00      // 0x007da0be
.byte 0x6c, 0x9e, 0x7d, 0x00      // 0x007da0c2
.byte 0xf1, 0x9e, 0x7d, 0x00      // 0x007da0c6
.byte 0xdb, 0x9e, 0x7d, 0x00      // 0x007da0ca
.byte 0xa7, 0x9e, 0x7d, 0x00      // 0x007da0ce

// Snippet: asm, [0x007da0d2, 0x007da710)
                         push             ebp                                           // 0x007da0d2    55
                         mov.s            ebp, esp                                      // 0x007da0d3    8bec
                         sub              esp, 0x0c                                     // 0x007da0d5    83ec0c
                         xor.s            eax, eax                                      // 0x007da0d8    33c0
                         push             esi                                           // 0x007da0da    56
                         push             eax                                           // 0x007da0db    50
                         push             eax                                           // 0x007da0dc    50
                         push             eax                                           // 0x007da0dd    50
                         {disp8} lea      eax, dword ptr [ebp + -0x0c]                  // 0x007da0de    8d45f4
                         push             dword ptr [ebp + 0x14]                        // 0x007da0e1    ff7514
                         push             dword ptr [ebp + 0x10]                        // 0x007da0e4    ff7510
                         push             dword ptr [ebp + 0x0c]                        // 0x007da0e7    ff750c
                         push             eax                                           // 0x007da0ea    50
                         call             ___strgtold12                                 // 0x007da0eb    e811fbffff
                         push             dword ptr [ebp + 0x08]                        // 0x007da0f0    ff7508
                         mov.s            esi, eax                                      // 0x007da0f3    8bf0
                         {disp8} lea      eax, dword ptr [ebp + -0x0c]                  // 0x007da0f5    8d45f4
                         push             eax                                           // 0x007da0f8    50
                         call             __ld12told                                    // 0x007da0f9    e828ecffff
                         add              esp, 0x24                                     // 0x007da0fe    83c424
                         cmp              eax, 0x01                                     // 0x007da101    83f801
                         {disp8} jne      _jmp_addr_0x007da109                          // 0x007da104    7503
                         or               esi, 2                                        // 0x007da106    83ce02
_jmp_addr_0x007da109:    mov.s            eax, esi                                      // 0x007da109    8bc6
                         pop              esi                                           // 0x007da10b    5e
                         leave                                                          // 0x007da10c    c9
                         ret                                                            // 0x007da10d    c3
_wcstombs:               push             ebp                                           // 0x007da10e    55
                         mov.s            ebp, esp                                      // 0x007da10f    8bec
                         push             ebx                                           // 0x007da111    53
                         push             esi                                           // 0x007da112    56
                         mov              esi, 0x00fadcc8                               // 0x007da113    bec8dcfa00
                         push             edi                                           // 0x007da118    57
                         push             esi                                           // 0x007da119    56
                         call             dword ptr [__imp__InterlockedIncrement@4]     // 0x007da11a    ff1510938a00
                         {disp32} mov     edi, dword ptr [__imp__InterlockedDecrement@4]// 0x007da120    8b3d14938a00
                         xor.s            ebx, ebx                                      // 0x007da126    33db
                         cmp              dword ptr [data_bytes + 0x5e7cc4], ebx        // 0x007da128    391dc4dcfa00
                         {disp8} je       _jmp_addr_0x007da13e                          // 0x007da12e    740e
                         push             esi                                           // 0x007da130    56
                         call             edi                                           // 0x007da131    ffd7
                         push             0x13                                          // 0x007da133    6a13
                         call             __lock                                         // 0x007da135    e87c15ffff
                         pop              ecx                                           // 0x007da13a    59
                         push             0x1                                           // 0x007da13b    6a01
                         pop              ebx                                           // 0x007da13d    5b
_jmp_addr_0x007da13e:    push             dword ptr [ebp + 0x10]                        // 0x007da13e    ff7510
                         push             dword ptr [ebp + 0x0c]                        // 0x007da141    ff750c
                         push             dword ptr [ebp + 0x08]                        // 0x007da144    ff7508
                         call             _jmp_addr_0x007da16b                          // 0x007da147    e81f000000
                         add              esp, 0x0c                                     // 0x007da14c    83c40c
                         {disp8} mov      dword ptr [ebp + 0x10], eax                   // 0x007da14f    894510
                         test             ebx, ebx                                      // 0x007da152    85db
                         {disp8} je       _jmp_addr_0x007da160                          // 0x007da154    740a
                         push             0x13                                          // 0x007da156    6a13
                         call             __unlock                                      // 0x007da158    e8ba15ffff
                         pop              ecx                                           // 0x007da15d    59
                         {disp8} jmp      _jmp_addr_0x007da163                          // 0x007da15e    eb03
_jmp_addr_0x007da160:    push             esi                                           // 0x007da160    56
                         call             edi                                           // 0x007da161    ffd7
_jmp_addr_0x007da163:    {disp8} mov      eax, dword ptr [ebp + 0x10]                   // 0x007da163    8b4510
                         pop              edi                                           // 0x007da166    5f
                         pop              esi                                           // 0x007da167    5e
                         pop              ebx                                           // 0x007da168    5b
                         pop              ebp                                           // 0x007da169    5d
                         ret                                                            // 0x007da16a    c3
_jmp_addr_0x007da16b:    push             ebp                                           // 0x007da16b    55
                         mov.s            ebp, esp                                      // 0x007da16c    8bec
                         sub              esp, 0x0c                                     // 0x007da16e    83ec0c
                         push             ebx                                           // 0x007da171    53
                         push             esi                                           // 0x007da172    56
                         {disp8} mov      esi, dword ptr [ebp + 0x08]                   // 0x007da173    8b7508
                         push             edi                                           // 0x007da176    57
                         xor.s            ebx, ebx                                      // 0x007da177    33db
                         xor.s            edi, edi                                      // 0x007da179    33ff
                         cmp.s            esi, ebx                                      // 0x007da17b    3bf3
                         {disp8} mov      dword ptr [ebp + -0x08], ebx                  // 0x007da17d    895df8
                         {disp32} je      _jmp_addr_0x007da2cb                          // 0x007da180    0f8445010000
                         {disp8} mov      edx, dword ptr [ebp + 0x10]                   // 0x007da186    8b5510
                         cmp.s            edx, ebx                                      // 0x007da189    3bd3
                         {disp8} jne      _jmp_addr_0x007da194                          // 0x007da18b    7507
                         xor.s            eax, eax                                      // 0x007da18d    33c0
                         {disp32} jmp     _jmp_addr_0x007da315                          // 0x007da18f    e981010000
_jmp_addr_0x007da194:    cmp              dword ptr [data_bytes + 0x4be2a0], ebx        // 0x007da194    391da042e800
                         {disp8} jne      _jmp_addr_0x007da1c9                          // 0x007da19a    752d
                         cmp.s            edx, ebx                                      // 0x007da19c    3bd3
                         {disp8} jbe      _jmp_addr_0x007da1c2                          // 0x007da19e    7622
                         {disp8} mov      ecx, dword ptr [ebp + 0x0c]                   // 0x007da1a0    8b4d0c
_jmp_addr_0x007da1a3:    cmp              word ptr [ecx], 0x00ff                        // 0x007da1a3    668139ff00
                         {disp32} ja      _jmp_addr_0x007da307                          // 0x007da1a8    0f8759010000
                         mov              al, byte ptr [ecx]                            // 0x007da1ae    8a01
                         mov              byte ptr [edi + esi * 0x1], al                // 0x007da1b0    880437
                         mov              ax, word ptr [ecx]                            // 0x007da1b3    668b01
                         inc              ecx                                           // 0x007da1b6    41
                         inc              ecx                                           // 0x007da1b7    41
                         test             ax, ax                                        // 0x007da1b8    6685c0
                         {disp8} je       _jmp_addr_0x007da1c2                          // 0x007da1bb    7405
                         inc              edi                                           // 0x007da1bd    47
                         cmp.s            edi, edx                                      // 0x007da1be    3bfa
                         .byte            0x72, 0xe1// {disp8} jb _jmp_addr_0x007da1a3  // 0x007da1c0    72e1
_jmp_addr_0x007da1c2:    mov.s            eax, edi                                      // 0x007da1c2    8bc7
                         {disp32} jmp     _jmp_addr_0x007da315                          // 0x007da1c4    e94c010000
_jmp_addr_0x007da1c9:    cmp              dword ptr [data_bytes + 0x267d2c], 0x01       // 0x007da1c9    833d2cddc20001
                         {disp8} jne      _jmp_addr_0x007da222                          // 0x007da1d0    7550
                         cmp.s            edx, ebx                                      // 0x007da1d2    3bd3
                         {disp8} jbe      _jmp_addr_0x007da1e6                          // 0x007da1d4    7610
                         push             edx                                           // 0x007da1d6    52
                         push             dword ptr [ebp + 0x0c]                        // 0x007da1d7    ff750c
                         call             _jmp_addr_0x007da31a                          // 0x007da1da    e83b010000
                         pop              ecx                                           // 0x007da1df    59
                         {disp8} mov      dword ptr [ebp + 0x10], eax                   // 0x007da1e0    894510
                         pop              ecx                                           // 0x007da1e3    59
                         mov.s            edx, eax                                      // 0x007da1e4    8bd0
_jmp_addr_0x007da1e6:    {disp8} lea      eax, dword ptr [ebp + -0x08]                  // 0x007da1e6    8d45f8
                         push             eax                                           // 0x007da1e9    50
                         push             ebx                                           // 0x007da1ea    53
                         push             edx                                           // 0x007da1eb    52
                         push             esi                                           // 0x007da1ec    56
                         push             edx                                           // 0x007da1ed    52
                         push             dword ptr [ebp + 0x0c]                        // 0x007da1ee    ff750c
                         push             0x00000220                                    // 0x007da1f1    6820020000
                         push             dword ptr [data_bytes + 0x4be2b0]             // 0x007da1f6    ff35b042e800
                         call             dword ptr [__imp__WideCharToMultiByte@32]      // 0x007da1fc    ff152c928a00
                         cmp.s            eax, ebx                                      // 0x007da202    3bc3
                         {disp32} je      _jmp_addr_0x007da307                          // 0x007da204    0f84fd000000
                         cmp              dword ptr [ebp + -0x08], ebx                  // 0x007da20a    395df8
                         {disp32} jne     _jmp_addr_0x007da307                          // 0x007da20d    0f85f4000000
                         cmp              byte ptr [eax + esi * 0x1 + -0x01], bl        // 0x007da213    385c30ff
                         {disp32} jne     _jmp_addr_0x007da315                          // 0x007da217    0f85f8000000
                         {disp32} jmp     _jmp_addr_0x007da304                          // 0x007da21d    e9e2000000
_jmp_addr_0x007da222:    {disp8} lea      eax, dword ptr [ebp + -0x08]                  // 0x007da222    8d45f8
                         {disp32} mov     edi, dword ptr [__imp__WideCharToMultiByte@32] // 0x007da225    8b3d2c928a00
                         push             eax                                           // 0x007da22b    50
                         push             ebx                                           // 0x007da22c    53
                         push             edx                                           // 0x007da22d    52
                         push             esi                                           // 0x007da22e    56
                         push             -0x1                                          // 0x007da22f    6aff
                         push             dword ptr [ebp + 0x0c]                        // 0x007da231    ff750c
                         push             0x00000220                                    // 0x007da234    6820020000
                         push             dword ptr [data_bytes + 0x4be2b0]             // 0x007da239    ff35b042e800
                         call             edi                                           // 0x007da23f    ffd7
                         mov.s            esi, eax                                      // 0x007da241    8bf0
                         cmp.s            esi, ebx                                      // 0x007da243    3bf3
                         {disp8} je       _jmp_addr_0x007da258                          // 0x007da245    7411
                         cmp              dword ptr [ebp + -0x08], ebx                  // 0x007da247    395df8
                         {disp32} jne     _jmp_addr_0x007da307                          // 0x007da24a    0f85b7000000
                         {disp8} lea      eax, dword ptr [esi + -0x01]                  // 0x007da250    8d46ff
                         {disp32} jmp     _jmp_addr_0x007da315                          // 0x007da253    e9bd000000
_jmp_addr_0x007da258:    cmp              dword ptr [ebp + -0x08], ebx                  // 0x007da258    395df8
                         {disp32} jne     _jmp_addr_0x007da307                          // 0x007da25b    0f85a6000000
                         call             dword ptr [__imp__GetLastError@0]             // 0x007da261    ff15fc918a00
                         cmp              eax, 0x7a                                     // 0x007da267    83f87a
                         {disp32} jne     _jmp_addr_0x007da307                          // 0x007da26a    0f8597000000
_jmp_addr_0x007da270:    cmp              esi, dword ptr [ebp + 0x10]                   // 0x007da270    3b7510
                         {disp8} jae      _jmp_addr_0x007da2c7                          // 0x007da273    7352
                         {disp8} lea      eax, dword ptr [ebp + -0x08]                  // 0x007da275    8d45f8
                         push             eax                                           // 0x007da278    50
                         push             ebx                                           // 0x007da279    53
                         push             dword ptr [data_bytes + 0x267d2c]             // 0x007da27a    ff352cddc200
                         {disp8} lea      eax, dword ptr [ebp + -0x02]                  // 0x007da280    8d45fe
                         push             eax                                           // 0x007da283    50
                         push             0x1                                           // 0x007da284    6a01
                         push             dword ptr [ebp + 0x0c]                        // 0x007da286    ff750c
                         push             ebx                                           // 0x007da289    53
                         push             dword ptr [data_bytes + 0x4be2b0]             // 0x007da28a    ff35b042e800
                         call             edi                                           // 0x007da290    ffd7
                         cmp.s            eax, ebx                                      // 0x007da292    3bc3
                         {disp8} mov      dword ptr [ebp + -0x0c], eax                  // 0x007da294    8945f4
                         {disp8} je       _jmp_addr_0x007da307                          // 0x007da297    746e
                         cmp              dword ptr [ebp + -0x08], ebx                  // 0x007da299    395df8
                         {disp8} jne      _jmp_addr_0x007da307                          // 0x007da29c    7569
                         lea              ecx, dword ptr [eax + esi * 0x1]              // 0x007da29e    8d0c30
                         cmp              ecx, dword ptr [ebp + 0x10]                   // 0x007da2a1    3b4d10
                         {disp8} ja       _jmp_addr_0x007da2c7                          // 0x007da2a4    7721
                         xor.s            edx, edx                                      // 0x007da2a6    33d2
                         cmp.s            eax, ebx                                      // 0x007da2a8    3bc3
                         {disp8} jle      _jmp_addr_0x007da2c1                          // 0x007da2aa    7e15
_jmp_addr_0x007da2ac:    {disp8} mov      cl, byte ptr [ebp + edx * 0x1 + -0x02]        // 0x007da2ac    8a4c15fe
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007da2b0    8b4508
                         cmp.s            cl, bl                                        // 0x007da2b3    3acb
                         mov              byte ptr [esi + eax * 0x1], cl                // 0x007da2b5    880c06
                         {disp8} je       _jmp_addr_0x007da2c7                          // 0x007da2b8    740d
                         inc              edx                                           // 0x007da2ba    42
                         inc              esi                                           // 0x007da2bb    46
                         cmp              edx, dword ptr [ebp + -0x0c]                  // 0x007da2bc    3b55f4
                         {disp8} jl       _jmp_addr_0x007da2ac                          // 0x007da2bf    7ceb
_jmp_addr_0x007da2c1:    add              dword ptr [ebp + 0x0c], 0x02                  // 0x007da2c1    83450c02
                         {disp8} jmp      _jmp_addr_0x007da270                          // 0x007da2c5    eba9
_jmp_addr_0x007da2c7:    mov.s            eax, esi                                      // 0x007da2c7    8bc6
                         {disp8} jmp      _jmp_addr_0x007da315                          // 0x007da2c9    eb4a
_jmp_addr_0x007da2cb:    cmp              dword ptr [data_bytes + 0x4be2a0], ebx        // 0x007da2cb    391da042e800
                         {disp8} jne      _jmp_addr_0x007da2de                          // 0x007da2d1    750b
                         push             dword ptr [ebp + 0x0c]                        // 0x007da2d3    ff750c
                         call             _wcslen                                       // 0x007da2d6    e887c1feff
                         pop              ecx                                           // 0x007da2db    59
                         {disp8} jmp      _jmp_addr_0x007da315                          // 0x007da2dc    eb37
_jmp_addr_0x007da2de:    {disp8} lea      eax, dword ptr [ebp + -0x08]                  // 0x007da2de    8d45f8
                         push             eax                                           // 0x007da2e1    50
                         push             ebx                                           // 0x007da2e2    53
                         push             ebx                                           // 0x007da2e3    53
                         push             ebx                                           // 0x007da2e4    53
                         push             -0x1                                          // 0x007da2e5    6aff
                         push             dword ptr [ebp + 0x0c]                        // 0x007da2e7    ff750c
                         push             0x00000220                                    // 0x007da2ea    6820020000
                         push             dword ptr [data_bytes + 0x4be2b0]             // 0x007da2ef    ff35b042e800
                         call             dword ptr [__imp__WideCharToMultiByte@32]      // 0x007da2f5    ff152c928a00
                         cmp.s            eax, ebx                                      // 0x007da2fb    3bc3
                         {disp8} je       _jmp_addr_0x007da307                          // 0x007da2fd    7408
                         cmp              dword ptr [ebp + -0x08], ebx                  // 0x007da2ff    395df8
                         {disp8} jne      _jmp_addr_0x007da307                          // 0x007da302    7503
_jmp_addr_0x007da304:    dec              eax                                           // 0x007da304    48
                         {disp8} jmp      _jmp_addr_0x007da315                          // 0x007da305    eb0e
_jmp_addr_0x007da307:    call             __errno                                       // 0x007da307    e875edfeff
                         mov              dword ptr [eax], 0x0000002a                   // 0x007da30c    c7002a000000
                         or               eax, -0x1                                     // 0x007da312    83c8ff
_jmp_addr_0x007da315:    pop              edi                                           // 0x007da315    5f
                         pop              esi                                           // 0x007da316    5e
                         pop              ebx                                           // 0x007da317    5b
                         leave                                                          // 0x007da318    c9
                         ret                                                            // 0x007da319    c3
_jmp_addr_0x007da31a:    push             ebp                                           // 0x007da31a    55
                         mov.s            ebp, esp                                      // 0x007da31b    8bec
                         {disp8} mov      ecx, dword ptr [ebp + 0x0c]                   // 0x007da31d    8b4d0c
                         {disp8} mov      eax, dword ptr [ebp + 0x08]                   // 0x007da320    8b4508
                         xor.s            edx, edx                                      // 0x007da323    33d2
                         cmp.s            ecx, edx                                      // 0x007da325    3bca
                         {disp8} je       _jmp_addr_0x007da344                          // 0x007da327    741b
_jmp_addr_0x007da329:    cmp              word ptr [eax], dx                            // 0x007da329    663910
                         {disp8} je       _jmp_addr_0x007da333                          // 0x007da32c    7405
                         inc              eax                                           // 0x007da32e    40
                         inc              eax                                           // 0x007da32f    40
                         dec              ecx                                           // 0x007da330    49
                         {disp8} jne      _jmp_addr_0x007da329                          // 0x007da331    75f6
_jmp_addr_0x007da333:    cmp.s            ecx, edx                                      // 0x007da333    3bca
                         {disp8} je       _jmp_addr_0x007da344                          // 0x007da335    740d
                         cmp              word ptr [eax], dx                            // 0x007da337    663910
                         {disp8} jne      _jmp_addr_0x007da344                          // 0x007da33a    7508
                         sub              eax, dword ptr [ebp + 0x08]                   // 0x007da33c    2b4508
                         sar              eax, 1                                        // 0x007da33f    d1f8
                         inc              eax                                           // 0x007da341    40
                         pop              ebp                                           // 0x007da342    5d
                         ret                                                            // 0x007da343    c3
_jmp_addr_0x007da344:    {disp8} mov      eax, dword ptr [ebp + 0x0c]                   // 0x007da344    8b450c
                         pop              ebp                                           // 0x007da347    5d
                         ret                                                            // 0x007da348    c3
___crtMessageBoxA:       push             ebx                                           // 0x007da349    53
                         xor.s            ebx, ebx                                      // 0x007da34a    33db
                         cmp              dword ptr [data_bytes + 0x4be558], ebx        // 0x007da34c    391d5845e800
                         push             esi                                           // 0x007da352    56
                         push             edi                                           // 0x007da353    57
                         {disp8} jne      _jmp_addr_0x007da398                          // 0x007da354    7542
                         push             0x009a15d0                                    // 0x007da356    68d0159a00
                         call             dword ptr [__imp__LoadLibraryA@4]             // 0x007da35b    ff156c918a00
                         mov.s            edi, eax                                      // 0x007da361    8bf8
                         cmp.s            edi, ebx                                      // 0x007da363    3bfb
                         {disp8} je       _jmp_addr_0x007da3ce                          // 0x007da365    7467
                         {disp32} mov     esi, dword ptr [__imp__GetProcAddress@8]      // 0x007da367    8b3570918a00
                         push             0x009a15c4                                    // 0x007da36d    68c4159a00
                         push             edi                                           // 0x007da372    57
                         call             esi                                           // 0x007da373    ffd6
                         test             eax, eax                                      // 0x007da375    85c0
                         {disp32} mov     dword ptr [data_bytes + 0x4be558], eax        // 0x007da377    a35845e800
                         {disp8} je       _jmp_addr_0x007da3ce                          // 0x007da37c    7450
                         push             0x009a15b4                                    // 0x007da37e    68b4159a00
                         push             edi                                           // 0x007da383    57
                         call             esi                                           // 0x007da384    ffd6
                         push             0x009a15a0                                    // 0x007da386    68a0159a00
                         push             edi                                           // 0x007da38b    57
                         {disp32} mov     dword ptr [data_bytes + 0x4be55c], eax        // 0x007da38c    a35c45e800
                         call             esi                                           // 0x007da391    ffd6
                         {disp32} mov     dword ptr [data_bytes + 0x4be560], eax        // 0x007da393    a36045e800
_jmp_addr_0x007da398:    {disp32} mov     eax, dword ptr [data_bytes + 0x4be55c]        // 0x007da398    a15c45e800
                         test             eax, eax                                      // 0x007da39d    85c0
                         {disp8} je       _jmp_addr_0x007da3b7                          // 0x007da39f    7416
                         call             eax                                           // 0x007da3a1    ffd0
                         mov.s            ebx, eax                                      // 0x007da3a3    8bd8
                         test             ebx, ebx                                      // 0x007da3a5    85db
                         {disp8} je       _jmp_addr_0x007da3b7                          // 0x007da3a7    740e
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4be560]        // 0x007da3a9    a16045e800
                         test             eax, eax                                      // 0x007da3ae    85c0
                         {disp8} je       _jmp_addr_0x007da3b7                          // 0x007da3b0    7405
                         push             ebx                                           // 0x007da3b2    53
                         call             eax                                           // 0x007da3b3    ffd0
                         mov.s            ebx, eax                                      // 0x007da3b5    8bd8
_jmp_addr_0x007da3b7:    push             dword ptr [esp + 0x18]                        // 0x007da3b7    ff742418
                         push             dword ptr [esp + 0x18]                        // 0x007da3bb    ff742418
                         push             dword ptr [esp + 0x18]                        // 0x007da3bf    ff742418
                         push             ebx                                           // 0x007da3c3    53
                         call             dword ptr [data_bytes + 0x4be558]             // 0x007da3c4    ff155845e800
_jmp_addr_0x007da3ca:    pop              edi                                           // 0x007da3ca    5f
                         pop              esi                                           // 0x007da3cb    5e
                         pop              ebx                                           // 0x007da3cc    5b
                         ret                                                            // 0x007da3cd    c3
_jmp_addr_0x007da3ce:    xor.s            eax, eax                                      // 0x007da3ce    33c0
                         {disp8} jmp      _jmp_addr_0x007da3ca                          // 0x007da3d0    ebf8
__lseeki64:              push             esi                                           // 0x007da3d2    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x007da3d3    8b742408
                         cmp              esi, dword ptr [data_bytes + 0x5e6a60]        // 0x007da3d7    3b3560cafa00
                         {disp8} jae      _jmp_addr_0x007da429                          // 0x007da3dd    734a
                         mov.s            ecx, esi                                      // 0x007da3df    8bce
                         mov.s            eax, esi                                      // 0x007da3e1    8bc6
                         sar              ecx, 5                                        // 0x007da3e3    c1f905
                         and              eax, 0x1f                                     // 0x007da3e6    83e01f
                         {disp32} mov     ecx, dword ptr [ecx * 0x4 + ___pioinfo]       // 0x007da3e9    8b0c8d60c9fa00
                         lea              eax, dword ptr [eax + eax * 0x8]              // 0x007da3f0    8d04c0
                         test             byte ptr [ecx + eax * 0x4 + 0x04], 0x01       // 0x007da3f3    f644810401
                         {disp8} je       _jmp_addr_0x007da429                          // 0x007da3f8    742f
                         push             ebx                                           // 0x007da3fa    53
                         push             edi                                           // 0x007da3fb    57
                         push             esi                                           // 0x007da3fc    56
                         call             __lock_fhandle                                // 0x007da3fd    e85bf6ffff
                         push             dword ptr [esp + 0x20]                        // 0x007da402    ff742420
                         push             dword ptr [esp + 0x20]                        // 0x007da406    ff742420
                         push             dword ptr [esp + 0x20]                        // 0x007da40a    ff742420
                         push             esi                                           // 0x007da40e    56
                         call             _jmp_addr_0x007da443                          // 0x007da40f    e82f000000
                         push             esi                                           // 0x007da414    56
                         mov.s            edi, eax                                      // 0x007da415    8bf8
                         mov.s            ebx, edx                                      // 0x007da417    8bda
                         call             __unlock_fhandle                              // 0x007da419    e89ef6ffff
                         add              esp, 0x18                                     // 0x007da41e    83c418
                         mov.s            eax, edi                                      // 0x007da421    8bc7
                         mov.s            edx, ebx                                      // 0x007da423    8bd3
                         pop              edi                                           // 0x007da425    5f
                         pop              ebx                                           // 0x007da426    5b
                         pop              esi                                           // 0x007da427    5e
                         ret                                                            // 0x007da428    c3
_jmp_addr_0x007da429:    call             __errno                                       // 0x007da429    e853ecfeff
                         mov              dword ptr [eax], 0x00000009                   // 0x007da42e    c70009000000
                         call             ___doserrno                                   // 0x007da434    e851ecfeff
                         and              dword ptr [eax], 0x00                         // 0x007da439    832000
                         or               edx, 0xffffffff                               // 0x007da43c    83caff
                         mov.s            eax, edx                                      // 0x007da43f    8bc2
                         pop              esi                                           // 0x007da441    5e
                         ret                                                            // 0x007da442    c3
_jmp_addr_0x007da443:    push             ebp                                           // 0x007da443    55
                         mov.s            ebp, esp                                      // 0x007da444    8bec
                         push             ecx                                           // 0x007da446    51
                         push             ecx                                           // 0x007da447    51
                         {disp8} mov      eax, dword ptr [ebp + 0x0c]                   // 0x007da448    8b450c
                         push             esi                                           // 0x007da44b    56
                         {disp8} mov      esi, dword ptr [ebp + 0x08]                   // 0x007da44c    8b7508
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007da44f    8945f8
                         {disp8} mov      eax, dword ptr [ebp + 0x10]                   // 0x007da452    8b4510
                         push             edi                                           // 0x007da455    57
                         push             esi                                           // 0x007da456    56
                         {disp8} mov      dword ptr [ebp + -0x04], eax                  // 0x007da457    8945fc
                         call             __get_osfhandle                               // 0x007da45a    e815f5ffff
                         or               edi, 0xffffffff                               // 0x007da45f    83cfff
                         pop              ecx                                           // 0x007da462    59
                         cmp.s            eax, edi                                      // 0x007da463    3bc7
                         {disp8} jne      _jmp_addr_0x007da474                          // 0x007da465    750d
                         call             __errno                                       // 0x007da467    e815ecfeff
                         mov              dword ptr [eax], 0x00000009                   // 0x007da46c    c70009000000
                         {disp8} jmp      _jmp_addr_0x007da49d                          // 0x007da472    eb29
_jmp_addr_0x007da474:    push             dword ptr [ebp + 0x14]                        // 0x007da474    ff7514
                         {disp8} lea      ecx, dword ptr [ebp + -0x04]                  // 0x007da477    8d4dfc
                         push             ecx                                           // 0x007da47a    51
                         push             dword ptr [ebp + -0x08]                       // 0x007da47b    ff75f8
                         push             eax                                           // 0x007da47e    50
                         call             dword ptr [__imp__SetFilePointer@16]          // 0x007da47f    ff1520928a00
                         cmp.s            eax, edi                                      // 0x007da485    3bc7
                         {disp8} mov      dword ptr [ebp + -0x08], eax                  // 0x007da487    8945f8
                         {disp8} jne      _jmp_addr_0x007da4a3                          // 0x007da48a    7517
                         call             dword ptr [__imp__GetLastError@0]             // 0x007da48c    ff15fc918a00
                         test             eax, eax                                      // 0x007da492    85c0
                         {disp8} je       _jmp_addr_0x007da4a3                          // 0x007da494    740d
                         push             eax                                           // 0x007da496    50
                         call             __dosmaperr                                   // 0x007da497    e872ebfeff
                         pop              ecx                                           // 0x007da49c    59
_jmp_addr_0x007da49d:    mov.s            eax, edi                                      // 0x007da49d    8bc7
                         mov.s            edx, edi                                      // 0x007da49f    8bd7
                         {disp8} jmp      _jmp_addr_0x007da4c4                          // 0x007da4a1    eb21
_jmp_addr_0x007da4a3:    mov.s            eax, esi                                      // 0x007da4a3    8bc6
                         and              esi, 0x1f                                     // 0x007da4a5    83e61f
                         sar              eax, 5                                        // 0x007da4a8    c1f805
                         lea              ecx, dword ptr [esi + esi * 0x8]              // 0x007da4ab    8d0cf6
                         {disp32} mov     eax, dword ptr [eax * 0x4 + ___pioinfo]       // 0x007da4ae    8b048560c9fa00
                         and              byte ptr [eax + ecx * 0x4 + 0x04], -0x03      // 0x007da4b5    80648804fd
                         {disp8} mov      edx, dword ptr [ebp + -0x04]                  // 0x007da4ba    8b55fc
                         {disp8} lea      eax, dword ptr [eax + ecx * 0x4 + 0x04]       // 0x007da4bd    8d448804
                         {disp8} mov      eax, dword ptr [ebp + -0x08]                  // 0x007da4c1    8b45f8
_jmp_addr_0x007da4c4:    pop              edi                                           // 0x007da4c4    5f
                         pop              esi                                           // 0x007da4c5    5e
                         leave                                                          // 0x007da4c6    c9
                         ret                                                            // 0x007da4c7    c3
                         push             0x1                                           // 0x007da4c8    6a01
                         push             0x0                                           // 0x007da4ca    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da4cc    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da4d0    e8d0000000
                         add              esp, 0x0c                                     // 0x007da4d5    83c40c
                         ret                                                            // 0x007da4d8    c3
                         push             0x3                                           // 0x007da4d9    6a03
                         push             0x0                                           // 0x007da4db    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da4dd    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da4e1    e8bf000000
                         add              esp, 0x0c                                     // 0x007da4e6    83c40c
                         ret                                                            // 0x007da4e9    c3
                         push             0x2                                           // 0x007da4ea    6a02
                         push             0x0                                           // 0x007da4ec    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da4ee    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da4f2    e8ae000000
                         add              esp, 0x0c                                     // 0x007da4f7    83c40c
                         ret                                                            // 0x007da4fa    c3
                         push             0x1                                           // 0x007da4fb    6a01
                         push             0x00000107                                    // 0x007da4fd    6807010000
                         push             dword ptr [esp + 0x0c]                        // 0x007da502    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da506    e89a000000
                         add              esp, 0x0c                                     // 0x007da50b    83c40c
                         ret                                                            // 0x007da50e    c3
                         push             0x1                                           // 0x007da50f    6a01
                         push             0x00000103                                    // 0x007da511    6803010000
                         push             dword ptr [esp + 0x0c]                        // 0x007da516    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da51a    e886000000
                         add              esp, 0x0c                                     // 0x007da51f    83c40c
                         ret                                                            // 0x007da522    c3
                         push             0x3                                           // 0x007da523    6a03
                         push             0x00000117                                    // 0x007da525    6817010000
                         push             dword ptr [esp + 0x0c]                        // 0x007da52a    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da52e    e872000000
                         add              esp, 0x0c                                     // 0x007da533    83c40c
                         ret                                                            // 0x007da536    c3
                         push             0x3                                           // 0x007da537    6a03
                         push             0x00000157                                    // 0x007da539    6857010000
                         push             dword ptr [esp + 0x0c]                        // 0x007da53e    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da542    e85e000000
                         add              esp, 0x0c                                     // 0x007da547    83c40c
                         ret                                                            // 0x007da54a    c3
                         push             0x2                                           // 0x007da54b    6a02
                         push             0x10                                          // 0x007da54d    6a10
                         push             dword ptr [esp + 0x0c]                        // 0x007da54f    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da553    e84d000000
                         add              esp, 0x0c                                     // 0x007da558    83c40c
                         ret                                                            // 0x007da55b    c3
__ismbblead:    push             0x4                                           // 0x007da55c    6a04
                         push             0x0                                           // 0x007da55e    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da560    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da564    e83c000000
                         add              esp, 0x0c                                     // 0x007da569    83c40c
                         ret                                                            // 0x007da56c    c3
                         push             0x8                                           // 0x007da56d    6a08
                         push             0x0                                           // 0x007da56f    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da571    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da575    e82b000000
                         add              esp, 0x0c                                     // 0x007da57a    83c40c
                         ret                                                            // 0x007da57d    c3
                         cmp              dword ptr [data_bytes + 0x5e6a64], 0x000003a4 // 0x007da57e    813d64cafa00a4030000
                         {disp8} jne      _jmp_addr_0x007da5a2                          // 0x007da588    7518
                         push             0x3                                           // 0x007da58a    6a03
                         push             0x0                                           // 0x007da58c    6a00
                         push             dword ptr [esp + 0x0c]                        // 0x007da58e    ff74240c
                         call             _jmp_addr_0x007da5a5                          // 0x007da592    e80e000000
                         add              esp, 0x0c                                     // 0x007da597    83c40c
                         test             eax, eax                                      // 0x007da59a    85c0
                         {disp8} je       _jmp_addr_0x007da5a2                          // 0x007da59c    7404
                         push             0x1                                           // 0x007da59e    6a01
                         pop              eax                                           // 0x007da5a0    58
                         ret                                                            // 0x007da5a1    c3
_jmp_addr_0x007da5a2:    xor.s            eax, eax                                      // 0x007da5a2    33c0
                         ret                                                            // 0x007da5a4    c3
_jmp_addr_0x007da5a5:    movzx            eax, byte ptr [esp + 0x04]                    // 0x007da5a5    0fb6442404
                         {disp8} mov      cl, byte ptr [esp + 0x0c]                     // 0x007da5aa    8a4c240c
                         test             byte ptr [eax + 0x00facb81], cl               // 0x007da5ae    848881cbfa00
                         {disp8} jne      _jmp_addr_0x007da5d2                          // 0x007da5b4    751c
                         cmp              dword ptr [esp + 0x08], 0x00                  // 0x007da5b6    837c240800
                         {disp8} je       _jmp_addr_0x007da5cb                          // 0x007da5bb    740e
                         movzx            eax, word ptr [eax * 0x2 + __ctype + 2]       // 0x007da5bd    0fb704452adbc200
                         and              eax, dword ptr [esp + 0x08]                   // 0x007da5c5    23442408
                         {disp8} jmp      _jmp_addr_0x007da5cd                          // 0x007da5c9    eb02
_jmp_addr_0x007da5cb:    xor.s            eax, eax                                      // 0x007da5cb    33c0
_jmp_addr_0x007da5cd:    test             eax, eax                                      // 0x007da5cd    85c0
                         {disp8} jne      _jmp_addr_0x007da5d2                          // 0x007da5cf    7501
                         ret                                                            // 0x007da5d1    c3
_jmp_addr_0x007da5d2:    push             0x1                                           // 0x007da5d2    6a01
                         pop              eax                                           // 0x007da5d4    58
                         ret                                                            // 0x007da5d5    c3
___getlocaleinfo:        push             ebp                                           // 0x007da5d6    55
                         mov.s            ebp, esp                                      // 0x007da5d7    8bec
                         sub              esp, 0x00000080                               // 0x007da5d9    81ec80000000
                         cmp              dword ptr [ebp + 0x08], 0x01                  // 0x007da5df    837d0801
                         push             ebx                                           // 0x007da5e3    53
                         push             esi                                           // 0x007da5e4    56
                         push             edi                                           // 0x007da5e5    57
                         {disp32} jne     _jmp_addr_0x007da69c                          // 0x007da5e6    0f85b0000000
                         xor.s            ebx, ebx                                      // 0x007da5ec    33db
                         {disp8} lea      eax, dword ptr [ebp + -0x80]                  // 0x007da5ee    8d4580
                         push             ebx                                           // 0x007da5f1    53
                         push             0x00000080                                    // 0x007da5f2    6880000000
                         push             eax                                           // 0x007da5f7    50
                         {disp8} lea      edi, dword ptr [ebp + -0x80]                  // 0x007da5f8    8d7d80
                         push             dword ptr [ebp + 0x10]                        // 0x007da5fb    ff7510
                         {disp8} mov      dword ptr [ebp + 0x08], ebx                   // 0x007da5fe    895d08
                         push             dword ptr [ebp + 0x0c]                        // 0x007da601    ff750c
                         call             ___crtGetLocaleInfoA                          // 0x007da604    e82b0c0000
                         mov.s            esi, eax                                      // 0x007da609    8bf0
                         add              esp, 0x14                                     // 0x007da60b    83c414
                         cmp.s            esi, ebx                                      // 0x007da60e    3bf3
                         {disp8} jne      _jmp_addr_0x007da65f                          // 0x007da610    754d
                         call             dword ptr [__imp__GetLastError@0]             // 0x007da612    ff15fc918a00
                         cmp              eax, 0x7a                                     // 0x007da618    83f87a
                         {disp8} jne      _jmp_addr_0x007da67b                          // 0x007da61b    755e
                         push             ebx                                           // 0x007da61d    53
                         push             ebx                                           // 0x007da61e    53
                         push             ebx                                           // 0x007da61f    53
                         push             dword ptr [ebp + 0x10]                        // 0x007da620    ff7510
                         push             dword ptr [ebp + 0x0c]                        // 0x007da623    ff750c
                         call             ___crtGetLocaleInfoA                          // 0x007da626    e8090c0000
                         mov.s            esi, eax                                      // 0x007da62b    8bf0
                         add              esp, 0x14                                     // 0x007da62d    83c414
                         cmp.s            esi, ebx                                      // 0x007da630    3bf3
                         {disp8} je       _jmp_addr_0x007da67b                          // 0x007da632    7447
                         push             esi                                           // 0x007da634    56
                         call             _malloc                                       // 0x007da635    e812c0feff
                         mov.s            edi, eax                                      // 0x007da63a    8bf8
                         pop              ecx                                           // 0x007da63c    59
                         cmp.s            edi, ebx                                      // 0x007da63d    3bfb
                         {disp8} je       _jmp_addr_0x007da67b                          // 0x007da63f    743a
                         push             ebx                                           // 0x007da641    53
                         push             esi                                           // 0x007da642    56
                         push             edi                                           // 0x007da643    57
                         {disp8} mov      dword ptr [ebp + 0x08], 0x00000001            // 0x007da644    c7450801000000
                         push             dword ptr [ebp + 0x10]                        // 0x007da64b    ff7510
                         push             dword ptr [ebp + 0x0c]                        // 0x007da64e    ff750c
                         call             ___crtGetLocaleInfoA                          // 0x007da651    e8de0b0000
                         mov.s            esi, eax                                      // 0x007da656    8bf0
                         add              esp, 0x14                                     // 0x007da658    83c414
                         cmp.s            esi, ebx                                      // 0x007da65b    3bf3
                         {disp8} je       _jmp_addr_0x007da674                          // 0x007da65d    7415
_jmp_addr_0x007da65f:    push             esi                                           // 0x007da65f    56
                         call             _malloc                                       // 0x007da660    e8e7bffeff
                         pop              ecx                                           // 0x007da665    59
                         cmp.s            eax, ebx                                      // 0x007da666    3bc3
                         {disp8} mov      ecx, dword ptr [ebp + 0x14]                   // 0x007da668    8b4d14
                         mov              dword ptr [ecx], eax                          // 0x007da66b    8901
                         {disp8} jne      _jmp_addr_0x007da683                          // 0x007da66d    7514
                         cmp              dword ptr [ebp + 0x08], ebx                   // 0x007da66f    395d08
                         {disp8} je       _jmp_addr_0x007da67b                          // 0x007da672    7407
_jmp_addr_0x007da674:    push             edi                                           // 0x007da674    57
                         call             _free                                         // 0x007da675    e80cc1feff
                         pop              ecx                                           // 0x007da67a    59
_jmp_addr_0x007da67b:    or               eax, -0x1                                     // 0x007da67b    83c8ff
_jmp_addr_0x007da67e:    pop              edi                                           // 0x007da67e    5f
                         pop              esi                                           // 0x007da67f    5e
                         pop              ebx                                           // 0x007da680    5b
                         leave                                                          // 0x007da681    c9
                         ret                                                            // 0x007da682    c3
_jmp_addr_0x007da683:    push             esi                                           // 0x007da683    56
                         push             edi                                           // 0x007da684    57
                         push             eax                                           // 0x007da685    50
                         call             _strncpy                                      // 0x007da686    e815eafeff
                         add              esp, 0x0c                                     // 0x007da68b    83c40c
                         cmp              dword ptr [ebp + 0x08], ebx                   // 0x007da68e    395d08
                         {disp8} je       _jmp_addr_0x007da707                          // 0x007da691    7474
                         push             edi                                           // 0x007da693    57
                         call             _free                                         // 0x007da694    e8edc0feff
                         pop              ecx                                           // 0x007da699    59
                         {disp8} jmp      _jmp_addr_0x007da707                          // 0x007da69a    eb6b
_jmp_addr_0x007da69c:    cmp              dword ptr [ebp + 0x08], 0x00                  // 0x007da69c    837d0800
                         {disp8} jne      _jmp_addr_0x007da67b                          // 0x007da6a0    75d9
                         push             0x0                                           // 0x007da6a2    6a00
                         mov              esi, 0x00e84564                               // 0x007da6a4    be6445e800
                         push             0x4                                           // 0x007da6a9    6a04
                         push             esi                                           // 0x007da6ab    56
                         push             dword ptr [ebp + 0x10]                        // 0x007da6ac    ff7510
                         push             dword ptr [ebp + 0x0c]                        // 0x007da6af    ff750c
                         call             ___crtGetLocaleInfoW                          // 0x007da6b2    e86a0a0000
                         add              esp, 0x14                                     // 0x007da6b7    83c414
                         test             eax, eax                                      // 0x007da6ba    85c0
                         {disp8} je       _jmp_addr_0x007da67b                          // 0x007da6bc    74bd
                         {disp8} mov      edi, dword ptr [ebp + 0x14]                   // 0x007da6be    8b7d14
                         and              byte ptr [edi], 0x00                          // 0x007da6c1    802700
_jmp_addr_0x007da6c4:    cmp              dword ptr [data_bytes + 0x267d2c], 0x01       // 0x007da6c4    833d2cddc20001
                         mov              bl, byte ptr [esi]                            // 0x007da6cb    8a1e
                         {disp8} jle      _jmp_addr_0x007da6de                          // 0x007da6cd    7e0f
                         movzx            eax, bl                                       // 0x007da6cf    0fb6c3
                         push             0x4                                           // 0x007da6d2    6a04
                         push             eax                                           // 0x007da6d4    50
                         call             __isctype                                     // 0x007da6d5    e8b912ffff
                         pop              ecx                                           // 0x007da6da    59
                         pop              ecx                                           // 0x007da6db    59
                         {disp8} jmp      _jmp_addr_0x007da6ed                          // 0x007da6dc    eb0f
_jmp_addr_0x007da6de:    {disp32} mov     ecx, dword ptr [data_bytes + 0x267b20]        // 0x007da6de    8b0d20dbc200
                         movzx            eax, bl                                       // 0x007da6e4    0fb6c3
                         mov              al, byte ptr [ecx + eax * 0x2]                // 0x007da6e7    8a0441
                         and              eax, 0x04                                     // 0x007da6ea    83e004
_jmp_addr_0x007da6ed:    test             eax, eax                                      // 0x007da6ed    85c0
                         {disp8} je       _jmp_addr_0x007da707                          // 0x007da6ef    7416
                         mov              al, byte ptr [edi]                            // 0x007da6f1    8a07
                         mov              cl, 0x0a                                      // 0x007da6f3    b10a
                         imul             cl                                            // 0x007da6f5    f6e9
                         add.s            al, bl                                        // 0x007da6f7    02c3
                         sub              al, 0x30                                      // 0x007da6f9    2c30
                         inc              esi                                           // 0x007da6fb    46
                         inc              esi                                           // 0x007da6fc    46
                         mov              byte ptr [edi], al                            // 0x007da6fd    8807
                         cmp              esi, 0x00e8456c                               // 0x007da6ff    81fe6c45e800
                         {disp8} jl       _jmp_addr_0x007da6c4                          // 0x007da705    7cbd
_jmp_addr_0x007da707:    xor.s            eax, eax                                      // 0x007da707    33c0
                         {disp32} jmp     _jmp_addr_0x007da67e                          // 0x007da709    e970ffffff
                         int3                                                           // 0x007da70e    cc
                         int3                                                           // 0x007da70f    cc

