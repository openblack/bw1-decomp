.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern @FindControl__8SetupBoxFi@12
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @AutoScroll__9SetupListFb@9
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__13SetupCheckBoxFiiibiPwi@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern @SetSpeedUpFactor__7LHTimerFf@12
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x005ea750
.extern _jmp_addr_0x005ea980
.extern _jmp_addr_0x005eb970
.extern _jmp_addr_0x005ebaf0
.extern _jmp_addr_0x0066bcd0
.extern _jmp_addr_0x00719750
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _jmp_addr_0x007c5394
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern __chkstk
.extern _wcsstr
.extern ___nw__FUl
.extern @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4
.extern @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20
.extern _CHAR2WCHAR__FPc

.globl ?Init@LoginBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@LoginBox@@UAEXXZ


start_0x005405b0_0x00542510:
// Snippet: asm, [0x005405b0, 0x005424ea)
_jmp_addr_0x005405b0:    push               ebx                                           // 0x005405b0    53
                         push               esi                                           // 0x005405b1    56
                         push               edi                                           // 0x005405b2    57
                         mov.s              esi, ecx                                      // 0x005405b3    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005405b5    8b4e04
                         push               0x2                                           // 0x005405b8    6a02
                         call               @FindControl__8SetupBoxFi@12                  // 0x005405ba    e8a17becff
                         add                eax, 0x24                                     // 0x005405bf    83c024
                         push               eax                                           // 0x005405c2    50
                         call               _jmp_addr_0x0053b4a0                          // 0x005405c3    e8d8aeffff
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005405c8    8b4e04
                         add                esp, 0x04                                     // 0x005405cb    83c404
                         push               0x5                                           // 0x005405ce    6a05
                         mov.s              edi, eax                                      // 0x005405d0    8bf8
                         call               @FindControl__8SetupBoxFi@12                  // 0x005405d2    e8897becff
                         {disp32} mov       ebx, dword ptr [eax + 0x00000248]             // 0x005405d7    8b9848020000
                         call               _jmp_addr_0x005eb970                          // 0x005405dd    e88eb30a00
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x3fc]          // 0x005405e2    a1fc938a00
                         mov                ecx, dword ptr [eax]                          // 0x005405e7    8b08
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f8]          // 0x005405e9    8b15f8938a00
                         mov                eax, dword ptr [edx]                          // 0x005405ef    8b02
                         push               edi                                           // 0x005405f1    57
                         push               ecx                                           // 0x005405f2    51
                         push               eax                                           // 0x005405f3    50
                         call               dword ptr [rdata_bytes + 0x3ac]               // 0x005405f4    ff15ac938a00
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x3f8]          // 0x005405fa    8b0df8938a00
                         mov                edx, dword ptr [ecx]                          // 0x00540600    8b11
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x350]          // 0x00540602    8b3d50938a00
                         push               ebx                                           // 0x00540608    53
                         push               0x00bea620                                    // 0x00540609    6820a6be00
                         push               edx                                           // 0x0054060e    52
                         call               edi                                           // 0x0054060f    ffd7
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x3f4]          // 0x00540611    a1f4938a00
                         mov                ecx, dword ptr [eax]                          // 0x00540616    8b08
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f8]          // 0x00540618    8b15f8938a00
                         mov                eax, dword ptr [edx]                          // 0x0054061e    8b02
                         push               ecx                                           // 0x00540620    51
                         push               0x00bea610                                    // 0x00540621    6810a6be00
                         push               eax                                           // 0x00540626    50
                         call               edi                                           // 0x00540627    ffd7
                         {disp8} mov        ecx, dword ptr [esi + 0x10]                   // 0x00540629    8b4e10
                         add                ecx, 0x24                                     // 0x0054062c    83c124
                         push               ecx                                           // 0x0054062f    51
                         push               0x00d4c138                                    // 0x00540630    6838c1d400
                         call               _wcscpy                                       // 0x00540635    e87c592800
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0054063a    8b5614
                         add                edx, 0x24                                     // 0x0054063d    83c224
                         push               edx                                           // 0x00540640    52
                         push               0x00d4c338                                    // 0x00540641    6838c3d400
                         call               _wcscpy                                       // 0x00540646    e86b592800
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x0054064b    6838bdd400
                         call               _jmp_addr_0x0066bcd0                          // 0x00540650    e87bb61200
                         add                esp, 0x38                                     // 0x00540655    83c438
                         pop                edi                                           // 0x00540658    5f
                         pop                esi                                           // 0x00540659    5e
                         pop                ebx                                           // 0x0054065a    5b
                         ret                                                              // 0x0054065b    c3
                         nop                                                              // 0x0054065c    90
                         nop                                                              // 0x0054065d    90
                         nop                                                              // 0x0054065e    90
                         nop                                                              // 0x0054065f    90
_jmp_addr_0x00540660:    mov                eax, 0x000018cc                               // 0x00540660    b8cc180000
                         call               __chkstk                                      // 0x00540665    e846682800
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x620]          // 0x0054066a    8b1520968a00
                         push               ebx                                           // 0x00540670    53
                         push               ebp                                           // 0x00540671    55
                         mov.s              ebp, ecx                                      // 0x00540672    8be9
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x00540674    8b4504
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00540677    89442408
                         push               esi                                           // 0x0054067b    56
                         push               edi                                           // 0x0054067c    57
                         xor.s              ebx, ebx                                      // 0x0054067d    33db
                         xor.s              eax, eax                                      // 0x0054067f    33c0
                         {disp32} mov       dword ptr [esp + 0x000001d4], edx             // 0x00540681    899424d4010000
                         {disp32} mov       dword ptr [esp + 0x000001d8], ebx             // 0x00540688    899c24d8010000
                         {disp32} mov       dword ptr [esp + 0x000001dc], ebx             // 0x0054068f    899c24dc010000
                         mov                ecx, 0x00000019                               // 0x00540696    b919000000
                         {disp32} lea       edi, dword ptr [esp + 0x000001e0]             // 0x0054069b    8dbc24e0010000
                         rep stosd                                                        // 0x005406a2    f3ab
                         stosw                                                            // 0x005406a4    66ab
                         {disp32} mov       dword ptr [esp + 0x00000248], edx             // 0x005406a6    89942448020000
                         {disp32} mov       dword ptr [esp + 0x0000024c], ebx             // 0x005406ad    899c244c020000
                         {disp32} mov       dword ptr [esp + 0x00000250], ebx             // 0x005406b4    899c2450020000
                         xor.s              eax, eax                                      // 0x005406bb    33c0
                         mov                ecx, 0x00000019                               // 0x005406bd    b919000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000254]             // 0x005406c2    8dbc2454020000
                         rep stosd                                                        // 0x005406c9    f3ab
                         {disp8} mov        ecx, dword ptr [ebp + 0x10]                   // 0x005406cb    8b4d10
                         add                ecx, 0x24                                     // 0x005406ce    83c124
                         push               ecx                                           // 0x005406d1    51
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000064            // 0x005406d2    c744242c64000000
                         stosw                                                            // 0x005406da    66ab
                         call               _jmp_addr_0x0053b4a0                          // 0x005406dc    e8bfadffff
                         or                 ecx, 0xffffffff                               // 0x005406e1    83c9ff
                         mov.s              edi, eax                                      // 0x005406e4    8bf8
                         xor.s              eax, eax                                      // 0x005406e6    33c0
                         repne scasb                                                      // 0x005406e8    f2ae
                         not                ecx                                           // 0x005406ea    f7d1
                         sub.s              edi, ecx                                      // 0x005406ec    2bf9
                         mov.s              eax, ecx                                      // 0x005406ee    8bc1
                         shr                ecx, 2                                        // 0x005406f0    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x00000358]             // 0x005406f3    8d942458030000
                         mov.s              esi, edi                                      // 0x005406fa    8bf7
                         mov.s              edi, edx                                      // 0x005406fc    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005406fe    f3a5
                         mov.s              ecx, eax                                      // 0x00540700    8bc8
                         and                ecx, 0x03                                     // 0x00540702    83e103
                         rep movsb                                                        // 0x00540705    f3a4
                         {disp8} mov        ecx, dword ptr [ebp + 0x14]                   // 0x00540707    8b4d14
                         add                ecx, 0x24                                     // 0x0054070a    83c124
                         push               ecx                                           // 0x0054070d    51
                         call               _jmp_addr_0x0053b4a0                          // 0x0054070e    e88dadffff
                         or                 ecx, 0xffffffff                               // 0x00540713    83c9ff
                         mov.s              edi, eax                                      // 0x00540716    8bf8
                         xor.s              eax, eax                                      // 0x00540718    33c0
                         add                esp, 0x08                                     // 0x0054071a    83c408
                         repne scasb                                                      // 0x0054071d    f2ae
                         not                ecx                                           // 0x0054071f    f7d1
                         sub.s              edi, ecx                                      // 0x00540721    2bf9
                         mov.s              eax, ecx                                      // 0x00540723    8bc1
                         shr                ecx, 2                                        // 0x00540725    c1e902
                         mov.s              esi, edi                                      // 0x00540728    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x000002f0]             // 0x0054072a    8d9424f0020000
                         mov.s              edi, edx                                      // 0x00540731    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00540733    f3a5
                         mov.s              ecx, eax                                      // 0x00540735    8bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4d8]        // 0x00540737    a1d804d200
                         and                ecx, 0x03                                     // 0x0054073c    83e103
                         cmp                eax, 0x01                                     // 0x0054073f    83f801
                         rep movsb                                                        // 0x00540742    f3a4
                         {disp32} jne       _jmp_addr_0x005409cb                          // 0x00540744    0f8581020000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x22428c]        // 0x0054074a    8b3d8ca2be00
                         or                 ecx, 0xffffffff                               // 0x00540750    83c9ff
                         xor.s              eax, eax                                      // 0x00540753    33c0
                         repne scasb                                                      // 0x00540755    f2ae
                         not                ecx                                           // 0x00540757    f7d1
                         sub.s              edi, ecx                                      // 0x00540759    2bf9
                         mov.s              eax, ecx                                      // 0x0054075b    8bc1
                         shr                ecx, 2                                        // 0x0054075d    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x000003b8]             // 0x00540760    8d9424b8030000
                         mov.s              esi, edi                                      // 0x00540767    8bf7
                         mov.s              edi, edx                                      // 0x00540769    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054076b    f3a5
                         mov.s              ecx, eax                                      // 0x0054076d    8bc8
                         and                ecx, 0x03                                     // 0x0054076f    83e103
                         rep movsb                                                        // 0x00540772    f3a4
                         call               dword ptr [rdata_bytes + 0x3b0]               // 0x00540774    ff15b0938a00
                         {disp32} mov       edi, dword ptr [__imp__LHRegistrySetCurrentKey__YAXW4LH_REG_KEY_TYPE___Z@4]          // 0x0054077a    8b3db4938a00
                         push               0x1                                           // 0x00540780    6a01
                         mov.s              esi, eax                                      // 0x00540782    8bf0
                         call               edi                                           // 0x00540784    ffd7
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x414]          // 0x00540786    a114948a00
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0054078b    8d4c242c
                         push               ecx                                           // 0x0054078f    51
                         mov                ecx, dword ptr [eax]                          // 0x00540790    8b08
                         {disp32} lea       edx, dword ptr [esp + 0x000003c0]             // 0x00540792    8d9424c0030000
                         push               edx                                           // 0x00540799    52
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f8]          // 0x0054079a    8b15f8938a00
                         mov                eax, dword ptr [edx]                          // 0x005407a0    8b02
                         push               ecx                                           // 0x005407a2    51
                         push               eax                                           // 0x005407a3    50
                         call               dword ptr [rdata_bytes + 0x3b8]               // 0x005407a4    ff15b8938a00
                         push               esi                                           // 0x005407aa    56
                         call               edi                                           // 0x005407ab    ffd7
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x005407ad    8b742428
                         add                esp, 0x18                                     // 0x005407b1    83c418
                         push               0x2                                           // 0x005407b4    6a02
                         mov.s              ecx, esi                                      // 0x005407b6    8bce
                         call               @FindControl__8SetupBoxFi@12                  // 0x005407b8    e8a379ecff
                         add                eax, 0x24                                     // 0x005407bd    83c024
                         push               eax                                           // 0x005407c0    50
                         call               _jmp_addr_0x0053b4a0                          // 0x005407c1    e8daacffff
                         add                esp, 0x04                                     // 0x005407c6    83c404
                         push               0x5                                           // 0x005407c9    6a05
                         mov.s              ecx, esi                                      // 0x005407cb    8bce
                         mov.s              edi, eax                                      // 0x005407cd    8bf8
                         call               @FindControl__8SetupBoxFi@12                  // 0x005407cf    e88c79ecff
                         {disp32} mov       ebp, dword ptr [eax + 0x00000248]             // 0x005407d4    8ba848020000
                         or                 ecx, 0xffffffff                               // 0x005407da    83c9ff
                         xor.s              eax, eax                                      // 0x005407dd    33c0
                         repne scasb                                                      // 0x005407df    f2ae
                         not                ecx                                           // 0x005407e1    f7d1
                         sub.s              edi, ecx                                      // 0x005407e3    2bf9
                         mov.s              eax, ecx                                      // 0x005407e5    8bc1
                         shr                ecx, 2                                        // 0x005407e7    c1e902
                         mov.s              esi, edi                                      // 0x005407ea    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x0000016e]             // 0x005407ec    8d94246e010000
                         mov.s              edi, edx                                      // 0x005407f3    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005407f5    f3a5
                         mov.s              ecx, eax                                      // 0x005407f7    8bc8
                         and                ecx, 0x03                                     // 0x005407f9    83e103
                         rep movsb                                                        // 0x005407fc    f3a4
                         {disp32} lea       ecx, dword ptr [esp + 0x0000016c]             // 0x005407fe    8d8c246c010000
                         push               ecx                                           // 0x00540805    51
                         or                 ecx, 0xffffffff                               // 0x00540806    83c9ff
                         xor.s              eax, eax                                      // 0x00540809    33c0
                         {disp32} mov       word ptr [esp + 0x00000170], 0x0a33           // 0x0054080b    66c7842470010000330a
                         {disp32} lea       edi, dword ptr [esp + 0x00000172]             // 0x00540815    8dbc2472010000
                         repne scasb                                                      // 0x0054081c    f2ae
                         not                ecx                                           // 0x0054081e    f7d1
                         add                ecx, 0x2                                      // 0x00540820    83c102
                         push               ecx                                           // 0x00540823    51
                         push               0x4                                           // 0x00540824    6a04
                         {disp32} lea       ecx, dword ptr [esp + 0x000001e0]             // 0x00540826    8d8c24e0010000
                         call               dword ptr [rdata_bytes + 0x410]               // 0x0054082d    ff1510948a00
                         or                 ecx, 0xffffffff                               // 0x00540833    83c9ff
                         xor.s              eax, eax                                      // 0x00540836    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x000003b8]             // 0x00540838    8dbc24b8030000
                         repne scasb                                                      // 0x0054083f    f2ae
                         not                ecx                                           // 0x00540841    f7d1
                         {disp32} lea       edx, dword ptr [esp + 0x0000016e]             // 0x00540843    8d94246e010000
                         sub.s              edi, ecx                                      // 0x0054084a    2bf9
                         mov.s              eax, ecx                                      // 0x0054084c    8bc1
                         shr                ecx, 2                                        // 0x0054084e    c1e902
                         mov.s              esi, edi                                      // 0x00540851    8bf7
                         mov.s              edi, edx                                      // 0x00540853    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00540855    f3a5
                         mov.s              ecx, eax                                      // 0x00540857    8bc8
                         and                ecx, 0x03                                     // 0x00540859    83e103
                         rep movsb                                                        // 0x0054085c    f3a4
                         {disp32} lea       ecx, dword ptr [esp + 0x0000016c]             // 0x0054085e    8d8c246c010000
                         push               ecx                                           // 0x00540865    51
                         or                 ecx, 0xffffffff                               // 0x00540866    83c9ff
                         xor.s              eax, eax                                      // 0x00540869    33c0
                         {disp32} mov       word ptr [esp + 0x00000170], 0x0050           // 0x0054086b    66c78424700100005000
                         {disp32} lea       edi, dword ptr [esp + 0x00000172]             // 0x00540875    8dbc2472010000
                         repne scasb                                                      // 0x0054087c    f2ae
                         not                ecx                                           // 0x0054087e    f7d1
                         add                ecx, 0x2                                      // 0x00540880    83c102
                         push               ecx                                           // 0x00540883    51
                         push               0x4                                           // 0x00540884    6a04
                         {disp32} lea       ecx, dword ptr [esp + 0x00000254]             // 0x00540886    8d8c2454020000
                         call               dword ptr [rdata_bytes + 0x410]               // 0x0054088d    ff1510948a00
                         cmp.s              ebp, ebx                                      // 0x00540893    3beb
                         {disp8} je         _jmp_addr_0x005408b5                          // 0x00540895    741e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]        // 0x00540897    8b0dd404d200
                         {disp32} lea       edx, dword ptr [esp + 0x000002f0]             // 0x0054089d    8d9424f0020000
                         push               edx                                           // 0x005408a4    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000358]             // 0x005408a5    8d842458030000
                         push               eax                                           // 0x005408ac    50
                         call               dword ptr [rdata_bytes + 0x668]               // 0x005408ad    ff1568968a00
                         {disp8} jmp        _jmp_addr_0x005408d9                          // 0x005408b3    eb24
_jmp_addr_0x005408b5:    {disp32} lea       ecx, dword ptr [esp + 0x00000248]             // 0x005408b5    8d8c2448020000
                         push               ecx                                           // 0x005408bc    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]        // 0x005408bd    8b0dd404d200
                         {disp32} lea       edx, dword ptr [esp + 0x000002f4]             // 0x005408c3    8d9424f4020000
                         push               edx                                           // 0x005408ca    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000035c]             // 0x005408cb    8d84245c030000
                         push               eax                                           // 0x005408d2    50
                         call               dword ptr [rdata_bytes + 0x40c]               // 0x005408d3    ff150c948a00
_jmp_addr_0x005408d9:    cmp.s              eax, ebx                                      // 0x005408d9    3bc3
                         {disp32} je        _jmp_addr_0x00540a71                          // 0x005408db    0f8490010000
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x3a4]          // 0x005408e1    8b2da4938a00
                         call               ebp                                           // 0x005408e7    ffd5
                         cmp                eax, 0x12                                     // 0x005408e9    83f812
                         {disp8} jne        _jmp_addr_0x00540928                          // 0x005408ec    753a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d9f // 0x005408ee    813dac7cd1009f0d0000
                         {disp8} ja         _jmp_addr_0x0054090c                          // 0x005408f8    7712
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005408fa    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005408ff    8b5008
                         push               0xc                                           // 0x00540902    6a0c
                         push               0x3                                           // 0x00540904    6a03
                         push               edx                                           // 0x00540906    52
                         {disp32} jmp       _jmp_addr_0x005409a9                          // 0x00540907    e99d000000
_jmp_addr_0x0054090c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054090c    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a37c]             // 0x00540912    8b917ca30000
                         push               0xc                                           // 0x00540918    6a0c
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a374]             // 0x0054091a    8d8174a30000
                         push               0x3                                           // 0x00540920    6a03
                         push               edx                                           // 0x00540922    52
                         {disp32} jmp       _jmp_addr_0x005409a9                          // 0x00540923    e981000000
_jmp_addr_0x00540928:    call               ebp                                           // 0x00540928    ffd5
                         cmp                eax, 0x13                                     // 0x0054092a    83f813
                         {disp8} jne        _jmp_addr_0x0054094d                          // 0x0054092d    751e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000da0 // 0x0054092f    813dac7cd100a00d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540939    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00540945                          // 0x0054093e    7605
                         add                eax, 0x0000a380                               // 0x00540940    0580a30000
_jmp_addr_0x00540945:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00540945    8b4808
                         push               ebx                                           // 0x00540948    53
                         push               ebx                                           // 0x00540949    53
                         push               ecx                                           // 0x0054094a    51
                         {disp8} jmp        _jmp_addr_0x005409a9                          // 0x0054094b    eb5c
_jmp_addr_0x0054094d:    {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x0054094d    8b15ac7cd100
                         cmp                edx, 0x00000da2                               // 0x00540953    81faa20d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540959    a1a87cd100
                         mov.s              ecx, eax                                      // 0x0054095e    8bc8
                         {disp8} jbe        _jmp_addr_0x00540968                          // 0x00540960    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000a398]             // 0x00540962    8d8898a30000
_jmp_addr_0x00540968:    cmp                edx, 0x00000da1                               // 0x00540968    81faa10d0000
                         {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x0054096e    8b7908
                         {disp8} jbe        _jmp_addr_0x00540978                          // 0x00540971    7605
                         add                eax, 0x0000a38c                               // 0x00540973    058ca30000
_jmp_addr_0x00540978:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x00540978    8b7008
                         call               ebp                                           // 0x0054097b    ffd5
                         push               eax                                           // 0x0054097d    50
                         push               edi                                           // 0x0054097e    57
                         call               dword ptr [__imp__GetText_LHLogger__SAPADXZ@4]// 0x0054097f    ff15a8938a00
                         push               eax                                           // 0x00540985    50
                         call               _CHAR2WCHAR__FPc                              // 0x00540986    e815f72e00
                         add                esp, 0x04                                     // 0x0054098b    83c404
                         push               eax                                           // 0x0054098e    50
                         push               esi                                           // 0x0054098f    56
                         {disp32} lea       edx, dword ptr [esp + 0x0000042c]             // 0x00540990    8d94242c040000
                         push               0x00bea64c                                    // 0x00540997    684ca6be00
                         push               edx                                           // 0x0054099c    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0054099d    ff15d8938a00
                         add                esp, 0x18                                     // 0x005409a3    83c418
                         push               ebx                                           // 0x005409a6    53
                         push               ebx                                           // 0x005409a7    53
                         push               eax                                           // 0x005409a8    50
_jmp_addr_0x005409a9:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x005409a9    8b4c241c
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005409ad    e8de07edff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x005409b2    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x005409b7    8b4824
                         mov                edx, dword ptr [ecx]                          // 0x005409ba    8b11
                         push               ebx                                           // 0x005409bc    53
                         call               dword ptr [edx + 8]                           // 0x005409bd    ff5208
                         pop                edi                                           // 0x005409c0    5f
                         pop                esi                                           // 0x005409c1    5e
                         pop                ebp                                           // 0x005409c2    5d
                         pop                ebx                                           // 0x005409c3    5b
                         add                esp, 0x000018cc                               // 0x005409c4    81c4cc180000
                         ret                                                              // 0x005409ca    c3
_jmp_addr_0x005409cb:    push               ebx                                           // 0x005409cb    53
                         push               0x00d4bf38                                    // 0x005409cc    6838bfd400
                         call               _jmp_addr_0x0053b4a0                          // 0x005409d1    e8caaaffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]        // 0x005409d6    8b0dd404d200
                         add                esp, 0x04                                     // 0x005409dc    83c404
                         push               eax                                           // 0x005409df    50
                         call               dword ptr [rdata_bytes + 0x668]               // 0x005409e0    ff1568968a00
                         test               eax, eax                                      // 0x005409e6    85c0
                         {disp32} je        _jmp_addr_0x00540a71                          // 0x005409e8    0f8483000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x005409ee    8b15ac7cd100
                         cmp                edx, 0x00000da2                               // 0x005409f4    81faa20d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005409fa    a1a87cd100
                         mov.s              ecx, eax                                      // 0x005409ff    8bc8
                         {disp8} jbe        _jmp_addr_0x00540a09                          // 0x00540a01    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000a398]             // 0x00540a03    8d8898a30000
_jmp_addr_0x00540a09:    cmp                edx, 0x00000da1                               // 0x00540a09    81faa10d0000
                         {disp8} mov        edi, dword ptr [ecx + 0x08]                   // 0x00540a0f    8b7908
                         {disp8} jbe        _jmp_addr_0x00540a19                          // 0x00540a12    7605
                         add                eax, 0x0000a38c                               // 0x00540a14    058ca30000
_jmp_addr_0x00540a19:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x00540a19    8b7008
                         call               dword ptr [__imp__GetCode_LHLogger__SAKXZ@4]  // 0x00540a1c    ff15a4938a00
                         push               eax                                           // 0x00540a22    50
                         push               edi                                           // 0x00540a23    57
                         call               dword ptr [__imp__GetText_LHLogger__SAPADXZ@4]// 0x00540a24    ff15a8938a00
                         push               eax                                           // 0x00540a2a    50
                         call               _CHAR2WCHAR__FPc                              // 0x00540a2b    e870f62e00
                         add                esp, 0x04                                     // 0x00540a30    83c404
                         push               eax                                           // 0x00540a33    50
                         push               esi                                           // 0x00540a34    56
                         {disp32} lea       eax, dword ptr [esp + 0x0000042c]             // 0x00540a35    8d84242c040000
                         push               0x00bea64c                                    // 0x00540a3c    684ca6be00
                         push               eax                                           // 0x00540a41    50
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00540a42    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00540a48    8b4c2428
                         add                esp, 0x18                                     // 0x00540a4c    83c418
                         push               ebx                                           // 0x00540a4f    53
                         push               ebx                                           // 0x00540a50    53
                         push               eax                                           // 0x00540a51    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00540a52    e83907edff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00540a57    8b0d640bcd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x24]                   // 0x00540a5d    8b4924
                         mov                edx, dword ptr [ecx]                          // 0x00540a60    8b11
                         push               ebx                                           // 0x00540a62    53
                         call               dword ptr [edx + 8]                           // 0x00540a63    ff5208
                         pop                edi                                           // 0x00540a66    5f
                         pop                esi                                           // 0x00540a67    5e
                         pop                ebp                                           // 0x00540a68    5d
                         pop                ebx                                           // 0x00540a69    5b
                         add                esp, 0x000018cc                               // 0x00540a6a    81c4cc180000
                         ret                                                              // 0x00540a70    c3
_jmp_addr_0x00540a71:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]        // 0x00540a71    8b0dd404d200
                         push               ebx                                           // 0x00540a77    53
                         push               0x00d4c138                                    // 0x00540a78    6838c1d400
                         call               dword ptr [rdata_bytes + 0x408]               // 0x00540a7d    ff1508948a00
                         {disp32} lea       esi, dword ptr [esp + 0x0000185c]             // 0x00540a83    8db4245c180000
                         mov                edi, 0x00000020                               // 0x00540a8a    bf20000000
_jmp_addr_0x00540a8f:    mov.s              ecx, esi                                      // 0x00540a8f    8bce
                         call               dword ptr [__imp___0LH_USER_ID__QAE_XZ@4]     // 0x00540a91    ff156c968a00
                         add                esi, 0x04                                     // 0x00540a97    83c604
                         dec                edi                                           // 0x00540a9a    4f
                         {disp8} jne        _jmp_addr_0x00540a8f                          // 0x00540a9b    75f2
                         xor.s              eax, eax                                      // 0x00540a9d    33c0
                         mov                ecx, 0x0000032f                               // 0x00540a9f    b92f030000
                         {disp32} lea       edi, dword ptr [esp + 0x00000c20]             // 0x00540aa4    8dbc24200c0000
                         rep stosd                                                        // 0x00540aab    f3ab
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x670]          // 0x00540aad    a170968a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]        // 0x00540ab2    8b0dd404d200
                         {disp32} mov       dword ptr [esp + 0x00000c24], eax             // 0x00540ab8    898424240c0000
                         cmp                dword ptr [data_bytes + 0x35a4d8], 0x02       // 0x00540abf    833dd804d20002
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00540ac6    8d9424d4010000
                         {disp32} mov       dword ptr [esp + 0x00000c20], ecx             // 0x00540acd    898c24200c0000
                         {disp32} mov       dword ptr [esp + 0x00000c30], edx             // 0x00540ad4    899424300c0000
                         {disp32} jne       _jmp_addr_0x00540e02                          // 0x00540adb    0f8521030000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]        // 0x00540ae1    8b0da804d200
                         {disp32} lea       eax, dword ptr [esp + 0x00000c20]             // 0x00540ae7    8d8424200c0000
                         push               eax                                           // 0x00540aee    50
                         call               dword ptr [rdata_bytes + 0x674]               // 0x00540aef    ff1574968a00
                         test               eax, eax                                      // 0x00540af5    85c0
                         {disp8} je         _jmp_addr_0x00540b6e                          // 0x00540af7    7475
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000da2 // 0x00540af9    813dac7cd100a20d0000
                         {disp8} ja         _jmp_addr_0x00540b0c                          // 0x00540b03    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540b05    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00540b18                          // 0x00540b0a    eb0c
_jmp_addr_0x00540b0c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00540b0c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a398]             // 0x00540b12    8d8198a30000
_jmp_addr_0x00540b18:    {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x00540b18    8b7008
                         call               dword ptr [__imp__GetCode_LHLogger__SAKXZ@4]  // 0x00540b1b    ff15a4938a00
                         push               eax                                           // 0x00540b21    50
                         push               esi                                           // 0x00540b22    56
                         call               dword ptr [__imp__GetText_LHLogger__SAPADXZ@4]// 0x00540b23    ff15a8938a00
                         push               eax                                           // 0x00540b29    50
                         call               _CHAR2WCHAR__FPc                              // 0x00540b2a    e871f52e00
                         add                esp, 0x04                                     // 0x00540b2f    83c404
                         push               eax                                           // 0x00540b32    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000428]             // 0x00540b33    8d942428040000
                         push               0x00bea638                                    // 0x00540b3a    6838a6be00
                         push               edx                                           // 0x00540b3f    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00540b40    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00540b46    8b4c2424
                         add                esp, 0x14                                     // 0x00540b4a    83c414
                         push               ebx                                           // 0x00540b4d    53
                         push               ebx                                           // 0x00540b4e    53
                         push               eax                                           // 0x00540b4f    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00540b50    e83b06edff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540b55    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00540b5a    8b4824
                         mov                edx, dword ptr [ecx]                          // 0x00540b5d    8b11
                         push               ebx                                           // 0x00540b5f    53
                         call               dword ptr [edx + 8]                           // 0x00540b60    ff5208
                         pop                edi                                           // 0x00540b63    5f
                         pop                esi                                           // 0x00540b64    5e
                         pop                ebp                                           // 0x00540b65    5d
                         pop                ebx                                           // 0x00540b66    5b
                         add                esp, 0x000018cc                               // 0x00540b67    81c4cc180000
                         ret                                                              // 0x00540b6d    c3
_jmp_addr_0x00540b6e:    {disp32} mov       edi, dword ptr [__imp__GetTickCount@4]        // 0x00540b6e    8b3dc4918a00
                         {disp32} mov       dword ptr [esp + 0x00000164], 0x3f800000      // 0x00540b74    c78424640100000000803f
                         {disp32} mov       dword ptr [esp + 0x00000168], 0x00000000      // 0x00540b7f    c784246801000000000000
                         call               edi                                           // 0x00540b8a    ffd7
                         {disp32} fld       dword ptr [esp + 0x00000164]                  // 0x00540b8c    d9842464010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00540b93    d81d98a38a00
                         {disp32} mov       dword ptr [esp + 0x0000015c], eax             // 0x00540b99    8984245c010000
                         {disp32} mov       dword ptr [esp + 0x00000160], ebx             // 0x00540ba0    899c2460010000
                         fnstsw             ax                                            // 0x00540ba7    dfe0
                         test               ah, 0x40                                      // 0x00540ba9    f6c440
                         {disp8} jne        _jmp_addr_0x00540bf2                          // 0x00540bac    7544
                         {disp32} mov       eax, dword ptr [esp + 0x00000164]             // 0x00540bae    8b842464010000
                         push               ebx                                           // 0x00540bb5    53
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x00540bb6    8d4c2460
                         {disp32} mov       dword ptr [esp + 0x0000016c], eax             // 0x00540bba    8984246c010000
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00540bc1    e8fadfefff
                         {disp32} fld       dword ptr [esp + 0x00000164]                  // 0x00540bc6    d9842464010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00540bcd    d81d98a38a00
                         fnstsw             ax                                            // 0x00540bd3    dfe0
                         test               ah, 0x40                                      // 0x00540bd5    f6c440
                         {disp8} jne        _jmp_addr_0x00540bf2                          // 0x00540bd8    7518
                         {disp32} mov       ecx, dword ptr [esp + 0x00000164]             // 0x00540bda    8b8c2464010000
                         {disp32} mov       dword ptr [esp + 0x00000168], ecx             // 0x00540be1    898c2468010000
                         push               ebx                                           // 0x00540be8    53
                         {disp8} lea        ecx, dword ptr [esp + 0x60]                   // 0x00540be9    8d4c2460
                         call               @SetSpeedUpFactor__7LHTimerFf@12              // 0x00540bed    e8cedfefff
_jmp_addr_0x00540bf2:    {disp32} mov       edx, dword ptr [esp + 0x00000168]             // 0x00540bf2    8b942468010000
                         {disp32} mov       dword ptr [esp + 0x00000164], 0x3727c5ac      // 0x00540bf9    c7842464010000acc52737
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00540c04    89542414
                         call               edi                                           // 0x00540c08    ffd7
                         sub                eax, dword ptr [esp + 0x0000015c]             // 0x00540c0a    2b84245c010000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00540c11    89442418
                         {disp32} mov       eax, dword ptr [esp + 0x00000160]             // 0x00540c15    8b842460010000
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00540c1c    895c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x00540c20    df6c2418
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00540c24    89442418
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x00540c28    895c241c
                         {disp32} fmul      dword ptr [esp + 0x00000164]                  // 0x00540c2c    d88c2464010000
                         {disp8} fiadd      dword ptr [esp + 0x18]                        // 0x00540c33    da442418
                         call               _jmp_addr_0x007a1400                          // 0x00540c37    e8c4072600
                         {disp32} mov       dword ptr [esp + 0x00000160], eax             // 0x00540c3c    89842460010000
                         call               edi                                           // 0x00540c43    ffd7
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00540c45    8b4c2414
                         {disp32} mov       esi, dword ptr [data_bytes + 0x35a4ac]        // 0x00540c49    8b35ac04d200
                         {disp32} mov       dword ptr [esp + 0x0000015c], eax             // 0x00540c4f    8984245c010000
                         cmp                dword ptr [data_bytes + 0x35a4d8], 0x01       // 0x00540c56    833dd804d20001
                         {disp32} mov       dword ptr [esp + 0x00000164], ecx             // 0x00540c5d    898c2464010000
                         mov                ebp, 0x00001388                               // 0x00540c64    bd88130000
                         {disp8} je         _jmp_addr_0x00540c71                          // 0x00540c69    7406
                         {disp32} mov       esi, dword ptr [data_bytes + 0x35a4a8]        // 0x00540c6b    8b35a804d200
_jmp_addr_0x00540c71:    push               0x00001388                                    // 0x00540c71    6888130000
                         mov.s              ecx, esi                                      // 0x00540c76    8bce
                         call               dword ptr [rdata_bytes + 0x404]               // 0x00540c78    ff1504948a00
                         test               eax, eax                                      // 0x00540c7e    85c0
                         {disp32} je        _jmp_addr_0x00540e02                          // 0x00540c80    0f847c010000
_jmp_addr_0x00540c86:    push               0x00000fa0                                    // 0x00540c86    68a00f0000
                         push               ebx                                           // 0x00540c8b    53
                         mov.s              ecx, esi                                      // 0x00540c8c    8bce
                         call               dword ptr [rdata_bytes + 0x644]               // 0x00540c8e    ff1544968a00
                         test               eax, eax                                      // 0x00540c94    85c0
                         {disp32} jne       _jmp_addr_0x00540e02                          // 0x00540c96    0f8566010000
                         push               0x000007d4                                    // 0x00540c9c    68d4070000
                         push               ebx                                           // 0x00540ca1    53
                         mov.s              ecx, esi                                      // 0x00540ca2    8bce
                         call               dword ptr [rdata_bytes + 0x644]               // 0x00540ca4    ff1544968a00
                         test               eax, eax                                      // 0x00540caa    85c0
                         {disp8} je         _jmp_addr_0x00540cd6                          // 0x00540cac    7428
                         mov                edx, dword ptr [esi]                          // 0x00540cae    8b16
                         push               ebx                                           // 0x00540cb0    53
                         push               ebx                                           // 0x00540cb1    53
                         mov.s              ecx, esi                                      // 0x00540cb2    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00540cb4    ff520c
                         cmp.s              eax, ebx                                      // 0x00540cb7    3bc3
                         {disp8} je         _jmp_addr_0x00540cd6                          // 0x00540cb9    741b
_jmp_addr_0x00540cbb:    mov                ecx, dword ptr [eax]                          // 0x00540cbb    8b08
                         cmp                word ptr [ecx + 0x02], 0x07d4                 // 0x00540cbd    66817902d407
                         {disp32} je        _jmp_addr_0x00540e9d                          // 0x00540cc3    0f84d4010000
                         mov                edx, dword ptr [esi]                          // 0x00540cc9    8b16
                         push               ebx                                           // 0x00540ccb    53
                         push               ebx                                           // 0x00540ccc    53
                         mov.s              ecx, esi                                      // 0x00540ccd    8bce
                         call               dword ptr [edx + 0xc]                         // 0x00540ccf    ff520c
                         cmp.s              eax, ebx                                      // 0x00540cd2    3bc3
                         {disp8} jne        _jmp_addr_0x00540cbb                          // 0x00540cd4    75e5
_jmp_addr_0x00540cd6:    call               edi                                           // 0x00540cd6    ffd7
                         sub                eax, dword ptr [esp + 0x0000015c]             // 0x00540cd8    2b84245c010000
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00540cdf    89442444
                         {disp32} mov       eax, dword ptr [esp + 0x00000160]             // 0x00540ce3    8b842460010000
                         {disp8} mov        dword ptr [esp + 0x48], ebx                   // 0x00540cea    895c2448
                         {disp8} fild       qword ptr [esp + 0x44]                        // 0x00540cee    df6c2444
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x00540cf2    8944244c
                         {disp8} mov        dword ptr [esp + 0x50], ebx                   // 0x00540cf6    895c2450
                         {disp32} fmul      dword ptr [esp + 0x00000164]                  // 0x00540cfa    d88c2464010000
                         {disp8} fiadd      dword ptr [esp + 0x4c]                        // 0x00540d01    da44244c
                         call               _jmp_addr_0x007a1400                          // 0x00540d05    e8f6062600
                         sub.s              ebp, eax                                      // 0x00540d0a    2be8
                         call               edi                                           // 0x00540d0c    ffd7
                         {disp32} fld       dword ptr [esp + 0x00000164]                  // 0x00540d0e    d9842464010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00540d15    d81d98a38a00
                         {disp32} mov       dword ptr [esp + 0x0000015c], eax             // 0x00540d1b    8984245c010000
                         {disp32} mov       dword ptr [esp + 0x00000160], ebx             // 0x00540d22    899c2460010000
                         fnstsw             ax                                            // 0x00540d29    dfe0
                         test               ah, 0x40                                      // 0x00540d2b    f6c440
                         {disp8} jne        _jmp_addr_0x00540d84                          // 0x00540d2e    7554
                         {disp32} mov       ecx, dword ptr [esp + 0x00000164]             // 0x00540d30    8b8c2464010000
                         {disp32} mov       dword ptr [esp + 0x00000168], ecx             // 0x00540d37    898c2468010000
                         call               edi                                           // 0x00540d3e    ffd7
                         {disp32} mov       ecx, dword ptr [esp + 0x0000015c]             // 0x00540d40    8b8c245c010000
                         {disp32} mov       edx, dword ptr [esp + 0x00000160]             // 0x00540d47    8b942460010000
                         sub.s              eax, ecx                                      // 0x00540d4e    2bc1
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x00540d50    89442454
                         {disp8} mov        dword ptr [esp + 0x58], ebx                   // 0x00540d54    895c2458
                         {disp8} fild       qword ptr [esp + 0x54]                        // 0x00540d58    df6c2454
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x00540d5c    8954243c
                         {disp8} mov        dword ptr [esp + 0x40], ebx                   // 0x00540d60    895c2440
                         {disp32} fmul      dword ptr [esp + 0x00000164]                  // 0x00540d64    d88c2464010000
                         {disp8} fiadd      dword ptr [esp + 0x3c]                        // 0x00540d6b    da44243c
                         call               _jmp_addr_0x007a1400                          // 0x00540d6f    e88c062600
                         {disp32} mov       dword ptr [esp + 0x00000160], eax             // 0x00540d74    89842460010000
                         call               edi                                           // 0x00540d7b    ffd7
                         {disp32} mov       dword ptr [esp + 0x0000015c], eax             // 0x00540d7d    8984245c010000
_jmp_addr_0x00540d84:    {disp32} mov       eax, dword ptr [esp + 0x00000168]             // 0x00540d84    8b842468010000
                         {disp32} mov       dword ptr [esp + 0x00000164], 0x3727c5ac      // 0x00540d8b    c7842464010000acc52737
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00540d96    89442414
                         call               edi                                           // 0x00540d9a    ffd7
                         sub                eax, dword ptr [esp + 0x0000015c]             // 0x00540d9c    2b84245c010000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000160]             // 0x00540da3    8b8c2460010000
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00540daa    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00540dae    895c2430
                         {disp8} fild       qword ptr [esp + 0x2c]                        // 0x00540db2    df6c242c
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x00540db6    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], ebx                   // 0x00540dba    895c2438
                         {disp32} fmul      dword ptr [esp + 0x00000164]                  // 0x00540dbe    d88c2464010000
                         {disp8} fiadd      dword ptr [esp + 0x34]                        // 0x00540dc5    da442434
                         call               _jmp_addr_0x007a1400                          // 0x00540dc9    e832062600
                         {disp32} mov       dword ptr [esp + 0x00000160], eax             // 0x00540dce    89842460010000
                         call               edi                                           // 0x00540dd5    ffd7
                         cmp.s              ebp, ebx                                      // 0x00540dd7    3beb
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00540dd9    8b542414
                         {disp32} mov       dword ptr [esp + 0x0000015c], eax             // 0x00540ddd    8984245c010000
                         {disp32} mov       dword ptr [esp + 0x00000164], edx             // 0x00540de4    89942464010000
                         {disp32} jl        _jmp_addr_0x00540f12                          // 0x00540deb    0f8c21010000
                         push               ebp                                           // 0x00540df1    55
                         mov.s              ecx, esi                                      // 0x00540df2    8bce
                         call               dword ptr [rdata_bytes + 0x404]               // 0x00540df4    ff1504948a00
                         test               eax, eax                                      // 0x00540dfa    85c0
                         {disp32} jne       _jmp_addr_0x00540c86                          // 0x00540dfc    0f8584feffff
_jmp_addr_0x00540e02:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00540e02    8b0d640bcd00
                         call               _jmp_addr_0x005405b0                          // 0x00540e08    e8a3f7ffff
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x6a8]          // 0x00540e0d    8b15a8968a00
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00540e13    8d442424
                         push               eax                                           // 0x00540e17    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000002c0]             // 0x00540e18    8d8c24c0020000
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000030            // 0x00540e1f    c744242830000000
                         mov                eax, dword ptr [edx]                          // 0x00540e27    8b02
                         push               ecx                                           // 0x00540e29    51
                         push               eax                                           // 0x00540e2a    50
                         call               dword ptr [rdata_bytes + 0x5f0]               // 0x00540e2b    ff15f0958a00
                         or                 ecx, 0xffffffff                               // 0x00540e31    83c9ff
                         xor.s              eax, eax                                      // 0x00540e34    33c0
                         add                esp, 0x0c                                     // 0x00540e36    83c40c
                         {disp32} lea       edi, dword ptr [esp + 0x000002bc]             // 0x00540e39    8dbc24bc020000
                         repne scasb                                                      // 0x00540e40    f2ae
                         not                ecx                                           // 0x00540e42    f7d1
                         sub.s              edi, ecx                                      // 0x00540e44    2bf9
                         mov.s              edx, ecx                                      // 0x00540e46    8bd1
                         shr                ecx, 2                                        // 0x00540e48    c1e902
                         mov.s              esi, edi                                      // 0x00540e4b    8bf7
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x400]          // 0x00540e4d    8b3d00948a00
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00540e53    f3a5
                         mov.s              ecx, edx                                      // 0x00540e55    8bca
                         and                ecx, 0x03                                     // 0x00540e57    83e103
                         rep movsb                                                        // 0x00540e5a    f3a4
                         cmp                byte ptr [data_bytes + 0x43ffe0], bl          // 0x00540e5c    381de05fe000
                         {disp8} jne        _jmp_addr_0x00540e69                          // 0x00540e62    7505
                         call               _jmp_addr_0x00513640                          // 0x00540e64    e8d727fdff
_jmp_addr_0x00540e69:    {disp32} mov       eax, dword ptr [data_bytes + 0x30a644]        // 0x00540e69    a14406cd00
                         {disp8} mov        byte ptr [eax + 0x20], bl                     // 0x00540e6e    885820
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30a648]        // 0x00540e71    8b0d4806cd00
                         {disp8} mov        byte ptr [ecx + 0x20], bl                     // 0x00540e77    885920
                         cmp                dword ptr [data_bytes + 0x35a4d8], 0x02       // 0x00540e7a    833dd804d20002
                         {disp32} jne       _jmp_addr_0x00540f66                          // 0x00540e81    0f85df000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30a648]        // 0x00540e87    8b0d4806cd00
                         mov                edx, dword ptr [ecx]                          // 0x00540e8d    8b11
                         call               dword ptr [edx + 0xc]                         // 0x00540e8f    ff520c
                         pop                edi                                           // 0x00540e92    5f
                         pop                esi                                           // 0x00540e93    5e
                         pop                ebp                                           // 0x00540e94    5d
                         pop                ebx                                           // 0x00540e95    5b
                         add                esp, 0x000018cc                               // 0x00540e96    81c4cc180000
                         ret                                                              // 0x00540e9c    c3
_jmp_addr_0x00540e9d:    {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00540e9d    8d4c2420
                         push               ecx                                           // 0x00540ea1    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00540ea2    8d54241c
                         push               edx                                           // 0x00540ea6    52
                         push               0x000007d4                                    // 0x00540ea7    68d4070000
                         push               eax                                           // 0x00540eac    50
                         call               dword ptr [rdata_bytes + 0x64c]               // 0x00540ead    ff154c968a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]        // 0x00540eb3    a1ac7cd100
                         add                esp, 0x10                                     // 0x00540eb8    83c410
                         cmp                eax, 0x00000da3                               // 0x00540ebb    3da30d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540ec0    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00540ecc                          // 0x00540ec5    7605
                         add                eax, 0x0000a3a4                               // 0x00540ec7    05a4a30000
_jmp_addr_0x00540ecc:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00540ecc    8b4c2420
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x00540ed0    8b7808
                         push               ecx                                           // 0x00540ed3    51
                         call               _CHAR2WCHAR__FPc                              // 0x00540ed4    e8c7f12e00
                         add                esp, 0x04                                     // 0x00540ed9    83c404
                         push               eax                                           // 0x00540edc    50
                         push               edi                                           // 0x00540edd    57
                         {disp32} lea       edx, dword ptr [esp + 0x00000424]             // 0x00540ede    8d942424040000
                         push               0x00bea62c                                    // 0x00540ee5    682ca6be00
                         push               edx                                           // 0x00540eea    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00540eeb    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00540ef1    8b4c2420
                         add                esp, 0x10                                     // 0x00540ef5    83c410
                         push               ebx                                           // 0x00540ef8    53
                         push               ebx                                           // 0x00540ef9    53
                         push               eax                                           // 0x00540efa    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00540efb    e89002edff
                         mov                eax, dword ptr [esi]                          // 0x00540f00    8b06
                         mov.s              ecx, esi                                      // 0x00540f02    8bce
                         call               dword ptr [eax + 8]                           // 0x00540f04    ff5008
                         pop                edi                                           // 0x00540f07    5f
                         pop                esi                                           // 0x00540f08    5e
                         pop                ebp                                           // 0x00540f09    5d
                         pop                ebx                                           // 0x00540f0a    5b
                         add                esp, 0x000018cc                               // 0x00540f0b    81c4cc180000
                         ret                                                              // 0x00540f11    c3
_jmp_addr_0x00540f12:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000da4 // 0x00540f12    813dac7cd100a40d0000
                         {disp8} ja         _jmp_addr_0x00540f3d                          // 0x00540f1c    771f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00540f1e    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00540f23    8b5008
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00540f26    8b4c2410
                         push               ebx                                           // 0x00540f2a    53
                         push               ebx                                           // 0x00540f2b    53
                         push               edx                                           // 0x00540f2c    52
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00540f2d    e85e02edff
                         pop                edi                                           // 0x00540f32    5f
                         pop                esi                                           // 0x00540f33    5e
                         pop                ebp                                           // 0x00540f34    5d
                         pop                ebx                                           // 0x00540f35    5b
                         add                esp, 0x000018cc                               // 0x00540f36    81c4cc180000
                         ret                                                              // 0x00540f3c    c3
_jmp_addr_0x00540f3d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00540f3d    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a3b8]             // 0x00540f43    8b91b8a30000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a3b0]             // 0x00540f49    8d81b0a30000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00540f4f    8b4c2410
                         push               ebx                                           // 0x00540f53    53
                         push               ebx                                           // 0x00540f54    53
                         push               edx                                           // 0x00540f55    52
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00540f56    e83502edff
                         pop                edi                                           // 0x00540f5b    5f
                         pop                esi                                           // 0x00540f5c    5e
                         pop                ebp                                           // 0x00540f5d    5d
                         pop                ebx                                           // 0x00540f5e    5b
                         add                esp, 0x000018cc                               // 0x00540f5f    81c4cc180000
                         ret                                                              // 0x00540f65    c3
_jmp_addr_0x00540f66:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30a644]        // 0x00540f66    8b0d4406cd00
                         mov                eax, dword ptr [ecx]                          // 0x00540f6c    8b01
                         call               dword ptr [eax + 0xc]                         // 0x00540f6e    ff500c
                         pop                edi                                           // 0x00540f71    5f
                         pop                esi                                           // 0x00540f72    5e
                         pop                ebp                                           // 0x00540f73    5d
                         pop                ebx                                           // 0x00540f74    5b
                         add                esp, 0x000018cc                               // 0x00540f75    81c4cc180000
                         ret                                                              // 0x00540f7b    c3
                         nop                                                              // 0x00540f7c    90
                         nop                                                              // 0x00540f7d    90
                         nop                                                              // 0x00540f7e    90
                         nop                                                              // 0x00540f7f    90
_jmp_addr_0x00540f80:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540f80    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00540f85    8b4830
                         mov                edx, dword ptr [ecx]                          // 0x00540f88    8b11
                         push               ebx                                           // 0x00540f8a    53
                         push               esi                                           // 0x00540f8b    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00540f8c    8b74240c
                         test               esi, esi                                      // 0x00540f90    85f6
                         sete               bl                                            // 0x00540f92    0f94c3
                         push               ebx                                           // 0x00540f95    53
                         call               dword ptr [edx + 8]                           // 0x00540f96    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540f99    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00540f9e    8b4818
                         mov                edx, dword ptr [ecx]                          // 0x00540fa1    8b11
                         push               ebx                                           // 0x00540fa3    53
                         call               dword ptr [edx + 8]                           // 0x00540fa4    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540fa7    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x00540fac    8b4844
                         mov                edx, dword ptr [ecx]                          // 0x00540faf    8b11
                         push               ebx                                           // 0x00540fb1    53
                         call               dword ptr [edx + 8]                           // 0x00540fb2    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540fb5    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00540fba    8b4830
                         {disp32} mov       dword ptr [ecx + 0x00000248], esi             // 0x00540fbd    89b148020000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab64]        // 0x00540fc3    8b15640bcd00
                         {disp8} mov        ecx, dword ptr [edx + 0x10]                   // 0x00540fc9    8b4a10
                         mov                eax, dword ptr [ecx]                          // 0x00540fcc    8b01
                         push               ebx                                           // 0x00540fce    53
                         call               dword ptr [eax + 8]                           // 0x00540fcf    ff5008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00540fd2    8b0d640bcd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                   // 0x00540fd8    8b4914
                         mov                edx, dword ptr [ecx]                          // 0x00540fdb    8b11
                         push               ebx                                           // 0x00540fdd    53
                         call               dword ptr [edx + 8]                           // 0x00540fde    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540fe1    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x4c]                   // 0x00540fe6    8b484c
                         mov                edx, dword ptr [ecx]                          // 0x00540fe9    8b11
                         push               ebx                                           // 0x00540feb    53
                         call               dword ptr [edx + 8]                           // 0x00540fec    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540fef    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x00540ff4    8b4848
                         mov                edx, dword ptr [ecx]                          // 0x00540ff7    8b11
                         push               ebx                                           // 0x00540ff9    53
                         call               dword ptr [edx + 8]                           // 0x00540ffa    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00540ffd    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x50]                   // 0x00541002    8b4850
                         mov                edx, dword ptr [ecx]                          // 0x00541005    8b11
                         push               ebx                                           // 0x00541007    53
                         call               dword ptr [edx + 8]                           // 0x00541008    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x0054100b    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x00541010    8b4830
                         neg                esi                                           // 0x00541013    f7de
                         sbb.s              esi, esi                                      // 0x00541015    1bf6
                         and                esi, 0xffffff42                               // 0x00541017    81e642ffffff
                         add                esi, 0x000001bd                               // 0x0054101d    81c6bd010000
                         {disp8} mov        dword ptr [ecx + 0x0c], esi                   // 0x00541023    89710c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab64]        // 0x00541026    8b15640bcd00
                         {disp8} mov        eax, dword ptr [edx + 0x30]                   // 0x0054102c    8b4230
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                   // 0x0054102f    8b480c
                         add                ecx, 0x14                                     // 0x00541032    83c114
                         pop                esi                                           // 0x00541035    5e
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x00541036    894814
                         pop                ebx                                           // 0x00541039    5b
                         ret                0x0004                                        // 0x0054103a    c20400
                         nop                                                              // 0x0054103d    90
                         nop                                                              // 0x0054103e    90
                         nop                                                              // 0x0054103f    90
?Init@LoginBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00541040    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00541044    8b542404
                         push               ebx                                           // 0x00541048    53
                         push               esi                                           // 0x00541049    56
                         push               edi                                           // 0x0054104a    57
                         mov.s              esi, ecx                                      // 0x0054104b    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0054104d    8b4c2414
                         push               eax                                           // 0x00541051    50
                         push               ecx                                           // 0x00541052    51
                         push               edx                                           // 0x00541053    52
                         mov.s              ecx, esi                                      // 0x00541054    8bce
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00541056    e8a523fdff
                         push               0x000008ee                                    // 0x0054105b    68ee080000
                         push               0x00bea568                                    // 0x00541060    6868a5be00
                         push               0x00000244                                    // 0x00541065    6844020000
                         {disp32} mov       dword ptr [data_bytes + 0x30ab64], esi        // 0x0054106a    8935640bcd00
                         call               ___nw__FUl                                    // 0x00541070    e81ba72900
                         mov.s              edi, eax                                      // 0x00541075    8bf8
                         xor.s              ebx, ebx                                      // 0x00541077    33db
                         add                esp, 0x0c                                     // 0x00541079    83c40c
                         cmp.s              edi, ebx                                      // 0x0054107c    3bfb
                         {disp8} je         _jmp_addr_0x005410ca                          // 0x0054107e    744a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd2 // 0x00541080    813dac7cd100d20d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054108a    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00541096                          // 0x0054108f    7605
                         add                eax, 0x0000a5d8                               // 0x00541091    05d8a50000
_jmp_addr_0x00541096:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00541096    8b4808
                         push               ecx                                           // 0x00541099    51
                         push               0x50                                          // 0x0054109a    6a50
                         push               0x00000258                                    // 0x0054109c    6858020000
                         push               0x32                                          // 0x005410a1    6a32
                         push               0x64                                          // 0x005410a3    6a64
                         push               0x9                                           // 0x005410a5    6a09
                         mov.s              ecx, edi                                      // 0x005410a7    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005410a9    e8a281ecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x005410ae    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000004      // 0x005410b4    c7873c02000004000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005410be    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005410c4    899f40020000
_jmp_addr_0x005410ca:    push               0x000008ef                                    // 0x005410ca    68ef080000
                         push               0x00bea568                                    // 0x005410cf    6868a5be00
                         push               0x000002b0                                    // 0x005410d4    68b0020000
                         call               ___nw__FUl                                    // 0x005410d9    e8b2a62900
                         add                esp, 0x0c                                     // 0x005410de    83c40c
                         cmp.s              eax, ebx                                      // 0x005410e1    3bc3
                         {disp8} je         _jmp_addr_0x00541101                          // 0x005410e3    741c
                         push               0x64                                          // 0x005410e5    6a64
                         push               0x000001f4                                    // 0x005410e7    68f4010000
                         push               0x00000087                                    // 0x005410ec    6887000000
                         push               0x00000096                                    // 0x005410f1    6896000000
                         push               0x7                                           // 0x005410f6    6a07
                         mov.s              ecx, eax                                      // 0x005410f8    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x005410fa    e85193ecff
                         {disp8} jmp        _jmp_addr_0x00541103                          // 0x005410ff    eb02
_jmp_addr_0x00541101:    xor.s              eax, eax                                      // 0x00541101    33c0
_jmp_addr_0x00541103:    {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x00541103    89461c
                         call               _GetMidTextSize__Fv                           // 0x00541106    e8f568ecff
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x0054110b    8b561c
                         push               0x000008f1                                    // 0x0054110e    68f1080000
                         push               0x00bea568                                    // 0x00541113    6868a5be00
                         push               0x00000468                                    // 0x00541118    6868040000
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x0054111d    894220
                         call               ___nw__FUl                                    // 0x00541120    e86ba62900
                         add                esp, 0x0c                                     // 0x00541125    83c40c
                         cmp.s              eax, ebx                                      // 0x00541128    3bc3
                         {disp8} je         _jmp_addr_0x00541165                          // 0x0054112a    7439
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd3 // 0x0054112c    813dac7cd100d30d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00541136    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00541144                          // 0x0054113c    7606
                         add                ecx, 0x0000a5e4                               // 0x0054113e    81c1e4a50000
_jmp_addr_0x00541144:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00541144    8b4908
                         push               ebx                                           // 0x00541147    53
                         push               ecx                                           // 0x00541148    51
                         push               0x1e                                          // 0x00541149    6a1e
                         push               0x00000190                                    // 0x0054114b    6890010000
                         push               0x00000212                                    // 0x00541150    6812020000
                         push               0x000000c8                                    // 0x00541155    68c8000000
                         push               0xa                                           // 0x0054115a    6a0a
                         mov.s              ecx, eax                                      // 0x0054115c    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x0054115e    e8bdb0ecff
                         {disp8} jmp        _jmp_addr_0x00541167                          // 0x00541163    eb02
_jmp_addr_0x00541165:    xor.s              eax, eax                                      // 0x00541165    33c0
_jmp_addr_0x00541167:    {disp8} mov        dword ptr [esi + 0x20], eax                   // 0x00541167    894620
                         call               _GetMidTextSize__Fv                           // 0x0054116a    e89168ecff
                         {disp8} mov        edx, dword ptr [esi + 0x20]                   // 0x0054116f    8b5620
                         push               0x000008f4                                    // 0x00541172    68f4080000
                         push               0x00bea568                                    // 0x00541177    6868a5be00
                         push               0x0000025c                                    // 0x0054117c    685c020000
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x00541181    894220
                         call               ___nw__FUl                                    // 0x00541184    e807a62900
                         add                esp, 0x0c                                     // 0x00541189    83c40c
                         cmp.s              eax, ebx                                      // 0x0054118c    3bc3
                         {disp8} je         _jmp_addr_0x005411c7                          // 0x0054118e    7437
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d85 // 0x00541190    813dac7cd100850d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054119a    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005411a8                          // 0x005411a0    7606
                         add                ecx, 0x0000a23c                               // 0x005411a2    81c13ca20000
_jmp_addr_0x005411a8:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005411a8    8b4908
                         push               0x3                                           // 0x005411ab    6a03
                         push               0x1                                           // 0x005411ad    6a01
                         push               0x28                                          // 0x005411af    6a28
                         push               ecx                                           // 0x005411b1    51
                         push               0x00000208                                    // 0x005411b2    6808020000
                         push               0x000002a8                                    // 0x005411b7    68a8020000
                         push               0x3                                           // 0x005411bc    6a03
                         mov.s              ecx, eax                                      // 0x005411be    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005411c0    e89bc0ecff
                         {disp8} jmp        _jmp_addr_0x005411c9                          // 0x005411c5    eb02
_jmp_addr_0x005411c7:    xor.s              eax, eax                                      // 0x005411c7    33c0
_jmp_addr_0x005411c9:    push               0x000008f5                                    // 0x005411c9    68f5080000
                         push               0x00bea568                                    // 0x005411ce    6868a5be00
                         push               0x0000025c                                    // 0x005411d3    685c020000
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x005411d8    894624
                         call               ___nw__FUl                                    // 0x005411db    e8b0a52900
                         add                esp, 0x0c                                     // 0x005411e0    83c40c
                         cmp.s              eax, ebx                                      // 0x005411e3    3bc3
                         {disp8} je         _jmp_addr_0x00541222                          // 0x005411e5    743b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x005411e7    813dac7cd1007a0d0000
                         {disp8} ja         _jmp_addr_0x005411fb                          // 0x005411f1    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005411f3    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00541207                          // 0x005411f9    eb0c
_jmp_addr_0x005411fb:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005411fb    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a1b8]             // 0x00541201    8d8ab8a10000
_jmp_addr_0x00541207:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00541207    8b4908
                         push               0x2                                           // 0x0054120a    6a02
                         push               ebx                                           // 0x0054120c    53
                         push               0x28                                          // 0x0054120d    6a28
                         push               ecx                                           // 0x0054120f    51
                         push               0x00000208                                    // 0x00541210    6808020000
                         push               0x50                                          // 0x00541215    6a50
                         push               0x4                                           // 0x00541217    6a04
                         mov.s              ecx, eax                                      // 0x00541219    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0054121b    e840c0ecff
                         {disp8} jmp        _jmp_addr_0x00541224                          // 0x00541220    eb02
_jmp_addr_0x00541222:    xor.s              eax, eax                                      // 0x00541222    33c0
_jmp_addr_0x00541224:    push               0x000008f7                                    // 0x00541224    68f7080000
                         push               0x00bea568                                    // 0x00541229    6868a5be00
                         push               0x00000260                                    // 0x0054122e    6860020000
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x00541233    894628
                         call               ___nw__FUl                                    // 0x00541236    e855a52900
                         add                esp, 0x0c                                     // 0x0054123b    83c40c
                         cmp.s              eax, ebx                                      // 0x0054123e    3bc3
                         {disp8} je         _jmp_addr_0x00541277                          // 0x00541240    7435
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d88 // 0x00541242    813dac7cd100880d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054124c    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054125a                          // 0x00541252    7606
                         add                ecx, 0x0000a260                               // 0x00541254    81c160a20000
_jmp_addr_0x0054125a:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054125a    8b4908
                         push               0x19                                          // 0x0054125d    6a19
                         push               ecx                                           // 0x0054125f    51
                         push               ebx                                           // 0x00541260    53
                         push               ebx                                           // 0x00541261    53
                         push               0x000000ff                                    // 0x00541262    68ff000000
                         push               0x00000096                                    // 0x00541267    6896000000
                         push               0x8                                           // 0x0054126c    6a08
                         mov.s              ecx, eax                                      // 0x0054126e    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00541270    e89bfcecff
                         {disp8} jmp        _jmp_addr_0x00541279                          // 0x00541275    eb02
_jmp_addr_0x00541277:    xor.s              eax, eax                                      // 0x00541277    33c0
_jmp_addr_0x00541279:    push               0x000008f9                                    // 0x00541279    68f9080000
                         push               0x00bea568                                    // 0x0054127e    6868a5be00
                         {disp8} mov        dword ptr [esi + 0x30], eax                   // 0x00541283    894630
                         push               0x00000244                                    // 0x00541286    6844020000
                         {disp32} mov       dword ptr [eax + 0x00000244], ebx             // 0x0054128b    899844020000
                         call               ___nw__FUl                                    // 0x00541291    e8faa42900
                         mov.s              edi, eax                                      // 0x00541296    8bf8
                         add                esp, 0x0c                                     // 0x00541298    83c40c
                         cmp.s              edi, ebx                                      // 0x0054129b    3bfb
                         {disp8} je         _jmp_addr_0x005412fa                          // 0x0054129d    745b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dd4 // 0x0054129f    813dac7cd100d40d0000
                         {disp8} ja         _jmp_addr_0x005412b2                          // 0x005412a9    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005412ab    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005412be                          // 0x005412b0    eb0c
_jmp_addr_0x005412b2:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005412b2    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a5f0]             // 0x005412b8    8d82f0a50000
_jmp_addr_0x005412be:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005412be    8b4008
                         push               eax                                           // 0x005412c1    50
                         push               0x3c                                          // 0x005412c2    6a3c
                         push               0x000002bc                                    // 0x005412c4    68bc020000
                         push               0x0000012c                                    // 0x005412c9    682c010000
                         push               0x32                                          // 0x005412ce    6a32
                         push               0x000003e7                                    // 0x005412d0    68e7030000
                         mov.s              ecx, edi                                      // 0x005412d5    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005412d7    e8747fecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x005412dc    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000004      // 0x005412e2    c7873c02000004000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005412ec    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005412f2    899f40020000
                         {disp8} jmp        _jmp_addr_0x005412fc                          // 0x005412f8    eb02
_jmp_addr_0x005412fa:    xor.s              edi, edi                                      // 0x005412fa    33ff
_jmp_addr_0x005412fc:    {disp8} mov        dword ptr [esi + 0x4c], edi                   // 0x005412fc    897e4c
                         call               _jmp_addr_0x00407a20                          // 0x005412ff    e81c67ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                   // 0x00541304    8b4e4c
                         push               0x000008fc                                    // 0x00541307    68fc080000
                         push               0x00bea568                                    // 0x0054130c    6868a5be00
                         push               0x00000468                                    // 0x00541311    6868040000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00541316    894120
                         call               ___nw__FUl                                    // 0x00541319    e872a42900
                         add                esp, 0x0c                                     // 0x0054131e    83c40c
                         cmp.s              eax, ebx                                      // 0x00541321    3bc3
                         {disp8} je         _jmp_addr_0x00541347                          // 0x00541323    7422
                         push               0x1                                           // 0x00541325    6a01
                         push               0x00c4cd30                                    // 0x00541327    6830cdc400
                         push               0x1e                                          // 0x0054132c    6a1e
                         push               0x0000014a                                    // 0x0054132e    684a010000
                         push               0x00000168                                    // 0x00541333    6868010000
                         push               0x00000140                                    // 0x00541338    6840010000
                         push               ebx                                           // 0x0054133d    53
                         mov.s              ecx, eax                                      // 0x0054133e    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x00541340    e8dbaeecff
                         {disp8} jmp        _jmp_addr_0x00541349                          // 0x00541345    eb02
_jmp_addr_0x00541347:    xor.s              eax, eax                                      // 0x00541347    33c0
_jmp_addr_0x00541349:    push               0x000008fd                                    // 0x00541349    68fd080000
                         push               0x00bea568                                    // 0x0054134e    6868a5be00
                         push               0x00000244                                    // 0x00541353    6844020000
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x00541358    894610
                         call               ___nw__FUl                                    // 0x0054135b    e830a42900
                         mov.s              edi, eax                                      // 0x00541360    8bf8
                         add                esp, 0x0c                                     // 0x00541362    83c40c
                         cmp.s              edi, ebx                                      // 0x00541365    3bfb
                         {disp8} je         _jmp_addr_0x005413c4                          // 0x00541367    745b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8e // 0x00541369    813dac7cd1008e0d0000
                         {disp8} ja         _jmp_addr_0x0054137c                          // 0x00541373    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541375    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00541388                          // 0x0054137a    eb0c
_jmp_addr_0x0054137c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054137c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a2a8]             // 0x00541382    8d82a8a20000
_jmp_addr_0x00541388:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00541388    8b4008
                         push               eax                                           // 0x0054138b    50
                         push               0x1e                                          // 0x0054138c    6a1e
                         push               0x000000d2                                    // 0x0054138e    68d2000000
                         push               0x00000168                                    // 0x00541393    6868010000
                         push               0x64                                          // 0x00541398    6a64
                         push               0x000003e7                                    // 0x0054139a    68e7030000
                         mov.s              ecx, edi                                      // 0x0054139f    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005413a1    e8aa7eecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x005413a6    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000002      // 0x005413ac    c7873c02000002000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005413b6    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005413bc    899f40020000
                         {disp8} jmp        _jmp_addr_0x005413c6                          // 0x005413c2    eb02
_jmp_addr_0x005413c4:    xor.s              edi, edi                                      // 0x005413c4    33ff
_jmp_addr_0x005413c6:    push               0x000008fe                                    // 0x005413c6    68fe080000
                         push               0x00bea568                                    // 0x005413cb    6868a5be00
                         push               0x00000468                                    // 0x005413d0    6868040000
                         {disp8} mov        dword ptr [esi + 0x48], edi                   // 0x005413d5    897e48
                         call               ___nw__FUl                                    // 0x005413d8    e8b3a32900
                         add                esp, 0x0c                                     // 0x005413dd    83c40c
                         cmp.s              eax, ebx                                      // 0x005413e0    3bc3
                         {disp8} je         _jmp_addr_0x00541407                          // 0x005413e2    7423
                         push               0x1                                           // 0x005413e4    6a01
                         push               0x00c4cd30                                    // 0x005413e6    6830cdc400
                         push               0x1e                                          // 0x005413eb    6a1e
                         push               0x0000014a                                    // 0x005413ed    684a010000
                         push               0x0000019a                                    // 0x005413f2    689a010000
                         push               0x00000140                                    // 0x005413f7    6840010000
                         push               0x1                                           // 0x005413fc    6a01
                         mov.s              ecx, eax                                      // 0x005413fe    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x00541400    e81baeecff
                         {disp8} jmp        _jmp_addr_0x00541409                          // 0x00541405    eb02
_jmp_addr_0x00541407:    xor.s              eax, eax                                      // 0x00541407    33c0
_jmp_addr_0x00541409:    push               0x000008ff                                    // 0x00541409    68ff080000
                         push               0x00bea568                                    // 0x0054140e    6868a5be00
                         push               0x00000244                                    // 0x00541413    6844020000
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00541418    894614
                         call               ___nw__FUl                                    // 0x0054141b    e870a32900
                         mov.s              edi, eax                                      // 0x00541420    8bf8
                         add                esp, 0x0c                                     // 0x00541422    83c40c
                         cmp.s              edi, ebx                                      // 0x00541425    3bfb
                         {disp8} je         _jmp_addr_0x00541484                          // 0x00541427    745b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8f // 0x00541429    813dac7cd1008f0d0000
                         {disp8} ja         _jmp_addr_0x0054143c                          // 0x00541433    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541435    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00541448                          // 0x0054143a    eb0c
_jmp_addr_0x0054143c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054143c    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a2b4]             // 0x00541442    8d81b4a20000
_jmp_addr_0x00541448:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00541448    8b5008
                         push               edx                                           // 0x0054144b    52
                         push               0x1e                                          // 0x0054144c    6a1e
                         push               0x000000d2                                    // 0x0054144e    68d2000000
                         push               0x0000019a                                    // 0x00541453    689a010000
                         push               0x64                                          // 0x00541458    6a64
                         push               0x000003e7                                    // 0x0054145a    68e7030000
                         mov.s              ecx, edi                                      // 0x0054145f    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00541461    e8ea7decff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00541466    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000002      // 0x0054146c    c7873c02000002000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x00541476    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x0054147c    899f40020000
                         {disp8} jmp        _jmp_addr_0x00541486                          // 0x00541482    eb02
_jmp_addr_0x00541484:    xor.s              edi, edi                                      // 0x00541484    33ff
_jmp_addr_0x00541486:    {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00541486    8b4614
                         {disp8} mov        dword ptr [esi + 0x50], edi                   // 0x00541489    897e50
                         {disp32} mov       byte ptr [eax + 0x00000260], 0x01             // 0x0054148c    c6806002000001
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00541493    8b4e14
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                   // 0x00541496    895904
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x00541499    8b5610
                         {disp8} mov        dword ptr [edx + 0x04], ebx                   // 0x0054149c    895a04
                         call               _GetMidTextSize__Fv                           // 0x0054149f    e85c65ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                   // 0x005414a4    8b4e50
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x005414a7    894120
                         {disp8} mov        edx, dword ptr [esi + 0x50]                   // 0x005414aa    8b5650
                         {disp8} mov        ecx, dword ptr [edx + 0x20]                   // 0x005414ad    8b4a20
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x005414b0    8b4614
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x005414b3    894820
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x005414b6    8b5614
                         {disp8} mov        ecx, dword ptr [edx + 0x20]                   // 0x005414b9    8b4a20
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x005414bc    8b4648
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x005414bf    894820
                         {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x005414c2    8b5648
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x005414c5    8b4610
                         {disp8} mov        ecx, dword ptr [edx + 0x20]                   // 0x005414c8    8b4a20
                         push               0x00000907                                    // 0x005414cb    6807090000
                         push               0x00bea568                                    // 0x005414d0    6868a5be00
                         push               0x00000468                                    // 0x005414d5    6868040000
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x005414da    894820
                         call               ___nw__FUl                                    // 0x005414dd    e8aea22900
                         add                esp, 0x0c                                     // 0x005414e2    83c40c
                         cmp.s              eax, ebx                                      // 0x005414e5    3bc3
                         {disp8} je         _jmp_addr_0x0054152b                          // 0x005414e7    7442
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d90 // 0x005414e9    813dac7cd100900d0000
                         {disp8} ja         _jmp_addr_0x005414fd                          // 0x005414f3    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005414f5    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x00541509                          // 0x005414fb    eb0c
_jmp_addr_0x005414fd:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005414fd    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a2c0]             // 0x00541503    8d8ac0a20000
_jmp_addr_0x00541509:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00541509    8b4908
                         push               0x1                                           // 0x0054150c    6a01
                         push               ecx                                           // 0x0054150e    51
                         push               0x1e                                          // 0x0054150f    6a1e
                         push               0x0000014a                                    // 0x00541511    684a010000
                         push               0x000001cc                                    // 0x00541516    68cc010000
                         push               0x00000140                                    // 0x0054151b    6840010000
                         push               0x2                                           // 0x00541520    6a02
                         mov.s              ecx, eax                                      // 0x00541522    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x00541524    e8f7acecff
                         {disp8} jmp        _jmp_addr_0x0054152d                          // 0x00541529    eb02
_jmp_addr_0x0054152b:    xor.s              eax, eax                                      // 0x0054152b    33c0
_jmp_addr_0x0054152d:    {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0054152d    894618
                         call               _GetSmallTextSize__Fv                         // 0x00541530    e8db64ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00541535    8b4e18
                         push               0x00000909                                    // 0x00541538    6809090000
                         push               0x00bea568                                    // 0x0054153d    6868a5be00
                         push               0x00000244                                    // 0x00541542    6844020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00541547    894120
                         call               ___nw__FUl                                    // 0x0054154a    e841a22900
                         mov.s              edi, eax                                      // 0x0054154f    8bf8
                         add                esp, 0x0c                                     // 0x00541551    83c40c
                         cmp.s              edi, ebx                                      // 0x00541554    3bfb
                         {disp8} je         _jmp_addr_0x005415b3                          // 0x00541556    745b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d90 // 0x00541558    813dac7cd100900d0000
                         {disp8} ja         _jmp_addr_0x0054156b                          // 0x00541562    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541564    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00541577                          // 0x00541569    eb0c
_jmp_addr_0x0054156b:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x0054156b    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a2c0]             // 0x00541571    8d82c0a20000
_jmp_addr_0x00541577:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00541577    8b4008
                         push               eax                                           // 0x0054157a    50
                         push               0x1e                                          // 0x0054157b    6a1e
                         push               0x0000012c                                    // 0x0054157d    682c010000
                         push               0x000001cc                                    // 0x00541582    68cc010000
                         push               0xa                                           // 0x00541587    6a0a
                         push               0x000003e7                                    // 0x00541589    68e7030000
                         mov.s              ecx, edi                                      // 0x0054158e    8bcf
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00541590    e8bb7cecff
                         mov                dword ptr [edi], 0x008ab5c0                   // 0x00541595    c707c0b58a00
                         {disp32} mov       dword ptr [edi + 0x0000023c], 0x00000002      // 0x0054159b    c7873c02000002000000
                         {disp32} mov       byte ptr [edi + 0x0000022a], bl               // 0x005415a5    889f2a020000
                         {disp32} mov       dword ptr [edi + 0x00000240], ebx             // 0x005415ab    899f40020000
                         {disp8} jmp        _jmp_addr_0x005415b5                          // 0x005415b1    eb02
_jmp_addr_0x005415b3:    xor.s              edi, edi                                      // 0x005415b3    33ff
_jmp_addr_0x005415b5:    {disp8} mov        dword ptr [esi + 0x44], edi                   // 0x005415b5    897e44
                         call               _GetMidTextSize__Fv                           // 0x005415b8    e84364ecff
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                   // 0x005415bd    8b4e44
                         push               0x0000090f                                    // 0x005415c0    680f090000
                         push               0x00bea568                                    // 0x005415c5    6868a5be00
                         push               0x00000260                                    // 0x005415ca    6860020000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x005415cf    894120
                         call               ___nw__FUl                                    // 0x005415d2    e8b9a12900
                         add                esp, 0x0c                                     // 0x005415d7    83c40c
                         cmp.s              eax, ebx                                      // 0x005415da    3bc3
                         {disp8} je         _jmp_addr_0x00541618                          // 0x005415dc    743a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d89 // 0x005415de    813dac7cd100890d0000
                         {disp8} ja         _jmp_addr_0x005415f2                          // 0x005415e8    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005415ea    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005415fe                          // 0x005415f0    eb0c
_jmp_addr_0x005415f2:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005415f2    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a26c]             // 0x005415f8    8d8a6ca20000
_jmp_addr_0x005415fe:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005415fe    8b4908
                         push               0x14                                          // 0x00541601    6a14
                         push               ecx                                           // 0x00541603    51
                         push               ebx                                           // 0x00541604    53
                         push               ebx                                           // 0x00541605    53
                         push               0x0000023a                                    // 0x00541606    683a020000
                         push               0x46                                          // 0x0054160b    6a46
                         push               0x5                                           // 0x0054160d    6a05
                         mov.s              ecx, eax                                      // 0x0054160f    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x00541611    e8faf8ecff
                         {disp8} jmp        _jmp_addr_0x0054161a                          // 0x00541616    eb02
_jmp_addr_0x00541618:    xor.s              eax, eax                                      // 0x00541618    33c0
_jmp_addr_0x0054161a:    push               0x00000911                                    // 0x0054161a    6811090000
                         push               0x00bea568                                    // 0x0054161f    6868a5be00
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x00541624    89462c
                         mov                edi, 0x0000000c                               // 0x00541627    bf0c000000
                         push               0x00000260                                    // 0x0054162c    6860020000
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x00541631    897820
                         call               ___nw__FUl                                    // 0x00541634    e857a12900
                         add                esp, 0x0c                                     // 0x00541639    83c40c
                         cmp.s              eax, ebx                                      // 0x0054163c    3bc3
                         {disp8} je         _jmp_addr_0x00541675                          // 0x0054163e    7435
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8a // 0x00541640    813dac7cd1008a0d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054164a    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00541658                          // 0x00541650    7606
                         add                ecx, 0x0000a278                               // 0x00541652    81c178a20000
_jmp_addr_0x00541658:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00541658    8b4908
                         push               0x14                                          // 0x0054165b    6a14
                         push               ecx                                           // 0x0054165d    51
                         push               ebx                                           // 0x0054165e    53
                         push               ebx                                           // 0x0054165f    53
                         push               0x0000023a                                    // 0x00541660    683a020000
                         push               0x000000c8                                    // 0x00541665    68c8000000
                         push               0x6                                           // 0x0054166a    6a06
                         mov.s              ecx, eax                                      // 0x0054166c    8bc8
                         call               @__ct__13SetupCheckBoxFiiibiPwi@33            // 0x0054166e    e89df8ecff
                         {disp8} jmp        _jmp_addr_0x00541677                          // 0x00541673    eb02
_jmp_addr_0x00541675:    xor.s              eax, eax                                      // 0x00541675    33c0
_jmp_addr_0x00541677:    push               0x00000914                                    // 0x00541677    6814090000
                         push               0x00bea568                                    // 0x0054167c    6868a5be00
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x00541681    894634
                         push               0x00000244                                    // 0x00541684    6844020000
                         {disp8} mov        dword ptr [eax + 0x20], edi                   // 0x00541689    897820
                         call               ___nw__FUl                                    // 0x0054168c    e8ffa02900
                         add                esp, 0x0c                                     // 0x00541691    83c40c
                         cmp.s              eax, ebx                                      // 0x00541694    3bc3
                         {disp8} je         _jmp_addr_0x005416d6                          // 0x00541696    743e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8b // 0x00541698    813dac7cd1008b0d0000
                         {disp8} ja         _jmp_addr_0x005416ac                          // 0x005416a2    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005416a4    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x005416b8                          // 0x005416aa    eb0c
_jmp_addr_0x005416ac:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005416ac    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a284]             // 0x005416b2    8d8a84a20000
_jmp_addr_0x005416b8:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005416b8    8b4908
                         push               ebx                                           // 0x005416bb    53
                         push               ecx                                           // 0x005416bc    51
                         push               0x19                                          // 0x005416bd    6a19
                         push               0x64                                          // 0x005416bf    6a64
                         push               0x00000244                                    // 0x005416c1    6844020000
                         push               0x00000140                                    // 0x005416c6    6840010000
                         push               0xd                                           // 0x005416cb    6a0d
                         mov.s              ecx, eax                                      // 0x005416cd    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x005416cf    e8dc81ecff
                         {disp8} jmp        _jmp_addr_0x005416d8                          // 0x005416d4    eb02
_jmp_addr_0x005416d6:    xor.s              eax, eax                                      // 0x005416d6    33c0
_jmp_addr_0x005416d8:    push               0x00000915                                    // 0x005416d8    6815090000
                         push               0x00bea568                                    // 0x005416dd    6868a5be00
                         push               0x00000244                                    // 0x005416e2    6844020000
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x005416e7    894638
                         call               ___nw__FUl                                    // 0x005416ea    e8a1a02900
                         add                esp, 0x0c                                     // 0x005416ef    83c40c
                         cmp.s              eax, ebx                                      // 0x005416f2    3bc3
                         {disp8} je         _jmp_addr_0x0054172c                          // 0x005416f4    7436
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8c // 0x005416f6    813dac7cd1008c0d0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00541700    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054170e                          // 0x00541706    7606
                         add                ecx, 0x0000a290                               // 0x00541708    81c190a20000
_jmp_addr_0x0054170e:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054170e    8b4908
                         push               ebx                                           // 0x00541711    53
                         push               ecx                                           // 0x00541712    51
                         push               0x19                                          // 0x00541713    6a19
                         push               0x64                                          // 0x00541715    6a64
                         push               0x00000244                                    // 0x00541717    6844020000
                         push               0x000001b8                                    // 0x0054171c    68b8010000
                         push               0xe                                           // 0x00541721    6a0e
                         mov.s              ecx, eax                                      // 0x00541723    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00541725    e88681ecff
                         {disp8} jmp        _jmp_addr_0x0054172e                          // 0x0054172a    eb02
_jmp_addr_0x0054172c:    xor.s              eax, eax                                      // 0x0054172c    33c0
_jmp_addr_0x0054172e:    push               0x00000916                                    // 0x0054172e    6816090000
                         push               0x00bea568                                    // 0x00541733    6868a5be00
                         push               0x00000244                                    // 0x00541738    6844020000
                         {disp8} mov        dword ptr [esi + 0x3c], eax                   // 0x0054173d    89463c
                         call               ___nw__FUl                                    // 0x00541740    e84ba02900
                         add                esp, 0x0c                                     // 0x00541745    83c40c
                         cmp.s              eax, ebx                                      // 0x00541748    3bc3
                         {disp8} je         _jmp_addr_0x0054178a                          // 0x0054174a    743e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d8d // 0x0054174c    813dac7cd1008d0d0000
                         {disp8} ja         _jmp_addr_0x00541760                          // 0x00541756    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00541758    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0054176c                          // 0x0054175e    eb0c
_jmp_addr_0x00541760:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00541760    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x0000a29c]             // 0x00541766    8d8a9ca20000
_jmp_addr_0x0054176c:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054176c    8b4908
                         push               ebx                                           // 0x0054176f    53
                         push               ecx                                           // 0x00541770    51
                         push               0x19                                          // 0x00541771    6a19
                         push               0x64                                          // 0x00541773    6a64
                         push               0x00000244                                    // 0x00541775    6844020000
                         push               0x00000230                                    // 0x0054177a    6830020000
                         push               0xf                                           // 0x0054177f    6a0f
                         mov.s              ecx, eax                                      // 0x00541781    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00541783    e82881ecff
                         {disp8} jmp        _jmp_addr_0x0054178c                          // 0x00541788    eb02
_jmp_addr_0x0054178a:    xor.s              eax, eax                                      // 0x0054178a    33c0
_jmp_addr_0x0054178c:    {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x0054178c    8b4e38
                         {disp8} mov        dword ptr [esi + 0x40], eax                   // 0x0054178f    894640
                         mov                eax, 0x00000010                               // 0x00541792    b810000000
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x00541797    894120
                         {disp8} mov        edx, dword ptr [esi + 0x3c]                   // 0x0054179a    8b563c
                         {disp8} mov        dword ptr [edx + 0x20], eax                   // 0x0054179d    894220
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005417a0    8b4e40
                         {disp8} mov        dword ptr [ecx + 0x20], eax                   // 0x005417a3    894120
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                   // 0x005417a6    8b4e2c
                         mov                edx, dword ptr [ecx]                          // 0x005417a9    8b11
                         push               0x1                                           // 0x005417ab    6a01
                         call               dword ptr [edx + 8]                           // 0x005417ad    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x005417b0    8b4e34
                         mov                eax, dword ptr [ecx]                          // 0x005417b3    8b01
                         push               0x1                                           // 0x005417b5    6a01
                         call               dword ptr [eax + 8]                           // 0x005417b7    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x005417ba    8b4e38
                         mov                edx, dword ptr [ecx]                          // 0x005417bd    8b11
                         push               0x1                                           // 0x005417bf    6a01
                         call               dword ptr [edx + 8]                           // 0x005417c1    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                   // 0x005417c4    8b4e3c
                         mov                eax, dword ptr [ecx]                          // 0x005417c7    8b01
                         push               0x1                                           // 0x005417c9    6a01
                         call               dword ptr [eax + 8]                           // 0x005417cb    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x005417ce    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x005417d1    8b11
                         push               0x1                                           // 0x005417d3    6a01
                         call               dword ptr [edx + 8]                           // 0x005417d5    ff5208
                         {disp8} mov        eax, dword ptr [esi + 0x10]                   // 0x005417d8    8b4610
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x005417db    8b4e04
                         push               eax                                           // 0x005417de    50
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x005417df    e85c79ecff
                         pop                edi                                           // 0x005417e4    5f
                         {disp8} mov        dword ptr [esi + 0x54], ebx                   // 0x005417e5    895e54
                         pop                esi                                           // 0x005417e8    5e
                         pop                ebx                                           // 0x005417e9    5b
                         ret                0x000c                                        // 0x005417ea    c20c00
                         nop                                                              // 0x005417ed    90
                         nop                                                              // 0x005417ee    90
                         nop                                                              // 0x005417ef    90
?Destroy@LoginBox@@UAEXXZ:
                         push               esi                                           // 0x005417f0    56
                         mov.s              esi, ecx                                      // 0x005417f1    8bf1
                         call               _jmp_addr_0x00541e70                          // 0x005417f3    e878060000
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x005417f8    8b4e54
                         test               ecx, ecx                                      // 0x005417fb    85c9
                         {disp8} je         _jmp_addr_0x00541826                          // 0x005417fd    7427
                         push               edi                                           // 0x005417ff    57
                         call               dword ptr [__imp__Release_Dialup__QAEXXZ@4]   // 0x00541800    ff1598998a00
                         {disp8} mov        edi, dword ptr [esi + 0x54]                   // 0x00541806    8b7e54
                         test               edi, edi                                      // 0x00541809    85ff
                         {disp8} je         _jmp_addr_0x0054181e                          // 0x0054180b    7411
                         mov.s              ecx, edi                                      // 0x0054180d    8bcf
                         call               dword ptr [__imp___1Dialup__QAE_XZ@4]         // 0x0054180f    ff1590998a00
                         push               edi                                           // 0x00541815    57
                         call               ??3@YAXPAX@Z                                  // 0x00541816    e87dd62600
                         add                esp, 0x04                                     // 0x0054181b    83c404
_jmp_addr_0x0054181e:    {disp8} mov        dword ptr [esi + 0x54], 0x00000000            // 0x0054181e    c7465400000000
                         pop                edi                                           // 0x00541825    5f
_jmp_addr_0x00541826:    mov.s              ecx, esi                                      // 0x00541826    8bce
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00541828    e8631dfdff
                         {disp32} mov       dword ptr [data_bytes + 0x30ab64], 0x00000000 // 0x0054182d    c705640bcd0000000000
                         pop                esi                                           // 0x00541837    5e
                         ret                                                              // 0x00541838    c3
                         nop                                                              // 0x00541839    90
                         nop                                                              // 0x0054183a    90
                         nop                                                              // 0x0054183b    90
                         nop                                                              // 0x0054183c    90
                         nop                                                              // 0x0054183d    90
                         nop                                                              // 0x0054183e    90
                         nop                                                              // 0x0054183f    90
                         mov                eax, 0x00001a60                               // 0x00541840    b8601a0000
                         call               __chkstk                                      // 0x00541845    e866562800
                         push               ebx                                           // 0x0054184a    53
                         push               ebp                                           // 0x0054184b    55
                         push               esi                                           // 0x0054184c    56
                         push               edi                                           // 0x0054184d    57
                         push               0x00d204b8                                    // 0x0054184e    68b804d200
                         mov.s              esi, ecx                                      // 0x00541853    8bf1
                         call               dword ptr [rdata_bytes + 0x41c]               // 0x00541855    ff151c948a00
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                   // 0x0054185b    8b4e3c
                         add                esp, 0x04                                     // 0x0054185e    83c404
                         test               eax, eax                                      // 0x00541861    85c0
                         mov                eax, dword ptr [ecx]                          // 0x00541863    8b01
                         {disp8} jne        _jmp_addr_0x00541875                          // 0x00541865    750e
                         push               0x0                                           // 0x00541867    6a00
                         call               dword ptr [eax + 8]                           // 0x00541869    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0054186c    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x0054186f    8b11
                         push               0x0                                           // 0x00541871    6a00
                         {disp8} jmp        _jmp_addr_0x00541881                          // 0x00541873    eb0c
_jmp_addr_0x00541875:    push               0x1                                           // 0x00541875    6a01
                         call               dword ptr [eax + 8]                           // 0x00541877    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                   // 0x0054187a    8b4e40
                         mov                edx, dword ptr [ecx]                          // 0x0054187d    8b11
                         push               0x1                                           // 0x0054187f    6a01
_jmp_addr_0x00541881:    call               dword ptr [edx + 8]                           // 0x00541881    ff5208
                         {disp8} mov        eax, dword ptr [esi + 0x54]                   // 0x00541884    8b4654
                         or                 ebp, 0xffffffff                               // 0x00541887    83cdff
                         test               eax, eax                                      // 0x0054188a    85c0
                         {disp8} mov        dword ptr [esi + 0x58], ebp                   // 0x0054188c    896e58
                         {disp32} mov       word ptr [esi + 0x00000898], bp               // 0x0054188f    6689ae98080000
                         mov                ebx, 0x00000001                               // 0x00541896    bb01000000
                         {disp32} jne       _jmp_addr_0x00541af2                          // 0x0054189b    0f8551020000
                         push               0x0000094a                                    // 0x005418a1    684a090000
                         push               0x00bea568                                    // 0x005418a6    6868a5be00
                         push               0x8                                           // 0x005418ab    6a08
                         call               ___nw__FUl                                    // 0x005418ad    e8de9e2900
                         add                esp, 0x0c                                     // 0x005418b2    83c40c
                         test               eax, eax                                      // 0x005418b5    85c0
                         {disp8} je         _jmp_addr_0x005418c3                          // 0x005418b7    740a
                         mov.s              ecx, eax                                      // 0x005418b9    8bc8
                         call               dword ptr [__imp___0Dialup__QAE_XZ@4]         // 0x005418bb    ff1580998a00
                         {disp8} jmp        _jmp_addr_0x005418c5                          // 0x005418c1    eb02
_jmp_addr_0x005418c3:    xor.s              eax, eax                                      // 0x005418c3    33c0
_jmp_addr_0x005418c5:    {disp8} mov        edi, dword ptr [esi + 0x1c]                   // 0x005418c5    8b7e1c
                         {disp8} mov        dword ptr [esi + 0x54], eax                   // 0x005418c8    894654
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x005418cb    8b8750020000
                         test               eax, eax                                      // 0x005418d1    85c0
                         {disp8} jle        _jmp_addr_0x005418e8                          // 0x005418d3    7e13
_jmp_addr_0x005418d5:    dec                eax                                           // 0x005418d5    48
                         push               eax                                           // 0x005418d6    50
                         mov.s              ecx, edi                                      // 0x005418d7    8bcf
                         call               @DeleteString__9SetupListFi@12                // 0x005418d9    e88294ecff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x005418de    8b8750020000
                         test               eax, eax                                      // 0x005418e4    85c0
                         {disp8} jg         _jmp_addr_0x005418d5                          // 0x005418e6    7fed
_jmp_addr_0x005418e8:    {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x005418e8    8b4e54
                         call               dword ptr [__imp__Initialise_Dialup__QAEHXZ@4]// 0x005418eb    ff1588998a00
                         test               eax, eax                                      // 0x005418f1    85c0
                         {disp32} je        _jmp_addr_0x00541af2                          // 0x005418f3    0f84f9010000
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x005418f9    8b4e54
                         call               dword ptr [rdata_bytes + 0x98c]               // 0x005418fc    ff158c998a00
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x00541902    8b4e54
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00541905    89442418
                         call               dword ptr [rdata_bytes + 0x984]               // 0x00541909    ff1584998a00
                         mov.s              edi, eax                                      // 0x0054190f    8bf8
                         cmp.s              edi, ebp                                      // 0x00541911    3bfd
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00541913    897c2414
                         {disp32} je        _jmp_addr_0x00541a20                          // 0x00541917    0f8403010000
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x0054191d    8b4e54
                         {disp32} lea       eax, dword ptr [esp + 0x0000022c]             // 0x00541920    8d84242c020000
                         push               eax                                           // 0x00541927    50
                         push               edi                                           // 0x00541928    57
                         call               dword ptr [rdata_bytes + 0x994]               // 0x00541929    ff1594998a00
                         test               eax, eax                                      // 0x0054192f    85c0
                         {disp32} je        _jmp_addr_0x00541a20                          // 0x00541931    0f84e9000000
                         {disp32} mov       eax, dword ptr [esp + 0x0000022c]             // 0x00541937    8b84242c020000
                         test               eax, eax                                      // 0x0054193e    85c0
                         {disp8} je         _jmp_addr_0x00541994                          // 0x00541940    7452
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x00541942    8b15ac7cd100
                         cmp                edx, 0x00000da6                               // 0x00541948    81faa60d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054194e    a1a87cd100
                         mov.s              ecx, eax                                      // 0x00541953    8bc8
                         {disp8} jbe        _jmp_addr_0x0054195d                          // 0x00541955    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000a3c8]             // 0x00541957    8d88c8a30000
_jmp_addr_0x0054195d:    cmp                edx, 0x00000da5                               // 0x0054195d    81faa50d0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00541963    8b4908
                         {disp8} jbe        _jmp_addr_0x0054196d                          // 0x00541966    7605
                         add                eax, 0x0000a3bc                               // 0x00541968    05bca30000
_jmp_addr_0x0054196d:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0054196d    8b4008
                         push               ecx                                           // 0x00541970    51
                         {disp32} lea       ecx, dword ptr [esp + 0x00000240]             // 0x00541971    8d8c2440020000
                         push               ecx                                           // 0x00541978    51
                         push               eax                                           // 0x00541979    50
                         push               0x1                                           // 0x0054197a    6a01
                         {disp32} lea       edx, dword ptr [esp + 0x0000127c]             // 0x0054197c    8d94247c120000
                         push               0x00bea6d8                                    // 0x00541983    68d8a6be00
                         push               edx                                           // 0x00541988    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00541989    ff15d8938a00
                         add                esp, 0x18                                     // 0x0054198f    83c418
                         {disp8} jmp        _jmp_addr_0x005419ce                          // 0x00541992    eb3a
_jmp_addr_0x00541994:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000da6 // 0x00541994    813dac7cd100a60d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054199e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005419aa                          // 0x005419a3    7605
                         add                eax, 0x0000a3c8                               // 0x005419a5    05c8a30000
_jmp_addr_0x005419aa:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005419aa    8b4008
                         push               eax                                           // 0x005419ad    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000240]             // 0x005419ae    8d8c2440020000
                         push               ecx                                           // 0x005419b5    51
                         push               0x1                                           // 0x005419b6    6a01
                         {disp32} lea       edx, dword ptr [esp + 0x00000a74]             // 0x005419b8    8d9424740a0000
                         push               0x00bea6c4                                    // 0x005419bf    68c4a6be00
                         push               edx                                           // 0x005419c4    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x005419c5    ff15d8938a00
                         add                esp, 0x14                                     // 0x005419cb    83c414
_jmp_addr_0x005419ce:    {disp8} mov        edi, dword ptr [esi + 0x1c]                   // 0x005419ce    8b7e1c
                         push               eax                                           // 0x005419d1    50
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x005419d2    8b8750020000
                         push               eax                                           // 0x005419d8    50
                         mov.s              ecx, edi                                      // 0x005419d9    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x005419db    e89094ecff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x005419e0    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x005419e6    8d41ff
                         test               eax, eax                                      // 0x005419e9    85c0
                         {disp8} jl         _jmp_addr_0x005419fe                          // 0x005419eb    7c11
                         cmp.s              eax, ecx                                      // 0x005419ed    3bc1
                         {disp8} jge        _jmp_addr_0x005419fe                          // 0x005419ef    7d0d
                         {disp32} mov       ecx, dword ptr [edi + 0x00000268]             // 0x005419f1    8b8f68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000       // 0x005419f7    c7048100000000
_jmp_addr_0x005419fe:    {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x005419fe    8b461c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]             // 0x00541a01    8b8850020000
                         test               ecx, ecx                                      // 0x00541a07    85c9
                         {disp8} jle        _jmp_addr_0x00541a17                          // 0x00541a09    7e0c
                         {disp32} mov       edx, dword ptr [eax + 0x00000264]             // 0x00541a0b    8b9064020000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00541a11    8b442414
                         mov                dword ptr [edx], eax                          // 0x00541a15    8902
_jmp_addr_0x00541a17:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00541a17    8b7c2414
                         mov                ebx, 0x00000002                               // 0x00541a1b    bb02000000
_jmp_addr_0x00541a20:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00541a20    8b442418
                         xor.s              ebp, ebp                                      // 0x00541a24    33ed
                         test               eax, eax                                      // 0x00541a26    85c0
                         {disp32} jle       _jmp_addr_0x00541af2                          // 0x00541a28    0f8ec4000000
_jmp_addr_0x00541a2e:    {disp32} lea       ecx, dword ptr [esp + 0x0000022c]             // 0x00541a2e    8d8c242c020000
                         push               ecx                                           // 0x00541a35    51
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                   // 0x00541a36    8b4e54
                         push               ebp                                           // 0x00541a39    55
                         call               dword ptr [rdata_bytes + 0x994]               // 0x00541a3a    ff1594998a00
                         test               eax, eax                                      // 0x00541a40    85c0
                         {disp32} je        _jmp_addr_0x00541ae5                          // 0x00541a42    0f849d000000
                         cmp.s              ebp, edi                                      // 0x00541a48    3bef
                         {disp32} je        _jmp_addr_0x00541ae5                          // 0x00541a4a    0f8495000000
                         {disp32} mov       eax, dword ptr [esp + 0x0000022c]             // 0x00541a50    8b84242c020000
                         test               eax, eax                                      // 0x00541a57    85c0
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x00541a59    8b561c
                         {disp32} mov       edi, dword ptr [edx + 0x00000250]             // 0x00541a5c    8bba50020000
                         {disp8} je         _jmp_addr_0x00541a9f                          // 0x00541a62    743b
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000da5 // 0x00541a64    813dac7cd100a50d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541a6e    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00541a7a                          // 0x00541a73    7605
                         add                eax, 0x0000a3bc                               // 0x00541a75    05bca30000
_jmp_addr_0x00541a7a:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00541a7a    8b4008
                         {disp32} lea       ecx, dword ptr [esp + 0x0000023c]             // 0x00541a7d    8d8c243c020000
                         push               ecx                                           // 0x00541a84    51
                         push               eax                                           // 0x00541a85    50
                         push               ebx                                           // 0x00541a86    53
                         {disp32} lea       edx, dword ptr [esp + 0x00000a74]             // 0x00541a87    8d9424740a0000
                         push               0x00bea6b0                                    // 0x00541a8e    68b0a6be00
                         push               edx                                           // 0x00541a93    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00541a94    ff15d8938a00
                         add                esp, 0x14                                     // 0x00541a9a    83c414
                         {disp8} jmp        _jmp_addr_0x00541abe                          // 0x00541a9d    eb1f
_jmp_addr_0x00541a9f:    {disp32} lea       eax, dword ptr [esp + 0x0000023c]             // 0x00541a9f    8d84243c020000
                         push               eax                                           // 0x00541aa6    50
                         push               ebx                                           // 0x00541aa7    53
                         {disp32} lea       ecx, dword ptr [esp + 0x00001274]             // 0x00541aa8    8d8c2474120000
                         push               0x00bea6a0                                    // 0x00541aaf    68a0a6be00
                         push               ecx                                           // 0x00541ab4    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00541ab5    ff15d8938a00
                         add                esp, 0x10                                     // 0x00541abb    83c410
_jmp_addr_0x00541abe:    {disp8} mov        ecx, dword ptr [esi + 0x1c]                   // 0x00541abe    8b4e1c
                         push               eax                                           // 0x00541ac1    50
                         push               edi                                           // 0x00541ac2    57
                         call               @InsertString__9SetupListFiPw@16              // 0x00541ac3    e8a893ecff
                         test               edi, edi                                      // 0x00541ac8    85ff
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00541aca    8b461c
                         {disp8} jl         _jmp_addr_0x00541ae0                          // 0x00541acd    7c11
                         cmp                edi, dword ptr [eax + 0x00000250]             // 0x00541acf    3bb850020000
                         {disp8} jge        _jmp_addr_0x00541ae0                          // 0x00541ad5    7d09
                         {disp32} mov       edx, dword ptr [eax + 0x00000264]             // 0x00541ad7    8b9064020000
                         mov                dword ptr [edx + edi * 0x4], ebp              // 0x00541add    892cba
_jmp_addr_0x00541ae0:    {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x00541ae0    8b7c2414
                         inc                ebx                                           // 0x00541ae4    43
_jmp_addr_0x00541ae5:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00541ae5    8b442418
                         inc                ebp                                           // 0x00541ae9    45
                         cmp.s              ebp, eax                                      // 0x00541aea    3be8
                         {disp32} jl        _jmp_addr_0x00541a2e                          // 0x00541aec    0f8c3cffffff
_jmp_addr_0x00541af2:    {disp32} mov       al, byte ptr [data_bytes + 0x22429c]          // 0x00541af2    a09ca2be00
                         test               al, al                                        // 0x00541af7    84c0
                         {disp32} je        _jmp_addr_0x00541c36                          // 0x00541af9    0f8437010000
                         {disp32} mov       byte ptr [data_bytes + 0x22429c], 0x00        // 0x00541aff    c6059ca2be0000
                         mov                edi, 0x00bea694                               // 0x00541b06    bf94a6be00
                         call               _jmp_addr_0x007c5394                          // 0x00541b0b    e884382800
_jmp_addr_0x00541b10:    mov                dl, byte ptr [eax]                            // 0x00541b10    8a10
                         mov.s              cl, dl                                        // 0x00541b12    8aca
                         cmp                dl, byte ptr [edi]                            // 0x00541b14    3a17
                         {disp8} jne        _jmp_addr_0x00541b34                          // 0x00541b16    751c
                         test               cl, cl                                        // 0x00541b18    84c9
                         {disp8} je         _jmp_addr_0x00541b30                          // 0x00541b1a    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00541b1c    8a5001
                         mov.s              cl, dl                                        // 0x00541b1f    8aca
                         cmp                dl, byte ptr [edi + 0x01]                     // 0x00541b21    3a5701
                         {disp8} jne        _jmp_addr_0x00541b34                          // 0x00541b24    750e
                         add                eax, 0x02                                     // 0x00541b26    83c002
                         add                edi, 0x02                                     // 0x00541b29    83c702
                         test               cl, cl                                        // 0x00541b2c    84c9
                         {disp8} jne        _jmp_addr_0x00541b10                          // 0x00541b2e    75e0
_jmp_addr_0x00541b30:    xor.s              eax, eax                                      // 0x00541b30    33c0
                         {disp8} jmp        _jmp_addr_0x00541b39                          // 0x00541b32    eb05
_jmp_addr_0x00541b34:    sbb.s              eax, eax                                      // 0x00541b34    1bc0
                         sbb                eax, -0x01                                    // 0x00541b36    83d8ff
_jmp_addr_0x00541b39:    test               eax, eax                                      // 0x00541b39    85c0
                         {disp8} je         _jmp_addr_0x00541ba3                          // 0x00541b3b    7466
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00541b3d    a1680bcd00
                         push               eax                                           // 0x00541b42    50
                         push               ebx                                           // 0x00541b43    53
                         {disp32} lea       ecx, dword ptr [esp + 0x00000a70]             // 0x00541b44    8d8c24700a0000
                         push               0x00bea688                                    // 0x00541b4b    6888a6be00
                         push               ecx                                           // 0x00541b50    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x00541b51    ff15d8938a00
                         {disp8} mov        edi, dword ptr [esi + 0x1c]                   // 0x00541b57    8b7e1c
                         {disp32} mov       edx, dword ptr [edi + 0x00000250]             // 0x00541b5a    8b9750020000
                         add                esp, 0x10                                     // 0x00541b60    83c410
                         push               eax                                           // 0x00541b63    50
                         push               edx                                           // 0x00541b64    52
                         mov.s              ecx, edi                                      // 0x00541b65    8bcf
                         call               @InsertString__9SetupListFiPw@16              // 0x00541b67    e80493ecff
                         {disp32} mov       ecx, dword ptr [edi + 0x00000250]             // 0x00541b6c    8b8f50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00541b72    8d41ff
                         test               eax, eax                                      // 0x00541b75    85c0
                         {disp8} jl         _jmp_addr_0x00541b8a                          // 0x00541b77    7c11
                         cmp.s              eax, ecx                                      // 0x00541b79    3bc1
                         {disp8} jge        _jmp_addr_0x00541b8a                          // 0x00541b7b    7d0d
                         {disp32} mov       ecx, dword ptr [edi + 0x00000268]             // 0x00541b7d    8b8f68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000       // 0x00541b83    c7048100000000
_jmp_addr_0x00541b8a:    {disp8} mov        edi, dword ptr [esi + 0x1c]                   // 0x00541b8a    8b7e1c
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]             // 0x00541b8d    8b8750020000
                         test               eax, eax                                      // 0x00541b93    85c0
                         {disp8} jle        _jmp_addr_0x00541bed                          // 0x00541b95    7e56
                         {disp32} mov       dword ptr [edi + 0x00000248], 0x00000000      // 0x00541b97    c7874802000000000000
                         {disp8} jmp        _jmp_addr_0x00541bf7                          // 0x00541ba1    eb54
_jmp_addr_0x00541ba3:    cmp                ebx, 0x01                                     // 0x00541ba3    83fb01
                         {disp8} jne        _jmp_addr_0x00541b8a                          // 0x00541ba6    75e2
                         call               _jmp_addr_0x00513640                          // 0x00541ba8    e8931afdff
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000da7 // 0x00541bad    813dac7cd100a70d0000
                         {disp8} ja         _jmp_addr_0x00541bc0                          // 0x00541bb7    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541bb9    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00541bcc                          // 0x00541bbe    eb0c
_jmp_addr_0x00541bc0:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00541bc0    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a3d4]             // 0x00541bc6    8d82d4a30000
_jmp_addr_0x00541bcc:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00541bcc    8b4008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab60]        // 0x00541bcf    8b0d600bcd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x04]                   // 0x00541bd5    8b4904
                         push               0x0                                           // 0x00541bd8    6a00
                         push               0x0                                           // 0x00541bda    6a00
                         push               eax                                           // 0x00541bdc    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00541bdd    e8aef5ecff
                         pop                edi                                           // 0x00541be2    5f
                         pop                esi                                           // 0x00541be3    5e
                         pop                ebp                                           // 0x00541be4    5d
                         pop                ebx                                           // 0x00541be5    5b
                         add                esp, 0x00001a60                               // 0x00541be6    81c4601a0000
                         ret                                                              // 0x00541bec    c3
_jmp_addr_0x00541bed:    {disp32} mov       dword ptr [edi + 0x00000248], 0xffffffff      // 0x00541bed    c78748020000ffffffff
_jmp_addr_0x00541bf7:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x00541bf7    8b4704
                         test               eax, eax                                      // 0x00541bfa    85c0
                         {disp8} je         _jmp_addr_0x00541c36                          // 0x00541bfc    7438
                         {disp32} mov       eax, dword ptr [data_bytes + 0x286d00]        // 0x00541bfe    a100cdc400
                         test               eax, eax                                      // 0x00541c03    85c0
                         {disp8} je         _jmp_addr_0x00541c36                          // 0x00541c05    742f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00541c07    8b0d04c1e800
                         call               @CandidateList_GetSelectIdx__Q24slim5TbIMEFv@4// 0x00541c0d    e8ae212b00
                         test               eax, eax                                      // 0x00541c12    85c0
                         {disp8} je         _jmp_addr_0x00541c36                          // 0x00541c14    7420
                         {disp32} mov       edx, dword ptr [edi + 0x00000250]             // 0x00541c16    8b9750020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4c6104]        // 0x00541c1c    8b0d04c1e800
                         push               0x0                                           // 0x00541c22    6a00
                         dec                edx                                           // 0x00541c24    4a
                         push               edx                                           // 0x00541c25    52
                         push               0x0                                           // 0x00541c26    6a00
                         call               @CandidateList_SetViewWindow__Q24slim5TbIMEFUiUiUi@20                          // 0x00541c28    e8b3212b00
                         push               0x0                                           // 0x00541c2d    6a00
                         mov.s              ecx, edi                                      // 0x00541c2f    8bcf
                         call               @AutoScroll__9SetupListFb@9                   // 0x00541c31    e89a81ecff
_jmp_addr_0x00541c36:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00541c36    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x00541c3b    8b481c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]             // 0x00541c3e    8b8148020000
                         test               eax, eax                                      // 0x00541c44    85c0
                         {disp8} jl         _jmp_addr_0x00541c6c                          // 0x00541c46    7c24
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x00541c48    3b8150020000
                         {disp8} jge        _jmp_addr_0x00541c6c                          // 0x00541c4e    7d1c
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000258]             // 0x00541c50    8b8958020000
                         shl                eax, 9                                        // 0x00541c56    c1e009
                         add.s              ecx, eax                                      // 0x00541c59    03c8
                         push               ecx                                           // 0x00541c5b    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000a0]             // 0x00541c5c    8d9424a0000000
                         push               edx                                           // 0x00541c63    52
                         call               _wcscpy                                       // 0x00541c64    e84d432800
                         add                esp, 0x08                                     // 0x00541c69    83c408
_jmp_addr_0x00541c6c:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00541c6c    a1680bcd00
                         push               eax                                           // 0x00541c71    50
                         {disp32} lea       eax, dword ptr [esp + 0x000000a0]             // 0x00541c72    8d8424a0000000
                         push               eax                                           // 0x00541c79    50
                         call               _wcsstr                                       // 0x00541c7a    e84e652800
                         add                esp, 0x08                                     // 0x00541c7f    83c408
                         neg                eax                                           // 0x00541c82    f7d8
                         sbb.s              eax, eax                                      // 0x00541c84    1bc0
                         inc                eax                                           // 0x00541c86    40
                         push               eax                                           // 0x00541c87    50
                         mov.s              ecx, esi                                      // 0x00541c88    8bce
                         call               _jmp_addr_0x00540f80                          // 0x00541c8a    e8f1f2ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00541c8f    a1680bcd00
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00541c94    8b4e30
                         mov                edi, dword ptr [ecx]                          // 0x00541c97    8b39
                         push               eax                                           // 0x00541c99    50
                         {disp32} lea       edx, dword ptr [esp + 0x000000a0]             // 0x00541c9a    8d9424a0000000
                         push               edx                                           // 0x00541ca1    52
                         call               _wcsstr                                       // 0x00541ca2    e826652800
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00541ca7    8b4e30
                         add                esp, 0x08                                     // 0x00541caa    83c408
                         neg                eax                                           // 0x00541cad    f7d8
                         sbb.s              al, al                                        // 0x00541caf    1ac0
                         inc                al                                            // 0x00541cb1    fec0
                         push               eax                                           // 0x00541cb3    50
                         call               dword ptr [edi + 8]                           // 0x00541cb4    ff5708
                         {disp8} mov        edi, dword ptr [esi + 0x10]                   // 0x00541cb7    8b7e10
                         push               0x000000ff                                    // 0x00541cba    68ff000000
                         {disp8} lea        ebp, dword ptr [edi + 0x24]                   // 0x00541cbf    8d6f24
                         push               0x00d4c138                                    // 0x00541cc2    6838c1d400
                         push               ebp                                           // 0x00541cc7    55
                         call               _wcsncpy                                      // 0x00541cc8    e858472800
                         xor.s              ebx, ebx                                      // 0x00541ccd    33db
                         push               ebp                                           // 0x00541ccf    55
                         {disp32} mov       word ptr [edi + 0x00000222], bx               // 0x00541cd0    66899f22020000
                         call               _wcslen                                       // 0x00541cd7    e886472800
                         {disp32} mov       dword ptr [edi + 0x0000024c], eax             // 0x00541cdc    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax             // 0x00541ce2    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax             // 0x00541ce8    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebx             // 0x00541cee    899f58020000
                         {disp8} mov        edi, dword ptr [esi + 0x14]                   // 0x00541cf4    8b7e14
                         push               0x000000ff                                    // 0x00541cf7    68ff000000
                         {disp8} lea        ebp, dword ptr [edi + 0x24]                   // 0x00541cfc    8d6f24
                         push               0x00d4c338                                    // 0x00541cff    6838c3d400
                         push               ebp                                           // 0x00541d04    55
                         call               _wcsncpy                                      // 0x00541d05    e81b472800
                         push               ebp                                           // 0x00541d0a    55
                         {disp32} mov       word ptr [edi + 0x00000222], bx               // 0x00541d0b    66899f22020000
                         call               _wcslen                                       // 0x00541d12    e84b472800
                         {disp32} mov       dword ptr [edi + 0x0000024c], eax             // 0x00541d17    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax             // 0x00541d1d    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax             // 0x00541d23    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebx             // 0x00541d29    899f58020000
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x00541d2f    8b4614
                         {disp32} mov       byte ptr [eax + 0x00000260], 0x01             // 0x00541d32    c6806002000001
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x3fc]          // 0x00541d39    a1fc938a00
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00541d3e    8d4c2430
                         push               ecx                                           // 0x00541d42    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00541d43    8d542440
                         push               edx                                           // 0x00541d47    52
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f8]          // 0x00541d48    8b15f8938a00
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000080            // 0x00541d4e    c744243880000000
                         mov                ecx, dword ptr [eax]                          // 0x00541d56    8b08
                         mov                eax, dword ptr [edx]                          // 0x00541d58    8b02
                         push               ecx                                           // 0x00541d5a    51
                         push               eax                                           // 0x00541d5b    50
                         call               dword ptr [rdata_bytes + 0x3b8]               // 0x00541d5c    ff15b8938a00
                         add                esp, 0x30                                     // 0x00541d62    83c430
                         test               eax, eax                                      // 0x00541d65    85c0
                         {disp8} jne        _jmp_addr_0x00541da5                          // 0x00541d67    753c
                         or                 ecx, 0xffffffff                               // 0x00541d69    83c9ff
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x00541d6c    8d7c241c
                         repne scasb                                                      // 0x00541d70    f2ae
                         not                ecx                                           // 0x00541d72    f7d1
                         dec                ecx                                           // 0x00541d74    49
                         {disp8} je         _jmp_addr_0x00541da5                          // 0x00541d75    742e
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00541d77    8d4c241c
                         push               ecx                                           // 0x00541d7b    51
                         call               _CHAR2WCHAR__FPc                              // 0x00541d7c    e81fe32e00
                         {disp8} mov        edi, dword ptr [esi + 0x18]                   // 0x00541d81    8b7e18
                         push               0x000000ff                                    // 0x00541d84    68ff000000
                         push               eax                                           // 0x00541d89    50
                         {disp8} lea        ebp, dword ptr [edi + 0x24]                   // 0x00541d8a    8d6f24
                         push               ebp                                           // 0x00541d8d    55
                         call               _wcsncpy                                      // 0x00541d8e    e892462800
                         push               ebp                                           // 0x00541d93    55
                         {disp32} mov       word ptr [edi + 0x00000222], bx               // 0x00541d94    66899f22020000
                         call               _wcslen                                       // 0x00541d9b    e8c2462800
                         add                esp, 0x14                                     // 0x00541da0    83c414
                         {disp8} jmp        _jmp_addr_0x00541dcb                          // 0x00541da3    eb26
_jmp_addr_0x00541da5:    {disp8} mov        edi, dword ptr [esi + 0x18]                   // 0x00541da5    8b7e18
                         push               0x000000ff                                    // 0x00541da8    68ff000000
                         {disp8} lea        ebp, dword ptr [edi + 0x24]                   // 0x00541dad    8d6f24
                         push               0x00bea664                                    // 0x00541db0    6864a6be00
                         push               ebp                                           // 0x00541db5    55
                         call               _wcsncpy                                      // 0x00541db6    e86a462800
                         push               ebp                                           // 0x00541dbb    55
                         {disp32} mov       word ptr [edi + 0x00000222], bx               // 0x00541dbc    66899f22020000
                         call               _wcslen                                       // 0x00541dc3    e89a462800
                         add                esp, 0x10                                     // 0x00541dc8    83c410
_jmp_addr_0x00541dcb:    {disp32} mov       dword ptr [edi + 0x0000024c], eax             // 0x00541dcb    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax             // 0x00541dd1    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax             // 0x00541dd7    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebx             // 0x00541ddd    899f58020000
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x3f8]          // 0x00541de3    a1f8938a00
                         mov                ecx, dword ptr [eax]                          // 0x00541de8    8b08
                         {disp32} mov       edi, dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]          // 0x00541dea    8b3d44938a00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00541df0    8d542410
                         push               edx                                           // 0x00541df4    52
                         push               0x00bea620                                    // 0x00541df5    6820a6be00
                         push               ecx                                           // 0x00541dfa    51
                         call               edi                                           // 0x00541dfb    ffd7
                         add                esp, 0x0c                                     // 0x00541dfd    83c40c
                         test               eax, eax                                      // 0x00541e00    85c0
                         {disp8} jne        _jmp_addr_0x00541e11                          // 0x00541e02    750d
                         {disp8} mov        edx, dword ptr [esi + 0x2c]                   // 0x00541e04    8b562c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00541e07    8b442410
                         {disp32} mov       dword ptr [edx + 0x00000248], eax             // 0x00541e0b    898248020000
_jmp_addr_0x00541e11:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f8]          // 0x00541e11    8b15f8938a00
                         mov                eax, dword ptr [edx]                          // 0x00541e17    8b02
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x00541e19    8d4c2410
                         push               ecx                                           // 0x00541e1d    51
                         push               0x00bea610                                    // 0x00541e1e    6810a6be00
                         push               eax                                           // 0x00541e23    50
                         call               edi                                           // 0x00541e24    ffd7
                         add                esp, 0x0c                                     // 0x00541e26    83c40c
                         test               eax, eax                                      // 0x00541e29    85c0
                         {disp8} jne        _jmp_addr_0x00541e4b                          // 0x00541e2b    751e
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x00541e2d    8b4e34
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00541e30    8b542410
                         {disp32} mov       dword ptr [ecx + 0x00000248], edx             // 0x00541e34    899148020000
                         {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x00541e3a    8b4634
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x00541e3d    8b8848020000
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x3f4]          // 0x00541e43    8b15f4938a00
                         mov                dword ptr [edx], ecx                          // 0x00541e49    890a
_jmp_addr_0x00541e4b:    {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x00541e4b    8b4618
                         pop                edi                                           // 0x00541e4e    5f
                         pop                esi                                           // 0x00541e4f    5e
                         pop                ebp                                           // 0x00541e50    5d
                         {disp32} mov       dword ptr [eax + 0x0000025c], 0x00000001      // 0x00541e51    c7805c02000001000000
                         pop                ebx                                           // 0x00541e5b    5b
                         add                esp, 0x00001a60                               // 0x00541e5c    81c4601a0000
                         ret                                                              // 0x00541e62    c3
                         nop                                                              // 0x00541e63    90
                         nop                                                              // 0x00541e64    90
                         nop                                                              // 0x00541e65    90
                         nop                                                              // 0x00541e66    90
                         nop                                                              // 0x00541e67    90
                         nop                                                              // 0x00541e68    90
                         nop                                                              // 0x00541e69    90
                         nop                                                              // 0x00541e6a    90
                         nop                                                              // 0x00541e6b    90
                         nop                                                              // 0x00541e6c    90
                         nop                                                              // 0x00541e6d    90
                         nop                                                              // 0x00541e6e    90
                         nop                                                              // 0x00541e6f    90
_jmp_addr_0x00541e70:    push               esi                                           // 0x00541e70    56
                         mov.s              esi, ecx                                      // 0x00541e71    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x54]                   // 0x00541e73    8b4654
                         test               eax, eax                                      // 0x00541e76    85c0
                         {disp8} je         _jmp_addr_0x00541e9f                          // 0x00541e78    7425
                         cmp                word ptr [esi + 0x00000898], 0x01             // 0x00541e7a    6683be9808000001
                         {disp8} jne        _jmp_addr_0x00541e9f                          // 0x00541e82    751b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00541e84    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00541e89    8b4858
                         push               ecx                                           // 0x00541e8c    51
                         {disp8} mov        ecx, dword ptr [eax + 0x54]                   // 0x00541e8d    8b4854
                         call               dword ptr [rdata_bytes + 0x99c]               // 0x00541e90    ff159c998a00
                         {disp32} mov       word ptr [esi + 0x00000898], -0x0001          // 0x00541e96    66c78698080000ffff
_jmp_addr_0x00541e9f:    pop                esi                                           // 0x00541e9f    5e
                         ret                                                              // 0x00541ea0    c3
                         nop                                                              // 0x00541ea1    90
                         nop                                                              // 0x00541ea2    90
                         nop                                                              // 0x00541ea3    90
                         nop                                                              // 0x00541ea4    90
                         nop                                                              // 0x00541ea5    90
                         nop                                                              // 0x00541ea6    90
                         nop                                                              // 0x00541ea7    90
                         nop                                                              // 0x00541ea8    90
                         nop                                                              // 0x00541ea9    90
                         nop                                                              // 0x00541eaa    90
                         nop                                                              // 0x00541eab    90
                         nop                                                              // 0x00541eac    90
                         nop                                                              // 0x00541ead    90
                         nop                                                              // 0x00541eae    90
                         nop                                                              // 0x00541eaf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00541eb0    8b442404
                         sub                esp, 0x00000994                               // 0x00541eb4    81ec94090000
                         cmp                eax, 0x06                                     // 0x00541eba    83f806
                         push               ebx                                           // 0x00541ebd    53
                         push               ebp                                           // 0x00541ebe    55
                         push               esi                                           // 0x00541ebf    56
                         push               edi                                           // 0x00541ec0    57
                         {disp32} ja        _jmp_addr_0x005424dd                          // 0x00541ec1    0f8716060000
                         jmp                dword ptr [eax*4 + 0x5424ec]                  // 0x00541ec7    ff2485ec245400
                         {disp32} mov       eax, dword ptr [esp + 0x000009b8]             // 0x00541ece    8b8424b8090000
                         cmp                eax, 0x0b                                     // 0x00541ed5    83f80b
                         {disp8} jne        _jmp_addr_0x00541ef2                          // 0x00541ed8    7518
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00541eda    8b0d640bcd00
                         call               _jmp_addr_0x00540660                          // 0x00541ee0    e87be7ffff
                         pop                edi                                           // 0x00541ee5    5f
                         pop                esi                                           // 0x00541ee6    5e
                         pop                ebp                                           // 0x00541ee7    5d
                         pop                ebx                                           // 0x00541ee8    5b
                         add                esp, 0x00000994                               // 0x00541ee9    81c494090000
                         ret                0x0014                                        // 0x00541eef    c21400
_jmp_addr_0x00541ef2:    cmp                eax, 0x0c                                     // 0x00541ef2    83f80c
                         {disp32} jne       _jmp_addr_0x005424dd                          // 0x00541ef5    0f85e2050000
                         cmp                dword ptr [esp + 0x000009b4], 0x00002712      // 0x00541efb    81bc24b409000012270000
                         {disp32} jne       _jmp_addr_0x005424dd                          // 0x00541f06    0f85d1050000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x224288]        // 0x00541f0c    a188a2be00
                         push               eax                                           // 0x00541f11    50
                         call               _jmp_addr_0x005ea750                          // 0x00541f12    e839880a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf078]        // 0x00541f17    8b0d7850e800
                         add                esp, 0x04                                     // 0x00541f1d    83c404
                         push               0x6                                           // 0x00541f20    6a06
                         push               ecx                                           // 0x00541f22    51
                         call               dword ptr [__imp__ShowWindow@4]               // 0x00541f23    ff15d0978a00
                         pop                edi                                           // 0x00541f29    5f
                         pop                esi                                           // 0x00541f2a    5e
                         pop                ebp                                           // 0x00541f2b    5d
                         pop                ebx                                           // 0x00541f2c    5b
                         add                esp, 0x00000994                               // 0x00541f2d    81c494090000
                         ret                0x0014                                        // 0x00541f33    c21400
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab64]        // 0x00541f36    8b15640bcd00
                         mov                ebx, 0x00000001                               // 0x00541f3c    bb01000000
                         cmp                word ptr [edx + 0x00000898], bx               // 0x00541f41    66399a98080000
                         {disp32} jne       _jmp_addr_0x005424dd                          // 0x00541f48    0f858f050000
                         {disp32} mov       al, byte ptr [data_bytes + 0x30ab6c]          // 0x00541f4e    a06c0bcd00
                         test               al, al                                        // 0x00541f53    84c0
                         {disp32} jne       _jmp_addr_0x005424dd                          // 0x00541f55    0f8582050000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000da8 // 0x00541f5b    813dac7cd100a80d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00541f65    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00541f71                          // 0x00541f6a    7605
                         add                eax, 0x0000a3e0                               // 0x00541f6c    05e0a30000
_jmp_addr_0x00541f71:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00541f71    8b4808
                         push               0xb                                           // 0x00541f74    6a0b
                         push               0x0                                           // 0x00541f76    6a00
                         push               ecx                                           // 0x00541f78    51
                         {disp32} mov       ecx, dword ptr [esp + 0x000009b8]             // 0x00541f79    8b8c24b8090000
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00541f80    e80bf2ecff
                         pop                edi                                           // 0x00541f85    5f
                         pop                esi                                           // 0x00541f86    5e
                         pop                ebp                                           // 0x00541f87    5d
                         {disp32} mov       byte ptr [data_bytes + 0x30ab6c], bl          // 0x00541f88    881d6c0bcd00
                         pop                ebx                                           // 0x00541f8e    5b
                         add                esp, 0x00000994                               // 0x00541f8f    81c494090000
                         ret                0x0014                                        // 0x00541f95    c21400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00541f98    8b0d640bcd00
                         mov                edx, dword ptr [ecx]                          // 0x00541f9e    8b11
                         call               dword ptr [edx + 0x20]                        // 0x00541fa0    ff5220
                         mov                ecx, 0x00d4f128                               // 0x00541fa3    b928f1d400
                         call               _jmp_addr_0x00719750                          // 0x00541fa8    e8a3771d00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00541fad    a1640bcd00
                         {disp32} mov       byte ptr [data_bytes + 0x30ab6c], 0x00        // 0x00541fb2    c6056c0bcd0000
                         {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00541fb9    8b4824
                         mov                edx, dword ptr [ecx]                          // 0x00541fbc    8b11
                         push               0x0                                           // 0x00541fbe    6a00
                         call               dword ptr [edx + 8]                           // 0x00541fc0    ff5208
                         pop                edi                                           // 0x00541fc3    5f
                         pop                esi                                           // 0x00541fc4    5e
                         pop                ebp                                           // 0x00541fc5    5d
                         pop                ebx                                           // 0x00541fc6    5b
                         add                esp, 0x00000994                               // 0x00541fc7    81c494090000
                         ret                0x0014                                        // 0x00541fcd    c21400
                         {disp32} mov       ebp, dword ptr [esp + 0x000009b0]             // 0x00541fd0    8bac24b0090000
                         test               ebp, ebp                                      // 0x00541fd7    85ed
                         {disp32} je        _jmp_addr_0x005424dd                          // 0x00541fd9    0f84fe040000
                         {disp8} mov        eax, dword ptr [ebp + 0x18]                   // 0x00541fdf    8b4518
                         cmp                eax, 0x0d                                     // 0x00541fe2    83f80d
                         {disp8} jne        _jmp_addr_0x00542005                          // 0x00541fe5    751e
                         call               _jmp_addr_0x00513640                          // 0x00541fe7    e85416fdff
                         push               0x1                                           // 0x00541fec    6a01
                         mov                ecx, 0x00d204a8                               // 0x00541fee    b9a804d200
                         call               _jmp_addr_0x005ebaf0                          // 0x00541ff3    e8f89a0a00
                         pop                edi                                           // 0x00541ff8    5f
                         pop                esi                                           // 0x00541ff9    5e
                         pop                ebp                                           // 0x00541ffa    5d
                         pop                ebx                                           // 0x00541ffb    5b
                         add                esp, 0x00000994                               // 0x00541ffc    81c494090000
                         ret                0x0014                                        // 0x00542002    c21400
_jmp_addr_0x00542005:    cmp                eax, 0x0e                                     // 0x00542005    83f80e
                         {disp8} jne        _jmp_addr_0x00542028                          // 0x00542008    751e
                         call               _jmp_addr_0x00513640                          // 0x0054200a    e83116fdff
                         push               0x2                                           // 0x0054200f    6a02
                         mov                ecx, 0x00d204a8                               // 0x00542011    b9a804d200
                         call               _jmp_addr_0x005ebaf0                          // 0x00542016    e8d59a0a00
                         pop                edi                                           // 0x0054201b    5f
                         pop                esi                                           // 0x0054201c    5e
                         pop                ebp                                           // 0x0054201d    5d
                         pop                ebx                                           // 0x0054201e    5b
                         add                esp, 0x00000994                               // 0x0054201f    81c494090000
                         ret                0x0014                                        // 0x00542025    c21400
_jmp_addr_0x00542028:    cmp                eax, 0x0f                                     // 0x00542028    83f80f
                         {disp32} jne       _jmp_addr_0x005420ed                          // 0x0054202b    0f85bc000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x00542031    8b15ac7cd100
                         cmp                edx, 0x00000daa                               // 0x00542037    81faaa0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054203d    a1a87cd100
                         mov.s              ecx, eax                                      // 0x00542042    8bc8
                         {disp8} jbe        _jmp_addr_0x0054204c                          // 0x00542044    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0000a3f8]             // 0x00542046    8d88f8a30000
_jmp_addr_0x0054204c:    cmp                edx, 0x00000da9                               // 0x0054204c    81faa90d0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00542052    8b4908
                         {disp8} jbe        _jmp_addr_0x0054205c                          // 0x00542055    7605
                         add                eax, 0x0000a3ec                               // 0x00542057    05eca30000
_jmp_addr_0x0054205c:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0054205c    8b5008
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4c0]        // 0x0054205f    a1c004d200
                         push               ecx                                           // 0x00542064    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b8]        // 0x00542065    8b0db804d200
                         push               ecx                                           // 0x0054206b    51
                         push               edx                                           // 0x0054206c    52
                         push               eax                                           // 0x0054206d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001b0]             // 0x0054206e    8d8c24b0010000
                         push               0x00bea700                                    // 0x00542075    6800a7be00
                         push               ecx                                           // 0x0054207a    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0054207b    ff15d8938a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4bc]        // 0x00542081    8b0dbc04d200
                         add                esp, 0x18                                     // 0x00542087    83c418
                         test               ecx, ecx                                      // 0x0054208a    85c9
                         {disp8} je         _jmp_addr_0x005420c8                          // 0x0054208c    743a
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dab // 0x0054208e    813dac7cd100ab0d0000
                         {disp8} ja         _jmp_addr_0x005420a1                          // 0x00542098    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054209a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005420ad                          // 0x0054209f    eb0c
_jmp_addr_0x005420a1:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005420a1    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a404]             // 0x005420a7    8d8204a40000
_jmp_addr_0x005420ad:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005420ad    8b4008
                         push               ecx                                           // 0x005420b0    51
                         push               eax                                           // 0x005420b1    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000001a8]             // 0x005420b2    8d8c24a8010000
                         push               0x00bea6f0                                    // 0x005420b9    68f0a6be00
                         push               ecx                                           // 0x005420be    51
                         call               dword ptr [rdata_bytes + 0x3a0]               // 0x005420bf    ff15a0938a00
                         add                esp, 0x10                                     // 0x005420c5    83c410
_jmp_addr_0x005420c8:    {disp32} mov       ecx, dword ptr [esp + 0x000009ac]             // 0x005420c8    8b8c24ac090000
                         push               0x0                                           // 0x005420cf    6a00
                         push               0x0                                           // 0x005420d1    6a00
                         {disp32} lea       edx, dword ptr [esp + 0x000001a8]             // 0x005420d3    8d9424a8010000
                         push               edx                                           // 0x005420da    52
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005420db    e8b0f0ecff
                         pop                edi                                           // 0x005420e0    5f
                         pop                esi                                           // 0x005420e1    5e
                         pop                ebp                                           // 0x005420e2    5d
                         pop                ebx                                           // 0x005420e3    5b
                         add                esp, 0x00000994                               // 0x005420e4    81c494090000
                         ret                0x0014                                        // 0x005420ea    c21400
_jmp_addr_0x005420ed:    cmp                eax, 0x03                                     // 0x005420ed    83f803
                         {disp32} jne       _jmp_addr_0x005423eb                          // 0x005420f0    0f85f5020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x005420f6    a1640bcd00
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x005420fb    8b4018
                         {disp32} mov       cl, byte ptr [eax + 0x00000229]               // 0x005420fe    8a8829020000
                         test               cl, cl                                        // 0x00542104    84c9
                         {disp32} mov       esi, dword ptr [esp + 0x000009ac]             // 0x00542106    8bb424ac090000
                         mov                ebx, 0x00000001                               // 0x0054210d    bb01000000
                         {disp32} jne       _jmp_addr_0x005421ed                          // 0x00542112    0f85d5000000
                         {disp32} mov       ecx, dword ptr [eax + 0x0000025c]             // 0x00542118    8b885c020000
                         test               ecx, ecx                                      // 0x0054211e    85c9
                         {disp32} je        _jmp_addr_0x005421ed                          // 0x00542120    0f84c7000000
                         push               0x2                                           // 0x00542126    6a02
                         mov.s              ecx, esi                                      // 0x00542128    8bce
                         call               @FindControl__8SetupBoxFi@12                  // 0x0054212a    e83160ecff
                         add                eax, 0x24                                     // 0x0054212f    83c024
                         push               eax                                           // 0x00542132    50
                         call               _jmp_addr_0x0053b4a0                          // 0x00542133    e86893ffff
                         add                esp, 0x04                                     // 0x00542138    83c404
                         push               0x0                                           // 0x0054213b    6a00
                         mov.s              ecx, esi                                      // 0x0054213d    8bce
                         mov.s              edi, eax                                      // 0x0054213f    8bf8
                         call               @FindControl__8SetupBoxFi@12                  // 0x00542141    e81a60ecff
                         add                eax, 0x24                                     // 0x00542146    83c024
                         push               eax                                           // 0x00542149    50
                         call               _jmp_addr_0x0053b4a0                          // 0x0054214a    e85193ffff
                         add                esp, 0x04                                     // 0x0054214f    83c404
                         push               ebx                                           // 0x00542152    53
                         mov.s              ecx, esi                                      // 0x00542153    8bce
                         mov.s              ebp, eax                                      // 0x00542155    8be8
                         call               @FindControl__8SetupBoxFi@12                  // 0x00542157    e80460ecff
                         add                eax, 0x24                                     // 0x0054215c    83c024
                         push               eax                                           // 0x0054215f    50
                         call               _jmp_addr_0x0053b4a0                          // 0x00542160    e83b93ffff
                         or                 ecx, 0xffffffff                               // 0x00542165    83c9ff
                         mov.s              edx, eax                                      // 0x00542168    8bd0
                         xor.s              eax, eax                                      // 0x0054216a    33c0
                         add                esp, 0x04                                     // 0x0054216c    83c404
                         repne scasb                                                      // 0x0054216f    f2ae
                         not                ecx                                           // 0x00542171    f7d1
                         dec                ecx                                           // 0x00542173    49
                         {disp8} je         _jmp_addr_0x0054218e                          // 0x00542174    7418
                         or                 ecx, 0xffffffff                               // 0x00542176    83c9ff
                         mov.s              edi, ebp                                      // 0x00542179    8bfd
                         repne scasb                                                      // 0x0054217b    f2ae
                         not                ecx                                           // 0x0054217d    f7d1
                         dec                ecx                                           // 0x0054217f    49
                         {disp8} je         _jmp_addr_0x0054218e                          // 0x00542180    740c
                         or                 ecx, 0xffffffff                               // 0x00542182    83c9ff
                         mov.s              edi, edx                                      // 0x00542185    8bfa
                         repne scasb                                                      // 0x00542187    f2ae
                         not                ecx                                           // 0x00542189    f7d1
                         dec                ecx                                           // 0x0054218b    49
                         {disp8} jne        _jmp_addr_0x005421e6                          // 0x0054218c    7558
_jmp_addr_0x0054218e:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000dac // 0x0054218e    813dac7cd100ac0d0000
                         {disp8} ja         _jmp_addr_0x005421bb                          // 0x00542198    7721
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054219a    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0054219f    8b5008
                         push               0x0                                           // 0x005421a2    6a00
                         push               0x0                                           // 0x005421a4    6a00
                         push               edx                                           // 0x005421a6    52
                         mov.s              ecx, esi                                      // 0x005421a7    8bce
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005421a9    e8e2efecff
                         pop                edi                                           // 0x005421ae    5f
                         pop                esi                                           // 0x005421af    5e
                         pop                ebp                                           // 0x005421b0    5d
                         pop                ebx                                           // 0x005421b1    5b
                         add                esp, 0x00000994                               // 0x005421b2    81c494090000
                         ret                0x0014                                        // 0x005421b8    c21400
_jmp_addr_0x005421bb:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005421bb    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000a418]             // 0x005421c1    8b9118a40000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a410]             // 0x005421c7    8d8110a40000
                         push               0x0                                           // 0x005421cd    6a00
                         push               0x0                                           // 0x005421cf    6a00
                         push               edx                                           // 0x005421d1    52
                         mov.s              ecx, esi                                      // 0x005421d2    8bce
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005421d4    e8b7efecff
                         pop                edi                                           // 0x005421d9    5f
                         pop                esi                                           // 0x005421da    5e
                         pop                ebp                                           // 0x005421db    5d
                         pop                ebx                                           // 0x005421dc    5b
                         add                esp, 0x00000994                               // 0x005421dd    81c494090000
                         ret                0x0014                                        // 0x005421e3    c21400
_jmp_addr_0x005421e6:    {disp32} mov       ebp, dword ptr [esp + 0x000009b0]             // 0x005421e6    8bac24b0090000
_jmp_addr_0x005421ed:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x005421ed    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x005421f2    8b481c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]             // 0x005421f5    8b8148020000
                         test               eax, eax                                      // 0x005421fb    85c0
                         {disp8} jl         _jmp_addr_0x00542220                          // 0x005421fd    7c21
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x005421ff    3b8150020000
                         {disp8} jge        _jmp_addr_0x00542220                          // 0x00542205    7d19
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000258]             // 0x00542207    8b8958020000
                         shl                eax, 9                                        // 0x0054220d    c1e009
                         add.s              ecx, eax                                      // 0x00542210    03c8
                         push               ecx                                           // 0x00542212    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00542213    8d542414
                         push               edx                                           // 0x00542217    52
                         call               _wcscpy                                       // 0x00542218    e8993d2800
                         add                esp, 0x08                                     // 0x0054221d    83c408
_jmp_addr_0x00542220:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00542220    a1680bcd00
                         push               eax                                           // 0x00542225    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00542226    8d442414
                         push               eax                                           // 0x0054222a    50
                         call               _wcsstr                                       // 0x0054222b    e89d5f2800
                         add                esp, 0x08                                     // 0x00542230    83c408
                         test               eax, eax                                      // 0x00542233    85c0
                         {disp8} je         _jmp_addr_0x00542265                          // 0x00542235    742e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00542237    8b0d640bcd00
                         {disp8} mov        edx, dword ptr [ecx + 0x30]                   // 0x0054223d    8b5130
                         {disp32} mov       esi, dword ptr [edx + 0x00000248]             // 0x00542240    8bb248020000
                         xor.s              eax, eax                                      // 0x00542246    33c0
                         test               esi, esi                                      // 0x00542248    85f6
                         sete               al                                            // 0x0054224a    0f94c0
                         inc                eax                                           // 0x0054224d    40
                         {disp32} mov       dword ptr [data_bytes + 0x35a4d8], eax        // 0x0054224e    a3d804d200
                         call               _jmp_addr_0x00540660                          // 0x00542253    e808e4ffff
                         pop                edi                                           // 0x00542258    5f
                         pop                esi                                           // 0x00542259    5e
                         pop                ebp                                           // 0x0054225a    5d
                         pop                ebx                                           // 0x0054225b    5b
                         add                esp, 0x00000994                               // 0x0054225c    81c494090000
                         ret                0x0014                                        // 0x00542262    c21400
_jmp_addr_0x00542265:    {disp32} mov       edx, dword ptr [data_bytes + 0x30ab64]        // 0x00542265    8b15640bcd00
                         {disp8} mov        eax, dword ptr [edx + 0x1c]                   // 0x0054226b    8b421c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x0054226e    8b8848020000
                         test               ecx, ecx                                      // 0x00542274    85c9
                         {disp8} jl         _jmp_addr_0x0054228b                          // 0x00542276    7c13
                         cmp                ecx, dword ptr [eax + 0x00000250]             // 0x00542278    3b8850020000
                         {disp8} jge        _jmp_addr_0x0054228b                          // 0x0054227e    7d0b
                         {disp32} mov       eax, dword ptr [eax + 0x00000264]             // 0x00542280    8b8064020000
                         mov                ecx, dword ptr [eax + ecx * 0x4]              // 0x00542286    8b0c88
                         {disp8} jmp        _jmp_addr_0x0054228d                          // 0x00542289    eb02
_jmp_addr_0x0054228b:    xor.s              ecx, ecx                                      // 0x0054228b    33c9
_jmp_addr_0x0054228d:    {disp32} mov       edi, dword ptr [rdata_bytes + 0x994]          // 0x0054228d    8b3d94998a00
                         {disp8} lea        eax, dword ptr [edx + 0x5c]                   // 0x00542293    8d425c
                         push               eax                                           // 0x00542296    50
                         push               ecx                                           // 0x00542297    51
                         {disp8} mov        ecx, dword ptr [edx + 0x54]                   // 0x00542298    8b4a54
                         call               edi                                           // 0x0054229b    ffd7
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x0054229d    8b0d640bcd00
                         {disp8} mov        eax, dword ptr [ecx + 0x5c]                   // 0x005422a3    8b415c
                         test               eax, eax                                      // 0x005422a6    85c0
                         {disp8} je         _jmp_addr_0x005422c2                          // 0x005422a8    7418
                         {disp32} mov       dword ptr [data_bytes + 0x35a4d8], ebx        // 0x005422aa    891dd804d200
                         call               _jmp_addr_0x00540660                          // 0x005422b0    e8abe3ffff
                         pop                edi                                           // 0x005422b5    5f
                         pop                esi                                           // 0x005422b6    5e
                         pop                ebp                                           // 0x005422b7    5d
                         pop                ebx                                           // 0x005422b8    5b
                         add                esp, 0x00000994                               // 0x005422b9    81c494090000
                         ret                0x0014                                        // 0x005422bf    c21400
_jmp_addr_0x005422c2:    {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x005422c2    8b411c
                         {disp32} mov       edx, dword ptr [eax + 0x00000248]             // 0x005422c5    8b9048020000
                         test               edx, edx                                      // 0x005422cb    85d2
                         {disp8} jl         _jmp_addr_0x005422e2                          // 0x005422cd    7c13
                         cmp                edx, dword ptr [eax + 0x00000250]             // 0x005422cf    3b9050020000
                         {disp8} jge        _jmp_addr_0x005422e2                          // 0x005422d5    7d0b
                         {disp32} mov       eax, dword ptr [eax + 0x00000264]             // 0x005422d7    8b8064020000
                         mov                edx, dword ptr [eax + edx * 0x4]              // 0x005422dd    8b1490
                         {disp8} jmp        _jmp_addr_0x005422e4                          // 0x005422e0    eb02
_jmp_addr_0x005422e2:    xor.s              edx, edx                                      // 0x005422e2    33d2
_jmp_addr_0x005422e4:    push               0x00000a30                                    // 0x005422e4    68300a0000
                         push               0x00bea568                                    // 0x005422e9    6868a5be00
                         {disp8} mov        dword ptr [ecx + 0x58], edx                   // 0x005422ee    895158
                         push               0x8                                           // 0x005422f1    6a08
                         {disp32} mov       dword ptr [data_bytes + 0x35a4d8], ebx        // 0x005422f3    891dd804d200
                         call               ___nw__FUl                                    // 0x005422f9    e892942900
                         add                esp, 0x0c                                     // 0x005422fe    83c40c
                         test               eax, eax                                      // 0x00542301    85c0
                         {disp8} je         _jmp_addr_0x0054230f                          // 0x00542303    740a
                         mov.s              ecx, eax                                      // 0x00542305    8bc8
                         call               dword ptr [__imp___0Dialup__QAE_XZ@4]         // 0x00542307    ff1580998a00
                         {disp8} jmp        _jmp_addr_0x00542311                          // 0x0054230d    eb02
_jmp_addr_0x0054230f:    xor.s              eax, eax                                      // 0x0054230f    33c0
_jmp_addr_0x00542311:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00542311    8b0d640bcd00
                         {disp8} mov        dword ptr [ecx + 0x54], eax                   // 0x00542317    894154
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab64]        // 0x0054231a    8b15640bcd00
                         {disp8} mov        ecx, dword ptr [edx + 0x54]                   // 0x00542320    8b4a54
                         call               dword ptr [__imp__Initialise_Dialup__QAEHXZ@4]// 0x00542323    ff1588998a00
                         test               eax, eax                                      // 0x00542329    85c0
                         {disp32} je        _jmp_addr_0x005423eb                          // 0x0054232b    0f84ba000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00542331    a1640bcd00
                         {disp8} mov        edx, dword ptr [eax + 0x58]                   // 0x00542336    8b5058
                         {disp8} lea        ecx, dword ptr [eax + 0x5c]                   // 0x00542339    8d485c
                         push               ecx                                           // 0x0054233c    51
                         {disp8} mov        ecx, dword ptr [eax + 0x54]                   // 0x0054233d    8b4854
                         push               edx                                           // 0x00542340    52
                         call               edi                                           // 0x00542341    ffd7
                         test               eax, eax                                      // 0x00542343    85c0
                         {disp32} je        _jmp_addr_0x005423eb                          // 0x00542345    0f84a0000000
                         push               0xa                                           // 0x0054234b    6a0a
                         mov.s              ecx, esi                                      // 0x0054234d    8bce
                         call               @FindControl__8SetupBoxFi@12                  // 0x0054234f    e80c5eecff
                         push               eax                                           // 0x00542354    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00542355    a1640bcd00
                         {disp32} lea       ecx, dword ptr [eax + 0x00000492]             // 0x0054235a    8d8892040000
                         push               ecx                                           // 0x00542360    51
                         {disp8} mov        ecx, dword ptr [eax + 0x58]                   // 0x00542361    8b4858
                         {disp32} lea       edx, dword ptr [eax + 0x00000290]             // 0x00542364    8d9090020000
                         push               edx                                           // 0x0054236a    52
                         push               0x005402b0                                    // 0x0054236b    68b0025400
                         push               ecx                                           // 0x00542370    51
                         {disp8} mov        ecx, dword ptr [eax + 0x54]                   // 0x00542371    8b4854
                         call               dword ptr [rdata_bytes + 0x9a0]               // 0x00542374    ff15a0998a00
                         test               eax, eax                                      // 0x0054237a    85c0
                         {disp8} jne        _jmp_addr_0x005423eb                          // 0x0054237c    756d
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dad // 0x0054237e    813dac7cd100ad0d0000
                         {disp8} ja         _jmp_addr_0x00542391                          // 0x00542388    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054238a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x0054239d                          // 0x0054238f    eb0c
_jmp_addr_0x00542391:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00542391    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a41c]             // 0x00542397    8d821ca40000
_jmp_addr_0x0054239d:    {disp8} mov        ebp, dword ptr [eax + 0x08]                   // 0x0054239d    8b6808
                         push               0xa                                           // 0x005423a0    6a0a
                         mov.s              ecx, esi                                      // 0x005423a2    8bce
                         call               @FindControl__8SetupBoxFi@12                  // 0x005423a4    e8b75decff
                         mov.s              esi, eax                                      // 0x005423a9    8bf0
                         push               0x000000ff                                    // 0x005423ab    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x005423b0    8d7e24
                         push               ebp                                           // 0x005423b3    55
                         push               edi                                           // 0x005423b4    57
                         call               _wcsncpy                                      // 0x005423b5    e86b402800
                         xor.s              ebx, ebx                                      // 0x005423ba    33db
                         push               edi                                           // 0x005423bc    57
                         {disp32} mov       word ptr [esi + 0x00000222], bx               // 0x005423bd    66899e22020000
                         call               _wcslen                                       // 0x005423c4    e899402800
                         {disp32} mov       ebp, dword ptr [esp + 0x000009c0]             // 0x005423c9    8bac24c0090000
                         add                esp, 0x10                                     // 0x005423d0    83c410
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x005423d3    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x005423d9    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x005423df    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], ebx             // 0x005423e5    899e58020000
_jmp_addr_0x005423eb:    cmp                dword ptr [ebp + 0x18], 0x08                  // 0x005423eb    837d1808
                         {disp8} jne        _jmp_addr_0x00542415                          // 0x005423ef    7524
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x005423f1    8b0d640bcd00
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                   // 0x005423f7    8b4130
                         {disp32} mov       edx, dword ptr [eax + 0x00000248]             // 0x005423fa    8b9048020000
                         push               edx                                           // 0x00542400    52
                         call               _jmp_addr_0x00540f80                          // 0x00542401    e87aebffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x00542406    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                   // 0x0054240b    8b4830
                         mov                edx, dword ptr [ecx]                          // 0x0054240e    8b11
                         push               0x0                                           // 0x00542410    6a00
                         call               dword ptr [edx + 8]                           // 0x00542412    ff5208
_jmp_addr_0x00542415:    cmp                dword ptr [ebp + 0x18], 0x07                  // 0x00542415    837d1807
                         {disp32} jne       _jmp_addr_0x005424a7                          // 0x00542419    0f8588000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab64]        // 0x0054241f    a1640bcd00
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x00542424    8b481c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]             // 0x00542427    8b8148020000
                         test               eax, eax                                      // 0x0054242d    85c0
                         {disp8} jl         _jmp_addr_0x00542452                          // 0x0054242f    7c21
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x00542431    3b8150020000
                         {disp8} jge        _jmp_addr_0x00542452                          // 0x00542437    7d19
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000258]             // 0x00542439    8b8958020000
                         shl                eax, 9                                        // 0x0054243f    c1e009
                         add.s              ecx, eax                                      // 0x00542442    03c8
                         push               ecx                                           // 0x00542444    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00542445    8d542414
                         push               edx                                           // 0x00542449    52
                         call               _wcscpy                                       // 0x0054244a    e8673b2800
                         add                esp, 0x08                                     // 0x0054244f    83c408
_jmp_addr_0x00542452:    {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00542452    a1680bcd00
                         push               eax                                           // 0x00542457    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00542458    8d442414
                         push               eax                                           // 0x0054245c    50
                         call               _wcsstr                                       // 0x0054245d    e86b5d2800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00542462    8b0d640bcd00
                         add                esp, 0x08                                     // 0x00542468    83c408
                         neg                eax                                           // 0x0054246b    f7d8
                         sbb.s              eax, eax                                      // 0x0054246d    1bc0
                         inc                eax                                           // 0x0054246f    40
                         push               eax                                           // 0x00542470    50
                         call               _jmp_addr_0x00540f80                          // 0x00542471    e80aebffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30ab68]        // 0x00542476    a1680bcd00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x0054247b    8b0d640bcd00
                         {disp8} mov        edx, dword ptr [ecx + 0x30]                   // 0x00542481    8b5130
                         mov                esi, dword ptr [edx]                          // 0x00542484    8b32
                         push               eax                                           // 0x00542486    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00542487    8d442414
                         push               eax                                           // 0x0054248b    50
                         call               _wcsstr                                       // 0x0054248c    e83c5d2800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab64]        // 0x00542491    8b0d640bcd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x30]                   // 0x00542497    8b4930
                         add                esp, 0x08                                     // 0x0054249a    83c408
                         neg                eax                                           // 0x0054249d    f7d8
                         sbb.s              al, al                                        // 0x0054249f    1ac0
                         inc                al                                            // 0x005424a1    fec0
                         push               eax                                           // 0x005424a3    50
                         call               dword ptr [esi + 8]                           // 0x005424a4    ff5608
_jmp_addr_0x005424a7:    cmp                dword ptr [ebp + 0x18], 0x04                  // 0x005424a7    837d1804
                         {disp8} jne        _jmp_addr_0x005424c3                          // 0x005424ab    7516
                         mov                ecx, 0x00d204a8                               // 0x005424ad    b9a804d200
                         call               _jmp_addr_0x005ea980                          // 0x005424b2    e8c9840a00
                         call               _jmp_addr_0x00513640                          // 0x005424b7    e88411fdff
                         {disp32} mov       byte ptr [data_bytes + 0x30a6dc], 0x00        // 0x005424bc    c605dc06cd0000
_jmp_addr_0x005424c3:    cmp                dword ptr [ebp + 0x18], 0x06                  // 0x005424c3    837d1806
                         {disp8} jne        _jmp_addr_0x005424dd                          // 0x005424c7    7514
                         {disp32} mov       eax, dword ptr [ebp + 0x00000248]             // 0x005424c9    8b8548020000
                         xor.s              edx, edx                                      // 0x005424cf    33d2
                         test               eax, eax                                      // 0x005424d1    85c0
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x3f4]          // 0x005424d3    a1f4938a00
                         setne              dl                                            // 0x005424d8    0f95c2
                         mov                dword ptr [eax], edx                          // 0x005424db    8910
_jmp_addr_0x005424dd:    pop                edi                                           // 0x005424dd    5f
                         pop                esi                                           // 0x005424de    5e
                         pop                ebp                                           // 0x005424df    5d
                         pop                ebx                                           // 0x005424e0    5b
                         add                esp, 0x00000994                               // 0x005424e1    81c494090000
                         ret                0x0014                                        // 0x005424e7    c21400

// Snippet: db, [0x005424ea, 0x005424ec)
.byte 0x8b, 0xff                  // 0x005424ea

// Snippet: jmptbl, [0x005424ec, 0x00542508)
.byte 0x36, 0x1f, 0x54, 0x00      // 0x005424ec
.byte 0xd0, 0x1f, 0x54, 0x00      // 0x005424f0
.byte 0xdd, 0x24, 0x54, 0x00      // 0x005424f4
.byte 0xce, 0x1e, 0x54, 0x00      // 0x005424f8
.byte 0xdd, 0x24, 0x54, 0x00      // 0x005424fc
.byte 0xdd, 0x24, 0x54, 0x00      // 0x00542500
.byte 0x98, 0x1f, 0x54, 0x00      // 0x00542504

// Snippet: db, [0x00542508, 0x00542510)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00542508
.byte 0x90, 0x90, 0x90, 0x90      // 0x0054250c

