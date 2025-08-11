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
.extern __mbsdup
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

___get_qualified_locale:    push               ebx                                            // 0x007d7b2a    53
                         xor.s              ebx, ebx                                       // 0x007d7b2b    33db
                         cmp                dword ptr [data_bytes + 0x4be548], ebx         // 0x007d7b2d    391d4845e800
                         push               esi                                            // 0x007d7b33    56
                         push               edi                                            // 0x007d7b34    57
                         {disp8} jne        _jmp_addr_0x007d7b56                           // 0x007d7b35    751f
                         call               _jmp_addr_0x007d825b                           // 0x007d7b37    e81f070000
                         test               eax, eax                                       // 0x007d7b3c    85c0
                         {disp8} je         _jmp_addr_0x007d7b4c                           // 0x007d7b3e    740c
                         {disp32} mov       eax, dword ptr [__imp__GetLocaleInfoA@4]       // 0x007d7b40    a180928a00
                         {disp32} mov       dword ptr [data_bytes + 0x4be548], eax         // 0x007d7b45    a34845e800
                         {disp8} jmp        _jmp_addr_0x007d7b56                           // 0x007d7b4a    eb0a
_jmp_addr_0x007d7b4c:    {disp32} mov       dword ptr [data_bytes + 0x4be548], 0x007d8291  // 0x007d7b4c    c7054845e80091827d00
_jmp_addr_0x007d7b56:    {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x007d7b56    8b742410
                         cmp.s              esi, ebx                                       // 0x007d7b5a    3bf3
                         {disp32} je        _jmp_addr_0x007d7be2                           // 0x007d7b5c    0f8480000000
                         {disp32} mov       dword ptr [data_bytes + 0x4be538], esi         // 0x007d7b62    89353845e800
                         cmp                byte ptr [esi], bl                             // 0x007d7b68    381e
                         {disp8} je         _jmp_addr_0x007d7b80                           // 0x007d7b6a    7414
                         push               0x00e84538                                     // 0x007d7b6c    683845e800
                         push               0x40                                           // 0x007d7b71    6a40
                         push               0x00c30a00                                     // 0x007d7b73    68000ac300
                         call               _jmp_addr_0x007d7ca7                           // 0x007d7b78    e82a010000
                         add                esp, 0x0c                                      // 0x007d7b7d    83c40c
_jmp_addr_0x007d7b80:    {disp8} lea        eax, dword ptr [esi + 0x40]                    // 0x007d7b80    8d4640
                         cmp.s              eax, ebx                                       // 0x007d7b83    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x4be53c], eax         // 0x007d7b85    a33c45e800
                         {disp8} je         _jmp_addr_0x007d7ba9                           // 0x007d7b8a    741d
                         cmp                byte ptr [eax], bl                             // 0x007d7b8c    3818
                         {disp8} je         _jmp_addr_0x007d7ba9                           // 0x007d7b8e    7419
                         push               0x00e8453c                                     // 0x007d7b90    683c45e800
                         push               0x16                                           // 0x007d7b95    6a16
                         push               0x00c30948                                     // 0x007d7b97    684809c300
                         call               _jmp_addr_0x007d7ca7                           // 0x007d7b9c    e806010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be53c]         // 0x007d7ba1    a13c45e800
                         add                esp, 0x0c                                      // 0x007d7ba6    83c40c
_jmp_addr_0x007d7ba9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4be538]         // 0x007d7ba9    8b0d3845e800
                         {disp32} mov       dword ptr [data_bytes + 0x4be540], ebx         // 0x007d7baf    891d4045e800
                         cmp.s              ecx, ebx                                       // 0x007d7bb5    3bcb
                         {disp8} je         _jmp_addr_0x007d7bd3                           // 0x007d7bb7    741a
                         cmp                byte ptr [ecx], bl                             // 0x007d7bb9    3819
                         {disp8} je         _jmp_addr_0x007d7bd3                           // 0x007d7bbb    7416
                         cmp.s              eax, ebx                                       // 0x007d7bbd    3bc3
                         {disp8} je         _jmp_addr_0x007d7bcc                           // 0x007d7bbf    740b
                         cmp                byte ptr [eax], bl                             // 0x007d7bc1    3818
                         {disp8} je         _jmp_addr_0x007d7bcc                           // 0x007d7bc3    7407
                         call               _jmp_addr_0x007d7cff                           // 0x007d7bc5    e835010000
                         {disp8} jmp        _jmp_addr_0x007d7be7                           // 0x007d7bca    eb1b
_jmp_addr_0x007d7bcc:    call               _jmp_addr_0x007d7f8a                           // 0x007d7bcc    e8b9030000
                         {disp8} jmp        _jmp_addr_0x007d7be7                           // 0x007d7bd1    eb14
_jmp_addr_0x007d7bd3:    cmp.s              eax, ebx                                       // 0x007d7bd3    3bc3
                         {disp8} je         _jmp_addr_0x007d7be2                           // 0x007d7bd5    740b
                         cmp                byte ptr [eax], bl                             // 0x007d7bd7    3818
                         {disp8} je         _jmp_addr_0x007d7be2                           // 0x007d7bd9    7407
                         call               _jmp_addr_0x007d809d                           // 0x007d7bdb    e8bd040000
                         {disp8} jmp        _jmp_addr_0x007d7be7                           // 0x007d7be0    eb05
_jmp_addr_0x007d7be2:    call               _jmp_addr_0x007d815a                           // 0x007d7be2    e873050000
_jmp_addr_0x007d7be7:    cmp                dword ptr [data_bytes + 0x4be540], ebx         // 0x007d7be7    391d4045e800
                         {disp32} je        _jmp_addr_0x007d7ca1                           // 0x007d7bed    0f84ae000000
                         add                esi, 0x00000080                                // 0x007d7bf3    81c680000000
                         push               esi                                            // 0x007d7bf9    56
                         call               _jmp_addr_0x007d8174                           // 0x007d7bfa    e875050000
                         mov.s              edi, eax                                       // 0x007d7bff    8bf8
                         pop                ecx                                            // 0x007d7c01    59
                         cmp.s              edi, ebx                                       // 0x007d7c02    3bfb
                         {disp32} je        _jmp_addr_0x007d7ca1                           // 0x007d7c04    0f8497000000
                         movzx              eax, di                                        // 0x007d7c0a    0fb7c7
                         push               eax                                            // 0x007d7c0d    50
                         call               dword ptr [__imp__IsValidCodePage@4]           // 0x007d7c0e    ff1584928a00
                         test               eax, eax                                       // 0x007d7c14    85c0
                         {disp32} je        _jmp_addr_0x007d7ca1                           // 0x007d7c16    0f8485000000
                         push               0x1                                            // 0x007d7c1c    6a01
                         push               dword ptr [data_bytes + 0x4be528]              // 0x007d7c1e    ff352845e800
                         call               dword ptr [__imp__IsValidLocale@4]             // 0x007d7c24    ff1588928a00
                         test               eax, eax                                       // 0x007d7c2a    85c0
                         {disp8} je         _jmp_addr_0x007d7ca1                           // 0x007d7c2c    7473
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007d7c2e    8b442414
                         cmp.s              eax, ebx                                       // 0x007d7c32    3bc3
                         {disp8} je         _jmp_addr_0x007d7c4f                           // 0x007d7c34    7419
                         {disp32} mov       cx, word ptr [data_bytes + 0x4be528]           // 0x007d7c36    668b0d2845e800
                         mov                word ptr [eax], cx                             // 0x007d7c3d    668908
                         {disp32} mov       cx, word ptr [data_bytes + 0x4be544]           // 0x007d7c40    668b0d4445e800
                         {disp8} mov        word ptr [eax + 0x02], cx                      // 0x007d7c47    66894802
                         {disp8} mov        word ptr [eax + 0x04], di                      // 0x007d7c4b    66897804
_jmp_addr_0x007d7c4f:    {disp8} mov        esi, dword ptr [esp + 0x18]                    // 0x007d7c4f    8b742418
                         cmp.s              esi, ebx                                       // 0x007d7c53    3bf3
                         {disp8} je         _jmp_addr_0x007d7c9c                           // 0x007d7c55    7445
                         push               0x40                                           // 0x007d7c57    6a40
                         push               esi                                            // 0x007d7c59    56
                         push               0x00001001                                     // 0x007d7c5a    6801100000
                         push               dword ptr [data_bytes + 0x4be528]              // 0x007d7c5f    ff352845e800
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d7c65    ff154845e800
                         test               eax, eax                                       // 0x007d7c6b    85c0
                         {disp8} je         _jmp_addr_0x007d7ca1                           // 0x007d7c6d    7432
                         {disp8} lea        eax, dword ptr [esi + 0x40]                    // 0x007d7c6f    8d4640
                         push               0x40                                           // 0x007d7c72    6a40
                         push               eax                                            // 0x007d7c74    50
                         push               0x00001002                                     // 0x007d7c75    6802100000
                         push               dword ptr [data_bytes + 0x4be544]              // 0x007d7c7a    ff354445e800
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d7c80    ff154845e800
                         test               eax, eax                                       // 0x007d7c86    85c0
                         {disp8} je         _jmp_addr_0x007d7ca1                           // 0x007d7c88    7417
                         add                esi, 0x00000080                                // 0x007d7c8a    81c680000000
                         push               0xa                                            // 0x007d7c90    6a0a
                         push               esi                                            // 0x007d7c92    56
                         push               edi                                            // 0x007d7c93    57
                         call               __itoa                                         // 0x007d7c94    e8eb5cffff
                         add                esp, 0x0c                                      // 0x007d7c99    83c40c
_jmp_addr_0x007d7c9c:    push               0x1                                            // 0x007d7c9c    6a01
                         pop                eax                                            // 0x007d7c9e    58
                         {disp8} jmp        _jmp_addr_0x007d7ca3                           // 0x007d7c9f    eb02
_jmp_addr_0x007d7ca1:    xor.s              eax, eax                                       // 0x007d7ca1    33c0
_jmp_addr_0x007d7ca3:    pop                edi                                            // 0x007d7ca3    5f
                         pop                esi                                            // 0x007d7ca4    5e
                         pop                ebx                                            // 0x007d7ca5    5b
                         ret                                                               // 0x007d7ca6    c3
_jmp_addr_0x007d7ca7:    push               ebp                                            // 0x007d7ca7    55
                         mov.s              ebp, esp                                       // 0x007d7ca8    8bec
                         push               ebx                                            // 0x007d7caa    53
                         push               esi                                            // 0x007d7cab    56
                         push               edi                                            // 0x007d7cac    57
                         xor.s              ebx, ebx                                       // 0x007d7cad    33db
                         cmp                dword ptr [ebp + 0x0c], ebx                    // 0x007d7caf    395d0c
                         push               0x1                                            // 0x007d7cb2    6a01
                         pop                eax                                            // 0x007d7cb4    58
                         {disp8} jl         _jmp_addr_0x007d7cfa                           // 0x007d7cb5    7c43
_jmp_addr_0x007d7cb7:    test               eax, eax                                       // 0x007d7cb7    85c0
                         {disp8} je         _jmp_addr_0x007d7cfa                           // 0x007d7cb9    743f
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d7cbb    8b450c
                         add.s              eax, ebx                                       // 0x007d7cbe    03c3
                         cdq                                                               // 0x007d7cc0    99
                         sub.s              eax, edx                                       // 0x007d7cc1    2bc2
                         mov.s              esi, eax                                       // 0x007d7cc3    8bf0
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d7cc5    8b4508
                         sar                esi, 1                                         // 0x007d7cc8    d1fe
                         push               dword ptr [eax + esi * 0x8]                    // 0x007d7cca    ff34f0
                         lea                edi, dword ptr [eax + esi * 0x8]               // 0x007d7ccd    8d3cf0
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x007d7cd0    8b4510
                         push               dword ptr [eax]                                // 0x007d7cd3    ff30
                         call               __strcmpi                                      // 0x007d7cd5    e806f0feff
                         pop                ecx                                            // 0x007d7cda    59
                         test               eax, eax                                       // 0x007d7cdb    85c0
                         pop                ecx                                            // 0x007d7cdd    59
                         {disp8} jne        _jmp_addr_0x007d7cea                           // 0x007d7cde    750a
                         {disp8} mov        ecx, dword ptr [ebp + 0x10]                    // 0x007d7ce0    8b4d10
                         add                edi, 0x04                                      // 0x007d7ce3    83c704
                         mov                dword ptr [ecx], edi                           // 0x007d7ce6    8939
                         {disp8} jmp        _jmp_addr_0x007d7cf5                           // 0x007d7ce8    eb0b
_jmp_addr_0x007d7cea:    {disp8} jge        _jmp_addr_0x007d7cf2                           // 0x007d7cea    7d06
                         dec                esi                                            // 0x007d7cec    4e
                         {disp8} mov        dword ptr [ebp + 0x0c], esi                    // 0x007d7ced    89750c
                         {disp8} jmp        _jmp_addr_0x007d7cf5                           // 0x007d7cf0    eb03
_jmp_addr_0x007d7cf2:    {disp8} lea        ebx, dword ptr [esi + 0x01]                    // 0x007d7cf2    8d5e01
_jmp_addr_0x007d7cf5:    cmp                ebx, dword ptr [ebp + 0x0c]                    // 0x007d7cf5    3b5d0c
                         {disp8} jle        _jmp_addr_0x007d7cb7                           // 0x007d7cf8    7ebd
_jmp_addr_0x007d7cfa:    pop                edi                                            // 0x007d7cfa    5f
                         pop                esi                                            // 0x007d7cfb    5e
                         pop                ebx                                            // 0x007d7cfc    5b
                         pop                ebp                                            // 0x007d7cfd    5d
                         ret                                                               // 0x007d7cfe    c3
_jmp_addr_0x007d7cff:    push               dword ptr [data_bytes + 0x4be538]              // 0x007d7cff    ff353845e800
                         call               _strlen                                        // 0x007d7d05    e8e628ffff
                         push               dword ptr [data_bytes + 0x4be53c]              // 0x007d7d0a    ff353c45e800
                         sub                eax, 0x03                                      // 0x007d7d10    83e803
                         neg                eax                                            // 0x007d7d13    f7d8
                         sbb.s              eax, eax                                       // 0x007d7d15    1bc0
                         inc                eax                                            // 0x007d7d17    40
                         {disp32} mov       dword ptr [data_bytes + 0x4be534], eax         // 0x007d7d18    a33445e800
                         call               _strlen                                        // 0x007d7d1d    e8ce28ffff
                         sub                eax, 0x03                                      // 0x007d7d22    83e803
                         pop                ecx                                            // 0x007d7d25    59
                         neg                eax                                            // 0x007d7d26    f7d8
                         sbb.s              eax, eax                                       // 0x007d7d28    1bc0
                         and                dword ptr [data_bytes + 0x4be528], 0x00        // 0x007d7d2a    83252845e80000
                         inc                eax                                            // 0x007d7d31    40
                         cmp                dword ptr [data_bytes + 0x4be534], 0x00        // 0x007d7d32    833d3445e80000
                         pop                ecx                                            // 0x007d7d39    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be52c], eax         // 0x007d7d3a    a32c45e800
                         {disp8} je         _jmp_addr_0x007d7d4d                           // 0x007d7d3f    740c
                         {disp32} mov       dword ptr [data_bytes + 0x4be530], 0x00000002  // 0x007d7d41    c7053045e80002000000
                         {disp8} jmp        _jmp_addr_0x007d7d5e                           // 0x007d7d4b    eb11
_jmp_addr_0x007d7d4d:    push               dword ptr [data_bytes + 0x4be538]              // 0x007d7d4d    ff353845e800
                         call               _jmp_addr_0x007d83b0                           // 0x007d7d53    e858060000
                         pop                ecx                                            // 0x007d7d58    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be530], eax         // 0x007d7d59    a33045e800
_jmp_addr_0x007d7d5e:    push               0x1                                            // 0x007d7d5e    6a01
                         push               0x007d7d86                                     // 0x007d7d60    68867d7d00
                         call               dword ptr [__imp__EnumSystemLocalesA@4]        // 0x007d7d65    ff157c928a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be540]         // 0x007d7d6b    a14045e800
                         test               ah, 0x01                                       // 0x007d7d70    f6c401
                         {disp8} je         _jmp_addr_0x007d7d7e                           // 0x007d7d73    7409
                         test               ah, 0x02                                       // 0x007d7d75    f6c402
                         {disp8} je         _jmp_addr_0x007d7d7e                           // 0x007d7d78    7404
                         test               al, 0x07                                       // 0x007d7d7a    a807
                         {disp8} jne        _jmp_addr_0x007d7d85                           // 0x007d7d7c    7507
_jmp_addr_0x007d7d7e:    and                dword ptr [data_bytes + 0x4be540], 0x00        // 0x007d7d7e    83254045e80000
_jmp_addr_0x007d7d85:    ret                                                               // 0x007d7d85    c3
                         push               ebp                                            // 0x007d7d86    55
                         mov.s              ebp, esp                                       // 0x007d7d87    8bec
                         sub                esp, 0x78                                      // 0x007d7d89    83ec78
                         push               ebx                                            // 0x007d7d8c    53
                         push               esi                                            // 0x007d7d8d    56
                         push               edi                                            // 0x007d7d8e    57
                         push               dword ptr [ebp + 0x08]                         // 0x007d7d8f    ff7508
                         call               _jmp_addr_0x007d8377                           // 0x007d7d92    e8e0050000
                         pop                ecx                                            // 0x007d7d97    59
                         mov.s              esi, eax                                       // 0x007d7d98    8bf0
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7d9a    8d4588
                         push               0x78                                           // 0x007d7d9d    6a78
                         push               eax                                            // 0x007d7d9f    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be52c]         // 0x007d7da0    a12c45e800
                         neg                eax                                            // 0x007d7da5    f7d8
                         sbb.s              eax, eax                                       // 0x007d7da7    1bc0
                         and                ax, -0x0ffb                                    // 0x007d7da9    662505f0
                         add                eax, 0x00001002                                // 0x007d7dad    0502100000
                         push               eax                                            // 0x007d7db2    50
                         push               esi                                            // 0x007d7db3    56
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d7db4    ff154845e800
                         test               eax, eax                                       // 0x007d7dba    85c0
                         {disp32} je        _jmp_addr_0x007d7ed5                           // 0x007d7dbc    0f8413010000
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7dc2    8d4588
                         push               eax                                            // 0x007d7dc5    50
                         push               dword ptr [data_bytes + 0x4be53c]              // 0x007d7dc6    ff353c45e800
                         call               __strcmpi                                      // 0x007d7dcc    e80feffeff
                         pop                ecx                                            // 0x007d7dd1    59
                         mov                ebx, 0xfffff002                                // 0x007d7dd2    bb02f0ffff
                         test               eax, eax                                       // 0x007d7dd7    85c0
                         pop                ecx                                            // 0x007d7dd9    59
                         mov                edi, 0x00001001                                // 0x007d7dda    bf01100000
                         {disp32} jne       _jmp_addr_0x007d7ea1                           // 0x007d7ddf    0f85bc000000
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7de5    8d4588
                         push               0x78                                           // 0x007d7de8    6a78
                         push               eax                                            // 0x007d7dea    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be534]         // 0x007d7deb    a13445e800
                         neg                eax                                            // 0x007d7df0    f7d8
                         sbb.s              eax, eax                                       // 0x007d7df2    1bc0
                         and.s              eax, ebx                                       // 0x007d7df4    23c3
                         add.s              eax, edi                                       // 0x007d7df6    03c7
                         push               eax                                            // 0x007d7df8    50
                         push               esi                                            // 0x007d7df9    56
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d7dfa    ff154845e800
                         test               eax, eax                                       // 0x007d7e00    85c0
                         {disp32} je        _jmp_addr_0x007d7ed5                           // 0x007d7e02    0f84cd000000
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7e08    8d4588
                         push               eax                                            // 0x007d7e0b    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7e0c    ff353845e800
                         call               __strcmpi                                      // 0x007d7e12    e8c9eefeff
                         pop                ecx                                            // 0x007d7e17    59
                         test               eax, eax                                       // 0x007d7e18    85c0
                         pop                ecx                                            // 0x007d7e1a    59
                         {disp8} jne        _jmp_addr_0x007d7e34                           // 0x007d7e1b    7517
                         or                 word ptr [0xe84540], 0x304                     // 0x007d7e1d    66810d4045e8000403
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], esi         // 0x007d7e26    89354445e800
_jmp_addr_0x007d7e2c:    {disp32} mov       dword ptr [data_bytes + 0x4be528], esi         // 0x007d7e2c    89352845e800
                         {disp8} jmp        _jmp_addr_0x007d7ea1                           // 0x007d7e32    eb6d
_jmp_addr_0x007d7e34:    test               byte ptr [data_bytes + 0x4be540], 0x02         // 0x007d7e34    f6054045e80002
                         {disp8} jne        _jmp_addr_0x007d7ea1                           // 0x007d7e3b    7564
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be530]         // 0x007d7e3d    a13045e800
                         test               eax, eax                                       // 0x007d7e42    85c0
                         {disp8} je         _jmp_addr_0x007d7e80                           // 0x007d7e44    743a
                         push               eax                                            // 0x007d7e46    50
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7e47    8d4588
                         push               eax                                            // 0x007d7e4a    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7e4b    ff353845e800
                         call               __strnicmp                                     // 0x007d7e51    e8ba280000
                         add                esp, 0x0c                                      // 0x007d7e56    83c40c
                         test               eax, eax                                       // 0x007d7e59    85c0
                         {disp8} jne        _jmp_addr_0x007d7e80                           // 0x007d7e5b    7523
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7e5d    ff353845e800
                         or                 dword ptr [0xe84540], 2                        // 0x007d7e63    830d4045e80002
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], esi         // 0x007d7e6a    89354445e800
                         call               _strlen                                        // 0x007d7e70    e87b27ffff
                         cmp                eax, dword ptr [data_bytes + 0x4be530]         // 0x007d7e75    3b053045e800
                         pop                ecx                                            // 0x007d7e7b    59
                         {disp8} jne        _jmp_addr_0x007d7ea1                           // 0x007d7e7c    7523
                         {disp8} jmp        _jmp_addr_0x007d7e2c                           // 0x007d7e7e    ebac
_jmp_addr_0x007d7e80:    test               byte ptr [data_bytes + 0x4be540], 0x01         // 0x007d7e80    f6054045e80001
                         {disp8} jne        _jmp_addr_0x007d7ea1                           // 0x007d7e87    7518
                         push               esi                                            // 0x007d7e89    56
                         call               _jmp_addr_0x007d81da                           // 0x007d7e8a    e84b030000
                         test               eax, eax                                       // 0x007d7e8f    85c0
                         pop                ecx                                            // 0x007d7e91    59
                         {disp8} je         _jmp_addr_0x007d7ea1                           // 0x007d7e92    740d
                         or                 dword ptr [0xe84540], 1                        // 0x007d7e94    830d4045e80001
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], esi         // 0x007d7e9b    89354445e800
_jmp_addr_0x007d7ea1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4be540]         // 0x007d7ea1    8b0d4045e800
                         mov                eax, 0x00000300                                // 0x007d7ea7    b800030000
                         and.s              ecx, eax                                       // 0x007d7eac    23c8
                         cmp.s              ecx, eax                                       // 0x007d7eae    3bc8
                         {disp32} je        _jmp_addr_0x007d7f76                           // 0x007d7eb0    0f84c0000000
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7eb6    8d4588
                         push               0x78                                           // 0x007d7eb9    6a78
                         push               eax                                            // 0x007d7ebb    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be534]         // 0x007d7ebc    a13445e800
                         neg                eax                                            // 0x007d7ec1    f7d8
                         sbb.s              eax, eax                                       // 0x007d7ec3    1bc0
                         and.s              eax, ebx                                       // 0x007d7ec5    23c3
                         add.s              eax, edi                                       // 0x007d7ec7    03c7
                         push               eax                                            // 0x007d7ec9    50
                         push               esi                                            // 0x007d7eca    56
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d7ecb    ff154845e800
                         test               eax, eax                                       // 0x007d7ed1    85c0
                         {disp8} jne        _jmp_addr_0x007d7ee4                           // 0x007d7ed3    750f
_jmp_addr_0x007d7ed5:    and                dword ptr [data_bytes + 0x4be540], 0x00        // 0x007d7ed5    83254045e80000
                         push               0x1                                            // 0x007d7edc    6a01
                         pop                eax                                            // 0x007d7ede    58
                         {disp32} jmp       _jmp_addr_0x007d7f83                           // 0x007d7edf    e99f000000
_jmp_addr_0x007d7ee4:    {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7ee4    8d4588
                         push               eax                                            // 0x007d7ee7    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7ee8    ff353845e800
                         call               __strcmpi                                      // 0x007d7eee    e8ededfeff
                         pop                ecx                                            // 0x007d7ef3    59
                         test               eax, eax                                       // 0x007d7ef4    85c0
                         pop                ecx                                            // 0x007d7ef6    59
                         {disp8} jne        _jmp_addr_0x007d7f2a                           // 0x007d7ef7    7531
                         or                 byte ptr [0xe84541], 2                         // 0x007d7ef9    800d4145e80002
                         xor.s              edi, edi                                       // 0x007d7f00    33ff
                         cmp                dword ptr [data_bytes + 0x4be534], edi         // 0x007d7f02    393d3445e800
                         {disp8} jne        _jmp_addr_0x007d7f61                           // 0x007d7f08    7557
                         cmp                dword ptr [data_bytes + 0x4be530], edi         // 0x007d7f0a    393d3045e800
                         {disp8} je         _jmp_addr_0x007d7f61                           // 0x007d7f10    744f
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7f12    ff353845e800
                         call               _strlen                                        // 0x007d7f18    e8d326ffff
                         cmp                eax, dword ptr [data_bytes + 0x4be530]         // 0x007d7f1d    3b053045e800
                         pop                ecx                                            // 0x007d7f23    59
                         {disp8} jne        _jmp_addr_0x007d7f61                           // 0x007d7f24    753b
                         push               0x1                                            // 0x007d7f26    6a01
                         {disp8} jmp        _jmp_addr_0x007d7f55                           // 0x007d7f28    eb2b
_jmp_addr_0x007d7f2a:    xor.s              edi, edi                                       // 0x007d7f2a    33ff
                         cmp                dword ptr [data_bytes + 0x4be534], edi         // 0x007d7f2c    393d3445e800
                         {disp8} jne        _jmp_addr_0x007d7f76                           // 0x007d7f32    7542
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be530]         // 0x007d7f34    a13045e800
                         cmp.s              eax, edi                                       // 0x007d7f39    3bc7
                         {disp8} je         _jmp_addr_0x007d7f76                           // 0x007d7f3b    7439
                         push               eax                                            // 0x007d7f3d    50
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7f3e    8d4588
                         push               eax                                            // 0x007d7f41    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d7f42    ff353845e800
                         call               __strnicmp                                     // 0x007d7f48    e8c3270000
                         add                esp, 0x0c                                      // 0x007d7f4d    83c40c
                         test               eax, eax                                       // 0x007d7f50    85c0
                         {disp8} jne        _jmp_addr_0x007d7f76                           // 0x007d7f52    7522
                         push               edi                                            // 0x007d7f54    57
_jmp_addr_0x007d7f55:    push               esi                                            // 0x007d7f55    56
                         call               _jmp_addr_0x007d81f9                           // 0x007d7f56    e89e020000
                         pop                ecx                                            // 0x007d7f5b    59
                         test               eax, eax                                       // 0x007d7f5c    85c0
                         pop                ecx                                            // 0x007d7f5e    59
                         {disp8} je         _jmp_addr_0x007d7f76                           // 0x007d7f5f    7415
_jmp_addr_0x007d7f61:    or                 byte ptr [0xe84541], 1                         // 0x007d7f61    800d4145e80001
                         cmp                dword ptr [data_bytes + 0x4be528], edi         // 0x007d7f68    393d2845e800
                         {disp8} jne        _jmp_addr_0x007d7f76                           // 0x007d7f6e    7506
                         {disp32} mov       dword ptr [data_bytes + 0x4be528], esi         // 0x007d7f70    89352845e800
_jmp_addr_0x007d7f76:    {disp32} mov       eax, dword ptr [data_bytes + 0x4be540]         // 0x007d7f76    a14045e800
                         not                eax                                            // 0x007d7f7b    f7d0
                         shr                eax, 2                                         // 0x007d7f7d    c1e802
                         and                eax, 0x01                                      // 0x007d7f80    83e001
_jmp_addr_0x007d7f83:    pop                edi                                            // 0x007d7f83    5f
                         pop                esi                                            // 0x007d7f84    5e
                         pop                ebx                                            // 0x007d7f85    5b
                         leave                                                             // 0x007d7f86    c9
                         ret                0x0004                                         // 0x007d7f87    c20400
_jmp_addr_0x007d7f8a:    push               dword ptr [data_bytes + 0x4be538]              // 0x007d7f8a    ff353845e800
                         call               _strlen                                        // 0x007d7f90    e85b26ffff
                         sub                eax, 0x03                                      // 0x007d7f95    83e803
                         pop                ecx                                            // 0x007d7f98    59
                         neg                eax                                            // 0x007d7f99    f7d8
                         sbb.s              eax, eax                                       // 0x007d7f9b    1bc0
                         inc                eax                                            // 0x007d7f9d    40
                         {disp32} mov       dword ptr [data_bytes + 0x4be534], eax         // 0x007d7f9e    a33445e800
                         {disp8} je         _jmp_addr_0x007d7fb1                           // 0x007d7fa3    740c
                         {disp32} mov       dword ptr [data_bytes + 0x4be530], 0x00000002  // 0x007d7fa5    c7053045e80002000000
                         {disp8} jmp        _jmp_addr_0x007d7fc2                           // 0x007d7faf    eb11
_jmp_addr_0x007d7fb1:    push               dword ptr [data_bytes + 0x4be538]              // 0x007d7fb1    ff353845e800
                         call               _jmp_addr_0x007d83b0                           // 0x007d7fb7    e8f4030000
                         pop                ecx                                            // 0x007d7fbc    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be530], eax         // 0x007d7fbd    a33045e800
_jmp_addr_0x007d7fc2:    push               0x1                                            // 0x007d7fc2    6a01
                         push               0x007d7fe0                                     // 0x007d7fc4    68e07f7d00
                         call               dword ptr [__imp__EnumSystemLocalesA@4]        // 0x007d7fc9    ff157c928a00
                         test               byte ptr [data_bytes + 0x4be540], 0x04         // 0x007d7fcf    f6054045e80004
                         {disp8} jne        _jmp_addr_0x007d7fdf                           // 0x007d7fd6    7507
                         and                dword ptr [data_bytes + 0x4be540], 0x00        // 0x007d7fd8    83254045e80000
_jmp_addr_0x007d7fdf:    ret                                                               // 0x007d7fdf    c3
                         push               ebp                                            // 0x007d7fe0    55
                         mov.s              ebp, esp                                       // 0x007d7fe1    8bec
                         sub                esp, 0x78                                      // 0x007d7fe3    83ec78
                         push               esi                                            // 0x007d7fe6    56
                         push               dword ptr [ebp + 0x08]                         // 0x007d7fe7    ff7508
                         call               _jmp_addr_0x007d8377                           // 0x007d7fea    e888030000
                         pop                ecx                                            // 0x007d7fef    59
                         mov.s              esi, eax                                       // 0x007d7ff0    8bf0
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d7ff2    8d4588
                         push               0x78                                           // 0x007d7ff5    6a78
                         push               eax                                            // 0x007d7ff7    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be534]         // 0x007d7ff8    a13445e800
                         neg                eax                                            // 0x007d7ffd    f7d8
                         sbb.s              eax, eax                                       // 0x007d7fff    1bc0
                         and                ax, -0x0ffe                                    // 0x007d8001    662502f0
                         add                eax, 0x00001001                                // 0x007d8005    0501100000
                         push               eax                                            // 0x007d800a    50
                         push               esi                                            // 0x007d800b    56
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d800c    ff154845e800
                         test               eax, eax                                       // 0x007d8012    85c0
                         {disp8} jne        _jmp_addr_0x007d8021                           // 0x007d8014    750b
                         and                dword ptr [data_bytes + 0x4be540], eax         // 0x007d8016    21054045e800
                         push               0x1                                            // 0x007d801c    6a01
                         pop                eax                                            // 0x007d801e    58
                         {disp8} jmp        _jmp_addr_0x007d8098                           // 0x007d801f    eb77
_jmp_addr_0x007d8021:    {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d8021    8d4588
                         push               eax                                            // 0x007d8024    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d8025    ff353845e800
                         call               __strcmpi                                      // 0x007d802b    e8b0ecfeff
                         pop                ecx                                            // 0x007d8030    59
                         test               eax, eax                                       // 0x007d8031    85c0
                         pop                ecx                                            // 0x007d8033    59
                         {disp8} jne        _jmp_addr_0x007d8042                           // 0x007d8034    750c
                         cmp                dword ptr [data_bytes + 0x4be534], eax         // 0x007d8036    39053445e800
                         {disp8} jne        _jmp_addr_0x007d8078                           // 0x007d803c    753a
                         push               0x1                                            // 0x007d803e    6a01
                         {disp8} jmp        _jmp_addr_0x007d806c                           // 0x007d8040    eb2a
_jmp_addr_0x007d8042:    cmp                dword ptr [data_bytes + 0x4be534], 0x00        // 0x007d8042    833d3445e80000
                         {disp8} jne        _jmp_addr_0x007d808b                           // 0x007d8049    7540
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be530]         // 0x007d804b    a13045e800
                         test               eax, eax                                       // 0x007d8050    85c0
                         {disp8} je         _jmp_addr_0x007d808b                           // 0x007d8052    7437
                         push               eax                                            // 0x007d8054    50
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d8055    8d4588
                         push               eax                                            // 0x007d8058    50
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d8059    ff353845e800
                         call               __strnicmp                                     // 0x007d805f    e8ac260000
                         add                esp, 0x0c                                      // 0x007d8064    83c40c
                         test               eax, eax                                       // 0x007d8067    85c0
                         {disp8} jne        _jmp_addr_0x007d808b                           // 0x007d8069    7520
                         push               eax                                            // 0x007d806b    50
_jmp_addr_0x007d806c:    push               esi                                            // 0x007d806c    56
                         call               _jmp_addr_0x007d81f9                           // 0x007d806d    e887010000
                         pop                ecx                                            // 0x007d8072    59
                         test               eax, eax                                       // 0x007d8073    85c0
                         pop                ecx                                            // 0x007d8075    59
                         {disp8} je         _jmp_addr_0x007d808b                           // 0x007d8076    7413
_jmp_addr_0x007d8078:    or                 dword ptr [0xe84540], 4                        // 0x007d8078    830d4045e80004
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], esi         // 0x007d807f    89354445e800
                         {disp32} mov       dword ptr [data_bytes + 0x4be528], esi         // 0x007d8085    89352845e800
_jmp_addr_0x007d808b:    {disp32} mov       eax, dword ptr [data_bytes + 0x4be540]         // 0x007d808b    a14045e800
                         not                eax                                            // 0x007d8090    f7d0
                         shr                eax, 2                                         // 0x007d8092    c1e802
                         and                eax, 0x01                                      // 0x007d8095    83e001
_jmp_addr_0x007d8098:    pop                esi                                            // 0x007d8098    5e
                         leave                                                             // 0x007d8099    c9
                         ret                0x0004                                         // 0x007d809a    c20400
_jmp_addr_0x007d809d:    push               dword ptr [data_bytes + 0x4be53c]              // 0x007d809d    ff353c45e800
                         call               _strlen                                        // 0x007d80a3    e84825ffff
                         sub                eax, 0x03                                      // 0x007d80a8    83e803
                         pop                ecx                                            // 0x007d80ab    59
                         neg                eax                                            // 0x007d80ac    f7d8
                         sbb.s              eax, eax                                       // 0x007d80ae    1bc0
                         push               0x1                                            // 0x007d80b0    6a01
                         inc                eax                                            // 0x007d80b2    40
                         push               0x007d80d4                                     // 0x007d80b3    68d4807d00
                         {disp32} mov       dword ptr [data_bytes + 0x4be52c], eax         // 0x007d80b8    a32c45e800
                         call               dword ptr [__imp__EnumSystemLocalesA@4]        // 0x007d80bd    ff157c928a00
                         test               byte ptr [data_bytes + 0x4be540], 0x04         // 0x007d80c3    f6054045e80004
                         {disp8} jne        _jmp_addr_0x007d80d3                           // 0x007d80ca    7507
                         and                dword ptr [data_bytes + 0x4be540], 0x00        // 0x007d80cc    83254045e80000
_jmp_addr_0x007d80d3:    ret                                                               // 0x007d80d3    c3
                         push               ebp                                            // 0x007d80d4    55
                         mov.s              ebp, esp                                       // 0x007d80d5    8bec
                         sub                esp, 0x78                                      // 0x007d80d7    83ec78
                         push               esi                                            // 0x007d80da    56
                         push               dword ptr [ebp + 0x08]                         // 0x007d80db    ff7508
                         call               _jmp_addr_0x007d8377                           // 0x007d80de    e894020000
                         pop                ecx                                            // 0x007d80e3    59
                         mov.s              esi, eax                                       // 0x007d80e4    8bf0
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d80e6    8d4588
                         push               0x78                                           // 0x007d80e9    6a78
                         push               eax                                            // 0x007d80eb    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be52c]         // 0x007d80ec    a12c45e800
                         neg                eax                                            // 0x007d80f1    f7d8
                         sbb.s              eax, eax                                       // 0x007d80f3    1bc0
                         and                ax, -0x0ffb                                    // 0x007d80f5    662505f0
                         add                eax, 0x00001002                                // 0x007d80f9    0502100000
                         push               eax                                            // 0x007d80fe    50
                         push               esi                                            // 0x007d80ff    56
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d8100    ff154845e800
                         test               eax, eax                                       // 0x007d8106    85c0
                         {disp8} jne        _jmp_addr_0x007d8115                           // 0x007d8108    750b
                         and                dword ptr [data_bytes + 0x4be540], eax         // 0x007d810a    21054045e800
                         push               0x1                                            // 0x007d8110    6a01
                         pop                eax                                            // 0x007d8112    58
                         {disp8} jmp        _jmp_addr_0x007d8155                           // 0x007d8113    eb40
_jmp_addr_0x007d8115:    {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d8115    8d4588
                         push               eax                                            // 0x007d8118    50
                         push               dword ptr [data_bytes + 0x4be53c]              // 0x007d8119    ff353c45e800
                         call               __strcmpi                                      // 0x007d811f    e8bcebfeff
                         pop                ecx                                            // 0x007d8124    59
                         test               eax, eax                                       // 0x007d8125    85c0
                         pop                ecx                                            // 0x007d8127    59
                         {disp8} jne        _jmp_addr_0x007d8148                           // 0x007d8128    751e
                         push               esi                                            // 0x007d812a    56
                         call               _jmp_addr_0x007d81da                           // 0x007d812b    e8aa000000
                         test               eax, eax                                       // 0x007d8130    85c0
                         pop                ecx                                            // 0x007d8132    59
                         {disp8} je         _jmp_addr_0x007d8148                           // 0x007d8133    7413
                         or                 dword ptr [0xe84540], 4                        // 0x007d8135    830d4045e80004
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], esi         // 0x007d813c    89354445e800
                         {disp32} mov       dword ptr [data_bytes + 0x4be528], esi         // 0x007d8142    89352845e800
_jmp_addr_0x007d8148:    {disp32} mov       eax, dword ptr [data_bytes + 0x4be540]         // 0x007d8148    a14045e800
                         not                eax                                            // 0x007d814d    f7d0
                         shr                eax, 2                                         // 0x007d814f    c1e802
                         and                eax, 0x01                                      // 0x007d8152    83e001
_jmp_addr_0x007d8155:    pop                esi                                            // 0x007d8155    5e
                         leave                                                             // 0x007d8156    c9
                         ret                0x0004                                         // 0x007d8157    c20400
_jmp_addr_0x007d815a:    or                 word ptr [0xe84540], 0x104                     // 0x007d815a    66810d4045e8000401
                         call               dword ptr [__imp__GetUserDefaultLCID@4]        // 0x007d8163    ff1578928a00
                         {disp32} mov       dword ptr [data_bytes + 0x4be544], eax         // 0x007d8169    a34445e800
                         {disp32} mov       dword ptr [data_bytes + 0x4be528], eax         // 0x007d816e    a32845e800
                         ret                                                               // 0x007d8173    c3
_jmp_addr_0x007d8174:    push               ebp                                            // 0x007d8174    55
                         mov.s              ebp, esp                                       // 0x007d8175    8bec
                         push               ecx                                            // 0x007d8177    51
                         push               ecx                                            // 0x007d8178    51
                         push               esi                                            // 0x007d8179    56
                         {disp8} mov        esi, dword ptr [ebp + 0x08]                    // 0x007d817a    8b7508
                         test               esi, esi                                       // 0x007d817d    85f6
                         {disp8} je         _jmp_addr_0x007d81b2                           // 0x007d817f    7431
                         cmp                byte ptr [esi], 0x00                           // 0x007d8181    803e00
                         {disp8} je         _jmp_addr_0x007d81b2                           // 0x007d8184    742c
                         push               0x009a1574                                     // 0x007d8186    6874159a00
                         push               esi                                            // 0x007d818b    56
                         call               _strcmp                                        // 0x007d818c    e87f4cffff
                         pop                ecx                                            // 0x007d8191    59
                         test               eax, eax                                       // 0x007d8192    85c0
                         pop                ecx                                            // 0x007d8194    59
                         {disp8} je         _jmp_addr_0x007d81b2                           // 0x007d8195    741b
                         push               0x009a1570                                     // 0x007d8197    6870159a00
                         push               esi                                            // 0x007d819c    56
                         call               _strcmp                                        // 0x007d819d    e86e4cffff
                         pop                ecx                                            // 0x007d81a2    59
                         test               eax, eax                                       // 0x007d81a3    85c0
                         pop                ecx                                            // 0x007d81a5    59
                         {disp8} jne        _jmp_addr_0x007d81d0                           // 0x007d81a6    7528
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                   // 0x007d81a8    8d45f8
                         push               0x8                                            // 0x007d81ab    6a08
                         push               eax                                            // 0x007d81ad    50
                         push               0xb                                            // 0x007d81ae    6a0b
                         {disp8} jmp        _jmp_addr_0x007d81bd                           // 0x007d81b0    eb0b
_jmp_addr_0x007d81b2:    {disp8} lea        eax, dword ptr [ebp + -0x08]                   // 0x007d81b2    8d45f8
                         push               0x8                                            // 0x007d81b5    6a08
                         push               eax                                            // 0x007d81b7    50
                         push               0x00001004                                     // 0x007d81b8    6804100000
_jmp_addr_0x007d81bd:    push               dword ptr [data_bytes + 0x4be544]              // 0x007d81bd    ff354445e800
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d81c3    ff154845e800
                         test               eax, eax                                       // 0x007d81c9    85c0
                         {disp8} je         _jmp_addr_0x007d81d7                           // 0x007d81cb    740a
                         {disp8} lea        esi, dword ptr [ebp + -0x08]                   // 0x007d81cd    8d75f8
_jmp_addr_0x007d81d0:    push               esi                                            // 0x007d81d0    56
                         call               _atol                                          // 0x007d81d1    e826e3feff
                         pop                ecx                                            // 0x007d81d6    59
_jmp_addr_0x007d81d7:    pop                esi                                            // 0x007d81d7    5e
                         leave                                                             // 0x007d81d8    c9
                         ret                                                               // 0x007d81d9    c3
_jmp_addr_0x007d81da:    mov                eax, 0x00c30934                                // 0x007d81da    b83409c300
_jmp_addr_0x007d81df:    {disp8} mov        cx, word ptr [esp + 0x04]                      // 0x007d81df    668b4c2404
                         cmp                cx, word ptr [eax]                             // 0x007d81e4    663b08
                         {disp8} je         _jmp_addr_0x007d81f6                           // 0x007d81e7    740d
                         inc                eax                                            // 0x007d81e9    40
                         inc                eax                                            // 0x007d81ea    40
                         cmp                eax, 0x00c30948                                // 0x007d81eb    3d4809c300
                         {disp8} jl         _jmp_addr_0x007d81df                           // 0x007d81f0    7ced
                         push               0x1                                            // 0x007d81f2    6a01
                         pop                eax                                            // 0x007d81f4    58
                         ret                                                               // 0x007d81f5    c3
_jmp_addr_0x007d81f6:    xor.s              eax, eax                                       // 0x007d81f6    33c0
                         ret                                                               // 0x007d81f8    c3
_jmp_addr_0x007d81f9:    push               ebp                                            // 0x007d81f9    55
                         mov.s              ebp, esp                                       // 0x007d81fa    8bec
                         sub                esp, 0x78                                      // 0x007d81fc    83ec78
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d81ff    8d4588
                         push               0x78                                           // 0x007d8202    6a78
                         push               eax                                            // 0x007d8204    50
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8205    8b4508
                         and                eax, 0x000003ff                                // 0x007d8208    25ff030000
                         push               0x1                                            // 0x007d820d    6a01
                         or                 ah, 4                                          // 0x007d820f    80cc04
                         push               eax                                            // 0x007d8212    50
                         call               dword ptr [data_bytes + 0x4be548]              // 0x007d8213    ff154845e800
                         test               eax, eax                                       // 0x007d8219    85c0
                         {disp8} je         _jmp_addr_0x007d8252                           // 0x007d821b    7435
                         {disp8} lea        eax, dword ptr [ebp + -0x78]                   // 0x007d821d    8d4588
                         push               eax                                            // 0x007d8220    50
                         call               _jmp_addr_0x007d8377                           // 0x007d8221    e851010000
                         cmp                dword ptr [ebp + 0x08], eax                    // 0x007d8226    394508
                         pop                ecx                                            // 0x007d8229    59
                         {disp8} je         _jmp_addr_0x007d8256                           // 0x007d822a    742a
                         cmp                dword ptr [ebp + 0x0c], 0x00                   // 0x007d822c    837d0c00
                         {disp8} je         _jmp_addr_0x007d8256                           // 0x007d8230    7424
                         push               esi                                            // 0x007d8232    56
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d8233    ff353845e800
                         call               _jmp_addr_0x007d83b0                           // 0x007d8239    e872010000
                         push               dword ptr [data_bytes + 0x4be538]              // 0x007d823e    ff353845e800
                         mov.s              esi, eax                                       // 0x007d8244    8bf0
                         call               _strlen                                        // 0x007d8246    e8a523ffff
                         pop                ecx                                            // 0x007d824b    59
                         cmp.s              esi, eax                                       // 0x007d824c    3bf0
                         pop                ecx                                            // 0x007d824e    59
                         pop                esi                                            // 0x007d824f    5e
                         {disp8} jne        _jmp_addr_0x007d8256                           // 0x007d8250    7504
_jmp_addr_0x007d8252:    xor.s              eax, eax                                       // 0x007d8252    33c0
                         leave                                                             // 0x007d8254    c9
                         ret                                                               // 0x007d8255    c3
_jmp_addr_0x007d8256:    push               0x1                                            // 0x007d8256    6a01
                         pop                eax                                            // 0x007d8258    58
                         leave                                                             // 0x007d8259    c9
                         ret                                                               // 0x007d825a    c3
_jmp_addr_0x007d825b:    push               ebp                                            // 0x007d825b    55
                         mov.s              ebp, esp                                       // 0x007d825c    8bec
                         sub                esp, 0x00000094                                // 0x007d825e    81ec94000000
                         {disp32} lea       eax, dword ptr [ebp + -0x00000094]             // 0x007d8264    8d856cffffff
                         {disp32} mov       dword ptr [ebp + -0x00000094], 0x00000094      // 0x007d826a    c7856cffffff94000000
                         push               eax                                            // 0x007d8274    50
                         call               dword ptr [__imp__GetVersionExA@4]             // 0x007d8275    ff15bc918a00
                         test               eax, eax                                       // 0x007d827b    85c0
                         {disp8} je         _jmp_addr_0x007d828d                           // 0x007d827d    740e
                         cmp                dword ptr [ebp + -0x00000084], 0x02            // 0x007d827f    83bd7cffffff02
                         {disp8} jne        _jmp_addr_0x007d828d                           // 0x007d8286    7505
                         push               0x1                                            // 0x007d8288    6a01
                         pop                eax                                            // 0x007d828a    58
                         leave                                                             // 0x007d828b    c9
                         ret                                                               // 0x007d828c    c3
_jmp_addr_0x007d828d:    xor.s              eax, eax                                       // 0x007d828d    33c0
                         leave                                                             // 0x007d828f    c9
                         ret                                                               // 0x007d8290    c3
                         push               ebp                                            // 0x007d8291    55
                         mov.s              ebp, esp                                       // 0x007d8292    8bec
                         push               ebx                                            // 0x007d8294    53
                         push               esi                                            // 0x007d8295    56
                         push               edi                                            // 0x007d8296    57
                         push               0x1a                                           // 0x007d8297    6a1a
                         xor.s              esi, esi                                       // 0x007d8299    33f6
                         pop                edi                                            // 0x007d829b    5f
_jmp_addr_0x007d829c:    lea                eax, dword ptr [edi + esi * 0x1]               // 0x007d829c    8d0437
                         {disp8} mov        ebx, dword ptr [ebp + 0x14]                    // 0x007d829f    8b5d14
                         cdq                                                               // 0x007d82a2    99
                         sub.s              eax, edx                                       // 0x007d82a3    2bc2
                         sar                eax, 1                                         // 0x007d82a5    d1f8
                         mov.s              ecx, eax                                       // 0x007d82a7    8bc8
                         imul               ecx, ecx, 0x2c                                 // 0x007d82a9    6bc92c
                         {disp32} mov       ecx, dword ptr [ecx + 0x00c30490]              // 0x007d82ac    8b899004c300
                         cmp                dword ptr [ebp + 0x08], ecx                    // 0x007d82b2    394d08
                         {disp8} je         _jmp_addr_0x007d82df                           // 0x007d82b5    7428
                         cmp                dword ptr [ebp + 0x08], ecx                    // 0x007d82b7    394d08
                         {disp8} jae        _jmp_addr_0x007d82c1                           // 0x007d82ba    7305
                         {disp8} lea        edi, dword ptr [eax + -0x01]                   // 0x007d82bc    8d78ff
                         {disp8} jmp        _jmp_addr_0x007d82c4                           // 0x007d82bf    eb03
_jmp_addr_0x007d82c1:    {disp8} lea        esi, dword ptr [eax + 0x01]                    // 0x007d82c1    8d7001
_jmp_addr_0x007d82c4:    cmp.s              esi, edi                                       // 0x007d82c4    3bf7
                         {disp8} jle        _jmp_addr_0x007d829c                           // 0x007d82c6    7ed4
_jmp_addr_0x007d82c8:    push               ebx                                            // 0x007d82c8    53
                         push               dword ptr [ebp + 0x10]                         // 0x007d82c9    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d82cc    ff750c
                         push               dword ptr [ebp + 0x08]                         // 0x007d82cf    ff7508
                         call               dword ptr [__imp__GetLocaleInfoA@4]            // 0x007d82d2    ff1580928a00
_jmp_addr_0x007d82d8:    pop                edi                                            // 0x007d82d8    5f
                         pop                esi                                            // 0x007d82d9    5e
                         pop                ebx                                            // 0x007d82da    5b
                         pop                ebp                                            // 0x007d82db    5d
                         ret                0x0010                                         // 0x007d82dc    c21000
_jmp_addr_0x007d82df:    {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007d82df    8b4d0c
                         dec                ecx                                            // 0x007d82e2    49
                         {disp8} je         _jmp_addr_0x007d8340                           // 0x007d82e3    745b
                         dec                ecx                                            // 0x007d82e5    49
                         dec                ecx                                            // 0x007d82e6    49
                         {disp8} je         _jmp_addr_0x007d8336                           // 0x007d82e7    744d
                         sub                ecx, 0x04                                      // 0x007d82e9    83e904
                         {disp8} je         _jmp_addr_0x007d832c                           // 0x007d82ec    743e
                         sub                ecx, 0x04                                      // 0x007d82ee    83e904
                         {disp8} je         _jmp_addr_0x007d8322                           // 0x007d82f1    742f
                         sub                ecx, 0x00000ff6                                // 0x007d82f3    81e9f60f0000
                         {disp8} je         _jmp_addr_0x007d8317                           // 0x007d82f9    741c
                         dec                ecx                                            // 0x007d82fb    49
                         {disp8} je         _jmp_addr_0x007d830c                           // 0x007d82fc    740e
                         dec                ecx                                            // 0x007d82fe    49
                         dec                ecx                                            // 0x007d82ff    49
                         {disp8} jne        _jmp_addr_0x007d82c8                           // 0x007d8300    75c6
                         imul               eax, eax, 0x2c                                 // 0x007d8302    6bc02c
                         add                eax, 0x00c304b4                                // 0x007d8305    05b404c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d830a    eb3c
_jmp_addr_0x007d830c:    imul               eax, eax, 0x2c                                 // 0x007d830c    6bc02c
                         {disp32} mov       eax, dword ptr [eax + 0x00c304a4]              // 0x007d830f    8b80a404c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d8315    eb31
_jmp_addr_0x007d8317:    imul               eax, eax, 0x2c                                 // 0x007d8317    6bc02c
                         {disp32} mov       eax, dword ptr [eax + 0x00c3049c]              // 0x007d831a    8b809c04c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d8320    eb26
_jmp_addr_0x007d8322:    imul               eax, eax, 0x2c                                 // 0x007d8322    6bc02c
                         add                eax, 0x00c304ac                                // 0x007d8325    05ac04c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d832a    eb1c
_jmp_addr_0x007d832c:    imul               eax, eax, 0x2c                                 // 0x007d832c    6bc02c
                         add                eax, 0x00c304a8                                // 0x007d832f    05a804c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d8334    eb12
_jmp_addr_0x007d8336:    imul               eax, eax, 0x2c                                 // 0x007d8336    6bc02c
                         add                eax, 0x00c304a0                                // 0x007d8339    05a004c300
                         {disp8} jmp        _jmp_addr_0x007d8348                           // 0x007d833e    eb08
_jmp_addr_0x007d8340:    imul               eax, eax, 0x2c                                 // 0x007d8340    6bc02c
                         add                eax, 0x00c30494                                // 0x007d8343    059404c300
_jmp_addr_0x007d8348:    test               eax, eax                                       // 0x007d8348    85c0
                         {disp32} je        _jmp_addr_0x007d82c8                           // 0x007d834a    0f8478ffffff
                         cmp                ebx, 0x01                                      // 0x007d8350    83fb01
                         {disp32} jl        _jmp_addr_0x007d82c8                           // 0x007d8353    0f8c6fffffff
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                    // 0x007d8359    8b7510
                         {disp8} lea        ecx, dword ptr [ebx + -0x01]                   // 0x007d835c    8d4bff
                         push               ecx                                            // 0x007d835f    51
                         push               eax                                            // 0x007d8360    50
                         push               esi                                            // 0x007d8361    56
                         call               _strncpy                                       // 0x007d8362    e8390dffff
                         add                esp, 0x0c                                      // 0x007d8367    83c40c
                         and                byte ptr [esi + ebx * 0x1 + -0x01], 0x00       // 0x007d836a    80641eff00
                         push               0x1                                            // 0x007d836f    6a01
                         pop                eax                                            // 0x007d8371    58
                         {disp32} jmp       _jmp_addr_0x007d82d8                           // 0x007d8372    e961ffffff
_jmp_addr_0x007d8377:    {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x007d8377    8b542404
                         xor.s              eax, eax                                       // 0x007d837b    33c0
_jmp_addr_0x007d837d:    mov                cl, byte ptr [edx]                             // 0x007d837d    8a0a
                         inc                edx                                            // 0x007d837f    42
                         test               cl, cl                                         // 0x007d8380    84c9
                         {disp8} je         _jmp_addr_0x007d83af                           // 0x007d8382    742b
                         cmp                cl, 0x61                                       // 0x007d8384    80f961
                         {disp8} jl         _jmp_addr_0x007d8393                           // 0x007d8387    7c0a
                         cmp                cl, 0x66                                       // 0x007d8389    80f966
                         {disp8} jg         _jmp_addr_0x007d8393                           // 0x007d838c    7f05
                         add                cl, -0x27                                      // 0x007d838e    80c1d9
                         {disp8} jmp        _jmp_addr_0x007d83a0                           // 0x007d8391    eb0d
_jmp_addr_0x007d8393:    cmp                cl, 0x41                                       // 0x007d8393    80f941
                         {disp8} jl         _jmp_addr_0x007d83a0                           // 0x007d8396    7c08
                         cmp                cl, 0x46                                       // 0x007d8398    80f946
                         {disp8} jg         _jmp_addr_0x007d83a0                           // 0x007d839b    7f03
                         add                cl, -0x07                                      // 0x007d839d    80c1f9
_jmp_addr_0x007d83a0:    add                eax, 0x0ffffffd                                // 0x007d83a0    05fdffff0f
                         movsx              ecx, cl                                        // 0x007d83a5    0fbec9
                         shl                eax, 4                                         // 0x007d83a8    c1e004
                         add.s              eax, ecx                                       // 0x007d83ab    03c1
                         {disp8} jmp        _jmp_addr_0x007d837d                           // 0x007d83ad    ebce
_jmp_addr_0x007d83af:    ret                                                               // 0x007d83af    c3
_jmp_addr_0x007d83b0:    {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x007d83b0    8b542404
                         xor.s              eax, eax                                       // 0x007d83b4    33c0
_jmp_addr_0x007d83b6:    mov                cl, byte ptr [edx]                             // 0x007d83b6    8a0a
                         inc                edx                                            // 0x007d83b8    42
                         cmp                cl, 0x41                                       // 0x007d83b9    80f941
                         {disp8} jl         _jmp_addr_0x007d83c3                           // 0x007d83bc    7c05
                         cmp                cl, 0x5a                                       // 0x007d83be    80f95a
                         {disp8} jle        _jmp_addr_0x007d83cd                           // 0x007d83c1    7e0a
_jmp_addr_0x007d83c3:    cmp                cl, 0x61                                       // 0x007d83c3    80f961
                         {disp8} jl         _jmp_addr_0x007d83d0                           // 0x007d83c6    7c08
                         cmp                cl, 0x7a                                       // 0x007d83c8    80f97a
                         {disp8} jg         _jmp_addr_0x007d83d0                           // 0x007d83cb    7f03
_jmp_addr_0x007d83cd:    inc                eax                                            // 0x007d83cd    40
                         {disp8} jmp        _jmp_addr_0x007d83b6                           // 0x007d83ce    ebe6
_jmp_addr_0x007d83d0:    ret                                                               // 0x007d83d0    c3
__fcloseall:             push               ebx                                            // 0x007d83d1    53
                         push               edi                                            // 0x007d83d2    57
                         push               0x2                                            // 0x007d83d3    6a02
                         xor.s              ebx, ebx                                       // 0x007d83d5    33db
                         call               __lock                                          // 0x007d83d7    e8da32ffff
                         pop                ecx                                            // 0x007d83dc    59
                         push               0x3                                            // 0x007d83dd    6a03
                         pop                edi                                            // 0x007d83df    5f
                         cmp                dword ptr [__nstream]            , edi         // 0x007d83e0    393dc0dcfa00
                         {disp8} jle        _jmp_addr_0x007d8445                           // 0x007d83e6    7e5d
                         push               esi                                            // 0x007d83e8    56
_jmp_addr_0x007d83e9:    {disp32} mov       eax, dword ptr [___piob]                       // 0x007d83e9    a1b8ccfa00
                         mov.s              esi, edi                                       // 0x007d83ee    8bf7
                         shl                esi, 2                                         // 0x007d83f0    c1e602
                         mov                eax, dword ptr [esi + eax * 0x1]               // 0x007d83f3    8b0406
                         test               eax, eax                                       // 0x007d83f6    85c0
                         {disp8} je         _jmp_addr_0x007d843b                           // 0x007d83f8    7441
                         test               byte ptr [eax + 0x0c], -0x7d                   // 0x007d83fa    f6400c83
                         {disp8} je         _jmp_addr_0x007d840d                           // 0x007d83fe    740d
                         push               eax                                            // 0x007d8400    50
                         call               _fclose                                        // 0x007d8401    e82aeafeff
                         cmp                eax, -0x01                                     // 0x007d8406    83f8ff
                         pop                ecx                                            // 0x007d8409    59
                         {disp8} je         _jmp_addr_0x007d840d                           // 0x007d840a    7401
                         inc                ebx                                            // 0x007d840c    43
_jmp_addr_0x007d840d:    cmp                edi, 0x14                                      // 0x007d840d    83ff14
                         {disp8} jl         _jmp_addr_0x007d843b                           // 0x007d8410    7c29
                         {disp32} mov       eax, dword ptr [___piob]                       // 0x007d8412    a1b8ccfa00
                         mov                eax, dword ptr [esi + eax * 0x1]               // 0x007d8417    8b0406
                         add                eax, 0x20                                      // 0x007d841a    83c020
                         push               eax                                            // 0x007d841d    50
                         call               dword ptr [__imp__DeleteCriticalSection@4]     // 0x007d841e    ff1578918a00
                         {disp32} mov       eax, dword ptr [___piob]                       // 0x007d8424    a1b8ccfa00
                         push               dword ptr [esi + eax * 0x1]                    // 0x007d8429    ff3406
                         call               _free                                          // 0x007d842c    e855e3feff
                         {disp32} mov       eax, dword ptr [___piob]                       // 0x007d8431    a1b8ccfa00
                         pop                ecx                                            // 0x007d8436    59
                         and                dword ptr [esi + eax * 0x1], 0x00              // 0x007d8437    83240600
_jmp_addr_0x007d843b:    inc                edi                                            // 0x007d843b    47
                         cmp                edi, dword ptr [__nstream]                     // 0x007d843c    3b3dc0dcfa00
                         {disp8} jl         _jmp_addr_0x007d83e9                           // 0x007d8442    7ca5
                         pop                esi                                            // 0x007d8444    5e
_jmp_addr_0x007d8445:    push               0x2                                            // 0x007d8445    6a02
                         call               __unlock                                       // 0x007d8447    e8cb32ffff
                         pop                ecx                                            // 0x007d844c    59
                         mov.s              eax, ebx                                       // 0x007d844d    8bc3
                         pop                edi                                            // 0x007d844f    5f
                         pop                ebx                                            // 0x007d8450    5b
                         ret                                                               // 0x007d8451    c3
__flswbuf:               push               ebp                                            // 0x007d8452    55
                         mov.s              ebp, esp                                       // 0x007d8453    8bec
                         push               ecx                                            // 0x007d8455    51
                         push               ebx                                            // 0x007d8456    53
                         push               esi                                            // 0x007d8457    56
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007d8458    8b750c
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x007d845b    8b460c
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                    // 0x007d845e    8b4e10
                         test               al, -0x7e                                      // 0x007d8461    a882
                         {disp8} mov        dword ptr [ebp + -0x04], ecx                   // 0x007d8463    894dfc
                         {disp32} je        _jmp_addr_0x007d856b                           // 0x007d8466    0f84ff000000
                         test               al, 0x40                                       // 0x007d846c    a840
                         {disp32} jne       _jmp_addr_0x007d856b                           // 0x007d846e    0f85f7000000
                         xor.s              ebx, ebx                                       // 0x007d8474    33db
                         test               al, 0x01                                       // 0x007d8476    a801
                         {disp8} je         _jmp_addr_0x007d848f                           // 0x007d8478    7415
                         test               al, 0x10                                       // 0x007d847a    a810
                         {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x007d847c    895e04
                         {disp32} je        _jmp_addr_0x007d856b                           // 0x007d847f    0f84e6000000
                         {disp8} mov        edx, dword ptr [esi + 0x08]                    // 0x007d8485    8b5608
                         and                al, -0x02                                      // 0x007d8488    24fe
                         mov                dword ptr [esi], edx                           // 0x007d848a    8916
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007d848c    89460c
_jmp_addr_0x007d848f:    {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x007d848f    8b460c
                         {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x007d8492    895e04
                         and                al, -0x11                                      // 0x007d8495    24ef
                         {disp8} mov        dword ptr [ebp + 0x0c], ebx                    // 0x007d8497    895d0c
                         or                 al, 2                                          // 0x007d849a    0c02
                         test               ax, 0x010c                                     // 0x007d849c    66a90c01
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007d84a0    89460c
                         {disp8} jne        _jmp_addr_0x007d84ca                           // 0x007d84a3    7525
                         cmp                esi, 0x00c2d800                                // 0x007d84a5    81fe00d8c200
                         {disp8} je         _jmp_addr_0x007d84b5                           // 0x007d84ab    7408
                         cmp                esi, 0x00c2d820                                // 0x007d84ad    81fe20d8c200
                         {disp8} jne        _jmp_addr_0x007d84c0                           // 0x007d84b3    750b
_jmp_addr_0x007d84b5:    push               ecx                                            // 0x007d84b5    51
                         call               __isatty                                       // 0x007d84b6    e8ff0a0000
                         test               eax, eax                                       // 0x007d84bb    85c0
                         pop                ecx                                            // 0x007d84bd    59
                         {disp8} jne        _jmp_addr_0x007d84c7                           // 0x007d84be    7507
_jmp_addr_0x007d84c0:    push               esi                                            // 0x007d84c0    56
                         call               __getbuf                                            // 0x007d84c1    e89ae0ffff
                         pop                ecx                                            // 0x007d84c6    59
_jmp_addr_0x007d84c7:    {disp8} mov        ecx, dword ptr [ebp + -0x04]                   // 0x007d84c7    8b4dfc
_jmp_addr_0x007d84ca:    test               word ptr [esi + 0x0c], 0x0108                  // 0x007d84ca    66f7460c0801
                         push               edi                                            // 0x007d84d0    57
                         {disp8} je         _jmp_addr_0x007d853b                           // 0x007d84d1    7468
                         {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x007d84d3    8b4608
                         mov                edi, dword ptr [esi]                           // 0x007d84d6    8b3e
                         sub.s              edi, eax                                       // 0x007d84d8    2bf8
                         {disp8} lea        edx, dword ptr [eax + 0x02]                    // 0x007d84da    8d5002
                         mov                dword ptr [esi], edx                           // 0x007d84dd    8916
                         {disp8} mov        edx, dword ptr [esi + 0x18]                    // 0x007d84df    8b5618
                         dec                edx                                            // 0x007d84e2    4a
                         dec                edx                                            // 0x007d84e3    4a
                         cmp.s              edi, ebx                                       // 0x007d84e4    3bfb
                         {disp8} mov        dword ptr [esi + 0x04], edx                    // 0x007d84e6    895604
                         {disp8} jle        _jmp_addr_0x007d84fb                           // 0x007d84e9    7e10
                         push               edi                                            // 0x007d84eb    57
                         push               eax                                            // 0x007d84ec    50
                         push               ecx                                            // 0x007d84ed    51
                         call               __write                                        // 0x007d84ee    e8c39bffff
                         add                esp, 0x0c                                      // 0x007d84f3    83c40c
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d84f6    89450c
                         {disp8} jmp        _jmp_addr_0x007d8530                           // 0x007d84f9    eb35
_jmp_addr_0x007d84fb:    cmp                ecx, -0x01                                     // 0x007d84fb    83f9ff
                         {disp8} je         _jmp_addr_0x007d8519                           // 0x007d84fe    7419
                         mov.s              edx, ecx                                       // 0x007d8500    8bd1
                         mov.s              eax, ecx                                       // 0x007d8502    8bc1
                         sar                edx, 5                                         // 0x007d8504    c1fa05
                         and                eax, 0x1f                                      // 0x007d8507    83e01f
                         {disp32} mov       edx, dword ptr [edx * 0x4 + ___pioinfo]        // 0x007d850a    8b149560c9fa00
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007d8511    8d04c0
                         lea                eax, dword ptr [edx + eax * 0x4]               // 0x007d8514    8d0482
                         {disp8} jmp        _jmp_addr_0x007d851e                           // 0x007d8517    eb05
_jmp_addr_0x007d8519:    mov                eax, OFFSET ___badioinfo                       // 0x007d8519    b83003c300
_jmp_addr_0x007d851e:    test               byte ptr [eax + 0x04], 0x20                    // 0x007d851e    f6400420
                         {disp8} je         _jmp_addr_0x007d8530                           // 0x007d8522    740c
                         push               0x2                                            // 0x007d8524    6a02
                         push               ebx                                            // 0x007d8526    53
                         push               ecx                                            // 0x007d8527    51
                         call               __lseek                                        // 0x007d8528    e84cc8ffff
                         add                esp, 0x0c                                      // 0x007d852d    83c40c
_jmp_addr_0x007d8530:    {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x007d8530    8b4608
                         {disp8} mov        ebx, dword ptr [ebp + 0x08]                    // 0x007d8533    8b5d08
                         mov                word ptr [eax], bx                             // 0x007d8536    668918
                         {disp8} jmp        _jmp_addr_0x007d8556                           // 0x007d8539    eb1b
_jmp_addr_0x007d853b:    {disp8} mov        ebx, dword ptr [ebp + 0x08]                    // 0x007d853b    8b5d08
                         push               0x2                                            // 0x007d853e    6a02
                         pop                edi                                            // 0x007d8540    5f
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                    // 0x007d8541    8d4508
                         push               edi                                            // 0x007d8544    57
                         push               eax                                            // 0x007d8545    50
                         push               ecx                                            // 0x007d8546    51
                         {disp8} mov        word ptr [ebp + 0x08], bx                      // 0x007d8547    66895d08
                         call               __write                                        // 0x007d854b    e8669bffff
                         add                esp, 0x0c                                      // 0x007d8550    83c40c
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d8553    89450c
_jmp_addr_0x007d8556:    cmp                dword ptr [ebp + 0x0c], edi                    // 0x007d8556    397d0c
                         pop                edi                                            // 0x007d8559    5f
                         {disp8} je         _jmp_addr_0x007d8562                           // 0x007d855a    7406
                         or                 dword ptr [esi + 0xc], 0x20                    // 0x007d855c    834e0c20
                         {disp8} jmp        _jmp_addr_0x007d8570                           // 0x007d8560    eb0e
_jmp_addr_0x007d8562:    mov.s              eax, ebx                                       // 0x007d8562    8bc3
                         and                eax, 0x0000ffff                                // 0x007d8564    25ffff0000
                         {disp8} jmp        _jmp_addr_0x007d8575                           // 0x007d8569    eb0a
_jmp_addr_0x007d856b:    or                 al, 0x20                                       // 0x007d856b    0c20
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007d856d    89460c
_jmp_addr_0x007d8570:    mov                eax, 0x0000ffff                                // 0x007d8570    b8ffff0000
_jmp_addr_0x007d8575:    pop                esi                                            // 0x007d8575    5e
                         pop                ebx                                            // 0x007d8576    5b
                         leave                                                             // 0x007d8577    c9
                         ret                                                               // 0x007d8578    c3
_wctomb:                 push               ebp                                            // 0x007d8579    55
                         mov.s              ebp, esp                                       // 0x007d857a    8bec
                         push               ebx                                            // 0x007d857c    53
                         push               esi                                            // 0x007d857d    56
                         mov                esi, 0x00fadcc8                                // 0x007d857e    bec8dcfa00
                         push               edi                                            // 0x007d8583    57
                         push               esi                                            // 0x007d8584    56
                         call               dword ptr [__imp__InterlockedIncrement@4]      // 0x007d8585    ff1510938a00
                         {disp32} mov       edi, dword ptr [__imp__InterlockedDecrement@4] // 0x007d858b    8b3d14938a00
                         xor.s              ebx, ebx                                       // 0x007d8591    33db
                         cmp                dword ptr [data_bytes + 0x5e7cc4], ebx         // 0x007d8593    391dc4dcfa00
                         {disp8} je         _jmp_addr_0x007d85a9                           // 0x007d8599    740e
                         push               esi                                            // 0x007d859b    56
                         call               edi                                            // 0x007d859c    ffd7
                         push               0x13                                           // 0x007d859e    6a13
                         call               __lock                                          // 0x007d85a0    e81131ffff
                         pop                ecx                                            // 0x007d85a5    59
                         push               0x1                                            // 0x007d85a6    6a01
                         pop                ebx                                            // 0x007d85a8    5b
_jmp_addr_0x007d85a9:    push               dword ptr [ebp + 0x0c]                         // 0x007d85a9    ff750c
                         push               dword ptr [ebp + 0x08]                         // 0x007d85ac    ff7508
                         call               _jmp_addr_0x007d85d2                           // 0x007d85af    e81e000000
                         pop                ecx                                            // 0x007d85b4    59
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d85b5    89450c
                         test               ebx, ebx                                       // 0x007d85b8    85db
                         pop                ecx                                            // 0x007d85ba    59
                         {disp8} je         _jmp_addr_0x007d85c7                           // 0x007d85bb    740a
                         push               0x13                                           // 0x007d85bd    6a13
                         call               __unlock                                       // 0x007d85bf    e85331ffff
                         pop                ecx                                            // 0x007d85c4    59
                         {disp8} jmp        _jmp_addr_0x007d85ca                           // 0x007d85c5    eb03
_jmp_addr_0x007d85c7:    push               esi                                            // 0x007d85c7    56
                         call               edi                                            // 0x007d85c8    ffd7
_jmp_addr_0x007d85ca:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d85ca    8b450c
                         pop                edi                                            // 0x007d85cd    5f
                         pop                esi                                            // 0x007d85ce    5e
                         pop                ebx                                            // 0x007d85cf    5b
                         pop                ebp                                            // 0x007d85d0    5d
                         ret                                                               // 0x007d85d1    c3
_jmp_addr_0x007d85d2:    push               ebp                                            // 0x007d85d2    55
                         mov.s              ebp, esp                                       // 0x007d85d3    8bec
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d85d5    8b4508
                         test               eax, eax                                       // 0x007d85d8    85c0
                         {disp8} jne        _jmp_addr_0x007d85de                           // 0x007d85da    7502
                         pop                ebp                                            // 0x007d85dc    5d
                         ret                                                               // 0x007d85dd    c3
_jmp_addr_0x007d85de:    cmp                dword ptr [data_bytes + 0x4be2a0], 0x00        // 0x007d85de    833da042e80000
                         {disp8} jne        _jmp_addr_0x007d85f9                           // 0x007d85e5    7512
                         {disp8} mov        cx, word ptr [ebp + 0x0c]                      // 0x007d85e7    668b4d0c
                         cmp                cx, 0x00ff                                     // 0x007d85eb    6681f9ff00
                         {disp8} ja         _jmp_addr_0x007d862b                           // 0x007d85f0    7739
                         push               0x1                                            // 0x007d85f2    6a01
                         mov                byte ptr [eax], cl                             // 0x007d85f4    8808
                         pop                eax                                            // 0x007d85f6    58
                         pop                ebp                                            // 0x007d85f7    5d
                         ret                                                               // 0x007d85f8    c3
_jmp_addr_0x007d85f9:    {disp8} lea        ecx, dword ptr [ebp + 0x08]                    // 0x007d85f9    8d4d08
                         and                dword ptr [ebp + 0x08], 0x00                   // 0x007d85fc    83650800
                         push               ecx                                            // 0x007d8600    51
                         push               0x0                                            // 0x007d8601    6a00
                         push               dword ptr [data_bytes + 0x267d2c]              // 0x007d8603    ff352cddc200
                         push               eax                                            // 0x007d8609    50
                         {disp8} lea        eax, dword ptr [ebp + 0x0c]                    // 0x007d860a    8d450c
                         push               0x1                                            // 0x007d860d    6a01
                         push               eax                                            // 0x007d860f    50
                         push               0x00000220                                     // 0x007d8610    6820020000
                         push               dword ptr [data_bytes + 0x4be2b0]              // 0x007d8615    ff35b042e800
                         call               dword ptr [__imp__WideCharToMultiByte@32]       // 0x007d861b    ff152c928a00
                         test               eax, eax                                       // 0x007d8621    85c0
                         {disp8} je         _jmp_addr_0x007d862b                           // 0x007d8623    7406
                         cmp                dword ptr [ebp + 0x08], 0x00                   // 0x007d8625    837d0800
                         {disp8} je         _jmp_addr_0x007d8639                           // 0x007d8629    740e
_jmp_addr_0x007d862b:    call               __errno                                        // 0x007d862b    e8510affff
                         mov                dword ptr [eax], 0x0000002a                    // 0x007d8630    c7002a000000
                         or                 eax, -0x1                                      // 0x007d8636    83c8ff
_jmp_addr_0x007d8639:    pop                ebp                                            // 0x007d8639    5d
                         ret                                                               // 0x007d863a    c3
__filwbuf:               push               esi                                            // 0x007d863b    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                    // 0x007d863c    8b742408
                         {disp8} mov        eax, dword ptr [esi + 0x0c]                    // 0x007d8640    8b460c
                         test               al, -0x7d                                      // 0x007d8643    a883
                         {disp32} je        _jmp_addr_0x007d871b                           // 0x007d8645    0f84d0000000
                         test               al, 0x40                                       // 0x007d864b    a840
                         {disp32} jne       _jmp_addr_0x007d871b                           // 0x007d864d    0f85c8000000
                         test               al, 0x02                                       // 0x007d8653    a802
                         {disp8} je         _jmp_addr_0x007d8661                           // 0x007d8655    740a
                         or                 al, 0x20                                       // 0x007d8657    0c20
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007d8659    89460c
                         {disp32} jmp       _jmp_addr_0x007d871b                           // 0x007d865c    e9ba000000
_jmp_addr_0x007d8661:    or                 al, 1                                          // 0x007d8661    0c01
                         test               ax, 0x010c                                     // 0x007d8663    66a90c01
                         {disp8} mov        dword ptr [esi + 0x0c], eax                    // 0x007d8667    89460c
                         {disp8} jne        _jmp_addr_0x007d8675                           // 0x007d866a    7509
                         push               esi                                            // 0x007d866c    56
                         call               __getbuf                                            // 0x007d866d    e8eedeffff
                         pop                ecx                                            // 0x007d8672    59
                         {disp8} jmp        _jmp_addr_0x007d867a                           // 0x007d8673    eb05
_jmp_addr_0x007d8675:    {disp8} mov        eax, dword ptr [esi + 0x08]                    // 0x007d8675    8b4608
                         mov                dword ptr [esi], eax                           // 0x007d8678    8906
_jmp_addr_0x007d867a:    push               dword ptr [esi + 0x18]                         // 0x007d867a    ff7618
                         push               dword ptr [esi + 0x08]                         // 0x007d867d    ff7608
                         push               dword ptr [esi + 0x10]                         // 0x007d8680    ff7610
                         call               __read                                         // 0x007d8683    e8f097ffff
                         add                esp, 0x0c                                      // 0x007d8688    83c40c
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007d868b    894604
                         test               eax, eax                                       // 0x007d868e    85c0
                         {disp8} je         _jmp_addr_0x007d870a                           // 0x007d8690    7478
                         cmp                eax, 0x01                                      // 0x007d8692    83f801
                         {disp8} je         _jmp_addr_0x007d870a                           // 0x007d8695    7473
                         cmp                eax, -0x01                                     // 0x007d8697    83f8ff
                         {disp8} je         _jmp_addr_0x007d870a                           // 0x007d869a    746e
                         {disp8} mov        edx, dword ptr [esi + 0x0c]                    // 0x007d869c    8b560c
                         test               dl, -0x7e                                      // 0x007d869f    f6c282
                         {disp8} jne        _jmp_addr_0x007d86db                           // 0x007d86a2    7537
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                    // 0x007d86a4    8b4e10
                         push               edi                                            // 0x007d86a7    57
                         cmp                ecx, -0x01                                     // 0x007d86a8    83f9ff
                         {disp8} je         _jmp_addr_0x007d86c4                           // 0x007d86ab    7417
                         mov.s              edi, ecx                                       // 0x007d86ad    8bf9
                         sar                edi, 5                                         // 0x007d86af    c1ff05
                         and                ecx, 0x1f                                      // 0x007d86b2    83e11f
                         {disp32} mov       edi, dword ptr [edi * 0x4 + ___pioinfo]        // 0x007d86b5    8b3cbd60c9fa00
                         lea                ecx, dword ptr [ecx + ecx * 0x8]               // 0x007d86bc    8d0cc9
                         lea                edi, dword ptr [edi + ecx * 0x4]               // 0x007d86bf    8d3c8f
                         {disp8} jmp        _jmp_addr_0x007d86c9                           // 0x007d86c2    eb05
_jmp_addr_0x007d86c4:    mov                edi, OFFSET ___badioinfo                       // 0x007d86c4    bf3003c300
_jmp_addr_0x007d86c9:    {disp8} mov        cl, byte ptr [edi + 0x04]                      // 0x007d86c9    8a4f04
                         pop                edi                                            // 0x007d86cc    5f
                         and                cl, -0x7e                                      // 0x007d86cd    80e182
                         cmp                cl, -0x7e                                      // 0x007d86d0    80f982
                         {disp8} jne        _jmp_addr_0x007d86db                           // 0x007d86d3    7506
                         or                 dh, 0x20                                       // 0x007d86d5    80ce20
                         {disp8} mov        dword ptr [esi + 0x0c], edx                    // 0x007d86d8    89560c
_jmp_addr_0x007d86db:    cmp                dword ptr [esi + 0x18], 0x00000200             // 0x007d86db    817e1800020000
                         {disp8} jne        _jmp_addr_0x007d86f8                           // 0x007d86e2    7514
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                    // 0x007d86e4    8b4e0c
                         test               cl, 0x08                                       // 0x007d86e7    f6c108
                         {disp8} je         _jmp_addr_0x007d86f8                           // 0x007d86ea    740c
                         test               ch, 0x04                                       // 0x007d86ec    f6c504
                         {disp8} jne        _jmp_addr_0x007d86f8                           // 0x007d86ef    7507
                         {disp8} mov        dword ptr [esi + 0x18], 0x00001000             // 0x007d86f1    c7461800100000
_jmp_addr_0x007d86f8:    mov                ecx, dword ptr [esi]                           // 0x007d86f8    8b0e
                         add                eax, -0x02                                     // 0x007d86fa    83c0fe
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007d86fd    894604
                         movzx              eax, word ptr [ecx]                            // 0x007d8700    0fb701
                         add                ecx, 0x2                                       // 0x007d8703    83c102
                         mov                dword ptr [esi], ecx                           // 0x007d8706    890e
                         pop                esi                                            // 0x007d8708    5e
                         ret                                                               // 0x007d8709    c3
_jmp_addr_0x007d870a:    neg                eax                                            // 0x007d870a    f7d8
                         sbb.s              eax, eax                                       // 0x007d870c    1bc0
                         and                eax, 0x10                                      // 0x007d870e    83e010
                         add                eax, 0x10                                      // 0x007d8711    83c010
                         or                 dword ptr [esi + 0xc], eax                     // 0x007d8714    09460c
                         and                dword ptr [esi + 0x04], 0x00                   // 0x007d8717    83660400
_jmp_addr_0x007d871b:    mov                eax, 0x0000ffff                                // 0x007d871b    b8ffff0000
                         pop                esi                                            // 0x007d8720    5e
                         ret                                                               // 0x007d8721    c3
_mbtowc:                 push               ebp                                            // 0x007d8722    55
                         mov.s              ebp, esp                                       // 0x007d8723    8bec
                         push               ebx                                            // 0x007d8725    53
                         push               esi                                            // 0x007d8726    56
                         mov                esi, 0x00fadcc8                                // 0x007d8727    bec8dcfa00
                         push               edi                                            // 0x007d872c    57
                         push               esi                                            // 0x007d872d    56
                         call               dword ptr [__imp__InterlockedIncrement@4]      // 0x007d872e    ff1510938a00
                         {disp32} mov       edi, dword ptr [__imp__InterlockedDecrement@4] // 0x007d8734    8b3d14938a00
                         xor.s              ebx, ebx                                       // 0x007d873a    33db
                         cmp                dword ptr [data_bytes + 0x5e7cc4], ebx         // 0x007d873c    391dc4dcfa00
                         {disp8} je         _jmp_addr_0x007d8752                           // 0x007d8742    740e
                         push               esi                                            // 0x007d8744    56
                         call               edi                                            // 0x007d8745    ffd7
                         push               0x13                                           // 0x007d8747    6a13
                         call               __lock                                         // 0x007d8749    e8682fffff
                         pop                ecx                                            // 0x007d874e    59
                         push               0x1                                            // 0x007d874f    6a01
                         pop                ebx                                            // 0x007d8751    5b
_jmp_addr_0x007d8752:    push               dword ptr [ebp + 0x10]                         // 0x007d8752    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d8755    ff750c
                         push               dword ptr [ebp + 0x08]                         // 0x007d8758    ff7508
                         call               _jmp_addr_0x007d877f                           // 0x007d875b    e81f000000
                         add                esp, 0x0c                                      // 0x007d8760    83c40c
                         {disp8} mov        dword ptr [ebp + 0x10], eax                    // 0x007d8763    894510
                         test               ebx, ebx                                       // 0x007d8766    85db
                         {disp8} je         _jmp_addr_0x007d8774                           // 0x007d8768    740a
                         push               0x13                                           // 0x007d876a    6a13
                         call               __unlock                                       // 0x007d876c    e8a62fffff
                         pop                ecx                                            // 0x007d8771    59
                         {disp8} jmp        _jmp_addr_0x007d8777                           // 0x007d8772    eb03
_jmp_addr_0x007d8774:    push               esi                                            // 0x007d8774    56
                         call               edi                                            // 0x007d8775    ffd7
_jmp_addr_0x007d8777:    {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x007d8777    8b4510
                         pop                edi                                            // 0x007d877a    5f
                         pop                esi                                            // 0x007d877b    5e
                         pop                ebx                                            // 0x007d877c    5b
                         pop                ebp                                            // 0x007d877d    5d
                         ret                                                               // 0x007d877e    c3
_jmp_addr_0x007d877f:    push               ebp                                            // 0x007d877f    55
                         mov.s              ebp, esp                                       // 0x007d8780    8bec
                         push               ebx                                            // 0x007d8782    53
                         push               esi                                            // 0x007d8783    56
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007d8784    8b750c
                         xor.s              ebx, ebx                                       // 0x007d8787    33db
                         cmp.s              esi, ebx                                       // 0x007d8789    3bf3
                         {disp8} je         _jmp_addr_0x007d87a2                           // 0x007d878b    7415
                         cmp                dword ptr [ebp + 0x10], ebx                    // 0x007d878d    395d10
                         {disp8} je         _jmp_addr_0x007d87a2                           // 0x007d8790    7410
                         mov                al, byte ptr [esi]                             // 0x007d8792    8a06
                         cmp.s              al, bl                                         // 0x007d8794    3ac3
                         {disp8} jne        _jmp_addr_0x007d87a8                           // 0x007d8796    7510
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8798    8b4508
                         cmp.s              eax, ebx                                       // 0x007d879b    3bc3
                         {disp8} je         _jmp_addr_0x007d87a2                           // 0x007d879d    7403
                         mov                word ptr [eax], bx                             // 0x007d879f    668918
_jmp_addr_0x007d87a2:    xor.s              eax, eax                                       // 0x007d87a2    33c0
_jmp_addr_0x007d87a4:    pop                esi                                            // 0x007d87a4    5e
                         pop                ebx                                            // 0x007d87a5    5b
                         pop                ebp                                            // 0x007d87a6    5d
                         ret                                                               // 0x007d87a7    c3
_jmp_addr_0x007d87a8:    cmp                dword ptr [data_bytes + 0x4be2a0], ebx         // 0x007d87a8    391da042e800
                         {disp8} jne        _jmp_addr_0x007d87c3                           // 0x007d87ae    7513
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007d87b0    8b4d08
                         cmp.s              ecx, ebx                                       // 0x007d87b3    3bcb
                         {disp8} je         _jmp_addr_0x007d87be                           // 0x007d87b5    7407
                         movzx              ax, al                                         // 0x007d87b7    660fb6c0
                         mov                word ptr [ecx], ax                             // 0x007d87bb    668901
_jmp_addr_0x007d87be:    push               0x1                                            // 0x007d87be    6a01
                         pop                eax                                            // 0x007d87c0    58
                         {disp8} jmp        _jmp_addr_0x007d87a4                           // 0x007d87c1    ebe1
_jmp_addr_0x007d87c3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x267b20]         // 0x007d87c3    8b0d20dbc200
                         movzx              eax, al                                        // 0x007d87c9    0fb6c0
                         test               byte ptr [ecx + eax * 0x2 + 0x01], -0x80       // 0x007d87cc    f644410180
                         {disp8} je         _jmp_addr_0x007d8821                           // 0x007d87d1    744e
                         {disp32} mov       eax, dword ptr [data_bytes + 0x267d2c]         // 0x007d87d3    a12cddc200
                         cmp                eax, 0x01                                      // 0x007d87d8    83f801
                         {disp8} jle        _jmp_addr_0x007d8807                           // 0x007d87db    7e2a
                         cmp                dword ptr [ebp + 0x10], eax                    // 0x007d87dd    394510
                         {disp8} jl         _jmp_addr_0x007d8811                           // 0x007d87e0    7c2f
                         xor.s              ecx, ecx                                       // 0x007d87e2    33c9
                         cmp                dword ptr [ebp + 0x08], ebx                    // 0x007d87e4    395d08
                         setne              cl                                             // 0x007d87e7    0f95c1
                         push               ecx                                            // 0x007d87ea    51
                         push               dword ptr [ebp + 0x08]                         // 0x007d87eb    ff7508
                         push               eax                                            // 0x007d87ee    50
                         push               esi                                            // 0x007d87ef    56
                         push               0x9                                            // 0x007d87f0    6a09
                         push               dword ptr [data_bytes + 0x4be2b0]              // 0x007d87f2    ff35b042e800
                         call               dword ptr [__imp__MultiByteToWideChar@24]       // 0x007d87f8    ff153c918a00
                         test               eax, eax                                       // 0x007d87fe    85c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x267d2c]         // 0x007d8800    a12cddc200
                         {disp8} jne        _jmp_addr_0x007d87a4                           // 0x007d8805    759d
_jmp_addr_0x007d8807:    cmp                dword ptr [ebp + 0x10], eax                    // 0x007d8807    394510
                         .byte              0x72, 0x5// {disp8} jb _jmp_addr_0x007d8811    // 0x007d880a    7205
                         cmp                byte ptr [esi + 0x01], bl                      // 0x007d880c    385e01
                         {disp8} jne        _jmp_addr_0x007d87a4                           // 0x007d880f    7593
_jmp_addr_0x007d8811:    call               __errno                                        // 0x007d8811    e86b08ffff
                         mov                dword ptr [eax], 0x0000002a                    // 0x007d8816    c7002a000000
                         or                 eax, -0x1                                      // 0x007d881c    83c8ff
                         {disp8} jmp        _jmp_addr_0x007d87a4                           // 0x007d881f    eb83
_jmp_addr_0x007d8821:    xor.s              eax, eax                                       // 0x007d8821    33c0
                         cmp                dword ptr [ebp + 0x08], ebx                    // 0x007d8823    395d08
                         setne              al                                             // 0x007d8826    0f95c0
                         push               eax                                            // 0x007d8829    50
                         push               dword ptr [ebp + 0x08]                         // 0x007d882a    ff7508
                         push               0x1                                            // 0x007d882d    6a01
                         push               esi                                            // 0x007d882f    56
                         push               0x9                                            // 0x007d8830    6a09
                         push               dword ptr [data_bytes + 0x4be2b0]              // 0x007d8832    ff35b042e800
                         call               dword ptr [__imp__MultiByteToWideChar@24]       // 0x007d8838    ff153c918a00
                         test               eax, eax                                       // 0x007d883e    85c0
                         {disp32} jne       _jmp_addr_0x007d87be                           // 0x007d8840    0f8578ffffff
                         {disp8} jmp        _jmp_addr_0x007d8811                           // 0x007d8846    ebc9

___crtGetStringTypeA:
                         push               ebp                                            // 0x007d8848    55
                         mov.s              ebp, esp                                       // 0x007d8849    8bec
                         push               -0x1                                           // 0x007d884b    6aff
                         push               0x009a1578                                     // 0x007d884d    6878159a00
                         push               0x007cd8ac /*__except_handler3*/               // 0x007d8852    68acd87c00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007d8857    64a100000000
                         push               eax                                            // 0x007d885d    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007d885e    64892500000000
                         sub                esp, 0x18                                      // 0x007d8865    83ec18
                         push               ebx                                            // 0x007d8868    53
                         push               esi                                            // 0x007d8869    56
                         push               edi                                            // 0x007d886a    57
                         {disp8} mov        dword ptr [ebp + -0x18], esp                   // 0x007d886b    8965e8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be54c]         // 0x007d886e    a14c45e800
                         xor.s              ebx, ebx                                       // 0x007d8873    33db
                         cmp.s              eax, ebx                                       // 0x007d8875    3bc3
                         {disp8} jne        _jmp_addr_0x007d88b7                           // 0x007d8877    753e
                         {disp8} lea        eax, dword ptr [ebp + -0x1c]                   // 0x007d8879    8d45e4
                         push               eax                                            // 0x007d887c    50
                         push               0x1                                            // 0x007d887d    6a01
                         pop                esi                                            // 0x007d887f    5e
                         push               esi                                            // 0x007d8880    56
                         push               0x009a0798                                     // 0x007d8881    6898079a00
                         push               esi                                            // 0x007d8886    56
                         call               dword ptr [__imp__GetStringTypeW@4]            // 0x007d8887    ff1570928a00
                         test               eax, eax                                       // 0x007d888d    85c0
                         {disp8} je         _jmp_addr_0x007d8895                           // 0x007d888f    7404
                         mov.s              eax, esi                                       // 0x007d8891    8bc6
                         {disp8} jmp        _jmp_addr_0x007d88b2                           // 0x007d8893    eb1d
_jmp_addr_0x007d8895:    {disp8} lea        eax, dword ptr [ebp + -0x1c]                   // 0x007d8895    8d45e4
                         push               eax                                            // 0x007d8898    50
                         push               esi                                            // 0x007d8899    56
                         push               0x009a0794                                     // 0x007d889a    6894079a00
                         push               esi                                            // 0x007d889f    56
                         push               ebx                                            // 0x007d88a0    53
                         call               dword ptr [__imp__GetStringTypeA@4]            // 0x007d88a1    ff1574928a00
                         test               eax, eax                                       // 0x007d88a7    85c0
                         {disp32} je        _jmp_addr_0x007d897d                           // 0x007d88a9    0f84ce000000
                         push               0x2                                            // 0x007d88af    6a02
                         pop                eax                                            // 0x007d88b1    58
_jmp_addr_0x007d88b2:    {disp32} mov       dword ptr [data_bytes + 0x4be54c], eax         // 0x007d88b2    a34c45e800
_jmp_addr_0x007d88b7:    cmp                eax, 0x02                                      // 0x007d88b7    83f802
                         {disp8} jne        _jmp_addr_0x007d88e0                           // 0x007d88ba    7524
                         {disp8} mov        eax, dword ptr [ebp + 0x1c]                    // 0x007d88bc    8b451c
                         cmp.s              eax, ebx                                       // 0x007d88bf    3bc3
                         {disp8} jne        _jmp_addr_0x007d88c8                           // 0x007d88c1    7505
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be2a0]         // 0x007d88c3    a1a042e800
_jmp_addr_0x007d88c8:    push               dword ptr [ebp + 0x14]                         // 0x007d88c8    ff7514
                         push               dword ptr [ebp + 0x10]                         // 0x007d88cb    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d88ce    ff750c
                         push               dword ptr [ebp + 0x08]                         // 0x007d88d1    ff7508
                         push               eax                                            // 0x007d88d4    50
                         call               dword ptr [__imp__GetStringTypeA@4]            // 0x007d88d5    ff1574928a00
                         {disp32} jmp       _jmp_addr_0x007d897f                           // 0x007d88db    e99f000000
_jmp_addr_0x007d88e0:    cmp                eax, 0x01                                      // 0x007d88e0    83f801
                         {disp32} jne       _jmp_addr_0x007d897d                           // 0x007d88e3    0f8594000000
                         cmp                dword ptr [ebp + 0x18], ebx                    // 0x007d88e9    395d18
                         {disp8} jne        _jmp_addr_0x007d88f6                           // 0x007d88ec    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007d88ee    a1b042e800
                         {disp8} mov        dword ptr [ebp + 0x18], eax                    // 0x007d88f3    894518
_jmp_addr_0x007d88f6:    push               ebx                                            // 0x007d88f6    53
                         push               ebx                                            // 0x007d88f7    53
                         push               dword ptr [ebp + 0x10]                         // 0x007d88f8    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d88fb    ff750c
                         {disp8} mov        eax, dword ptr [ebp + 0x20]                    // 0x007d88fe    8b4520
                         neg                eax                                            // 0x007d8901    f7d8
                         sbb.s              eax, eax                                       // 0x007d8903    1bc0
                         and                eax, 0x08                                      // 0x007d8905    83e008
                         inc                eax                                            // 0x007d8908    40
                         push               eax                                            // 0x007d8909    50
                         push               dword ptr [ebp + 0x18]                         // 0x007d890a    ff7518
                         call               dword ptr [__imp__MultiByteToWideChar@24]       // 0x007d890d    ff153c918a00
                         {disp8} mov        dword ptr [ebp + -0x20], eax                   // 0x007d8913    8945e0
                         cmp.s              eax, ebx                                       // 0x007d8916    3bc3
                         {disp8} je         _jmp_addr_0x007d897d                           // 0x007d8918    7463
                         {disp8} mov        dword ptr [ebp + -0x04], ebx                   // 0x007d891a    895dfc
                         lea                edi, dword ptr [eax + eax * 0x1]               // 0x007d891d    8d3c00
                         mov.s              eax, edi                                       // 0x007d8920    8bc7
                         add                eax, 0x03                                      // 0x007d8922    83c003
                         and                al, -0x04                                      // 0x007d8925    24fc
                         call               __chkstk                                       // 0x007d8927    e884e5feff
                         {disp8} mov        dword ptr [ebp + -0x18], esp                   // 0x007d892c    8965e8
                         mov.s              esi, esp                                       // 0x007d892f    8bf4
                         {disp8} mov        dword ptr [ebp + -0x24], esi                   // 0x007d8931    8975dc
                         push               edi                                            // 0x007d8934    57
                         push               ebx                                            // 0x007d8935    53
                         push               esi                                            // 0x007d8936    56
                         call               _memset                                        // 0x007d8937    e8c427ffff
                         add                esp, 0x0c                                      // 0x007d893c    83c40c
                         {disp8} jmp        _jmp_addr_0x007d894c                           // 0x007d893f    eb0b
                         push               0x1                                            // 0x007d8941    6a01
                         pop                eax                                            // 0x007d8943    58
                         ret                                                               // 0x007d8944    c3
                         {disp8} mov        esp, dword ptr [ebp + -0x18]                   // 0x007d8945    8b65e8
                         xor.s              ebx, ebx                                       // 0x007d8948    33db
                         xor.s              esi, esi                                       // 0x007d894a    33f6
_jmp_addr_0x007d894c:    or                 dword ptr [ebp - 4], 0xffffffff                // 0x007d894c    834dfcff
                         cmp.s              esi, ebx                                       // 0x007d8950    3bf3
                         {disp8} je         _jmp_addr_0x007d897d                           // 0x007d8952    7429
                         push               dword ptr [ebp + -0x20]                        // 0x007d8954    ff75e0
                         push               esi                                            // 0x007d8957    56
                         push               dword ptr [ebp + 0x10]                         // 0x007d8958    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d895b    ff750c
                         push               0x1                                            // 0x007d895e    6a01
                         push               dword ptr [ebp + 0x18]                         // 0x007d8960    ff7518
                         call               dword ptr [__imp__MultiByteToWideChar@24]       // 0x007d8963    ff153c918a00
                         cmp.s              eax, ebx                                       // 0x007d8969    3bc3
                         {disp8} je         _jmp_addr_0x007d897d                           // 0x007d896b    7410
                         push               dword ptr [ebp + 0x14]                         // 0x007d896d    ff7514
                         push               eax                                            // 0x007d8970    50
                         push               esi                                            // 0x007d8971    56
                         push               dword ptr [ebp + 0x08]                         // 0x007d8972    ff7508
                         call               dword ptr [__imp__GetStringTypeW@4]            // 0x007d8975    ff1570928a00
                         {disp8} jmp        _jmp_addr_0x007d897f                           // 0x007d897b    eb02
_jmp_addr_0x007d897d:    xor.s              eax, eax                                       // 0x007d897d    33c0
_jmp_addr_0x007d897f:    {disp8} lea        esp, dword ptr [ebp + -0x34]                   // 0x007d897f    8d65cc
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007d8982    8b4df0
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007d8985    64890d00000000
                         pop                edi                                            // 0x007d898c    5f
                         pop                esi                                            // 0x007d898d    5e
                         pop                ebx                                            // 0x007d898e    5b
                         leave                                                             // 0x007d898f    c9
                         ret                                                               // 0x007d8990    c3
                         int3                                                              // 0x007d8991    cc
                         int3                                                              // 0x007d8992    cc
                         int3                                                              // 0x007d8993    cc
_jmp_addr_0x007d8994:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d8994    8b442408
                         push               esi                                            // 0x007d8998    56
                         push               0x20                                           // 0x007d8999    6a20
                         cdq                                                               // 0x007d899b    99
                         pop                ecx                                            // 0x007d899c    59
                         idiv               ecx                                            // 0x007d899d    f7f9
                         push               0x1f                                           // 0x007d899f    6a1f
                         mov.s              esi, eax                                       // 0x007d89a1    8bf0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007d89a3    8b442410
                         cdq                                                               // 0x007d89a7    99
                         idiv               ecx                                            // 0x007d89a8    f7f9
                         pop                ecx                                            // 0x007d89aa    59
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d89ab    8b442408
                         sub.s              ecx, edx                                       // 0x007d89af    2bca
                         or                 edx, 0xffffffff                                // 0x007d89b1    83caff
                         shl                edx, cl                                        // 0x007d89b4    d3e2
                         not                edx                                            // 0x007d89b6    f7d2
                         test               dword ptr [eax + esi * 0x4], edx               // 0x007d89b8    8514b0
                         {disp8} jne        _jmp_addr_0x007d89d9                           // 0x007d89bb    751c
                         inc                esi                                            // 0x007d89bd    46
                         cmp                esi, 0x03                                      // 0x007d89be    83fe03
                         {disp8} jge        _jmp_addr_0x007d89d4                           // 0x007d89c1    7d11
                         lea                eax, dword ptr [eax + esi * 0x4]               // 0x007d89c3    8d04b0
_jmp_addr_0x007d89c6:    cmp                dword ptr [eax], 0x00                          // 0x007d89c6    833800
                         {disp8} jne        _jmp_addr_0x007d89d9                           // 0x007d89c9    750e
                         inc                esi                                            // 0x007d89cb    46
                         add                eax, 0x04                                      // 0x007d89cc    83c004
                         cmp                esi, 0x03                                      // 0x007d89cf    83fe03
                         {disp8} jl         _jmp_addr_0x007d89c6                           // 0x007d89d2    7cf2
_jmp_addr_0x007d89d4:    push               0x1                                            // 0x007d89d4    6a01
                         pop                eax                                            // 0x007d89d6    58
                         pop                esi                                            // 0x007d89d7    5e
                         ret                                                               // 0x007d89d8    c3
_jmp_addr_0x007d89d9:    xor.s              eax, eax                                       // 0x007d89d9    33c0
                         pop                esi                                            // 0x007d89db    5e
                         ret                                                               // 0x007d89dc    c3
_jmp_addr_0x007d89dd:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d89dd    8b442408
                         push               ebx                                            // 0x007d89e1    53
                         push               esi                                            // 0x007d89e2    56
                         push               edi                                            // 0x007d89e3    57
                         push               0x20                                           // 0x007d89e4    6a20
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x007d89e6    8b5c2414
                         cdq                                                               // 0x007d89ea    99
                         pop                ecx                                            // 0x007d89eb    59
                         idiv               ecx                                            // 0x007d89ec    f7f9
                         mov.s              esi, eax                                       // 0x007d89ee    8bf0
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007d89f0    8b442414
                         cdq                                                               // 0x007d89f4    99
                         idiv               ecx                                            // 0x007d89f5    f7f9
                         lea                edi, dword ptr [ebx + esi * 0x4]               // 0x007d89f7    8d3cb3
                         push               edi                                            // 0x007d89fa    57
                         push               0x1f                                           // 0x007d89fb    6a1f
                         pop                ecx                                            // 0x007d89fd    59
                         push               0x1                                            // 0x007d89fe    6a01
                         pop                eax                                            // 0x007d8a00    58
                         sub.s              ecx, edx                                       // 0x007d8a01    2bca
                         shl                eax, cl                                        // 0x007d8a03    d3e0
                         push               eax                                            // 0x007d8a05    50
                         push               dword ptr [edi]                                // 0x007d8a06    ff37
                         call               ___addl                                        // 0x007d8a08    e8041e0000
                         add                esp, 0x0c                                      // 0x007d8a0d    83c40c
                         dec                esi                                            // 0x007d8a10    4e
                         {disp8} js         _jmp_addr_0x007d8a2f                           // 0x007d8a11    781c
                         lea                edi, dword ptr [ebx + esi * 0x4]               // 0x007d8a13    8d3cb3
_jmp_addr_0x007d8a16:    test               eax, eax                                       // 0x007d8a16    85c0
                         {disp8} je         _jmp_addr_0x007d8a2f                           // 0x007d8a18    7415
                         push               edi                                            // 0x007d8a1a    57
                         push               0x1                                            // 0x007d8a1b    6a01
                         push               dword ptr [edi]                                // 0x007d8a1d    ff37
                         call               ___addl                                        // 0x007d8a1f    e8ed1d0000
                         add                esp, 0x0c                                      // 0x007d8a24    83c40c
                         dec                esi                                            // 0x007d8a27    4e
                         sub                edi, 0x04                                      // 0x007d8a28    83ef04
                         test               esi, esi                                       // 0x007d8a2b    85f6
                         {disp8} jge        _jmp_addr_0x007d8a16                           // 0x007d8a2d    7de7
_jmp_addr_0x007d8a2f:    pop                edi                                            // 0x007d8a2f    5f
                         pop                esi                                            // 0x007d8a30    5e
                         pop                ebx                                            // 0x007d8a31    5b
                         ret                                                               // 0x007d8a32    c3
_jmp_addr_0x007d8a33:    push               ebp                                            // 0x007d8a33    55
                         mov.s              ebp, esp                                       // 0x007d8a34    8bec
                         push               ecx                                            // 0x007d8a36    51
                         push               ecx                                            // 0x007d8a37    51
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d8a38    8b450c
                         push               ebx                                            // 0x007d8a3b    53
                         push               esi                                            // 0x007d8a3c    56
                         push               edi                                            // 0x007d8a3d    57
                         {disp8} lea        edi, dword ptr [eax + -0x01]                   // 0x007d8a3e    8d78ff
                         push               0x20                                           // 0x007d8a41    6a20
                         pop                ecx                                            // 0x007d8a43    59
                         and                dword ptr [ebp + -0x04], 0x00                  // 0x007d8a44    8365fc00
                         {disp8} lea        ebx, dword ptr [edi + 0x01]                    // 0x007d8a48    8d5f01
                         push               0x20                                           // 0x007d8a4b    6a20
                         mov.s              eax, ebx                                       // 0x007d8a4d    8bc3
                         pop                esi                                            // 0x007d8a4f    5e
                         cdq                                                               // 0x007d8a50    99
                         idiv               ecx                                            // 0x007d8a51    f7f9
                         push               0x1f                                           // 0x007d8a53    6a1f
                         mov.s              ecx, eax                                       // 0x007d8a55    8bc8
                         mov.s              eax, ebx                                       // 0x007d8a57    8bc3
                         cdq                                                               // 0x007d8a59    99
                         idiv               esi                                            // 0x007d8a5a    f7fe
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8a5c    8b4508
                         pop                esi                                            // 0x007d8a5f    5e
                         push               0x1                                            // 0x007d8a60    6a01
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                   // 0x007d8a62    894df8
                         lea                eax, dword ptr [eax + ecx * 0x4]               // 0x007d8a65    8d0488
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d8a68    89450c
                         sub.s              esi, edx                                       // 0x007d8a6b    2bf2
                         pop                edx                                            // 0x007d8a6d    5a
                         mov.s              ecx, esi                                       // 0x007d8a6e    8bce
                         shl                edx, cl                                        // 0x007d8a70    d3e2
                         test               dword ptr [eax], edx                           // 0x007d8a72    8510
                         {disp8} je         _jmp_addr_0x007d8a97                           // 0x007d8a74    7421
                         inc                ebx                                            // 0x007d8a76    43
                         push               ebx                                            // 0x007d8a77    53
                         push               dword ptr [ebp + 0x08]                         // 0x007d8a78    ff7508
                         call               _jmp_addr_0x007d8994                           // 0x007d8a7b    e814ffffff
                         pop                ecx                                            // 0x007d8a80    59
                         test               eax, eax                                       // 0x007d8a81    85c0
                         pop                ecx                                            // 0x007d8a83    59
                         {disp8} jne        _jmp_addr_0x007d8a94                           // 0x007d8a84    750e
                         push               edi                                            // 0x007d8a86    57
                         push               dword ptr [ebp + 0x08]                         // 0x007d8a87    ff7508
                         call               _jmp_addr_0x007d89dd                           // 0x007d8a8a    e84effffff
                         pop                ecx                                            // 0x007d8a8f    59
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007d8a90    8945fc
                         pop                ecx                                            // 0x007d8a93    59
_jmp_addr_0x007d8a94:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d8a94    8b450c
_jmp_addr_0x007d8a97:    or                 edx, 0xffffffff                                // 0x007d8a97    83caff
                         mov.s              ecx, esi                                       // 0x007d8a9a    8bce
                         shl                edx, cl                                        // 0x007d8a9c    d3e2
                         push               0x3                                            // 0x007d8a9e    6a03
                         pop                ecx                                            // 0x007d8aa0    59
                         and                dword ptr [eax], edx                           // 0x007d8aa1    2110
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                   // 0x007d8aa3    8b45f8
                         inc                eax                                            // 0x007d8aa6    40
                         cmp.s              eax, ecx                                       // 0x007d8aa7    3bc1
                         {disp8} jge        _jmp_addr_0x007d8ab7                           // 0x007d8aa9    7d0c
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                    // 0x007d8aab    8b5508
                         sub.s              ecx, eax                                       // 0x007d8aae    2bc8
                         lea                edi, dword ptr [edx + eax * 0x4]               // 0x007d8ab0    8d3c82
                         xor.s              eax, eax                                       // 0x007d8ab3    33c0
                         rep stosd                                                         // 0x007d8ab5    f3ab
_jmp_addr_0x007d8ab7:    {disp8} mov        eax, dword ptr [ebp + -0x04]                   // 0x007d8ab7    8b45fc
                         pop                edi                                            // 0x007d8aba    5f
                         pop                esi                                            // 0x007d8abb    5e
                         pop                ebx                                            // 0x007d8abc    5b
                         leave                                                             // 0x007d8abd    c9
                         ret                                                               // 0x007d8abe    c3
_jmp_addr_0x007d8abf:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d8abf    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x007d8ac3    8b4c2404
                         push               esi                                            // 0x007d8ac7    56
                         push               0x3                                            // 0x007d8ac8    6a03
                         sub.s              ecx, eax                                       // 0x007d8aca    2bc8
                         pop                edx                                            // 0x007d8acc    5a
_jmp_addr_0x007d8acd:    mov                esi, dword ptr [eax]                           // 0x007d8acd    8b30
                         mov                dword ptr [ecx + eax * 0x1], esi               // 0x007d8acf    893401
                         add                eax, 0x04                                      // 0x007d8ad2    83c004
                         dec                edx                                            // 0x007d8ad5    4a
                         {disp8} jne        _jmp_addr_0x007d8acd                           // 0x007d8ad6    75f5
                         pop                esi                                            // 0x007d8ad8    5e
                         ret                                                               // 0x007d8ad9    c3
_jmp_addr_0x007d8ada:    push               edi                                            // 0x007d8ada    57
                         {disp8} mov        edi, dword ptr [esp + 0x08]                    // 0x007d8adb    8b7c2408
                         xor.s              eax, eax                                       // 0x007d8adf    33c0
                         stosd                                                             // 0x007d8ae1    ab
                         stosd                                                             // 0x007d8ae2    ab
                         stosd                                                             // 0x007d8ae3    ab
                         pop                edi                                            // 0x007d8ae4    5f
                         ret                                                               // 0x007d8ae5    c3
_jmp_addr_0x007d8ae6:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007d8ae6    8b442404
                         xor.s              ecx, ecx                                       // 0x007d8aea    33c9
_jmp_addr_0x007d8aec:    cmp                dword ptr [eax], 0x00                          // 0x007d8aec    833800
                         {disp8} jne        _jmp_addr_0x007d8afe                           // 0x007d8aef    750d
                         inc                ecx                                            // 0x007d8af1    41
                         add                eax, 0x04                                      // 0x007d8af2    83c004
                         cmp                ecx, 0x03                                      // 0x007d8af5    83f903
                         {disp8} jl         _jmp_addr_0x007d8aec                           // 0x007d8af8    7cf2
                         push               0x1                                            // 0x007d8afa    6a01
                         pop                eax                                            // 0x007d8afc    58
                         ret                                                               // 0x007d8afd    c3
_jmp_addr_0x007d8afe:    xor.s              eax, eax                                       // 0x007d8afe    33c0
                         ret                                                               // 0x007d8b00    c3
_jmp_addr_0x007d8b01:    push               ebp                                            // 0x007d8b01    55
                         mov.s              ebp, esp                                       // 0x007d8b02    8bec
                         sub                esp, 0x0c                                      // 0x007d8b04    83ec0c
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d8b07    8b450c
                         push               ebx                                            // 0x007d8b0a    53
                         push               esi                                            // 0x007d8b0b    56
                         push               edi                                            // 0x007d8b0c    57
                         push               0x20                                           // 0x007d8b0d    6a20
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                    // 0x007d8b0f    8b7d08
                         pop                ebx                                            // 0x007d8b12    5b
                         or                 esi, 0xffffffff                                // 0x007d8b13    83ceff
                         cdq                                                               // 0x007d8b16    99
                         mov.s              ecx, ebx                                       // 0x007d8b17    8bcb
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000003            // 0x007d8b19    c745fc03000000
                         idiv               ecx                                            // 0x007d8b20    f7f9
                         {disp8} mov        dword ptr [ebp + -0x0c], eax                   // 0x007d8b22    8945f4
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d8b25    8b450c
                         cdq                                                               // 0x007d8b28    99
                         idiv               ecx                                            // 0x007d8b29    f7f9
                         and                dword ptr [ebp + 0x0c], 0x00                   // 0x007d8b2b    83650c00
                         mov.s              ecx, edx                                       // 0x007d8b2f    8bca
                         shl                esi, cl                                        // 0x007d8b31    d3e6
                         sub.s              ebx, edx                                       // 0x007d8b33    2bda
                         not                esi                                            // 0x007d8b35    f7d6
_jmp_addr_0x007d8b37:    mov                eax, dword ptr [edi]                           // 0x007d8b37    8b07
                         mov.s              ecx, eax                                       // 0x007d8b39    8bc8
                         and.s              ecx, esi                                       // 0x007d8b3b    23ce
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                   // 0x007d8b3d    894df8
                         mov.s              ecx, edx                                       // 0x007d8b40    8bca
                         shr                eax, cl                                        // 0x007d8b42    d3e8
                         or                 eax, dword ptr [ebp + 0xc]                     // 0x007d8b44    0b450c
                         mov                dword ptr [edi], eax                           // 0x007d8b47    8907
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                   // 0x007d8b49    8b45f8
                         mov.s              ecx, ebx                                       // 0x007d8b4c    8bcb
                         add                edi, 0x04                                      // 0x007d8b4e    83c704
                         shl                eax, cl                                        // 0x007d8b51    d3e0
                         dec                dword ptr [ebp + -0x04]                        // 0x007d8b53    ff4dfc
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d8b56    89450c
                         {disp8} jne        _jmp_addr_0x007d8b37                           // 0x007d8b59    75dc
                         {disp8} mov        edi, dword ptr [ebp + -0x0c]                   // 0x007d8b5b    8b7df4
                         push               0x2                                            // 0x007d8b5e    6a02
                         pop                ebx                                            // 0x007d8b60    5b
                         mov.s              esi, edi                                       // 0x007d8b61    8bf7
                         push               0x8                                            // 0x007d8b63    6a08
                         pop                ecx                                            // 0x007d8b65    59
                         shl                esi, 2                                         // 0x007d8b66    c1e602
_jmp_addr_0x007d8b69:    cmp.s              ebx, edi                                       // 0x007d8b69    3bdf
                         {disp8} jl         _jmp_addr_0x007d8b7c                           // 0x007d8b6b    7c0f
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                    // 0x007d8b6d    8b5508
                         mov.s              eax, ecx                                       // 0x007d8b70    8bc1
                         sub.s              eax, esi                                       // 0x007d8b72    2bc6
                         mov                eax, dword ptr [eax + edx * 0x1]               // 0x007d8b74    8b0410
                         mov                dword ptr [ecx + edx * 0x1], eax               // 0x007d8b77    890411
                         {disp8} jmp        _jmp_addr_0x007d8b83                           // 0x007d8b7a    eb07
_jmp_addr_0x007d8b7c:    {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8b7c    8b4508
                         and                dword ptr [ecx + eax * 0x1], 0x00              // 0x007d8b7f    83240100
_jmp_addr_0x007d8b83:    dec                ebx                                            // 0x007d8b83    4b
                         sub                ecx, 0x04                                      // 0x007d8b84    83e904
                         {disp8} jns        _jmp_addr_0x007d8b69                           // 0x007d8b87    79e0
                         pop                edi                                            // 0x007d8b89    5f
                         pop                esi                                            // 0x007d8b8a    5e
                         pop                ebx                                            // 0x007d8b8b    5b
                         leave                                                             // 0x007d8b8c    c9
                         ret                                                               // 0x007d8b8d    c3
_jmp_addr_0x007d8b8e:    push               ebp                                            // 0x007d8b8e    55
                         mov.s              ebp, esp                                       // 0x007d8b8f    8bec
                         sub                esp, 0x18                                      // 0x007d8b91    83ec18
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8b94    8b4508
                         push               ebx                                            // 0x007d8b97    53
                         push               esi                                            // 0x007d8b98    56
                         push               edi                                            // 0x007d8b99    57
                         movzx              ecx, word ptr [eax + 0x0a]                     // 0x007d8b9a    0fb7480a
                         mov.s              ebx, ecx                                       // 0x007d8b9e    8bd9
                         and                ecx, 0x00008000                                // 0x007d8ba0    81e100800000
                         {disp8} mov        dword ptr [ebp + 0x08], ecx                    // 0x007d8ba6    894d08
                         {disp8} mov        ecx, dword ptr [eax + 0x06]                    // 0x007d8ba9    8b4806
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                   // 0x007d8bac    894df4
                         {disp8} mov        ecx, dword ptr [eax + 0x02]                    // 0x007d8baf    8b4802
                         movzx              eax, word ptr [eax]                            // 0x007d8bb2    0fb700
                         {disp8} mov        edi, dword ptr [ebp + 0x10]                    // 0x007d8bb5    8b7d10
                         and                ebx, 0x00007fff                                // 0x007d8bb8    81e3ff7f0000
                         sub                ebx, 0x00003fff                                // 0x007d8bbe    81ebff3f0000
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                   // 0x007d8bc4    894df8
                         shl                eax, 0x10                                      // 0x007d8bc7    c1e010
                         cmp                ebx, 0xffffc001                                // 0x007d8bca    81fb01c0ffff
                         {disp8} mov        dword ptr [ebp + -0x04], eax                   // 0x007d8bd0    8945fc
                         {disp8} jne        _jmp_addr_0x007d8bfb                           // 0x007d8bd3    7526
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8bd5    8d45f4
                         xor.s              esi, esi                                       // 0x007d8bd8    33f6
                         push               eax                                            // 0x007d8bda    50
                         call               _jmp_addr_0x007d8ae6                           // 0x007d8bdb    e806ffffff
                         test               eax, eax                                       // 0x007d8be0    85c0
                         pop                ecx                                            // 0x007d8be2    59
                         {disp32} jne       _jmp_addr_0x007d8cba                           // 0x007d8be3    0f85d1000000
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8be9    8d45f4
                         push               eax                                            // 0x007d8bec    50
                         call               _jmp_addr_0x007d8ada                           // 0x007d8bed    e8e8feffff
                         pop                ecx                                            // 0x007d8bf2    59
_jmp_addr_0x007d8bf3:    push               0x2                                            // 0x007d8bf3    6a02
_jmp_addr_0x007d8bf5:    pop                eax                                            // 0x007d8bf5    58
                         {disp32} jmp       _jmp_addr_0x007d8cbc                           // 0x007d8bf6    e9c1000000
_jmp_addr_0x007d8bfb:    {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8bfb    8d45f4
                         push               eax                                            // 0x007d8bfe    50
                         {disp8} lea        eax, dword ptr [ebp + -0x18]                   // 0x007d8bff    8d45e8
                         push               eax                                            // 0x007d8c02    50
                         call               _jmp_addr_0x007d8abf                           // 0x007d8c03    e8b7feffff
                         push               dword ptr [edi + 0x08]                         // 0x007d8c08    ff7708
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c0b    8d45f4
                         push               eax                                            // 0x007d8c0e    50
                         call               _jmp_addr_0x007d8a33                           // 0x007d8c0f    e81ffeffff
                         add                esp, 0x10                                      // 0x007d8c14    83c410
                         test               eax, eax                                       // 0x007d8c17    85c0
                         {disp8} je         _jmp_addr_0x007d8c1c                           // 0x007d8c19    7401
                         inc                ebx                                            // 0x007d8c1b    43
_jmp_addr_0x007d8c1c:    {disp8} mov        eax, dword ptr [edi + 0x04]                    // 0x007d8c1c    8b4704
                         mov.s              ecx, eax                                       // 0x007d8c1f    8bc8
                         sub                ecx, dword ptr [edi + 0x08]                    // 0x007d8c21    2b4f08
                         cmp.s              ebx, ecx                                       // 0x007d8c24    3bd9
                         {disp8} jge        _jmp_addr_0x007d8c34                           // 0x007d8c26    7d0c
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c28    8d45f4
                         push               eax                                            // 0x007d8c2b    50
                         call               _jmp_addr_0x007d8ada                           // 0x007d8c2c    e8a9feffff
                         pop                ecx                                            // 0x007d8c31    59
                         {disp8} jmp        _jmp_addr_0x007d8c70                           // 0x007d8c32    eb3c
_jmp_addr_0x007d8c34:    cmp.s              ebx, eax                                       // 0x007d8c34    3bd8
                         {disp8} jg         _jmp_addr_0x007d8c77                           // 0x007d8c36    7f3f
                         sub.s              eax, ebx                                       // 0x007d8c38    2bc3
                         mov.s              esi, eax                                       // 0x007d8c3a    8bf0
                         {disp8} lea        eax, dword ptr [ebp + -0x18]                   // 0x007d8c3c    8d45e8
                         push               eax                                            // 0x007d8c3f    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c40    8d45f4
                         push               eax                                            // 0x007d8c43    50
                         call               _jmp_addr_0x007d8abf                           // 0x007d8c44    e876feffff
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c49    8d45f4
                         push               esi                                            // 0x007d8c4c    56
                         push               eax                                            // 0x007d8c4d    50
                         call               _jmp_addr_0x007d8b01                           // 0x007d8c4e    e8aefeffff
                         push               dword ptr [edi + 0x08]                         // 0x007d8c53    ff7708
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c56    8d45f4
                         push               eax                                            // 0x007d8c59    50
                         call               _jmp_addr_0x007d8a33                           // 0x007d8c5a    e8d4fdffff
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                    // 0x007d8c5f    8b470c
                         inc                eax                                            // 0x007d8c62    40
                         push               eax                                            // 0x007d8c63    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c64    8d45f4
                         push               eax                                            // 0x007d8c67    50
                         call               _jmp_addr_0x007d8b01                           // 0x007d8c68    e894feffff
                         add                esp, 0x20                                      // 0x007d8c6d    83c420
_jmp_addr_0x007d8c70:    xor.s              esi, esi                                       // 0x007d8c70    33f6
                         {disp32} jmp       _jmp_addr_0x007d8bf3                           // 0x007d8c72    e97cffffff
_jmp_addr_0x007d8c77:    cmp                ebx, dword ptr [edi]                           // 0x007d8c77    3b1f
                         {disp8} jl         _jmp_addr_0x007d8ca3                           // 0x007d8c79    7c28
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c7b    8d45f4
                         push               eax                                            // 0x007d8c7e    50
                         call               _jmp_addr_0x007d8ada                           // 0x007d8c7f    e856feffff
                         push               dword ptr [edi + 0x0c]                         // 0x007d8c84    ff770c
                         or                 byte ptr [ebp - 9], 0x80                       // 0x007d8c87    804df780
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8c8b    8d45f4
                         push               eax                                            // 0x007d8c8e    50
                         call               _jmp_addr_0x007d8b01                           // 0x007d8c8f    e86dfeffff
                         {disp8} mov        esi, dword ptr [edi + 0x14]                    // 0x007d8c94    8b7714
                         add                esp, 0x0c                                      // 0x007d8c97    83c40c
                         add                esi, dword ptr [edi]                           // 0x007d8c9a    0337
                         push               0x1                                            // 0x007d8c9c    6a01
                         {disp32} jmp       _jmp_addr_0x007d8bf5                           // 0x007d8c9e    e952ffffff
_jmp_addr_0x007d8ca3:    push               dword ptr [edi + 0x0c]                         // 0x007d8ca3    ff770c
                         {disp8} mov        esi, dword ptr [edi + 0x14]                    // 0x007d8ca6    8b7714
                         and                byte ptr [ebp + -0x09], 0x7f                   // 0x007d8ca9    8065f77f
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8cad    8d45f4
                         push               eax                                            // 0x007d8cb0    50
                         add.s              esi, ebx                                       // 0x007d8cb1    03f3
                         call               _jmp_addr_0x007d8b01                           // 0x007d8cb3    e849feffff
                         pop                ecx                                            // 0x007d8cb8    59
                         pop                ecx                                            // 0x007d8cb9    59
_jmp_addr_0x007d8cba:    xor.s              eax, eax                                       // 0x007d8cba    33c0
_jmp_addr_0x007d8cbc:    push               0x1f                                           // 0x007d8cbc    6a1f
                         pop                ecx                                            // 0x007d8cbe    59
                         sub                ecx, dword ptr [edi + 0x0c]                    // 0x007d8cbf    2b4f0c
                         {disp8} mov        edi, dword ptr [edi + 0x10]                    // 0x007d8cc2    8b7f10
                         shl                esi, cl                                        // 0x007d8cc5    d3e6
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007d8cc7    8b4d08
                         neg                ecx                                            // 0x007d8cca    f7d9
                         sbb.s              ecx, ecx                                       // 0x007d8ccc    1bc9
                         and                ecx, 0x80000000                                // 0x007d8cce    81e100000080
                         or.s               esi, ecx                                       // 0x007d8cd4    0bf1
                         or                 esi, dword ptr [ebp - 0xc]                     // 0x007d8cd6    0b75f4
                         cmp                edi, 0x40                                      // 0x007d8cd9    83ff40
                         {disp8} jne        _jmp_addr_0x007d8ceb                           // 0x007d8cdc    750d
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007d8cde    8b4d0c
                         {disp8} mov        edx, dword ptr [ebp + -0x08]                   // 0x007d8ce1    8b55f8
                         {disp8} mov        dword ptr [ecx + 0x04], esi                    // 0x007d8ce4    897104
                         mov                dword ptr [ecx], edx                           // 0x007d8ce7    8911
                         {disp8} jmp        _jmp_addr_0x007d8cf5                           // 0x007d8ce9    eb0a
_jmp_addr_0x007d8ceb:    cmp                edi, 0x20                                      // 0x007d8ceb    83ff20
                         {disp8} jne        _jmp_addr_0x007d8cf5                           // 0x007d8cee    7505
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007d8cf0    8b4d0c
                         mov                dword ptr [ecx], esi                           // 0x007d8cf3    8931
_jmp_addr_0x007d8cf5:    pop                edi                                            // 0x007d8cf5    5f
                         pop                esi                                            // 0x007d8cf6    5e
                         pop                ebx                                            // 0x007d8cf7    5b
                         leave                                                             // 0x007d8cf8    c9
                         ret                                                               // 0x007d8cf9    c3
__ld12tod:               push               0x00c30c10                                     // 0x007d8cfa    68100cc300
                         push               dword ptr [esp + 0x0c]                         // 0x007d8cff    ff74240c
                         push               dword ptr [esp + 0x0c]                         // 0x007d8d03    ff74240c
                         call               _jmp_addr_0x007d8b8e                           // 0x007d8d07    e882feffff
                         add                esp, 0x0c                                      // 0x007d8d0c    83c40c
                         ret                                                               // 0x007d8d0f    c3
_jmp_addr_0x007d8d10:    push               0x00c30c28                                     // 0x007d8d10    68280cc300
                         push               dword ptr [esp + 0x0c]                         // 0x007d8d15    ff74240c
                         push               dword ptr [esp + 0x0c]                         // 0x007d8d19    ff74240c
                         call               _jmp_addr_0x007d8b8e                           // 0x007d8d1d    e86cfeffff
                         add                esp, 0x0c                                      // 0x007d8d22    83c40c
                         ret                                                               // 0x007d8d25    c3
_jmp_addr_0x007d8d26:    push               ebp                                            // 0x007d8d26    55
                         mov.s              ebp, esp                                       // 0x007d8d27    8bec
                         sub                esp, 0x10                                      // 0x007d8d29    83ec10
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8d2c    8b4508
                         push               esi                                            // 0x007d8d2f    56
                         push               edi                                            // 0x007d8d30    57
                         and                dword ptr [ebp + -0x04], 0x00                  // 0x007d8d31    8365fc00
                         {disp8} mov        cx, word ptr [eax + 0x0a]                      // 0x007d8d35    668b480a
                         push               0x40                                           // 0x007d8d39    6a40
                         mov.s              esi, ecx                                       // 0x007d8d3b    8bf1
                         and                ecx, 0x00008000                                // 0x007d8d3d    81e100800000
                         mov.s              edi, ecx                                       // 0x007d8d43    8bf9
                         {disp8} mov        ecx, dword ptr [eax + 0x06]                    // 0x007d8d45    8b4806
                         {disp8} mov        dword ptr [ebp + -0x10], ecx                   // 0x007d8d48    894df0
                         {disp8} mov        ecx, dword ptr [eax + 0x02]                    // 0x007d8d4b    8b4802
                         movzx              eax, word ptr [eax]                            // 0x007d8d4e    0fb700
                         shl                eax, 0x10                                      // 0x007d8d51    c1e010
                         {disp8} mov        dword ptr [ebp + -0x08], eax                   // 0x007d8d54    8945f8
                         {disp8} lea        eax, dword ptr [ebp + -0x10]                   // 0x007d8d57    8d45f0
                         push               eax                                            // 0x007d8d5a    50
                         and                esi, 0x00007fff                                // 0x007d8d5b    81e6ff7f0000
                         {disp8} mov        dword ptr [ebp + -0x0c], ecx                   // 0x007d8d61    894df4
                         call               _jmp_addr_0x007d8a33                           // 0x007d8d64    e8cafcffff
                         pop                ecx                                            // 0x007d8d69    59
                         test               eax, eax                                       // 0x007d8d6a    85c0
                         pop                ecx                                            // 0x007d8d6c    59
                         {disp8} je         _jmp_addr_0x007d8d77                           // 0x007d8d6d    7408
                         mov                ecx, 0x80000000                                // 0x007d8d6f    b900000080
                         inc                esi                                            // 0x007d8d74    46
                         {disp8} jmp        _jmp_addr_0x007d8d7a                           // 0x007d8d75    eb03
_jmp_addr_0x007d8d77:    {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007d8d77    8b4df0
_jmp_addr_0x007d8d7a:    cmp                si, 0x7fff                                     // 0x007d8d7a    6681feff7f
                         {disp8} jne        _jmp_addr_0x007d8d88                           // 0x007d8d7f    7507
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000001            // 0x007d8d81    c745fc01000000
_jmp_addr_0x007d8d88:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d8d88    8b450c
                         or.s               edi, esi                                       // 0x007d8d8b    0bfe
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x007d8d8d    894804
                         {disp8} mov        ecx, dword ptr [ebp + -0x0c]                   // 0x007d8d90    8b4df4
                         {disp8} mov        word ptr [eax + 0x08], di                      // 0x007d8d93    66897808
                         mov                dword ptr [eax], ecx                           // 0x007d8d97    8908
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                   // 0x007d8d99    8b45fc
                         pop                edi                                            // 0x007d8d9c    5f
                         pop                esi                                            // 0x007d8d9d    5e
                         leave                                                             // 0x007d8d9e    c9
                         ret                                                               // 0x007d8d9f    c3
__atodbl:
                         push               ebp                                            // 0x007d8da0    55
                         mov.s              ebp, esp                                       // 0x007d8da1    8bec
                         sub                esp, 0x0c                                      // 0x007d8da3    83ec0c
                         xor.s              eax, eax                                       // 0x007d8da6    33c0
                         push               eax                                            // 0x007d8da8    50
                         push               eax                                            // 0x007d8da9    50
                         push               eax                                            // 0x007d8daa    50
                         push               eax                                            // 0x007d8dab    50
                         push               dword ptr [ebp + 0x0c]                         // 0x007d8dac    ff750c
                         {disp8} lea        eax, dword ptr [ebp + 0x0c]                    // 0x007d8daf    8d450c
                         push               eax                                            // 0x007d8db2    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8db3    8d45f4
                         push               eax                                            // 0x007d8db6    50
                         call               ___strgtold12                                  // 0x007d8db7    e8450e0000
                         push               dword ptr [ebp + 0x08]                         // 0x007d8dbc    ff7508
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8dbf    8d45f4
                         push               eax                                            // 0x007d8dc2    50
                         call               __ld12tod                                      // 0x007d8dc3    e832ffffff
                         add                esp, 0x24                                      // 0x007d8dc8    83c424
                         leave                                                             // 0x007d8dcb    c9
                         ret                                                               // 0x007d8dcc    c3
                         push               ebp                                            // 0x007d8dcd    55
                         mov.s              ebp, esp                                       // 0x007d8dce    8bec
                         sub                esp, 0x0c                                      // 0x007d8dd0    83ec0c
                         xor.s              eax, eax                                       // 0x007d8dd3    33c0
                         push               eax                                            // 0x007d8dd5    50
                         push               eax                                            // 0x007d8dd6    50
                         push               eax                                            // 0x007d8dd7    50
                         push               0x1                                            // 0x007d8dd8    6a01
                         push               dword ptr [ebp + 0x0c]                         // 0x007d8dda    ff750c
                         {disp8} lea        eax, dword ptr [ebp + 0x0c]                    // 0x007d8ddd    8d450c
                         push               eax                                            // 0x007d8de0    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8de1    8d45f4
                         push               eax                                            // 0x007d8de4    50
                         call               ___strgtold12                                  // 0x007d8de5    e8170e0000
                         push               dword ptr [ebp + 0x08]                         // 0x007d8dea    ff7508
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8ded    8d45f4
                         push               eax                                            // 0x007d8df0    50
                         call               _jmp_addr_0x007d8d26                           // 0x007d8df1    e830ffffff
                         add                esp, 0x24                                      // 0x007d8df6    83c424
                         leave                                                             // 0x007d8df9    c9
                         ret                                                               // 0x007d8dfa    c3
__atoflt:    push               ebp                                            // 0x007d8dfb    55
                         mov.s              ebp, esp                                       // 0x007d8dfc    8bec
                         sub                esp, 0x0c                                      // 0x007d8dfe    83ec0c
                         xor.s              eax, eax                                       // 0x007d8e01    33c0
                         push               eax                                            // 0x007d8e03    50
                         push               eax                                            // 0x007d8e04    50
                         push               eax                                            // 0x007d8e05    50
                         push               eax                                            // 0x007d8e06    50
                         push               dword ptr [ebp + 0x0c]                         // 0x007d8e07    ff750c
                         {disp8} lea        eax, dword ptr [ebp + 0x0c]                    // 0x007d8e0a    8d450c
                         push               eax                                            // 0x007d8e0d    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8e0e    8d45f4
                         push               eax                                            // 0x007d8e11    50
                         call               ___strgtold12                                  // 0x007d8e12    e8ea0d0000
                         push               dword ptr [ebp + 0x08]                         // 0x007d8e17    ff7508
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8e1a    8d45f4
                         push               eax                                            // 0x007d8e1d    50
                         call               _jmp_addr_0x007d8d10                           // 0x007d8e1e    e8edfeffff
                         add                esp, 0x24                                      // 0x007d8e23    83c424
                         leave                                                             // 0x007d8e26    c9
                         ret                                                               // 0x007d8e27    c3
__fptostr:    push               ebp                                            // 0x007d8e28    55
                         mov.s              ebp, esp                                       // 0x007d8e29    8bec
                         {disp8} mov        edx, dword ptr [ebp + 0x10]                    // 0x007d8e2b    8b5510
                         push               ebx                                            // 0x007d8e2e    53
                         {disp8} mov        ebx, dword ptr [ebp + 0x0c]                    // 0x007d8e2f    8b5d0c
                         push               esi                                            // 0x007d8e32    56
                         {disp8} mov        esi, dword ptr [ebp + 0x08]                    // 0x007d8e33    8b7508
                         {disp8} mov        ecx, dword ptr [edx + 0x0c]                    // 0x007d8e36    8b4a0c
                         push               edi                                            // 0x007d8e39    57
                         {disp8} lea        edi, dword ptr [esi + 0x01]                    // 0x007d8e3a    8d7e01
                         mov                byte ptr [esi], 0x30                           // 0x007d8e3d    c60630
                         test               ebx, ebx                                       // 0x007d8e40    85db
                         mov.s              eax, edi                                       // 0x007d8e42    8bc7
                         {disp8} jle        _jmp_addr_0x007d8e65                           // 0x007d8e44    7e1f
                         {disp8} mov        dword ptr [ebp + 0x08], ebx                    // 0x007d8e46    895d08
                         xor.s              ebx, ebx                                       // 0x007d8e49    33db
_jmp_addr_0x007d8e4b:    mov                dl, byte ptr [ecx]                             // 0x007d8e4b    8a11
                         test               dl, dl                                         // 0x007d8e4d    84d2
                         {disp8} je         _jmp_addr_0x007d8e57                           // 0x007d8e4f    7406
                         movsx              edx, dl                                        // 0x007d8e51    0fbed2
                         inc                ecx                                            // 0x007d8e54    41
                         {disp8} jmp        _jmp_addr_0x007d8e5a                           // 0x007d8e55    eb03
_jmp_addr_0x007d8e57:    push               0x30                                           // 0x007d8e57    6a30
                         pop                edx                                            // 0x007d8e59    5a
_jmp_addr_0x007d8e5a:    mov                byte ptr [eax], dl                             // 0x007d8e5a    8810
                         inc                eax                                            // 0x007d8e5c    40
                         dec                dword ptr [ebp + 0x08]                         // 0x007d8e5d    ff4d08
                         {disp8} jne        _jmp_addr_0x007d8e4b                           // 0x007d8e60    75e9
                         {disp8} mov        edx, dword ptr [ebp + 0x10]                    // 0x007d8e62    8b5510
_jmp_addr_0x007d8e65:    and                byte ptr [eax], 0x00                           // 0x007d8e65    802000
                         test               ebx, ebx                                       // 0x007d8e68    85db
                         {disp8} jl         _jmp_addr_0x007d8e7e                           // 0x007d8e6a    7c12
                         cmp                byte ptr [ecx], 0x35                           // 0x007d8e6c    803935
                         {disp8} jl         _jmp_addr_0x007d8e7e                           // 0x007d8e6f    7c0d
_jmp_addr_0x007d8e71:    dec                eax                                            // 0x007d8e71    48
                         cmp                byte ptr [eax], 0x39                           // 0x007d8e72    803839
                         {disp8} jne        _jmp_addr_0x007d8e7c                           // 0x007d8e75    7505
                         mov                byte ptr [eax], 0x30                           // 0x007d8e77    c60030
                         {disp8} jmp        _jmp_addr_0x007d8e71                           // 0x007d8e7a    ebf5
_jmp_addr_0x007d8e7c:    inc                byte ptr [eax]                                 // 0x007d8e7c    fe00
_jmp_addr_0x007d8e7e:    cmp                byte ptr [esi], 0x31                           // 0x007d8e7e    803e31
                         {disp8} jne        _jmp_addr_0x007d8e88                           // 0x007d8e81    7505
                         {disp8} inc        dword ptr [edx + 0x04]                         // 0x007d8e83    ff4204
                         {disp8} jmp        _jmp_addr_0x007d8e9a                           // 0x007d8e86    eb12
_jmp_addr_0x007d8e88:    push               edi                                            // 0x007d8e88    57
                         call               _strlen                                        // 0x007d8e89    e86217ffff
                         inc                eax                                            // 0x007d8e8e    40
                         push               eax                                            // 0x007d8e8f    50
                         push               edi                                            // 0x007d8e90    57
                         push               esi                                            // 0x007d8e91    56
                         call               _memmove                                       // 0x007d8e92    e859d2feff
                         add                esp, 0x10                                      // 0x007d8e97    83c410
_jmp_addr_0x007d8e9a:    pop                edi                                            // 0x007d8e9a    5f
                         pop                esi                                            // 0x007d8e9b    5e
                         pop                ebx                                            // 0x007d8e9c    5b
                         pop                ebp                                            // 0x007d8e9d    5d
                         ret                                                               // 0x007d8e9e    c3
__fltout2:               push               ebp                                            // 0x007d8e9f    55
                         mov.s              ebp, esp                                       // 0x007d8ea0    8bec
                         sub                esp, 0x28                                      // 0x007d8ea2    83ec28
                         push               esi                                            // 0x007d8ea5    56
                         {disp8} lea        eax, dword ptr [ebp + 0x08]                    // 0x007d8ea6    8d4508
                         push               edi                                            // 0x007d8ea9    57
                         push               eax                                            // 0x007d8eaa    50
                         {disp8} lea        eax, dword ptr [ebp + -0x0c]                   // 0x007d8eab    8d45f4
                         push               eax                                            // 0x007d8eae    50
                         call               _jmp_addr_0x007d8efb                           // 0x007d8eaf    e847000000
                         pop                ecx                                            // 0x007d8eb4    59
                         {disp8} lea        eax, dword ptr [ebp + -0x28]                   // 0x007d8eb5    8d45d8
                         pop                ecx                                            // 0x007d8eb8    59
                         {disp8} lea        esi, dword ptr [ebp + -0x0c]                   // 0x007d8eb9    8d75f4
                         push               eax                                            // 0x007d8ebc    50
                         push               0x0                                            // 0x007d8ebd    6a00
                         push               0x11                                           // 0x007d8ebf    6a11
                         sub                esp, 0x0c                                      // 0x007d8ec1    83ec0c
                         mov.s              edi, esp                                       // 0x007d8ec4    8bfc
                         movsd              es:[edi], dword ptr ds:[esi]                   // 0x007d8ec6    a5
                         movsd              es:[edi], dword ptr ds:[esi]                   // 0x007d8ec7    a5
                         movsw                                                             // 0x007d8ec8    66a5
                         call               _$I10_OUTPUT                                   // 0x007d8eca    e8e31a0000
                         {disp8} mov        esi, dword ptr [ebp + 0x10]                    // 0x007d8ecf    8b7510
                         {disp8} mov        edi, dword ptr [ebp + 0x14]                    // 0x007d8ed2    8b7d14
                         {disp8} mov        dword ptr [esi + 0x08], eax                    // 0x007d8ed5    894608
                         movsx              eax, byte ptr [ebp + -0x26]                    // 0x007d8ed8    0fbe45da
                         mov                dword ptr [esi], eax                           // 0x007d8edc    8906
                         movsx              eax, word ptr [ebp + -0x28]                    // 0x007d8ede    0fbf45d8
                         {disp8} mov        dword ptr [esi + 0x04], eax                    // 0x007d8ee2    894604
                         {disp8} lea        eax, dword ptr [ebp + -0x24]                   // 0x007d8ee5    8d45dc
                         push               eax                                            // 0x007d8ee8    50
                         push               edi                                            // 0x007d8ee9    57
                         call               _strcpy                                        // 0x007d8eea    e881c1ffff
                         add                esp, 0x20                                      // 0x007d8eef    83c420
                         {disp8} mov        dword ptr [esi + 0x0c], edi                    // 0x007d8ef2    897e0c
                         mov.s              eax, esi                                       // 0x007d8ef5    8bc6
                         pop                edi                                            // 0x007d8ef7    5f
                         pop                esi                                            // 0x007d8ef8    5e
                         leave                                                             // 0x007d8ef9    c9
                         ret                                                               // 0x007d8efa    c3
_jmp_addr_0x007d8efb:    push               ebp                                            // 0x007d8efb    55
                         mov.s              ebp, esp                                       // 0x007d8efc    8bec
                         push               ecx                                            // 0x007d8efe    51
                         {disp8} mov        edx, dword ptr [ebp + 0x0c]                    // 0x007d8eff    8b550c
                         push               ebx                                            // 0x007d8f02    53
                         push               esi                                            // 0x007d8f03    56
                         push               edi                                            // 0x007d8f04    57
                         {disp8} mov        ax, word ptr [edx + 0x06]                      // 0x007d8f05    668b4206
                         mov                edi, 0x000007ff                                // 0x007d8f09    bfff070000
                         mov.s              ecx, eax                                       // 0x007d8f0e    8bc8
                         and                eax, 0x00008000                                // 0x007d8f10    2500800000
                         shr                ecx, 4                                         // 0x007d8f15    c1e904
                         and.s              ecx, edi                                       // 0x007d8f18    23cf
                         {disp8} mov        dword ptr [ebp + 0x0c], eax                    // 0x007d8f1a    89450c
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x007d8f1d    8b4204
                         mov                edx, dword ptr [edx]                           // 0x007d8f20    8b12
                         movzx              ebx, cx                                        // 0x007d8f22    0fb7d9
                         mov                esi, 0x80000000                                // 0x007d8f25    be00000080
                         and                eax, 0x000fffff                                // 0x007d8f2a    25ffff0f00
                         test               ebx, ebx                                       // 0x007d8f2f    85db
                         {disp8} mov        dword ptr [ebp + -0x04], esi                   // 0x007d8f31    8975fc
                         {disp8} je         _jmp_addr_0x007d8f49                           // 0x007d8f34    7413
                         cmp.s              ebx, edi                                       // 0x007d8f36    3bdf
                         {disp8} je         _jmp_addr_0x007d8f42                           // 0x007d8f38    7408
                         {disp32} lea       edi, dword ptr [ecx + 0x00003c00]              // 0x007d8f3a    8db9003c0000
                         {disp8} jmp        _jmp_addr_0x007d8f6a                           // 0x007d8f40    eb28
_jmp_addr_0x007d8f42:    mov                edi, 0x00007fff                                // 0x007d8f42    bfff7f0000
                         {disp8} jmp        _jmp_addr_0x007d8f6a                           // 0x007d8f47    eb21
_jmp_addr_0x007d8f49:    xor.s              ebx, ebx                                       // 0x007d8f49    33db
                         cmp.s              eax, ebx                                       // 0x007d8f4b    3bc3
                         {disp8} jne        _jmp_addr_0x007d8f61                           // 0x007d8f4d    7512
                         cmp.s              edx, ebx                                       // 0x007d8f4f    3bd3
                         {disp8} jne        _jmp_addr_0x007d8f61                           // 0x007d8f51    750e
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8f53    8b4508
                         {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x007d8f56    895804
                         mov                dword ptr [eax], ebx                           // 0x007d8f59    8918
                         {disp8} mov        word ptr [eax + 0x08], bx                      // 0x007d8f5b    66895808
                         {disp8} jmp        _jmp_addr_0x007d8fac                           // 0x007d8f5f    eb4b
_jmp_addr_0x007d8f61:    {disp32} lea       edi, dword ptr [ecx + 0x00003c01]              // 0x007d8f61    8db9013c0000
                         {disp8} mov        dword ptr [ebp + -0x04], ebx                   // 0x007d8f67    895dfc
_jmp_addr_0x007d8f6a:    mov.s              ecx, edx                                       // 0x007d8f6a    8bca
                         shr                ecx, 0x15                                      // 0x007d8f6c    c1e915
                         shl                eax, 0xb                                       // 0x007d8f6f    c1e00b
                         or.s               ecx, eax                                       // 0x007d8f72    0bc8
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d8f74    8b4508
                         or                 ecx, dword ptr [ebp - 4]                       // 0x007d8f77    0b4dfc
                         shl                edx, 0xb                                       // 0x007d8f7a    c1e20b
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x007d8f7d    894804
                         mov                dword ptr [eax], edx                           // 0x007d8f80    8910
_jmp_addr_0x007d8f82:    test               esi, ecx                                       // 0x007d8f82    85ce
                         {disp8} jne        _jmp_addr_0x007d8fa3                           // 0x007d8f84    751d
                         mov                edx, dword ptr [eax]                           // 0x007d8f86    8b10
                         add.s              ecx, ecx                                       // 0x007d8f88    03c9
                         mov.s              ebx, edx                                       // 0x007d8f8a    8bda
                         shr                ebx, 0x1f                                      // 0x007d8f8c    c1eb1f
                         or.s               ebx, ecx                                       // 0x007d8f8f    0bd9
                         lea                ecx, dword ptr [edx + edx * 0x1]               // 0x007d8f91    8d0c12
                         mov                dword ptr [eax], ecx                           // 0x007d8f94    8908
                         {disp8} mov        dword ptr [eax + 0x04], ebx                    // 0x007d8f96    895804
                         add                edi, 0x0000ffff                                // 0x007d8f99    81c7ffff0000
                         mov.s              ecx, ebx                                       // 0x007d8f9f    8bcb
                         {disp8} jmp        _jmp_addr_0x007d8f82                           // 0x007d8fa1    ebdf
_jmp_addr_0x007d8fa3:    {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007d8fa3    8b4d0c
                         or.s               ecx, edi                                       // 0x007d8fa6    0bcf
                         {disp8} mov        word ptr [eax + 0x08], cx                      // 0x007d8fa8    66894808
_jmp_addr_0x007d8fac:    pop                edi                                            // 0x007d8fac    5f
                         pop                esi                                            // 0x007d8fad    5e
                         pop                ebx                                            // 0x007d8fae    5b
                         leave                                                             // 0x007d8faf    c9
                         ret                                                               // 0x007d8fb0    c3

__fptrap:
                         push               0x2                                            // 0x007d8fb1    6a02
                         call               __amsg_exit                                    // 0x007d8fb3    e8ef15ffff
                         pop                ecx                                            // 0x007d8fb8    59
                         ret                                                               // 0x007d8fb9    c3
__isatty:                {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007d8fba    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x5e6a60]         // 0x007d8fbe    3b0560cafa00
                         .byte              0x72, 0x3// {disp8} jb _jmp_addr_0x007d8fc9    // 0x007d8fc4    7203
                         xor.s              eax, eax                                       // 0x007d8fc6    33c0
                         ret                                                               // 0x007d8fc8    c3
_jmp_addr_0x007d8fc9:    mov.s              ecx, eax                                       // 0x007d8fc9    8bc8
                         and                eax, 0x1f                                      // 0x007d8fcb    83e01f
                         sar                ecx, 5                                         // 0x007d8fce    c1f905
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007d8fd1    8d04c0
                         {disp32} mov       ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d8fd4    8b0c8d60c9fa00
                         {disp8} mov        al, byte ptr [ecx + eax * 0x4 + 0x04]          // 0x007d8fdb    8a448104
                         and                eax, 0x40                                      // 0x007d8fdf    83e040
                         ret                                                               // 0x007d8fe2    c3
                         int3                                                              // 0x007d8fe3    cc
                         int3                                                              // 0x007d8fe4    cc
                         int3                                                              // 0x007d8fe5    cc
                         int3                                                              // 0x007d8fe6    cc
                         int3                                                              // 0x007d8fe7    cc
                         int3                                                              // 0x007d8fe8    cc
                         int3                                                              // 0x007d8fe9    cc
                         int3                                                              // 0x007d8fea    cc
                         int3                                                              // 0x007d8feb    cc
                         int3                                                              // 0x007d8fec    cc
                         int3                                                              // 0x007d8fed    cc
                         int3                                                              // 0x007d8fee    cc
                         int3                                                              // 0x007d8fef    cc
__aullrem:    push               ebx                                            // 0x007d8ff0    53
                         {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x007d8ff1    8b442414
                         or.s               eax, eax                                       // 0x007d8ff5    0bc0
                         {disp8} jne        _jmp_addr_0x007d9011                           // 0x007d8ff7    7518
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x007d8ff9    8b4c2410
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                    // 0x007d8ffd    8b44240c
                         xor.s              edx, edx                                       // 0x007d9001    33d2
                         div                ecx                                            // 0x007d9003    f7f1
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d9005    8b442408
                         div                ecx                                            // 0x007d9009    f7f1
                         mov.s              eax, edx                                       // 0x007d900b    8bc2
                         xor.s              edx, edx                                       // 0x007d900d    33d2
                         {disp8} jmp        _jmp_addr_0x007d9061                           // 0x007d900f    eb50
_jmp_addr_0x007d9011:    mov.s              ecx, eax                                       // 0x007d9011    8bc8
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007d9013    8b5c2410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x007d9017    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007d901b    8b442408
_jmp_addr_0x007d901f:    shr                ecx, 1                                         // 0x007d901f    d1e9
                         rcr                ebx, 1                                         // 0x007d9021    d1db
                         shr                edx, 1                                         // 0x007d9023    d1ea
                         rcr                eax, 1                                         // 0x007d9025    d1d8
                         or.s               ecx, ecx                                       // 0x007d9027    0bc9
                         {disp8} jne        _jmp_addr_0x007d901f                           // 0x007d9029    75f4
                         div                ebx                                            // 0x007d902b    f7f3
                         mov.s              ecx, eax                                       // 0x007d902d    8bc8
                         mul                dword ptr [esp + 0x14]                         // 0x007d902f    f7642414
                         xchg               eax, ecx                                       // 0x007d9033    91
                         mul                dword ptr [esp + 0x10]                         // 0x007d9034    f7642410
                         add.s              edx, ecx                                       // 0x007d9038    03d1
                         .byte              0x72, 0xe// {disp8} jb _jmp_addr_0x007d904a    // 0x007d903a    720e
                         cmp                edx, dword ptr [esp + 0x0c]                    // 0x007d903c    3b54240c
                         {disp8} ja         _jmp_addr_0x007d904a                           // 0x007d9040    7708
                         .byte              0x72, 0xe// {disp8} jb _jmp_addr_0x007d9052    // 0x007d9042    720e
                         cmp                eax, dword ptr [esp + 0x08]                    // 0x007d9044    3b442408
                         {disp8} jbe        _jmp_addr_0x007d9052                           // 0x007d9048    7608
_jmp_addr_0x007d904a:    sub                eax, dword ptr [esp + 0x10]                    // 0x007d904a    2b442410
                         sbb                edx, dword ptr [esp + 0x14]                    // 0x007d904e    1b542414
_jmp_addr_0x007d9052:    sub                eax, dword ptr [esp + 0x08]                    // 0x007d9052    2b442408
                         sbb                edx, dword ptr [esp + 0x0c]                    // 0x007d9056    1b54240c
                         neg                edx                                            // 0x007d905a    f7da
                         neg                eax                                            // 0x007d905c    f7d8
                         sbb                edx, 0x00                                      // 0x007d905e    83da00
_jmp_addr_0x007d9061:    pop                ebx                                            // 0x007d9061    5b
                         ret                0x0010                                         // 0x007d9062    c21000
___crtGetStringTypeW:    push               ebp                                            // 0x007d9065    55
                         mov.s              ebp, esp                                       // 0x007d9066    8bec
                         push               -0x1                                           // 0x007d9068    6aff
                         push               0x009a1588                                     // 0x007d906a    6888159a00
                         push               0x007cd8ac /*__except_handler3*/               // 0x007d906f    68acd87c00
                         {disp32} mov       eax, fs:[0x0]                                  // 0x007d9074    64a100000000
                         push               eax                                            // 0x007d907a    50
                         {disp32} mov       fs:[0x0], esp                                  // 0x007d907b    64892500000000
                         sub                esp, 0x1c                                      // 0x007d9082    83ec1c
                         push               ebx                                            // 0x007d9085    53
                         push               esi                                            // 0x007d9086    56
                         push               edi                                            // 0x007d9087    57
                         {disp8} mov        dword ptr [ebp + -0x18], esp                   // 0x007d9088    8965e8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be550]         // 0x007d908b    a15045e800
                         xor.s              edi, edi                                       // 0x007d9090    33ff
                         cmp.s              eax, edi                                       // 0x007d9092    3bc7
                         {disp8} jne        _jmp_addr_0x007d90d4                           // 0x007d9094    753e
                         {disp8} lea        eax, dword ptr [ebp + -0x1c]                   // 0x007d9096    8d45e4
                         push               eax                                            // 0x007d9099    50
                         push               0x1                                            // 0x007d909a    6a01
                         pop                esi                                            // 0x007d909c    5e
                         push               esi                                            // 0x007d909d    56
                         push               0x009a0798                                     // 0x007d909e    6898079a00
                         push               esi                                            // 0x007d90a3    56
                         call               dword ptr [__imp__GetStringTypeW@4]            // 0x007d90a4    ff1570928a00
                         test               eax, eax                                       // 0x007d90aa    85c0
                         {disp8} je         _jmp_addr_0x007d90b2                           // 0x007d90ac    7404
                         mov.s              eax, esi                                       // 0x007d90ae    8bc6
                         {disp8} jmp        _jmp_addr_0x007d90cf                           // 0x007d90b0    eb1d
_jmp_addr_0x007d90b2:    {disp8} lea        eax, dword ptr [ebp + -0x1c]                   // 0x007d90b2    8d45e4
                         push               eax                                            // 0x007d90b5    50
                         push               esi                                            // 0x007d90b6    56
                         push               0x009a0794                                     // 0x007d90b7    6894079a00
                         push               esi                                            // 0x007d90bc    56
                         push               edi                                            // 0x007d90bd    57
                         call               dword ptr [__imp__GetStringTypeA@4]            // 0x007d90be    ff1574928a00
                         test               eax, eax                                       // 0x007d90c4    85c0
                         {disp32} je        _jmp_addr_0x007d9216                           // 0x007d90c6    0f844a010000
                         push               0x2                                            // 0x007d90cc    6a02
                         pop                eax                                            // 0x007d90ce    58
_jmp_addr_0x007d90cf:    {disp32} mov       dword ptr [data_bytes + 0x4be550], eax         // 0x007d90cf    a35045e800
_jmp_addr_0x007d90d4:    cmp                eax, 0x01                                      // 0x007d90d4    83f801
                         {disp8} jne        _jmp_addr_0x007d90f0                           // 0x007d90d7    7517
                         push               dword ptr [ebp + 0x14]                         // 0x007d90d9    ff7514
                         push               dword ptr [ebp + 0x10]                         // 0x007d90dc    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d90df    ff750c
                         push               dword ptr [ebp + 0x08]                         // 0x007d90e2    ff7508
                         call               dword ptr [__imp__GetStringTypeW@4]            // 0x007d90e5    ff1570928a00
                         {disp32} jmp       _jmp_addr_0x007d9218                           // 0x007d90eb    e928010000
_jmp_addr_0x007d90f0:    cmp                eax, 0x02                                      // 0x007d90f0    83f802
                         {disp32} jne       _jmp_addr_0x007d9216                           // 0x007d90f3    0f851d010000
                         cmp                dword ptr [ebp + 0x18], edi                    // 0x007d90f9    397d18
                         {disp8} jne        _jmp_addr_0x007d9106                           // 0x007d90fc    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007d90fe    a1b042e800
                         {disp8} mov        dword ptr [ebp + 0x18], eax                    // 0x007d9103    894518
_jmp_addr_0x007d9106:    push               edi                                            // 0x007d9106    57
                         push               edi                                            // 0x007d9107    57
                         push               edi                                            // 0x007d9108    57
                         push               edi                                            // 0x007d9109    57
                         push               dword ptr [ebp + 0x10]                         // 0x007d910a    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d910d    ff750c
                         push               0x00000220                                     // 0x007d9110    6820020000
                         push               dword ptr [ebp + 0x18]                         // 0x007d9115    ff7518
                         call               dword ptr [__imp__WideCharToMultiByte@32]       // 0x007d9118    ff152c928a00
                         mov.s              esi, eax                                       // 0x007d911e    8bf0
                         {disp8} mov        dword ptr [ebp + -0x28], esi                   // 0x007d9120    8975d8
                         cmp.s              esi, edi                                       // 0x007d9123    3bf7
                         {disp32} je        _jmp_addr_0x007d9216                           // 0x007d9125    0f84eb000000
                         {disp8} mov        dword ptr [ebp + -0x04], edi                   // 0x007d912b    897dfc
                         add                eax, 0x03                                      // 0x007d912e    83c003
                         and                al, -0x04                                      // 0x007d9131    24fc
                         call               __chkstk                                       // 0x007d9133    e878ddfeff
                         {disp8} mov        dword ptr [ebp + -0x18], esp                   // 0x007d9138    8965e8
                         mov.s              eax, esp                                       // 0x007d913b    8bc4
                         {disp8} mov        dword ptr [ebp + -0x2c], eax                   // 0x007d913d    8945d4
                         push               esi                                            // 0x007d9140    56
                         push               edi                                            // 0x007d9141    57
                         push               eax                                            // 0x007d9142    50
                         call               _memset                                        // 0x007d9143    e8b81fffff
                         add                esp, 0x0c                                      // 0x007d9148    83c40c
                         or                 dword ptr [ebp - 4], 0xffffffff                // 0x007d914b    834dfcff
                         {disp8} jmp        _jmp_addr_0x007d9164                           // 0x007d914f    eb13
                         push               0x1                                            // 0x007d9151    6a01
                         pop                eax                                            // 0x007d9153    58
                         ret                                                               // 0x007d9154    c3
                         {disp8} mov        esp, dword ptr [ebp + -0x18]                   // 0x007d9155    8b65e8
                         xor.s              edi, edi                                       // 0x007d9158    33ff
                         {disp8} mov        dword ptr [ebp + -0x2c], edi                   // 0x007d915a    897dd4
                         or                 dword ptr [ebp - 4], 0xffffffff                // 0x007d915d    834dfcff
                         {disp8} mov        esi, dword ptr [ebp + -0x28]                   // 0x007d9161    8b75d8
_jmp_addr_0x007d9164:    cmp                dword ptr [ebp + -0x2c], edi                   // 0x007d9164    397dd4
                         {disp32} je        _jmp_addr_0x007d9216                           // 0x007d9167    0f84a9000000
                         push               edi                                            // 0x007d916d    57
                         push               edi                                            // 0x007d916e    57
                         push               esi                                            // 0x007d916f    56
                         push               dword ptr [ebp + -0x2c]                        // 0x007d9170    ff75d4
                         push               dword ptr [ebp + 0x10]                         // 0x007d9173    ff7510
                         push               dword ptr [ebp + 0x0c]                         // 0x007d9176    ff750c
                         push               0x00000220                                     // 0x007d9179    6820020000
                         push               dword ptr [ebp + 0x18]                         // 0x007d917e    ff7518
                         call               dword ptr [__imp__WideCharToMultiByte@32]       // 0x007d9181    ff152c928a00
                         test               eax, eax                                       // 0x007d9187    85c0
                         {disp32} je        _jmp_addr_0x007d9216                           // 0x007d9189    0f8487000000
                         {disp8} mov        dword ptr [ebp + -0x04], 0x00000001            // 0x007d918f    c745fc01000000
                         {disp8} lea        eax, dword ptr [esi + esi * 0x1 + 0x02]        // 0x007d9196    8d443602
                         add                eax, 0x03                                      // 0x007d919a    83c003
                         and                al, -0x04                                      // 0x007d919d    24fc
                         call               __chkstk                                       // 0x007d919f    e80cddfeff
                         {disp8} mov        dword ptr [ebp + -0x18], esp                   // 0x007d91a4    8965e8
                         mov.s              ebx, esp                                       // 0x007d91a7    8bdc
                         {disp8} mov        dword ptr [ebp + -0x24], ebx                   // 0x007d91a9    895ddc
                         {disp8} jmp        _jmp_addr_0x007d91b9                           // 0x007d91ac    eb0b
                         push               0x1                                            // 0x007d91ae    6a01
                         pop                eax                                            // 0x007d91b0    58
                         ret                                                               // 0x007d91b1    c3
                         {disp8} mov        esp, dword ptr [ebp + -0x18]                   // 0x007d91b2    8b65e8
                         xor.s              edi, edi                                       // 0x007d91b5    33ff
                         xor.s              ebx, ebx                                       // 0x007d91b7    33db
_jmp_addr_0x007d91b9:    or                 dword ptr [ebp - 4], 0xffffffff                // 0x007d91b9    834dfcff
                         cmp.s              ebx, edi                                       // 0x007d91bd    3bdf
                         {disp8} je         _jmp_addr_0x007d9216                           // 0x007d91bf    7455
                         {disp8} mov        eax, dword ptr [ebp + 0x1c]                    // 0x007d91c1    8b451c
                         cmp.s              eax, edi                                       // 0x007d91c4    3bc7
                         {disp8} jne        _jmp_addr_0x007d91cd                           // 0x007d91c6    7505
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be2a0]         // 0x007d91c8    a1a042e800
_jmp_addr_0x007d91cd:    {disp8} mov        ecx, dword ptr [ebp + 0x10]                    // 0x007d91cd    8b4d10
                         lea                edi, dword ptr [ecx + ecx * 0x1]               // 0x007d91d0    8d3c09
                         lea                esi, dword ptr [edi + ebx * 0x1]               // 0x007d91d3    8d341f
                         .byte              0x66, 0x81, 0xe, 0xff, 0xff// or word ptr [esi], 0xffff // 0x007d91d6    66810effff
                         .byte              0x66, 0x81, 0x4e, 0xfe, 0xff, 0xff// or word ptr [esi - 2], 0xffff // 0x007d91db    66814efeffff
                         push               ebx                                            // 0x007d91e1    53
                         push               dword ptr [ebp + -0x28]                        // 0x007d91e2    ff75d8
                         push               dword ptr [ebp + -0x2c]                        // 0x007d91e5    ff75d4
                         push               dword ptr [ebp + 0x08]                         // 0x007d91e8    ff7508
                         push               eax                                            // 0x007d91eb    50
                         call               dword ptr [__imp__GetStringTypeA@4]            // 0x007d91ec    ff1574928a00
                         {disp8} mov        dword ptr [ebp + -0x20], eax                   // 0x007d91f2    8945e0
                         .byte              0x66, 0x81, 0x7e, 0xfe, 0xff, 0xff// cmp word ptr [esi + -0x02], -0x0001 // 0x007d91f5    66817efeffff
                         {disp8} je         _jmp_addr_0x007d9216                           // 0x007d91fb    7419
                         .byte              0x66, 0x81, 0x3e, 0xff, 0xff// cmp word ptr [esi], -0x0001 // 0x007d91fd    66813effff
                         {disp8} jne        _jmp_addr_0x007d9216                           // 0x007d9202    7512
                         push               edi                                            // 0x007d9204    57
                         push               ebx                                            // 0x007d9205    53
                         push               dword ptr [ebp + 0x14]                         // 0x007d9206    ff7514
                         call               _memmove                                       // 0x007d9209    e8e2cefeff
                         add                esp, 0x0c                                      // 0x007d920e    83c40c
                         {disp8} mov        eax, dword ptr [ebp + -0x20]                   // 0x007d9211    8b45e0
                         {disp8} jmp        _jmp_addr_0x007d9218                           // 0x007d9214    eb02
_jmp_addr_0x007d9216:    xor.s              eax, eax                                       // 0x007d9216    33c0
_jmp_addr_0x007d9218:    {disp8} lea        esp, dword ptr [ebp + -0x38]                   // 0x007d9218    8d65c8
                         {disp8} mov        ecx, dword ptr [ebp + -0x10]                   // 0x007d921b    8b4df0
                         {disp32} mov       fs:[0x0], ecx                                  // 0x007d921e    64890d00000000
                         pop                edi                                            // 0x007d9225    5f
                         pop                esi                                            // 0x007d9226    5e
                         pop                ebx                                            // 0x007d9227    5b
                         leave                                                             // 0x007d9228    c9
                         ret                                                               // 0x007d9229    c3
___crtsetenv:            push               ebp                                            // 0x007d922a    55
                         mov.s              ebp, esp                                       // 0x007d922b    8bec
                         push               ecx                                            // 0x007d922d    51
                         push               ecx                                            // 0x007d922e    51
                         push               ebx                                            // 0x007d922f    53
                         push               esi                                            // 0x007d9230    56
                         push               edi                                            // 0x007d9231    57
                         xor.s              edi, edi                                       // 0x007d9232    33ff
                         cmp                dword ptr [ebp + 0x08], edi                    // 0x007d9234    397d08
                         {disp8} je         _jmp_addr_0x007d928e                           // 0x007d9237    7455
                         push               0x3d                                           // 0x007d9239    6a3d
                         push               dword ptr [ebp + 0x08]                         // 0x007d923b    ff7508
                         call               __mbschr                                       // 0x007d923e    e8021a0000
                         mov.s              esi, eax                                       // 0x007d9243    8bf0
                         pop                ecx                                            // 0x007d9245    59
                         cmp.s              esi, edi                                       // 0x007d9246    3bf7
                         pop                ecx                                            // 0x007d9248    59
                         {disp8} mov        dword ptr [ebp + -0x08], esi                   // 0x007d9249    8975f8
                         {disp8} je         _jmp_addr_0x007d928e                           // 0x007d924c    7440
                         cmp                dword ptr [ebp + 0x08], esi                    // 0x007d924e    397508
                         {disp8} je         _jmp_addr_0x007d928e                           // 0x007d9251    743b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4be1f4]         // 0x007d9253    a1f441e800
                         xor.s              ebx, ebx                                       // 0x007d9258    33db
                         cmp                byte ptr [esi + 0x01], bl                      // 0x007d925a    385e01
                         sete               bl                                             // 0x007d925d    0f94c3
                         cmp                eax, dword ptr [data_bytes + 0x4be1f8]         // 0x007d9260    3b05f841e800
                         {disp8} jne        _jmp_addr_0x007d9274                           // 0x007d9266    750c
                         push               eax                                            // 0x007d9268    50
                         call               _jmp_addr_0x007d9409                           // 0x007d9269    e89b010000
                         pop                ecx                                            // 0x007d926e    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be1f4], eax         // 0x007d926f    a3f441e800
_jmp_addr_0x007d9274:    cmp.s              eax, edi                                       // 0x007d9274    3bc7
                         {disp8} jne        _jmp_addr_0x007d92cc                           // 0x007d9276    7554
                         cmp                dword ptr [ebp + 0x0c], edi                    // 0x007d9278    397d0c
                         {disp8} je         _jmp_addr_0x007d9296                           // 0x007d927b    7419
                         cmp                dword ptr [data_bytes + 0x4be1fc], edi         // 0x007d927d    393dfc41e800
                         {disp8} je         _jmp_addr_0x007d9296                           // 0x007d9283    7411
                         call               ___wtomb_environ                               // 0x007d9285    e80577ffff
                         test               eax, eax                                       // 0x007d928a    85c0
                         {disp8} je         _jmp_addr_0x007d92cc                           // 0x007d928c    743e
_jmp_addr_0x007d928e:    or                 eax, -0x1                                      // 0x007d928e    83c8ff
_jmp_addr_0x007d9291:    pop                edi                                            // 0x007d9291    5f
                         pop                esi                                            // 0x007d9292    5e
                         pop                ebx                                            // 0x007d9293    5b
                         leave                                                             // 0x007d9294    c9
                         ret                                                               // 0x007d9295    c3
_jmp_addr_0x007d9296:    cmp.s              ebx, edi                                       // 0x007d9296    3bdf
                         {disp32} jne       _jmp_addr_0x007d93aa                           // 0x007d9298    0f850c010000
                         push               0x4                                            // 0x007d929e    6a04
                         call               _malloc                                        // 0x007d92a0    e8a7d3feff
                         cmp.s              eax, edi                                       // 0x007d92a5    3bc7
                         pop                ecx                                            // 0x007d92a7    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be1f4], eax         // 0x007d92a8    a3f441e800
                         {disp8} je         _jmp_addr_0x007d928e                           // 0x007d92ad    74df
                         mov                dword ptr [eax], edi                           // 0x007d92af    8938
                         cmp                dword ptr [data_bytes + 0x4be1fc], edi         // 0x007d92b1    393dfc41e800
                         {disp8} jne        _jmp_addr_0x007d92cc                           // 0x007d92b7    7513
                         push               0x4                                            // 0x007d92b9    6a04
                         call               _malloc                                        // 0x007d92bb    e88cd3feff
                         cmp.s              eax, edi                                       // 0x007d92c0    3bc7
                         pop                ecx                                            // 0x007d92c2    59
                         {disp32} mov       dword ptr [data_bytes + 0x4be1fc], eax         // 0x007d92c3    a3fc41e800
                         {disp8} je         _jmp_addr_0x007d928e                           // 0x007d92c8    74c4
                         mov                dword ptr [eax], edi                           // 0x007d92ca    8938
_jmp_addr_0x007d92cc:    sub                esi, dword ptr [ebp + 0x08]                    // 0x007d92cc    2b7508
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4be1f4]         // 0x007d92cf    8b3df441e800
                         {disp8} mov        dword ptr [ebp + -0x04], edi                   // 0x007d92d5    897dfc
                         push               esi                                            // 0x007d92d8    56
                         push               dword ptr [ebp + 0x08]                         // 0x007d92d9    ff7508
                         call               _jmp_addr_0x007d93b1                           // 0x007d92dc    e8d0000000
                         mov.s              esi, eax                                       // 0x007d92e1    8bf0
                         pop                ecx                                            // 0x007d92e3    59
                         test               esi, esi                                       // 0x007d92e4    85f6
                         pop                ecx                                            // 0x007d92e6    59
                         {disp8} jl         _jmp_addr_0x007d932c                           // 0x007d92e7    7c43
                         cmp                dword ptr [edi], 0x00                          // 0x007d92e9    833f00
                         {disp8} je         _jmp_addr_0x007d932c                           // 0x007d92ec    743e
                         test               ebx, ebx                                       // 0x007d92ee    85db
                         {disp8} je         _jmp_addr_0x007d9324                           // 0x007d92f0    7432
                         push               dword ptr [edi + esi * 0x4]                    // 0x007d92f2    ff34b7
                         lea                edi, dword ptr [edi + esi * 0x4]               // 0x007d92f5    8d3cb7
                         call               _free                                          // 0x007d92f8    e889d4feff
                         pop                ecx                                            // 0x007d92fd    59
_jmp_addr_0x007d92fe:    cmp                dword ptr [edi], 0x00                          // 0x007d92fe    833f00
                         {disp8} je         _jmp_addr_0x007d930e                           // 0x007d9301    740b
                         {disp8} mov        eax, dword ptr [edi + 0x04]                    // 0x007d9303    8b4704
                         inc                esi                                            // 0x007d9306    46
                         mov                dword ptr [edi], eax                           // 0x007d9307    8907
                         add                edi, 0x04                                      // 0x007d9309    83c704
                         {disp8} jmp        _jmp_addr_0x007d92fe                           // 0x007d930c    ebf0
_jmp_addr_0x007d930e:    mov.s              eax, esi                                       // 0x007d930e    8bc6
                         shl                eax, 2                                         // 0x007d9310    c1e002
                         push               eax                                            // 0x007d9313    50
                         push               dword ptr [ebp + -0x04]                        // 0x007d9314    ff75fc
                         call               _realloc                                       // 0x007d9317    e88305ffff
                         pop                ecx                                            // 0x007d931c    59
                         test               eax, eax                                       // 0x007d931d    85c0
                         pop                ecx                                            // 0x007d931f    59
                         {disp8} je         _jmp_addr_0x007d935e                           // 0x007d9320    743c
                         {disp8} jmp        _jmp_addr_0x007d9359                           // 0x007d9322    eb35
_jmp_addr_0x007d9324:    {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d9324    8b4508
                         mov                dword ptr [edi + esi * 0x4], eax               // 0x007d9327    8904b7
                         {disp8} jmp        _jmp_addr_0x007d935e                           // 0x007d932a    eb32
_jmp_addr_0x007d932c:    test               ebx, ebx                                       // 0x007d932c    85db
                         {disp8} jne        _jmp_addr_0x007d93aa                           // 0x007d932e    757a
                         test               esi, esi                                       // 0x007d9330    85f6
                         {disp8} jge        _jmp_addr_0x007d9336                           // 0x007d9332    7d02
                         neg                esi                                            // 0x007d9334    f7de
_jmp_addr_0x007d9336:    {disp32} lea       eax, dword ptr [esi * 0x4 + 0x00000008]        // 0x007d9336    8d04b508000000
                         push               eax                                            // 0x007d933d    50
                         push               edi                                            // 0x007d933e    57
                         call               _realloc                                       // 0x007d933f    e85b05ffff
                         pop                ecx                                            // 0x007d9344    59
                         test               eax, eax                                       // 0x007d9345    85c0
                         pop                ecx                                            // 0x007d9347    59
                         {disp32} je        _jmp_addr_0x007d928e                           // 0x007d9348    0f8440ffffff
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                    // 0x007d934e    8b4d08
                         mov                dword ptr [eax + esi * 0x4], ecx               // 0x007d9351    890cb0
                         and                dword ptr [eax + esi * 0x4 + 0x04], 0x00       // 0x007d9354    8364b00400
_jmp_addr_0x007d9359:    {disp32} mov       dword ptr [data_bytes + 0x4be1f4], eax         // 0x007d9359    a3f441e800
_jmp_addr_0x007d935e:    cmp                dword ptr [ebp + 0x0c], 0x00                   // 0x007d935e    837d0c00
                         {disp8} je         _jmp_addr_0x007d93aa                           // 0x007d9362    7446
                         push               dword ptr [ebp + 0x08]                         // 0x007d9364    ff7508
                         call               _strlen                                        // 0x007d9367    e88412ffff
                         inc                eax                                            // 0x007d936c    40
                         inc                eax                                            // 0x007d936d    40
                         push               eax                                            // 0x007d936e    50
                         call               _malloc                                        // 0x007d936f    e8d8d2feff
                         mov.s              esi, eax                                       // 0x007d9374    8bf0
                         pop                ecx                                            // 0x007d9376    59
                         test               esi, esi                                       // 0x007d9377    85f6
                         pop                ecx                                            // 0x007d9379    59
                         {disp8} je         _jmp_addr_0x007d93aa                           // 0x007d937a    742e
                         push               dword ptr [ebp + 0x08]                         // 0x007d937c    ff7508
                         push               esi                                            // 0x007d937f    56
                         call               _strcpy                                        // 0x007d9380    e8ebbcffff
                         mov.s              eax, esi                                       // 0x007d9385    8bc6
                         pop                ecx                                            // 0x007d9387    59
                         sub                eax, dword ptr [ebp + 0x08]                    // 0x007d9388    2b4508
                         pop                ecx                                            // 0x007d938b    59
                         add                eax, dword ptr [ebp + -0x08]                   // 0x007d938c    0345f8
                         and                byte ptr [eax], 0x00                           // 0x007d938f    802000
                         inc                eax                                            // 0x007d9392    40
                         neg                ebx                                            // 0x007d9393    f7db
                         sbb.s              ebx, ebx                                       // 0x007d9395    1bdb
                         not                ebx                                            // 0x007d9397    f7d3
                         and.s              ebx, eax                                       // 0x007d9399    23d8
                         push               ebx                                            // 0x007d939b    53
                         push               esi                                            // 0x007d939c    56
                         call               dword ptr [__imp__SetEnvironmentVariableA@8]   // 0x007d939d    ff15b4918a00
                         push               esi                                            // 0x007d93a3    56
                         call               _free                                          // 0x007d93a4    e8ddd3feff
                         pop                ecx                                            // 0x007d93a9    59
_jmp_addr_0x007d93aa:    xor.s              eax, eax                                       // 0x007d93aa    33c0
                         {disp32} jmp       _jmp_addr_0x007d9291                           // 0x007d93ac    e9e0feffff
_jmp_addr_0x007d93b1:    push               esi                                            // 0x007d93b1    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4be1f4]         // 0x007d93b2    8b35f441e800
                         push               edi                                            // 0x007d93b8    57
                         mov                eax, dword ptr [esi]                           // 0x007d93b9    8b06
                         test               eax, eax                                       // 0x007d93bb    85c0
                         {disp8} je         _jmp_addr_0x007d93ec                           // 0x007d93bd    742d
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x007d93bf    8b7c2410
_jmp_addr_0x007d93c3:    push               edi                                            // 0x007d93c3    57
                         push               eax                                            // 0x007d93c4    50
                         push               dword ptr [esp + 0x14]                         // 0x007d93c5    ff742414
                         call               __mbsnbicoll                                   // 0x007d93c9    e88275ffff
                         add                esp, 0x0c                                      // 0x007d93ce    83c40c
                         test               eax, eax                                       // 0x007d93d1    85c0
                         {disp8} jne        _jmp_addr_0x007d93e2                           // 0x007d93d3    750d
                         mov                eax, dword ptr [esi]                           // 0x007d93d5    8b06
                         mov                al, byte ptr [eax + edi * 0x1]                 // 0x007d93d7    8a0438
                         cmp                al, 0x3d                                       // 0x007d93da    3c3d
                         {disp8} je         _jmp_addr_0x007d93fc                           // 0x007d93dc    741e
                         test               al, al                                         // 0x007d93de    84c0
                         {disp8} je         _jmp_addr_0x007d93fc                           // 0x007d93e0    741a
_jmp_addr_0x007d93e2:    {disp8} mov        eax, dword ptr [esi + 0x04]                    // 0x007d93e2    8b4604
                         add                esi, 0x04                                      // 0x007d93e5    83c604
                         test               eax, eax                                       // 0x007d93e8    85c0
                         {disp8} jne        _jmp_addr_0x007d93c3                           // 0x007d93ea    75d7
_jmp_addr_0x007d93ec:    mov.s              eax, esi                                       // 0x007d93ec    8bc6
                         sub                eax, dword ptr [data_bytes + 0x4be1f4]         // 0x007d93ee    2b05f441e800
                         sar                eax, 2                                         // 0x007d93f4    c1f802
                         neg                eax                                            // 0x007d93f7    f7d8
_jmp_addr_0x007d93f9:    pop                edi                                            // 0x007d93f9    5f
                         pop                esi                                            // 0x007d93fa    5e
                         ret                                                               // 0x007d93fb    c3
_jmp_addr_0x007d93fc:    mov.s              eax, esi                                       // 0x007d93fc    8bc6
                         sub                eax, dword ptr [data_bytes + 0x4be1f4]         // 0x007d93fe    2b05f441e800
                         sar                eax, 2                                         // 0x007d9404    c1f802
                         {disp8} jmp        _jmp_addr_0x007d93f9                           // 0x007d9407    ebf0
_jmp_addr_0x007d9409:    push               edi                                            // 0x007d9409    57
                         {disp8} mov        edi, dword ptr [esp + 0x08]                    // 0x007d940a    8b7c2408
                         xor.s              ecx, ecx                                       // 0x007d940e    33c9
                         test               edi, edi                                       // 0x007d9410    85ff
                         {disp8} jne        _jmp_addr_0x007d9418                           // 0x007d9412    7504
                         xor.s              eax, eax                                       // 0x007d9414    33c0
                         pop                edi                                            // 0x007d9416    5f
                         ret                                                               // 0x007d9417    c3
_jmp_addr_0x007d9418:    cmp                dword ptr [edi], 0x00                          // 0x007d9418    833f00
                         {disp8} lea        eax, dword ptr [edi + 0x04]                    // 0x007d941b    8d4704
                         {disp8} je         _jmp_addr_0x007d942a                           // 0x007d941e    740a
_jmp_addr_0x007d9420:    mov                edx, dword ptr [eax]                           // 0x007d9420    8b10
                         inc                ecx                                            // 0x007d9422    41
                         add                eax, 0x04                                      // 0x007d9423    83c004
                         test               edx, edx                                       // 0x007d9426    85d2
                         {disp8} jne        _jmp_addr_0x007d9420                           // 0x007d9428    75f6
_jmp_addr_0x007d942a:    push               ebx                                            // 0x007d942a    53
                         push               ebp                                            // 0x007d942b    55
                         {disp32} lea       eax, dword ptr [ecx * 0x4 + 0x00000004]        // 0x007d942c    8d048d04000000
                         push               esi                                            // 0x007d9433    56
                         push               eax                                            // 0x007d9434    50
                         call               _malloc                                        // 0x007d9435    e812d2feff
                         mov.s              esi, eax                                       // 0x007d943a    8bf0
                         pop                ecx                                            // 0x007d943c    59
                         test               esi, esi                                       // 0x007d943d    85f6
                         mov.s              ebp, esi                                       // 0x007d943f    8bee
                         {disp8} jne        _jmp_addr_0x007d944b                           // 0x007d9441    7508
                         push               0x9                                            // 0x007d9443    6a09
                         call               __amsg_exit                                    // 0x007d9445    e85d11ffff
                         pop                ecx                                            // 0x007d944a    59
_jmp_addr_0x007d944b:    mov                eax, dword ptr [edi]                           // 0x007d944b    8b07
                         mov.s              ebx, edi                                       // 0x007d944d    8bdf
_jmp_addr_0x007d944f:    test               eax, eax                                       // 0x007d944f    85c0
                         {disp8} je         _jmp_addr_0x007d9466                           // 0x007d9451    7413
                         push               eax                                            // 0x007d9453    50
                         add                ebx, 0x04                                      // 0x007d9454    83c304
                         call               __mbsdup                                       // 0x007d9457    e880180000
                         mov                dword ptr [esi], eax                           // 0x007d945c    8906
                         mov                eax, dword ptr [ebx]                           // 0x007d945e    8b03
                         pop                ecx                                            // 0x007d9460    59
                         add                esi, 0x04                                      // 0x007d9461    83c604
                         {disp8} jmp        _jmp_addr_0x007d944f                           // 0x007d9464    ebe9
_jmp_addr_0x007d9466:    and                dword ptr [esi], 0x00                          // 0x007d9466    832600
                         mov.s              eax, ebp                                       // 0x007d9469    8bc5
                         pop                esi                                            // 0x007d946b    5e
                         pop                ebp                                            // 0x007d946c    5d
                         pop                ebx                                            // 0x007d946d    5b
                         pop                edi                                            // 0x007d946e    5f
                         ret                                                               // 0x007d946f    c3
                         push               dword ptr [esp + 0x0c]                         // 0x007d9470    ff74240c
                         push               0x40                                           // 0x007d9474    6a40
                         push               dword ptr [esp + 0x10]                         // 0x007d9476    ff742410
                         push               dword ptr [esp + 0x10]                         // 0x007d947a    ff742410
                         call               __sopen                                        // 0x007d947e    e804000000
                         add                esp, 0x10                                      // 0x007d9483    83c410
                         ret                                                               // 0x007d9486    c3
__sopen:                 push               ebp                                            // 0x007d9487    55
                         mov.s              ebp, esp                                       // 0x007d9488    8bec
                         sub                esp, 0x1c                                      // 0x007d948a    83ec1c
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                    // 0x007d948d    8b4d0c
                         push               ebx                                            // 0x007d9490    53
                         xor.s              ebx, ebx                                       // 0x007d9491    33db
                         push               esi                                            // 0x007d9493    56
                         test               cl, -0x80                                      // 0x007d9494    f6c180
                         push               edi                                            // 0x007d9497    57
                         {disp8} mov        dword ptr [ebp + -0x1c], 0x0000000c            // 0x007d9498    c745e40c000000
                         {disp8} mov        dword ptr [ebp + -0x18], ebx                   // 0x007d949f    895de8
                         {disp8} je         _jmp_addr_0x007d94ad                           // 0x007d94a2    7409
                         {disp8} mov        dword ptr [ebp + -0x14], ebx                   // 0x007d94a4    895dec
                         {disp8} mov        byte ptr [ebp + -0x01], 0x10                   // 0x007d94a7    c645ff10
                         {disp8} jmp        _jmp_addr_0x007d94b8                           // 0x007d94ab    eb0b
_jmp_addr_0x007d94ad:    and                byte ptr [ebp + -0x01], 0x00                   // 0x007d94ad    8065ff00
                         {disp8} mov        dword ptr [ebp + -0x14], 0x00000001            // 0x007d94b1    c745ec01000000
_jmp_addr_0x007d94b8:    mov                eax, 0x00008000                                // 0x007d94b8    b800800000
                         test               eax, ecx                                       // 0x007d94bd    85c8
                         {disp8} jne        _jmp_addr_0x007d94d2                           // 0x007d94bf    7511
                         test               ch, 0x40                                       // 0x007d94c1    f6c540
                         {disp8} jne        _jmp_addr_0x007d94ce                           // 0x007d94c4    7508
                         cmp                dword ptr [data_bytes + 0x4be56c], eax         // 0x007d94c6    39056c45e800
                         {disp8} je         _jmp_addr_0x007d94d2                           // 0x007d94cc    7404
_jmp_addr_0x007d94ce:    or                 byte ptr [ebp - 1], 0x80                       // 0x007d94ce    804dff80
_jmp_addr_0x007d94d2:    push               0x3                                            // 0x007d94d2    6a03
                         mov.s              eax, ecx                                       // 0x007d94d4    8bc1
                         pop                esi                                            // 0x007d94d6    5e
                         and.s              eax, esi                                       // 0x007d94d7    23c6
                         sub.s              eax, ebx                                       // 0x007d94d9    2bc3
                         {disp8} je         _jmp_addr_0x007d94f9                           // 0x007d94db    741c
                         dec                eax                                            // 0x007d94dd    48
                         {disp8} je         _jmp_addr_0x007d94f0                           // 0x007d94de    7410
                         dec                eax                                            // 0x007d94e0    48
                         {disp32} jne       _jmp_addr_0x007d958b                           // 0x007d94e1    0f85a4000000
                         {disp8} mov        dword ptr [ebp + -0x0c], 0xc0000000            // 0x007d94e7    c745f4000000c0
                         {disp8} jmp        _jmp_addr_0x007d9500                           // 0x007d94ee    eb10
_jmp_addr_0x007d94f0:    {disp8} mov        dword ptr [ebp + -0x0c], 0x40000000            // 0x007d94f0    c745f400000040
                         {disp8} jmp        _jmp_addr_0x007d9500                           // 0x007d94f7    eb07
_jmp_addr_0x007d94f9:    {disp8} mov        dword ptr [ebp + -0x0c], 0x80000000            // 0x007d94f9    c745f400000080
_jmp_addr_0x007d9500:    {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x007d9500    8b4510
                         cmp                eax, 0x10                                      // 0x007d9503    83f810
                         {disp8} je         _jmp_addr_0x007d952e                           // 0x007d9506    7426
                         cmp                eax, 0x20                                      // 0x007d9508    83f820
                         {disp8} je         _jmp_addr_0x007d9525                           // 0x007d950b    7418
                         cmp                eax, 0x30                                      // 0x007d950d    83f830
                         {disp8} je         _jmp_addr_0x007d951c                           // 0x007d9510    740a
                         cmp                eax, 0x40                                      // 0x007d9512    83f840
                         {disp8} jne        _jmp_addr_0x007d958b                           // 0x007d9515    7574
                         {disp8} mov        dword ptr [ebp + -0x10], esi                   // 0x007d9517    8975f0
                         {disp8} jmp        _jmp_addr_0x007d9531                           // 0x007d951a    eb15
_jmp_addr_0x007d951c:    {disp8} mov        dword ptr [ebp + -0x10], 0x00000002            // 0x007d951c    c745f002000000
                         {disp8} jmp        _jmp_addr_0x007d9531                           // 0x007d9523    eb0c
_jmp_addr_0x007d9525:    {disp8} mov        dword ptr [ebp + -0x10], 0x00000001            // 0x007d9525    c745f001000000
                         {disp8} jmp        _jmp_addr_0x007d9531                           // 0x007d952c    eb03
_jmp_addr_0x007d952e:    {disp8} mov        dword ptr [ebp + -0x10], ebx                   // 0x007d952e    895df0
_jmp_addr_0x007d9531:    mov                edx, 0x00000700                                // 0x007d9531    ba00070000
                         mov                eax, 0x00000400                                // 0x007d9536    b800040000
                         and.s              ecx, edx                                       // 0x007d953b    23ca
                         mov                edi, 0x00000100                                // 0x007d953d    bf00010000
                         cmp.s              ecx, eax                                       // 0x007d9542    3bc8
                         {disp8} jg         _jmp_addr_0x007d9577                           // 0x007d9544    7f31
                         {disp8} je         _jmp_addr_0x007d9572                           // 0x007d9546    742a
                         cmp.s              ecx, ebx                                       // 0x007d9548    3bcb
                         {disp8} je         _jmp_addr_0x007d9572                           // 0x007d954a    7426
                         cmp.s              ecx, edi                                       // 0x007d954c    3bcf
                         {disp8} je         _jmp_addr_0x007d9569                           // 0x007d954e    7419
                         cmp                ecx, 0x00000200                                // 0x007d9550    81f900020000
                         {disp8} je         _jmp_addr_0x007d95a5                           // 0x007d9556    744d
                         cmp                ecx, 0x00000300                                // 0x007d9558    81f900030000
                         {disp8} jne        _jmp_addr_0x007d958b                           // 0x007d955e    752b
                         {disp8} mov        dword ptr [ebp + -0x08], 0x00000002            // 0x007d9560    c745f802000000
                         {disp8} jmp        _jmp_addr_0x007d95b5                           // 0x007d9567    eb4c
_jmp_addr_0x007d9569:    {disp8} mov        dword ptr [ebp + -0x08], 0x00000004            // 0x007d9569    c745f804000000
                         {disp8} jmp        _jmp_addr_0x007d95b5                           // 0x007d9570    eb43
_jmp_addr_0x007d9572:    {disp8} mov        dword ptr [ebp + -0x08], esi                   // 0x007d9572    8975f8
                         {disp8} jmp        _jmp_addr_0x007d95b5                           // 0x007d9575    eb3e
_jmp_addr_0x007d9577:    cmp                ecx, 0x00000500                                // 0x007d9577    81f900050000
                         {disp8} je         _jmp_addr_0x007d95ae                           // 0x007d957d    742f
                         cmp                ecx, 0x00000600                                // 0x007d957f    81f900060000
                         {disp8} je         _jmp_addr_0x007d95a5                           // 0x007d9585    741e
                         cmp.s              ecx, edx                                       // 0x007d9587    3bca
                         {disp8} je         _jmp_addr_0x007d95ae                           // 0x007d9589    7423
_jmp_addr_0x007d958b:    call               __errno                                        // 0x007d958b    e8f1fafeff
                         mov                dword ptr [eax], 0x00000016                    // 0x007d9590    c70016000000
                         call               ___doserrno                                    // 0x007d9596    e8effafeff
                         mov                dword ptr [eax], ebx                           // 0x007d959b    8918
                         or                 eax, -0x1                                      // 0x007d959d    83c8ff
                         {disp32} jmp       _jmp_addr_0x007d9751                           // 0x007d95a0    e9ac010000
_jmp_addr_0x007d95a5:    {disp8} mov        dword ptr [ebp + -0x08], 0x00000005            // 0x007d95a5    c745f805000000
                         {disp8} jmp        _jmp_addr_0x007d95b5                           // 0x007d95ac    eb07
_jmp_addr_0x007d95ae:    {disp8} mov        dword ptr [ebp + -0x08], 0x00000001            // 0x007d95ae    c745f801000000
_jmp_addr_0x007d95b5:    {disp8} mov        eax, dword ptr [ebp + 0x0c]                    // 0x007d95b5    8b450c
                         mov                esi, 0x00000080                                // 0x007d95b8    be80000000
                         test               edi, eax                                       // 0x007d95bd    85c7
                         {disp8} je         _jmp_addr_0x007d95d4                           // 0x007d95bf    7413
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4be1d4]         // 0x007d95c1    8b0dd441e800
                         not                ecx                                            // 0x007d95c7    f7d1
                         and                ecx, dword ptr [ebp + 0x14]                    // 0x007d95c9    234d14
                         test               cl, -0x80                                      // 0x007d95cc    f6c180
                         {disp8} jne        _jmp_addr_0x007d95d4                           // 0x007d95cf    7503
                         push               0x1                                            // 0x007d95d1    6a01
                         pop                esi                                            // 0x007d95d3    5e
_jmp_addr_0x007d95d4:    test               al, 0x40                                       // 0x007d95d4    a840
                         {disp8} je         _jmp_addr_0x007d95e2                           // 0x007d95d6    740a
                         or                 esi, 0x4000000                                 // 0x007d95d8    81ce00000004
                         or                 byte ptr [ebp - 0xa], 1                        // 0x007d95de    804df601
_jmp_addr_0x007d95e2:    test               ah, 0x10                                       // 0x007d95e2    f6c410
                         {disp8} je         _jmp_addr_0x007d95e9                           // 0x007d95e5    7402
                         or.s               esi, edi                                       // 0x007d95e7    0bf7
_jmp_addr_0x007d95e9:    test               al, 0x20                                       // 0x007d95e9    a820
                         {disp8} je         _jmp_addr_0x007d95f5                           // 0x007d95eb    7408
                         or                 esi, 0x8000000                                 // 0x007d95ed    81ce00000008
                         {disp8} jmp        _jmp_addr_0x007d95ff                           // 0x007d95f3    eb0a
_jmp_addr_0x007d95f5:    test               al, 0x10                                       // 0x007d95f5    a810
                         {disp8} je         _jmp_addr_0x007d95ff                           // 0x007d95f7    7406
                         or                 esi, 0x10000000                                // 0x007d95f9    81ce00000010
_jmp_addr_0x007d95ff:    call               _jmp_addr_0x007d9756                           // 0x007d95ff    e852010000
                         mov.s              ebx, eax                                       // 0x007d9604    8bd8
                         or                 edi, 0xffffffff                                // 0x007d9606    83cfff
                         cmp.s              ebx, edi                                       // 0x007d9609    3bdf
                         {disp8} jne        _jmp_addr_0x007d9627                           // 0x007d960b    751a
                         call               __errno                                        // 0x007d960d    e86ffafeff
                         mov                dword ptr [eax], 0x00000018                    // 0x007d9612    c70018000000
                         call               ___doserrno                                    // 0x007d9618    e86dfafeff
                         and                dword ptr [eax], 0x00                          // 0x007d961d    832000
                         mov.s              eax, edi                                       // 0x007d9620    8bc7
                         {disp32} jmp       _jmp_addr_0x007d9751                           // 0x007d9622    e92a010000
_jmp_addr_0x007d9627:    push               0x0                                            // 0x007d9627    6a00
                         push               esi                                            // 0x007d9629    56
                         push               dword ptr [ebp + -0x08]                        // 0x007d962a    ff75f8
                         {disp8} lea        eax, dword ptr [ebp + -0x1c]                   // 0x007d962d    8d45e4
                         push               eax                                            // 0x007d9630    50
                         push               dword ptr [ebp + -0x10]                        // 0x007d9631    ff75f0
                         push               dword ptr [ebp + -0x0c]                        // 0x007d9634    ff75f4
                         push               dword ptr [ebp + 0x08]                         // 0x007d9637    ff7508
                         call               dword ptr [__imp__CreateFileA@4]               // 0x007d963a    ff151c928a00
                         mov.s              esi, eax                                       // 0x007d9640    8bf0
                         cmp.s              esi, edi                                       // 0x007d9642    3bf7
                         {disp8} jne        _jmp_addr_0x007d965a                           // 0x007d9644    7514
_jmp_addr_0x007d9646:    call               dword ptr [__imp__GetLastError@0]              // 0x007d9646    ff15fc918a00
                         push               eax                                            // 0x007d964c    50
                         call               __dosmaperr                                    // 0x007d964d    e8bcf9feff
                         pop                ecx                                            // 0x007d9652    59
                         mov.s              esi, edi                                       // 0x007d9653    8bf7
                         {disp32} jmp       _jmp_addr_0x007d9748                           // 0x007d9655    e9ee000000
_jmp_addr_0x007d965a:    push               esi                                            // 0x007d965a    56
                         call               dword ptr [__imp__GetFileType@4]               // 0x007d965b    ff15ac928a00
                         test               eax, eax                                       // 0x007d9661    85c0
                         {disp8} jne        _jmp_addr_0x007d966e                           // 0x007d9663    7509
                         push               esi                                            // 0x007d9665    56
                         call               dword ptr [__imp__CloseHandle@4]               // 0x007d9666    ff15c4928a00
                         {disp8} jmp        _jmp_addr_0x007d9646                           // 0x007d966c    ebd8
_jmp_addr_0x007d966e:    cmp                eax, 0x02                                      // 0x007d966e    83f802
                         {disp8} jne        _jmp_addr_0x007d9679                           // 0x007d9671    7506
                         or                 byte ptr [ebp - 1], 0x40                       // 0x007d9673    804dff40
                         {disp8} jmp        _jmp_addr_0x007d9682                           // 0x007d9677    eb09
_jmp_addr_0x007d9679:    cmp                eax, 0x03                                      // 0x007d9679    83f803
                         {disp8} jne        _jmp_addr_0x007d9682                           // 0x007d967c    7504
                         or                 byte ptr [ebp - 1], 8                          // 0x007d967e    804dff08
_jmp_addr_0x007d9682:    push               esi                                            // 0x007d9682    56
                         push               ebx                                            // 0x007d9683    53
                         call               _jmp_addr_0x007d9879                           // 0x007d9684    e8f0010000
                         mov.s              eax, ebx                                       // 0x007d9689    8bc3
                         pop                ecx                                            // 0x007d968b    59
                         sar                eax, 5                                         // 0x007d968c    c1f805
                         pop                ecx                                            // 0x007d968f    59
                         {disp8} mov        cl, byte ptr [ebp + -0x01]                     // 0x007d9690    8a4dff
                         {disp32} lea       edi, dword ptr [eax * 0x4 + ___pioinfo]        // 0x007d9693    8d3c8560c9fa00
                         mov.s              eax, ebx                                       // 0x007d969a    8bc3
                         or                 cl, 1                                          // 0x007d969c    80c901
                         and                eax, 0x1f                                      // 0x007d969f    83e01f
                         {disp8} mov        byte ptr [ebp + 0x0b], cl                      // 0x007d96a2    884d0b
                         lea                esi, dword ptr [eax + eax * 0x8]               // 0x007d96a5    8d34c0
                         mov                eax, dword ptr [edi]                           // 0x007d96a8    8b07
                         shl                esi, 2                                         // 0x007d96aa    c1e602
                         and                byte ptr [ebp + 0x0b], 0x48                    // 0x007d96ad    80650b48
                         {disp8} mov        byte ptr [eax + esi * 0x1 + 0x04], cl          // 0x007d96b1    884c3004
                         {disp8} jne        _jmp_addr_0x007d972f                           // 0x007d96b5    7578
                         test               cl, -0x80                                      // 0x007d96b7    f6c180
                         {disp8} je         _jmp_addr_0x007d972f                           // 0x007d96ba    7473
                         test               byte ptr [ebp + 0x0c], 0x02                    // 0x007d96bc    f6450c02
                         {disp8} je         _jmp_addr_0x007d972f                           // 0x007d96c0    746d
                         push               0x2                                            // 0x007d96c2    6a02
                         push               -0x1                                           // 0x007d96c4    6aff
                         push               ebx                                            // 0x007d96c6    53
                         call               __lseek_lk                                     // 0x007d96c7    e812b7ffff
                         add                esp, 0x0c                                      // 0x007d96cc    83c40c
                         cmp                eax, -0x01                                     // 0x007d96cf    83f8ff
                         {disp8} mov        dword ptr [ebp + -0x10], eax                   // 0x007d96d2    8945f0
                         {disp8} jne        _jmp_addr_0x007d96f0                           // 0x007d96d5    7519
                         call               ___doserrno                                    // 0x007d96d7    e8aef9feff
                         cmp                dword ptr [eax], 0x00000083                    // 0x007d96dc    813883000000
                         {disp8} je         _jmp_addr_0x007d972f                           // 0x007d96e2    744b
_jmp_addr_0x007d96e4:    push               ebx                                            // 0x007d96e4    53
                         call               __close                                        // 0x007d96e5    e80276ffff
                         pop                ecx                                            // 0x007d96ea    59
                         or                 esi, 0xffffffff                                // 0x007d96eb    83ceff
                         {disp8} jmp        _jmp_addr_0x007d9748                           // 0x007d96ee    eb58
_jmp_addr_0x007d96f0:    and                byte ptr [ebp + 0x13], 0x00                    // 0x007d96f0    80651300
                         {disp8} lea        eax, dword ptr [ebp + 0x13]                    // 0x007d96f4    8d4513
                         push               0x1                                            // 0x007d96f7    6a01
                         push               eax                                            // 0x007d96f9    50
                         push               ebx                                            // 0x007d96fa    53
                         call               __read_lk                                      // 0x007d96fb    e8dd87ffff
                         add                esp, 0x0c                                      // 0x007d9700    83c40c
                         test               eax, eax                                       // 0x007d9703    85c0
                         {disp8} jne        _jmp_addr_0x007d971d                           // 0x007d9705    7516
                         cmp                byte ptr [ebp + 0x13], 0x1a                    // 0x007d9707    807d131a
                         {disp8} jne        _jmp_addr_0x007d971d                           // 0x007d970b    7510
                         push               dword ptr [ebp + -0x10]                        // 0x007d970d    ff75f0
                         push               ebx                                            // 0x007d9710    53
                         call               __chsize_lk                                    // 0x007d9711    e84a160000
                         pop                ecx                                            // 0x007d9716    59
                         cmp                eax, -0x01                                     // 0x007d9717    83f8ff
                         pop                ecx                                            // 0x007d971a    59
                         {disp8} je         _jmp_addr_0x007d96e4                           // 0x007d971b    74c7
_jmp_addr_0x007d971d:    push               0x0                                            // 0x007d971d    6a00
                         push               0x0                                            // 0x007d971f    6a00
                         push               ebx                                            // 0x007d9721    53
                         call               __lseek_lk                                     // 0x007d9722    e8b7b6ffff
                         add                esp, 0x0c                                      // 0x007d9727    83c40c
                         cmp                eax, -0x01                                     // 0x007d972a    83f8ff
                         {disp8} je         _jmp_addr_0x007d96e4                           // 0x007d972d    74b5
_jmp_addr_0x007d972f:    cmp                byte ptr [ebp + 0x0b], 0x00                    // 0x007d972f    807d0b00
                         {disp8} jne        _jmp_addr_0x007d9746                           // 0x007d9733    7511
                         test               byte ptr [ebp + 0x0c], 0x08                    // 0x007d9735    f6450c08
                         {disp8} je         _jmp_addr_0x007d9746                           // 0x007d9739    740b
                         mov                eax, dword ptr [edi]                           // 0x007d973b    8b07
                         or                 byte ptr [eax + esi + 4], 0x20                 // 0x007d973d    804c300420
                         {disp8} lea        eax, dword ptr [eax + esi * 0x1 + 0x04]        // 0x007d9742    8d443004
_jmp_addr_0x007d9746:    mov.s              esi, ebx                                       // 0x007d9746    8bf3
_jmp_addr_0x007d9748:    push               ebx                                            // 0x007d9748    53
                         call               __unlock_fhandle                               // 0x007d9749    e86e030000
                         pop                ecx                                            // 0x007d974e    59
                         mov.s              eax, esi                                       // 0x007d974f    8bc6
_jmp_addr_0x007d9751:    pop                edi                                            // 0x007d9751    5f
                         pop                esi                                            // 0x007d9752    5e
                         pop                ebx                                            // 0x007d9753    5b
                         leave                                                             // 0x007d9754    c9
                         ret                                                               // 0x007d9755    c3
_jmp_addr_0x007d9756:    push               ecx                                            // 0x007d9756    51
                         push               ecx                                            // 0x007d9757    51
                         push               ebx                                            // 0x007d9758    53
                         push               ebp                                            // 0x007d9759    55
                         push               esi                                            // 0x007d975a    56
                         push               edi                                            // 0x007d975b    57
                         push               0x12                                           // 0x007d975c    6a12
                         or                 edi, 0xffffffff                                // 0x007d975e    83cfff
                         call               __lock                                         // 0x007d9761    e8501fffff
                         xor.s              ebx, ebx                                       // 0x007d9766    33db
                         pop                ecx                                            // 0x007d9768    59
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x007d9769    895c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                    // 0x007d976d    895c2414
                         mov                ebp, OFFSET ___pioinfo                         // 0x007d9771    bd60c9fa00
_jmp_addr_0x007d9776:    {disp8} mov        esi, dword ptr [ebp + 0x00]                    // 0x007d9776    8b7500
                         test               esi, esi                                       // 0x007d9779    85f6
                         {disp32} je        _jmp_addr_0x007d981a                           // 0x007d977b    0f8499000000
                         {disp32} lea       eax, dword ptr [esi + 0x00000480]              // 0x007d9781    8d8680040000
_jmp_addr_0x007d9787:    cmp.s              esi, eax                                       // 0x007d9787    3bf0
                         {disp8} jae        _jmp_addr_0x007d97ff                           // 0x007d9789    7374
                         test               byte ptr [esi + 0x04], 0x01                    // 0x007d978b    f6460401
                         {disp8} jne        _jmp_addr_0x007d97d5                           // 0x007d978f    7544
                         cmp                dword ptr [esi + 0x08], 0x00                   // 0x007d9791    837e0800
                         {disp8} jne        _jmp_addr_0x007d97ba                           // 0x007d9795    7523
                         push               0x11                                           // 0x007d9797    6a11
                         call               __lock                                         // 0x007d9799    e8181fffff
                         cmp                dword ptr [esi + 0x08], 0x00                   // 0x007d979e    837e0800
                         pop                ecx                                            // 0x007d97a2    59
                         {disp8} jne        _jmp_addr_0x007d97b2                           // 0x007d97a3    750d
                         {disp8} lea        eax, dword ptr [esi + 0x0c]                    // 0x007d97a5    8d460c
                         push               eax                                            // 0x007d97a8    50
                         call               dword ptr [__imp__InitializeCriticalSection@4] // 0x007d97a9    ff157c918a00
                         {disp8} inc        dword ptr [esi + 0x08]                         // 0x007d97af    ff4608
_jmp_addr_0x007d97b2:    push               0x11                                           // 0x007d97b2    6a11
                         call               __unlock                                       // 0x007d97b4    e85e1fffff
                         pop                ecx                                            // 0x007d97b9    59
_jmp_addr_0x007d97ba:    {disp8} lea        ebx, dword ptr [esi + 0x0c]                    // 0x007d97ba    8d5e0c
                         push               ebx                                            // 0x007d97bd    53
                         call               dword ptr [__imp__EnterCriticalSection@4]      // 0x007d97be    ff1580918a00
                         test               byte ptr [esi + 0x04], 0x01                    // 0x007d97c4    f6460401
                         {disp8} je         _jmp_addr_0x007d97e2                           // 0x007d97c8    7418
                         push               ebx                                            // 0x007d97ca    53
                         call               dword ptr [__imp__LeaveCriticalSection@4]      // 0x007d97cb    ff1584918a00
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007d97d1    8b5c2410
_jmp_addr_0x007d97d5:    {disp8} mov        eax, dword ptr [ebp + 0x00]                    // 0x007d97d5    8b4500
                         add                esi, 0x24                                      // 0x007d97d8    83c624
                         add                eax, 0x00000480                                // 0x007d97db    0580040000
                         {disp8} jmp        _jmp_addr_0x007d9787                           // 0x007d97e0    eba5
_jmp_addr_0x007d97e2:    or                 dword ptr [esi], 0xffffffff                    // 0x007d97e2    830eff
                         mov.s              eax, esi                                       // 0x007d97e5    8bc6
                         sub                eax, dword ptr [ebp + 0x00]                    // 0x007d97e7    2b4500
                         push               0x24                                           // 0x007d97ea    6a24
                         pop                ecx                                            // 0x007d97ec    59
                         cdq                                                               // 0x007d97ed    99
                         idiv               ecx                                            // 0x007d97ee    f7f9
                         mov.s              edi, eax                                       // 0x007d97f0    8bf8
                         add                edi, dword ptr [esp + 0x14]                    // 0x007d97f2    037c2414
                         cmp                edi, -0x01                                     // 0x007d97f6    83ffff
                         {disp8} jne        _jmp_addr_0x007d9868                           // 0x007d97f9    756d
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                    // 0x007d97fb    8b5c2410
_jmp_addr_0x007d97ff:    add                dword ptr [esp + 0x14], 0x20                   // 0x007d97ff    8344241420
                         add                ebp, 0x04                                      // 0x007d9804    83c504
                         inc                ebx                                            // 0x007d9807    43
                         cmp                ebp, 0x00faca60                                // 0x007d9808    81fd60cafa00
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x007d980e    895c2410
                         {disp32} jl        _jmp_addr_0x007d9776                           // 0x007d9812    0f8c5effffff
                         {disp8} jmp        _jmp_addr_0x007d9868                           // 0x007d9818    eb4e
_jmp_addr_0x007d981a:    mov                esi, 0x00000480                                // 0x007d981a    be80040000
                         push               esi                                            // 0x007d981f    56
                         call               _malloc                                        // 0x007d9820    e827cefeff
                         test               eax, eax                                       // 0x007d9825    85c0
                         pop                ecx                                            // 0x007d9827    59
                         {disp8} je         _jmp_addr_0x007d9868                           // 0x007d9828    743e
                         add                dword ptr [data_bytes + 0x5e6a60], 0x20        // 0x007d982a    830560cafa0020
                         {disp32} lea       ecx, dword ptr [ebx * 0x4 + ___pioinfo]        // 0x007d9831    8d0c9d60c9fa00
                         {disp32} lea       edx, dword ptr [eax + 0x00000480]              // 0x007d9838    8d9080040000
                         mov                dword ptr [ecx], eax                           // 0x007d983e    8901
_jmp_addr_0x007d9840:    cmp.s              eax, edx                                       // 0x007d9840    3bc2
                         {disp8} jae        _jmp_addr_0x007d985c                           // 0x007d9842    7318
                         and                byte ptr [eax + 0x04], 0x00                    // 0x007d9844    80600400
                         or                 dword ptr [eax], 0xffffffff                    // 0x007d9848    8308ff
                         and                dword ptr [eax + 0x08], 0x00                   // 0x007d984b    83600800
                         {disp8} mov        byte ptr [eax + 0x05], 0x0a                    // 0x007d984f    c640050a
                         mov                edx, dword ptr [ecx]                           // 0x007d9853    8b11
                         add                eax, 0x24                                      // 0x007d9855    83c024
                         add.s              edx, esi                                       // 0x007d9858    03d6
                         {disp8} jmp        _jmp_addr_0x007d9840                           // 0x007d985a    ebe4
_jmp_addr_0x007d985c:    shl                ebx, 5                                         // 0x007d985c    c1e305
                         mov.s              edi, ebx                                       // 0x007d985f    8bfb
                         push               edi                                            // 0x007d9861    57
                         call               __lock_fhandle                                 // 0x007d9862    e8f6010000
                         pop                ecx                                            // 0x007d9867    59
_jmp_addr_0x007d9868:    push               0x12                                           // 0x007d9868    6a12
                         call               __unlock                                       // 0x007d986a    e8a81effff
                         pop                ecx                                            // 0x007d986f    59
                         mov.s              eax, edi                                       // 0x007d9870    8bc7
                         pop                edi                                            // 0x007d9872    5f
                         pop                esi                                            // 0x007d9873    5e
                         pop                ebp                                            // 0x007d9874    5d
                         pop                ebx                                            // 0x007d9875    5b
                         pop                ecx                                            // 0x007d9876    59
                         pop                ecx                                            // 0x007d9877    59
                         ret                                                               // 0x007d9878    c3
_jmp_addr_0x007d9879:    {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x007d9879    8b4c2404
                         push               esi                                            // 0x007d987d    56
                         cmp                ecx, dword ptr [data_bytes + 0x5e6a60]         // 0x007d987e    3b0d60cafa00
                         push               edi                                            // 0x007d9884    57
                         {disp8} jae        _jmp_addr_0x007d98dc                           // 0x007d9885    7355
                         mov.s              eax, ecx                                       // 0x007d9887    8bc1
                         sar                eax, 5                                         // 0x007d9889    c1f805
                         {disp32} lea       edi, dword ptr [eax * 0x4 + ___pioinfo]        // 0x007d988c    8d3c8560c9fa00
                         mov.s              eax, ecx                                       // 0x007d9893    8bc1
                         and                eax, 0x1f                                      // 0x007d9895    83e01f
                         lea                esi, dword ptr [eax + eax * 0x8]               // 0x007d9898    8d34c0
                         mov                eax, dword ptr [edi]                           // 0x007d989b    8b07
                         shl                esi, 2                                         // 0x007d989d    c1e602
                         cmp                dword ptr [eax + esi * 0x1], -0x01             // 0x007d98a0    833c30ff
                         {disp8} jne        _jmp_addr_0x007d98dc                           // 0x007d98a4    7536
                         cmp                dword ptr [data_bytes + 0x267674], 0x01        // 0x007d98a6    833d74d6c20001
                         push               ebx                                            // 0x007d98ad    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                    // 0x007d98ae    8b5c2414
                         {disp8} jne        _jmp_addr_0x007d98d2                           // 0x007d98b2    751e
                         sub                ecx, 0x00                                      // 0x007d98b4    83e900
                         {disp8} je         _jmp_addr_0x007d98c9                           // 0x007d98b7    7410
                         dec                ecx                                            // 0x007d98b9    49
                         {disp8} je         _jmp_addr_0x007d98c4                           // 0x007d98ba    7408
                         dec                ecx                                            // 0x007d98bc    49
                         {disp8} jne        _jmp_addr_0x007d98d2                           // 0x007d98bd    7513
                         push               ebx                                            // 0x007d98bf    53
                         push               -0xc                                           // 0x007d98c0    6af4
                         {disp8} jmp        _jmp_addr_0x007d98cc                           // 0x007d98c2    eb08
_jmp_addr_0x007d98c4:    push               ebx                                            // 0x007d98c4    53
                         push               -0xb                                           // 0x007d98c5    6af5
                         {disp8} jmp        _jmp_addr_0x007d98cc                           // 0x007d98c7    eb03
_jmp_addr_0x007d98c9:    push               ebx                                            // 0x007d98c9    53
                         push               -0xa                                           // 0x007d98ca    6af6
_jmp_addr_0x007d98cc:    call               dword ptr [__imp__SetStdHandle@4]              // 0x007d98cc    ff15a8918a00
_jmp_addr_0x007d98d2:    mov                eax, dword ptr [edi]                           // 0x007d98d2    8b07
                         mov                dword ptr [eax + esi * 0x1], ebx               // 0x007d98d4    891c30
                         xor.s              eax, eax                                       // 0x007d98d7    33c0
                         pop                ebx                                            // 0x007d98d9    5b
                         {disp8} jmp        _jmp_addr_0x007d98f2                           // 0x007d98da    eb16
_jmp_addr_0x007d98dc:    call               __errno                                        // 0x007d98dc    e8a0f7feff
                         mov                dword ptr [eax], 0x00000009                    // 0x007d98e1    c70009000000
                         call               ___doserrno                                    // 0x007d98e7    e89ef7feff
                         and                dword ptr [eax], 0x00                          // 0x007d98ec    832000
                         or                 eax, -0x1                                      // 0x007d98ef    83c8ff
_jmp_addr_0x007d98f2:    pop                edi                                            // 0x007d98f2    5f
                         pop                esi                                            // 0x007d98f3    5e
                         ret                                                               // 0x007d98f4    c3
__free_osfhnd:           {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x007d98f5    8b4c2404
                         push               esi                                            // 0x007d98f9    56
                         cmp                ecx, dword ptr [data_bytes + 0x5e6a60]         // 0x007d98fa    3b0d60cafa00
                         push               edi                                            // 0x007d9900    57
                         {disp8} jae        _jmp_addr_0x007d995b                           // 0x007d9901    7358
                         mov.s              eax, ecx                                       // 0x007d9903    8bc1
                         sar                eax, 5                                         // 0x007d9905    c1f805
                         {disp32} lea       edi, dword ptr [eax * 0x4 + ___pioinfo]        // 0x007d9908    8d3c8560c9fa00
                         mov.s              eax, ecx                                       // 0x007d990f    8bc1
                         and                eax, 0x1f                                      // 0x007d9911    83e01f
                         lea                esi, dword ptr [eax + eax * 0x8]               // 0x007d9914    8d34c0
                         mov                eax, dword ptr [edi]                           // 0x007d9917    8b07
                         shl                esi, 2                                         // 0x007d9919    c1e602
                         add.s              eax, esi                                       // 0x007d991c    03c6
                         test               byte ptr [eax + 0x04], 0x01                    // 0x007d991e    f6400401
                         {disp8} je         _jmp_addr_0x007d995b                           // 0x007d9922    7437
                         cmp                dword ptr [eax], -0x01                         // 0x007d9924    8338ff
                         {disp8} je         _jmp_addr_0x007d995b                           // 0x007d9927    7432
                         cmp                dword ptr [data_bytes + 0x267674], 0x01        // 0x007d9929    833d74d6c20001
                         {disp8} jne        _jmp_addr_0x007d9951                           // 0x007d9930    751f
                         xor.s              eax, eax                                       // 0x007d9932    33c0
                         sub.s              ecx, eax                                       // 0x007d9934    2bc8
                         {disp8} je         _jmp_addr_0x007d9948                           // 0x007d9936    7410
                         dec                ecx                                            // 0x007d9938    49
                         {disp8} je         _jmp_addr_0x007d9943                           // 0x007d9939    7408
                         dec                ecx                                            // 0x007d993b    49
                         {disp8} jne        _jmp_addr_0x007d9951                           // 0x007d993c    7513
                         push               eax                                            // 0x007d993e    50
                         push               -0xc                                           // 0x007d993f    6af4
                         {disp8} jmp        _jmp_addr_0x007d994b                           // 0x007d9941    eb08
_jmp_addr_0x007d9943:    push               eax                                            // 0x007d9943    50
                         push               -0xb                                           // 0x007d9944    6af5
                         {disp8} jmp        _jmp_addr_0x007d994b                           // 0x007d9946    eb03
_jmp_addr_0x007d9948:    push               eax                                            // 0x007d9948    50
                         push               -0xa                                           // 0x007d9949    6af6
_jmp_addr_0x007d994b:    call               dword ptr [__imp__SetStdHandle@4]              // 0x007d994b    ff15a8918a00
_jmp_addr_0x007d9951:    mov                eax, dword ptr [edi]                           // 0x007d9951    8b07
                         or                 dword ptr [eax + esi], 0xffffffff              // 0x007d9953    830c30ff
                         xor.s              eax, eax                                       // 0x007d9957    33c0
                         {disp8} jmp        _jmp_addr_0x007d9971                           // 0x007d9959    eb16
_jmp_addr_0x007d995b:    call               __errno                                        // 0x007d995b    e821f7feff
                         mov                dword ptr [eax], 0x00000009                    // 0x007d9960    c70009000000
                         call               ___doserrno                                    // 0x007d9966    e81ff7feff
                         and                dword ptr [eax], 0x00                          // 0x007d996b    832000
                         or                 eax, -0x1                                      // 0x007d996e    83c8ff
_jmp_addr_0x007d9971:    pop                edi                                            // 0x007d9971    5f
                         pop                esi                                            // 0x007d9972    5e
                         ret                                                               // 0x007d9973    c3
__get_osfhandle:         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007d9974    8b442404
                         cmp                eax, dword ptr [data_bytes + 0x5e6a60]         // 0x007d9978    3b0560cafa00
                         {disp8} jae        _jmp_addr_0x007d999f                           // 0x007d997e    731f
                         mov.s              ecx, eax                                       // 0x007d9980    8bc8
                         and                eax, 0x1f                                      // 0x007d9982    83e01f
                         sar                ecx, 5                                         // 0x007d9985    c1f905
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007d9988    8d04c0
                         {disp32} mov       ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d998b    8b0c8d60c9fa00
                         test               byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007d9992    f644810401
                         lea                eax, dword ptr [ecx + eax * 0x4]               // 0x007d9997    8d0481
                         {disp8} je         _jmp_addr_0x007d999f                           // 0x007d999a    7403
                         mov                eax, dword ptr [eax]                           // 0x007d999c    8b00
                         ret                                                               // 0x007d999e    c3
_jmp_addr_0x007d999f:    call               __errno                                        // 0x007d999f    e8ddf6feff
                         mov                dword ptr [eax], 0x00000009                    // 0x007d99a4    c70009000000
                         call               ___doserrno                                    // 0x007d99aa    e8dbf6feff
                         and                dword ptr [eax], 0x00                          // 0x007d99af    832000
                         or                 eax, -0x1                                      // 0x007d99b2    83c8ff
                         ret                                                               // 0x007d99b5    c3
                         push               ebp                                            // 0x007d99b6    55
                         mov.s              ebp, esp                                       // 0x007d99b7    8bec
                         push               ebx                                            // 0x007d99b9    53
                         xor.s              bl, bl                                         // 0x007d99ba    32db
                         test               byte ptr [ebp + 0x0c], 0x08                    // 0x007d99bc    f6450c08
                         push               esi                                            // 0x007d99c0    56
                         {disp8} je         _jmp_addr_0x007d99c6                           // 0x007d99c1    7403
                         add                bl, 0x20                                       // 0x007d99c3    80c320
_jmp_addr_0x007d99c6:    test               byte ptr [ebp + 0x0d], 0x40                    // 0x007d99c6    f6450d40
                         {disp8} je         _jmp_addr_0x007d99cf                           // 0x007d99ca    7403
                         or                 bl, 0x80                                       // 0x007d99cc    80cb80
_jmp_addr_0x007d99cf:    test               byte ptr [ebp + 0x0c], -0x80                   // 0x007d99cf    f6450c80
                         {disp8} je         _jmp_addr_0x007d99d8                           // 0x007d99d3    7403
                         or                 bl, 0x10                                       // 0x007d99d5    80cb10
_jmp_addr_0x007d99d8:    push               dword ptr [ebp + 0x08]                         // 0x007d99d8    ff7508
                         call               dword ptr [__imp__GetFileType@4]               // 0x007d99db    ff15ac928a00
                         test               eax, eax                                       // 0x007d99e1    85c0
                         {disp8} jne        _jmp_addr_0x007d99f4                           // 0x007d99e3    750f
                         call               dword ptr [__imp__GetLastError@0]              // 0x007d99e5    ff15fc918a00
                         push               eax                                            // 0x007d99eb    50
                         call               __dosmaperr                                    // 0x007d99ec    e81df6feff
                         pop                ecx                                            // 0x007d99f1    59
                         {disp8} jmp        _jmp_addr_0x007d9a25                           // 0x007d99f2    eb31
_jmp_addr_0x007d99f4:    cmp                eax, 0x02                                      // 0x007d99f4    83f802
                         {disp8} jne        _jmp_addr_0x007d99fe                           // 0x007d99f7    7505
                         or                 bl, 0x40                                       // 0x007d99f9    80cb40
                         {disp8} jmp        _jmp_addr_0x007d9a06                           // 0x007d99fc    eb08
_jmp_addr_0x007d99fe:    cmp                eax, 0x03                                      // 0x007d99fe    83f803
                         {disp8} jne        _jmp_addr_0x007d9a06                           // 0x007d9a01    7503
                         or                 bl, 8                                          // 0x007d9a03    80cb08
_jmp_addr_0x007d9a06:    call               _jmp_addr_0x007d9756                           // 0x007d9a06    e84bfdffff
                         mov.s              esi, eax                                       // 0x007d9a0b    8bf0
                         cmp                esi, -0x01                                     // 0x007d9a0d    83feff
                         {disp8} jne        _jmp_addr_0x007d9a2a                           // 0x007d9a10    7518
                         call               __errno                                        // 0x007d9a12    e86af6feff
                         mov                dword ptr [eax], 0x00000018                    // 0x007d9a17    c70018000000
                         call               ___doserrno                                    // 0x007d9a1d    e868f6feff
                         and                dword ptr [eax], 0x00                          // 0x007d9a22    832000
_jmp_addr_0x007d9a25:    or                 eax, -0x1                                      // 0x007d9a25    83c8ff
                         {disp8} jmp        _jmp_addr_0x007d9a59                           // 0x007d9a28    eb2f
_jmp_addr_0x007d9a2a:    push               dword ptr [ebp + 0x08]                         // 0x007d9a2a    ff7508
                         push               esi                                            // 0x007d9a2d    56
                         call               _jmp_addr_0x007d9879                           // 0x007d9a2e    e846feffff
                         mov.s              ecx, esi                                       // 0x007d9a33    8bce
                         mov.s              eax, esi                                       // 0x007d9a35    8bc6
                         sar                ecx, 5                                         // 0x007d9a37    c1f905
                         and                eax, 0x1f                                      // 0x007d9a3a    83e01f
                         or                 bl, 1                                          // 0x007d9a3d    80cb01
                         {disp32} mov       ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d9a40    8b0c8d60c9fa00
                         push               esi                                            // 0x007d9a47    56
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007d9a48    8d04c0
                         {disp8} mov        byte ptr [ecx + eax * 0x4 + 0x04], bl          // 0x007d9a4b    885c8104
                         call               __unlock_fhandle                               // 0x007d9a4f    e868000000
                         add                esp, 0x0c                                      // 0x007d9a54    83c40c
                         mov.s              eax, esi                                       // 0x007d9a57    8bc6
_jmp_addr_0x007d9a59:    pop                esi                                            // 0x007d9a59    5e
                         pop                ebx                                            // 0x007d9a5a    5b
                         pop                ebp                                            // 0x007d9a5b    5d
                         ret                                                               // 0x007d9a5c    c3
__lock_fhandle:          {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007d9a5d    8b442404
                         push               ebx                                            // 0x007d9a61    53
                         mov.s              ecx, eax                                       // 0x007d9a62    8bc8
                         and                eax, 0x1f                                      // 0x007d9a64    83e01f
                         sar                ecx, 5                                         // 0x007d9a67    c1f905
                         push               esi                                            // 0x007d9a6a    56
                         push               edi                                            // 0x007d9a6b    57
                         {disp32} mov       esi, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d9a6c    8b348d60c9fa00
                         {disp32} lea       ebx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d9a73    8d1c8d60c9fa00
                         lea                edi, dword ptr [eax + eax * 0x8]               // 0x007d9a7a    8d3cc0
                         shl                edi, 2                                         // 0x007d9a7d    c1e702
                         add.s              esi, edi                                       // 0x007d9a80    03f7
                         cmp                dword ptr [esi + 0x08], 0x00                   // 0x007d9a82    837e0800
                         {disp8} jne        _jmp_addr_0x007d9aab                           // 0x007d9a86    7523
                         push               0x11                                           // 0x007d9a88    6a11
                         call               __lock                                          // 0x007d9a8a    e8271cffff
                         cmp                dword ptr [esi + 0x08], 0x00                   // 0x007d9a8f    837e0800
                         pop                ecx                                            // 0x007d9a93    59
                         {disp8} jne        _jmp_addr_0x007d9aa3                           // 0x007d9a94    750d
                         {disp8} lea        eax, dword ptr [esi + 0x0c]                    // 0x007d9a96    8d460c
                         push               eax                                            // 0x007d9a99    50
                         call               dword ptr [__imp__InitializeCriticalSection@4] // 0x007d9a9a    ff157c918a00
                         {disp8} inc        dword ptr [esi + 0x08]                         // 0x007d9aa0    ff4608
_jmp_addr_0x007d9aa3:    push               0x11                                           // 0x007d9aa3    6a11
                         call               __unlock                                       // 0x007d9aa5    e86d1cffff
                         pop                ecx                                            // 0x007d9aaa    59
_jmp_addr_0x007d9aab:    mov                eax, dword ptr [ebx]                           // 0x007d9aab    8b03
                         {disp8} lea        eax, dword ptr [eax + edi * 0x1 + 0x0c]        // 0x007d9aad    8d44380c
                         push               eax                                            // 0x007d9ab1    50
                         call               dword ptr [__imp__EnterCriticalSection@4]      // 0x007d9ab2    ff1580918a00
                         pop                edi                                            // 0x007d9ab8    5f
                         pop                esi                                            // 0x007d9ab9    5e
                         pop                ebx                                            // 0x007d9aba    5b
                         ret                                                               // 0x007d9abb    c3
__unlock_fhandle:        {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007d9abc    8b442404
                         mov.s              ecx, eax                                       // 0x007d9ac0    8bc8
                         and                eax, 0x1f                                      // 0x007d9ac2    83e01f
                         sar                ecx, 5                                         // 0x007d9ac5    c1f905
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x007d9ac8    8d04c0
                         {disp32} mov       ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007d9acb    8b0c8d60c9fa00
                         {disp8} lea        eax, dword ptr [ecx + eax * 0x4 + 0x0c]        // 0x007d9ad2    8d44810c
                         push               eax                                            // 0x007d9ad6    50
                         call               dword ptr [__imp__LeaveCriticalSection@4]      // 0x007d9ad7    ff1584918a00
                         ret                                                               // 0x007d9add    c3
__matherr:               xor.s              eax, eax                                       // 0x007d9ade    33c0
                         ret                                                               // 0x007d9ae0    c3
__87except:              push               ebp                                            // 0x007d9ae1    55
                         mov.s              ebp, esp                                       // 0x007d9ae2    8bec
                         sub                esp, 0x58                                      // 0x007d9ae4    83ec58
                         {disp8} mov        eax, dword ptr [ebp + 0x10]                    // 0x007d9ae7    8b4510
                         push               ebx                                            // 0x007d9aea    53
                         push               esi                                            // 0x007d9aeb    56
                         {disp8} mov        esi, dword ptr [ebp + 0x0c]                    // 0x007d9aec    8b750c
                         movzx              ecx, word ptr [eax]                            // 0x007d9aef    0fb708
                         mov                eax, dword ptr [esi]                           // 0x007d9af2    8b06
                         push               edi                                            // 0x007d9af4    57
                         dec                eax                                            // 0x007d9af5    48
                         {disp8} mov        dword ptr [ebp + 0x10], ecx                    // 0x007d9af6    894d10
                         {disp8} je         _jmp_addr_0x007d9b26                           // 0x007d9af9    742b
                         dec                eax                                            // 0x007d9afb    48
                         {disp8} je         _jmp_addr_0x007d9b22                           // 0x007d9afc    7424
                         dec                eax                                            // 0x007d9afe    48
                         {disp8} je         _jmp_addr_0x007d9b1e                           // 0x007d9aff    741d
                         dec                eax                                            // 0x007d9b01    48
                         {disp8} je         _jmp_addr_0x007d9b1a                           // 0x007d9b02    7416
                         dec                eax                                            // 0x007d9b04    48
                         {disp8} je         _jmp_addr_0x007d9b26                           // 0x007d9b05    741f
                         dec                eax                                            // 0x007d9b07    48
                         dec                eax                                            // 0x007d9b08    48
                         {disp8} je         _jmp_addr_0x007d9b12                           // 0x007d9b09    7407
                         dec                eax                                            // 0x007d9b0b    48
                         {disp8} jne        _jmp_addr_0x007d9b7c                           // 0x007d9b0c    756e
                         push               0x10                                           // 0x007d9b0e    6a10
                         {disp8} jmp        _jmp_addr_0x007d9b28                           // 0x007d9b10    eb16
_jmp_addr_0x007d9b12:    mov                dword ptr [esi], 0x00000001                    // 0x007d9b12    c70601000000
                         {disp8} jmp        _jmp_addr_0x007d9b7c                           // 0x007d9b18    eb62
_jmp_addr_0x007d9b1a:    push               0x12                                           // 0x007d9b1a    6a12
                         {disp8} jmp        _jmp_addr_0x007d9b28                           // 0x007d9b1c    eb0a
_jmp_addr_0x007d9b1e:    push               0x11                                           // 0x007d9b1e    6a11
                         {disp8} jmp        _jmp_addr_0x007d9b28                           // 0x007d9b20    eb06
_jmp_addr_0x007d9b22:    push               0x4                                            // 0x007d9b22    6a04
                         {disp8} jmp        _jmp_addr_0x007d9b28                           // 0x007d9b24    eb02
_jmp_addr_0x007d9b26:    push               0x8                                            // 0x007d9b26    6a08
_jmp_addr_0x007d9b28:    pop                ebx                                            // 0x007d9b28    5b
                         {disp8} lea        edi, dword ptr [esi + 0x18]                    // 0x007d9b29    8d7e18
                         push               ecx                                            // 0x007d9b2c    51
                         push               edi                                            // 0x007d9b2d    57
                         push               ebx                                            // 0x007d9b2e    53
                         call               __handle_exc                                   // 0x007d9b2f    e8f57affff
                         add                esp, 0x0c                                      // 0x007d9b34    83c40c
                         test               eax, eax                                       // 0x007d9b37    85c0
                         {disp8} jne        _jmp_addr_0x007d9b7c                           // 0x007d9b39    7541
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                    // 0x007d9b3b    8b4508
                         cmp                eax, 0x10                                      // 0x007d9b3e    83f810
                         {disp8} je         _jmp_addr_0x007d9b53                           // 0x007d9b41    7410
                         cmp                eax, 0x16                                      // 0x007d9b43    83f816
                         {disp8} je         _jmp_addr_0x007d9b53                           // 0x007d9b46    740b
                         cmp                eax, 0x1d                                      // 0x007d9b48    83f81d
                         {disp8} je         _jmp_addr_0x007d9b53                           // 0x007d9b4b    7406
                         and                dword ptr [ebp + -0x20], 0xfffffffe            // 0x007d9b4d    8365e0fe
                         {disp8} jmp        _jmp_addr_0x007d9b65                           // 0x007d9b51    eb12
_jmp_addr_0x007d9b53:    {disp8} mov        ecx, dword ptr [ebp + -0x20]                   // 0x007d9b53    8b4de0
                         {disp8} fld        qword ptr [esi + 0x10]                         // 0x007d9b56    dd4610
                         and                ecx, 0xffffffe3                                // 0x007d9b59    83e1e3
                         {disp8} fstp       qword ptr [ebp + -0x30]                        // 0x007d9b5c    dd5dd0
                         or                 ecx, 3                                         // 0x007d9b5f    83c903
                         {disp8} mov        dword ptr [ebp + -0x20], ecx                   // 0x007d9b62    894de0
_jmp_addr_0x007d9b65:    {disp8} lea        ecx, dword ptr [esi + 0x08]                    // 0x007d9b65    8d4e08
                         push               edi                                            // 0x007d9b68    57
                         push               ecx                                            // 0x007d9b69    51
                         push               eax                                            // 0x007d9b6a    50
                         {disp8} lea        eax, dword ptr [ebp + 0x10]                    // 0x007d9b6b    8d4510
                         push               ebx                                            // 0x007d9b6e    53
                         push               eax                                            // 0x007d9b6f    50
                         {disp8} lea        eax, dword ptr [ebp + -0x58]                   // 0x007d9b70    8d45a8
                         push               eax                                            // 0x007d9b73    50
                         call               __raise_exc                                    // 0x007d9b74    e8fd77ffff
                         add                esp, 0x18                                      // 0x007d9b79    83c418
_jmp_addr_0x007d9b7c:    push               0x0000ffff                                     // 0x007d9b7c    68ffff0000
                         push               dword ptr [ebp + 0x10]                         // 0x007d9b81    ff7510
                         call               __ctrlfp                                       // 0x007d9b84    e8d67dffff
                         cmp                dword ptr [esi], 0x08                          // 0x007d9b89    833e08
                         pop                ecx                                            // 0x007d9b8c    59
                         pop                ecx                                            // 0x007d9b8d    59
                         {disp8} je         _jmp_addr_0x007d9ba4                           // 0x007d9b8e    7414
                         cmp                dword ptr [data_bytes + 0x26ac40], 0x00        // 0x007d9b90    833d400cc30000
                         {disp8} jne        _jmp_addr_0x007d9ba4                           // 0x007d9b97    750b
                         push               esi                                            // 0x007d9b99    56
                         call               __matherr                                      // 0x007d9b9a    e83fffffff
                         test               eax, eax                                       // 0x007d9b9f    85c0
                         pop                ecx                                            // 0x007d9ba1    59
                         {disp8} jne        _jmp_addr_0x007d9bac                           // 0x007d9ba2    7508
_jmp_addr_0x007d9ba4:    push               dword ptr [esi]                                // 0x007d9ba4    ff36
                         call               __set_errno                                    // 0x007d9ba6    e81d7dffff
                         pop                ecx                                            // 0x007d9bab    59
_jmp_addr_0x007d9bac:    pop                edi                                            // 0x007d9bac    5f
                         pop                esi                                            // 0x007d9bad    5e
                         pop                ebx                                            // 0x007d9bae    5b
                         leave                                                             // 0x007d9baf    c9
                         ret                                                               // 0x007d9bb0    c3
?_ValidateRead@@YAHPBXI@Z:    push               esi                                            // 0x007d9bb1    56
                         push               0x1                                            // 0x007d9bb2    6a01
                         pop                esi                                            // 0x007d9bb4    5e
                         push               dword ptr [esp + 0x0c]                         // 0x007d9bb5    ff74240c
                         push               dword ptr [esp + 0x0c]                         // 0x007d9bb9    ff74240c
                         call               dword ptr [__imp__IsBadReadPtr@8]              // 0x007d9bbd    ff1508928a00
                         test               eax, eax                                       // 0x007d9bc3    85c0
                         {disp8} je         _jmp_addr_0x007d9bc9                           // 0x007d9bc5    7402
                         xor.s              esi, esi                                       // 0x007d9bc7    33f6
_jmp_addr_0x007d9bc9:    mov.s              eax, esi                                       // 0x007d9bc9    8bc6
                         pop                esi                                            // 0x007d9bcb    5e
                         ret                                                               // 0x007d9bcc    c3
?_ValidateWrite@@YAHPAXI@Z:    push               esi                                            // 0x007d9bcd    56
                         push               0x1                                            // 0x007d9bce    6a01
                         pop                esi                                            // 0x007d9bd0    5e
                         push               dword ptr [esp + 0x0c]                         // 0x007d9bd1    ff74240c
                         push               dword ptr [esp + 0x0c]                         // 0x007d9bd5    ff74240c
                         call               dword ptr [__imp__IsBadWritePtr@8]             // 0x007d9bd9    ff15dc928a00
                         test               eax, eax                                       // 0x007d9bdf    85c0
                         {disp8} je         _jmp_addr_0x007d9be5                           // 0x007d9be1    7402
                         xor.s              esi, esi                                       // 0x007d9be3    33f6
_jmp_addr_0x007d9be5:    mov.s              eax, esi                                       // 0x007d9be5    8bc6
                         pop                esi                                            // 0x007d9be7    5e
                         ret                                                               // 0x007d9be8    c3
?_ValidateExecute@@YAHP6GHXZ@Z:    push               esi                                            // 0x007d9be9    56
                         push               0x1                                            // 0x007d9bea    6a01
                         pop                esi                                            // 0x007d9bec    5e
                         push               dword ptr [esp + 0x08]                         // 0x007d9bed    ff742408
                         call               dword ptr [__imp__IsBadCodePtr@4]              // 0x007d9bf1    ff1564928a00
                         test               eax, eax                                       // 0x007d9bf7    85c0
                         {disp8} je         _jmp_addr_0x007d9bfd                           // 0x007d9bf9    7402
                         xor.s              esi, esi                                       // 0x007d9bfb    33f6
_jmp_addr_0x007d9bfd:    mov.s              eax, esi                                       // 0x007d9bfd    8bc6
                         pop                esi                                            // 0x007d9bff    5e
                         ret                                                               // 0x007d9c00    c3
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
                         call             _jmp_addr_0x007d8d26                          // 0x007da0f9    e828ecffff
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

