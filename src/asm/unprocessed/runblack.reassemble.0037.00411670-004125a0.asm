.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes

.extern ??1SetupControl@@UAE@XZ
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _wcslen
.extern @Release__8LH3DMeshFv@4
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64
.extern @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ

.globl ?GetTextHeight@SetupThing@@SAMHHHHH_NPA_WH@Z
.globl ?GetTextWidth@SetupThing@@SAMPA_WMHM@Z
.globl ?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z
.globl ?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z
.globl ?adjust@SetupThing@@SAMAAH0@Z
.globl ?unadjust@SetupThing@@SAMAAH0@Z
.globl _jmp_addr_0x00411dd0
.globl ?adjusty@SetupThing@@SAHH@Z
.globl _jmp_addr_0x00411f10
.globl _jmp_addr_0x00411fc0
.globl ?unadjustsize@SetupThing@@SAMM@Z
.globl _jmp_addr_0x004120a0
.globl _jmp_addr_0x004120f0
.globl ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z
.globl ??_GSetupStaticText@@UAEPAXI@Z

??_GSetupStaticText@@UAEPAXI@Z:
                         push               esi                                           // 0x00411670    56
                         mov.s              esi, ecx                                      // 0x00411671    8bf1
                         call               ??1SetupControl@@UAE@XZ                       // 0x00411673    e8487dffff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00411678    f644240801
                         {disp8} je         _jmp_addr_0x00411688                          // 0x0041167d    7409
                         push               esi                                           // 0x0041167f    56
                         call               ??3@YAXPAX@Z                                  // 0x00411680    e813d83900
                         add                esp, 0x04                                     // 0x00411685    83c404
_jmp_addr_0x00411688:    mov.s              eax, esi                                      // 0x00411688    8bc6
                         pop                esi                                           // 0x0041168a    5e
                         ret                0x0004                                        // 0x0041168b    c20400
                         nop                                                              // 0x0041168e    90
                         nop                                                              // 0x0041168f    90
?GetTextHeight@SetupThing@@SAMHHHHH_NPA_WH@Z:
                                           {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00411690    8b4c241c
                         cmp                word ptr [ecx], 0x00                          // 0x00411694    66833900
                         {disp8} jne        _jmp_addr_0x004116a1                          // 0x00411698    7507
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0041169a    d90598a38a00
                         ret                                                              // 0x004116a0    c3
_jmp_addr_0x004116a1:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x004116a1    db442410
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x004116a5    8b442418
                         push               0x0                                           // 0x004116a9    6a00
                         push               0x0                                           // 0x004116ab    6a00
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x004116ad    d95c2418
                         and                eax, 0x000000ff                               // 0x004116b1    25ff000000
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x004116b6    db442410
                         push               eax                                           // 0x004116ba    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004116bb    8b44241c
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x004116bf    8d542428
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004116c3    d95c2414
                         push               edx                                           // 0x004116c7    52
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004116c8    db442430
                         push               ecx                                           // 0x004116cc    51
                         {disp8} mov        dword ptr [esp + 0x30], 0xffffffff            // 0x004116cd    c7442430ffffffff
                         fstp               dword ptr [esp]                               // 0x004116d5    d91c24
                         push               ecx                                           // 0x004116d8    51
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x004116d9    d905e039e800
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x004116df    d80d4cb28a00
                         fstp               dword ptr [esp]                               // 0x004116e5    d91c24
                         push               ecx                                           // 0x004116e8    51
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004116e9    db442430
                         fstp               dword ptr [esp]                               // 0x004116ed    d91c24
                         push               eax                                           // 0x004116f0    50
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x004116f1    db44242c
                         push               eax                                           // 0x004116f5    50
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x004116f6    8b44242c
                         push               ecx                                           // 0x004116fa    51
                         fstp               dword ptr [esp]                               // 0x004116fb    d91c24
                         push               eax                                           // 0x004116fe    50
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004116ff    db442430
                         push               eax                                           // 0x00411703    50
                         push               ecx                                           // 0x00411704    51
                         fstp               dword ptr [esp]                               // 0x00411705    d91c24
                         push               ecx                                           // 0x00411708    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x00411709    8b0d2ccdc400
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x0041170f    e89cfe4100
                         ret                                                              // 0x00411714    c3
                         nop                                                              // 0x00411715    90
                         nop                                                              // 0x00411716    90
                         nop                                                              // 0x00411717    90
                         nop                                                              // 0x00411718    90
                         nop                                                              // 0x00411719    90
                         nop                                                              // 0x0041171a    90
                         nop                                                              // 0x0041171b    90
                         nop                                                              // 0x0041171c    90
                         nop                                                              // 0x0041171d    90
                         nop                                                              // 0x0041171e    90
                         nop                                                              // 0x0041171f    90
?GetTextWidth@SetupThing@@SAMPA_WMHM@Z:
                                      {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00411720    8b44240c
                         test               eax, eax                                      // 0x00411724    85c0
                         push               esi                                           // 0x00411726    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00411727    8b742408
                         {disp8} jne        _jmp_addr_0x00411736                          // 0x0041172b    7509
                         push               esi                                           // 0x0041172d    56
                         call               _wcslen                                       // 0x0041172e    e82f4d3b00
                         add                esp, 0x04                                     // 0x00411733    83c404
_jmp_addr_0x00411736:    {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00411736    8b54240c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0041173a    8b0d2ccdc400
                         push               edx                                           // 0x00411740    52
                         push               eax                                           // 0x00411741    50
                         push               esi                                           // 0x00411742    56
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x00411743    e8e8f94100
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x00411748    d84c2414
                         pop                esi                                           // 0x0041174c    5e
                         ret                                                              // 0x0041174d    c3
                         nop                                                              // 0x0041174e    90
                         nop                                                              // 0x0041174f    90
?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z:
                                                       push               ecx                                           // 0x00411750    51
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00411751    8b442420
                         cmp                word ptr [eax], 0x00                          // 0x00411755    66833800
                         {disp8} jne        _jmp_addr_0x00411763                          // 0x00411759    7508
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x0041175b    d90598a38a00
                         pop                ecx                                           // 0x00411761    59
                         ret                                                              // 0x00411762    c3
_jmp_addr_0x00411763:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00411763    8b442428
                         test               eax, eax                                      // 0x00411767    85c0
                         {disp8} mov        dword ptr [esp + 0x00], 0xff000000            // 0x00411769    c7442400000000ff
                         {disp8} je         _jmp_addr_0x00411779                          // 0x00411771    7406
                         mov                ecx, dword ptr [eax]                          // 0x00411773    8b08
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00411775    894c2400
_jmp_addr_0x00411779:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00411779    8b44240c
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0041177d    db442424
                         {disp32} mov       dl, byte ptr [data_bytes + 0x2078]            // 0x00411781    8a1578809c00
                         push               ebx                                           // 0x00411787    53
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00411788    8b5c2418
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0041178c    d95c242c
                         push               ebp                                           // 0x00411790    55
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00411791    8b6c2418
                         push               esi                                           // 0x00411795    56
                         push               edi                                           // 0x00411796    57
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00411797    8b7c2428
                         sub.s              ebx, eax                                      // 0x0041179b    2bd8
                         sub.s              edi, eax                                      // 0x0041179d    2bf8
                         {disp8} mov        byte ptr [esp + 0x13], dl                     // 0x0041179f    88542413
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004117a3    8b542418
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x004117a7    8d44241c
                         push               eax                                           // 0x004117ab    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x004117ac    8d4c241c
                         sub.s              ebp, edx                                      // 0x004117b0    2bea
                         push               ecx                                           // 0x004117b2    51
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x004117b3    896c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x004117b7    895c242c
                         {disp8} mov        dword ptr [esp + 0x30], edi                   // 0x004117bb    897c2430
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x004117bf    e87c030000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x004117c4    d81598a38a00
                         add                esp, 0x08                                     // 0x004117ca    83c408
                         fnstsw             ax                                            // 0x004117cd    dfe0
                         test               ah, 0x40                                      // 0x004117cf    f6c440
                         {disp8} jne        _jmp_addr_0x0041180b                          // 0x004117d2    7537
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x004117d4    d9442438
                         fdiv               st, st(1)                                     // 0x004117d8    d8f1
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x004117da    d95c2438
                         {disp8} fild       dword ptr [esp + 0x28]                        // 0x004117de    db442428
                         fdiv               st, st(1)                                     // 0x004117e2    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x004117e4    e817fc3800
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x004117e9    db442420
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x004117ed    89442428
                         fdiv               st, st(1)                                     // 0x004117f1    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x004117f3    e808fc3800
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x004117f8    db442424
                         mov.s              ebp, eax                                      // 0x004117fc    8be8
                         fdiv               st, st(1)                                     // 0x004117fe    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x00411800    e8fbfb3800
                         fstp               st(0)                                         // 0x00411805    ddd8
                         mov.s              ebx, eax                                      // 0x00411807    8bd8
                         {disp8} jmp        _jmp_addr_0x0041180d                          // 0x00411809    eb02
_jmp_addr_0x0041180b:    fstp               st(0)                                         // 0x0041180b    ddd8
_jmp_addr_0x0041180d:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0041180d    8b44241c
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x00411811    8b742428
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00411815    8b542418
                         {disp8} mov        edi, dword ptr [esp + 0x40]                   // 0x00411819    8b7c2440
                         add.s              esi, eax                                      // 0x0041181d    03f0
                         add.s              ebx, eax                                      // 0x0041181f    03d8
                         {disp8} mov        al, byte ptr [esp + 0x3c]                     // 0x00411821    8a44243c
                         add.s              ebp, edx                                      // 0x00411825    03ea
                         test               al, al                                        // 0x00411827    84c0
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x00411829    89742428
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0041182d    8b74242c
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x00411831    896c2420
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x00411835    895c2424
                         {disp32} je        _jmp_addr_0x004118e8                          // 0x00411839    0f84a9000000
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0041183f    db442424
                         mov.s              edx, edi                                      // 0x00411843    8bd7
                         and                edx, 0x000000ff                               // 0x00411845    81e2ff000000
                         push               edx                                           // 0x0041184b    52
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x0041184c    8b54243c
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00411850    d95c2440
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x00411854    db442420
                         push               0x0                                           // 0x00411858    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0041185a    8d4c2418
                         mov.s              eax, esi                                      // 0x0041185e    8bc6
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00411860    d95c243c
                         and                eax, 0x000000ff                               // 0x00411864    25ff000000
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x00411869    d905e039e800
                         push               eax                                           // 0x0041186f    50
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x00411870    d80d4cb28a00
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00411876    8b442448
                         push               ecx                                           // 0x0041187a    51
                         push               edx                                           // 0x0041187b    52
                         push               ecx                                           // 0x0041187c    51
                         fstp               dword ptr [esp]                               // 0x0041187d    d91c24
                         push               ecx                                           // 0x00411880    51
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00411881    db442444
                         fstp               dword ptr [esp]                               // 0x00411885    d91c24
                         push               eax                                           // 0x00411888    50
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x00411889    db442440
                         push               eax                                           // 0x0041188d    50
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x0041188e    8b442458
                         push               ecx                                           // 0x00411892    51
                         fstp               dword ptr [esp]                               // 0x00411893    d91c24
                         push               eax                                           // 0x00411896    50
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00411897    db442444
                         push               eax                                           // 0x0041189b    50
                         {disp8} mov        eax, dword ptr [esp + 0x60]                   // 0x0041189c    8b442460
                         push               ecx                                           // 0x004118a0    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x004118a1    8b0d2ccdc400
                         fstp               dword ptr [esp]                               // 0x004118a7    d91c24
                         push               eax                                           // 0x004118aa    50
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x004118ab    e800fd4100
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004118b0    8b44241c
                         mov.s              ecx, ebx                                      // 0x004118b4    8bcb
                         sub.s              ecx, eax                                      // 0x004118b6    2bc8
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x004118b8    894c243c
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x004118bc    db44243c
                         fld                st(1)                                         // 0x004118c0    d9c1
                         fcomp              st(1)                                         // 0x004118c2    d8d9
                         fnstsw             ax                                            // 0x004118c4    dfe0
                         test               ah, 0x01                                      // 0x004118c6    f6c401
                         {disp8} je         _jmp_addr_0x004118e4                          // 0x004118c9    7419
                         fsub               st, st(1)                                     // 0x004118cb    d8e1
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x004118cd    d80db4a38a00
                         {disp8} fiadd      dword ptr [esp + 0x1c]                        // 0x004118d3    da44241c
                         call               _jmp_addr_0x007a1400                          // 0x004118d7    e824fb3800
                         fstp               st(0)                                         // 0x004118dc    ddd8
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x004118de    89442428
                         {disp8} jmp        _jmp_addr_0x004118e8                          // 0x004118e2    eb04
_jmp_addr_0x004118e4:    fstp               st(0)                                         // 0x004118e4    ddd8
                         fstp               st(0)                                         // 0x004118e6    ddd8
_jmp_addr_0x004118e8:    {disp8} fild       dword ptr [esp + 0x24]                        // 0x004118e8    db442424
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x004118ec    8b442438
                         and                edi, 0x000000ff                               // 0x004118f0    81e7ff000000
                         push               edi                                           // 0x004118f6    57
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x004118f7    d95c2440
                         push               0x1                                           // 0x004118fb    6a01
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x004118fd    db442424
                         and                esi, 0x000000ff                               // 0x00411901    81e6ff000000
                         push               esi                                           // 0x00411907    56
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00411908    8d54241c
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0041190c    d95c2440
                         push               edx                                           // 0x00411910    52
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x00411911    d905e039e800
                         push               eax                                           // 0x00411917    50
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x00411918    d80d4cb28a00
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x0041191e    8b442450
                         push               ecx                                           // 0x00411922    51
                         fstp               dword ptr [esp]                               // 0x00411923    d91c24
                         push               ecx                                           // 0x00411926    51
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00411927    db442444
                         fstp               dword ptr [esp]                               // 0x0041192b    d91c24
                         push               eax                                           // 0x0041192e    50
                         {disp8} fild       dword ptr [esp + 0x40]                        // 0x0041192f    db442440
                         push               eax                                           // 0x00411933    50
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00411934    8b442458
                         push               ecx                                           // 0x00411938    51
                         fstp               dword ptr [esp]                               // 0x00411939    d91c24
                         push               eax                                           // 0x0041193c    50
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x0041193d    db442444
                         push               eax                                           // 0x00411941    50
                         push               ecx                                           // 0x00411942    51
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00411943    8b4c2464
                         fstp               dword ptr [esp]                               // 0x00411947    d91c24
                         push               ecx                                           // 0x0041194a    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x0041194b    8b0d2ccdc400
                         call               @DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii@64                          // 0x00411951    e85afc4100
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00411956    d95c243c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0041195a    8b542418
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0041195e    8b44241c
                         push               0x00c4ccbc                                    // 0x00411962    68bcccc400
                         push               0x00c4ccb8                                    // 0x00411967    68b8ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cb8], edx        // 0x0041196c    8915b8ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cbc], eax        // 0x00411972    a3bcccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cc0], ebp        // 0x00411977    892dc0ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cc4], ebx        // 0x0041197d    891dc4ccc400
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00411983    e8a8020000
                         fstp               st(0)                                         // 0x00411988    ddd8
                         push               0x00c4ccc4                                    // 0x0041198a    68c4ccc400
                         push               0x00c4ccc0                                    // 0x0041198f    68c0ccc400
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00411994    e897020000
                         fstp               st(0)                                         // 0x00411999    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0041199b    8b4c244c
                         push               ecx                                           // 0x0041199f    51
                         call               ?unadjustsize@SetupThing@@SAMM@Z              // 0x004119a0    e88b060000
                         add                esp, 0x14                                     // 0x004119a5    83c414
                         pop                edi                                           // 0x004119a8    5f
                         pop                esi                                           // 0x004119a9    5e
                         pop                ebp                                           // 0x004119aa    5d
                         pop                ebx                                           // 0x004119ab    5b
                         pop                ecx                                           // 0x004119ac    59
                         ret                                                              // 0x004119ad    c3
                         nop                                                              // 0x004119ae    90
                         nop                                                              // 0x004119af    90
?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z:
                                                            push               ecx                                           // 0x004119b0    51
                         push               ebx                                           // 0x004119b1    53
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x004119b2    8b5c241c
                         cmp                word ptr [ebx], 0x00                          // 0x004119b6    66833b00
                         {disp8} jne        _jmp_addr_0x004119c5                          // 0x004119ba    7509
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004119bc    d90598a38a00
                         pop                ebx                                           // 0x004119c2    5b
                         pop                ecx                                           // 0x004119c3    59
                         ret                                                              // 0x004119c4    c3
_jmp_addr_0x004119c5:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x004119c5    8b442424
                         test               eax, eax                                      // 0x004119c9    85c0
                         {disp8} mov        dword ptr [esp + 0x04], 0xff000000            // 0x004119cb    c7442404000000ff
                         {disp8} je         _jmp_addr_0x004119db                          // 0x004119d3    7406
                         mov                eax, dword ptr [eax]                          // 0x004119d5    8b00
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x004119d7    89442404
_jmp_addr_0x004119db:    {disp8} fild       dword ptr [esp + 0x20]                        // 0x004119db    db442420
                         {disp32} mov       cl, byte ptr [data_bytes + 0x2078]            // 0x004119df    8a0d78809c00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x004119e5    8d542410
                         push               edx                                           // 0x004119e9    52
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x004119ea    d95c2420
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x004119ee    8d442410
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x004119f2    db442418
                         push               eax                                           // 0x004119f6    50
                         {disp8} mov        byte ptr [esp + 0x0f], cl                     // 0x004119f7    884c240f
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x004119fb    d95c242c
                         call               ?adjust@SetupThing@@SAMAAH0@Z                 // 0x004119ff    e83c010000
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00411a04    d81598a38a00
                         add                esp, 0x08                                     // 0x00411a0a    83c408
                         fnstsw             ax                                            // 0x00411a0d    dfe0
                         test               ah, 0x40                                      // 0x00411a0f    f6c440
                         {disp8} jne        _jmp_addr_0x00411a28                          // 0x00411a12    7514
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00411a14    d944241c
                         fdiv               st, st(1)                                     // 0x00411a18    d8f1
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00411a1a    d95c241c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00411a1e    d9442424
                         fdiv               st, st(1)                                     // 0x00411a22    d8f1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00411a24    d95c2424
_jmp_addr_0x00411a28:    push               ebp                                           // 0x00411a28    55
                         fstp               st(0)                                         // 0x00411a29    ddd8
                         push               esi                                           // 0x00411a2b    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00411a2c    8b742430
                         test               esi, esi                                      // 0x00411a30    85f6
                         push               edi                                           // 0x00411a32    57
                         {disp8} jne        _jmp_addr_0x00411a40                          // 0x00411a33    750b
                         push               ebx                                           // 0x00411a35    53
                         call               _wcslen                                       // 0x00411a36    e8274a3b00
                         add                esp, 0x04                                     // 0x00411a3b    83c404
                         mov.s              esi, eax                                      // 0x00411a3e    8bf0
_jmp_addr_0x00411a40:    {disp8} mov        ebp, dword ptr [esp + 0x28]                   // 0x00411a40    8b6c2428
_jmp_addr_0x00411a44:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x00411a44    8b0d2ccdc400
                         push               ebp                                           // 0x00411a4a    55
                         push               esi                                           // 0x00411a4b    56
                         push               ebx                                           // 0x00411a4c    53
                         call               @GetStringWidth__13GatheringTextFPwif@20      // 0x00411a4d    e8def64100
                         call               _jmp_addr_0x007a1400                          // 0x00411a52    e8a9f93800
                         test               esi, esi                                      // 0x00411a57    85f6
                         mov.s              edi, eax                                      // 0x00411a59    8bf8
                         {disp8} mov        dword ptr [esp + 0x2c], edi                   // 0x00411a5b    897c242c
                         {disp8} je         _jmp_addr_0x00411a73                          // 0x00411a5f    7412
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x00411a61    db44242c
                         {disp8} fcomp      dword ptr [esp + 0x30]                        // 0x00411a65    d85c2430
                         fnstsw             ax                                            // 0x00411a69    dfe0
                         test               ah, 0x41                                      // 0x00411a6b    f6c441
                         {disp8} jne        _jmp_addr_0x00411a73                          // 0x00411a6e    7503
                         dec                esi                                           // 0x00411a70    4e
                         {disp8} jmp        _jmp_addr_0x00411a44                          // 0x00411a71    ebd1
_jmp_addr_0x00411a73:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00411a73    8b442424
                         cmp                eax, 0x02                                     // 0x00411a77    83f802
                         {disp8} jne        _jmp_addr_0x00411a82                          // 0x00411a7a    7506
                         sub                dword ptr [esp + 0x18], edi                   // 0x00411a7c    297c2418
                         {disp8} jmp        _jmp_addr_0x00411a9a                          // 0x00411a80    eb18
_jmp_addr_0x00411a82:    cmp                eax, 0x01                                     // 0x00411a82    83f801
                         {disp8} jne        _jmp_addr_0x00411a9a                          // 0x00411a85    7513
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00411a87    8b4c2418
                         mov.s              eax, edi                                      // 0x00411a8b    8bc7
                         cdq                                                              // 0x00411a8d    99
                         sub.s              eax, edx                                      // 0x00411a8e    2bc2
                         sar                eax, 1                                        // 0x00411a90    d1f8
                         neg                eax                                           // 0x00411a92    f7d8
                         add.s              ecx, eax                                      // 0x00411a94    03c8
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00411a96    894c2418
_jmp_addr_0x00411a9a:    {disp32} fld       dword ptr [_near_clipping]                    // 0x00411a9a    d905e039e800
                         push               0x45800000                                    // 0x00411aa0    6800008045
                         {disp32} fmul      dword ptr [__real@3fc00000]                   // 0x00411aa5    d80d4cb28a00
                         push               0x0                                           // 0x00411aab    6a00
                         push               0x0                                           // 0x00411aad    6a00
                         push               0x0                                           // 0x00411aaf    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00411ab1    8d4c2420
                         push               ecx                                           // 0x00411ab5    51
                         push               ebp                                           // 0x00411ab6    55
                         push               ecx                                           // 0x00411ab7    51
                         fstp               dword ptr [esp]                               // 0x00411ab8    d91c24
                         push               ecx                                           // 0x00411abb    51
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x00411abc    db44243c
                         fstp               dword ptr [esp]                               // 0x00411ac0    d91c24
                         push               ecx                                           // 0x00411ac3    51
                         {disp8} fild       dword ptr [esp + 0x3c]                        // 0x00411ac4    db44243c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286d2c]        // 0x00411ac8    8b0d2ccdc400
                         fstp               dword ptr [esp]                               // 0x00411ace    d91c24
                         push               esi                                           // 0x00411ad1    56
                         push               ebx                                           // 0x00411ad2    53
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                          // 0x00411ad3    e888114200
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00411ad8    db44241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00411adc    8b442418
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00411ae0    8b54241c
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x00411ae4    d8442428
                         add.s              edi, eax                                      // 0x00411ae8    03f8
                         {disp32} mov       dword ptr [data_bytes + 0x286cb8], eax        // 0x00411aea    a3b8ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cbc], edx        // 0x00411aef    8915bcccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cc0], edi        // 0x00411af5    893dc0ccc400
                         call               _jmp_addr_0x007a1400                          // 0x00411afb    e800f93800
                         push               0x00c4ccbc                                    // 0x00411b00    68bcccc400
                         push               0x00c4ccb8                                    // 0x00411b05    68b8ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cc4], eax        // 0x00411b0a    a3c4ccc400
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00411b0f    e81c010000
                         fstp               st(0)                                         // 0x00411b14    ddd8
                         push               0x00c4ccc4                                    // 0x00411b16    68c4ccc400
                         push               0x00c4ccc0                                    // 0x00411b1b    68c0ccc400
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00411b20    e80b010000
                         fstp               st(0)                                         // 0x00411b25    ddd8
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00411b27    d9442438
                         add                esp, 0x0c                                     // 0x00411b2b    83c40c
                         fstp               dword ptr [esp]                               // 0x00411b2e    d91c24
                         call               ?unadjustsize@SetupThing@@SAMM@Z              // 0x00411b31    e8fa040000
                         add                esp, 0x04                                     // 0x00411b36    83c404
                         pop                edi                                           // 0x00411b39    5f
                         pop                esi                                           // 0x00411b3a    5e
                         pop                ebp                                           // 0x00411b3b    5d
                         pop                ebx                                           // 0x00411b3c    5b
                         pop                ecx                                           // 0x00411b3d    59
                         ret                                                              // 0x00411b3e    c3
                         nop                                                              // 0x00411b3f    90
?adjust@SetupThing@@SAMAAH0@Z:
                               sub                esp, 0x08                                     // 0x00411b40    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411b43    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411b48    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411b4a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411b51    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411b56    3d20030000
                         push               esi                                           // 0x00411b5b    56
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00411b5c    89442408
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00411b60    894c2404
                         {disp8} jl         _jmp_addr_0x00411ba6                          // 0x00411b64    7c40
                         cmp                ecx, 0x00000258                               // 0x00411b66    81f958020000
                         {disp8} jl         _jmp_addr_0x00411ba6                          // 0x00411b6c    7c38
                         add                eax, 0xfffffce0                               // 0x00411b6e    05e0fcffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00411b73    d90590a38a00
                         cdq                                                              // 0x00411b79    99
                         sub.s              eax, edx                                      // 0x00411b7a    2bc2
                         mov.s              edx, eax                                      // 0x00411b7c    8bd0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00411b7e    8b442410
                         mov                esi, dword ptr [eax]                          // 0x00411b82    8b30
                         sar                edx, 1                                        // 0x00411b84    d1fa
                         add.s              esi, edx                                      // 0x00411b86    03f2
                         mov                dword ptr [eax], esi                          // 0x00411b88    8930
                         {disp32} lea       eax, dword ptr [ecx + -0x00000258]            // 0x00411b8a    8d81a8fdffff
                         cdq                                                              // 0x00411b90    99
                         sub.s              eax, edx                                      // 0x00411b91    2bc2
                         mov.s              ecx, eax                                      // 0x00411b93    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00411b95    8b442414
                         mov                edx, dword ptr [eax]                          // 0x00411b99    8b10
                         sar                ecx, 1                                        // 0x00411b9b    d1f9
                         add.s              edx, ecx                                      // 0x00411b9d    03d1
                         mov                dword ptr [eax], edx                          // 0x00411b9f    8910
                         pop                esi                                           // 0x00411ba1    5e
                         add                esp, 0x08                                     // 0x00411ba2    83c408
                         ret                                                              // 0x00411ba5    c3
_jmp_addr_0x00411ba6:    {disp8} fild       dword ptr [esp + 0x08]                        // 0x00411ba6    db442408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2600]              // 0x00411baa    d90500b68a00
                         fdiv               st, st(1)                                     // 0x00411bb0    d8f1
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411bb2    db442404
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00411bb6    d95c2408
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc]              // 0x00411bba    d905fcb58a00
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00411bc0    d8742408
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00411bc4    d95c2404
                         {disp8} fcom       dword ptr [esp + 0x04]                        // 0x00411bc8    d8542404
                         fnstsw             ax                                            // 0x00411bcc    dfe0
                         test               ah, 0x41                                      // 0x00411bce    f6c441
                         {disp8} je         _jmp_addr_0x00411bd9                          // 0x00411bd1    7406
                         fstp               st(0)                                         // 0x00411bd3    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00411bd5    d9442404
_jmp_addr_0x00411bd9:    {disp32} fld       dword ptr [rdata_bytes + 0x25f8]              // 0x00411bd9    d905f8b58a00
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00411bdf    8b742410
                         fdiv               st, st(1)                                     // 0x00411be3    d8f1
                         fsubr              st, st(2)                                     // 0x00411be5    d8ea
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411be7    d80db4a38a00
                         fild               dword ptr [esi]                               // 0x00411bed    db06
                         fdiv               st, st(2)                                     // 0x00411bef    d8f2
                         faddp              st(1), st                                     // 0x00411bf1    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00411bf3    e808f83800
                         {disp32} fld       dword ptr [rdata_bytes + 0x25f4]              // 0x00411bf8    d905f4b58a00
                         fdiv               st, st(1)                                     // 0x00411bfe    d8f1
                         mov                dword ptr [esi], eax                          // 0x00411c00    8906
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00411c02    8b742414
                         {disp8} fsubr      dword ptr [esp + 0x08]                        // 0x00411c06    d86c2408
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411c0a    d80db4a38a00
                         fild               dword ptr [esi]                               // 0x00411c10    db06
                         fdiv               st, st(2)                                     // 0x00411c12    d8f2
                         faddp              st(1), st                                     // 0x00411c14    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00411c16    e8e5f73800
                         fstp               st(1)                                         // 0x00411c1b    ddd9
                         mov                dword ptr [esi], eax                          // 0x00411c1d    8906
                         pop                esi                                           // 0x00411c1f    5e
                         add                esp, 0x08                                     // 0x00411c20    83c408
                         ret                                                              // 0x00411c23    c3
                         nop                                                              // 0x00411c24    90
                         nop                                                              // 0x00411c25    90
                         nop                                                              // 0x00411c26    90
                         nop                                                              // 0x00411c27    90
                         nop                                                              // 0x00411c28    90
                         nop                                                              // 0x00411c29    90
                         nop                                                              // 0x00411c2a    90
                         nop                                                              // 0x00411c2b    90
                         nop                                                              // 0x00411c2c    90
                         nop                                                              // 0x00411c2d    90
                         nop                                                              // 0x00411c2e    90
                         nop                                                              // 0x00411c2f    90
?unadjust@SetupThing@@SAMAAH0@Z:
                                 sub                esp, 0x08                                     // 0x00411c30    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411c33    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411c38    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411c3a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411c41    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411c46    3d20030000
                         push               esi                                           // 0x00411c4b    56
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00411c4c    89442408
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00411c50    894c2404
                         {disp8} jl         _jmp_addr_0x00411c9a                          // 0x00411c54    7c44
                         cmp                ecx, 0x00000258                               // 0x00411c56    81f958020000
                         {disp8} jl         _jmp_addr_0x00411c9a                          // 0x00411c5c    7c3c
                         add                eax, 0xfffffce0                               // 0x00411c5e    05e0fcffff
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00411c63    d90590a38a00
                         cdq                                                              // 0x00411c69    99
                         sub.s              eax, edx                                      // 0x00411c6a    2bc2
                         sar                eax, 1                                        // 0x00411c6c    d1f8
                         mov.s              edx, eax                                      // 0x00411c6e    8bd0
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00411c70    8b442410
                         mov                esi, dword ptr [eax]                          // 0x00411c74    8b30
                         neg                edx                                           // 0x00411c76    f7da
                         add.s              esi, edx                                      // 0x00411c78    03f2
                         mov                dword ptr [eax], esi                          // 0x00411c7a    8930
                         {disp32} lea       eax, dword ptr [ecx + -0x00000258]            // 0x00411c7c    8d81a8fdffff
                         cdq                                                              // 0x00411c82    99
                         sub.s              eax, edx                                      // 0x00411c83    2bc2
                         sar                eax, 1                                        // 0x00411c85    d1f8
                         mov.s              ecx, eax                                      // 0x00411c87    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00411c89    8b442414
                         mov                edx, dword ptr [eax]                          // 0x00411c8d    8b10
                         neg                ecx                                           // 0x00411c8f    f7d9
                         add.s              edx, ecx                                      // 0x00411c91    03d1
                         mov                dword ptr [eax], edx                          // 0x00411c93    8910
                         pop                esi                                           // 0x00411c95    5e
                         add                esp, 0x08                                     // 0x00411c96    83c408
                         ret                                                              // 0x00411c99    c3
_jmp_addr_0x00411c9a:    {disp8} fild       dword ptr [esp + 0x08]                        // 0x00411c9a    db442408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2600]              // 0x00411c9e    d90500b68a00
                         fdiv               st, st(1)                                     // 0x00411ca4    d8f1
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411ca6    db442404
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00411caa    d95c2408
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc]              // 0x00411cae    d905fcb58a00
                         {disp8} fdiv       dword ptr [esp + 0x08]                        // 0x00411cb4    d8742408
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00411cb8    d95c2404
                         {disp8} fcom       dword ptr [esp + 0x04]                        // 0x00411cbc    d8542404
                         fnstsw             ax                                            // 0x00411cc0    dfe0
                         test               ah, 0x41                                      // 0x00411cc2    f6c441
                         {disp8} je         _jmp_addr_0x00411ccd                          // 0x00411cc5    7406
                         fstp               st(0)                                         // 0x00411cc7    ddd8
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00411cc9    d9442404
_jmp_addr_0x00411ccd:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00411ccd    8b742410
                         fild               dword ptr [esi]                               // 0x00411cd1    db06
                         push               edi                                           // 0x00411cd3    57
                         {disp32} fld       dword ptr [rdata_bytes + 0x25f8]              // 0x00411cd4    d905f8b58a00
                         fdiv               st, st(2)                                     // 0x00411cda    d8f2
                         fsubr              st, st(3)                                     // 0x00411cdc    d8eb
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411cde    d80db4a38a00
                         fsubp              st(1), st                                     // 0x00411ce4    dee9
                         call               _jmp_addr_0x007a1400                          // 0x00411ce6    e815f73800
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00411ceb    8b7c2418
                         mov                dword ptr [esi], eax                          // 0x00411cef    8906
                         fild               dword ptr [edi]                               // 0x00411cf1    db07
                         {disp32} fld       dword ptr [rdata_bytes + 0x25f4]              // 0x00411cf3    d905f4b58a00
                         fdiv               st, st(2)                                     // 0x00411cf9    d8f2
                         {disp8} fsubr      dword ptr [esp + 0x0c]                        // 0x00411cfb    d86c240c
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411cff    d80db4a38a00
                         fsubp              st(1), st                                     // 0x00411d05    dee9
                         call               _jmp_addr_0x007a1400                          // 0x00411d07    e8f4f63800
                         mov                dword ptr [edi], eax                          // 0x00411d0c    8907
                         fild               dword ptr [esi]                               // 0x00411d0e    db06
                         fmul               st, st(1)                                     // 0x00411d10    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00411d12    e8e9f63800
                         mov                dword ptr [esi], eax                          // 0x00411d17    8906
                         fild               dword ptr [edi]                               // 0x00411d19    db07
                         fmul               st, st(1)                                     // 0x00411d1b    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00411d1d    e8def63800
                         fstp               st(1)                                         // 0x00411d22    ddd9
                         mov                dword ptr [edi], eax                          // 0x00411d24    8907
                         pop                edi                                           // 0x00411d26    5f
                         pop                esi                                           // 0x00411d27    5e
                         add                esp, 0x08                                     // 0x00411d28    83c408
                         ret                                                              // 0x00411d2b    c3
                         nop                                                              // 0x00411d2c    90
                         nop                                                              // 0x00411d2d    90
                         nop                                                              // 0x00411d2e    90
                         nop                                                              // 0x00411d2f    90
                         sub                esp, 0x08                                     // 0x00411d30    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411d33    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411d38    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411d3a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411d41    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411d46    3d20030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00411d4b    89442400
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00411d4f    894c2404
                         {disp8} jl         _jmp_addr_0x00411d71                          // 0x00411d53    7c1c
                         cmp                ecx, 0x00000258                               // 0x00411d55    81f958020000
                         {disp8} jl         _jmp_addr_0x00411d71                          // 0x00411d5b    7c14
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00411d5d    8b4c240c
                         add                eax, 0xfffffce0                               // 0x00411d61    05e0fcffff
                         cdq                                                              // 0x00411d66    99
                         sub.s              eax, edx                                      // 0x00411d67    2bc2
                         sar                eax, 1                                        // 0x00411d69    d1f8
                         add.s              eax, ecx                                      // 0x00411d6b    03c1
                         add                esp, 0x08                                     // 0x00411d6d    83c408
                         ret                                                              // 0x00411d70    c3
_jmp_addr_0x00411d71:    {disp8} fild       dword ptr [esp + 0x00]                        // 0x00411d71    db442400
                         {disp32} fld       dword ptr [rdata_bytes + 0x2600]              // 0x00411d75    d90500b68a00
                         fdiv               st, st(1)                                     // 0x00411d7b    d8f1
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411d7d    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x25fc]              // 0x00411d81    d83dfcb58a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00411d87    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x00411d8b    d8542400
                         fnstsw             ax                                            // 0x00411d8f    dfe0
                         test               ah, 0x41                                      // 0x00411d91    f6c441
                         {disp8} je         _jmp_addr_0x00411d9c                          // 0x00411d94    7406
                         fstp               st(0)                                         // 0x00411d96    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00411d98    d9442400
_jmp_addr_0x00411d9c:    {disp32} fld       dword ptr [rdata_bytes + 0x25f8]              // 0x00411d9c    d905f8b58a00
                         fdiv               st, st(1)                                     // 0x00411da2    d8f1
                         fsubr              st, st(2)                                     // 0x00411da4    d8ea
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411da6    d80db4a38a00
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411dac    db44240c
                         fdiv               st, st(2)                                     // 0x00411db0    d8f2
                         faddp              st(1), st                                     // 0x00411db2    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00411db4    e847f63800
                         fstp               st(0)                                         // 0x00411db9    ddd8
                         fstp               st(0)                                         // 0x00411dbb    ddd8
                         add                esp, 0x08                                     // 0x00411dbd    83c408
                         ret                                                              // 0x00411dc0    c3
                         nop                                                              // 0x00411dc1    90
                         nop                                                              // 0x00411dc2    90
                         nop                                                              // 0x00411dc3    90
                         nop                                                              // 0x00411dc4    90
                         nop                                                              // 0x00411dc5    90
                         nop                                                              // 0x00411dc6    90
                         nop                                                              // 0x00411dc7    90
                         nop                                                              // 0x00411dc8    90
                         nop                                                              // 0x00411dc9    90
                         nop                                                              // 0x00411dca    90
                         nop                                                              // 0x00411dcb    90
                         nop                                                              // 0x00411dcc    90
                         nop                                                              // 0x00411dcd    90
                         nop                                                              // 0x00411dce    90
                         nop                                                              // 0x00411dcf    90
_jmp_addr_0x00411dd0:    sub                esp, 0x08                                     // 0x00411dd0    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411dd3    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411dd8    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411dda    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411de1    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411de6    3d20030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00411deb    89442400
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00411def    894c2404
                         {disp8} jl         _jmp_addr_0x00411e13                          // 0x00411df3    7c1e
                         cmp                ecx, 0x00000258                               // 0x00411df5    81f958020000
                         {disp8} jl         _jmp_addr_0x00411e13                          // 0x00411dfb    7c16
                         add                eax, 0xfffffce0                               // 0x00411dfd    05e0fcffff
                         cdq                                                              // 0x00411e02    99
                         sub.s              eax, edx                                      // 0x00411e03    2bc2
                         mov.s              ecx, eax                                      // 0x00411e05    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00411e07    8b44240c
                         sar                ecx, 1                                        // 0x00411e0b    d1f9
                         sub.s              eax, ecx                                      // 0x00411e0d    2bc1
                         add                esp, 0x08                                     // 0x00411e0f    83c408
                         ret                                                              // 0x00411e12    c3
_jmp_addr_0x00411e13:    {disp8} fild       dword ptr [esp + 0x00]                        // 0x00411e13    db442400
                         {disp32} fld       dword ptr [rdata_bytes + 0x2600]              // 0x00411e17    d90500b68a00
                         fdiv               st, st(1)                                     // 0x00411e1d    d8f1
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411e1f    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x25fc]              // 0x00411e23    d83dfcb58a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00411e29    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x00411e2d    d8542400
                         fnstsw             ax                                            // 0x00411e31    dfe0
                         test               ah, 0x41                                      // 0x00411e33    f6c441
                         {disp8} je         _jmp_addr_0x00411e3e                          // 0x00411e36    7406
                         fstp               st(0)                                         // 0x00411e38    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00411e3a    d9442400
_jmp_addr_0x00411e3e:    {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411e3e    db44240c
                         {disp32} fld       dword ptr [rdata_bytes + 0x25f8]              // 0x00411e42    d905f8b58a00
                         fdiv               st, st(2)                                     // 0x00411e48    d8f2
                         fsubr              st, st(3)                                     // 0x00411e4a    d8eb
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411e4c    d80db4a38a00
                         fsubp              st(1), st                                     // 0x00411e52    dee9
                         call               _jmp_addr_0x007a1400                          // 0x00411e54    e8a7f53800
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00411e59    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411e5d    db44240c
                         fmul               st, st(1)                                     // 0x00411e61    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00411e63    e898f53800
                         fstp               st(0)                                         // 0x00411e68    ddd8
                         fstp               st(0)                                         // 0x00411e6a    ddd8
                         add                esp, 0x08                                     // 0x00411e6c    83c408
                         ret                                                              // 0x00411e6f    c3
?adjusty@SetupThing@@SAHH@Z:sub                esp, 0x08                                     // 0x00411e70    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411e73    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411e78    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411e7a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411e81    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411e86    3d20030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00411e8b    89442404
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00411e8f    894c2400
                         {disp8} jl         _jmp_addr_0x00411eb2                          // 0x00411e93    7c1d
                         cmp                ecx, 0x00000258                               // 0x00411e95    81f958020000
                         {disp8} jl         _jmp_addr_0x00411eb2                          // 0x00411e9b    7c15
                         {disp32} lea       eax, dword ptr [ecx + -0x00000258]            // 0x00411e9d    8d81a8fdffff
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00411ea3    8b4c240c
                         cdq                                                              // 0x00411ea7    99
                         sub.s              eax, edx                                      // 0x00411ea8    2bc2
                         sar                eax, 1                                        // 0x00411eaa    d1f8
                         add.s              eax, ecx                                      // 0x00411eac    03c1
                         add                esp, 0x08                                     // 0x00411eae    83c408
                         ret                                                              // 0x00411eb1    c3
_jmp_addr_0x00411eb2:    {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411eb2    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2600]              // 0x00411eb6    d83d00b68a00
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x00411ebc    db442400
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00411ec0    d95c2404
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc]              // 0x00411ec4    d905fcb58a00
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x00411eca    d8742404
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00411ece    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x00411ed2    d8542400
                         fnstsw             ax                                            // 0x00411ed6    dfe0
                         test               ah, 0x41                                      // 0x00411ed8    f6c441
                         {disp8} je         _jmp_addr_0x00411ee3                          // 0x00411edb    7406
                         fstp               st(0)                                         // 0x00411edd    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00411edf    d9442400
_jmp_addr_0x00411ee3:    {disp32} fld       dword ptr [rdata_bytes + 0x25f4]              // 0x00411ee3    d905f4b58a00
                         fdiv               st, st(1)                                     // 0x00411ee9    d8f1
                         {disp8} fsubr      dword ptr [esp + 0x04]                        // 0x00411eeb    d86c2404
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411eef    d80db4a38a00
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411ef5    db44240c
                         fdiv               st, st(2)                                     // 0x00411ef9    d8f2
                         faddp              st(1), st                                     // 0x00411efb    dec1
                         call               _jmp_addr_0x007a1400                          // 0x00411efd    e8fef43800
                         fstp               st(0)                                         // 0x00411f02    ddd8
                         add                esp, 0x08                                     // 0x00411f04    83c408
                         ret                                                              // 0x00411f07    c3
                         nop                                                              // 0x00411f08    90
                         nop                                                              // 0x00411f09    90
                         nop                                                              // 0x00411f0a    90
                         nop                                                              // 0x00411f0b    90
                         nop                                                              // 0x00411f0c    90
                         nop                                                              // 0x00411f0d    90
                         nop                                                              // 0x00411f0e    90
                         nop                                                              // 0x00411f0f    90
_jmp_addr_0x00411f10:    sub                esp, 0x08                                     // 0x00411f10    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411f13    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411f18    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411f1a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411f21    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411f26    3d20030000
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00411f2b    89442404
                         {disp8} mov        dword ptr [esp + 0x00], ecx                   // 0x00411f2f    894c2400
                         {disp8} jl         _jmp_addr_0x00411f54                          // 0x00411f33    7c1f
                         cmp                ecx, 0x00000258                               // 0x00411f35    81f958020000
                         {disp8} jl         _jmp_addr_0x00411f54                          // 0x00411f3b    7c17
                         {disp32} lea       eax, dword ptr [ecx + -0x00000258]            // 0x00411f3d    8d81a8fdffff
                         cdq                                                              // 0x00411f43    99
                         sub.s              eax, edx                                      // 0x00411f44    2bc2
                         mov.s              ecx, eax                                      // 0x00411f46    8bc8
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00411f48    8b44240c
                         sar                ecx, 1                                        // 0x00411f4c    d1f9
                         sub.s              eax, ecx                                      // 0x00411f4e    2bc1
                         add                esp, 0x08                                     // 0x00411f50    83c408
                         ret                                                              // 0x00411f53    c3
_jmp_addr_0x00411f54:    {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411f54    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2600]              // 0x00411f58    d83d00b68a00
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x00411f5e    db442400
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x00411f62    d95c2404
                         {disp32} fld       dword ptr [rdata_bytes + 0x25fc]              // 0x00411f66    d905fcb58a00
                         {disp8} fdiv       dword ptr [esp + 0x04]                        // 0x00411f6c    d8742404
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00411f70    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x00411f74    d8542400
                         fnstsw             ax                                            // 0x00411f78    dfe0
                         test               ah, 0x41                                      // 0x00411f7a    f6c441
                         {disp8} je         _jmp_addr_0x00411f85                          // 0x00411f7d    7406
                         fstp               st(0)                                         // 0x00411f7f    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x00411f81    d9442400
_jmp_addr_0x00411f85:    {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411f85    db44240c
                         {disp32} fld       dword ptr [rdata_bytes + 0x25f4]              // 0x00411f89    d905f4b58a00
                         fdiv               st, st(2)                                     // 0x00411f8f    d8f2
                         {disp8} fsubr      dword ptr [esp + 0x04]                        // 0x00411f91    d86c2404
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00411f95    d80db4a38a00
                         fsubp              st(1), st                                     // 0x00411f9b    dee9
                         call               _jmp_addr_0x007a1400                          // 0x00411f9d    e85ef43800
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00411fa2    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00411fa6    db44240c
                         fmul               st, st(1)                                     // 0x00411faa    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00411fac    e84ff43800
                         fstp               st(0)                                         // 0x00411fb1    ddd8
                         add                esp, 0x08                                     // 0x00411fb3    83c408
                         ret                                                              // 0x00411fb6    c3
                         nop                                                              // 0x00411fb7    90
                         nop                                                              // 0x00411fb8    90
                         nop                                                              // 0x00411fb9    90
                         nop                                                              // 0x00411fba    90
                         nop                                                              // 0x00411fbb    90
                         nop                                                              // 0x00411fbc    90
                         nop                                                              // 0x00411fbd    90
                         nop                                                              // 0x00411fbe    90
                         nop                                                              // 0x00411fbf    90
_jmp_addr_0x00411fc0:    sub                esp, 0x08                                     // 0x00411fc0    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00411fc3    a15850e800
                         xor.s              ecx, ecx                                      // 0x00411fc8    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x00411fca    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00411fd1    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00411fd6    3d20030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x00411fdb    89442400
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00411fdf    894c2404
                         {disp8} jl         _jmp_addr_0x00411ff5                          // 0x00411fe3    7c10
                         cmp                ecx, 0x00000258                               // 0x00411fe5    81f958020000
                         {disp8} jl         _jmp_addr_0x00411ff5                          // 0x00411feb    7c08
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00411fed    8b44240c
                         add                esp, 0x08                                     // 0x00411ff1    83c408
                         ret                                                              // 0x00411ff4    c3
_jmp_addr_0x00411ff5:    {disp8} fild       dword ptr [esp + 0x00]                        // 0x00411ff5    db442400
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2600]              // 0x00411ff9    d83d00b68a00
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x00411fff    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x25fc]              // 0x00412003    d83dfcb58a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00412009    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x0041200d    d8542400
                         fnstsw             ax                                            // 0x00412011    dfe0
                         test               ah, 0x41                                      // 0x00412013    f6c441
                         {disp8} je         _jmp_addr_0x0041201e                          // 0x00412016    7406
                         fstp               st(0)                                         // 0x00412018    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0041201a    d9442400
_jmp_addr_0x0041201e:    {disp8} fild       dword ptr [esp + 0x0c]                        // 0x0041201e    db44240c
                         fmul               st, st(1)                                     // 0x00412022    d8c9
                         call               _jmp_addr_0x007a1400                          // 0x00412024    e8d7f33800
                         fstp               st(0)                                         // 0x00412029    ddd8
                         add                esp, 0x08                                     // 0x0041202b    83c408
                         ret                                                              // 0x0041202e    c3
                         nop                                                              // 0x0041202f    90
?unadjustsize@SetupThing@@SAMM@Z:
                                  sub                esp, 0x08                                     // 0x00412030    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf058]        // 0x00412033    a15850e800
                         xor.s              ecx, ecx                                      // 0x00412038    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x0041203a    668b0d5a50e800
                         and                eax, 0x0000ffff                               // 0x00412041    25ffff0000
                         cmp                eax, 0x00000320                               // 0x00412046    3d20030000
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0041204b    89442400
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0041204f    894c2404
                         {disp8} jl         _jmp_addr_0x00412065                          // 0x00412053    7c10
                         cmp                ecx, 0x00000258                               // 0x00412055    81f958020000
                         {disp8} jl         _jmp_addr_0x00412065                          // 0x0041205b    7c08
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0041205d    d944240c
                         add                esp, 0x08                                     // 0x00412061    83c408
                         ret                                                              // 0x00412064    c3
_jmp_addr_0x00412065:    {disp8} fild       dword ptr [esp + 0x00]                        // 0x00412065    db442400
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x2600]              // 0x00412069    d83d00b68a00
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x0041206f    db442404
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x25fc]              // 0x00412073    d83dfcb58a00
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x00412079    d95c2400
                         {disp8} fcom       dword ptr [esp + 0x00]                        // 0x0041207d    d8542400
                         fnstsw             ax                                            // 0x00412081    dfe0
                         test               ah, 0x41                                      // 0x00412083    f6c441
                         {disp8} je         _jmp_addr_0x0041208e                          // 0x00412086    7406
                         fstp               st(0)                                         // 0x00412088    ddd8
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0041208a    d9442400
_jmp_addr_0x0041208e:    {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0041208e    d84c240c
                         add                esp, 0x08                                     // 0x00412092    83c408
                         ret                                                              // 0x00412095    c3
                         nop                                                              // 0x00412096    90
                         nop                                                              // 0x00412097    90
                         nop                                                              // 0x00412098    90
                         nop                                                              // 0x00412099    90
                         nop                                                              // 0x0041209a    90
                         nop                                                              // 0x0041209b    90
                         nop                                                              // 0x0041209c    90
                         nop                                                              // 0x0041209d    90
                         nop                                                              // 0x0041209e    90
                         nop                                                              // 0x0041209f    90
_jmp_addr_0x004120a0:    push               ecx                                           // 0x004120a0    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x517470]        // 0x004120a1    8b0d70d4ed00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x506d08]        // 0x004120a7    a108cdec00
                         {disp8} lea        edx, dword ptr [esp + 0x00]                   // 0x004120ac    8d542400
                         push               edx                                           // 0x004120b0    52
                         neg                ecx                                           // 0x004120b1    f7d9
                         push               -0x1                                          // 0x004120b3    6aff
                         sbb.s              ecx, ecx                                      // 0x004120b5    1bc9
                         and                ecx, 0x03                                     // 0x004120b7    83e103
                         push               0x41                                          // 0x004120ba    6a41
                         push               0x009c8318                                    // 0x004120bc    6818839c00
                         {disp32} mov       dword ptr [data_bytes + 0x286d2c], eax        // 0x004120c1    a32ccdc400
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x004120c6    894c2410
                         call               _jmp_addr_0x008379e0                          // 0x004120ca    e811594200
                         push               eax                                           // 0x004120cf    50
                         push               0x6                                           // 0x004120d0    6a06
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x004120d2    e859dc4100
                         {disp32} mov       dword ptr [_SetupThing], eax                  // 0x004120d7    a380ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d28], 0x00000001 // 0x004120dc    c70528cdc40001000000
                         add                esp, 0x1c                                     // 0x004120e6    83c41c
                         ret                                                              // 0x004120e9    c3
                         call               dword ptr [__imp__DirectXSetupGetVersion]     // 0x004120ea    ff153c908a00
_jmp_addr_0x004120f0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286cf0]        // 0x004120f0    8b0df0ccc400
                         push               esi                                           // 0x004120f6    56
                         xor.s              esi, esi                                      // 0x004120f7    33f6
                         cmp.s              ecx, esi                                      // 0x004120f9    3bce
                         {disp32} mov       dword ptr [data_bytes + 0x286d28], esi        // 0x004120fb    893528cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d2c], esi        // 0x00412101    89352ccdc400
                         {disp8} je         _jmp_addr_0x0041210e                          // 0x00412107    7405
                         call               @Release__8LH3DMeshFv@4                       // 0x00412109    e8f24b3f00
_jmp_addr_0x0041210e:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286cf4]        // 0x0041210e    8b0df4ccc400
                         cmp.s              ecx, esi                                      // 0x00412114    3bce
                         {disp32} mov       dword ptr [data_bytes + 0x286cf0], esi        // 0x00412116    8935f0ccc400
                         {disp8} je         _jmp_addr_0x00412123                          // 0x0041211c    7405
                         mov                eax, dword ptr [ecx]                          // 0x0041211e    8b01
                         call               dword ptr [eax + 4]                           // 0x00412120    ff5004
_jmp_addr_0x00412123:    {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x00412123    8b0d80ccc400
                         {disp32} mov       dword ptr [data_bytes + 0x286cf4], esi        // 0x00412129    8935f4ccc400
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0041212f    8b4908
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x00412132    e8095c4200
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x00412137    8b1580ccc400
                         {disp8} mov        dword ptr [edx + 0x08], esi                   // 0x0041213d    897208
                         {disp32} mov       dword ptr [_SetupThing], esi                  // 0x00412140    893580ccc400
                         pop                esi                                           // 0x00412146    5e
                         ret                                                              // 0x00412147    c3
                         nop                                                              // 0x00412148    90
                         nop                                                              // 0x00412149    90
                         nop                                                              // 0x0041214a    90
                         nop                                                              // 0x0041214b    90
                         nop                                                              // 0x0041214c    90
                         nop                                                              // 0x0041214d    90
                         nop                                                              // 0x0041214e    90
                         nop                                                              // 0x0041214f    90
?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z:
                                                  sub                esp, 0x18                                     // 0x00412150    83ec18
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x00412153    8b44242c
                         {disp32} fld       dword ptr [rdata_bytes + 0x2620]              // 0x00412157    d90520b68a00
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0041215d    8b542420
                         push               ebx                                           // 0x00412161    53
                         push               ebp                                           // 0x00412162    55
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x00412163    8b6c2424
                         lea                ecx, dword ptr [eax + ebp * 0x1]              // 0x00412167    8d0c28
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0041216a    894c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0041216e    8b4c2438
                         add.s              edx, eax                                      // 0x00412172    03d0
                         push               esi                                           // 0x00412174    56
                         xor.s              esi, esi                                      // 0x00412175    33f6
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x00412177    8d41ff
                         cmp                eax, 0x13                                     // 0x0041217a    83f813
                         push               edi                                           // 0x0041217d    57
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0041217e    89542420
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e000000            // 0x00412182    c744243c0000003e
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0041218a    c744241000000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00412192    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0041219a    c744241c00000000
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x004121a2    89742418
                         {disp8} mov        byte ptr [esp + 0x2c], 0x00                   // 0x004121a6    c644242c00
                         {disp32} ja        _jmp_addr_0x0041234e                          // 0x004121ab    0f879d010000
                         xor.s              edx, edx                                      // 0x004121b1    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x0041258c]               // 0x004121b3    8a908c254100
                         jmp                dword ptr [edx*4 + 0x412560]                  // 0x004121b9    ff249560254100
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x004121c0    8a442438
                         xor.s              cl, cl                                        // 0x004121c4    32c9
                         test               al, al                                        // 0x004121c6    84c0
                         mov                bl, 0x01                                      // 0x004121c8    b301
                         {disp8} je         _jmp_addr_0x004121d4                          // 0x004121ca    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x261c]              // 0x004121cc    d9051cb68a00
                         {disp8} jmp        _jmp_addr_0x004121da                          // 0x004121d2    eb06
_jmp_addr_0x004121d4:    {disp32} fld       dword ptr [rdata_bytes + 0x23d4]              // 0x004121d4    d905d4b38a00
_jmp_addr_0x004121da:    {disp8} mov        dword ptr [esp + 0x10], 0x3f200000            // 0x004121da    c74424100000203f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3ec00000            // 0x004121e2    c744243c0000c03e
                         {disp32} jmp       _jmp_addr_0x004123aa                          // 0x004121ea    e9bb010000
                         {disp32} fld       dword ptr [rdata_bytes + 0x2618]              // 0x004121ef    d90518b68a00
                         xor.s              cl, cl                                        // 0x004121f5    32c9
                         {disp8} mov        dword ptr [esp + 0x10], 0x3ec00000            // 0x004121f7    c74424100000c03e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e000000            // 0x004121ff    c744243c0000003e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x00412207    e99a010000
                         {disp32} fld       dword ptr [rdata_bytes + 0x2618]              // 0x0041220c    d90518b68a00
                         xor.s              cl, cl                                        // 0x00412212    32c9
                         {disp8} mov        dword ptr [esp + 0x10], 0x3f000000            // 0x00412214    c74424100000003f
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e000000            // 0x0041221c    c744243c0000003e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x00412224    e97d010000
                         {disp8} lea        eax, dword ptr [ecx + -0x07]                  // 0x00412229    8d41f9
                         mov.s              edx, eax                                      // 0x0041222c    8bd0
                         and                edx, 0x03                                     // 0x0041222e    83e203
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x00412231    89542444
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00412235    db442444
                         cdq                                                              // 0x00412239    99
                         and                edx, 0x03                                     // 0x0041223a    83e203
                         add.s              eax, edx                                      // 0x0041223d    03c2
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x0041223f    d80dd4b38a00
                         xor.s              cl, cl                                        // 0x00412245    32c9
                         sar                eax, 2                                        // 0x00412247    c1f802
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0041224a    89442444
                         {disp32} fadd      dword ptr [rdata_bytes + 0x250c]              // 0x0041224e    d8050cb58a00
                         {disp8} mov        byte ptr [esp + 0x2c], 0x01                   // 0x00412254    c644242c01
                         {disp8} fild       dword ptr [esp + 0x44]                        // 0x00412259    db442444
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e780000            // 0x0041225d    c744243c0000783e
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x00412265    d80dd4b38a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x250c]              // 0x0041226b    d8050cb58a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00412271    d95c2410
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x00412275    e92c010000
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x0041227a    8a442438
                         xor.s              cl, cl                                        // 0x0041227e    32c9
                         test               al, al                                        // 0x00412280    84c0
                         {disp8} je         _jmp_addr_0x0041229f                          // 0x00412282    741b
                         {disp32} fld       dword ptr [_rdata_float0p5]                   // 0x00412284    d905b4a38a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x3e800000            // 0x0041228a    c74424100000803e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e400000            // 0x00412292    c744243c0000403e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x0041229a    e907010000
_jmp_addr_0x0041229f:    {disp32} fld       dword ptr [rdata_bytes + 0x2620]              // 0x0041229f    d90520b68a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x3e800000            // 0x004122a5    c74424100000803e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e400000            // 0x004122ad    c744243c0000403e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x004122b5    e9ec000000
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x004122ba    8a442438
                         xor.s              cl, cl                                        // 0x004122be    32c9
                         test               al, al                                        // 0x004122c0    84c0
                         {disp8} je         _jmp_addr_0x004122df                          // 0x004122c2    741b
                         {disp32} fld       dword ptr [rdata_bytes + 0x2614]              // 0x004122c4    d90514b68a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x3e800000            // 0x004122ca    c74424100000803e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e400000            // 0x004122d2    c744243c0000403e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x004122da    e9c7000000
_jmp_addr_0x004122df:    {disp32} fld       dword ptr [rdata_bytes + 0x2610]              // 0x004122df    d90510b68a00
                         {disp8} mov        dword ptr [esp + 0x10], 0x3e800000            // 0x004122e5    c74424100000803e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e400000            // 0x004122ed    c744243c0000403e
                         {disp32} jmp       _jmp_addr_0x004123a6                          // 0x004122f5    e9ac000000
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x004122fa    8a442438
                         xor.s              cl, cl                                        // 0x004122fe    32c9
                         test               al, al                                        // 0x00412300    84c0
                         {disp8} je         _jmp_addr_0x0041230c                          // 0x00412302    7408
                         {disp32} fld       dword ptr [_rdata_float0p5]                   // 0x00412304    d905b4a38a00
                         {disp8} jmp        _jmp_addr_0x0041232c                          // 0x0041230a    eb20
_jmp_addr_0x0041230c:    {disp32} fld       dword ptr [rdata_bytes + 0x2620]              // 0x0041230c    d90520b68a00
                         {disp8} jmp        _jmp_addr_0x0041232c                          // 0x00412312    eb18
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x00412314    8a442438
                         xor.s              cl, cl                                        // 0x00412318    32c9
                         test               al, al                                        // 0x0041231a    84c0
                         {disp8} je         _jmp_addr_0x00412326                          // 0x0041231c    7408
                         {disp32} fld       dword ptr [rdata_bytes + 0x2614]              // 0x0041231e    d90514b68a00
                         {disp8} jmp        _jmp_addr_0x0041232c                          // 0x00412324    eb06
_jmp_addr_0x00412326:    {disp32} fld       dword ptr [rdata_bytes + 0x2610]              // 0x00412326    d90510b68a00
_jmp_addr_0x0041232c:    {disp8} mov        dword ptr [esp + 0x10], 0x3ee00000            // 0x0041232c    c74424100000e03e
                         {disp8} mov        dword ptr [esp + 0x3c], 0x3e400000            // 0x00412334    c744243c0000403e
                         {disp8} jmp        _jmp_addr_0x004123a6                          // 0x0041233c    eb68
                         {disp8} mov        dword ptr [esp + 0x10], 0x3e000000            // 0x0041233e    c74424100000003e
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000001            // 0x00412346    c744241801000000
_jmp_addr_0x0041234e:    {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x0041234e    8a442438
                         test               al, al                                        // 0x00412352    84c0
                         {disp8} je         _jmp_addr_0x0041238b                          // 0x00412354    7435
                         {disp32} fld       dword ptr [rdata_bytes + 0x260c]              // 0x00412356    d9050cb68a00
                         {disp8} jmp        _jmp_addr_0x00412391                          // 0x0041235c    eb33
                         mov                esi, 0x00000001                               // 0x0041235e    be01000000
                         {disp8} mov        al, byte ptr [esp + 0x38]                     // 0x00412363    8a442438
                         test               al, al                                        // 0x00412367    84c0
                         {disp8} je         _jmp_addr_0x0041237b                          // 0x00412369    7410
                         {disp32} fld       dword ptr [rdata_bytes + 0x2608]              // 0x0041236b    d90508b68a00
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f100000            // 0x00412371    c74424140000103f
                         {disp8} jmp        _jmp_addr_0x004123a2                          // 0x00412379    eb27
_jmp_addr_0x0041237b:    {disp32} fld       dword ptr [rdata_bytes + 0x2610]              // 0x0041237b    d90510b68a00
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f100000            // 0x00412381    c74424140000103f
                         {disp8} jmp        _jmp_addr_0x004123a2                          // 0x00412389    eb17
_jmp_addr_0x0041238b:    {disp32} fld       dword ptr [rdata_bytes + 0x2614]              // 0x0041238b    d90514b68a00
_jmp_addr_0x00412391:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00412391    8b442418
                         inc                eax                                           // 0x00412395    40
                         {disp8} mov        dword ptr [esp + 0x14], 0x3e400000            // 0x00412396    c74424140000403e
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0041239e    89442418
_jmp_addr_0x004123a2:    {disp8} mov        cl, byte ptr [esp + 0x44]                     // 0x004123a2    8a4c2444
_jmp_addr_0x004123a6:    {disp8} mov        bl, byte ptr [esp + 0x34]                     // 0x004123a6    8a5c2434
_jmp_addr_0x004123aa:    test               esi, esi                                      // 0x004123aa    85f6
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2510]              // 0x004123ac    d80510b58a00
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004123b2    d95c2434
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004123b6    d9442410
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2510]              // 0x004123ba    d80510b58a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x004123c0    d95c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x004123c4    d944243c
                         {disp32} fsub      dword ptr [rdata_bytes + 0x250c]              // 0x004123c8    d8250cb58a00
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x004123ce    d95c243c
                         {disp8} je         _jmp_addr_0x00412414                          // 0x004123d2    7440
                         fstp               st(0)                                         // 0x004123d4    ddd8
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3e000000            // 0x004123d6    c744241c0000003e
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x004123de    d9442434
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x004123e2    d844243c
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x004123e6    d95c2434
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x004123ea    d9442414
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2620]              // 0x004123ee    d80520b68a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x004123f4    d95c2414
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x004123f8    d9442410
                         {disp8} fadd       dword ptr [esp + 0x3c]                        // 0x004123fc    d844243c
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00412400    d95c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00412404    d944243c
                         fchs                                                             // 0x00412408    d9e0
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0041240a    d95c243c
                         {disp32} fld       dword ptr [rdata_bytes + 0x2604]              // 0x0041240e    d90504b68a00
_jmp_addr_0x00412414:    test               cl, cl                                        // 0x00412414    84c9
                         {disp8} mov        esi, dword ptr [esp + 0x4c]                   // 0x00412416    8b74244c
                         {disp8} mov        edi, dword ptr [esp + 0x48]                   // 0x0041241a    8b7c2448
                         {disp8} je         _jmp_addr_0x00412481                          // 0x0041241e    7461
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x00412420    8b0d80ccc400
                         fld                st(0)                                         // 0x00412426    d9c0
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x00412428    d844241c
                         push               0x42c80000                                    // 0x0041242c    680000c842
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00412431    8b542420
                         push               0x0                                           // 0x00412435    6a00
                         push               esi                                           // 0x00412437    56
                         push               edi                                           // 0x00412438    57
                         push               0x1                                           // 0x00412439    6a01
                         push               0x0                                           // 0x0041243b    6a00
                         push               ecx                                           // 0x0041243d    51
                         push               ecx                                           // 0x0041243e    51
                         fstp               dword ptr [esp]                               // 0x0041243f    d91c24
                         mov.s              al, bl                                        // 0x00412442    8ac3
                         neg                al                                            // 0x00412444    f6d8
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x00412446    d8442434
                         push               ecx                                           // 0x0041244a    51
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0041244b    8b4c2438
                         fstp               dword ptr [esp]                               // 0x0041244f    d91c24
                         push               edx                                           // 0x00412452    52
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x00412453    8b542448
                         push               ecx                                           // 0x00412457    51
                         sbb.s              eax, eax                                      // 0x00412458    1bc0
                         and                eax, 0xfffffffe                               // 0x0041245a    83e0fe
                         add                eax, 0x04                                     // 0x0041245d    83c004
                         lea                ecx, dword ptr [eax + edx * 0x1]              // 0x00412460    8d0c10
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00412463    8b542450
                         push               ecx                                           // 0x00412467    51
                         lea                ecx, dword ptr [eax + edx * 0x1]              // 0x00412468    8d0c10
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x0041246b    8b542460
                         push               ecx                                           // 0x0041246f    51
                         lea                ecx, dword ptr [eax + edx * 0x1]              // 0x00412470    8d0c10
                         push               ecx                                           // 0x00412473    51
                         add.s              eax, ebp                                      // 0x00412474    03c5
                         push               eax                                           // 0x00412476    50
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00412477    e804050000
                         add                esp, 0x3c                                     // 0x0041247c    83c43c
                         {disp8} jmp        _jmp_addr_0x00412483                          // 0x0041247f    eb02
_jmp_addr_0x00412481:    fstp               st(0)                                         // 0x00412481    ddd8
_jmp_addr_0x00412483:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00412483    8b442418
                         test               eax, eax                                      // 0x00412487    85c0
                         {disp8} je         _jmp_addr_0x004124e8                          // 0x00412489    745d
                         neg                bl                                            // 0x0041248b    f6db
                         push               -0x1                                          // 0x0041248d    6aff
                         push               -0x1                                          // 0x0041248f    6aff
                         push               0x8                                           // 0x00412491    6a08
                         sbb.s              ebx, ebx                                      // 0x00412493    1bdb
                         xor.s              edx, edx                                      // 0x00412495    33d2
                         and                ebx, 0x02                                     // 0x00412497    83e302
                         add                ebx, -0x02                                    // 0x0041249a    83c3fe
                         cmp                eax, 0x02                                     // 0x0041249d    83f802
                         {disp8} mov        al, byte ptr [esp + 0x44]                     // 0x004124a0    8a442444
                         setne              dl                                            // 0x004124a4    0f95c2
                         dec                edx                                           // 0x004124a7    4a
                         and                edx, 0x20                                     // 0x004124a8    83e220
                         neg                al                                            // 0x004124ab    f6d8
                         sbb.s              eax, eax                                      // 0x004124ad    1bc0
                         and                eax, 0x02                                     // 0x004124af    83e002
                         add                eax, 0x0b                                     // 0x004124b2    83c00b
                         add.s              edx, eax                                      // 0x004124b5    03d0
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x004124b7    8b44242c
                         push               edx                                           // 0x004124bb    52
                         {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x004124bc    8b542434
                         {disp8} lea        ecx, dword ptr [ebx + eax * 0x1 + -0x01]      // 0x004124c0    8d4c03ff
                         push               ecx                                           // 0x004124c4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x004124c5    8b4c2444
                         {disp8} lea        eax, dword ptr [ebx + edx * 0x1 + -0x01]      // 0x004124c9    8d4413ff
                         push               eax                                           // 0x004124cd    50
                         {disp8} lea        edx, dword ptr [ebx + ecx * 0x1 + 0x01]       // 0x004124ce    8d540b01
                         push               edx                                           // 0x004124d2    52
                         {disp8} lea        eax, dword ptr [ebx + ebp * 0x1 + 0x01]       // 0x004124d3    8d442b01
                         push               eax                                           // 0x004124d7    50
                         call               ?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z         // 0x004124d8    e843170000
                         add                esp, 0x20                                     // 0x004124dd    83c420
                         pop                edi                                           // 0x004124e0    5f
                         pop                esi                                           // 0x004124e1    5e
                         pop                ebp                                           // 0x004124e2    5d
                         pop                ebx                                           // 0x004124e3    5b
                         add                esp, 0x18                                     // 0x004124e4    83c418
                         ret                                                              // 0x004124e7    c3
_jmp_addr_0x004124e8:    {disp8} mov        al, byte ptr [esp + 0x2c]                     // 0x004124e8    8a44242c
                         test               al, al                                        // 0x004124ec    84c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5132dc]        // 0x004124ee    a1dc92ed00
                         {disp8} jne        _jmp_addr_0x004124fa                          // 0x004124f3    7505
                         {disp32} mov       eax, dword ptr [_SetupThing]                  // 0x004124f5    a180ccc400
_jmp_addr_0x004124fa:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x004124fa    d9442410
                         push               0x42c80000                                    // 0x004124fe    680000c842
                         {disp8} fadd       dword ptr [esp + 0x40]                        // 0x00412503    d8442440
                         push               0x0                                           // 0x00412507    6a00
                         {disp8} mov        edx, dword ptr [esp + 0x3c]                   // 0x00412509    8b54243c
                         push               esi                                           // 0x0041250d    56
                         push               edi                                           // 0x0041250e    57
                         push               0x1                                           // 0x0041250f    6a01
                         push               0x0                                           // 0x00412511    6a00
                         push               eax                                           // 0x00412513    50
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00412514    8b44243c
                         push               ecx                                           // 0x00412518    51
                         fstp               dword ptr [esp]                               // 0x00412519    d91c24
                         neg                bl                                            // 0x0041251c    f6db
                         {disp8} fld        dword ptr [esp + 0x54]                        // 0x0041251e    d9442454
                         push               ecx                                           // 0x00412522    51
                         {disp8} fadd       dword ptr [esp + 0x60]                        // 0x00412523    d8442460
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00412527    8b4c2434
                         fstp               dword ptr [esp]                               // 0x0041252b    d91c24
                         push               ecx                                           // 0x0041252e    51
                         push               edx                                           // 0x0041252f    52
                         {disp8} mov        edx, dword ptr [esp + 0x50]                   // 0x00412530    8b542450
                         sbb.s              ebx, ebx                                      // 0x00412534    1bdb
                         and                ebx, 0x02                                     // 0x00412536    83e302
                         add                ebx, -0x02                                    // 0x00412539    83c3fe
                         lea                ecx, dword ptr [ebx + eax * 0x1]              // 0x0041253c    8d0c03
                         push               ecx                                           // 0x0041253f    51
                         {disp8} mov        ecx, dword ptr [esp + 0x60]                   // 0x00412540    8b4c2460
                         lea                eax, dword ptr [ebx + edx * 0x1]              // 0x00412544    8d0413
                         push               eax                                           // 0x00412547    50
                         lea                edx, dword ptr [ebx + ecx * 0x1]              // 0x00412548    8d140b
                         push               edx                                           // 0x0041254b    52
                         add.s              ebx, ebp                                      // 0x0041254c    03dd
                         push               ebx                                           // 0x0041254e    53
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0041254f    e82c040000
                         add                esp, 0x3c                                     // 0x00412554    83c43c
                         pop                edi                                           // 0x00412557    5f
                         pop                esi                                           // 0x00412558    5e
                         pop                ebp                                           // 0x00412559    5d
                         pop                ebx                                           // 0x0041255a    5b
                         add                esp, 0x18                                     // 0x0041255b    83c418
                         ret                                                              // 0x0041255e    c3

// Snippet: db, [0x0041255f, 0x00412560)
.byte 0x90                        // 0x0041255f

// Snippet: jmptbl, [0x00412560, 0x0041258c)
.byte 0x3e, 0x23, 0x41, 0x00      // 0x00412560
.byte 0x63, 0x23, 0x41, 0x00      // 0x00412564
.byte 0x5e, 0x23, 0x41, 0x00      // 0x00412568
.byte 0xc0, 0x21, 0x41, 0x00      // 0x0041256c
.byte 0x7a, 0x22, 0x41, 0x00      // 0x00412570
.byte 0xba, 0x22, 0x41, 0x00      // 0x00412574
.byte 0xfa, 0x22, 0x41, 0x00      // 0x00412578
.byte 0x14, 0x23, 0x41, 0x00      // 0x0041257c
.byte 0xef, 0x21, 0x41, 0x00      // 0x00412580
.byte 0x0c, 0x22, 0x41, 0x00      // 0x00412584
.byte 0x29, 0x22, 0x41, 0x00      // 0x00412588

// Snippet: ijmptbl, [0x0041258c, 0x004125a0)
.byte 0x00, 0x01, 0x02, 0x03      // 0x0041258c
.byte 0x04, 0x05, 0x06, 0x07      // 0x00412590
.byte 0x08, 0x09, 0x0a, 0x0a      // 0x00412594
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x00412598
.byte 0x0a, 0x0a, 0x0a, 0x0a      // 0x0041259c

