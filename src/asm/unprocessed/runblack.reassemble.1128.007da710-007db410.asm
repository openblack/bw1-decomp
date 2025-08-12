.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _atexit
.extern _malloc
.extern _free
.extern __chkstk
.extern __errno
.extern ___doserrno
.extern _strncpy
.extern _strchr
.extern _calloc
.extern __tolower_lk
.extern _strlen
.extern _memset
.extern __lock
.extern __unlock
.extern __write_lk
.extern __lseek_lk
.extern _strcpy
.extern __get_osfhandle
.extern __lock_fhandle
.extern __unlock_fhandle
.extern _jmp_addr_0x007dc8b0
.extern _jmp_addr_0x007dc920
.extern _jmp_addr_0x007dcaf0
.extern @__ct__8LHScreenFv@4
.extern @__dt__8LHScreenFv@4
.extern _jmp_addr_0x007de6f0
.extern _jmp_addr_0x007de820
.extern _jmp_addr_0x007de8d0
.extern _jmp_addr_0x007dece0
.extern _jmp_addr_0x007ded10
.extern _jmp_addr_0x007e4b80
.extern @__ct__7LHMouseFv@4
.extern @Draw__7LHMouseF16LH_SCREEN_BUFFER19LH_MOUSE_EVENT_TYPE@16
.extern _jmp_addr_0x007e5b20
.extern _jmp_addr_0x007ef780
.extern _jmp_addr_0x007f3b80
.extern _jmp_addr_0x007f3d20
.extern _jmp_addr_0x007f42b0
.extern __getpid

.globl ___crtGetLocaleInfoW
.globl ___crtGetLocaleInfoA
.globl __setmode

// w_loc.obj
___crtGetLocaleInfoW:
                         push              ebp                                            // 0x007db121    55
                         mov.s             ebp, esp                                       // 0x007db122    8bec
                         push              -0x1                                           // 0x007db124    6aff
                         push              0x009a1600                                     // 0x007db126    6800169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db12b    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db130    64a100000000
                         push              eax                                            // 0x007db136    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db137    64892500000000
                         sub               esp, 0x14                                      // 0x007db13e    83ec14
                         push              ebx                                            // 0x007db141    53
                         push              esi                                            // 0x007db142    56
                         push              edi                                            // 0x007db143    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db144    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be570]         // 0x007db147    a17045e800
                         xor.s             edi, edi                                       // 0x007db14c    33ff
                         cmp.s             eax, edi                                       // 0x007db14e    3bc7
                         {disp8} jne       _jmp_addr_0x007db180                           // 0x007db150    752e
                         push              edi                                            // 0x007db152    57
                         push              edi                                            // 0x007db153    57
                         push              0x1                                            // 0x007db154    6a01
                         push              edi                                            // 0x007db156    57
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db157    ff1560928a00
                         test              eax, eax                                       // 0x007db15d    85c0
                         {disp8} je        _jmp_addr_0x007db165                           // 0x007db15f    7404
                         push              0x1                                            // 0x007db161    6a01
                         {disp8} jmp       _jmp_addr_0x007db17a                           // 0x007db163    eb15
_jmp_addr_0x007db165:    push              edi                                            // 0x007db165    57
                         push              edi                                            // 0x007db166    57
                         push              0x1                                            // 0x007db167    6a01
                         push              edi                                            // 0x007db169    57
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db16a    ff1580928a00
                         test              eax, eax                                       // 0x007db170    85c0
                         {disp32} je       _jmp_addr_0x007db220                           // 0x007db172    0f84a8000000
                         push              0x2                                            // 0x007db178    6a02
_jmp_addr_0x007db17a:    pop               eax                                            // 0x007db17a    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be570], eax         // 0x007db17b    a37045e800
_jmp_addr_0x007db180:    cmp               eax, 0x01                                      // 0x007db180    83f801
                         {disp8} jne       _jmp_addr_0x007db19c                           // 0x007db183    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db185    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db188    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db18b    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db18e    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db191    ff1560928a00
                         {disp32} jmp      _jmp_addr_0x007db222                           // 0x007db197    e986000000
_jmp_addr_0x007db19c:    cmp               eax, 0x02                                      // 0x007db19c    83f802
                         {disp8} jne       _jmp_addr_0x007db220                           // 0x007db19f    757f
                         cmp               dword ptr [ebp + 0x18], edi                    // 0x007db1a1    397d18
                         {disp8} jne       _jmp_addr_0x007db1ae                           // 0x007db1a4    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db1a6    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db1ab    894518
_jmp_addr_0x007db1ae:    push              edi                                            // 0x007db1ae    57
                         push              edi                                            // 0x007db1af    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1b0    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1b3    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db1b6    ff1580928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db1bc    8945e4
                         cmp.s             eax, edi                                       // 0x007db1bf    3bc7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1c1    745d
                         {disp8} mov       dword ptr [ebp + -0x04], edi                   // 0x007db1c3    897dfc
                         add               eax, 0x03                                      // 0x007db1c6    83c003
                         and               al, -0x04                                      // 0x007db1c9    24fc
                         call              __chkstk                                       // 0x007db1cb    e8e0bcfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db1d0    8965e8
                         mov.s             esi, esp                                       // 0x007db1d3    8bf4
                         {disp8} mov       dword ptr [ebp + -0x20], esi                   // 0x007db1d5    8975e0
                         {disp8} jmp       _jmp_addr_0x007db1e5                           // 0x007db1d8    eb0b
                         push              0x1                                            // 0x007db1da    6a01
                         pop               eax                                            // 0x007db1dc    58
                         ret                                                              // 0x007db1dd    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db1de    8b65e8
                         xor.s             edi, edi                                       // 0x007db1e1    33ff
                         xor.s             esi, esi                                       // 0x007db1e3    33f6
_jmp_addr_0x007db1e5:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db1e5    834dfcff
                         cmp.s             esi, edi                                       // 0x007db1e9    3bf7
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1eb    7433
                         push              dword ptr [ebp + -0x1c]                        // 0x007db1ed    ff75e4
                         push              esi                                            // 0x007db1f0    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db1f1    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db1f4    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db1f7    ff1580928a00
                         test              eax, eax                                       // 0x007db1fd    85c0
                         {disp8} je        _jmp_addr_0x007db220                           // 0x007db1ff    741f
                         cmp               dword ptr [ebp + 0x14], edi                    // 0x007db201    397d14
                         {disp8} jne       _jmp_addr_0x007db20a                           // 0x007db204    7504
                         push              edi                                            // 0x007db206    57
                         push              edi                                            // 0x007db207    57
                         {disp8} jmp       _jmp_addr_0x007db210                           // 0x007db208    eb06
_jmp_addr_0x007db20a:    push              dword ptr [ebp + 0x14]                         // 0x007db20a    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db20d    ff7510
_jmp_addr_0x007db210:    push              -0x1                                           // 0x007db210    6aff
                         push              esi                                            // 0x007db212    56
                         push              0x1                                            // 0x007db213    6a01
                         push              dword ptr [ebp + 0x18]                         // 0x007db215    ff7518
                         call              dword ptr [__imp__MultiByteToWideChar@24]       // 0x007db218    ff153c918a00
                         {disp8} jmp       _jmp_addr_0x007db222                           // 0x007db21e    eb02
_jmp_addr_0x007db220:    xor.s             eax, eax                                       // 0x007db220    33c0
_jmp_addr_0x007db222:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db222    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db225    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db228    64890d00000000
                         pop               edi                                            // 0x007db22f    5f
                         pop               esi                                            // 0x007db230    5e
                         pop               ebx                                            // 0x007db231    5b
                         leave                                                            // 0x007db232    c9
                         ret                                                              // 0x007db233    c3
// a_loc.obj
___crtGetLocaleInfoA:    push              ebp                                            // 0x007db234    55
                         mov.s             ebp, esp                                       // 0x007db235    8bec
                         push              -0x1                                           // 0x007db237    6aff
                         push              0x009a1610                                     // 0x007db239    6810169a00
                         push              0x007cd8ac /*__except_handler3*/               // 0x007db23e    68acd87c00
                         {disp32} mov      eax, fs:[0x0]                                  // 0x007db243    64a100000000
                         push              eax                                            // 0x007db249    50
                         {disp32} mov      fs:[0x0], esp                                  // 0x007db24a    64892500000000
                         sub               esp, 0x14                                      // 0x007db251    83ec14
                         push              ebx                                            // 0x007db254    53
                         push              esi                                            // 0x007db255    56
                         push              edi                                            // 0x007db256    57
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db257    8965e8
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be574]         // 0x007db25a    a17445e800
                         xor.s             esi, esi                                       // 0x007db25f    33f6
                         cmp.s             eax, esi                                       // 0x007db261    3bc6
                         {disp8} jne       _jmp_addr_0x007db293                           // 0x007db263    752e
                         push              esi                                            // 0x007db265    56
                         push              esi                                            // 0x007db266    56
                         push              0x1                                            // 0x007db267    6a01
                         push              esi                                            // 0x007db269    56
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db26a    ff1560928a00
                         test              eax, eax                                       // 0x007db270    85c0
                         {disp8} je        _jmp_addr_0x007db278                           // 0x007db272    7404
                         push              0x1                                            // 0x007db274    6a01
                         {disp8} jmp       _jmp_addr_0x007db28d                           // 0x007db276    eb15
_jmp_addr_0x007db278:    push              esi                                            // 0x007db278    56
                         push              esi                                            // 0x007db279    56
                         push              0x1                                            // 0x007db27a    6a01
                         push              esi                                            // 0x007db27c    56
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db27d    ff1580928a00
                         test              eax, eax                                       // 0x007db283    85c0
                         {disp32} je       _jmp_addr_0x007db33e                           // 0x007db285    0f84b3000000
                         push              0x2                                            // 0x007db28b    6a02
_jmp_addr_0x007db28d:    pop               eax                                            // 0x007db28d    58
                         {disp32} mov      dword ptr [data_bytes + 0x4be574], eax         // 0x007db28e    a37445e800
_jmp_addr_0x007db293:    cmp               eax, 0x02                                      // 0x007db293    83f802
                         {disp8} jne       _jmp_addr_0x007db2af                           // 0x007db296    7517
                         push              dword ptr [ebp + 0x14]                         // 0x007db298    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db29b    ff7510
                         push              dword ptr [ebp + 0x0c]                         // 0x007db29e    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2a1    ff7508
                         call              dword ptr [__imp__GetLocaleInfoA@16]           // 0x007db2a4    ff1580928a00
                         {disp32} jmp      _jmp_addr_0x007db340                           // 0x007db2aa    e991000000
_jmp_addr_0x007db2af:    cmp               eax, 0x01                                      // 0x007db2af    83f801
                         {disp32} jne      _jmp_addr_0x007db33e                           // 0x007db2b2    0f8586000000
                         cmp               dword ptr [ebp + 0x18], esi                    // 0x007db2b8    397518
                         {disp8} jne       _jmp_addr_0x007db2c5                           // 0x007db2bb    7508
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4be2b0]         // 0x007db2bd    a1b042e800
                         {disp8} mov       dword ptr [ebp + 0x18], eax                    // 0x007db2c2    894518
_jmp_addr_0x007db2c5:    push              esi                                            // 0x007db2c5    56
                         push              esi                                            // 0x007db2c6    56
                         push              dword ptr [ebp + 0x0c]                         // 0x007db2c7    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db2ca    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db2cd    ff1560928a00
                         {disp8} mov       dword ptr [ebp + -0x1c], eax                   // 0x007db2d3    8945e4
                         cmp.s             eax, esi                                       // 0x007db2d6    3bc6
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db2d8    7464
                         {disp8} mov       dword ptr [ebp + -0x04], esi                   // 0x007db2da    8975fc
                         add.s             eax, eax                                       // 0x007db2dd    03c0
                         add               eax, 0x03                                      // 0x007db2df    83c003
                         and               al, -0x04                                      // 0x007db2e2    24fc
                         call              __chkstk                                       // 0x007db2e4    e8c7bbfeff
                         {disp8} mov       dword ptr [ebp + -0x18], esp                   // 0x007db2e9    8965e8
                         mov.s             edi, esp                                       // 0x007db2ec    8bfc
                         {disp8} mov       dword ptr [ebp + -0x20], edi                   // 0x007db2ee    897de0
                         {disp8} jmp       _jmp_addr_0x007db2fe                           // 0x007db2f1    eb0b
                         push              0x1                                            // 0x007db2f3    6a01
                         pop               eax                                            // 0x007db2f5    58
                         ret                                                              // 0x007db2f6    c3
                         {disp8} mov       esp, dword ptr [ebp + -0x18]                   // 0x007db2f7    8b65e8
                         xor.s             esi, esi                                       // 0x007db2fa    33f6
                         xor.s             edi, edi                                       // 0x007db2fc    33ff
_jmp_addr_0x007db2fe:    or                dword ptr [ebp - 4], 0xffffffff                // 0x007db2fe    834dfcff
                         cmp.s             edi, esi                                       // 0x007db302    3bfe
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db304    7438
                         push              dword ptr [ebp + -0x1c]                        // 0x007db306    ff75e4
                         push              edi                                            // 0x007db309    57
                         push              dword ptr [ebp + 0x0c]                         // 0x007db30a    ff750c
                         push              dword ptr [ebp + 0x08]                         // 0x007db30d    ff7508
                         call              dword ptr [__imp__GetLocaleInfoW@4]            // 0x007db310    ff1560928a00
                         test              eax, eax                                       // 0x007db316    85c0
                         {disp8} je        _jmp_addr_0x007db33e                           // 0x007db318    7424
                         cmp               dword ptr [ebp + 0x14], esi                    // 0x007db31a    397514
                         push              esi                                            // 0x007db31d    56
                         push              esi                                            // 0x007db31e    56
                         {disp8} jne       _jmp_addr_0x007db325                           // 0x007db31f    7504
                         push              esi                                            // 0x007db321    56
                         push              esi                                            // 0x007db322    56
                         {disp8} jmp       _jmp_addr_0x007db32b                           // 0x007db323    eb06
_jmp_addr_0x007db325:    push              dword ptr [ebp + 0x14]                         // 0x007db325    ff7514
                         push              dword ptr [ebp + 0x10]                         // 0x007db328    ff7510
_jmp_addr_0x007db32b:    push              -0x1                                           // 0x007db32b    6aff
                         push              edi                                            // 0x007db32d    57
                         push              0x00000220                                     // 0x007db32e    6820020000
                         push              dword ptr [ebp + 0x18]                         // 0x007db333    ff7518
                         call              dword ptr [__imp__WideCharToMultiByte@32]       // 0x007db336    ff152c928a00
                         {disp8} jmp       _jmp_addr_0x007db340                           // 0x007db33c    eb02
_jmp_addr_0x007db33e:    xor.s             eax, eax                                       // 0x007db33e    33c0
_jmp_addr_0x007db340:    {disp8} lea       esp, dword ptr [ebp + -0x30]                   // 0x007db340    8d65d0
                         {disp8} mov       ecx, dword ptr [ebp + -0x10]                   // 0x007db343    8b4df0
                         {disp32} mov      fs:[0x0], ecx                                  // 0x007db346    64890d00000000
                         pop               edi                                            // 0x007db34d    5f
                         pop               esi                                            // 0x007db34e    5e
                         pop               ebx                                            // 0x007db34f    5b
                         leave                                                            // 0x007db350    c9
                         ret                                                              // 0x007db351    c3
// setmode.obj
__setmode:               push              esi                                            // 0x007db352    56
                         {disp8} mov       esi, dword ptr [esp + 0x08]                    // 0x007db353    8b742408
                         cmp               esi, dword ptr [data_bytes + 0x5e6a60]         // 0x007db357    3b3560cafa00
                         {disp8} jae       _jmp_addr_0x007db39b                           // 0x007db35d    733c
                         mov.s             ecx, esi                                       // 0x007db35f    8bce
                         mov.s             eax, esi                                       // 0x007db361    8bc6
                         sar               ecx, 5                                         // 0x007db363    c1f905
                         and               eax, 0x1f                                      // 0x007db366    83e01f
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db369    8b0c8d60c9fa00
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db370    8d04c0
                         test              byte ptr [ecx + eax * 0x4 + 0x04], 0x01        // 0x007db373    f644810401
                         {disp8} je        _jmp_addr_0x007db39b                           // 0x007db378    7421
                         push              edi                                            // 0x007db37a    57
                         push              esi                                            // 0x007db37b    56
                         call              __lock_fhandle                                 // 0x007db37c    e8dce6ffff
                         push              dword ptr [esp + 0x14]                         // 0x007db381    ff742414
                         push              esi                                            // 0x007db385    56
                         call              __setmode_lk                                   // 0x007db386    e820000000
                         push              esi                                            // 0x007db38b    56
                         mov.s             edi, eax                                       // 0x007db38c    8bf8
                         call              __unlock_fhandle                               // 0x007db38e    e829e7ffff
                         add               esp, 0x10                                      // 0x007db393    83c410
                         mov.s             eax, edi                                       // 0x007db396    8bc7
                         pop               edi                                            // 0x007db398    5f
                         pop               esi                                            // 0x007db399    5e
                         ret                                                              // 0x007db39a    c3
_jmp_addr_0x007db39b:    call              __errno                                        // 0x007db39b    e8e1dcfeff
                         mov               dword ptr [eax], 0x00000009                    // 0x007db3a0    c70009000000
                         or                eax, -0x1                                      // 0x007db3a6    83c8ff
                         pop               esi                                            // 0x007db3a9    5e
                         ret                                                              // 0x007db3aa    c3
.globl __setmode_lk
__setmode_lk:            {disp8} mov       eax, dword ptr [esp + 0x04]                    // 0x007db3ab    8b442404
                         push              esi                                            // 0x007db3af    56
                         mov.s             ecx, eax                                       // 0x007db3b0    8bc8
                         and               eax, 0x1f                                      // 0x007db3b2    83e01f
                         sar               ecx, 5                                         // 0x007db3b5    c1f905
                         lea               eax, dword ptr [eax + eax * 0x8]               // 0x007db3b8    8d04c0
                         mov               esi, 0x00008000                                // 0x007db3bb    be00800000
                         {disp32} mov      ecx, dword ptr [ecx * 0x4 + ___pioinfo]        // 0x007db3c0    8b0c8d60c9fa00
                         {disp8} lea       edx, dword ptr [ecx + eax * 0x4 + 0x04]        // 0x007db3c7    8d548104
                         {disp8} mov       cl, byte ptr [ecx + eax * 0x4 + 0x04]          // 0x007db3cb    8a4c8104
                         mov.s             al, cl                                         // 0x007db3cf    8ac1
                         and               eax, 0x00000080                                // 0x007db3d1    2580000000
                         cmp               dword ptr [esp + 0x0c], esi                    // 0x007db3d6    3974240c
                         {disp8} jne       _jmp_addr_0x007db3e1                           // 0x007db3da    7505
                         and               cl, 0x7f                                       // 0x007db3dc    80e17f
                         {disp8} jmp       _jmp_addr_0x007db3ee                           // 0x007db3df    eb0d
_jmp_addr_0x007db3e1:    cmp               dword ptr [esp + 0x0c], 0x00004000             // 0x007db3e1    817c240c00400000
                         {disp8} jne       _jmp_addr_0x007db3fc                           // 0x007db3e9    7511
                         or                cl, 0x80                                       // 0x007db3eb    80c980
_jmp_addr_0x007db3ee:    neg               eax                                            // 0x007db3ee    f7d8
                         sbb.s             eax, eax                                       // 0x007db3f0    1bc0
                         mov               byte ptr [edx], cl                             // 0x007db3f2    880a
                         and               ax, -0x4000                                    // 0x007db3f4    662500c0
                         add.s             eax, esi                                       // 0x007db3f8    03c6
                         pop               esi                                            // 0x007db3fa    5e
                         ret                                                              // 0x007db3fb    c3
_jmp_addr_0x007db3fc:    call              __errno                                        // 0x007db3fc    e880dcfeff
                         mov               dword ptr [eax], 0x00000016                    // 0x007db401    c70016000000
                         or                eax, -0x1                                      // 0x007db407    83c8ff
                         pop               esi                                            // 0x007db40a    5e
                         ret                                                              // 0x007db40b    c3
                         int3                                                             // 0x007db40c    cc
                         int3                                                             // 0x007db40d    cc
                         int3                                                             // 0x007db40e    cc
                         int3                                                             // 0x007db40f    cc
// End of libcmt.lib
