.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _NeedsBiggerText__Fv
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern @SetPosition__6ZoomerFf@12
.extern _jmp_addr_0x00447450
.extern _jmp_addr_0x00449de0
.extern _jmp_addr_0x00449e10
.extern _jmp_addr_0x0046ee60
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern _wcscpy
.extern _wcslen
.extern ___nw__FUl
.extern _jmp_addr_0x007e2910
.extern _jmp_addr_0x007e2b40
.extern _jmp_addr_0x007e3d20
.extern _jmp_addr_0x007e41b0
.extern ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52

.globl _jmp_addr_0x00447850
.globl _jmp_addr_0x00447ba0
.globl _jmp_addr_0x00447ea0
.globl _jmp_addr_0x004489d0
.globl _jmp_addr_0x00448c00
.globl _jmp_addr_0x00448c40
.globl _jmp_addr_0x00448f10
.globl ?Reset@CameraHelpAccumulator@@QAEXXZ
.globl _jmp_addr_0x00448f40
.globl _jmp_addr_0x00448fc0
.globl _jmp_addr_0x00449040
.globl ?CameraHelpCallback@CameraHelp@@SAXW4CameraHelpReason@@AAULHPoint@@K@Z
.globl _jmp_addr_0x004491e0
.globl _jmp_addr_0x00449240
.globl _jmp_addr_0x004492f0
.globl _jmp_addr_0x00449650

start_0x00447850_0x00449de0:
// Snippet: asm, [0x00447850, 0x00449da6)
_jmp_addr_0x00447850:    push               ecx                                           // 0x00447850    51
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00447851    a15850e800
                         push               esi                                           // 0x00447856    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x294fcc]        // 0x00447857    8b35ccafc500
                         and                eax, 0x0000ffff                               // 0x0044785d    25ffff0000
                         cmp                esi, -0x01                                    // 0x00447862    83feff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00447865    89442404
                         {disp8} je         _jmp_addr_0x004478d5                          // 0x00447869    746a
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x0044786b    db442404
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fbc]        // 0x0044786f    8b0dbcafc500
                         push               ecx                                           // 0x00447875    51
                         fld                st(0)                                         // 0x00447876    d9c0
                         {disp32} fmul      dword ptr [data_bytes + 0x294fc0]             // 0x00447878    d80dc0afc500
                         call               _jmp_addr_0x007a1400                          // 0x0044787e    e87d9b3500
                         xor.s              edx, edx                                      // 0x00447883    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]          // 0x00447885    668b155a50e800
                         push               eax                                           // 0x0044788c    50
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x0044788d    8954240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00447891    db44240c
                         {disp32} fmul      dword ptr [data_bytes + 0x294fc4]             // 0x00447895    d80dc4afc500
                         call               _jmp_addr_0x007a1400                          // 0x0044789b    e8609b3500
                         {disp32} fld       dword ptr [data_bytes + 0x294fc8]             // 0x004478a0    d905c8afc500
                         {disp32} fadd      dword ptr [data_bytes + 0x294fc0]             // 0x004478a6    d805c0afc500
                         push               eax                                           // 0x004478ac    50
                         fmul               st, st(1)                                     // 0x004478ad    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x004478af    e84c9b3500
                         fstp               st(0)                                         // 0x004478b4    ddd8
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fdc]        // 0x004478b6    8b0ddcafc500
                         push               eax                                           // 0x004478bc    50
                         xor.s              eax, eax                                      // 0x004478bd    33c0
                         test               ecx, ecx                                      // 0x004478bf    85c9
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fd0]        // 0x004478c1    8b0dd0afc500
                         setne              al                                            // 0x004478c7    0f95c0
                         push               eax                                           // 0x004478ca    50
                         push               ecx                                           // 0x004478cb    51
                         push               esi                                           // 0x004478cc    56
                         call               _jmp_addr_0x00447450                          // 0x004478cd    e87efbffff
                         add                esp, 0x1c                                     // 0x004478d2    83c41c
_jmp_addr_0x004478d5:    {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x004478d5    db053481c300
                         {disp32} mov       esi, dword ptr [data_bytes + 0x294fe0]        // 0x004478db    8b35e0afc500
                         test               esi, esi                                      // 0x004478e1    85f6
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x004478e3    d80db0a38a00
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x004478e9    d95c2404
                         {disp8} je         _jmp_addr_0x00447907                          // 0x004478ed    7418
                         push               edi                                           // 0x004478ef    57
                         {disp8} mov        edi, dword ptr [esp + 0x08]                   // 0x004478f0    8b7c2408
_jmp_addr_0x004478f4:    push               edi                                           // 0x004478f4    57
                         mov.s              ecx, esi                                      // 0x004478f5    8bce
                         call               _jmp_addr_0x00448ac0                          // 0x004478f7    e8c4110000
                         {disp32} mov       esi, dword ptr [esi + 0x0000013c]             // 0x004478fc    8bb63c010000
                         test               esi, esi                                      // 0x00447902    85f6
                         {disp8} jne        _jmp_addr_0x004478f4                          // 0x00447904    75ee
                         pop                edi                                           // 0x00447906    5f
_jmp_addr_0x00447907:    pop                esi                                           // 0x00447907    5e
                         pop                ecx                                           // 0x00447908    59
                         ret                                                              // 0x00447909    c3
                         call               dword ptr [__imp__ShellExecuteA@4]            // 0x0044790a    ff15ac978a00
_jmp_addr_0x00447910:    push               edi                                           // 0x00447910    57
                         {disp8} mov        edi, dword ptr [esp + 0x08]                   // 0x00447911    8b7c2408
                         test               edi, edi                                      // 0x00447915    85ff
                         {disp8} je         _jmp_addr_0x00447981                          // 0x00447917    7468
                         push               ebx                                           // 0x00447919    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x506d08]        // 0x0044791a    8b1d08cdec00
                         push               esi                                           // 0x00447920    56
                         push               edi                                           // 0x00447921    57
                         call               _wcslen                                       // 0x00447922    e83beb3700
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00447927    8b4c241c
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x0044792b    8b742420
                         sub.s              esi, ecx                                      // 0x0044792f    2bf1
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00447931    89742414
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x00447935    db442414
                         mov.s              ecx, ebx                                      // 0x00447939    8bcb
                         {disp8} fst        dword ptr [esp + 0x14]                        // 0x0044793b    d9542414
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0044793f    d84c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e664]             // 0x00447943    d80d64768c00
                         fstp               dword ptr [esp]                               // 0x00447949    d91c24
                         push               eax                                           // 0x0044794c    50
                         push               edi                                           // 0x0044794d    57
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x0044794e    e8dd973e00
                         lea                ecx, dword ptr [esi + esi * 0x1]              // 0x00447953    8d0c36
                         mov                eax, 0x55555556                               // 0x00447956    b856555555
                         imul               ecx                                           // 0x0044795b    f7e9
                         mov.s              eax, edx                                      // 0x0044795d    8bc2
                         shr                eax, 0x1f                                     // 0x0044795f    c1e81f
                         add.s              edx, eax                                      // 0x00447962    03d0
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00447964    8954241c
                         pop                esi                                           // 0x00447968    5e
                         pop                ebx                                           // 0x00447969    5b
                         {disp8} fiadd      dword ptr [esp + 0x14]                        // 0x0044796a    da442414
                         {disp8} fcom       dword ptr [esp + 0x08]                        // 0x0044796e    d8542408
                         fnstsw             ax                                            // 0x00447972    dfe0
                         test               ah, 0x01                                      // 0x00447974    f6c401
                         {disp8} je         _jmp_addr_0x00447987                          // 0x00447977    740e
                         fstp               st(0)                                         // 0x00447979    ddd8
                         pop                edi                                           // 0x0044797b    5f
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0044797c    d9442404
                         ret                                                              // 0x00447980    c3
_jmp_addr_0x00447981:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00447981    d90598a38a00
_jmp_addr_0x00447987:    pop                edi                                           // 0x00447987    5f
                         ret                                                              // 0x00447988    c3
                         nop                                                              // 0x00447989    90
                         nop                                                              // 0x0044798a    90
                         nop                                                              // 0x0044798b    90
                         nop                                                              // 0x0044798c    90
                         nop                                                              // 0x0044798d    90
                         nop                                                              // 0x0044798e    90
                         nop                                                              // 0x0044798f    90
_jmp_addr_0x00447990:    sub                esp, 0x08                                     // 0x00447990    83ec08
                         push               ebx                                           // 0x00447993    53
                         push               ebp                                           // 0x00447994    55
                         {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00447995    8b6c2428
                         push               esi                                           // 0x00447999    56
                         push               edi                                           // 0x0044799a    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0044799b    8b7c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0044799f    8b4c2434
                         push               0x42c80000                                    // 0x004479a3    680000c842
                         sub.s              ebp, edi                                      // 0x004479a8    2bef
                         push               0x0                                           // 0x004479aa    6a00
                         mov.s              eax, ebp                                      // 0x004479ac    8bc5
                         cdq                                                              // 0x004479ae    99
                         push               0x0000a000                                    // 0x004479af    6800a00000
                         and                edx, 0x03                                     // 0x004479b4    83e203
                         add.s              eax, edx                                      // 0x004479b7    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x004479b9    8b542430
                         sar                eax, 2                                        // 0x004479bd    c1f802
                         push               0xffff6000                                    // 0x004479c0    680060ffff
                         lea                esi, dword ptr [eax + edx * 0x1]              // 0x004479c5    8d3410
                         push               0x0                                           // 0x004479c8    6a00
                         {disp8} mov        dword ptr [esp + 0x24], esi                   // 0x004479ca    89742424
                         {disp8} mov        esi, dword ptr [esp + 0x40]                   // 0x004479ce    8b742440
                         sub.s              esi, eax                                      // 0x004479d2    2bf0
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ecx          // 0x004479d4    890d78809c00
                         {disp8} mov        byte ptr [esp + 0x3f], cl                     // 0x004479da    884c243f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516368]        // 0x004479de    8b0d68c3ed00
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x004479e4    8d44243c
                         push               eax                                           // 0x004479e8    50
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x004479e9    8b442448
                         push               ecx                                           // 0x004479ed    51
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x004479ee    8b4c242c
                         push               0x3e7e0000                                    // 0x004479f2    6800007e3e
                         push               0x3f108000                                    // 0x004479f7    680080103f
                         push               0x3b000000                                    // 0x004479fc    680000003b
                         push               0x3f008000                                    // 0x00447a01    680080003f
                         push               eax                                           // 0x00447a06    50
                         push               ecx                                           // 0x00447a07    51
                         mov                bl, -0x01                                     // 0x00447a08    b3ff
                         push               edi                                           // 0x00447a0a    57
                         push               edx                                           // 0x00447a0b    52
                         {disp8} mov        dword ptr [esp + 0x50], ebp                   // 0x00447a0c    896c2450
                         {disp8} mov        byte ptr [esp + 0x64], bl                     // 0x00447a10    885c2464
                         {disp8} mov        byte ptr [esp + 0x65], bl                     // 0x00447a14    885c2465
                         {disp8} mov        byte ptr [esp + 0x66], bl                     // 0x00447a18    885c2466
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447a1c    e85faffcff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516368]        // 0x00447a21    8b0d68c3ed00
                         {disp8} mov        dl, byte ptr [esp + 0x70]                     // 0x00447a27    8a542470
                         push               0x42c80000                                    // 0x00447a2b    680000c842
                         push               0x0                                           // 0x00447a30    6a00
                         push               0x0000a000                                    // 0x00447a32    6800a00000
                         push               0xffff6000                                    // 0x00447a37    680060ffff
                         push               0x0                                           // 0x00447a3c    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x78]                   // 0x00447a3e    8d442478
                         push               eax                                           // 0x00447a42    50
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x00447a43    8b442464
                         push               ecx                                           // 0x00447a47    51
                         push               0x3e7e0000                                    // 0x00447a48    6800007e3e
                         push               0x3f2f8000                                    // 0x00447a4d    6800802f3f
                         push               0x3b000000                                    // 0x00447a52    680000003b
                         push               0x3f108000                                    // 0x00447a57    680080103f
                         {disp32} mov       byte ptr [esp + 0x00000093], dl               // 0x00447a5c    88942493000000
                         {disp32} mov       edx, dword ptr [esp + 0x00000098]             // 0x00447a63    8b942498000000
                         push               edx                                           // 0x00447a6a    52
                         push               esi                                           // 0x00447a6b    56
                         push               edi                                           // 0x00447a6c    57
                         push               eax                                           // 0x00447a6d    50
                         {disp32} mov       byte ptr [esp + 0x000000a0], bl               // 0x00447a6e    889c24a0000000
                         {disp32} mov       byte ptr [esp + 0x000000a1], bl               // 0x00447a75    889c24a1000000
                         {disp32} mov       byte ptr [esp + 0x000000a2], bl               // 0x00447a7c    889c24a2000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447a83    e8f8aefcff
                         add                esp, 0x78                                     // 0x00447a88    83c478
                         push               0x42c80000                                    // 0x00447a8b    680000c842
                         push               0x0                                           // 0x00447a90    6a00
                         push               0x0000a000                                    // 0x00447a92    6800a00000
                         {disp8} mov        byte ptr [esp + 0x34], bl                     // 0x00447a97    885c2434
                         {disp8} mov        byte ptr [esp + 0x35], bl                     // 0x00447a9b    885c2435
                         {disp8} mov        byte ptr [esp + 0x36], bl                     // 0x00447a9f    885c2436
                         {disp8} mov        bl, byte ptr [esp + 0x40]                     // 0x00447aa3    8a5c2440
                         push               0xffff6000                                    // 0x00447aa7    680060ffff
                         {disp8} mov        byte ptr [esp + 0x3b], bl                     // 0x00447aac    885c243b
                         push               0x0                                           // 0x00447ab0    6a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516368]        // 0x00447ab2    8b1568c3ed00
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00447ab8    8b442444
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x00447abc    8d4c243c
                         push               ecx                                           // 0x00447ac0    51
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x00447ac1    8b4c2444
                         push               edx                                           // 0x00447ac5    52
                         push               0x3e7e0000                                    // 0x00447ac6    6800007e3e
                         push               0x3f3f8000                                    // 0x00447acb    6800803f3f
                         push               0x3b000000                                    // 0x00447ad0    680000003b
                         push               0x3f2f8000                                    // 0x00447ad5    6800802f3f
                         push               eax                                           // 0x00447ada    50
                         push               ecx                                           // 0x00447adb    51
                         push               edi                                           // 0x00447adc    57
                         push               esi                                           // 0x00447add    56
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447ade    e89daefcff
                         {disp8} mov        esi, dword ptr [esp + 0x58]                   // 0x00447ae3    8b742458
                         add                esp, 0x3c                                     // 0x00447ae7    83c43c
                         test               esi, esi                                      // 0x00447aea    85f6
                         {disp32} je        _jmp_addr_0x00447b98                          // 0x00447aec    0f84a6000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x506d08]        // 0x00447af2    8b1508cdec00
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x00447af8    db442414
                         push               0x45800000                                    // 0x00447afc    6800008045
                         push               0x0                                           // 0x00447b01    6a00
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x00447b03    d84c2428
                         push               0x0                                           // 0x00447b07    6a00
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00447b09    89542438
                         push               0x0                                           // 0x00447b0d    6a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e664]             // 0x00447b0f    d80d64768c00
                         {disp8} lea        eax, dword ptr [esp + 0x40]                   // 0x00447b15    8d442440
                         push               eax                                           // 0x00447b19    50
                         mov                eax, 0x92492493                               // 0x00447b1a    b893244992
                         imul               ebp                                           // 0x00447b1f    f7ed
                         add.s              edx, ebp                                      // 0x00447b21    03d5
                         push               ecx                                           // 0x00447b23    51
                         sar                edx, 2                                        // 0x00447b24    c1fa02
                         mov                eax, 0x66666667                               // 0x00447b27    b867666666
                         fstp               dword ptr [esp]                               // 0x00447b2c    d91c24
                         push               ecx                                           // 0x00447b2f    51
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x00447b30    d905e039e800
                         mov.s              ecx, edx                                      // 0x00447b36    8bca
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x00447b38    d80d30b28a00
                         shr                ecx, 0x1f                                     // 0x00447b3e    c1e91f
                         add.s              edx, ecx                                      // 0x00447b41    03d1
                         add.s              edx, edi                                      // 0x00447b43    03d7
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x00447b45    89542450
                         imul               ebp                                           // 0x00447b49    f7ed
                         fstp               dword ptr [esp]                               // 0x00447b4b    d91c24
                         {disp8} fild       dword ptr [esp + 0x50]                        // 0x00447b4e    db442450
                         {disp8} mov        ebp, dword ptr [esp + 0x40]                   // 0x00447b52    8b6c2440
                         sar                edx, 1                                        // 0x00447b56    d1fa
                         mov.s              eax, edx                                      // 0x00447b58    8bc2
                         shr                eax, 0x1f                                     // 0x00447b5a    c1e81f
                         add.s              edx, eax                                      // 0x00447b5d    03d0
                         push               ecx                                           // 0x00447b5f    51
                         add.s              edx, ebp                                      // 0x00447b60    03d5
                         {disp8} mov        dword ptr [esp + 0x54], edx                   // 0x00447b62    89542454
                         fstp               dword ptr [esp]                               // 0x00447b66    d91c24
                         push               ecx                                           // 0x00447b69    51
                         {disp8} mov        byte ptr [esp + 0x54], 0x00                   // 0x00447b6a    c644245400
                         {disp8} fild       dword ptr [esp + 0x58]                        // 0x00447b6f    db442458
                         {disp8} mov        byte ptr [esp + 0x55], 0x00                   // 0x00447b73    c644245500
                         {disp8} mov        byte ptr [esp + 0x56], 0x00                   // 0x00447b78    c644245600
                         {disp8} mov        byte ptr [esp + 0x57], bl                     // 0x00447b7d    885c2457
                         fstp               dword ptr [esp]                               // 0x00447b81    d91c24
                         push               esi                                           // 0x00447b84    56
                         call               _wcslen                                       // 0x00447b85    e8d8e83700
                         {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x00447b8a    8b4c2454
                         add                esp, 0x04                                     // 0x00447b8e    83c404
                         push               eax                                           // 0x00447b91    50
                         push               esi                                           // 0x00447b92    56
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x00447b93    e8c8b03e00
_jmp_addr_0x00447b98:    pop                edi                                           // 0x00447b98    5f
                         pop                esi                                           // 0x00447b99    5e
                         pop                ebp                                           // 0x00447b9a    5d
                         pop                ebx                                           // 0x00447b9b    5b
                         add                esp, 0x08                                     // 0x00447b9c    83c408
                         ret                                                              // 0x00447b9f    c3
_jmp_addr_0x00447ba0:    push               ecx                                           // 0x00447ba0    51
                         push               ebx                                           // 0x00447ba1    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00447ba2    8b5c2410
                         push               ebp                                           // 0x00447ba6    55
                         push               esi                                           // 0x00447ba7    56
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00447ba8    8b742420
                         push               edi                                           // 0x00447bac    57
                         mov.s              eax, esi                                      // 0x00447bad    8bc6
                         sub.s              eax, ebx                                      // 0x00447baf    2bc3
                         cdq                                                              // 0x00447bb1    99
                         and                edx, 0x03                                     // 0x00447bb2    83e203
                         add.s              eax, edx                                      // 0x00447bb5    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00447bb7    8b542418
                         sar                eax, 2                                        // 0x00447bbb    c1f802
                         lea                ebp, dword ptr [eax + edx * 0x1]              // 0x00447bbe    8d2c10
                         mov.s              ecx, edx                                      // 0x00447bc1    8bca
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00447bc3    8b542420
                         mov.s              edi, edx                                      // 0x00447bc7    8bfa
                         add.s              edx, eax                                      // 0x00447bc9    03d0
                         push               0x42c80000                                    // 0x00447bcb    680000c842
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00447bd0    8954241c
                         mov.s              edx, ebx                                      // 0x00447bd4    8bd3
                         add.s              ebx, eax                                      // 0x00447bd6    03d8
                         push               0x0                                           // 0x00447bd8    6a00
                         sub.s              ecx, eax                                      // 0x00447bda    2bc8
                         sub.s              edx, eax                                      // 0x00447bdc    2bd0
                         sub.s              edi, eax                                      // 0x00447bde    2bf8
                         push               0x0000a000                                    // 0x00447be0    6800a00000
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00447be5    895c2430
                         mov.s              ebx, esi                                      // 0x00447be9    8bde
                         sub.s              ebx, eax                                      // 0x00447beb    2bd8
                         add.s              eax, esi                                      // 0x00447bed    03c6
                         {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x00447bef    8b742434
                         push               0xffff6000                                    // 0x00447bf3    680060ffff
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00447bf8    8944242c
                         push               0x0                                           // 0x00447bfc    6a00
                         mov.s              eax, esi                                      // 0x00447bfe    8bc6
                         shr                eax, 0x18                                     // 0x00447c00    c1e818
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax          // 0x00447c03    a378809c00
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00447c08    8d44243c
                         push               eax                                           // 0x00447c0c    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516364]        // 0x00447c0d    a164c3ed00
                         push               eax                                           // 0x00447c12    50
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x00447c13    8b442440
                         push               0x3ea80000                                    // 0x00447c17    680000a83e
                         push               0x3da00000                                    // 0x00447c1c    680000a03d
                         push               0x3e800000                                    // 0x00447c21    680000803e
                         push               0x0                                           // 0x00447c26    6a00
                         push               eax                                           // 0x00447c28    50
                         push               ebp                                           // 0x00447c29    55
                         push               edx                                           // 0x00447c2a    52
                         push               ecx                                           // 0x00447c2b    51
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x00447c2c    894c244c
                         {disp8} mov        dword ptr [esp + 0x5c], edx                   // 0x00447c30    8954245c
                         {disp8} mov        dword ptr [esp + 0x64], esi                   // 0x00447c34    89742464
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447c38    e843adfcff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516364]        // 0x00447c3d    8b1564c3ed00
                         push               0x42c80000                                    // 0x00447c43    680000c842
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x00447c48    8b442464
                         push               0x0                                           // 0x00447c4c    6a00
                         push               0x0000a000                                    // 0x00447c4e    6800a00000
                         push               0xffff6000                                    // 0x00447c53    680060ffff
                         push               0x0                                           // 0x00447c58    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                   // 0x00447c5a    8d4c2478
                         push               ecx                                           // 0x00447c5e    51
                         {disp8} mov        ecx, dword ptr [esp + 0x74]                   // 0x00447c5f    8b4c2474
                         push               edx                                           // 0x00447c63    52
                         push               0x3ea80000                                    // 0x00447c64    680000a83e
                         push               0x3e2c0000                                    // 0x00447c69    6800002c3e
                         push               0x3e800000                                    // 0x00447c6e    680000803e
                         push               0x3da00000                                    // 0x00447c73    680000a03d
                         push               eax                                           // 0x00447c78    50
                         push               edi                                           // 0x00447c79    57
                         push               ecx                                           // 0x00447c7a    51
                         push               ebp                                           // 0x00447c7b    55
                         {disp32} mov       dword ptr [esp + 0x000000a0], esi             // 0x00447c7c    89b424a0000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447c83    e8f8acfcff
                         add                esp, 0x78                                     // 0x00447c88    83c478
                         push               0x42c80000                                    // 0x00447c8b    680000c842
                         push               0x0                                           // 0x00447c90    6a00
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x00447c92    89742430
                         push               0x0000a000                                    // 0x00447c96    6800a00000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516364]        // 0x00447c9b    a164c3ed00
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00447ca0    8b4c2430
                         push               0xffff6000                                    // 0x00447ca4    680060ffff
                         push               0x0                                           // 0x00447ca9    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00447cab    8d54243c
                         push               edx                                           // 0x00447caf    52
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00447cb0    8b542430
                         push               eax                                           // 0x00447cb4    50
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00447cb5    8b44243c
                         push               0x3ea80000                                    // 0x00447cb9    680000a83e
                         push               0x3e7c0000                                    // 0x00447cbe    6800007c3e
                         push               0x3e800000                                    // 0x00447cc3    680000803e
                         push               0x3e2c0000                                    // 0x00447cc8    6800002c3e
                         push               ecx                                           // 0x00447ccd    51
                         push               edx                                           // 0x00447cce    52
                         push               eax                                           // 0x00447ccf    50
                         push               edi                                           // 0x00447cd0    57
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447cd1    e8aaacfcff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516364]        // 0x00447cd6    8b1564c3ed00
                         push               0x42c80000                                    // 0x00447cdc    680000c842
                         push               0x0                                           // 0x00447ce1    6a00
                         {disp8} mov        eax, dword ptr [esp + 0x68]                   // 0x00447ce3    8b442468
                         push               0x0000a000                                    // 0x00447ce7    6800a00000
                         push               0xffff6000                                    // 0x00447cec    680060ffff
                         push               0x0                                           // 0x00447cf1    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                   // 0x00447cf3    8d4c2470
                         push               ecx                                           // 0x00447cf7    51
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00447cf8    8b4c2464
                         push               edx                                           // 0x00447cfc    52
                         push               0x3ed60000                                    // 0x00447cfd    680000d63e
                         push               0x3da00000                                    // 0x00447d02    680000a03d
                         push               0x3ea80000                                    // 0x00447d07    680000a83e
                         push               0x0                                           // 0x00447d0c    6a00
                         push               ebx                                           // 0x00447d0e    53
                         push               ebp                                           // 0x00447d0f    55
                         push               eax                                           // 0x00447d10    50
                         push               ecx                                           // 0x00447d11    51
                         {disp32} mov       dword ptr [esp + 0x00000098], esi             // 0x00447d12    89b42498000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447d19    e862acfcff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516364]        // 0x00447d1e    a164c3ed00
                         add                esp, 0x78                                     // 0x00447d23    83c478
                         push               0x42c80000                                    // 0x00447d26    680000c842
                         push               0x0                                           // 0x00447d2b    6a00
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00447d2d    8b4c242c
                         push               0x0000a000                                    // 0x00447d31    6800a00000
                         push               0xffff6000                                    // 0x00447d36    680060ffff
                         push               0x0                                           // 0x00447d3b    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x00447d3d    8d542434
                         push               edx                                           // 0x00447d41    52
                         push               eax                                           // 0x00447d42    50
                         push               0x3ed60000                                    // 0x00447d43    680000d63e
                         push               0x3e2c0000                                    // 0x00447d48    6800002c3e
                         push               0x3ea80000                                    // 0x00447d4d    680000a83e
                         push               0x3da00000                                    // 0x00447d52    680000a03d
                         push               ebx                                           // 0x00447d57    53
                         push               edi                                           // 0x00447d58    57
                         push               ecx                                           // 0x00447d59    51
                         push               ebp                                           // 0x00447d5a    55
                         {disp8} mov        dword ptr [esp + 0x5c], esi                   // 0x00447d5b    8974245c
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447d5f    e81cacfcff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516364]        // 0x00447d64    a164c3ed00
                         push               0x42c80000                                    // 0x00447d69    680000c842
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x00447d6e    8b4c2458
                         push               0x0                                           // 0x00447d72    6a00
                         push               0x0000a000                                    // 0x00447d74    6800a00000
                         push               0xffff6000                                    // 0x00447d79    680060ffff
                         push               0x0                                           // 0x00447d7e    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x70]                   // 0x00447d80    8d542470
                         push               edx                                           // 0x00447d84    52
                         {disp8} mov        edx, dword ptr [esp + 0x78]                   // 0x00447d85    8b542478
                         push               eax                                           // 0x00447d89    50
                         push               0x3ed60000                                    // 0x00447d8a    680000d63e
                         push               0x3e7c0000                                    // 0x00447d8f    6800007c3e
                         push               0x3ea80000                                    // 0x00447d94    680000a83e
                         push               0x3e2c0000                                    // 0x00447d99    6800002c3e
                         push               ebx                                           // 0x00447d9e    53
                         push               ecx                                           // 0x00447d9f    51
                         push               edx                                           // 0x00447da0    52
                         push               edi                                           // 0x00447da1    57
                         {disp32} mov       dword ptr [esp + 0x00000098], esi             // 0x00447da2    89b42498000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447da9    e8d2abfcff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x516364]        // 0x00447dae    8b0d64c3ed00
                         add                esp, 0x78                                     // 0x00447db4    83c478
                         push               0x42c80000                                    // 0x00447db7    680000c842
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00447dbc    8b542420
                         push               0x0                                           // 0x00447dc0    6a00
                         push               0x0000a000                                    // 0x00447dc2    6800a00000
                         push               0xffff6000                                    // 0x00447dc7    680060ffff
                         push               0x0                                           // 0x00447dcc    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x00447dce    8d442438
                         push               eax                                           // 0x00447dd2    50
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00447dd3    8b442428
                         push               ecx                                           // 0x00447dd7    51
                         push               0x3efe0000                                    // 0x00447dd8    680000fe3e
                         push               0x3da00000                                    // 0x00447ddd    680000a03d
                         push               0x3ed60000                                    // 0x00447de2    680000d63e
                         push               0x0                                           // 0x00447de7    6a00
                         push               edx                                           // 0x00447de9    52
                         push               ebp                                           // 0x00447dea    55
                         push               ebx                                           // 0x00447deb    53
                         push               eax                                           // 0x00447dec    50
                         {disp8} mov        dword ptr [esp + 0x60], esi                   // 0x00447ded    89742460
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447df1    e88aabfcff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516364]        // 0x00447df6    8b1564c3ed00
                         push               0x42c80000                                    // 0x00447dfc    680000c842
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x00447e01    8b44245c
                         push               0x0                                           // 0x00447e05    6a00
                         push               0x0000a000                                    // 0x00447e07    6800a00000
                         push               0xffff6000                                    // 0x00447e0c    680060ffff
                         push               0x0                                           // 0x00447e11    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x74]                   // 0x00447e13    8d4c2474
                         push               ecx                                           // 0x00447e17    51
                         push               edx                                           // 0x00447e18    52
                         push               0x3efe0000                                    // 0x00447e19    680000fe3e
                         push               0x3e2c0000                                    // 0x00447e1e    6800002c3e
                         push               0x3ed60000                                    // 0x00447e23    680000d63e
                         push               0x3da00000                                    // 0x00447e28    680000a03d
                         push               eax                                           // 0x00447e2d    50
                         push               edi                                           // 0x00447e2e    57
                         push               ebx                                           // 0x00447e2f    53
                         push               ebp                                           // 0x00447e30    55
                         {disp32} mov       dword ptr [esp + 0x0000009c], esi             // 0x00447e31    89b4249c000000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447e38    e843abfcff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516364]        // 0x00447e3d    8b1564c3ed00
                         add                esp, 0x78                                     // 0x00447e43    83c478
                         push               0x42c80000                                    // 0x00447e46    680000c842
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00447e4b    8b442420
                         push               0x0                                           // 0x00447e4f    6a00
                         push               0x0000a000                                    // 0x00447e51    6800a00000
                         push               0xffff6000                                    // 0x00447e56    680060ffff
                         push               0x0                                           // 0x00447e5b    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00447e5d    8d4c2438
                         push               ecx                                           // 0x00447e61    51
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00447e62    8b4c2430
                         push               edx                                           // 0x00447e66    52
                         push               0x3efe0000                                    // 0x00447e67    680000fe3e
                         push               0x3e7c0000                                    // 0x00447e6c    6800007c3e
                         push               0x3ed60000                                    // 0x00447e71    680000d63e
                         push               0x3e2c0000                                    // 0x00447e76    6800002c3e
                         push               eax                                           // 0x00447e7b    50
                         push               ecx                                           // 0x00447e7c    51
                         push               ebx                                           // 0x00447e7d    53
                         push               edi                                           // 0x00447e7e    57
                         {disp8} mov        dword ptr [esp + 0x60], esi                   // 0x00447e7f    89742460
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00447e83    e8f8aafcff
                         add                esp, 0x3c                                     // 0x00447e88    83c43c
                         pop                edi                                           // 0x00447e8b    5f
                         pop                esi                                           // 0x00447e8c    5e
                         pop                ebp                                           // 0x00447e8d    5d
                         pop                ebx                                           // 0x00447e8e    5b
                         pop                ecx                                           // 0x00447e8f    59
                         ret                                                              // 0x00447e90    c3
                         nop                                                              // 0x00447e91    90
                         nop                                                              // 0x00447e92    90
                         nop                                                              // 0x00447e93    90
                         nop                                                              // 0x00447e94    90
                         nop                                                              // 0x00447e95    90
                         nop                                                              // 0x00447e96    90
                         nop                                                              // 0x00447e97    90
                         nop                                                              // 0x00447e98    90
                         nop                                                              // 0x00447e99    90
                         nop                                                              // 0x00447e9a    90
                         nop                                                              // 0x00447e9b    90
                         nop                                                              // 0x00447e9c    90
                         nop                                                              // 0x00447e9d    90
                         nop                                                              // 0x00447e9e    90
                         nop                                                              // 0x00447e9f    90
_jmp_addr_0x00447ea0:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00447ea0    8b442420
                         sub                esp, 0x000001c0                               // 0x00447ea4    81ecc0010000
                         push               ebx                                           // 0x00447eaa    53
                         push               ebp                                           // 0x00447eab    55
                         and                eax, 0x06                                     // 0x00447eac    83e006
                         cmp                al, 0x06                                      // 0x00447eaf    3c06
                         push               esi                                           // 0x00447eb1    56
                         push               edi                                           // 0x00447eb2    57
                         {disp32} jne       _jmp_addr_0x00447f87                          // 0x00447eb3    0f85ce000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00447eb9    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00447ebf    e88cd91000
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x00447ec4    8b88a0030000
                         {disp32} mov       eax, dword ptr [ecx + 0x0000482c]             // 0x00447eca    8b812c480000
                         {disp8} mov        edx, dword ptr [eax + 0x38]                   // 0x00447ed0    8b5038
                         add                eax, 0x38                                     // 0x00447ed3    83c038
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00447ed6    89542444
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00447eda    8b4804
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x00447edd    894c2448
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00447ee1    8b5008
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00447ee4    8d442418
                         push               eax                                           // 0x00447ee8    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00447ee9    8d4c2414
                         {disp8} mov        dword ptr [esp + 0x50], edx                   // 0x00447eed    89542450
                         push               ecx                                           // 0x00447ef1    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x00447ef2    8d54242c
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00447ef6    8d4c244c
                         call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z   // 0x00447efa    e891143d00
                         test               eax, eax                                      // 0x00447eff    85c0
                         {disp32} je        _jmp_addr_0x004489c1                          // 0x00447f01    0f84ba0a0000
                         {disp32} mov       ecx, dword ptr [esp + 0x000001e4]             // 0x00447f07    8b8c24e4010000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00447f0e    8b542424
                         {disp32} mov       ebp, dword ptr [esp + 0x000001e8]             // 0x00447f12    8bac24e8010000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00447f19    8b442410
                         add.s              ecx, edx                                      // 0x00447f1d    03ca
                         add.s              ebp, eax                                      // 0x00447f1f    03e8
                         {disp32} mov       dword ptr [esp + 0x000001e4], ecx             // 0x00447f21    898c24e4010000
                         {disp32} mov       dword ptr [esp + 0x000001e8], ebp             // 0x00447f28    89ac24e8010000
                         {disp8} jns        _jmp_addr_0x00447f3a                          // 0x00447f2f    7909
                         xor.s              ebp, ebp                                      // 0x00447f31    33ed
                         {disp32} mov       dword ptr [esp + 0x000001e8], ebp             // 0x00447f33    89ac24e8010000
_jmp_addr_0x00447f3a:    {disp32} mov       esi, dword ptr [esp + 0x000001ec]             // 0x00447f3a    8bb424ec010000
                         xor.s              eax, eax                                      // 0x00447f41    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]          // 0x00447f43    66a15a50e800
                         sub.s              eax, esi                                      // 0x00447f49    2bc6
                         cmp.s              ebp, eax                                      // 0x00447f4b    3be8
                         {disp8} jle        _jmp_addr_0x00447f58                          // 0x00447f4d    7e09
                         mov.s              ebp, eax                                      // 0x00447f4f    8be8
                         {disp32} mov       dword ptr [esp + 0x000001e8], ebp             // 0x00447f51    89ac24e8010000
_jmp_addr_0x00447f58:    test               ecx, ecx                                      // 0x00447f58    85c9
                         {disp8} jge        _jmp_addr_0x00447f6e                          // 0x00447f5a    7d12
                         {disp32} mov       dword ptr [esp + 0x000001e4], 0x00000000      // 0x00447f5c    c78424e401000000000000
                         {disp32} mov       ecx, dword ptr [esp + 0x000001e4]             // 0x00447f67    8b8c24e4010000
_jmp_addr_0x00447f6e:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00447f6e    a15850e800
                         and                eax, 0x0000ffff                               // 0x00447f73    25ffff0000
                         sub.s              eax, esi                                      // 0x00447f78    2bc6
                         cmp.s              ecx, eax                                      // 0x00447f7a    3bc8
                         {disp8} jle        _jmp_addr_0x00447fa7                          // 0x00447f7c    7e29
                         {disp32} mov       dword ptr [esp + 0x000001e4], eax             // 0x00447f7e    898424e4010000
                         {disp8} jmp        _jmp_addr_0x00447fa7                          // 0x00447f85    eb20
_jmp_addr_0x00447f87:    {disp32} mov       esi, dword ptr [esp + 0x000001ec]             // 0x00447f87    8bb424ec010000
                         {disp32} mov       ebp, dword ptr [esp + 0x000001e8]             // 0x00447f8e    8bac24e8010000
                         mov.s              eax, esi                                      // 0x00447f95    8bc6
                         cdq                                                              // 0x00447f97    99
                         sub.s              eax, edx                                      // 0x00447f98    2bc2
                         sar                eax, 1                                        // 0x00447f9a    d1f8
                         neg                eax                                           // 0x00447f9c    f7d8
                         add.s              ebp, eax                                      // 0x00447f9e    03e8
                         {disp32} mov       dword ptr [esp + 0x000001e8], ebp             // 0x00447fa0    89ac24e8010000
_jmp_addr_0x00447fa7:    {disp32} mov       eax, dword ptr [esp + 0x000001f4]             // 0x00447fa7    8b8424f4010000
                         test               eax, eax                                      // 0x00447fae    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x506d08]        // 0x00447fb0    8b1508cdec00
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00447fb6    89542424
                         {disp8} je         _jmp_addr_0x00447fc2                          // 0x00447fba    7406
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00447fbc    89442438
                         {disp8} jmp        _jmp_addr_0x00447fdc                          // 0x00447fc0    eb1a
_jmp_addr_0x00447fc2:    mov                al, -0x01                                     // 0x00447fc2    b0ff
                         {disp8} mov        byte ptr [esp + 0x3c], al                     // 0x00447fc4    8844243c
                         {disp8} mov        byte ptr [esp + 0x3d], al                     // 0x00447fc8    8844243d
                         {disp8} mov        byte ptr [esp + 0x3e], al                     // 0x00447fcc    8844243e
                         {disp8} mov        byte ptr [esp + 0x3f], al                     // 0x00447fd0    8844243f
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00447fd4    8d44243c
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00447fd8    89442438
_jmp_addr_0x00447fdc:    {disp32} mov       ebx, dword ptr [esp + 0x000001f8]             // 0x00447fdc    8b9c24f8010000
                         test               ebx, ebx                                      // 0x00447fe3    85db
                         {disp8} je         _jmp_addr_0x00447fed                          // 0x00447fe5    7406
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00447fe7    895c2430
                         {disp8} jmp        _jmp_addr_0x00447ff3                          // 0x00447feb    eb06
_jmp_addr_0x00447fed:    {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00447fed    89442430
                         mov.s              ebx, eax                                      // 0x00447ff1    8bd8
_jmp_addr_0x00447ff3:    mov                ecx, dword ptr [eax]                          // 0x00447ff3    8b08
                         {disp8} mov        dl, byte ptr [eax + 0x03]                     // 0x00447ff5    8a5003
                         and                ecx, 0xff000000                               // 0x00447ff8    81e1000000ff
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x00447ffe    894c2440
                         mov                cl, 0x04                                      // 0x00448002    b104
                         cmp.s              dl, cl                                        // 0x00448004    3ad1
                         {disp8} jae        _jmp_addr_0x00448011                          // 0x00448006    7309
                         cmp                byte ptr [ebx + 0x03], cl                     // 0x00448008    384b03
                         {disp32} jb        _jmp_addr_0x004489c1                          // 0x0044800b    0f82b0090000
_jmp_addr_0x00448011:    cmp                dword ptr [esp + 0x000001d4], -0x01           // 0x00448011    83bc24d4010000ff
                         {disp32} jne       _jmp_addr_0x00448111                          // 0x00448019    0f85f2000000
                         {disp32} mov       eax, dword ptr [esp + 0x000001d8]             // 0x0044801f    8b8424d8010000
                         test               eax, eax                                      // 0x00448026    85c0
                         {disp8} jne        _jmp_addr_0x0044803f                          // 0x00448028    7515
                         {disp32} mov       edx, dword ptr [esp + 0x000001dc]             // 0x0044802a    8b9424dc010000
                         push               edx                                           // 0x00448031    52
                         {disp32} lea       eax, dword ptr [esp + 0x000000d4]             // 0x00448032    8d8424d4000000
                         push               eax                                           // 0x00448039    50
                         {disp32} jmp       _jmp_addr_0x004480eb                          // 0x0044803a    e9ac000000
_jmp_addr_0x0044803f:    xor.s              eax, eax                                      // 0x0044803f    33c0
                         mov                ecx, 0x00000010                               // 0x00448041    b910000000
                         {disp8} lea        edi, dword ptr [esp + 0x50]                   // 0x00448046    8d7c2450
                         rep stosd                                                        // 0x0044804a    f3ab
                         mov                ecx, 0x00000010                               // 0x0044804c    b910000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000090]             // 0x00448051    8dbc2490000000
                         rep stosd                                                        // 0x00448058    f3ab
                         {disp32} mov       eax, dword ptr [esp + 0x000001d8]             // 0x0044805a    8b8424d8010000
                         mov.s              edx, eax                                      // 0x00448061    8bd0
                         and                edx, 0x00000080                               // 0x00448063    81e280000000
                         or                 edx, 0x100                                    // 0x00448069    81ca00010000
                         shl                edx, 1                                        // 0x0044806f    d1e2
                         and                eax, 0x7f                                     // 0x00448071    83e07f
                         push               0x10                                          // 0x00448074    6a10
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x00448076    8d4c2454
                         or.s               edx, eax                                      // 0x0044807a    0bd0
                         push               ecx                                           // 0x0044807c    51
                         shl                edx, 0x10                                     // 0x0044807d    c1e210
                         push               edx                                           // 0x00448080    52
                         call               _jmp_addr_0x0046ee60                          // 0x00448081    e8da6d0200
                         {disp32} mov       edi, dword ptr [esp + 0x000001e8]             // 0x00448086    8bbc24e8010000
                         mov.s              ecx, edi                                      // 0x0044808d    8bcf
                         and                ecx, 0x00000080                               // 0x0044808f    81e180000000
                         or                 ecx, 0x100                                    // 0x00448095    81c900010000
                         shl                ecx, 1                                        // 0x0044809b    d1e1
                         mov.s              edx, edi                                      // 0x0044809d    8bd7
                         and                edx, 0x7f                                     // 0x0044809f    83e27f
                         push               0x10                                          // 0x004480a2    6a10
                         {disp32} lea       eax, dword ptr [esp + 0x000000a0]             // 0x004480a4    8d8424a0000000
                         or.s               ecx, edx                                      // 0x004480ab    0bca
                         push               eax                                           // 0x004480ad    50
                         shl                ecx, 0x10                                     // 0x004480ae    c1e110
                         push               ecx                                           // 0x004480b1    51
                         call               _jmp_addr_0x0046ee60                          // 0x004480b2    e8a96d0200
                         add                esp, 0x18                                     // 0x004480b7    83c418
                         test               edi, edi                                      // 0x004480ba    85ff
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x004480bc    8d442450
                         push               eax                                           // 0x004480c0    50
                         {disp8} je         _jmp_addr_0x004480e3                          // 0x004480c1    7420
                         {disp32} lea       ecx, dword ptr [esp + 0x00000094]             // 0x004480c3    8d8c2494000000
                         push               ecx                                           // 0x004480ca    51
                         {disp32} lea       edx, dword ptr [esp + 0x000000d8]             // 0x004480cb    8d9424d8000000
                         push               0x009cdfa8                                    // 0x004480d2    68a8df9c00
                         push               edx                                           // 0x004480d7    52
                         call               dword ptr [rdata_bytes + 0x360]               // 0x004480d8    ff1560938a00
                         add                esp, 0x10                                     // 0x004480de    83c410
                         {disp8} jmp        _jmp_addr_0x004480f3                          // 0x004480e1    eb10
_jmp_addr_0x004480e3:    {disp32} lea       ecx, dword ptr [esp + 0x000000d4]             // 0x004480e3    8d8c24d4000000
                         push               ecx                                           // 0x004480ea    51
_jmp_addr_0x004480eb:    call               _wcscpy                                       // 0x004480eb    e8c6de3700
                         add                esp, 0x08                                     // 0x004480f0    83c408
_jmp_addr_0x004480f3:    push               esi                                           // 0x004480f3    56
                         push               0x0                                           // 0x004480f4    6a00
                         {disp32} lea       edx, dword ptr [esp + 0x000000d8]             // 0x004480f6    8d9424d8000000
                         push               0x3f800000                                    // 0x004480fd    680000803f
                         push               edx                                           // 0x00448102    52
                         call               _jmp_addr_0x00447910                          // 0x00448103    e808f8ffff
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00448108    d95c2424
                         add                esp, 0x10                                     // 0x0044810c    83c410
                         {disp8} jmp        _jmp_addr_0x00448130                          // 0x0044810f    eb1f
_jmp_addr_0x00448111:    {disp32} fild      dword ptr [esp + 0x000001ec]                  // 0x00448111    db8424ec010000
                         {disp32} mov       eax, dword ptr [esp + 0x000001dc]             // 0x00448118    8b8424dc010000
                         cmp                eax, 0x03                                     // 0x0044811f    83f803
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00448122    d95c2414
                         {disp8} jne        _jmp_addr_0x00448130                          // 0x00448126    7508
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00448128    c744241400000000
_jmp_addr_0x00448130:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00448130    8b442414
                         {disp32} mov       ecx, dword ptr [esp + 0x000001f0]             // 0x00448134    8b8c24f0010000
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0044813b    8944242c
                         mov.s              eax, ecx                                      // 0x0044813f    8bc1
                         and                eax, 0x00000400                               // 0x00448141    2500040000
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00448146    89442418
                         {disp8} je         _jmp_addr_0x00448163                          // 0x0044814a    7417
                         mov.s              eax, esi                                      // 0x0044814c    8bc6
                         cdq                                                              // 0x0044814e    99
                         sub.s              eax, edx                                      // 0x0044814f    2bc2
                         sar                eax, 1                                        // 0x00448151    d1f8
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00448153    89442410
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x00448157    db442410
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0044815b    d8442414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0044815f    d95c2414
_jmp_addr_0x00448163:    mov.s              eax, ecx                                      // 0x00448163    8bc1
                         and                eax, 0x00000800                               // 0x00448165    2500080000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0044816a    89442410
                         {disp8} je         _jmp_addr_0x00448187                          // 0x0044816e    7417
                         mov.s              eax, esi                                      // 0x00448170    8bc6
                         cdq                                                              // 0x00448172    99
                         sub.s              eax, edx                                      // 0x00448173    2bc2
                         sar                eax, 1                                        // 0x00448175    d1f8
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00448177    8944241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0044817b    db44241c
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0044817f    d8442414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00448183    d95c2414
_jmp_addr_0x00448187:    lea                ecx, dword ptr [esi + esi * 0x1]              // 0x00448187    8d0c36
                         mov                eax, 0x55555556                               // 0x0044818a    b856555555
                         imul               ecx                                           // 0x0044818f    f7e9
                         mov.s              ecx, edx                                      // 0x00448191    8bca
                         shr                ecx, 0x1f                                     // 0x00448193    c1e91f
                         add.s              edx, ecx                                      // 0x00448196    03d1
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00448198    8954241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x0044819c    db44241c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004481a0    d95c2434
                         call               _NeedsBiggerText__Fv                          // 0x004481a4    e817f8fbff
                         test               al, al                                        // 0x004481a9    84c0
                         {disp8} je         _jmp_addr_0x004481d0                          // 0x004481ab    7423
                         {disp32} lea       ecx, dword ptr [esi * 0x4 + 0x00000000]       // 0x004481ad    8d0cb500000000
                         mov                eax, 0x66666667                               // 0x004481b4    b867666666
                         imul               ecx                                           // 0x004481b9    f7e9
                         sar                edx, 1                                        // 0x004481bb    d1fa
                         mov.s              eax, edx                                      // 0x004481bd    8bc2
                         shr                eax, 0x1f                                     // 0x004481bf    c1e81f
                         add.s              edx, eax                                      // 0x004481c2    03d0
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x004481c4    8954241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x004481c8    db44241c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004481cc    d95c2434
_jmp_addr_0x004481d0:    {disp32} mov       edi, dword ptr [esp + 0x000001e0]             // 0x004481d0    8bbc24e0010000
                         test               edi, edi                                      // 0x004481d7    85ff
                         {disp8} je         _jmp_addr_0x00448208                          // 0x004481d9    742d
                         push               edi                                           // 0x004481db    57
                         call               _wcslen                                       // 0x004481dc    e881e23700
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x004481e1    8b4c2438
                         add                esp, 0x04                                     // 0x004481e5    83c404
                         push               ecx                                           // 0x004481e8    51
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x004481e9    8b4c2428
                         push               eax                                           // 0x004481ed    50
                         push               edi                                           // 0x004481ee    57
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x004481ef    e83c8f3e00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x004481f4    d95c241c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x004481f8    d944241c
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x004481fc    d8442414
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00448200    d80578b48a00
                         {disp8} jmp        _jmp_addr_0x00448214                          // 0x00448206    eb0c
_jmp_addr_0x00448208:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x00448208    d9442414
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0044820c    c744241c00000000
_jmp_addr_0x00448214:    {disp32} mov       al, byte ptr [esp + 0x000001f0]               // 0x00448214    8a8424f0010000
                         xor.s              edi, edi                                      // 0x0044821b    33ff
                         test               al, 0x01                                      // 0x0044821d    a801
                         {disp8} je         _jmp_addr_0x00448226                          // 0x0044821f    7405
                         mov                edi, 0x00000001                               // 0x00448221    bf01000000
_jmp_addr_0x00448226:    test               al, 0x02                                      // 0x00448226    a802
                         {disp32} je        _jmp_addr_0x004482bf                          // 0x00448228    0f8491000000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf058]        // 0x0044822e    8b3d5850e800
                         and                edi, 0x0000ffff                               // 0x00448234    81e7ffff0000
                         lea                ecx, dword ptr [edi + edi * 0x1]              // 0x0044823a    8d0c3f
                         mov                eax, 0x55555556                               // 0x0044823d    b856555555
                         imul               ecx                                           // 0x00448242    f7e9
                         {disp32} mov       ecx, dword ptr [esp + 0x000001e4]             // 0x00448244    8b8c24e4010000
                         mov.s              eax, edx                                      // 0x0044824b    8bc2
                         shr                eax, 0x1f                                     // 0x0044824d    c1e81f
                         add.s              edx, eax                                      // 0x00448250    03d0
                         cmp.s              ecx, edx                                      // 0x00448252    3bca
                         {disp8} jle        _jmp_addr_0x00448260                          // 0x00448254    7e0a
                         {disp32} mov       dword ptr [data_bytes + 0x294fe4], 0x00000001 // 0x00448256    c705e4afc50001000000
_jmp_addr_0x00448260:    mov                eax, 0x55555556                               // 0x00448260    b856555555
                         imul               edi                                           // 0x00448265    f7ef
                         mov.s              eax, edx                                      // 0x00448267    8bc2
                         shr                eax, 0x1f                                     // 0x00448269    c1e81f
                         add.s              edx, eax                                      // 0x0044826c    03d0
                         cmp.s              ecx, edx                                      // 0x0044826e    3bca
                         {disp8} jge        _jmp_addr_0x00448280                          // 0x00448270    7d0e
                         fstp               st(0)                                         // 0x00448272    ddd8
                         {disp32} mov       dword ptr [data_bytes + 0x294fe4], 0x00000000 // 0x00448274    c705e4afc50000000000
                         {disp8} jmp        _jmp_addr_0x0044828b                          // 0x0044827e    eb0b
_jmp_addr_0x00448280:    {disp32} mov       eax, dword ptr [data_bytes + 0x294fe4]        // 0x00448280    a1e4afc500
                         test               eax, eax                                      // 0x00448285    85c0
                         {disp8} jne        _jmp_addr_0x004482a8                          // 0x00448287    751f
                         fstp               st(0)                                         // 0x00448289    ddd8
_jmp_addr_0x0044828b:    mov.s              eax, esi                                      // 0x0044828b    8bc6
                         cdq                                                              // 0x0044828d    99
                         sub.s              eax, edx                                      // 0x0044828e    2bc2
                         sar                eax, 1                                        // 0x00448290    d1f8
                         neg                eax                                           // 0x00448292    f7d8
                         xor.s              edi, edi                                      // 0x00448294    33ff
                         add.s              ecx, eax                                      // 0x00448296    03c8
                         {disp32} mov       al, byte ptr [esp + 0x000001f0]               // 0x00448298    8a8424f0010000
                         {disp32} mov       dword ptr [esp + 0x000001e4], ecx             // 0x0044829f    898c24e4010000
                         {disp8} jmp        _jmp_addr_0x004482e5                          // 0x004482a6    eb3d
_jmp_addr_0x004482a8:    mov.s              eax, esi                                      // 0x004482a8    8bc6
                         cdq                                                              // 0x004482aa    99
                         sub.s              eax, edx                                      // 0x004482ab    2bc2
                         sar                eax, 1                                        // 0x004482ad    d1f8
                         add.s              ecx, eax                                      // 0x004482af    03c8
                         mov                edi, 0x00000001                               // 0x004482b1    bf01000000
                         {disp32} mov       dword ptr [esp + 0x000001e4], ecx             // 0x004482b6    898c24e4010000
                         {disp8} jmp        _jmp_addr_0x004482c3                          // 0x004482bd    eb04
_jmp_addr_0x004482bf:    test               edi, edi                                      // 0x004482bf    85ff
                         {disp8} je         _jmp_addr_0x004482e3                          // 0x004482c1    7420
_jmp_addr_0x004482c3:    {disp32} fild      dword ptr [esp + 0x000001e4]                  // 0x004482c3    db8424e4010000
                         fsub               st, st(1)                                     // 0x004482ca    d8e1
                         call               _jmp_addr_0x007a1400                          // 0x004482cc    e82f913500
                         fstp               st(0)                                         // 0x004482d1    ddd8
                         {disp32} mov       dword ptr [esp + 0x000001e4], eax             // 0x004482d3    898424e4010000
                         {disp32} mov       al, byte ptr [esp + 0x000001f0]               // 0x004482da    8a8424f0010000
                         {disp8} jmp        _jmp_addr_0x004482e5                          // 0x004482e1    eb02
_jmp_addr_0x004482e3:    fstp               st(0)                                         // 0x004482e3    ddd8
_jmp_addr_0x004482e5:    test               al, 0x10                                      // 0x004482e5    a810
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000            // 0x004482e7    c744242000000000
                         {disp8} je         _jmp_addr_0x004482f9                          // 0x004482ef    7408
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000001            // 0x004482f1    c744242001000000
_jmp_addr_0x004482f9:    test               al, 0x20                                      // 0x004482f9    a820
                         {disp8} je         _jmp_addr_0x00448301                          // 0x004482fb    7404
                         {disp8} mov        dword ptr [esp + 0x20], edi                   // 0x004482fd    897c2420
_jmp_addr_0x00448301:    {disp32} fild      dword ptr [esp + 0x000001e4]                  // 0x00448301    db8424e4010000
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00448308    8b442420
                         test               eax, eax                                      // 0x0044830c    85c0
                         fld                st(0)                                         // 0x0044830e    d9c0
                         {disp8} je         _jmp_addr_0x0044831c                          // 0x00448310    740a
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00448312    d844241c
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00448316    d80578b48a00
_jmp_addr_0x0044831c:    call               _jmp_addr_0x007a1400                          // 0x0044831c    e8df903500
                         mov.s              edi, eax                                      // 0x00448321    8bf8
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00448323    8b442420
                         test               eax, eax                                      // 0x00448327    85c0
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x00448329    897c2428
                         {disp8} jne        _jmp_addr_0x00448339                          // 0x0044832d    750a
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0044832f    d8442414
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00448333    d80578b48a00
_jmp_addr_0x00448339:    call               _jmp_addr_0x007a1400                          // 0x00448339    e8c2903500
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0044833e    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00448342    8b442418
                         test               eax, eax                                      // 0x00448346    85c0
                         {disp8} je         _jmp_addr_0x00448357                          // 0x00448348    740d
                         mov.s              eax, esi                                      // 0x0044834a    8bc6
                         cdq                                                              // 0x0044834c    99
                         sub.s              eax, edx                                      // 0x0044834d    2bc2
                         sar                eax, 1                                        // 0x0044834f    d1f8
                         add.s              edi, eax                                      // 0x00448351    03f8
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x00448353    897c2428
_jmp_addr_0x00448357:    {disp32} mov       ecx, dword ptr [esp + 0x000001fc]             // 0x00448357    8b8c24fc010000
                         test               ecx, ecx                                      // 0x0044835e    85c9
                         {disp32} je        _jmp_addr_0x00448548                          // 0x00448360    0f84e2010000
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00448366    d944242c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0044836a    d81d98a38a00
                         fnstsw             ax                                            // 0x00448370    dfe0
                         test               ah, 0x40                                      // 0x00448372    f6c440
                         {disp8} jne        _jmp_addr_0x004483a8                          // 0x00448375    7531
                         mov                edx, dword ptr [ebx]                          // 0x00448377    8b13
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00448379    db442428
                         and                edx, 0x00ffffff                               // 0x0044837d    81e2ffffff00
                         shl                ecx, 0x18                                     // 0x00448383    c1e118
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00448386    d844242c
                         add.s              edx, ecx                                      // 0x0044838a    03d1
                         push               edx                                           // 0x0044838c    52
                         lea                eax, dword ptr [esi + ebp * 0x1]              // 0x0044838d    8d042e
                         push               eax                                           // 0x00448390    50
                         call               _jmp_addr_0x007a1400                          // 0x00448391    e86a903500
                         push               eax                                           // 0x00448396    50
                         push               ebp                                           // 0x00448397    55
                         push               edi                                           // 0x00448398    57
                         call               _jmp_addr_0x00447ba0                          // 0x00448399    e802f8ffff
                         {disp32} mov       ecx, dword ptr [esp + 0x00000210]             // 0x0044839e    8b8c2410020000
                         add                esp, 0x14                                     // 0x004483a5    83c414
_jmp_addr_0x004483a8:    mov                eax, 0x55555556                               // 0x004483a8    b856555555
                         imul               ecx                                           // 0x004483ad    f7e9
                         mov.s              ecx, edx                                      // 0x004483af    8bca
                         shr                ecx, 0x1f                                     // 0x004483b1    c1e91f
                         add.s              edx, ecx                                      // 0x004483b4    03d1
                         {disp32} mov       ecx, dword ptr [esp + 0x000001e0]             // 0x004483b6    8b8c24e0010000
                         mov.s              ebx, edx                                      // 0x004483bd    8bda
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x004483bf    8b542438
                         mov                eax, dword ptr [edx]                          // 0x004483c3    8b02
                         shl                ebx, 0x18                                     // 0x004483c5    c1e318
                         and                eax, 0x00ffffff                               // 0x004483c8    25ffffff00
                         add.s              ebx, eax                                      // 0x004483cd    03d8
                         cmp                word ptr [ecx], 0x00                          // 0x004483cf    66833900
                         {disp8} je         _jmp_addr_0x00448426                          // 0x004483d3    7451
                         {disp32} fild      dword ptr [esp + 0x000001ec]                  // 0x004483d5    db8424ec010000
                         lea                edx, dword ptr [esi + ebp * 0x1]              // 0x004483dc    8d142e
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x004483df    89542414
                         push               ebx                                           // 0x004483e3    53
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x004483e4    d8642438
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004483e8    d80db4a38a00
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x004483ee    db442418
                         fsub               st, st(1)                                     // 0x004483f2    d8e1
                         call               _jmp_addr_0x007a1400                          // 0x004483f4    e807903500
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x004483f9    db442424
                         push               eax                                           // 0x004483fd    50
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x004483fe    d8442424
                         call               _jmp_addr_0x007a1400                          // 0x00448402    e8f98f3500
                         {disp32} fild      dword ptr [esp + 0x000001f0]                  // 0x00448407    db8424f0010000
                         push               eax                                           // 0x0044840e    50
                         fadd               st, st(1)                                     // 0x0044840f    d8c1
                         call               _jmp_addr_0x007a1400                          // 0x00448411    e8ea8f3500
                         fstp               st(0)                                         // 0x00448416    ddd8
                         push               eax                                           // 0x00448418    50
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x00448419    8b442430
                         push               eax                                           // 0x0044841d    50
                         call               _jmp_addr_0x00447ba0                          // 0x0044841e    e87df7ffff
                         add                esp, 0x14                                     // 0x00448423    83c414
_jmp_addr_0x00448426:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00448426    8b442418
                         mov.s              ecx, ebx                                      // 0x0044842a    8bcb
                         shr                ecx, 0x18                                     // 0x0044842c    c1e918
                         test               eax, eax                                      // 0x0044842f    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x2078], ecx          // 0x00448431    890d78809c00
                         {disp8} je         _jmp_addr_0x0044846c                          // 0x00448437    7433
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x00448439    8d0476
                         cdq                                                              // 0x0044843c    99
                         and                edx, 0x03                                     // 0x0044843d    83e203
                         add.s              eax, edx                                      // 0x00448440    03c2
                         sar                eax, 2                                        // 0x00448442    c1f802
                         add.s              eax, ebp                                      // 0x00448445    03c5
                         push               ebx                                           // 0x00448447    53
                         push               eax                                           // 0x00448448    50
                         mov.s              eax, esi                                      // 0x00448449    8bc6
                         cdq                                                              // 0x0044844b    99
                         and                edx, 0x03                                     // 0x0044844c    83e203
                         add.s              eax, edx                                      // 0x0044844f    03c2
                         sar                eax, 2                                        // 0x00448451    c1f802
                         add.s              eax, ebp                                      // 0x00448454    03c5
                         push               edi                                           // 0x00448456    57
                         push               eax                                           // 0x00448457    50
                         mov.s              eax, esi                                      // 0x00448458    8bc6
                         cdq                                                              // 0x0044845a    99
                         sub.s              eax, edx                                      // 0x0044845b    2bc2
                         sar                eax, 1                                        // 0x0044845d    d1f8
                         mov.s              edx, edi                                      // 0x0044845f    8bd7
                         sub.s              edx, eax                                      // 0x00448461    2bd0
                         push               edx                                           // 0x00448463    52
                         call               _jmp_addr_0x00447ba0                          // 0x00448464    e837f7ffff
                         add                esp, 0x14                                     // 0x00448469    83c414
_jmp_addr_0x0044846c:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0044846c    8b442410
                         test               eax, eax                                      // 0x00448470    85c0
                         {disp8} je         _jmp_addr_0x004484c3                          // 0x00448472    744f
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00448474    db442428
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x00448478    8d0476
                         cdq                                                              // 0x0044847b    99
                         and                edx, 0x03                                     // 0x0044847c    83e203
                         add.s              eax, edx                                      // 0x0044847f    03c2
                         sar                eax, 2                                        // 0x00448481    c1f802
                         add.s              eax, ebp                                      // 0x00448484    03c5
                         push               ebx                                           // 0x00448486    53
                         push               eax                                           // 0x00448487    50
                         mov.s              eax, esi                                      // 0x00448488    8bc6
                         cdq                                                              // 0x0044848a    99
                         sub.s              eax, edx                                      // 0x0044848b    2bc2
                         sar                eax, 1                                        // 0x0044848d    d1f8
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0044848f    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x00448493    db442424
                         fadd               st, st(1)                                     // 0x00448497    d8c1
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x00448499    d8442434
                         call               _jmp_addr_0x007a1400                          // 0x0044849d    e85e8f3500
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x004484a2    d8442434
                         push               eax                                           // 0x004484a6    50
                         mov.s              eax, esi                                      // 0x004484a7    8bc6
                         cdq                                                              // 0x004484a9    99
                         and                edx, 0x03                                     // 0x004484aa    83e203
                         add.s              eax, edx                                      // 0x004484ad    03c2
                         sar                eax, 2                                        // 0x004484af    c1f802
                         add.s              eax, ebp                                      // 0x004484b2    03c5
                         push               eax                                           // 0x004484b4    50
                         call               _jmp_addr_0x007a1400                          // 0x004484b5    e8468f3500
                         push               eax                                           // 0x004484ba    50
                         call               _jmp_addr_0x00447ba0                          // 0x004484bb    e8e0f6ffff
                         add                esp, 0x14                                     // 0x004484c0    83c414
_jmp_addr_0x004484c3:    {disp32} mov       eax, dword ptr [esp + 0x000001f0]             // 0x004484c3    8b8424f0010000
                         test               ah, 0x01                                      // 0x004484ca    f6c401
                         {disp8} je         _jmp_addr_0x00448502                          // 0x004484cd    7433
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x004484cf    8d0476
                         cdq                                                              // 0x004484d2    99
                         and                edx, 0x03                                     // 0x004484d3    83e203
                         add.s              eax, edx                                      // 0x004484d6    03c2
                         sar                eax, 2                                        // 0x004484d8    c1f802
                         add.s              eax, edi                                      // 0x004484db    03c7
                         push               ebx                                           // 0x004484dd    53
                         push               ebp                                           // 0x004484de    55
                         push               eax                                           // 0x004484df    50
                         mov.s              eax, esi                                      // 0x004484e0    8bc6
                         cdq                                                              // 0x004484e2    99
                         sub.s              eax, edx                                      // 0x004484e3    2bc2
                         sar                eax, 1                                        // 0x004484e5    d1f8
                         mov.s              ecx, ebp                                      // 0x004484e7    8bcd
                         sub.s              ecx, eax                                      // 0x004484e9    2bc8
                         mov.s              eax, esi                                      // 0x004484eb    8bc6
                         cdq                                                              // 0x004484ed    99
                         and                edx, 0x03                                     // 0x004484ee    83e203
                         add.s              eax, edx                                      // 0x004484f1    03c2
                         sar                eax, 2                                        // 0x004484f3    c1f802
                         push               ecx                                           // 0x004484f6    51
                         add.s              eax, edi                                      // 0x004484f7    03c7
                         push               eax                                           // 0x004484f9    50
                         call               _jmp_addr_0x00447ba0                          // 0x004484fa    e8a1f6ffff
                         add                esp, 0x14                                     // 0x004484ff    83c414
_jmp_addr_0x00448502:    {disp32} mov       eax, dword ptr [esp + 0x000001f0]             // 0x00448502    8b8424f0010000
                         test               ah, 0x02                                      // 0x00448509    f6c402
                         {disp8} je         _jmp_addr_0x00448544                          // 0x0044850c    7436
                         mov.s              eax, esi                                      // 0x0044850e    8bc6
                         cdq                                                              // 0x00448510    99
                         sub.s              eax, edx                                      // 0x00448511    2bc2
                         sar                eax, 1                                        // 0x00448513    d1f8
                         add.s              eax, ebp                                      // 0x00448515    03c5
                         add.s              eax, esi                                      // 0x00448517    03c6
                         push               ebx                                           // 0x00448519    53
                         push               eax                                           // 0x0044851a    50
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x0044851b    8d0476
                         cdq                                                              // 0x0044851e    99
                         and                edx, 0x03                                     // 0x0044851f    83e203
                         add.s              eax, edx                                      // 0x00448522    03c2
                         sar                eax, 2                                        // 0x00448524    c1f802
                         add.s              eax, edi                                      // 0x00448527    03c7
                         push               eax                                           // 0x00448529    50
                         lea                edx, dword ptr [esi + ebp * 0x1]              // 0x0044852a    8d142e
                         push               edx                                           // 0x0044852d    52
                         mov.s              eax, esi                                      // 0x0044852e    8bc6
                         cdq                                                              // 0x00448530    99
                         and                edx, 0x03                                     // 0x00448531    83e203
                         add.s              eax, edx                                      // 0x00448534    03c2
                         sar                eax, 2                                        // 0x00448536    c1f802
                         add.s              eax, edi                                      // 0x00448539    03c7
                         push               eax                                           // 0x0044853b    50
                         call               _jmp_addr_0x00447ba0                          // 0x0044853c    e85ff6ffff
                         add                esp, 0x14                                     // 0x00448541    83c414
_jmp_addr_0x00448544:    {disp8} mov        ebx, dword ptr [esp + 0x30]                   // 0x00448544    8b5c2430
_jmp_addr_0x00448548:    {disp32} mov       ecx, dword ptr [esp + 0x000001d4]             // 0x00448548    8b8c24d4010000
                         cmp                ecx, -0x01                                    // 0x0044854f    83f9ff
                         {disp8} jne        _jmp_addr_0x00448582                          // 0x00448552    752e
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00448554    db442428
                         xor.s              eax, eax                                      // 0x00448558    33c0
                         {disp8} mov        al, byte ptr [ebx + 0x03]                     // 0x0044855a    8a4303
                         lea                ecx, dword ptr [esi + ebp * 0x1]              // 0x0044855d    8d0c2e
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x00448560    d844242c
                         push               eax                                           // 0x00448564    50
                         push               ecx                                           // 0x00448565    51
                         call               _jmp_addr_0x007a1400                          // 0x00448566    e8958e3500
                         push               eax                                           // 0x0044856b    50
                         push               ebp                                           // 0x0044856c    55
                         push               edi                                           // 0x0044856d    57
                         {disp32} lea       edx, dword ptr [esp + 0x000000e4]             // 0x0044856e    8d9424e4000000
                         push               0x3f800000                                    // 0x00448575    680000803f
                         push               edx                                           // 0x0044857a    52
                         call               _jmp_addr_0x00447990                          // 0x0044857b    e810f4ffff
                         {disp8} jmp        _jmp_addr_0x004485a3                          // 0x00448580    eb21
_jmp_addr_0x00448582:    {disp32} mov       eax, dword ptr [esp + 0x000001dc]             // 0x00448582    8b8424dc010000
                         cmp                eax, 0x03                                     // 0x00448589    83f803
                         {disp8} je         _jmp_addr_0x004485a6                          // 0x0044858c    7418
                         mov                edx, dword ptr [ebx]                          // 0x0044858e    8b13
                         push               edx                                           // 0x00448590    52
                         push               esi                                           // 0x00448591    56
                         push               ebp                                           // 0x00448592    55
                         push               edi                                           // 0x00448593    57
                         push               ecx                                           // 0x00448594    51
                         push               eax                                           // 0x00448595    50
                         {disp32} mov       eax, dword ptr [esp + 0x000001f0]             // 0x00448596    8b8424f0010000
                         push               eax                                           // 0x0044859d    50
                         call               _jmp_addr_0x00447450                          // 0x0044859e    e8adeeffff
_jmp_addr_0x004485a3:    add                esp, 0x1c                                     // 0x004485a3    83c41c
_jmp_addr_0x004485a6:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x004485a6    8b442418
                         mov.s              ecx, esi                                      // 0x004485aa    8bce
                         neg                ecx                                           // 0x004485ac    f7d9
                         xor.s              edx, edx                                      // 0x004485ae    33d2
                         test               eax, eax                                      // 0x004485b0    85c0
                         {disp8} mov        dl, byte ptr [ebx + 0x03]                     // 0x004485b2    8a5303
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x004485b5    894c2430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004485b9    db442430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e668]             // 0x004485bd    d80d68768c00
                         {disp32} mov       dword ptr [data_bytes + 0x2078], edx          // 0x004485c3    891578809c00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004485c9    d95c2414
                         {disp32} je        _jmp_addr_0x00448673                          // 0x004485cd    0f84a0000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516368]        // 0x004485d3    a168c3ed00
                         push               0x42c80000                                    // 0x004485d8    680000c842
                         push               0x0                                           // 0x004485dd    6a00
                         push               0x0000a000                                    // 0x004485df    6800a00000
                         push               0xffff6000                                    // 0x004485e4    680060ffff
                         push               0x0                                           // 0x004485e9    6a00
                         push               ebx                                           // 0x004485eb    53
                         push               eax                                           // 0x004485ec    50
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x004485ed    8d0476
                         cdq                                                              // 0x004485f0    99
                         and                edx, 0x03                                     // 0x004485f1    83e203
                         add.s              eax, edx                                      // 0x004485f4    03c2
                         sar                eax, 2                                        // 0x004485f6    c1f802
                         add.s              eax, ebp                                      // 0x004485f9    03c5
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x004485fb    89442434
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x004485ff    db442434
                         push               0x3e7c0000                                    // 0x00448603    6800007c3e
                         push               0x3f5f0000                                    // 0x00448608    6800005f3f
                         push               0x3e040000                                    // 0x0044860d    680000043e
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x00448612    d864243c
                         push               0x3f410000                                    // 0x00448616    680000413f
                         call               _jmp_addr_0x007a1400                          // 0x0044861b    e8e08d3500
                         {disp8} fild       dword ptr [esp + 0x54]                        // 0x00448620    db442454
                         push               eax                                           // 0x00448624    50
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x00448625    d8642444
                         call               _jmp_addr_0x007a1400                          // 0x00448629    e8d28d3500
                         push               eax                                           // 0x0044862e    50
                         mov.s              eax, esi                                      // 0x0044862f    8bc6
                         cdq                                                              // 0x00448631    99
                         and                edx, 0x03                                     // 0x00448632    83e203
                         add.s              eax, edx                                      // 0x00448635    03c2
                         sar                eax, 2                                        // 0x00448637    c1f802
                         add.s              eax, ebp                                      // 0x0044863a    03c5
                         {disp8} mov        dword ptr [esp + 0x4c], eax                   // 0x0044863c    8944244c
                         {disp8} fild       dword ptr [esp + 0x4c]                        // 0x00448640    db44244c
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x00448644    d8442448
                         call               _jmp_addr_0x007a1400                          // 0x00448648    e8b38d3500
                         push               eax                                           // 0x0044864d    50
                         mov.s              eax, esi                                      // 0x0044864e    8bc6
                         cdq                                                              // 0x00448650    99
                         sub.s              eax, edx                                      // 0x00448651    2bc2
                         sar                eax, 1                                        // 0x00448653    d1f8
                         mov.s              ecx, edi                                      // 0x00448655    8bcf
                         sub.s              ecx, eax                                      // 0x00448657    2bc8
                         {disp8} mov        dword ptr [esp + 0x50], ecx                   // 0x00448659    894c2450
                         {disp8} fild       dword ptr [esp + 0x50]                        // 0x0044865d    db442450
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x00448661    d844244c
                         call               _jmp_addr_0x007a1400                          // 0x00448665    e8968d3500
                         push               eax                                           // 0x0044866a    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0044866b    e810a3fcff
                         add                esp, 0x3c                                     // 0x00448670    83c43c
_jmp_addr_0x00448673:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00448673    8b442410
                         test               eax, eax                                      // 0x00448677    85c0
                         {disp32} je        _jmp_addr_0x00448726                          // 0x00448679    0f84a7000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516368]        // 0x0044867f    8b1568c3ed00
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x00448685    db442428
                         push               0x42c80000                                    // 0x00448689    680000c842
                         push               0x0                                           // 0x0044868e    6a00
                         push               0x0000a000                                    // 0x00448690    6800a00000
                         push               0xffff6000                                    // 0x00448695    680060ffff
                         push               0x0                                           // 0x0044869a    6a00
                         push               ebx                                           // 0x0044869c    53
                         push               edx                                           // 0x0044869d    52
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x0044869e    8d0476
                         cdq                                                              // 0x004486a1    99
                         and                edx, 0x03                                     // 0x004486a2    83e203
                         add.s              eax, edx                                      // 0x004486a5    03c2
                         sar                eax, 2                                        // 0x004486a7    c1f802
                         add.s              eax, ebp                                      // 0x004486aa    03c5
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x004486ac    8944242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x004486b0    db44242c
                         push               0x3df80000                                    // 0x004486b4    680000f83d
                         push               0x3f7f0000                                    // 0x004486b9    6800007f3f
                         push               0x3b800000                                    // 0x004486be    680000803b
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x004486c3    d864243c
                         push               0x3f610000                                    // 0x004486c7    680000613f
                         call               _jmp_addr_0x007a1400                          // 0x004486cc    e82f8d3500
                         fld                st(0)                                         // 0x004486d1    d9c0
                         {disp8} fsub       dword ptr [esp + 0x40]                        // 0x004486d3    d8642440
                         push               eax                                           // 0x004486d7    50
                         mov.s              eax, esi                                      // 0x004486d8    8bc6
                         cdq                                                              // 0x004486da    99
                         sub.s              eax, edx                                      // 0x004486db    2bc2
                         sar                eax, 1                                        // 0x004486dd    d1f8
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x004486df    89442440
                         {disp8} fiadd      dword ptr [esp + 0x40]                        // 0x004486e3    da442440
                         {disp8} fadd       dword ptr [esp + 0x5c]                        // 0x004486e7    d844245c
                         call               _jmp_addr_0x007a1400                          // 0x004486eb    e8108d3500
                         push               eax                                           // 0x004486f0    50
                         mov.s              eax, esi                                      // 0x004486f1    8bc6
                         cdq                                                              // 0x004486f3    99
                         and                edx, 0x03                                     // 0x004486f4    83e203
                         add.s              eax, edx                                      // 0x004486f7    03c2
                         sar                eax, 2                                        // 0x004486f9    c1f802
                         add.s              eax, ebp                                      // 0x004486fc    03c5
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x004486fe    89442444
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00448702    db442444
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x00448706    d8442448
                         call               _jmp_addr_0x007a1400                          // 0x0044870a    e8f18c3500
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x0044870f    d8442448
                         push               eax                                           // 0x00448713    50
                         {disp8} fadd       dword ptr [esp + 0x64]                        // 0x00448714    d8442464
                         call               _jmp_addr_0x007a1400                          // 0x00448718    e8e38c3500
                         push               eax                                           // 0x0044871d    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0044871e    e85da2fcff
                         add                esp, 0x3c                                     // 0x00448723    83c43c
_jmp_addr_0x00448726:    {disp32} mov       eax, dword ptr [esp + 0x000001f0]             // 0x00448726    8b8424f0010000
                         test               ah, 0x01                                      // 0x0044872d    f6c401
                         {disp32} je        _jmp_addr_0x004487db                          // 0x00448730    0f84a5000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x516368]        // 0x00448736    a168c3ed00
                         {disp32} fild      dword ptr [esp + 0x000001e8]                  // 0x0044873b    db8424e8010000
                         push               0x42c80000                                    // 0x00448742    680000c842
                         push               0x0                                           // 0x00448747    6a00
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00448749    d864241c
                         push               0x0000a000                                    // 0x0044874d    6800a00000
                         push               0xffff6000                                    // 0x00448752    680060ffff
                         push               0x0                                           // 0x00448757    6a00
                         push               ebx                                           // 0x00448759    53
                         push               eax                                           // 0x0044875a    50
                         push               0x3df80000                                    // 0x0044875b    680000f83d
                         push               0x3f5f0000                                    // 0x00448760    6800005f3f
                         push               0x3b800000                                    // 0x00448765    680000803b
                         push               0x3f410000                                    // 0x0044876a    680000413f
                         call               _jmp_addr_0x007a1400                          // 0x0044876f    e88c8c3500
                         {disp8} fild       dword ptr [esp + 0x54]                        // 0x00448774    db442454
                         push               eax                                           // 0x00448778    50
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x00448779    8d0476
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x0044877c    d8642444
                         cdq                                                              // 0x00448780    99
                         and                edx, 0x03                                     // 0x00448781    83e203
                         add.s              eax, edx                                      // 0x00448784    03c2
                         sar                eax, 2                                        // 0x00448786    c1f802
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00448789    89442440
                         {disp8} fiadd      dword ptr [esp + 0x40]                        // 0x0044878d    da442440
                         call               _jmp_addr_0x007a1400                          // 0x00448791    e86a8c3500
                         push               eax                                           // 0x00448796    50
                         mov.s              eax, esi                                      // 0x00448797    8bc6
                         cdq                                                              // 0x00448799    99
                         sub.s              eax, edx                                      // 0x0044879a    2bc2
                         sar                eax, 1                                        // 0x0044879c    d1f8
                         mov.s              ecx, ebp                                      // 0x0044879e    8bcd
                         sub.s              ecx, eax                                      // 0x004487a0    2bc8
                         {disp8} mov        dword ptr [esp + 0x44], ecx                   // 0x004487a2    894c2444
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x004487a6    db442444
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x004487aa    d8442448
                         call               _jmp_addr_0x007a1400                          // 0x004487ae    e84d8c3500
                         push               eax                                           // 0x004487b3    50
                         mov.s              eax, esi                                      // 0x004487b4    8bc6
                         cdq                                                              // 0x004487b6    99
                         and                edx, 0x03                                     // 0x004487b7    83e203
                         add.s              eax, edx                                      // 0x004487ba    03c2
                         sar                eax, 2                                        // 0x004487bc    c1f802
                         add.s              eax, edi                                      // 0x004487bf    03c7
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x004487c1    89442448
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x004487c5    db442448
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x004487c9    d844244c
                         call               _jmp_addr_0x007a1400                          // 0x004487cd    e82e8c3500
                         push               eax                                           // 0x004487d2    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x004487d3    e8a8a1fcff
                         add                esp, 0x3c                                     // 0x004487d8    83c43c
_jmp_addr_0x004487db:    {disp32} mov       eax, dword ptr [esp + 0x000001f0]             // 0x004487db    8b8424f0010000
                         test               ah, 0x02                                      // 0x004487e2    f6c402
                         {disp32} je        _jmp_addr_0x00448895                          // 0x004487e5    0f84aa000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x516368]        // 0x004487eb    8b1568c3ed00
                         push               0x42c80000                                    // 0x004487f1    680000c842
                         push               0x0                                           // 0x004487f6    6a00
                         push               0x0000a000                                    // 0x004487f8    6800a00000
                         push               0xffff6000                                    // 0x004487fd    680060ffff
                         push               0x0                                           // 0x00448802    6a00
                         push               ebx                                           // 0x00448804    53
                         push               edx                                           // 0x00448805    52
                         mov.s              eax, esi                                      // 0x00448806    8bc6
                         cdq                                                              // 0x00448808    99
                         sub.s              eax, edx                                      // 0x00448809    2bc2
                         sar                eax, 1                                        // 0x0044880b    d1f8
                         add.s              eax, ebp                                      // 0x0044880d    03c5
                         add.s              eax, esi                                      // 0x0044880f    03c6
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00448811    8944242c
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x00448815    db44242c
                         push               0x3e7c0000                                    // 0x00448819    6800007c3e
                         push               0x3f7f0000                                    // 0x0044881e    6800007f3f
                         push               0x3e040000                                    // 0x00448823    680000043e
                         {disp8} fsub       dword ptr [esp + 0x3c]                        // 0x00448828    d864243c
                         push               0x3f610000                                    // 0x0044882c    680000613f
                         call               _jmp_addr_0x007a1400                          // 0x00448831    e8ca8b3500
                         {disp8} fild       dword ptr [esp + 0x54]                        // 0x00448836    db442454
                         push               eax                                           // 0x0044883a    50
                         lea                eax, dword ptr [esi + esi * 0x2]              // 0x0044883b    8d0476
                         {disp8} fsub       dword ptr [esp + 0x44]                        // 0x0044883e    d8642444
                         cdq                                                              // 0x00448842    99
                         and                edx, 0x03                                     // 0x00448843    83e203
                         add.s              eax, edx                                      // 0x00448846    03c2
                         sar                eax, 2                                        // 0x00448848    c1f802
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x0044884b    89442440
                         {disp8} fiadd      dword ptr [esp + 0x40]                        // 0x0044884f    da442440
                         call               _jmp_addr_0x007a1400                          // 0x00448853    e8a88b3500
                         push               eax                                           // 0x00448858    50
                         lea                eax, dword ptr [esi + ebp * 0x1]              // 0x00448859    8d042e
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0044885c    89442444
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00448860    db442444
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x00448864    d8442448
                         call               _jmp_addr_0x007a1400                          // 0x00448868    e8938b3500
                         push               eax                                           // 0x0044886d    50
                         mov.s              eax, esi                                      // 0x0044886e    8bc6
                         cdq                                                              // 0x00448870    99
                         and                edx, 0x03                                     // 0x00448871    83e203
                         add.s              eax, edx                                      // 0x00448874    03c2
                         sar                eax, 2                                        // 0x00448876    c1f802
                         add.s              eax, edi                                      // 0x00448879    03c7
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0044887b    89442448
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x0044887f    db442448
                         {disp8} fadd       dword ptr [esp + 0x4c]                        // 0x00448883    d844244c
                         call               _jmp_addr_0x007a1400                          // 0x00448887    e8748b3500
                         push               eax                                           // 0x0044888c    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0044888d    e8eea0fcff
                         add                esp, 0x3c                                     // 0x00448892    83c43c
_jmp_addr_0x00448895:    {disp32} mov       esi, dword ptr [esp + 0x000001e0]             // 0x00448895    8bb424e0010000
                         test               esi, esi                                      // 0x0044889c    85f6
                         {disp32} je        _jmp_addr_0x004489c1                          // 0x0044889e    0f841d010000
                         {disp32} fild      dword ptr [esp + 0x000001ec]                  // 0x004488a4    db8424ec010000
                         {disp8} mov        edi, dword ptr [esp + 0x34]                   // 0x004488ab    8b7c2434
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004488af    8b442420
                         push               0x45800000                                    // 0x004488b3    6800008045
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x004488b8    d8642438
                         push               0x0                                           // 0x004488bc    6a00
                         push               0x0                                           // 0x004488be    6a00
                         push               0x0                                           // 0x004488c0    6a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004488c2    d80db4a38a00
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x004488c8    8d4c2450
                         push               ecx                                           // 0x004488cc    51
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x004488cd    d95c242c
                         push               edi                                           // 0x004488d1    57
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x004488d2    d905e039e800
                         push               ecx                                           // 0x004488d8    51
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x004488d9    d80d30b28a00
                         {disp8} lea        edx, dword ptr [ebp + -0x01]                  // 0x004488df    8d55ff
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x004488e2    8954242c
                         dec                eax                                           // 0x004488e6    48
                         fstp               dword ptr [esp]                               // 0x004488e7    d91c24
                         push               ecx                                           // 0x004488ea    51
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004488eb    db442430
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x004488ef    89442430
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x004488f3    d8442438
                         fstp               dword ptr [esp]                               // 0x004488f7    d91c24
                         push               ecx                                           // 0x004488fa    51
                         {disp8} fild       dword ptr [esp + 0x34]                        // 0x004488fb    db442434
                         fstp               dword ptr [esp]                               // 0x004488ff    d91c24
                         push               esi                                           // 0x00448902    56
                         call               _wcslen                                       // 0x00448903    e85adb3700
                         {disp8} mov        ebx, dword ptr [esp + 0x4c]                   // 0x00448908    8b5c244c
                         add                esp, 0x04                                     // 0x0044890c    83c404
                         push               eax                                           // 0x0044890f    50
                         push               esi                                           // 0x00448910    56
                         mov.s              ecx, ebx                                      // 0x00448911    8bcb
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x00448913    e848a33e00
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x00448918    d905e039e800
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x0044891e    d80d30b28a00
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00448924    8b542420
                         push               0x45800000                                    // 0x00448928    6800008045
                         push               0x0                                           // 0x0044892d    6a00
                         push               0x0                                           // 0x0044892f    6a00
                         push               0x0                                           // 0x00448931    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x00448933    8d4c2450
                         push               ecx                                           // 0x00448937    51
                         push               edi                                           // 0x00448938    57
                         push               ecx                                           // 0x00448939    51
                         fstp               dword ptr [esp]                               // 0x0044893a    d91c24
                         inc                ebp                                           // 0x0044893d    45
                         {disp8} mov        dword ptr [esp + 0x40], ebp                   // 0x0044893e    896c2440
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x00448942    db442440
                         push               ecx                                           // 0x00448946    51
                         inc                edx                                           // 0x00448947    42
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x00448948    d8442438
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x0044894c    89542444
                         fstp               dword ptr [esp]                               // 0x00448950    d91c24
                         push               ecx                                           // 0x00448953    51
                         {disp8} fild       dword ptr [esp + 0x48]                        // 0x00448954    db442448
                         fstp               dword ptr [esp]                               // 0x00448958    d91c24
                         push               esi                                           // 0x0044895b    56
                         call               _wcslen                                       // 0x0044895c    e801db3700
                         add                esp, 0x04                                     // 0x00448961    83c404
                         push               eax                                           // 0x00448964    50
                         push               esi                                           // 0x00448965    56
                         mov.s              ecx, ebx                                      // 0x00448966    8bcb
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x00448968    e8f3a23e00
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0044896d    d905e039e800
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x00448973    8b442438
                         {disp32} fmul      dword ptr [__real@3f8ccccd]                   // 0x00448977    d80d30b28a00
                         mov                ecx, dword ptr [eax]                          // 0x0044897d    8b08
                         push               0x45800000                                    // 0x0044897f    6800008045
                         push               0x0                                           // 0x00448984    6a00
                         push               0x0                                           // 0x00448986    6a00
                         push               0x0                                           // 0x00448988    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0044898a    8d542434
                         push               edx                                           // 0x0044898e    52
                         push               edi                                           // 0x0044898f    57
                         push               ecx                                           // 0x00448990    51
                         fstp               dword ptr [esp]                               // 0x00448991    d91c24
                         {disp8} mov        dword ptr [esp + 0x40], ecx                   // 0x00448994    894c2440
                         {disp32} fild      dword ptr [esp + 0x00000204]                  // 0x00448998    db842404020000
                         push               ecx                                           // 0x0044899f    51
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x004489a0    d8442438
                         fstp               dword ptr [esp]                               // 0x004489a4    d91c24
                         push               ecx                                           // 0x004489a7    51
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x004489a8    db442444
                         fstp               dword ptr [esp]                               // 0x004489ac    d91c24
                         push               esi                                           // 0x004489af    56
                         call               _wcslen                                       // 0x004489b0    e8adda3700
                         add                esp, 0x04                                     // 0x004489b5    83c404
                         push               eax                                           // 0x004489b8    50
                         push               esi                                           // 0x004489b9    56
                         mov.s              ecx, ebx                                      // 0x004489ba    8bcb
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x004489bc    e89fa23e00
_jmp_addr_0x004489c1:    pop                edi                                           // 0x004489c1    5f
                         pop                esi                                           // 0x004489c2    5e
                         pop                ebp                                           // 0x004489c3    5d
                         pop                ebx                                           // 0x004489c4    5b
                         add                esp, 0x000001c0                               // 0x004489c5    81c4c0010000
                         ret                                                              // 0x004489cb    c3
                         nop                                                              // 0x004489cc    90
                         nop                                                              // 0x004489cd    90
                         nop                                                              // 0x004489ce    90
                         nop                                                              // 0x004489cf    90
_jmp_addr_0x004489d0:    push               esi                                           // 0x004489d0    56
                         push               0x00000183                                    // 0x004489d1    6883010000
                         push               0x009cdfb8                                    // 0x004489d6    68b8df9c00
                         push               0x00000140                                    // 0x004489db    6840010000
                         call               ___nw__FUl                                    // 0x004489e0    e8ab2d3900
                         add                esp, 0x0c                                     // 0x004489e5    83c40c
                         test               eax, eax                                      // 0x004489e8    85c0
                         {disp8} je         _jmp_addr_0x004489f7                          // 0x004489ea    740b
                         mov.s              ecx, eax                                      // 0x004489ec    8bc8
                         call               _jmp_addr_0x00448be0                          // 0x004489ee    e8ed010000
                         mov.s              esi, eax                                      // 0x004489f3    8bf0
                         {disp8} jmp        _jmp_addr_0x004489f9                          // 0x004489f5    eb02
_jmp_addr_0x004489f7:    xor.s              esi, esi                                      // 0x004489f7    33f6
_jmp_addr_0x004489f9:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004489f9    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x004489fd    8b4c240c
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00448a01    8b542410
                         mov                dword ptr [esi], eax                          // 0x00448a05    8906
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x00448a07    89460c
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00448a0a    8b44241c
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00448a0e    894e04
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00448a11    8b4c2414
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00448a15    895608
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00448a18    8b542418
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x00448a1c    89461c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00448a1f    8b44242c
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x00448a23    894e14
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00448a26    8b4c2424
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x00448a2a    895618
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00448a2d    8b542428
                         {disp32} mov       dword ptr [esi + 0x00000128], eax             // 0x00448a31    898628010000
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00448a37    8b442420
                         test               eax, eax                                      // 0x00448a3b    85c0
                         {disp32} mov       dword ptr [esi + 0x00000120], ecx             // 0x00448a3d    898e20010000
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00448a43    8b4c2430
                         {disp32} mov       dword ptr [esi + 0x00000124], edx             // 0x00448a47    899624010000
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00448a4d    8b54243c
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000000            // 0x00448a51    c7461000000000
                         {disp32} mov       dword ptr [esi + 0x0000012c], ecx             // 0x00448a58    898e2c010000
                         {disp32} mov       dword ptr [esi + 0x00000138], edx             // 0x00448a5e    899638010000
                         {disp8} je         _jmp_addr_0x00448a75                          // 0x00448a64    740f
                         push               eax                                           // 0x00448a66    50
                         {disp8} lea        eax, dword ptr [esi + 0x20]                   // 0x00448a67    8d4620
                         push               eax                                           // 0x00448a6a    50
                         call               _wcscpy                                       // 0x00448a6b    e846d53700
                         add                esp, 0x08                                     // 0x00448a70    83c408
                         {disp8} jmp        _jmp_addr_0x00448a7b                          // 0x00448a73    eb06
_jmp_addr_0x00448a75:    {disp8} mov        word ptr [esi + 0x20], 0x0000                 // 0x00448a75    66c746200000
_jmp_addr_0x00448a7b:    {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00448a7b    8b4c2434
                         test               ecx, ecx                                      // 0x00448a7f    85c9
                         {disp8} jne        _jmp_addr_0x00448a99                          // 0x00448a81    7516
                         mov                al, -0x01                                     // 0x00448a83    b0ff
                         {disp8} mov        byte ptr [esp + 0x08], al                     // 0x00448a85    88442408
                         {disp8} mov        byte ptr [esp + 0x09], al                     // 0x00448a89    88442409
                         {disp8} mov        byte ptr [esp + 0x0a], al                     // 0x00448a8d    8844240a
                         {disp8} mov        byte ptr [esp + 0x0b], al                     // 0x00448a91    8844240b
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00448a95    8d4c2408
_jmp_addr_0x00448a99:    mov                ecx, dword ptr [ecx]                          // 0x00448a99    8b09
                         {disp32} lea       eax, dword ptr [esi + 0x00000130]             // 0x00448a9b    8d8630010000
                         mov                dword ptr [eax], ecx                          // 0x00448aa1    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x00448aa3    8b4c2438
                         test               ecx, ecx                                      // 0x00448aa7    85c9
                         {disp8} je         _jmp_addr_0x00448aad                          // 0x00448aa9    7402
                         mov.s              eax, ecx                                      // 0x00448aab    8bc1
_jmp_addr_0x00448aad:    mov                edx, dword ptr [eax]                          // 0x00448aad    8b10
                         {disp32} mov       dword ptr [esi + 0x00000134], edx             // 0x00448aaf    899634010000
                         mov.s              eax, esi                                      // 0x00448ab5    8bc6
                         pop                esi                                           // 0x00448ab7    5e
                         ret                                                              // 0x00448ab8    c3
                         nop                                                              // 0x00448ab9    90
                         nop                                                              // 0x00448aba    90
                         nop                                                              // 0x00448abb    90
                         nop                                                              // 0x00448abc    90
                         nop                                                              // 0x00448abd    90
                         nop                                                              // 0x00448abe    90
                         nop                                                              // 0x00448abf    90
_jmp_addr_0x00448ac0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00448ac0    d9442404
                         push               esi                                           // 0x00448ac4    56
                         mov.s              esi, ecx                                      // 0x00448ac5    8bf1
                         {disp8} fadd       dword ptr [esi + 0x10]                        // 0x00448ac7    d84610
                         {disp8} fst        dword ptr [esi + 0x10]                        // 0x00448aca    d95610
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00448acd    d81d98a38a00
                         fnstsw             ax                                            // 0x00448ad3    dfe0
                         test               ah, 0x01                                      // 0x00448ad5    f6c401
                         {disp8} je         _jmp_addr_0x00448ae1                          // 0x00448ad8    7407
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000000            // 0x00448ada    c7461000000000
_jmp_addr_0x00448ae1:    {disp8} fld        dword ptr [esi + 0x10]                        // 0x00448ae1    d94610
                         {disp8} fcomp      dword ptr [esi + 0x08]                        // 0x00448ae4    d85e08
                         fnstsw             ax                                            // 0x00448ae7    dfe0
                         test               ah, 0x41                                      // 0x00448ae9    f6c441
                         {disp8} jne        _jmp_addr_0x00448af4                          // 0x00448aec    7506
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x00448aee    8b4608
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x00448af1    894610
_jmp_addr_0x00448af4:    {disp8} fld        dword ptr [esi + 0x08]                        // 0x00448af4    d94608
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x00448af7    8b4e04
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00448afa    d81d98a38a00
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x00448b00    894e0c
                         fnstsw             ax                                            // 0x00448b03    dfe0
                         test               ah, 0x41                                      // 0x00448b05    f6c441
                         {disp8} jne        _jmp_addr_0x00448b1c                          // 0x00448b08    7512
                         {disp8} fld        dword ptr [esi + 0x10]                        // 0x00448b0a    d94610
                         {disp8} fdiv       dword ptr [esi + 0x08]                        // 0x00448b0d    d87608
                         {disp8} fld        dword ptr [esi + 0x04]                        // 0x00448b10    d94604
                         fsub               dword ptr [esi]                               // 0x00448b13    d826
                         fmulp              st(1), st                                     // 0x00448b15    dec9
                         fadd               dword ptr [esi]                               // 0x00448b17    d806
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x00448b19    d95e0c
_jmp_addr_0x00448b1c:    {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00448b1c    d9460c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00448b1f    d81d98a38a00
                         fnstsw             ax                                            // 0x00448b25    dfe0
                         test               ah, 0x41                                      // 0x00448b27    f6c441
                         {disp8} jne        _jmp_addr_0x00448b4f                          // 0x00448b2a    7523
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00448b2c    d9460c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00448b2f    d81d90a38a00
                         fnstsw             ax                                            // 0x00448b35    dfe0
                         test               ah, 0x01                                      // 0x00448b37    f6c401
                         {disp8} je         _jmp_addr_0x00448b45                          // 0x00448b3a    7409
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00448b3c    d9460c
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00448b3f    d95c2408
                         {disp8} jmp        _jmp_addr_0x00448b57                          // 0x00448b43    eb12
_jmp_addr_0x00448b45:    {disp8} mov        dword ptr [esp + 0x08], 0x3f800000            // 0x00448b45    c74424080000803f
                         {disp8} jmp        _jmp_addr_0x00448b57                          // 0x00448b4d    eb08
_jmp_addr_0x00448b4f:    {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00448b4f    c744240800000000
_jmp_addr_0x00448b57:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x00448b57    d9442408
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x00448b5b    d80d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x00448b61    e89a883500
                         {disp32} mov       byte ptr [esi + 0x00000133], al               // 0x00448b66    888633010000
                         {disp32} mov       byte ptr [esi + 0x00000137], al               // 0x00448b6c    888637010000
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00448b72    e859f3fbff
                         test               eax, eax                                      // 0x00448b77    85c0
                         {disp8} je         _jmp_addr_0x00448b8a                          // 0x00448b79    740f
                         call               ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x00448b7b    e850f3fbff
                         {disp32} mov       ecx, dword ptr [eax + 0x00000094]             // 0x00448b80    8b8894000000
                         test               ecx, ecx                                      // 0x00448b86    85c9
                         {disp8} jne        _jmp_addr_0x00448bdc                          // 0x00448b88    7552
_jmp_addr_0x00448b8a:    {disp32} fild      dword ptr [esi + 0x00000138]                  // 0x00448b8a    db8638010000
                         {disp8} fmul       dword ptr [esp + 0x08]                        // 0x00448b90    d84c2408
                         call               _jmp_addr_0x007a1400                          // 0x00448b94    e867883500
                         {disp32} mov       ecx, dword ptr [esi + 0x0000012c]             // 0x00448b99    8b8e2c010000
                         push               eax                                           // 0x00448b9f    50
                         {disp32} lea       edx, dword ptr [esi + 0x00000134]             // 0x00448ba0    8d9634010000
                         push               edx                                           // 0x00448ba6    52
                         {disp32} mov       edx, dword ptr [esi + 0x00000128]             // 0x00448ba7    8b9628010000
                         {disp32} lea       eax, dword ptr [esi + 0x00000130]             // 0x00448bad    8d8630010000
                         push               eax                                           // 0x00448bb3    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]             // 0x00448bb4    8b8624010000
                         push               ecx                                           // 0x00448bba    51
                         {disp32} mov       ecx, dword ptr [esi + 0x00000120]             // 0x00448bbb    8b8e20010000
                         push               edx                                           // 0x00448bc1    52
                         push               eax                                           // 0x00448bc2    50
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x00448bc3    8b461c
                         push               ecx                                           // 0x00448bc6    51
                         {disp8} mov        ecx, dword ptr [esi + 0x18]                   // 0x00448bc7    8b4e18
                         {disp8} lea        edx, dword ptr [esi + 0x20]                   // 0x00448bca    8d5620
                         push               edx                                           // 0x00448bcd    52
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x00448bce    8b5614
                         push               eax                                           // 0x00448bd1    50
                         push               ecx                                           // 0x00448bd2    51
                         push               edx                                           // 0x00448bd3    52
                         call               _jmp_addr_0x00447ea0                          // 0x00448bd4    e8c7f2ffff
                         add                esp, 0x2c                                     // 0x00448bd9    83c42c
_jmp_addr_0x00448bdc:    pop                esi                                           // 0x00448bdc    5e
                         ret                0x0004                                        // 0x00448bdd    c20400
_jmp_addr_0x00448be0:    mov.s              eax, ecx                                      // 0x00448be0    8bc1
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fe0]        // 0x00448be2    8b0de0afc500
                         {disp32} mov       dword ptr [eax + 0x0000013c], ecx             // 0x00448be8    89883c010000
                         {disp32} mov       dword ptr [data_bytes + 0x294fe0], eax        // 0x00448bee    a3e0afc500
                         ret                                                              // 0x00448bf3    c3
                         nop                                                              // 0x00448bf4    90
                         nop                                                              // 0x00448bf5    90
                         nop                                                              // 0x00448bf6    90
                         nop                                                              // 0x00448bf7    90
                         nop                                                              // 0x00448bf8    90
                         nop                                                              // 0x00448bf9    90
                         nop                                                              // 0x00448bfa    90
                         nop                                                              // 0x00448bfb    90
                         nop                                                              // 0x00448bfc    90
                         nop                                                              // 0x00448bfd    90
                         nop                                                              // 0x00448bfe    90
                         nop                                                              // 0x00448bff    90
_jmp_addr_0x00448c00:    {disp32} mov       eax, dword ptr [data_bytes + 0x294fe0]        // 0x00448c00    a1e0afc500
                         cmp.s              ecx, eax                                      // 0x00448c05    3bc8
                         {disp8} jne        _jmp_addr_0x00448c15                          // 0x00448c07    750c
                         {disp32} mov       eax, dword ptr [ecx + 0x0000013c]             // 0x00448c09    8b813c010000
                         {disp32} mov       dword ptr [data_bytes + 0x294fe0], eax        // 0x00448c0f    a3e0afc500
                         ret                                                              // 0x00448c14    c3
_jmp_addr_0x00448c15:    test               eax, eax                                      // 0x00448c15    85c0
                         {disp8} je         _jmp_addr_0x00448c3a                          // 0x00448c17    7421
_jmp_addr_0x00448c19:    {disp32} mov       edx, dword ptr [eax + 0x0000013c]             // 0x00448c19    8b903c010000
                         test               edx, edx                                      // 0x00448c1f    85d2
                         {disp8} je         _jmp_addr_0x00448c3a                          // 0x00448c21    7417
                         cmp.s              edx, ecx                                      // 0x00448c23    3bd1
                         {disp8} je         _jmp_addr_0x00448c2e                          // 0x00448c25    7407
                         mov.s              eax, edx                                      // 0x00448c27    8bc2
                         test               eax, eax                                      // 0x00448c29    85c0
                         {disp8} jne        _jmp_addr_0x00448c19                          // 0x00448c2b    75ec
                         ret                                                              // 0x00448c2d    c3
_jmp_addr_0x00448c2e:    {disp32} mov       ecx, dword ptr [ecx + 0x0000013c]             // 0x00448c2e    8b893c010000
                         {disp32} mov       dword ptr [eax + 0x0000013c], ecx             // 0x00448c34    89883c010000
_jmp_addr_0x00448c3a:    ret                                                              // 0x00448c3a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00448c3b    e8398cfbff
_jmp_addr_0x00448c40:    {disp32} mov       al, byte ptr [data_bytes + 0x294310]          // 0x00448c40    a010a3c500
                         test               al, 0x01                                      // 0x00448c45    a801
                         push               ebx                                           // 0x00448c47    53
                         push               ebp                                           // 0x00448c48    55
                         push               esi                                           // 0x00448c49    56
                         push               edi                                           // 0x00448c4a    57
                         mov.s              esi, ecx                                      // 0x00448c4b    8bf1
                         mov                bl, -0x01                                     // 0x00448c4d    b3ff
                         {disp8} jne        _jmp_addr_0x00448c7d                          // 0x00448c4f    752c
                         mov.s              dl, al                                        // 0x00448c51    8ad0
                         or                 dl, 1                                         // 0x00448c53    80ca01
                         push               0x00448f00                                    // 0x00448c56    68008f4400
                         {disp32} mov       byte ptr [data_bytes + 0x294310], dl          // 0x00448c5b    881510a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x29430d], 0x00        // 0x00448c61    c6050da3c50000
                         {disp32} mov       byte ptr [data_bytes + 0x29430e], 0x00        // 0x00448c68    c6050ea3c50000
                         {disp32} mov       byte ptr [data_bytes + 0x29430f], bl          // 0x00448c6f    881d0fa3c500
                         call               _atexit                                       // 0x00448c75    e817cb3700
                         add                esp, 0x04                                     // 0x00448c7a    83c404
_jmp_addr_0x00448c7d:    {disp32} mov       al, byte ptr [data_bytes + 0x294310]          // 0x00448c7d    a010a3c500
                         test               al, 0x02                                      // 0x00448c82    a802
                         {disp8} jne        _jmp_addr_0x00448cb2                          // 0x00448c84    752c
                         mov.s              dl, al                                        // 0x00448c86    8ad0
                         or                 dl, 2                                         // 0x00448c88    80ca02
                         push               0x00448ef0                                    // 0x00448c8b    68f08e4400
                         {disp32} mov       byte ptr [data_bytes + 0x294310], dl          // 0x00448c90    881510a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x294308], 0x00        // 0x00448c96    c60508a3c50000
                         {disp32} mov       byte ptr [data_bytes + 0x294309], bl          // 0x00448c9d    881d09a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x29430a], 0x00        // 0x00448ca3    c6050aa3c50000
                         call               _atexit                                       // 0x00448caa    e8e2ca3700
                         add                esp, 0x04                                     // 0x00448caf    83c404
_jmp_addr_0x00448cb2:    {disp32} mov       cl, byte ptr [data_bytes + 0x294310]          // 0x00448cb2    8a0d10a3c500
                         mov                al, 0x04                                      // 0x00448cb8    b004
                         test               al, cl                                        // 0x00448cba    84c8
                         {disp8} jne        _jmp_addr_0x00448ce7                          // 0x00448cbc    7529
                         mov.s              dl, cl                                        // 0x00448cbe    8ad1
                         or.s               dl, al                                        // 0x00448cc0    0ad0
                         push               0x00448ee0                                    // 0x00448cc2    68e08e4400
                         {disp32} mov       byte ptr [data_bytes + 0x294310], dl          // 0x00448cc7    881510a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x294305], bl          // 0x00448ccd    881d05a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x294306], bl          // 0x00448cd3    881d06a3c500
                         {disp32} mov       byte ptr [data_bytes + 0x294307], bl          // 0x00448cd9    881d07a3c500
                         call               _atexit                                       // 0x00448cdf    e8adca3700
                         add                esp, 0x04                                     // 0x00448ce4    83c404
_jmp_addr_0x00448ce7:    {disp8} fld        dword ptr [esi + 0x04]                        // 0x00448ce7    d94604
                         mov                edi, dword ptr [esi]                          // 0x00448cea    8b3e
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2414]              // 0x00448cec    d80d14b48a00
                         sub                esp, 0x08                                     // 0x00448cf2    83ec08
                         mov.s              ecx, esi                                      // 0x00448cf5    8bce
                         fstp               qword ptr [esp]                               // 0x00448cf7    dd1c24
                         call               _jmp_addr_0x00448fc0                          // 0x00448cfa    e8c1020000
                         sub                esp, 0x08                                     // 0x00448cff    83ec08
                         mov.s              ecx, esi                                      // 0x00448d02    8bce
                         fstp               qword ptr [esp]                               // 0x00448d04    dd1c24
                         call               _jmp_addr_0x00448f40                          // 0x00448d07    e834020000
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00448d0c    8b442424
                         sub                esp, 0x08                                     // 0x00448d10    83ec08
                         fstp               qword ptr [esp]                               // 0x00448d13    dd1c24
                         push               edi                                           // 0x00448d16    57
                         push               eax                                           // 0x00448d17    50
                         push               0x009cdfd8                                    // 0x00448d18    68d8df9c00
                         push               0x00c5a284                                    // 0x00448d1d    6884a2c500
                         call               _sprintf                                      // 0x00448d22    e8abca3700
                         {disp8} mov        ebp, dword ptr [esp + 0x44]                   // 0x00448d27    8b6c2444
                         add                esp, 0x28                                     // 0x00448d2b    83c428
                         push               0x1                                           // 0x00448d2e    6a01
                         push               0x00c5a284                                    // 0x00448d30    6884a2c500
                         push               ebp                                           // 0x00448d35    55
                         push               0x0                                           // 0x00448d36    6a00
                         push               0x00c5a284                                    // 0x00448d38    6884a2c500
                         mov                ecx, 0x00e8c084                               // 0x00448d3d    b984c0e800
                         call               _jmp_addr_0x007e3d20                          // 0x00448d42    e8d9af3900
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x00448d47    8b7c2424
                         mov.s              ecx, edi                                      // 0x00448d4b    8bcf
                         sub.s              ecx, eax                                      // 0x00448d4d    2bc8
                         sub                ecx, 0x02                                     // 0x00448d4f    83e902
                         push               ecx                                           // 0x00448d52    51
                         mov                ecx, 0x00e8c084                               // 0x00448d53    b984c0e800
                         call               _jmp_addr_0x007e41b0                          // 0x00448d58    e853b43900
                         {disp32} mov       dx, word ptr [data_bytes + 0x29430d]          // 0x00448d5d    668b150da3c500
                         {disp32} mov       bl, byte ptr [data_bytes + 0x29430f]          // 0x00448d64    8a1d0fa3c500
                         mov.s              ecx, esi                                      // 0x00448d6a    8bce
                         {disp8} mov        word ptr [esp + 0x14], dx                     // 0x00448d6c    6689542414
                         call               _jmp_addr_0x00448fc0                          // 0x00448d71    e84a020000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e670]             // 0x00448d76    d80d70768c00
                         call               _jmp_addr_0x007a1400                          // 0x00448d7c    e87f863500
                         mov.s              edx, edi                                      // 0x00448d81    8bd7
                         sub.s              edx, eax                                      // 0x00448d83    2bd0
                         cmp                byte ptr [data_bytes + 0x4bf064], 0x10        // 0x00448d85    803d6450e80010
                         {disp8} jne        _jmp_addr_0x00448dfa                          // 0x00448d8c    756c
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]          // 0x00448d8e    8a0dcb50e800
                         shr                bl, cl                                        // 0x00448d94    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]          // 0x00448d96    8a0dce50e800
                         xor.s              ax, ax                                        // 0x00448d9c    6633c0
                         push               0x1                                           // 0x00448d9f    6a01
                         mov.s              al, bl                                        // 0x00448da1    8ac3
                         xor.s              ebx, ebx                                      // 0x00448da3    33db
                         {disp8} mov        bl, byte ptr [esp + 0x19]                     // 0x00448da5    8a5c2419
                         shl                eax, cl                                       // 0x00448da9    d3e0
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]          // 0x00448dab    8a0dcc50e800
                         shr                bl, cl                                        // 0x00448db1    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]          // 0x00448db3    8a0dcf50e800
                         movzx              bx, bl                                        // 0x00448db9    660fb6db
                         shl                ebx, cl                                       // 0x00448dbd    d3e3
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]          // 0x00448dbf    8a0dcd50e800
                         add.s              eax, ebx                                      // 0x00448dc5    03c3
                         xor.s              ebx, ebx                                      // 0x00448dc7    33db
                         {disp8} mov        bl, byte ptr [esp + 0x18]                     // 0x00448dc9    8a5c2418
                         shr                bl, cl                                        // 0x00448dcd    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]          // 0x00448dcf    8a0dd050e800
                         movzx              bx, bl                                        // 0x00448dd5    660fb6db
                         shl                ebx, cl                                       // 0x00448dd9    d3e3
                         add.s              eax, ebx                                      // 0x00448ddb    03c3
                         {disp8} mov        word ptr [esp + 0x18], ax                     // 0x00448ddd    6689442418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00448de2    8b4c2418
                         push               ecx                                           // 0x00448de6    51
                         {disp8} lea        eax, dword ptr [ebp + 0x05]                   // 0x00448de7    8d4505
                         push               eax                                           // 0x00448dea    50
                         push               edx                                           // 0x00448deb    52
                         push               ebp                                           // 0x00448dec    55
                         push               edi                                           // 0x00448ded    57
                         mov                ecx, 0x00e8586c                               // 0x00448dee    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x00448df3    e8189b3900
                         {disp8} jmp        _jmp_addr_0x00448e1b                          // 0x00448df8    eb21
_jmp_addr_0x00448dfa:    push               0x1                                           // 0x00448dfa    6a01
                         push               ecx                                           // 0x00448dfc    51
                         {disp8} mov        cx, word ptr [esp + 0x1c]                     // 0x00448dfd    668b4c241c
                         mov.s              eax, esp                                      // 0x00448e02    8bc4
                         mov                word ptr [eax], cx                            // 0x00448e04    668908
                         {disp8} mov        byte ptr [eax + 0x02], bl                     // 0x00448e07    885802
                         {disp8} lea        eax, dword ptr [ebp + 0x05]                   // 0x00448e0a    8d4505
                         push               eax                                           // 0x00448e0d    50
                         push               edx                                           // 0x00448e0e    52
                         push               ebp                                           // 0x00448e0f    55
                         push               edi                                           // 0x00448e10    57
                         mov                ecx, 0x00e8586c                               // 0x00448e11    b96c58e800
                         call               _jmp_addr_0x007e2b40                          // 0x00448e16    e8259d3900
_jmp_addr_0x00448e1b:    {disp8} fld        dword ptr [esi + 0x04]                        // 0x00448e1b    d94604
                         {disp8} lea        ebx, dword ptr [ebp + 0x0b]                   // 0x00448e1e    8d5d0b
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e66c]             // 0x00448e21    d80d6c768c00
                         call               _jmp_addr_0x007a1400                          // 0x00448e27    e8d4853500
                         mov.s              edx, edi                                      // 0x00448e2c    8bd7
                         sub.s              edx, eax                                      // 0x00448e2e    2bd0
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf064]          // 0x00448e30    a06450e800
                         add                ebp, 0x06                                     // 0x00448e35    83c506
                         cmp                al, 0x10                                      // 0x00448e38    3c10
                         {disp8} jne        _jmp_addr_0x00448eb0                          // 0x00448e3a    7574
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]          // 0x00448e3c    8a0dcb50e800
                         {disp32} mov       al, byte ptr [data_bytes + 0x29430a]          // 0x00448e42    a00aa3c500
                         shr                al, cl                                        // 0x00448e47    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]          // 0x00448e49    8a0dce50e800
                         push               0x1                                           // 0x00448e4f    6a01
                         movzx              si, al                                        // 0x00448e51    660fb6f0
                         xor.s              eax, eax                                      // 0x00448e55    33c0
                         {disp32} mov       al, byte ptr [data_bytes + 0x294309]          // 0x00448e57    a009a3c500
                         shl                esi, cl                                       // 0x00448e5c    d3e6
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]          // 0x00448e5e    8a0dcc50e800
                         shr                al, cl                                        // 0x00448e64    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]          // 0x00448e66    8a0dcf50e800
                         movzx              ax, al                                        // 0x00448e6c    660fb6c0
                         shl                eax, cl                                       // 0x00448e70    d3e0
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]          // 0x00448e72    8a0dcd50e800
                         add.s              esi, eax                                      // 0x00448e78    03f0
                         xor.s              eax, eax                                      // 0x00448e7a    33c0
                         {disp32} mov       al, byte ptr [data_bytes + 0x294308]          // 0x00448e7c    a008a3c500
                         shr                al, cl                                        // 0x00448e81    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]          // 0x00448e83    8a0dd050e800
                         movzx              ax, al                                        // 0x00448e89    660fb6c0
                         shl                eax, cl                                       // 0x00448e8d    d3e0
                         add.s              esi, eax                                      // 0x00448e8f    03f0
                         {disp8} mov        word ptr [esp + 0x18], si                     // 0x00448e91    6689742418
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00448e96    8b4c2418
                         push               ecx                                           // 0x00448e9a    51
                         push               ebx                                           // 0x00448e9b    53
                         push               edx                                           // 0x00448e9c    52
                         push               ebp                                           // 0x00448e9d    55
                         push               edi                                           // 0x00448e9e    57
                         mov                ecx, 0x00e8586c                               // 0x00448e9f    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x00448ea4    e8679a3900
                         pop                edi                                           // 0x00448ea9    5f
                         pop                esi                                           // 0x00448eaa    5e
                         pop                ebp                                           // 0x00448eab    5d
                         pop                ebx                                           // 0x00448eac    5b
                         ret                0x000c                                        // 0x00448ead    c20c00
_jmp_addr_0x00448eb0:    push               0x1                                           // 0x00448eb0    6a01
                         push               ecx                                           // 0x00448eb2    51
                         {disp32} mov       cx, word ptr [data_bytes + 0x294308]          // 0x00448eb3    668b0d08a3c500
                         mov.s              eax, esp                                      // 0x00448eba    8bc4
                         push               ebx                                           // 0x00448ebc    53
                         mov                word ptr [eax], cx                            // 0x00448ebd    668908
                         {disp32} mov       cl, byte ptr [data_bytes + 0x29430a]          // 0x00448ec0    8a0d0aa3c500
                         push               edx                                           // 0x00448ec6    52
                         push               ebp                                           // 0x00448ec7    55
                         {disp8} mov        byte ptr [eax + 0x02], cl                     // 0x00448ec8    884802
                         push               edi                                           // 0x00448ecb    57
                         mov                ecx, 0x00e8586c                               // 0x00448ecc    b96c58e800
                         call               _jmp_addr_0x007e2b40                          // 0x00448ed1    e86a9c3900
                         pop                edi                                           // 0x00448ed6    5f
                         pop                esi                                           // 0x00448ed7    5e
                         pop                ebp                                           // 0x00448ed8    5d
                         pop                ebx                                           // 0x00448ed9    5b
                         ret                0x000c                                        // 0x00448eda    c20c00
                         nop                                                              // 0x00448edd    90
                         nop                                                              // 0x00448ede    90
                         nop                                                              // 0x00448edf    90
                         ret                                                              // 0x00448ee0    c3
                         nop                                                              // 0x00448ee1    90
                         nop                                                              // 0x00448ee2    90
                         nop                                                              // 0x00448ee3    90
                         nop                                                              // 0x00448ee4    90
                         nop                                                              // 0x00448ee5    90
                         nop                                                              // 0x00448ee6    90
                         nop                                                              // 0x00448ee7    90
                         nop                                                              // 0x00448ee8    90
                         nop                                                              // 0x00448ee9    90
                         nop                                                              // 0x00448eea    90
                         nop                                                              // 0x00448eeb    90
                         nop                                                              // 0x00448eec    90
                         nop                                                              // 0x00448eed    90
                         nop                                                              // 0x00448eee    90
                         nop                                                              // 0x00448eef    90
                         ret                                                              // 0x00448ef0    c3
                         nop                                                              // 0x00448ef1    90
                         nop                                                              // 0x00448ef2    90
                         nop                                                              // 0x00448ef3    90
                         nop                                                              // 0x00448ef4    90
                         nop                                                              // 0x00448ef5    90
                         nop                                                              // 0x00448ef6    90
                         nop                                                              // 0x00448ef7    90
                         nop                                                              // 0x00448ef8    90
                         nop                                                              // 0x00448ef9    90
                         nop                                                              // 0x00448efa    90
                         nop                                                              // 0x00448efb    90
                         nop                                                              // 0x00448efc    90
                         nop                                                              // 0x00448efd    90
                         nop                                                              // 0x00448efe    90
                         nop                                                              // 0x00448eff    90
                         ret                                                              // 0x00448f00    c3
                         nop                                                              // 0x00448f01    90
                         nop                                                              // 0x00448f02    90
                         nop                                                              // 0x00448f03    90
                         nop                                                              // 0x00448f04    90
                         nop                                                              // 0x00448f05    90
                         nop                                                              // 0x00448f06    90
                         nop                                                              // 0x00448f07    90
                         nop                                                              // 0x00448f08    90
                         nop                                                              // 0x00448f09    90
                         nop                                                              // 0x00448f0a    90
                         nop                                                              // 0x00448f0b    90
                         nop                                                              // 0x00448f0c    90
                         nop                                                              // 0x00448f0d    90
                         nop                                                              // 0x00448f0e    90
                         nop                                                              // 0x00448f0f    90
_jmp_addr_0x00448f10:    mov                eax, 0x0000000c                               // 0x00448f10    b80c000000
                         ret                                                              // 0x00448f15    c3
                         nop                                                              // 0x00448f16    90
                         nop                                                              // 0x00448f17    90
                         nop                                                              // 0x00448f18    90
                         nop                                                              // 0x00448f19    90
                         nop                                                              // 0x00448f1a    90
                         nop                                                              // 0x00448f1b    90
                         nop                                                              // 0x00448f1c    90
                         nop                                                              // 0x00448f1d    90
                         nop                                                              // 0x00448f1e    90
                         nop                                                              // 0x00448f1f    90
?Reset@CameraHelpAccumulator@@QAEXXZ:
                                        xor.s              eax, eax                                      // 0x00448f20    33c0
                         mov                dword ptr [ecx], eax                          // 0x00448f22    8901
                         {disp8} mov        byte ptr [ecx + 0x09], al                     // 0x00448f24    884109
                         {disp8} mov        byte ptr [ecx + 0x08], al                     // 0x00448f27    884108
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00448f2a    894104
                         {disp8} mov        byte ptr [ecx + 0x0a], al                     // 0x00448f2d    88410a
                         ret                                                              // 0x00448f30    c3
                         nop                                                              // 0x00448f31    90
                         nop                                                              // 0x00448f32    90
                         nop                                                              // 0x00448f33    90
                         nop                                                              // 0x00448f34    90
                         nop                                                              // 0x00448f35    90
                         nop                                                              // 0x00448f36    90
                         nop                                                              // 0x00448f37    90
                         nop                                                              // 0x00448f38    90
                         nop                                                              // 0x00448f39    90
                         nop                                                              // 0x00448f3a    90
                         nop                                                              // 0x00448f3b    90
                         nop                                                              // 0x00448f3c    90
                         nop                                                              // 0x00448f3d    90
                         nop                                                              // 0x00448f3e    90
                         nop                                                              // 0x00448f3f    90
_jmp_addr_0x00448f40:    push               ecx                                           // 0x00448f40    51
                         {disp8} mov        al, byte ptr [ecx + 0x09]                     // 0x00448f41    8a4109
                         test               al, al                                        // 0x00448f44    84c0
                         {disp8} jne        _jmp_addr_0x00448f50                          // 0x00448f46    7508
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00448f48    d90598a38a00
                         pop                ecx                                           // 0x00448f4e    59
                         ret                                                              // 0x00448f4f    c3
_jmp_addr_0x00448f50:    {disp32} mov       edx, dword ptr [data_bytes + 0x294fd8]        // 0x00448f50    8b15d8afc500
                         xor.s              eax, eax                                      // 0x00448f56    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x08]                     // 0x00448f58    8a4108
                         dec                eax                                           // 0x00448f5b    48
                         and                eax, 0x3f                                     // 0x00448f5c    83e03f
                         sub                edx, dword ptr [ecx + eax * 0x4 + 0x0c]       // 0x00448f5f    2b54810c
                         {disp8} mov        dword ptr [esp + 0x00], edx                   // 0x00448f63    89542400
                         {disp8} jns        _jmp_addr_0x00448f76                          // 0x00448f67    790d
                         call               _jmp_addr_0x00448f90                          // 0x00448f69    e822000000
                         {disp8} mov        dword ptr [esp + 0x00], 0x00000000            // 0x00448f6e    c744240000000000
_jmp_addr_0x00448f76:    {disp8} fild       dword ptr [esp + 0x00]                        // 0x00448f76    db442400
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00448f7a    d80db0a38a00
                         pop                ecx                                           // 0x00448f80    59
                         ret                                                              // 0x00448f81    c3
                         nop                                                              // 0x00448f82    90
                         nop                                                              // 0x00448f83    90
                         nop                                                              // 0x00448f84    90
                         nop                                                              // 0x00448f85    90
                         nop                                                              // 0x00448f86    90
                         nop                                                              // 0x00448f87    90
                         nop                                                              // 0x00448f88    90
                         nop                                                              // 0x00448f89    90
                         nop                                                              // 0x00448f8a    90
                         nop                                                              // 0x00448f8b    90
                         nop                                                              // 0x00448f8c    90
                         nop                                                              // 0x00448f8d    90
                         nop                                                              // 0x00448f8e    90
                         nop                                                              // 0x00448f8f    90
_jmp_addr_0x00448f90:    {disp8} lea        eax, dword ptr [ecx + 0x0c]                   // 0x00448f90    8d410c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fd8]        // 0x00448f93    8b0dd8afc500
                         mov                edx, 0x00000040                               // 0x00448f99    ba40000000
_jmp_addr_0x00448f9e:    cmp                dword ptr [eax], ecx                          // 0x00448f9e    3908
                         {disp8} jbe        _jmp_addr_0x00448faa                          // 0x00448fa0    7608
                         mov                dword ptr [eax], ecx                          // 0x00448fa2    8908
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x294fd8]        // 0x00448fa4    8b0dd8afc500
_jmp_addr_0x00448faa:    add                eax, 0x04                                     // 0x00448faa    83c004
                         dec                edx                                           // 0x00448fad    4a
                         {disp8} jne        _jmp_addr_0x00448f9e                          // 0x00448fae    75ee
                         ret                                                              // 0x00448fb0    c3
                         nop                                                              // 0x00448fb1    90
                         nop                                                              // 0x00448fb2    90
                         nop                                                              // 0x00448fb3    90
                         nop                                                              // 0x00448fb4    90
                         nop                                                              // 0x00448fb5    90
                         nop                                                              // 0x00448fb6    90
                         nop                                                              // 0x00448fb7    90
                         nop                                                              // 0x00448fb8    90
                         nop                                                              // 0x00448fb9    90
                         nop                                                              // 0x00448fba    90
                         nop                                                              // 0x00448fbb    90
                         nop                                                              // 0x00448fbc    90
                         nop                                                              // 0x00448fbd    90
                         nop                                                              // 0x00448fbe    90
                         nop                                                              // 0x00448fbf    90
_jmp_addr_0x00448fc0:    sub                esp, 0x08                                     // 0x00448fc0    83ec08
                         push               esi                                           // 0x00448fc3    56
                         mov.s              esi, ecx                                      // 0x00448fc4    8bf1
                         {disp8} mov        al, byte ptr [esi + 0x09]                     // 0x00448fc6    8a4609
                         cmp                al, 0x02                                      // 0x00448fc9    3c02
                         {disp8} jge        _jmp_addr_0x00448fd8                          // 0x00448fcb    7d0b
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00448fcd    d90598a38a00
                         pop                esi                                           // 0x00448fd3    5e
                         add                esp, 0x08                                     // 0x00448fd4    83c408
                         ret                                                              // 0x00448fd7    c3
_jmp_addr_0x00448fd8:    {disp32} mov       edx, dword ptr [data_bytes + 0x294fd8]        // 0x00448fd8    8b15d8afc500
                         xor.s              ecx, ecx                                      // 0x00448fde    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x08]                     // 0x00448fe0    8a4e08
                         movsx              eax, al                                       // 0x00448fe3    0fbec0
                         sub.s              ecx, eax                                      // 0x00448fe6    2bc8
                         and                ecx, 0x3f                                     // 0x00448fe8    83e13f
                         sub                edx, dword ptr [esi + ecx * 0x4 + 0x0c]       // 0x00448feb    2b548e0c
                         {disp8} mov        dword ptr [esp + 0x08], edx                   // 0x00448fef    89542408
                         {disp8} jns        _jmp_addr_0x00449007                          // 0x00448ff3    7912
                         mov.s              ecx, esi                                      // 0x00448ff5    8bce
                         call               _jmp_addr_0x00448f90                          // 0x00448ff7    e894ffffff
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00448ffc    d90598a38a00
                         pop                esi                                           // 0x00449002    5e
                         add                esp, 0x08                                     // 0x00449003    83c408
                         ret                                                              // 0x00449006    c3
_jmp_addr_0x00449007:    test               edx, edx                                      // 0x00449007    85d2
                         {disp8} jne        _jmp_addr_0x00449016                          // 0x00449009    750b
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0044900b    d90598a38a00
                         pop                esi                                           // 0x00449011    5e
                         add                esp, 0x08                                     // 0x00449012    83c408
                         ret                                                              // 0x00449015    c3
_jmp_addr_0x00449016:    lea                eax, dword ptr [eax + eax * 0x4]              // 0x00449016    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00449019    8d0480
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0044901c    8d1480
                         {disp32} lea       eax, dword ptr [edx * 0x8 + -0x000003e8]      // 0x0044901f    8d04d518fcffff
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00449026    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x0044902a    db442404
                         pop                esi                                           // 0x0044902e    5e
                         {disp8} fidiv      dword ptr [esp + 0x04]                        // 0x0044902f    da742404
                         add                esp, 0x08                                     // 0x00449033    83c408
                         ret                                                              // 0x00449036    c3
                         nop                                                              // 0x00449037    90
                         nop                                                              // 0x00449038    90
                         nop                                                              // 0x00449039    90
                         nop                                                              // 0x0044903a    90
                         nop                                                              // 0x0044903b    90
                         nop                                                              // 0x0044903c    90
                         nop                                                              // 0x0044903d    90
                         nop                                                              // 0x0044903e    90
                         nop                                                              // 0x0044903f    90
_jmp_addr_0x00449040:    {disp8} mov        al, byte ptr [ecx + 0x0a]                     // 0x00449040    8a410a
                         test               al, al                                        // 0x00449043    84c0
                         {disp8} jne        _jmp_addr_0x00449071                          // 0x00449045    752a
                         inc                dword ptr [ecx]                               // 0x00449047    ff01
                         movsx              eax, byte ptr [ecx + 0x08]                    // 0x00449049    0fbe4108
                         {disp8} mov        byte ptr [ecx + 0x0a], 0x01                   // 0x0044904d    c6410a01
                         {disp32} mov       edx, dword ptr [data_bytes + 0x294fd8]        // 0x00449051    8b15d8afc500
                         {disp8} mov        dword ptr [ecx + eax * 0x4 + 0x0c], edx       // 0x00449057    8954810c
                         {disp8} mov        al, byte ptr [ecx + 0x08]                     // 0x0044905b    8a4108
                         inc                al                                            // 0x0044905e    fec0
                         and                al, 0x3f                                      // 0x00449060    243f
                         {disp8} mov        byte ptr [ecx + 0x08], al                     // 0x00449062    884108
                         {disp8} mov        al, byte ptr [ecx + 0x09]                     // 0x00449065    8a4109
                         cmp                al, 0x40                                      // 0x00449068    3c40
                         {disp8} jge        _jmp_addr_0x00449071                          // 0x0044906a    7d05
                         inc                al                                            // 0x0044906c    fec0
                         {disp8} mov        byte ptr [ecx + 0x09], al                     // 0x0044906e    884109
_jmp_addr_0x00449071:    ret                                                              // 0x00449071    c3
                         nop                                                              // 0x00449072    90
                         nop                                                              // 0x00449073    90
                         nop                                                              // 0x00449074    90
                         nop                                                              // 0x00449075    90
                         nop                                                              // 0x00449076    90
                         nop                                                              // 0x00449077    90
                         nop                                                              // 0x00449078    90
                         nop                                                              // 0x00449079    90
                         nop                                                              // 0x0044907a    90
                         nop                                                              // 0x0044907b    90
                         nop                                                              // 0x0044907c    90
                         nop                                                              // 0x0044907d    90
                         nop                                                              // 0x0044907e    90
                         nop                                                              // 0x0044907f    90
_jmp_addr_0x00449080:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00449080    8b442404
                         mov.s              ecx, eax                                      // 0x00449084    8bc8
                         sar                ecx, 8                                        // 0x00449086    c1f908
                         and                eax, 0x07                                     // 0x00449089    83e007
                         and                ecx, 0x03                                     // 0x0044908c    83e103
                         lea                edx, dword ptr [eax + ecx * 0x8]              // 0x0044908f    8d14c8
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x009cdd70]       // 0x00449092    8b049570dd9c00
                         ret                                                              // 0x00449099    c3
                         call               dword ptr [rdata_bytes + 0x98c]               // 0x0044909a    ff158c998a00
_jmp_addr_0x004490a0:    push               ebx                                           // 0x004490a0    53
                         push               ebp                                           // 0x004490a1    55
                         push               esi                                           // 0x004490a2    56
                         xor.s              eax, eax                                      // 0x004490a3    33c0
                         push               edi                                           // 0x004490a5    57
                         {disp32} mov       byte ptr [data_bytes + 0x293e84], 0x00        // 0x004490a6    c605849ec50000
                         xor.s              ebx, ebx                                      // 0x004490ad    33db
                         mov                edx, 0x009cddf0                               // 0x004490af    baf0dd9c00
_jmp_addr_0x004490b4:    mov.s              ecx, ebx                                      // 0x004490b4    8bcb
                         mov                esi, 0x00000001                               // 0x004490b6    be01000000
                         shl                esi, cl                                       // 0x004490bb    d3e6
                         test               dword ptr [esp + 0x14], esi                   // 0x004490bd    85742414
                         {disp8} je         _jmp_addr_0x00449123                          // 0x004490c1    7460
                         test               eax, eax                                      // 0x004490c3    85c0
                         {disp8} je         _jmp_addr_0x004490f4                          // 0x004490c5    742d
                         or                 ecx, 0xffffffff                               // 0x004490c7    83c9ff
                         xor.s              eax, eax                                      // 0x004490ca    33c0
                         mov                edi, 0x009cdff4                               // 0x004490cc    bff4df9c00
                         repne scasb                                                      // 0x004490d1    f2ae
                         not                ecx                                           // 0x004490d3    f7d1
                         sub.s              edi, ecx                                      // 0x004490d5    2bf9
                         mov.s              ebp, ecx                                      // 0x004490d7    8be9
                         or                 ecx, 0xffffffff                               // 0x004490d9    83c9ff
                         mov.s              esi, edi                                      // 0x004490dc    8bf7
                         mov                edi, 0x00c59e84                               // 0x004490de    bf849ec500
                         repne scasb                                                      // 0x004490e3    f2ae
                         mov.s              ecx, ebp                                      // 0x004490e5    8bcd
                         shr                ecx, 2                                        // 0x004490e7    c1e902
                         dec                edi                                           // 0x004490ea    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x004490eb    f3a5
                         mov.s              ecx, ebp                                      // 0x004490ed    8bcd
                         and                ecx, 0x03                                     // 0x004490ef    83e103
                         rep movsb                                                        // 0x004490f2    f3a4
_jmp_addr_0x004490f4:    mov                edi, dword ptr [edx]                          // 0x004490f4    8b3a
                         or                 ecx, 0xffffffff                               // 0x004490f6    83c9ff
                         xor.s              eax, eax                                      // 0x004490f9    33c0
                         repne scasb                                                      // 0x004490fb    f2ae
                         not                ecx                                           // 0x004490fd    f7d1
                         sub.s              edi, ecx                                      // 0x004490ff    2bf9
                         mov.s              ebp, ecx                                      // 0x00449101    8be9
                         or                 ecx, 0xffffffff                               // 0x00449103    83c9ff
                         mov.s              esi, edi                                      // 0x00449106    8bf7
                         mov                edi, 0x00c59e84                               // 0x00449108    bf849ec500
                         repne scasb                                                      // 0x0044910d    f2ae
                         mov.s              ecx, ebp                                      // 0x0044910f    8bcd
                         shr                ecx, 2                                        // 0x00449111    c1e902
                         dec                edi                                           // 0x00449114    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00449115    f3a5
                         mov.s              ecx, ebp                                      // 0x00449117    8bcd
                         and                ecx, 0x03                                     // 0x00449119    83e103
                         rep movsb                                                        // 0x0044911c    f3a4
                         mov                eax, 0x00000001                               // 0x0044911e    b801000000
_jmp_addr_0x00449123:    add                edx, 0x04                                     // 0x00449123    83c204
                         inc                ebx                                           // 0x00449126    43
                         cmp                edx, 0x009cde04                               // 0x00449127    81fa04de9c00
                         {disp8} jl         _jmp_addr_0x004490b4                          // 0x0044912d    7c85
                         pop                edi                                           // 0x0044912f    5f
                         pop                esi                                           // 0x00449130    5e
                         pop                ebp                                           // 0x00449131    5d
                         mov                eax, 0x00c59e84                               // 0x00449132    b8849ec500
                         pop                ebx                                           // 0x00449137    5b
                         ret                                                              // 0x00449138    c3
                         nop                                                              // 0x00449139    90
                         nop                                                              // 0x0044913a    90
                         nop                                                              // 0x0044913b    90
                         nop                                                              // 0x0044913c    90
                         nop                                                              // 0x0044913d    90
                         nop                                                              // 0x0044913e    90
                         nop                                                              // 0x0044913f    90
?CameraHelpCallback@CameraHelp@@SAXW4CameraHelpReason@@AAULHPoint@@K@Z:
                                                                    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00449140    8b4c2404
                         mov.s              eax, ecx                                      // 0x00449144    8bc1
                         and                ecx, 0x00000f00                               // 0x00449146    81e1000f0000
                         and                eax, 0x000000ff                               // 0x0044914c    25ff000000
                         cmp                ecx, 0x00000300                               // 0x00449151    81f900030000
                         {disp8} jne        _jmp_addr_0x004491a2                          // 0x00449157    7549
                         push               ebx                                           // 0x00449159    53
                         push               esi                                           // 0x0044915a    56
                         add                eax, 0x19                                     // 0x0044915b    83c019
                         push               edi                                           // 0x0044915e    57
                         push               eax                                           // 0x0044915f    50
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00449160    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250060]             // 0x00449165    8b8860002500
                         call               ?Trigger@HelpProfile@@QAEXW4HELP_EVENT_TYPE@@@Z                          // 0x0044916b    e870b51700
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00449170    8b5c2418
                         xor.s              edi, edi                                      // 0x00449174    33ff
                         mov                esi, 0x00c5a320                               // 0x00449176    be20a3c500
_jmp_addr_0x0044917b:    mov                edx, 0x00000001                               // 0x0044917b    ba01000000
                         mov.s              ecx, edi                                      // 0x00449180    8bcf
                         shl                edx, cl                                       // 0x00449182    d3e2
                         test               ebx, edx                                      // 0x00449184    85d3
                         {disp8} je         _jmp_addr_0x0044918f                          // 0x00449186    7407
                         mov.s              ecx, esi                                      // 0x00449188    8bce
                         call               _jmp_addr_0x00449040                          // 0x0044918a    e8b1feffff
_jmp_addr_0x0044918f:    add                esi, 0x0000010c                               // 0x0044918f    81c60c010000
                         inc                edi                                           // 0x00449195    47
                         cmp                esi, 0x00c5a85c                               // 0x00449196    81fe5ca8c500
                         {disp8} jl         _jmp_addr_0x0044917b                          // 0x0044919c    7cdd
                         pop                edi                                           // 0x0044919e    5f
                         pop                esi                                           // 0x0044919f    5e
                         pop                ebx                                           // 0x004491a0    5b
_jmp_addr_0x004491a1:    ret                                                              // 0x004491a1    c3
_jmp_addr_0x004491a2:    cmp                ecx, 0x00000200                               // 0x004491a2    81f900020000
                         {disp8} jne        _jmp_addr_0x004491c0                          // 0x004491a8    7516
                         mov.s              ecx, eax                                      // 0x004491aa    8bc8
                         shl                ecx, 5                                        // 0x004491ac    c1e105
                         add.s              ecx, eax                                      // 0x004491af    03c8
                         lea                edx, dword ptr [eax + ecx * 0x2]              // 0x004491b1    8d1448
                         {disp32} lea       ecx, dword ptr [edx * 0x4 + 0x00c5a860]       // 0x004491b4    8d0c9560a8c500
                         {disp32} jmp       _jmp_addr_0x00449040                          // 0x004491bb    e980feffff
_jmp_addr_0x004491c0:    cmp                ecx, 0x00000100                               // 0x004491c0    81f900010000
                         {disp8} jne        _jmp_addr_0x004491a1                          // 0x004491c6    75d9
                         mov.s              ecx, eax                                      // 0x004491c8    8bc8
                         shl                ecx, 5                                        // 0x004491ca    c1e105
                         add.s              ecx, eax                                      // 0x004491cd    03c8
                         lea                edx, dword ptr [eax + ecx * 0x2]              // 0x004491cf    8d1448
                         {disp32} lea       ecx, dword ptr [edx * 0x4 + 0x00c5ac90]       // 0x004491d2    8d0c9590acc500
                         {disp32} jmp       _jmp_addr_0x00449040                          // 0x004491d9    e962feffff
                         nop                                                              // 0x004491de    90
                         nop                                                              // 0x004491df    90
_jmp_addr_0x004491e0:    push               esi                                           // 0x004491e0    56
                         mov                esi, 0x00c5ac90                               // 0x004491e1    be90acc500
_jmp_addr_0x004491e6:    mov.s              ecx, esi                                      // 0x004491e6    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x004491e8    e833fdffff
                         add                esi, 0x0000010c                               // 0x004491ed    81c60c010000
                         cmp                esi, 0x00c5afb4                               // 0x004491f3    81feb4afc500
                         {disp8} jl         _jmp_addr_0x004491e6                          // 0x004491f9    7ceb
                         mov                esi, 0x00c5a860                               // 0x004491fb    be60a8c500
_jmp_addr_0x00449200:    mov.s              ecx, esi                                      // 0x00449200    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x00449202    e819fdffff
                         add                esi, 0x0000010c                               // 0x00449207    81c60c010000
                         cmp                esi, 0x00c5ac90                               // 0x0044920d    81fe90acc500
                         {disp8} jl         _jmp_addr_0x00449200                          // 0x00449213    7ceb
                         mov                esi, 0x00c5a320                               // 0x00449215    be20a3c500
_jmp_addr_0x0044921a:    mov.s              ecx, esi                                      // 0x0044921a    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x0044921c    e8fffcffff
                         add                esi, 0x0000010c                               // 0x00449221    81c60c010000
                         cmp                esi, 0x00c5a85c                               // 0x00449227    81fe5ca8c500
                         {disp8} jl         _jmp_addr_0x0044921a                          // 0x0044922d    7ceb
                         pop                esi                                           // 0x0044922f    5e
                         ret                                                              // 0x00449230    c3
                         nop                                                              // 0x00449231    90
                         nop                                                              // 0x00449232    90
                         nop                                                              // 0x00449233    90
                         nop                                                              // 0x00449234    90
                         nop                                                              // 0x00449235    90
                         nop                                                              // 0x00449236    90
                         nop                                                              // 0x00449237    90
                         nop                                                              // 0x00449238    90
                         nop                                                              // 0x00449239    90
                         nop                                                              // 0x0044923a    90
                         nop                                                              // 0x0044923b    90
                         nop                                                              // 0x0044923c    90
                         nop                                                              // 0x0044923d    90
                         nop                                                              // 0x0044923e    90
                         nop                                                              // 0x0044923f    90
_jmp_addr_0x00449240:    push               ecx                                           // 0x00449240    51
                         mov                eax, 0x00c5ac9a                               // 0x00449241    b89aacc500
_jmp_addr_0x00449246:    movsx              ecx, byte ptr [eax]                           // 0x00449246    0fbe08
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00449249    894c2400
                         mov                byte ptr [eax], 0x00                          // 0x0044924d    c60000
                         add                eax, 0x0000010c                               // 0x00449250    050c010000
                         cmp                eax, 0x00c5afbe                               // 0x00449255    3dbeafc500
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x0044925a    db442400
                         {disp32} fsub      dword ptr [eax + -0x00000112]                 // 0x0044925e    d8a0eefeffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e674]             // 0x00449264    d80d74768c00
                         {disp32} fadd      dword ptr [eax + -0x00000112]                 // 0x0044926a    d880eefeffff
                         {disp32} fstp      dword ptr [eax + -0x00000112]                 // 0x00449270    d998eefeffff
                         {disp8} jl         _jmp_addr_0x00449246                          // 0x00449276    7cce
                         mov                eax, 0x00c5a86a                               // 0x00449278    b86aa8c500
_jmp_addr_0x0044927d:    movsx              edx, byte ptr [eax]                           // 0x0044927d    0fbe10
                         {disp8} mov        dword ptr [esp + 0x00], edx                   // 0x00449280    89542400
                         mov                byte ptr [eax], 0x00                          // 0x00449284    c60000
                         add                eax, 0x0000010c                               // 0x00449287    050c010000
                         cmp                eax, 0x00c5ac9a                               // 0x0044928c    3d9aacc500
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x00449291    db442400
                         {disp32} fsub      dword ptr [eax + -0x00000112]                 // 0x00449295    d8a0eefeffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e674]             // 0x0044929b    d80d74768c00
                         {disp32} fadd      dword ptr [eax + -0x00000112]                 // 0x004492a1    d880eefeffff
                         {disp32} fstp      dword ptr [eax + -0x00000112]                 // 0x004492a7    d998eefeffff
                         {disp8} jl         _jmp_addr_0x0044927d                          // 0x004492ad    7cce
                         mov                eax, 0x00c5a32a                               // 0x004492af    b82aa3c500
_jmp_addr_0x004492b4:    movsx              ecx, byte ptr [eax]                           // 0x004492b4    0fbe08
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x004492b7    894c2400
                         mov                byte ptr [eax], 0x00                          // 0x004492bb    c60000
                         add                eax, 0x0000010c                               // 0x004492be    050c010000
                         cmp                eax, 0x00c5a866                               // 0x004492c3    3d66a8c500
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x004492c8    db442400
                         {disp32} fsub      dword ptr [eax + -0x00000112]                 // 0x004492cc    d8a0eefeffff
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e674]             // 0x004492d2    d80d74768c00
                         {disp32} fadd      dword ptr [eax + -0x00000112]                 // 0x004492d8    d880eefeffff
                         {disp32} fstp      dword ptr [eax + -0x00000112]                 // 0x004492de    d998eefeffff
                         {disp8} jl         _jmp_addr_0x004492b4                          // 0x004492e4    7cce
                         pop                ecx                                           // 0x004492e6    59
                         ret                                                              // 0x004492e7    c3
                         nop                                                              // 0x004492e8    90
                         nop                                                              // 0x004492e9    90
                         nop                                                              // 0x004492ea    90
                         nop                                                              // 0x004492eb    90
                         nop                                                              // 0x004492ec    90
                         nop                                                              // 0x004492ed    90
                         nop                                                              // 0x004492ee    90
                         nop                                                              // 0x004492ef    90
_jmp_addr_0x004492f0:    sub                esp, 0x08                                     // 0x004492f0    83ec08
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf064]          // 0x004492f3    8a0d6450e800
                         push               ebx                                           // 0x004492f9    53
                         push               ebp                                           // 0x004492fa    55
                         push               esi                                           // 0x004492fb    56
                         push               edi                                           // 0x004492fc    57
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf058]        // 0x004492fd    8b3d5850e800
                         and                edi, 0x0000ffff                               // 0x00449303    81e7ffff0000
                         xor.s              al, al                                        // 0x00449309    32c0
                         shr                edi, 1                                        // 0x0044930b    d1ef
                         cmp                cl, 0x10                                      // 0x0044930d    80f910
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                  // 0x00449310    c6442410ff
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x00449315    c644241100
                         {disp8} jne        _jmp_addr_0x0044934f                          // 0x0044931a    7533
                         {disp8} mov        dx, word ptr [esp + 0x10]                     // 0x0044931c    668b542410
                         push               ecx                                           // 0x00449321    51
                         mov.s              ecx, esp                                      // 0x00449322    8bcc
                         mov                word ptr [ecx], dx                            // 0x00449324    668911
                         {disp8} mov        byte ptr [ecx + 0x02], al                     // 0x00449327    884102
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0044932a    8d4c2418
                         call               _jmp_addr_0x00449650                          // 0x0044932e    e81d030000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00449333    8b442414
                         {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x00449337    8b742420
                         push               0x0                                           // 0x0044933b    6a00
                         push               eax                                           // 0x0044933d    50
                         push               esi                                           // 0x0044933e    56
                         push               edi                                           // 0x0044933f    57
                         push               esi                                           // 0x00449340    56
                         push               0x0                                           // 0x00449341    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449343    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x00449348    e8c3953900
                         {disp8} jmp        _jmp_addr_0x00449372                          // 0x0044934d    eb23
_jmp_addr_0x0044934f:    {disp8} mov        esi, dword ptr [esp + 0x20]                   // 0x0044934f    8b742420
                         {disp8} mov        dx, word ptr [esp + 0x10]                     // 0x00449353    668b542410
                         push               0x0                                           // 0x00449358    6a00
                         push               ecx                                           // 0x0044935a    51
                         mov.s              ecx, esp                                      // 0x0044935b    8bcc
                         push               esi                                           // 0x0044935d    56
                         push               edi                                           // 0x0044935e    57
                         mov                word ptr [ecx], dx                            // 0x0044935f    668911
                         push               esi                                           // 0x00449362    56
                         {disp8} mov        byte ptr [ecx + 0x02], al                     // 0x00449363    884102
                         push               0x0                                           // 0x00449366    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449368    b96c58e800
                         call               _jmp_addr_0x007e2b40                          // 0x0044936d    e8ce973900
_jmp_addr_0x00449372:    mov                ebp, 0x00c5ac90                               // 0x00449372    bd90acc500
                         inc                esi                                           // 0x00449377    46
                         xor.s              ebx, ebx                                      // 0x00449378    33db
                         mov.s              edi, ebp                                      // 0x0044937a    8bfd
_jmp_addr_0x0044937c:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0044937c    8b44241c
                         push               esi                                           // 0x00449380    56
                         push               eax                                           // 0x00449381    50
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000100]             // 0x00449382    8d8b00010000
                         push               ecx                                           // 0x00449388    51
                         call               _jmp_addr_0x00449080                          // 0x00449389    e8f2fcffff
                         add                esp, 0x04                                     // 0x0044938e    83c404
                         push               eax                                           // 0x00449391    50
                         mov.s              ecx, ebp                                      // 0x00449392    8bcd
                         call               _jmp_addr_0x00448c40                          // 0x00449394    e8a7f8ffff
                         add                edi, 0x0000010c                               // 0x00449399    81c70c010000
                         mov.s              ecx, edi                                      // 0x0044939f    8bcf
                         inc                ebx                                           // 0x004493a1    43
                         mov.s              ebp, edi                                      // 0x004493a2    8bef
                         call               _jmp_addr_0x00448f10                          // 0x004493a4    e867fbffff
                         add.s              esi, eax                                      // 0x004493a9    03f0
                         cmp                edi, 0x00c5afb4                               // 0x004493ab    81ffb4afc500
                         {disp8} jl         _jmp_addr_0x0044937c                          // 0x004493b1    7cc9
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf058]        // 0x004493b3    8b3d5850e800
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf064]          // 0x004493b9    a06450e800
                         and                edi, 0x0000ffff                               // 0x004493be    81e7ffff0000
                         shr                edi, 1                                        // 0x004493c4    d1ef
                         cmp                al, 0x10                                      // 0x004493c6    3c10
                         {disp8} jne        _jmp_addr_0x004493fb                          // 0x004493c8    7531
                         {disp8} mov        ax, word ptr [esp + 0x10]                     // 0x004493ca    668b442410
                         push               ecx                                           // 0x004493cf    51
                         mov.s              edx, esp                                      // 0x004493d0    8bd4
                         mov                word ptr [edx], ax                            // 0x004493d2    668902
                         xor.s              al, al                                        // 0x004493d5    32c0
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x004493d7    8d4c2424
                         {disp8} mov        byte ptr [edx + 0x02], al                     // 0x004493db    884202
                         call               _jmp_addr_0x00449650                          // 0x004493de    e86d020000
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004493e3    8b4c2420
                         push               0x0                                           // 0x004493e7    6a00
                         push               ecx                                           // 0x004493e9    51
                         push               esi                                           // 0x004493ea    56
                         push               edi                                           // 0x004493eb    57
                         push               esi                                           // 0x004493ec    56
                         push               0x0                                           // 0x004493ed    6a00
                         mov                ecx, 0x00e8586c                               // 0x004493ef    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x004493f4    e817953900
                         {disp8} jmp        _jmp_addr_0x0044941c                          // 0x004493f9    eb21
_jmp_addr_0x004493fb:    {disp8} mov        ax, word ptr [esp + 0x10]                     // 0x004493fb    668b442410
                         push               0x0                                           // 0x00449400    6a00
                         push               ecx                                           // 0x00449402    51
                         mov.s              edx, esp                                      // 0x00449403    8bd4
                         push               esi                                           // 0x00449405    56
                         push               edi                                           // 0x00449406    57
                         mov                word ptr [edx], ax                            // 0x00449407    668902
                         push               esi                                           // 0x0044940a    56
                         xor.s              al, al                                        // 0x0044940b    32c0
                         push               0x0                                           // 0x0044940d    6a00
                         mov                ecx, 0x00e8586c                               // 0x0044940f    b96c58e800
                         {disp8} mov        byte ptr [edx + 0x02], al                     // 0x00449414    884202
                         call               _jmp_addr_0x007e2b40                          // 0x00449417    e824973900
_jmp_addr_0x0044941c:    mov                ebp, 0x00c5a860                               // 0x0044941c    bd60a8c500
                         inc                esi                                           // 0x00449421    46
                         xor.s              ebx, ebx                                      // 0x00449422    33db
                         mov.s              edi, ebp                                      // 0x00449424    8bfd
_jmp_addr_0x00449426:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00449426    8b4c241c
                         push               esi                                           // 0x0044942a    56
                         push               ecx                                           // 0x0044942b    51
                         {disp32} lea       edx, dword ptr [ebx + 0x00000200]             // 0x0044942c    8d9300020000
                         push               edx                                           // 0x00449432    52
                         call               _jmp_addr_0x00449080                          // 0x00449433    e848fcffff
                         add                esp, 0x04                                     // 0x00449438    83c404
                         push               eax                                           // 0x0044943b    50
                         mov.s              ecx, ebp                                      // 0x0044943c    8bcd
                         call               _jmp_addr_0x00448c40                          // 0x0044943e    e8fdf7ffff
                         add                edi, 0x0000010c                               // 0x00449443    81c70c010000
                         mov.s              ecx, edi                                      // 0x00449449    8bcf
                         inc                ebx                                           // 0x0044944b    43
                         mov.s              ebp, edi                                      // 0x0044944c    8bef
                         call               _jmp_addr_0x00448f10                          // 0x0044944e    e8bdfaffff
                         add.s              esi, eax                                      // 0x00449453    03f0
                         cmp                edi, 0x00c5ac90                               // 0x00449455    81ff90acc500
                         {disp8} jl         _jmp_addr_0x00449426                          // 0x0044945b    7cc9
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf058]        // 0x0044945d    8b3d5850e800
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf064]          // 0x00449463    a06450e800
                         and                edi, 0x0000ffff                               // 0x00449468    81e7ffff0000
                         shr                edi, 1                                        // 0x0044946e    d1ef
                         cmp                al, 0x10                                      // 0x00449470    3c10
                         {disp8} jne        _jmp_addr_0x004494a5                          // 0x00449472    7531
                         push               ecx                                           // 0x00449474    51
                         {disp8} mov        cx, word ptr [esp + 0x14]                     // 0x00449475    668b4c2414
                         mov.s              eax, esp                                      // 0x0044947a    8bc4
                         mov                word ptr [eax], cx                            // 0x0044947c    668908
                         xor.s              bl, bl                                        // 0x0044947f    32db
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00449481    8d4c2424
                         {disp8} mov        byte ptr [eax + 0x02], bl                     // 0x00449485    885802
                         call               _jmp_addr_0x00449650                          // 0x00449488    e8c3010000
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0044948d    8b542420
                         push               0x0                                           // 0x00449491    6a00
                         push               edx                                           // 0x00449493    52
                         push               esi                                           // 0x00449494    56
                         push               edi                                           // 0x00449495    57
                         push               esi                                           // 0x00449496    56
                         push               0x0                                           // 0x00449497    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449499    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x0044949e    e86d943900
                         {disp8} jmp        _jmp_addr_0x004494c6                          // 0x004494a3    eb21
_jmp_addr_0x004494a5:    push               0x0                                           // 0x004494a5    6a00
                         push               ecx                                           // 0x004494a7    51
                         {disp8} mov        cx, word ptr [esp + 0x18]                     // 0x004494a8    668b4c2418
                         mov.s              eax, esp                                      // 0x004494ad    8bc4
                         push               esi                                           // 0x004494af    56
                         push               edi                                           // 0x004494b0    57
                         mov                word ptr [eax], cx                            // 0x004494b1    668908
                         push               esi                                           // 0x004494b4    56
                         xor.s              bl, bl                                        // 0x004494b5    32db
                         push               0x0                                           // 0x004494b7    6a00
                         mov                ecx, 0x00e8586c                               // 0x004494b9    b96c58e800
                         {disp8} mov        byte ptr [eax + 0x02], bl                     // 0x004494be    885802
                         call               _jmp_addr_0x007e2b40                          // 0x004494c1    e87a963900
_jmp_addr_0x004494c6:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x004494c6    a15850e800
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf064]          // 0x004494cb    8a0d6450e800
                         and                eax, 0x0000ffff                               // 0x004494d1    25ffff0000
                         inc                esi                                           // 0x004494d6    46
                         shr                eax, 1                                        // 0x004494d7    d1e8
                         cmp                cl, 0x10                                      // 0x004494d9    80f910
                         {disp8} jne        _jmp_addr_0x00449542                          // 0x004494dc    7564
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]          // 0x004494de    8a0dcb50e800
                         xor.s              dl, dl                                        // 0x004494e4    32d2
                         shr                dl, cl                                        // 0x004494e6    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]          // 0x004494e8    8a0dce50e800
                         xor.s              bl, bl                                        // 0x004494ee    32db
                         push               0x0                                           // 0x004494f0    6a00
                         movzx              dx, dl                                        // 0x004494f2    660fb6d2
                         shl                edx, cl                                       // 0x004494f6    d3e2
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]          // 0x004494f8    8a0dcc50e800
                         shr                bl, cl                                        // 0x004494fe    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]          // 0x00449500    8a0dcf50e800
                         movzx              di, bl                                        // 0x00449506    660fb6fb
                         or                 bl, 0xff                                      // 0x0044950a    80cbff
                         shl                edi, cl                                       // 0x0044950d    d3e7
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]          // 0x0044950f    8a0dcd50e800
                         shr                bl, cl                                        // 0x00449515    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]          // 0x00449517    8a0dd050e800
                         add.s              edx, edi                                      // 0x0044951d    03d7
                         movzx              di, bl                                        // 0x0044951f    660fb6fb
                         shl                edi, cl                                       // 0x00449523    d3e7
                         add.s              edx, edi                                      // 0x00449525    03d7
                         {disp8} mov        word ptr [esp + 0x24], dx                     // 0x00449527    6689542424
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0044952c    8b4c2424
                         push               ecx                                           // 0x00449530    51
                         push               esi                                           // 0x00449531    56
                         push               eax                                           // 0x00449532    50
                         push               esi                                           // 0x00449533    56
                         push               0x0                                           // 0x00449534    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449536    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x0044953b    e8d0933900
                         {disp8} jmp        _jmp_addr_0x00449561                          // 0x00449540    eb1f
_jmp_addr_0x00449542:    push               0x0                                           // 0x00449542    6a00
                         push               ecx                                           // 0x00449544    51
                         {disp8} mov        cx, word ptr [esp + 0x18]                     // 0x00449545    668b4c2418
                         mov.s              edx, esp                                      // 0x0044954a    8bd4
                         push               esi                                           // 0x0044954c    56
                         push               eax                                           // 0x0044954d    50
                         mov                word ptr [edx], cx                            // 0x0044954e    66890a
                         push               esi                                           // 0x00449551    56
                         push               0x0                                           // 0x00449552    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449554    b96c58e800
                         {disp8} mov        byte ptr [edx + 0x02], bl                     // 0x00449559    885a02
                         call               _jmp_addr_0x007e2b40                          // 0x0044955c    e8df953900
_jmp_addr_0x00449561:    mov                ebx, 0x00c5a320                               // 0x00449561    bb20a3c500
                         inc                esi                                           // 0x00449566    46
                         xor.s              ebp, ebp                                      // 0x00449567    33ed
                         mov.s              edi, ebx                                      // 0x00449569    8bfb
_jmp_addr_0x0044956b:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0044956b    8b54241c
                         mov.s              ecx, ebp                                      // 0x0044956f    8bcd
                         mov                eax, 0x00000001                               // 0x00449571    b801000000
                         shl                eax, cl                                       // 0x00449576    d3e0
                         push               esi                                           // 0x00449578    56
                         push               edx                                           // 0x00449579    52
                         push               eax                                           // 0x0044957a    50
                         call               _jmp_addr_0x004490a0                          // 0x0044957b    e820fbffff
                         add                esp, 0x04                                     // 0x00449580    83c404
                         push               eax                                           // 0x00449583    50
                         mov.s              ecx, ebx                                      // 0x00449584    8bcb
                         call               _jmp_addr_0x00448c40                          // 0x00449586    e8b5f6ffff
                         add                edi, 0x0000010c                               // 0x0044958b    81c70c010000
                         mov.s              ecx, edi                                      // 0x00449591    8bcf
                         inc                ebp                                           // 0x00449593    45
                         mov.s              ebx, edi                                      // 0x00449594    8bdf
                         call               _jmp_addr_0x00448f10                          // 0x00449596    e875f9ffff
                         add.s              esi, eax                                      // 0x0044959b    03f0
                         cmp                edi, 0x00c5a85c                               // 0x0044959d    81ff5ca8c500
                         {disp8} jl         _jmp_addr_0x0044956b                          // 0x004495a3    7cc6
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x004495a5    a15850e800
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf064]          // 0x004495aa    8a0d6450e800
                         and                eax, 0x0000ffff                               // 0x004495b0    25ffff0000
                         shr                eax, 1                                        // 0x004495b5    d1e8
                         cmp                cl, 0x10                                      // 0x004495b7    80f910
                         {disp8} jne        _jmp_addr_0x00449626                          // 0x004495ba    756a
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]          // 0x004495bc    8a0dcb50e800
                         xor.s              dl, dl                                        // 0x004495c2    32d2
                         shr                dl, cl                                        // 0x004495c4    d2ea
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]          // 0x004495c6    8a0dce50e800
                         xor.s              bl, bl                                        // 0x004495cc    32db
                         push               0x0                                           // 0x004495ce    6a00
                         movzx              dx, dl                                        // 0x004495d0    660fb6d2
                         shl                edx, cl                                       // 0x004495d4    d3e2
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]          // 0x004495d6    8a0dcc50e800
                         shr                bl, cl                                        // 0x004495dc    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]          // 0x004495de    8a0dcf50e800
                         movzx              di, bl                                        // 0x004495e4    660fb6fb
                         or                 bl, 0xff                                      // 0x004495e8    80cbff
                         shl                edi, cl                                       // 0x004495eb    d3e7
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]          // 0x004495ed    8a0dcd50e800
                         shr                bl, cl                                        // 0x004495f3    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]          // 0x004495f5    8a0dd050e800
                         add.s              edx, edi                                      // 0x004495fb    03d7
                         movzx              di, bl                                        // 0x004495fd    660fb6fb
                         shl                edi, cl                                       // 0x00449601    d3e7
                         add.s              edx, edi                                      // 0x00449603    03d7
                         {disp8} mov        word ptr [esp + 0x20], dx                     // 0x00449605    6689542420
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0044960a    8b4c2420
                         push               ecx                                           // 0x0044960e    51
                         push               esi                                           // 0x0044960f    56
                         push               eax                                           // 0x00449610    50
                         push               esi                                           // 0x00449611    56
                         push               0x0                                           // 0x00449612    6a00
                         mov                ecx, 0x00e8586c                               // 0x00449614    b96c58e800
                         call               _jmp_addr_0x007e2910                          // 0x00449619    e8f2923900
                         pop                edi                                           // 0x0044961e    5f
                         pop                esi                                           // 0x0044961f    5e
                         pop                ebp                                           // 0x00449620    5d
                         pop                ebx                                           // 0x00449621    5b
                         add                esp, 0x08                                     // 0x00449622    83c408
                         ret                                                              // 0x00449625    c3
_jmp_addr_0x00449626:    push               0x0                                           // 0x00449626    6a00
                         push               ecx                                           // 0x00449628    51
                         {disp8} mov        cx, word ptr [esp + 0x18]                     // 0x00449629    668b4c2418
                         mov.s              edx, esp                                      // 0x0044962e    8bd4
                         push               esi                                           // 0x00449630    56
                         mov                word ptr [edx], cx                            // 0x00449631    66890a
                         push               eax                                           // 0x00449634    50
                         xor.s              cl, cl                                        // 0x00449635    32c9
                         push               esi                                           // 0x00449637    56
                         {disp8} mov        byte ptr [edx + 0x02], cl                     // 0x00449638    884a02
                         push               0x0                                           // 0x0044963b    6a00
                         mov                ecx, 0x00e8586c                               // 0x0044963d    b96c58e800
                         call               _jmp_addr_0x007e2b40                          // 0x00449642    e8f9943900
                         pop                edi                                           // 0x00449647    5f
                         pop                esi                                           // 0x00449648    5e
                         pop                ebp                                           // 0x00449649    5d
                         pop                ebx                                           // 0x0044964a    5b
                         add                esp, 0x08                                     // 0x0044964b    83c408
                         ret                                                              // 0x0044964e    c3
                         nop                                                              // 0x0044964f    90
_jmp_addr_0x00449650:    {disp8} mov        al, byte ptr [esp + 0x06]                     // 0x00449650    8a442406
                         push               ebx                                           // 0x00449654    53
                         push               esi                                           // 0x00449655    56
                         mov.s              esi, ecx                                      // 0x00449656    8bf1
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cb]          // 0x00449658    8a0dcb50e800
                         shr                al, cl                                        // 0x0044965e    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0ce]          // 0x00449660    8a0dce50e800
                         xor.s              dx, dx                                        // 0x00449666    6633d2
                         push               edi                                           // 0x00449669    57
                         mov.s              dl, al                                        // 0x0044966a    8ad0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0044966c    8b442410
                         mov.s              bl, ah                                        // 0x00449670    8adc
                         shl                edx, cl                                       // 0x00449672    d3e2
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cc]          // 0x00449674    8a0dcc50e800
                         shr                bl, cl                                        // 0x0044967a    d2eb
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cf]          // 0x0044967c    8a0dcf50e800
                         movzx              di, bl                                        // 0x00449682    660fb6fb
                         shl                edi, cl                                       // 0x00449686    d3e7
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0cd]          // 0x00449688    8a0dcd50e800
                         shr                al, cl                                        // 0x0044968e    d2e8
                         {disp32} mov       cl, byte ptr [data_bytes + 0x4bf0d0]          // 0x00449690    8a0dd050e800
                         add.s              edx, edi                                      // 0x00449696    03d7
                         pop                edi                                           // 0x00449698    5f
                         movzx              ax, al                                        // 0x00449699    660fb6c0
                         shl                eax, cl                                       // 0x0044969d    d3e0
                         add.s              edx, eax                                      // 0x0044969f    03d0
                         mov                word ptr [esi], dx                            // 0x004496a1    668916
                         pop                esi                                           // 0x004496a4    5e
                         pop                ebx                                           // 0x004496a5    5b
                         ret                0x0004                                        // 0x004496a6    c20400
                         nop                                                              // 0x004496a9    90
                         nop                                                              // 0x004496aa    90
                         nop                                                              // 0x004496ab    90
                         nop                                                              // 0x004496ac    90
                         nop                                                              // 0x004496ad    90
                         nop                                                              // 0x004496ae    90
                         nop                                                              // 0x004496af    90
                         {disp32} mov       al, byte ptr [data_bytes + 0x293e7c]          // 0x004496b0    a07c9ec500
                         sub                esp, 0x10                                     // 0x004496b5    83ec10
                         test               al, 0x01                                      // 0x004496b8    a801
                         {disp8} jne        _jmp_addr_0x004496d4                          // 0x004496ba    7518
                         mov.s              dl, al                                        // 0x004496bc    8ad0
                         or                 dl, 1                                         // 0x004496be    80ca01
                         push               0x00449ea0                                    // 0x004496c1    68a09e4400
                         {disp32} mov       byte ptr [data_bytes + 0x293e7c], dl          // 0x004496c6    88157c9ec500
                         call               _atexit                                       // 0x004496cc    e8c0c03700
                         add                esp, 0x04                                     // 0x004496d1    83c404
_jmp_addr_0x004496d4:    {disp32} mov       al, byte ptr [data_bytes + 0x293e7c]          // 0x004496d4    a07c9ec500
                         test               al, 0x02                                      // 0x004496d9    a802
                         {disp8} jne        _jmp_addr_0x004496f5                          // 0x004496db    7518
                         mov.s              dl, al                                        // 0x004496dd    8ad0
                         or                 dl, 2                                         // 0x004496df    80ca02
                         push               0x00449e90                                    // 0x004496e2    68909e4400
                         {disp32} mov       byte ptr [data_bytes + 0x293e7c], dl          // 0x004496e7    88157c9ec500
                         call               _atexit                                       // 0x004496ed    e89fc03700
                         add                esp, 0x04                                     // 0x004496f2    83c404
_jmp_addr_0x004496f5:    {disp32} mov       cl, byte ptr [data_bytes + 0x293e7c]          // 0x004496f5    8a0d7c9ec500
                         mov                al, 0x04                                      // 0x004496fb    b004
                         test               al, cl                                        // 0x004496fd    84c8
                         {disp8} jne        _jmp_addr_0x00449718                          // 0x004496ff    7517
                         mov.s              dl, cl                                        // 0x00449701    8ad1
                         or.s               dl, al                                        // 0x00449703    0ad0
                         push               0x00449e80                                    // 0x00449705    68809e4400
                         {disp32} mov       byte ptr [data_bytes + 0x293e7c], dl          // 0x0044970a    88157c9ec500
                         call               _atexit                                       // 0x00449710    e87cc03700
                         add                esp, 0x04                                     // 0x00449715    83c404
_jmp_addr_0x00449718:    {disp32} mov       cl, byte ptr [data_bytes + 0x293e7c]          // 0x00449718    8a0d7c9ec500
                         mov                al, 0x08                                      // 0x0044971e    b008
                         test               al, cl                                        // 0x00449720    84c8
                         {disp8} jne        _jmp_addr_0x0044973b                          // 0x00449722    7517
                         mov.s              dl, cl                                        // 0x00449724    8ad1
                         or.s               dl, al                                        // 0x00449726    0ad0
                         push               0x00449e70                                    // 0x00449728    68709e4400
                         {disp32} mov       byte ptr [data_bytes + 0x293e7c], dl          // 0x0044972d    88157c9ec500
                         call               _atexit                                       // 0x00449733    e859c03700
                         add                esp, 0x04                                     // 0x00449738    83c404
_jmp_addr_0x0044973b:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0044973b    8b442414
                         push               ebx                                           // 0x0044973f    53
                         push               ebp                                           // 0x00449740    55
                         xor.s              ebx, ebx                                      // 0x00449741    33db
                         cmp                eax, 0x0d                                     // 0x00449743    83f80d
                         push               esi                                           // 0x00449746    56
                         push               edi                                           // 0x00449747    57
                         {disp8} mov        dword ptr [esp + 0x10], ebx                   // 0x00449748    895c2410
                         {disp32} ja        _jmp_addr_0x00449ba6                          // 0x0044974c    0f8754040000
                         jmp                dword ptr [eax*4 + 0x449da8]                  // 0x00449752    ff2485a89d4400
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdb8]        // 0x00449759    8b0db81dea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdbc]        // 0x0044975f    8b15bc1dea00
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00449765    8b44242c
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00449769    89542418
                         {disp32} mov       esi, dword ptr [__imp__SendMessageA@4]        // 0x0044976d    8b35dc978a00
                         {disp32} mov       dword ptr [data_bytes + 0x293e74], edx        // 0x00449773    8915749ec500
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00449779    894c2414
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0044977d    8b0dc01dea00
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00449783    894c241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00449787    8b54241c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0044978b    8b4c2414
                         {disp32} mov       dword ptr [data_bytes + 0x293e78], edx        // 0x0044978f    8915789ec500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc4]        // 0x00449795    8b15c41dea00
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0044979b    89542414
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc8]        // 0x0044979f    8b15c81dea00
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004497a5    89542418
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdcc]        // 0x004497a9    8b15cc1dea00
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x004497af    8954241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x004497b3    8b542414
                         {disp32} mov       dword ptr [data_bytes + 0x293e60], edx        // 0x004497b7    8915609ec500
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004497bd    8b542418
                         push               ecx                                           // 0x004497c1    51
                         {disp32} mov       dword ptr [data_bytes + 0x293e64], edx        // 0x004497c2    8915649ec500
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x004497c8    8b542420
                         push               ebx                                           // 0x004497cc    53
                         {disp32} mov       dword ptr [data_bytes + 0x293e68], edx        // 0x004497cd    8915689ec500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdd0]        // 0x004497d3    8b15d01dea00
                         push               0x00000501                                    // 0x004497d9    6801050000
                         push               eax                                           // 0x004497de    50
                         {disp32} mov       dword ptr [data_bytes + 0x293e3c], eax        // 0x004497df    a33c9ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e70], ecx        // 0x004497e4    890d709ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e38], edx        // 0x004497ea    8915389ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e80], eax        // 0x004497f0    a3809ec500
                         call               esi                                           // 0x004497f5    ffd6
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e74]        // 0x004497f7    a1749ec500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e3c]        // 0x004497fc    8b0d3c9ec500
                         push               eax                                           // 0x00449802    50
                         push               ebx                                           // 0x00449803    53
                         push               0x00000502                                    // 0x00449804    6802050000
                         push               ecx                                           // 0x00449809    51
                         call               esi                                           // 0x0044980a    ffd6
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e78]        // 0x0044980c    8b15789ec500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e3c]        // 0x00449812    a13c9ec500
                         push               edx                                           // 0x00449817    52
                         push               ebx                                           // 0x00449818    53
                         push               0x00000503                                    // 0x00449819    6803050000
                         push               eax                                           // 0x0044981e    50
                         call               esi                                           // 0x0044981f    ffd6
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e60]        // 0x00449821    8b0d609ec500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e3c]        // 0x00449827    8b153c9ec500
                         push               ecx                                           // 0x0044982d    51
                         push               ebx                                           // 0x0044982e    53
                         push               0x00000504                                    // 0x0044982f    6804050000
                         push               edx                                           // 0x00449834    52
                         call               esi                                           // 0x00449835    ffd6
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e64]        // 0x00449837    a1649ec500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e3c]        // 0x0044983c    8b0d3c9ec500
                         push               eax                                           // 0x00449842    50
                         push               ebx                                           // 0x00449843    53
                         push               0x00000505                                    // 0x00449844    6805050000
                         push               ecx                                           // 0x00449849    51
                         call               esi                                           // 0x0044984a    ffd6
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e68]        // 0x0044984c    8b15689ec500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e3c]        // 0x00449852    a13c9ec500
                         push               edx                                           // 0x00449857    52
                         push               ebx                                           // 0x00449858    53
                         push               0x00000506                                    // 0x00449859    6806050000
                         push               eax                                           // 0x0044985e    50
                         call               esi                                           // 0x0044985f    ffd6
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e38]        // 0x00449861    8b0d389ec500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e3c]        // 0x00449867    8b153c9ec500
                         push               ecx                                           // 0x0044986d    51
                         push               ebx                                           // 0x0044986e    53
                         push               0x00000507                                    // 0x0044986f    6807050000
                         push               edx                                           // 0x00449874    52
                         call               esi                                           // 0x00449875    ffd6
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449877    e92a030000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0044987c    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e70], eax        // 0x00449880    a3709ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449885    e91c030000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0044988a    8b4c242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e74], ecx        // 0x0044988e    890d749ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449894    e90d030000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00449899    8b54242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e78], edx        // 0x0044989d    8915789ec500
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000001            // 0x004498a3    c744241001000000
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x004498ab    e9f6020000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x004498b0    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e60], eax        // 0x004498b4    a3609ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x004498b9    e9e8020000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x004498be    8b4c242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e64], ecx        // 0x004498c2    890d649ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x004498c8    e9d9020000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x004498cd    8b54242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e68], edx        // 0x004498d1    8915689ec500
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000002            // 0x004498d7    c744241002000000
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x004498df    e9c2020000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x004498e4    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e38], eax        // 0x004498e8    a3389ec500
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000003            // 0x004498ed    c744241003000000
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x004498f5    e9ac020000
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004498fa    8b442428
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x004498fe    8b54242c
                         cmp.s              eax, ebx                                      // 0x00449902    3bc3
                         setne              cl                                            // 0x00449904    0f95c1
                         {disp32} mov       byte ptr [data_bytes + 0x293e34], cl          // 0x00449907    880d349ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e30], edx        // 0x0044990d    8915309ec500
                         {disp32} mov       byte ptr [data_bytes + 0x293d30], bl          // 0x00449913    881d309dc500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449919    e988020000
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0044991e    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e50], eax        // 0x00449922    a3509ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449927    e97a020000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0044992c    8b4c242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e54], ecx        // 0x00449930    890d549ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449936    e96b020000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0044993b    8b54242c
                         {disp32} mov       dword ptr [data_bytes + 0x293e58], edx        // 0x0044993f    8915589ec500
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449945    e95c020000
                         or                 ecx, 0xffffffff                               // 0x0044994a    83c9ff
                         xor.s              eax, eax                                      // 0x0044994d    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x2c]                   // 0x0044994f    8d7c242c
                         repne scasb                                                      // 0x00449953    f2ae
                         not                ecx                                           // 0x00449955    f7d1
                         sub.s              edi, ecx                                      // 0x00449957    2bf9
                         mov.s              edx, ecx                                      // 0x00449959    8bd1
                         or                 ecx, 0xffffffff                               // 0x0044995b    83c9ff
                         mov.s              esi, edi                                      // 0x0044995e    8bf7
                         mov                edi, 0x00c59d30                               // 0x00449960    bf309dc500
                         repne scasb                                                      // 0x00449965    f2ae
                         mov.s              ecx, edx                                      // 0x00449967    8bca
                         shr                ecx, 2                                        // 0x00449969    c1e902
                         dec                edi                                           // 0x0044996c    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0044996d    f3a5
                         mov.s              ecx, edx                                      // 0x0044996f    8bca
                         and                ecx, 0x03                                     // 0x00449971    83e103
                         rep movsb                                                        // 0x00449974    f3a4
                         {disp32} jmp       _jmp_addr_0x00449ba6                          // 0x00449976    e92b020000
                         cmp                byte ptr [data_bytes + 0x293e34], bl          // 0x0044997b    381d349ec500
                         {disp32} mov       esi, dword ptr [data_bytes + 0x294fe8]        // 0x00449981    8b35e8afc500
                         {disp32} je        _jmp_addr_0x00449a20                          // 0x00449987    0f8493000000
                         mov.s              ecx, esi                                      // 0x0044998d    8bce
                         cmp.s              ecx, ebx                                      // 0x0044998f    3bcb
                         {disp32} je        _jmp_addr_0x00449a20                          // 0x00449991    0f8489000000
_jmp_addr_0x00449997:    {disp32} fld       dword ptr [ecx + 0x00000088]                  // 0x00449997    d98188000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e40]             // 0x0044999d    d825409ec500
                         {disp32} fld       dword ptr [ecx + 0x0000008c]                  // 0x004499a3    d9818c000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e44]             // 0x004499a9    d825449ec500
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x004499af    d98190000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e48]             // 0x004499b5    d825489ec500
                         fld                st(0)                                         // 0x004499bb    d9c0
                         fmul               st, st(1)                                     // 0x004499bd    d8c9
                         fld                st(2)                                         // 0x004499bf    d9c2
                         fmul               st, st(3)                                     // 0x004499c1    d8cb
                         faddp              st(1), st                                     // 0x004499c3    dec1
                         fld                st(3)                                         // 0x004499c5    d9c3
                         fmul               st, st(4)                                     // 0x004499c7    d8cc
                         faddp              st(1), st                                     // 0x004499c9    dec1
                         fsqrt                                                            // 0x004499cb    d9fa
                         fstp               st(3)                                         // 0x004499cd    dddb
                         fstp               st(0)                                         // 0x004499cf    ddd8
                         fstp               st(0)                                         // 0x004499d1    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x004499d3    d81d40588c00
                         fnstsw             ax                                            // 0x004499d9    dfe0
                         test               ah, 0x01                                      // 0x004499db    f6c401
                         {disp8} jne        _jmp_addr_0x004499e8                          // 0x004499de    7508
                         mov                ecx, dword ptr [ecx]                          // 0x004499e0    8b09
                         cmp.s              ecx, ebx                                      // 0x004499e2    3bcb
                         {disp8} jne        _jmp_addr_0x00449997                          // 0x004499e4    75b1
                         {disp8} jmp        _jmp_addr_0x00449a20                          // 0x004499e6    eb38
_jmp_addr_0x004499e8:    cmp.s              ecx, ebx                                      // 0x004499e8    3bcb
                         {disp8} je         _jmp_addr_0x00449a20                          // 0x004499ea    7434
                         cmp.s              esi, ecx                                      // 0x004499ec    3bf1
                         {disp8} jne        _jmp_addr_0x004499f9                          // 0x004499ee    7509
                         mov                eax, dword ptr [ecx]                          // 0x004499f0    8b01
                         {disp32} mov       dword ptr [data_bytes + 0x294fe8], eax        // 0x004499f2    a3e8afc500
                         {disp8} jmp        _jmp_addr_0x00449a11                          // 0x004499f7    eb18
_jmp_addr_0x004499f9:    mov.s              eax, esi                                      // 0x004499f9    8bc6
                         cmp.s              eax, ebx                                      // 0x004499fb    3bc3
                         {disp8} je         _jmp_addr_0x00449a11                          // 0x004499fd    7412
_jmp_addr_0x004499ff:    mov                edx, dword ptr [eax]                          // 0x004499ff    8b10
                         cmp.s              edx, ecx                                      // 0x00449a01    3bd1
                         {disp8} je         _jmp_addr_0x00449a0d                          // 0x00449a03    7408
                         mov.s              eax, edx                                      // 0x00449a05    8bc2
                         cmp.s              eax, ebx                                      // 0x00449a07    3bc3
                         {disp8} jne        _jmp_addr_0x004499ff                          // 0x00449a09    75f4
                         {disp8} jmp        _jmp_addr_0x00449a11                          // 0x00449a0b    eb04
_jmp_addr_0x00449a0d:    mov                edx, dword ptr [ecx]                          // 0x00449a0d    8b11
                         mov                dword ptr [eax], edx                          // 0x00449a0f    8910
_jmp_addr_0x00449a11:    push               ecx                                           // 0x00449a11    51
                         call               ??3@YAXPAX@Z                                  // 0x00449a12    e881543600
                         {disp32} mov       esi, dword ptr [data_bytes + 0x294fe8]        // 0x00449a17    8b35e8afc500
                         add                esp, 0x04                                     // 0x00449a1d    83c404
_jmp_addr_0x00449a20:    mov.s              ecx, esi                                      // 0x00449a20    8bce
                         cmp.s              ecx, ebx                                      // 0x00449a22    3bcb
                         {disp8} je         _jmp_addr_0x00449a75                          // 0x00449a24    744f
_jmp_addr_0x00449a26:    {disp32} fld       dword ptr [ecx + 0x00000088]                  // 0x00449a26    d98188000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e50]             // 0x00449a2c    d825509ec500
                         {disp32} fld       dword ptr [ecx + 0x0000008c]                  // 0x00449a32    d9818c000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e54]             // 0x00449a38    d825549ec500
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x00449a3e    d98190000000
                         {disp32} fsub      dword ptr [data_bytes + 0x293e58]             // 0x00449a44    d825589ec500
                         fld                st(0)                                         // 0x00449a4a    d9c0
                         fmul               st, st(1)                                     // 0x00449a4c    d8c9
                         fld                st(2)                                         // 0x00449a4e    d9c2
                         fmul               st, st(3)                                     // 0x00449a50    d8cb
                         faddp              st(1), st                                     // 0x00449a52    dec1
                         fld                st(3)                                         // 0x00449a54    d9c3
                         fmul               st, st(4)                                     // 0x00449a56    d8cc
                         faddp              st(1), st                                     // 0x00449a58    dec1
                         fsqrt                                                            // 0x00449a5a    d9fa
                         fstp               st(3)                                         // 0x00449a5c    dddb
                         fstp               st(0)                                         // 0x00449a5e    ddd8
                         fstp               st(0)                                         // 0x00449a60    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x00449a62    d81d40588c00
                         fnstsw             ax                                            // 0x00449a68    dfe0
                         test               ah, 0x01                                      // 0x00449a6a    f6c401
                         {disp8} jne        _jmp_addr_0x00449aa4                          // 0x00449a6d    7535
                         mov                ecx, dword ptr [ecx]                          // 0x00449a6f    8b09
                         cmp.s              ecx, ebx                                      // 0x00449a71    3bcb
                         {disp8} jne        _jmp_addr_0x00449a26                          // 0x00449a73    75b1
_jmp_addr_0x00449a75:    cmp.s              esi, ebx                                      // 0x00449a75    3bf3
                         {disp32} mov       edi, dword ptr [data_bytes + 0x293e30]        // 0x00449a77    8b3d309ec500
                         {disp8} je         _jmp_addr_0x00449af9                          // 0x00449a7d    747a
_jmp_addr_0x00449a7f:    push               0x00c59e50                                    // 0x00449a7f    68509ec500
                         {disp32} lea       ecx, dword ptr [esi + 0x00000088]             // 0x00449a84    8d8e88000000
                         call               _jmp_addr_0x00449de0                          // 0x00449a8a    e851030000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1c840]             // 0x00449a8f    d81d40588c00
                         fnstsw             ax                                            // 0x00449a95    dfe0
                         test               ah, 0x01                                      // 0x00449a97    f6c401
                         {disp8} jne        _jmp_addr_0x00449af3                          // 0x00449a9a    7557
                         mov                esi, dword ptr [esi]                          // 0x00449a9c    8b36
                         cmp.s              esi, ebx                                      // 0x00449a9e    3bf3
                         {disp8} jne        _jmp_addr_0x00449a7f                          // 0x00449aa0    75dd
                         {disp8} jmp        _jmp_addr_0x00449af9                          // 0x00449aa2    eb55
_jmp_addr_0x00449aa4:    cmp.s              ecx, ebx                                      // 0x00449aa4    3bcb
                         {disp8} je         _jmp_addr_0x00449a75                          // 0x00449aa6    74cd
                         cmp.s              esi, ecx                                      // 0x00449aa8    3bf1
                         {disp8} jne        _jmp_addr_0x00449ac1                          // 0x00449aaa    7515
                         mov                eax, dword ptr [ecx]                          // 0x00449aac    8b01
                         push               ecx                                           // 0x00449aae    51
                         {disp32} mov       dword ptr [data_bytes + 0x294fe8], eax        // 0x00449aaf    a3e8afc500
                         call               ??3@YAXPAX@Z                                  // 0x00449ab4    e8df533600
                         add                esp, 0x04                                     // 0x00449ab9    83c404
                         {disp32} jmp       _jmp_addr_0x00449b7c                          // 0x00449abc    e9bb000000
_jmp_addr_0x00449ac1:    mov.s              eax, esi                                      // 0x00449ac1    8bc6
                         cmp.s              eax, ebx                                      // 0x00449ac3    3bc3
                         {disp8} je         _jmp_addr_0x00449ae5                          // 0x00449ac5    741e
_jmp_addr_0x00449ac7:    mov                edx, dword ptr [eax]                          // 0x00449ac7    8b10
                         cmp.s              edx, ecx                                      // 0x00449ac9    3bd1
                         {disp8} je         _jmp_addr_0x00449ae1                          // 0x00449acb    7414
                         mov.s              eax, edx                                      // 0x00449acd    8bc2
                         cmp.s              eax, ebx                                      // 0x00449acf    3bc3
                         {disp8} jne        _jmp_addr_0x00449ac7                          // 0x00449ad1    75f4
                         push               ecx                                           // 0x00449ad3    51
                         call               ??3@YAXPAX@Z                                  // 0x00449ad4    e8bf533600
                         add                esp, 0x04                                     // 0x00449ad9    83c404
                         {disp32} jmp       _jmp_addr_0x00449b7c                          // 0x00449adc    e99b000000
_jmp_addr_0x00449ae1:    mov                edx, dword ptr [ecx]                          // 0x00449ae1    8b11
                         mov                dword ptr [eax], edx                          // 0x00449ae3    8910
_jmp_addr_0x00449ae5:    push               ecx                                           // 0x00449ae5    51
                         call               ??3@YAXPAX@Z                                  // 0x00449ae6    e8ad533600
                         add                esp, 0x04                                     // 0x00449aeb    83c404
                         {disp32} jmp       _jmp_addr_0x00449b7c                          // 0x00449aee    e989000000
_jmp_addr_0x00449af3:    cmp.s              esi, ebx                                      // 0x00449af3    3bf3
                         mov.s              eax, esi                                      // 0x00449af5    8bc6
                         {disp8} jne        _jmp_addr_0x00449b1f                          // 0x00449af7    7526
_jmp_addr_0x00449af9:    push               0x00000160                                    // 0x00449af9    6860010000
                         push               0x009cdff8                                    // 0x00449afe    68f8df9c00
                         push               0x00000098                                    // 0x00449b03    6898000000
                         call               ___nw__FUl                                    // 0x00449b08    e8831c3900
                         add                esp, 0x0c                                     // 0x00449b0d    83c40c
                         cmp.s              eax, ebx                                      // 0x00449b10    3bc3
                         {disp8} je         _jmp_addr_0x00449b1d                          // 0x00449b12    7409
                         mov.s              ecx, eax                                      // 0x00449b14    8bc8
                         call               _jmp_addr_0x00449e10                          // 0x00449b16    e8f5020000
                         {disp8} jmp        _jmp_addr_0x00449b1f                          // 0x00449b1b    eb02
_jmp_addr_0x00449b1d:    xor.s              eax, eax                                      // 0x00449b1d    33c0
_jmp_addr_0x00449b1f:    {disp32} mov       edx, dword ptr [data_bytes + 0x293e50]        // 0x00449b1f    8b15509ec500
                         {disp32} lea       ecx, dword ptr [eax + 0x00000088]             // 0x00449b25    8d8888000000
                         mov                dword ptr [ecx], edx                          // 0x00449b2b    8911
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e54]        // 0x00449b2d    8b15549ec500
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x00449b33    895104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e58]        // 0x00449b36    8b15589ec500
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00449b3c    895108
                         {disp8} lea        edx, dword ptr [eax + 0x04]                   // 0x00449b3f    8d5004
                         {disp32} mov       dword ptr [eax + 0x00000094], 0x3f800000      // 0x00449b42    c780940000000000803f
                         {disp32} mov       dword ptr [eax + 0x00000084], edi             // 0x00449b4c    89b884000000
                         mov                eax, 0x00c59d30                               // 0x00449b52    b8309dc500
                         test               eax, eax                                      // 0x00449b57    85c0
                         mov                byte ptr [edx], bl                            // 0x00449b59    881a
                         {disp8} je         _jmp_addr_0x00449b7c                          // 0x00449b5b    741f
                         or                 ecx, 0xffffffff                               // 0x00449b5d    83c9ff
                         mov.s              edi, eax                                      // 0x00449b60    8bf8
                         xor.s              eax, eax                                      // 0x00449b62    33c0
                         repne scasb                                                      // 0x00449b64    f2ae
                         not                ecx                                           // 0x00449b66    f7d1
                         sub.s              edi, ecx                                      // 0x00449b68    2bf9
                         mov.s              eax, ecx                                      // 0x00449b6a    8bc1
                         mov.s              esi, edi                                      // 0x00449b6c    8bf7
                         shr                ecx, 2                                        // 0x00449b6e    c1e902
                         mov.s              edi, edx                                      // 0x00449b71    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00449b73    f3a5
                         mov.s              ecx, eax                                      // 0x00449b75    8bc8
                         and                ecx, 0x03                                     // 0x00449b77    83e103
                         rep movsb                                                        // 0x00449b7a    f3a4
_jmp_addr_0x00449b7c:    cmp                byte ptr [data_bytes + 0x293e34], bl          // 0x00449b7c    381d349ec500
                         {disp8} je         _jmp_addr_0x00449ba6                          // 0x00449b82    7422
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e50]        // 0x00449b84    8b0d509ec500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e54]        // 0x00449b8a    8b15549ec500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e58]        // 0x00449b90    a1589ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e40], ecx        // 0x00449b95    890d409ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e44], edx        // 0x00449b9b    8915449ec500
                         {disp32} mov       dword ptr [data_bytes + 0x293e48], eax        // 0x00449ba1    a3489ec500
_jmp_addr_0x00449ba6:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00449ba6    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00449bac    e8cf251000
                         mov.s              ebp, eax                                      // 0x00449bb1    8be8
                         cmp.s              ebp, ebx                                      // 0x00449bb3    3beb
                         {disp32} je        _jmp_addr_0x00449d9c                          // 0x00449bb5    0f84e1010000
                         {disp8} mov        eax, dword ptr [ebp + 0x58]                   // 0x00449bbb    8b4558
                         cmp.s              eax, ebx                                      // 0x00449bbe    3bc3
                         {disp8} jge        _jmp_addr_0x00449bc6                          // 0x00449bc0    7d04
                         xor.s              eax, eax                                      // 0x00449bc2    33c0
                         {disp8} jmp        _jmp_addr_0x00449bca                          // 0x00449bc4    eb04
_jmp_addr_0x00449bc6:    {disp8} mov        eax, dword ptr [ebp + eax * 0x4 + 0x28]       // 0x00449bc6    8b448528
_jmp_addr_0x00449bca:    push               ebx                                           // 0x00449bca    53
                         push               0x009cd3b0                                    // 0x00449bcb    68b0d39c00
                         push               0x009cd390                                    // 0x00449bd0    6890d39c00
                         push               ebx                                           // 0x00449bd5    53
                         push               eax                                           // 0x00449bd6    50
                         call               ___RTDynamicCast                              // 0x00449bd7    e83dbe3700
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00449bdc    8b0d5c19d000
                         add                esp, 0x14                                     // 0x00449be2    83c414
                         mov.s              edi, eax                                      // 0x00449be5    8bf8
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00449be7    e894251000
                         test               eax, eax                                      // 0x00449bec    85c0
                         {disp32} je        _jmp_addr_0x00449d9c                          // 0x00449bee    0f84a8010000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00449bf4    8b442410
                         cmp                eax, 0x01                                     // 0x00449bf8    83f801
                         {disp32} jne       _jmp_addr_0x00449ca6                          // 0x00449bfb    0f85a5000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00449c01    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00449c07    e874251000
                         {disp32} fld       dword ptr [data_bytes + 0x293e70]             // 0x00449c0c    d905709ec500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e70]        // 0x00449c12    8b0d709ec500
                         mov.s              esi, eax                                      // 0x00449c18    8bf0
                         add                esi, 0x00000118                               // 0x00449c1a    81c618010000
                         fst                dword ptr [esi]                               // 0x00449c20    d916
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00449c22    894e04
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00449c25    d95e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x00449c28    895e18
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x00449c2b    895e14
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x00449c2e    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x00449c31    895e28
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x00449c34    895e10
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x00449c37    895e24
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00449c3a    895e0c
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00449c3d    895e20
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00449c40    895e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e74]        // 0x00449c43    8b15749ec500
                         push               edx                                           // 0x00449c49    52
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                   // 0x00449c4a    8d4e30
                         call               @SetPosition__6ZoomerFf@12                    // 0x00449c4d    e86e7effff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e78]        // 0x00449c52    a1789ec500
                         push               eax                                           // 0x00449c57    50
                         {disp8} lea        ecx, dword ptr [esi + 0x60]                   // 0x00449c58    8d4e60
                         call               @SetPosition__6ZoomerFf@12                    // 0x00449c5b    e8607effff
                         cmp.s              edi, ebx                                      // 0x00449c60    3bfb
                         {disp32} je        _jmp_addr_0x00449d9c                          // 0x00449c62    0f8434010000
                         {disp32} fld       dword ptr [ebp + 0x0000008c]                  // 0x00449c68    d9858c000000
                         mov                edx, dword ptr [edi]                          // 0x00449c6e    8b17
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00449c70    d95c2414
                         {disp32} fld       dword ptr [ebp + 0x000000bc]                  // 0x00449c74    d985bc000000
                         push               0x3e99999a                                    // 0x00449c7a    689a99993e
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00449c7f    8d442418
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00449c83    d95c241c
                         {disp32} fld       dword ptr [ebp + 0x000000ec]                  // 0x00449c87    d985ec000000
                         push               eax                                           // 0x00449c8d    50
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00449c8e    d95c2424
                         push               0x00c59e70                                    // 0x00449c92    68709ec500
                         mov.s              ecx, edi                                      // 0x00449c97    8bcf
                         call               dword ptr [edx + 0x50]                        // 0x00449c99    ff5250
                         pop                edi                                           // 0x00449c9c    5f
                         pop                esi                                           // 0x00449c9d    5e
                         pop                ebp                                           // 0x00449c9e    5d
                         pop                ebx                                           // 0x00449c9f    5b
                         add                esp, 0x10                                     // 0x00449ca0    83c410
                         ret                0x000c                                        // 0x00449ca3    c20c00
_jmp_addr_0x00449ca6:    cmp                eax, 0x02                                     // 0x00449ca6    83f802
                         {disp32} jne       _jmp_addr_0x00449d54                          // 0x00449ca9    0f85a5000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00449caf    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00449cb5    e8c6241000
                         {disp32} fld       dword ptr [data_bytes + 0x293e60]             // 0x00449cba    d905609ec500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e60]        // 0x00449cc0    8b0d609ec500
                         mov.s              esi, eax                                      // 0x00449cc6    8bf0
                         add                esi, 0x00000088                               // 0x00449cc8    81c688000000
                         fst                dword ptr [esi]                               // 0x00449cce    d916
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x00449cd0    894e04
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x00449cd3    d95e1c
                         {disp8} mov        dword ptr [esi + 0x18], ebx                   // 0x00449cd6    895e18
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x00449cd9    895e14
                         {disp8} mov        dword ptr [esi + 0x2c], ebx                   // 0x00449cdc    895e2c
                         {disp8} mov        dword ptr [esi + 0x28], ebx                   // 0x00449cdf    895e28
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x00449ce2    895e10
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x00449ce5    895e24
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00449ce8    895e0c
                         {disp8} mov        dword ptr [esi + 0x20], ebx                   // 0x00449ceb    895e20
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x00449cee    895e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293e64]        // 0x00449cf1    8b15649ec500
                         push               edx                                           // 0x00449cf7    52
                         {disp8} lea        ecx, dword ptr [esi + 0x30]                   // 0x00449cf8    8d4e30
                         call               @SetPosition__6ZoomerFf@12                    // 0x00449cfb    e8c07dffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293e68]        // 0x00449d00    a1689ec500
                         push               eax                                           // 0x00449d05    50
                         {disp8} lea        ecx, dword ptr [esi + 0x60]                   // 0x00449d06    8d4e60
                         call               @SetPosition__6ZoomerFf@12                    // 0x00449d09    e8b27dffff
                         cmp.s              edi, ebx                                      // 0x00449d0e    3bfb
                         {disp32} je        _jmp_addr_0x00449d9c                          // 0x00449d10    0f8486000000
                         {disp32} fld       dword ptr [ebp + 0x0000011c]                  // 0x00449d16    d9851c010000
                         mov                edx, dword ptr [edi]                          // 0x00449d1c    8b17
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00449d1e    d95c2414
                         {disp32} fld       dword ptr [ebp + 0x0000014c]                  // 0x00449d22    d9854c010000
                         push               0x3e99999a                                    // 0x00449d28    689a99993e
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00449d2d    d95c241c
                         {disp32} fld       dword ptr [ebp + 0x0000017c]                  // 0x00449d31    d9857c010000
                         push               0x00c59e60                                    // 0x00449d37    68609ec500
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00449d3c    8d44241c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00449d40    d95c2424
                         push               eax                                           // 0x00449d44    50
                         mov.s              ecx, edi                                      // 0x00449d45    8bcf
                         call               dword ptr [edx + 0x50]                        // 0x00449d47    ff5250
                         pop                edi                                           // 0x00449d4a    5f
                         pop                esi                                           // 0x00449d4b    5e
                         pop                ebp                                           // 0x00449d4c    5d
                         pop                ebx                                           // 0x00449d4d    5b
                         add                esp, 0x10                                     // 0x00449d4e    83c410
                         ret                0x000c                                        // 0x00449d51    c20c00
_jmp_addr_0x00449d54:    cmp                eax, 0x03                                     // 0x00449d54    83f803
                         {disp8} jne        _jmp_addr_0x00449d9c                          // 0x00449d57    7543
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293e38]        // 0x00449d59    8b0d389ec500
                         {disp8} mov        dword ptr [esp + 0x2c], ecx                   // 0x00449d5f    894c242c
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00449d63    8b0d5c19d000
                         call               ?GetCamera@GGame@@QAEPAVGCamera@@XZ           // 0x00449d69    e812241000
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00449d6e    8b54242c
                         add                eax, 0x000001a8                               // 0x00449d72    05a8010000
                         mov.s              ecx, edx                                      // 0x00449d77    8bca
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00449d79    895004
                         mov                dword ptr [eax], ecx                          // 0x00449d7c    8908
                         {disp8} mov        dword ptr [eax + 0x1c], edx                   // 0x00449d7e    89501c
                         {disp8} mov        dword ptr [eax + 0x18], ebx                   // 0x00449d81    895818
                         {disp8} mov        dword ptr [eax + 0x14], ebx                   // 0x00449d84    895814
                         {disp8} mov        dword ptr [eax + 0x2c], ebx                   // 0x00449d87    89582c
                         {disp8} mov        dword ptr [eax + 0x28], ebx                   // 0x00449d8a    895828
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x00449d8d    895810
                         {disp8} mov        dword ptr [eax + 0x24], ebx                   // 0x00449d90    895824
                         {disp8} mov        dword ptr [eax + 0x0c], ebx                   // 0x00449d93    89580c
                         {disp8} mov        dword ptr [eax + 0x20], ebx                   // 0x00449d96    895820
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x00449d99    895808
_jmp_addr_0x00449d9c:    pop                edi                                           // 0x00449d9c    5f
                         pop                esi                                           // 0x00449d9d    5e
                         pop                ebp                                           // 0x00449d9e    5d
                         pop                ebx                                           // 0x00449d9f    5b
                         add                esp, 0x10                                     // 0x00449da0    83c410
                         ret                0x000c                                        // 0x00449da3    c20c00

// Snippet: db, [0x00449da6, 0x00449da8)
.byte 0x8b, 0xff                  // 0x00449da6

// Snippet: jmptbl, [0x00449da8, 0x00449de0)
.byte 0x59, 0x97, 0x44, 0x00      // 0x00449da8
.byte 0x7c, 0x98, 0x44, 0x00      // 0x00449dac
.byte 0x8a, 0x98, 0x44, 0x00      // 0x00449db0
.byte 0x99, 0x98, 0x44, 0x00      // 0x00449db4
.byte 0xb0, 0x98, 0x44, 0x00      // 0x00449db8
.byte 0xbe, 0x98, 0x44, 0x00      // 0x00449dbc
.byte 0xcd, 0x98, 0x44, 0x00      // 0x00449dc0
.byte 0xe4, 0x98, 0x44, 0x00      // 0x00449dc4
.byte 0xfa, 0x98, 0x44, 0x00      // 0x00449dc8
.byte 0x1e, 0x99, 0x44, 0x00      // 0x00449dcc
.byte 0x2c, 0x99, 0x44, 0x00      // 0x00449dd0
.byte 0x3b, 0x99, 0x44, 0x00      // 0x00449dd4
.byte 0x4a, 0x99, 0x44, 0x00      // 0x00449dd8
.byte 0x7b, 0x99, 0x44, 0x00      // 0x00449ddc

