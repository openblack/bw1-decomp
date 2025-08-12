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

