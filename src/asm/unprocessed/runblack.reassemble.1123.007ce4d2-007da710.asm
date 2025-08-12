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

