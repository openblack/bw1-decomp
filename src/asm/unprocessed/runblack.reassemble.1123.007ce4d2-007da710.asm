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

