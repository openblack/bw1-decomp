.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _HideAll__13DialogBoxBaseFv@0
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x00564160
.extern _jmp_addr_0x005de5e0
.extern _jmp_addr_0x005de8b0
.extern ?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z
.extern _jmp_addr_0x0066b900
.extern _jmp_addr_0x0066b9c0
.extern _jmp_addr_0x0066bad0
.extern _jmp_addr_0x0078e9b0
.extern _jmp_addr_0x007a1400
.extern _wcscpy
.extern ___nw__FUl

.globl _jmp_addr_0x0053f740
.globl ?Init@MainMenu@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@MainMenu@@UAEXXZ
.globl ?InitControls@MainMenu@@UAEXXZ

start_0x0053f740_0x0053ff00:
// Snippet: asm, [0x0053f740, 0x0053fee6)
_jmp_addr_0x0053f740:    {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0053f740    8b44240c
                         test              eax, eax                                      // 0x0053f744    85c0
                         {disp8} jne       _jmp_addr_0x0053f749                          // 0x0053f746    7501
                         ret                                                             // 0x0053f748    c3
_jmp_addr_0x0053f749:    cmp               dword ptr [esp + 0x04], 0x01                  // 0x0053f749    837c240401
                         push              esi                                           // 0x0053f74e    56
                         {disp8} jne       _jmp_addr_0x0053f7a3                          // 0x0053f74f    7552
                         {disp8} mov       esi, dword ptr [eax + 0x18]                   // 0x0053f751    8b7018
                         cmp               esi, 0x000008fc                               // 0x0053f754    81fefc080000
                         {disp8} jl        _jmp_addr_0x0053f7a3                          // 0x0053f75a    7c47
                         cmp               esi, 0x00000902                               // 0x0053f75c    81fe02090000
                         {disp8} jge       _jmp_addr_0x0053f7a3                          // 0x0053f762    7d3f
                         call              _HideAll__13DialogBoxBaseFv@0                 // 0x0053f764    e8773ffdff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30a65c]        // 0x0053f769    8b0d5c06cd00
                         mov               eax, dword ptr [ecx]                          // 0x0053f76f    8b01
                         call              dword ptr [eax + 0xc]                         // 0x0053f771    ff500c
                         {disp32} lea      eax, dword ptr [esi + -0x000008fc]            // 0x0053f774    8d8604f7ffff
                         dec               eax                                           // 0x0053f77a    48
                         {disp8} je        _jmp_addr_0x0053f78f                          // 0x0053f77b    7412
                         dec               eax                                           // 0x0053f77d    48
                         {disp8} jne       _jmp_addr_0x0053f7a3                          // 0x0053f77e    7523
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30ab10]        // 0x0053f780    8b0d100bcd00
                         mov               edx, dword ptr [ecx]                          // 0x0053f786    8b11
                         call              dword ptr [edx + 0xc]                         // 0x0053f788    ff520c
                         xor.s             eax, eax                                      // 0x0053f78b    33c0
                         pop               esi                                           // 0x0053f78d    5e
                         ret                                                             // 0x0053f78e    c3
_jmp_addr_0x0053f78f:    {disp32} mov      eax, dword ptr [data_bytes + 0x30ab08]        // 0x0053f78f    a1080bcd00
                         {disp8} mov       byte ptr [eax + 0x40], 0x00                   // 0x0053f794    c6404000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30ab08]        // 0x0053f798    8b0d080bcd00
                         mov               edx, dword ptr [ecx]                          // 0x0053f79e    8b11
                         call              dword ptr [edx + 0xc]                         // 0x0053f7a0    ff520c
_jmp_addr_0x0053f7a3:    xor.s             eax, eax                                      // 0x0053f7a3    33c0
                         pop               esi                                           // 0x0053f7a5    5e
                         ret                                                             // 0x0053f7a6    c3
                         nop                                                             // 0x0053f7a7    90
                         nop                                                             // 0x0053f7a8    90
                         nop                                                             // 0x0053f7a9    90
                         nop                                                             // 0x0053f7aa    90
                         nop                                                             // 0x0053f7ab    90
                         nop                                                             // 0x0053f7ac    90
                         nop                                                             // 0x0053f7ad    90
                         nop                                                             // 0x0053f7ae    90
                         nop                                                             // 0x0053f7af    90
_jmp_addr_0x0053f7b0:    sub               esp, 0x0c                                     // 0x0053f7b0    83ec0c
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x286d1c]        // 0x0053f7b3    8b0d1ccdc400
                         {disp32} mov      eax, dword ptr [ecx + 0x0000009c]             // 0x0053f7b9    8b819c000000
                         {disp32} mov      ecx, dword ptr [ecx + 0x000000a0]             // 0x0053f7bf    8b89a0000000
                         {disp8} mov       dword ptr [esp + 0x04], eax                   // 0x0053f7c5    89442404
                         {disp8} fild      dword ptr [esp + 0x04]                        // 0x0053f7c9    db442404
                         cdq                                                             // 0x0053f7cd    99
                         sub.s             eax, edx                                      // 0x0053f7ce    2bc2
                         sar               eax, 1                                        // 0x0053f7d0    d1f8
                         {disp32} fmul     dword ptr [_rdata_float0p2]                   // 0x0053f7d2    d80daca38a00
                         mov               edx, 0x00000190                               // 0x0053f7d8    ba90010000
                         sub.s             edx, eax                                      // 0x0053f7dd    2bd0
                         push              ebx                                           // 0x0053f7df    53
                         {disp8} mov       dword ptr [esp + 0x04], edx                   // 0x0053f7e0    89542404
                         {disp8} fstp      dword ptr [esp + 0x08]                        // 0x0053f7e4    d95c2408
                         push              ebp                                           // 0x0053f7e8    55
                         {disp8} fild      dword ptr [esp + 0x08]                        // 0x0053f7e9    db442408
                         push              esi                                           // 0x0053f7ed    56
                         push              edi                                           // 0x0053f7ee    57
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x0053f7ef    894c2418
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x0053f7f3    d95c2410
                         xor.s             esi, esi                                      // 0x0053f7f7    33f6
_jmp_addr_0x0053f7f9:    mov.s             eax, esi                                      // 0x0053f7f9    8bc6
                         sub               eax, 0x00                                     // 0x0053f7fb    83e800
                         {disp8} je        _jmp_addr_0x0053f843                          // 0x0053f7fe    7443
                         dec               eax                                           // 0x0053f800    48
                         {disp8} je        _jmp_addr_0x0053f822                          // 0x0053f801    741f
                         dec               eax                                           // 0x0053f803    48
                         {disp8} je        _jmp_addr_0x0053f80d                          // 0x0053f804    7407
                         mov               ebp, 0x00c4cd30                               // 0x0053f806    bd30cdc400
                         {disp8} jmp       _jmp_addr_0x0053f865                          // 0x0053f80b    eb58
_jmp_addr_0x0053f80d:    cmp               dword ptr [data_bytes + 0x351c9c], 0x13       // 0x0053f80d    833d9c7cd10013
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351c98]        // 0x0053f814    a1987cd100
                         {disp8} jbe       _jmp_addr_0x0053f862                          // 0x0053f819    7647
                         add               eax, 0x000000e4                               // 0x0053f81b    05e4000000
                         {disp8} jmp       _jmp_addr_0x0053f862                          // 0x0053f820    eb40
_jmp_addr_0x0053f822:    cmp               dword ptr [data_bytes + 0x351cac], 0x000019f8 // 0x0053f822    813dac7cd100f8190000
                         {disp8} ja        _jmp_addr_0x0053f835                          // 0x0053f82c    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f82e    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053f862                          // 0x0053f833    eb2d
_jmp_addr_0x0053f835:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f835    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x000137a0]             // 0x0053f83b    8d81a0370100
                         {disp8} jmp       _jmp_addr_0x0053f862                          // 0x0053f841    eb1f
_jmp_addr_0x0053f843:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a7a // 0x0053f843    813dac7cd1007a1a0000
                         {disp8} ja        _jmp_addr_0x0053f856                          // 0x0053f84d    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053f84f    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053f862                          // 0x0053f854    eb0c
_jmp_addr_0x0053f856:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053f856    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013db8]             // 0x0053f85c    8d82b83d0100
_jmp_addr_0x0053f862:    {disp8} mov       ebp, dword ptr [eax + 0x08]                   // 0x0053f862    8b6808
_jmp_addr_0x0053f865:    push              0x0000065e                                    // 0x0053f865    685e060000
                         push              0x00bea568                                    // 0x0053f86a    6868a5be00
                         push              0x00000254                                    // 0x0053f86f    6854020000
                         call              ___nw__FUl                                    // 0x0053f874    e817bf2900
                         mov.s             ebx, eax                                      // 0x0053f879    8bd8
                         add               esp, 0x0c                                     // 0x0053f87b    83c40c
                         test              ebx, ebx                                      // 0x0053f87e    85db
                         {disp8} je        _jmp_addr_0x0053f8dd                          // 0x0053f880    745b
                         {disp8} fld       dword ptr [esp + 0x10]                        // 0x0053f882    d9442410
                         call              _jmp_addr_0x007a1400                          // 0x0053f886    e8751b2600
                         {disp8} fld       dword ptr [esp + 0x10]                        // 0x0053f88b    d9442410
                         {disp8} fadd      dword ptr [esp + 0x14]                        // 0x0053f88f    d8442414
                         mov.s             edi, eax                                      // 0x0053f893    8bf8
                         xor.s             eax, eax                                      // 0x0053f895    33c0
                         cmp               esi, 0x04                                     // 0x0053f897    83fe04
                         sete              al                                            // 0x0053f89a    0f94c0
                         xor.s             ecx, ecx                                      // 0x0053f89d    33c9
                         test              esi, esi                                      // 0x0053f89f    85f6
                         sete              cl                                            // 0x0053f8a1    0f94c1
                         xor.s             edx, edx                                      // 0x0053f8a4    33d2
                         push              eax                                           // 0x0053f8a6    50
                         cmp               esi, dword ptr [esp + 0x24]                   // 0x0053f8a7    3b742424
                         sete              dl                                            // 0x0053f8ab    0f94c2
                         push              ecx                                           // 0x0053f8ae    51
                         push              edx                                           // 0x0053f8af    52
                         push              ebp                                           // 0x0053f8b0    55
                         push              0x28                                          // 0x0053f8b1    6a28
                         call              _jmp_addr_0x007a1400                          // 0x0053f8b3    e8481b2600
                         sub.s             eax, edi                                      // 0x0053f8b8    2bc7
                         push              eax                                           // 0x0053f8ba    50
                         {disp8} mov       eax, dword ptr [esp + 0x30]                   // 0x0053f8bb    8b442430
                         cdq                                                             // 0x0053f8bf    99
                         sub.s             eax, edx                                      // 0x0053f8c0    2bc2
                         sar               eax, 1                                        // 0x0053f8c2    d1f8
                         mov               ecx, 0x00000104                               // 0x0053f8c4    b904010000
                         sub.s             ecx, eax                                      // 0x0053f8c9    2bc8
                         push              ecx                                           // 0x0053f8cb    51
                         push              edi                                           // 0x0053f8cc    57
                         {disp32} lea      edx, dword ptr [esi + 0x000008fc]             // 0x0053f8cd    8d96fc080000
                         push              edx                                           // 0x0053f8d3    52
                         mov.s             ecx, ebx                                      // 0x0053f8d4    8bcb
                         call              @__ct__14SetupTabButtonFiiiiiPwiii@35         // 0x0053f8d6    e805fdecff
                         {disp8} jmp       _jmp_addr_0x0053f8df                          // 0x0053f8db    eb02
_jmp_addr_0x0053f8dd:    xor.s             eax, eax                                      // 0x0053f8dd    33c0
_jmp_addr_0x0053f8df:    cmp               esi, 0x02                                     // 0x0053f8df    83fe02
                         {disp8} jne       _jmp_addr_0x0053f8e9                          // 0x0053f8e2    7505
                         {disp32} mov      dword ptr [data_bytes + 0x30a698], eax        // 0x0053f8e4    a39806cd00
_jmp_addr_0x0053f8e9:    {disp8} fld       dword ptr [esp + 0x10]                        // 0x0053f8e9    d9442410
                         inc               esi                                           // 0x0053f8ed    46
                         cmp               esi, 0x05                                     // 0x0053f8ee    83fe05
                         {disp8} fadd      dword ptr [esp + 0x14]                        // 0x0053f8f1    d8442414
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x0053f8f5    d95c2410
                         {disp32} jl       _jmp_addr_0x0053f7f9                          // 0x0053f8f9    0f8cfafeffff
                         pop               edi                                           // 0x0053f8ff    5f
                         pop               esi                                           // 0x0053f900    5e
                         pop               ebp                                           // 0x0053f901    5d
                         pop               ebx                                           // 0x0053f902    5b
                         add               esp, 0x0c                                     // 0x0053f903    83c40c
                         ret                                                             // 0x0053f906    c3
                         nop                                                             // 0x0053f907    90
                         nop                                                             // 0x0053f908    90
                         nop                                                             // 0x0053f909    90
                         nop                                                             // 0x0053f90a    90
                         nop                                                             // 0x0053f90b    90
                         nop                                                             // 0x0053f90c    90
                         nop                                                             // 0x0053f90d    90
                         nop                                                             // 0x0053f90e    90
                         nop                                                             // 0x0053f90f    90
?Init@MainMenu@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x0053f910    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x0053f914    8b542404
                         sub               esp, 0x00000400                               // 0x0053f918    81ec00040000
                         push              esi                                           // 0x0053f91e    56
                         push              edi                                           // 0x0053f91f    57
                         mov.s             edi, ecx                                      // 0x0053f920    8bf9
                         {disp32} mov      ecx, dword ptr [esp + 0x00000410]             // 0x0053f922    8b8c2410040000
                         push              eax                                           // 0x0053f929    50
                         push              ecx                                           // 0x0053f92a    51
                         push              edx                                           // 0x0053f92b    52
                         mov.s             ecx, edi                                      // 0x0053f92c    8bcf
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x0053f92e    e8cd3afdff
                         {disp32} lea      eax, dword ptr [esp + 0x00000208]             // 0x0053f933    8d842408020000
                         push              eax                                           // 0x0053f93a    50
                         {disp32} mov      dword ptr [data_bytes + 0x30ab60], edi        // 0x0053f93b    893d600bcd00
                         call              _jmp_addr_0x0066b900                          // 0x0053f941    e8babf1200
                         push              0x00000675                                    // 0x0053f946    6875060000
                         push              0x00bea568                                    // 0x0053f94b    6868a5be00
                         push              0x00000244                                    // 0x0053f950    6844020000
                         call              ___nw__FUl                                    // 0x0053f955    e836be2900
                         mov.s             esi, eax                                      // 0x0053f95a    8bf0
                         add               esp, 0x10                                     // 0x0053f95c    83c410
                         test              esi, esi                                      // 0x0053f95f    85f6
                         {disp8} je        _jmp_addr_0x0053f9a2                          // 0x0053f961    743f
                         push              0x00c4cd30                                    // 0x0053f963    6830cdc400
                         push              0x5a                                          // 0x0053f968    6a5a
                         push              0x000002bc                                    // 0x0053f96a    68bc020000
                         push              0x41                                          // 0x0053f96f    6a41
                         push              0x32                                          // 0x0053f971    6a32
                         push              0x000003e7                                    // 0x0053f973    68e7030000
                         mov.s             ecx, esi                                      // 0x0053f978    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0053f97a    e8d198ecff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0053f97f    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000004      // 0x0053f985    c7863c02000004000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0053f98f    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], 0x00000000      // 0x0053f996    c7864002000000000000
                         {disp8} jmp       _jmp_addr_0x0053f9a4                          // 0x0053f9a0    eb02
_jmp_addr_0x0053f9a2:    xor.s             esi, esi                                      // 0x0053f9a2    33f6
_jmp_addr_0x0053f9a4:    push              0x00000679                                    // 0x0053f9a4    6879060000
                         push              0x00bea568                                    // 0x0053f9a9    6868a5be00
                         push              0x00000244                                    // 0x0053f9ae    6844020000
                         {disp8} mov       dword ptr [edi + 0x24], esi                   // 0x0053f9b3    897724
                         call              ___nw__FUl                                    // 0x0053f9b6    e8d5bd2900
                         add               esp, 0x0c                                     // 0x0053f9bb    83c40c
                         test              eax, eax                                      // 0x0053f9be    85c0
                         {disp8} je        _jmp_addr_0x0053f9e5                          // 0x0053f9c0    7423
                         push              0x0                                           // 0x0053f9c2    6a00
                         push              0x00c4cd30                                    // 0x0053f9c4    6830cdc400
                         push              0x46                                          // 0x0053f9c9    6a46
                         push              0x000001b8                                    // 0x0053f9cb    68b8010000
                         push              0x00000091                                    // 0x0053f9d0    6891000000
                         push              0x000000b4                                    // 0x0053f9d5    68b4000000
                         push              0x0                                           // 0x0053f9da    6a00
                         mov.s             ecx, eax                                      // 0x0053f9dc    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x0053f9de    e8cd9eecff
                         {disp8} jmp       _jmp_addr_0x0053f9e7                          // 0x0053f9e3    eb02
_jmp_addr_0x0053f9e5:    xor.s             eax, eax                                      // 0x0053f9e5    33c0
_jmp_addr_0x0053f9e7:    push              0x0000067a                                    // 0x0053f9e7    687a060000
                         push              0x00bea568                                    // 0x0053f9ec    6868a5be00
                         push              0x00000244                                    // 0x0053f9f1    6844020000
                         {disp8} mov       dword ptr [edi + 0x10], eax                   // 0x0053f9f6    894710
                         call              ___nw__FUl                                    // 0x0053f9f9    e892bd2900
                         add               esp, 0x0c                                     // 0x0053f9fe    83c40c
                         test              eax, eax                                      // 0x0053fa01    85c0
                         {disp8} je        _jmp_addr_0x0053fa28                          // 0x0053fa03    7423
                         push              0x0                                           // 0x0053fa05    6a00
                         push              0x00c4cd30                                    // 0x0053fa07    6830cdc400
                         push              0x46                                          // 0x0053fa0c    6a46
                         push              0x000001b8                                    // 0x0053fa0e    68b8010000
                         push              0x000000e1                                    // 0x0053fa13    68e1000000
                         push              0x000000b4                                    // 0x0053fa18    68b4000000
                         push              0x1                                           // 0x0053fa1d    6a01
                         mov.s             ecx, eax                                      // 0x0053fa1f    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x0053fa21    e88a9eecff
                         {disp8} jmp       _jmp_addr_0x0053fa2a                          // 0x0053fa26    eb02
_jmp_addr_0x0053fa28:    xor.s             eax, eax                                      // 0x0053fa28    33c0
_jmp_addr_0x0053fa2a:    push              0x0000067b                                    // 0x0053fa2a    687b060000
                         push              0x00bea568                                    // 0x0053fa2f    6868a5be00
                         push              0x00000244                                    // 0x0053fa34    6844020000
                         {disp8} mov       dword ptr [edi + 0x14], eax                   // 0x0053fa39    894714
                         call              ___nw__FUl                                    // 0x0053fa3c    e84fbd2900
                         add               esp, 0x0c                                     // 0x0053fa41    83c40c
                         test              eax, eax                                      // 0x0053fa44    85c0
                         {disp8} je        _jmp_addr_0x0053fa6b                          // 0x0053fa46    7423
                         push              0x0                                           // 0x0053fa48    6a00
                         push              0x00c4cd30                                    // 0x0053fa4a    6830cdc400
                         push              0x46                                          // 0x0053fa4f    6a46
                         push              0x000001b8                                    // 0x0053fa51    68b8010000
                         push              0x00000131                                    // 0x0053fa56    6831010000
                         push              0x000000b4                                    // 0x0053fa5b    68b4000000
                         push              0x2                                           // 0x0053fa60    6a02
                         mov.s             ecx, eax                                      // 0x0053fa62    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x0053fa64    e8479eecff
                         {disp8} jmp       _jmp_addr_0x0053fa6d                          // 0x0053fa69    eb02
_jmp_addr_0x0053fa6b:    xor.s             eax, eax                                      // 0x0053fa6b    33c0
_jmp_addr_0x0053fa6d:    push              0x0000067c                                    // 0x0053fa6d    687c060000
                         push              0x00bea568                                    // 0x0053fa72    6868a5be00
                         push              0x00000244                                    // 0x0053fa77    6844020000
                         {disp8} mov       dword ptr [edi + 0x18], eax                   // 0x0053fa7c    894718
                         call              ___nw__FUl                                    // 0x0053fa7f    e80cbd2900
                         add               esp, 0x0c                                     // 0x0053fa84    83c40c
                         test              eax, eax                                      // 0x0053fa87    85c0
                         {disp8} je        _jmp_addr_0x0053faae                          // 0x0053fa89    7423
                         push              0x0                                           // 0x0053fa8b    6a00
                         push              0x00c4cd30                                    // 0x0053fa8d    6830cdc400
                         push              0x46                                          // 0x0053fa92    6a46
                         push              0x000001b8                                    // 0x0053fa94    68b8010000
                         push              0x00000181                                    // 0x0053fa99    6881010000
                         push              0x000000b4                                    // 0x0053fa9e    68b4000000
                         push              0x3                                           // 0x0053faa3    6a03
                         mov.s             ecx, eax                                      // 0x0053faa5    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x0053faa7    e8049eecff
                         {disp8} jmp       _jmp_addr_0x0053fab0                          // 0x0053faac    eb02
_jmp_addr_0x0053faae:    xor.s             eax, eax                                      // 0x0053faae    33c0
_jmp_addr_0x0053fab0:    push              0x0000067d                                    // 0x0053fab0    687d060000
                         push              0x00bea568                                    // 0x0053fab5    6868a5be00
                         push              0x00000244                                    // 0x0053faba    6844020000
                         {disp8} mov       dword ptr [edi + 0x1c], eax                   // 0x0053fabf    89471c
                         call              ___nw__FUl                                    // 0x0053fac2    e8c9bc2900
                         add               esp, 0x0c                                     // 0x0053fac7    83c40c
                         test              eax, eax                                      // 0x0053faca    85c0
                         {disp8} je        _jmp_addr_0x0053faf1                          // 0x0053facc    7423
                         push              0x0                                           // 0x0053face    6a00
                         push              0x00c4cd30                                    // 0x0053fad0    6830cdc400
                         push              0x46                                          // 0x0053fad5    6a46
                         push              0x000001b8                                    // 0x0053fad7    68b8010000
                         push              0x000001d1                                    // 0x0053fadc    68d1010000
                         push              0x000000b4                                    // 0x0053fae1    68b4000000
                         push              0x4                                           // 0x0053fae6    6a04
                         mov.s             ecx, eax                                      // 0x0053fae8    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x0053faea    e8c19decff
                         {disp8} jmp       _jmp_addr_0x0053faf3                          // 0x0053faef    eb02
_jmp_addr_0x0053faf1:    xor.s             eax, eax                                      // 0x0053faf1    33c0
_jmp_addr_0x0053faf3:    {disp8} mov       dword ptr [edi + 0x20], eax                   // 0x0053faf3    894720
                         call              _jmp_addr_0x0066b9c0                          // 0x0053faf6    e8c5be1200
                         test              eax, eax                                      // 0x0053fafb    85c0
                         {disp8} je        _jmp_addr_0x0053fb32                          // 0x0053fafd    7433
                         {disp32} mov      esi, dword ptr [rdata_bytes + 0x60c]          // 0x0053faff    8b350c968a00
                         call              esi                                           // 0x0053fb05    ffd6
                         push              eax                                           // 0x0053fb07    50
                         call              ?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z   // 0x0053fb08    e893bc1200
                         call              esi                                           // 0x0053fb0d    ffd6
                         push              eax                                           // 0x0053fb0f    50
                         call              dword ptr [__imp__LHNetUseProfile__YAXPAG_Z@4]// 0x0053fb10    ff1548958a00
                         {disp8} lea       ecx, dword ptr [esp + 0x10]                   // 0x0053fb16    8d4c2410
                         push              ecx                                           // 0x0053fb1a    51
                         call              _jmp_addr_0x0066b900                          // 0x0053fb1b    e8e0bd1200
                         {disp8} lea       edx, dword ptr [esp + 0x14]                   // 0x0053fb20    8d542414
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x0053fb24    6838bdd400
                         push              edx                                           // 0x0053fb29    52
                         call              _jmp_addr_0x0066bad0                          // 0x0053fb2a    e8a1bf1200
                         add               esp, 0x14                                     // 0x0053fb2f    83c414
_jmp_addr_0x0053fb32:    push              0x0                                           // 0x0053fb32    6a00
                         call              _jmp_addr_0x0053f7b0                          // 0x0053fb34    e877fcffff
                         add               esp, 0x04                                     // 0x0053fb39    83c404
                         pop               edi                                           // 0x0053fb3c    5f
                         pop               esi                                           // 0x0053fb3d    5e
                         add               esp, 0x00000400                               // 0x0053fb3e    81c400040000
                         ret               0x000c                                        // 0x0053fb44    c20c00
                         nop                                                             // 0x0053fb47    90
                         nop                                                             // 0x0053fb48    90
                         nop                                                             // 0x0053fb49    90
                         nop                                                             // 0x0053fb4a    90
                         nop                                                             // 0x0053fb4b    90
                         nop                                                             // 0x0053fb4c    90
                         nop                                                             // 0x0053fb4d    90
                         nop                                                             // 0x0053fb4e    90
                         nop                                                             // 0x0053fb4f    90
?Destroy@MainMenu@@UAEXXZ:
                         push              esi                                           // 0x0053fb50    56
                         mov.s             esi, ecx                                      // 0x0053fb51    8bf1
                         call              _jmp_addr_0x005de8b0                          // 0x0053fb53    e858ed0900
                         mov.s             ecx, esi                                      // 0x0053fb58    8bce
                         call              ?Destroy@DialogBoxBase@@UAEXXZ                // 0x0053fb5a    e8313afdff
                         {disp32} mov      dword ptr [data_bytes + 0x30ab60], 0x00000000 // 0x0053fb5f    c705600bcd0000000000
                         pop               esi                                           // 0x0053fb69    5e
                         ret                                                             // 0x0053fb6a    c3
                         call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0053fb6b    e8091decff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000ded // 0x0053fb70    813dac7cd100ed0d0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fb7a    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0053fb86                          // 0x0053fb7f    7605
                         add               eax, 0x0000a71c                               // 0x0053fb81    051ca70000
_jmp_addr_0x0053fb86:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0053fb86    8b4808
                         push              0x0                                           // 0x0053fb89    6a00
                         push              0x3                                           // 0x0053fb8b    6a03
                         push              ecx                                           // 0x0053fb8d    51
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x0053fb8e    8b4c2410
                         call              @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0053fb92    e8f915edff
                         {disp32} mov      byte ptr [data_bytes + 0x30ab01], 0x01        // 0x0053fb97    c605010bcd0001
                         ret                                                             // 0x0053fb9e    c3
                         nop                                                             // 0x0053fb9f    90
?InitControls@MainMenu@@UAEXXZ:
                         sub               esp, 0x00000200                               // 0x0053fba0    81ec00020000
                         push              ebx                                           // 0x0053fba6    53
                         push              ebp                                           // 0x0053fba7    55
                         push              esi                                           // 0x0053fba8    56
                         push              edi                                           // 0x0053fba9    57
                         mov.s             ebp, ecx                                      // 0x0053fbaa    8be9
                         call              dword ptr [rdata_bytes + 0x60c]               // 0x0053fbac    ff150c968a00
                         push              eax                                           // 0x0053fbb2    50
                         call              ?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z   // 0x0053fbb3    e8e8bb1200
                         {disp8} lea       eax, dword ptr [esp + 0x14]                   // 0x0053fbb8    8d442414
                         push              eax                                           // 0x0053fbbc    50
                         call              _jmp_addr_0x0066b900                          // 0x0053fbbd    e83ebd1200
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x0053fbc2    8d4c2418
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x0053fbc6    6838bdd400
                         push              ecx                                           // 0x0053fbcb    51
                         call              _jmp_addr_0x0066bad0                          // 0x0053fbcc    e8ffbe1200
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0053fbd1    a1ac7cd100
                         add               esp, 0x10                                     // 0x0053fbd6    83c410
                         cmp               eax, 0x00000d4c                               // 0x0053fbd9    3d4c0d0000
                         {disp8} ja        _jmp_addr_0x0053fbe7                          // 0x0053fbde    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fbe0    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fbf3                          // 0x0053fbe5    eb0c
_jmp_addr_0x0053fbe7:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fbe7    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00009f90]             // 0x0053fbed    8d82909f0000
_jmp_addr_0x0053fbf3:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0053fbf3    8b4008
                         {disp8} mov       ecx, dword ptr [ebp + 0x24]                   // 0x0053fbf6    8b4d24
                         push              0x00d4bf38                                    // 0x0053fbf9    6838bfd400
                         push              eax                                           // 0x0053fbfe    50
                         add               ecx, 0x24                                     // 0x0053fbff    83c124
                         push              ecx                                           // 0x0053fc02    51
                         call              dword ptr [rdata_bytes + 0x360]               // 0x0053fc03    ff1560938a00
                         {disp8} mov       dword ptr [ebp + 0x30], 0xffffffff            // 0x0053fc09    c74530ffffffff
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0053fc10    8b155c19d000
                         add               esp, 0x0c                                     // 0x0053fc16    83c40c
                         {disp32} lea      ecx, dword ptr [edx + 0x00250310]             // 0x0053fc19    8d8a10032500
                         call              _jmp_addr_0x0078e9b0                          // 0x0053fc1f    e88ced2400
                         call              _jmp_addr_0x005de5e0                          // 0x0053fc24    e8b7e90900
                         call              _jmp_addr_0x00564160                          // 0x0053fc29    e832450200
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0053fc2e    8b0d5c19d000
                         {disp32} mov      dword ptr [ecx + 0x002502a4], eax             // 0x0053fc34    8981a4022500
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0053fc3a    8b155c19d000
                         {disp32} mov      eax, dword ptr [edx + 0x002502a4]             // 0x0053fc40    8b82a4022500
                         {disp8} mov       dword ptr [ebp + 0x34], eax                   // 0x0053fc46    894534
                         xor.s             edi, edi                                      // 0x0053fc49    33ff
_jmp_addr_0x0053fc4b:    cmp               edi, 0x04                                     // 0x0053fc4b    83ff04
                         {disp8} mov       esi, dword ptr [ebp + edi * 0x4 + 0x10]       // 0x0053fc4e    8b74bd10
                         {disp32} ja       _jmp_addr_0x0053fe14                          // 0x0053fc52    0f87bc010000
                         jmp               dword ptr [edi*4 + 0x53fee8]                  // 0x0053fc58    ff24bde8fe5300
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d4e // 0x0053fc5f    813dac7cd1004e0d0000
                         {disp8} ja        _jmp_addr_0x0053fc72                          // 0x0053fc69    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fc6b    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fc7e                          // 0x0053fc70    eb0c
_jmp_addr_0x0053fc72:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fc72    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x00009fa8]             // 0x0053fc78    8d81a89f0000
_jmp_addr_0x0053fc7e:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0053fc7e    8b5008
                         push              edx                                           // 0x0053fc81    52
                         {disp8} lea       eax, dword ptr [esi + 0x24]                   // 0x0053fc82    8d4624
                         push              eax                                           // 0x0053fc85    50
                         call              _wcscpy                                       // 0x0053fc86    e82b632800
                         add               esp, 0x08                                     // 0x0053fc8b    83c408
                         {disp32} mov      dword ptr [esi + 0x00000238], 0x0053ff00      // 0x0053fc8e    c7863802000000ff5300
                         {disp32} jmp      _jmp_addr_0x0053fe14                          // 0x0053fc98    e977010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0053fc9d    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00205a0c]             // 0x0053fca3    8b810c5a2000
                         test              eax, eax                                      // 0x0053fca9    85c0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0053fcab    a1ac7cd100
                         {disp8} jne       _jmp_addr_0x0053fcce                          // 0x0053fcb0    751c
                         cmp               eax, 0x00001aca                               // 0x0053fcb2    3dca1a0000
                         {disp8} ja        _jmp_addr_0x0053fcc0                          // 0x0053fcb7    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fcb9    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fce8                          // 0x0053fcbe    eb28
_jmp_addr_0x0053fcc0:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fcc0    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00014178]             // 0x0053fcc6    8d8278410100
                         {disp8} jmp       _jmp_addr_0x0053fce8                          // 0x0053fccc    eb1a
_jmp_addr_0x0053fcce:    cmp               eax, 0x00001acb                               // 0x0053fcce    3dcb1a0000
                         {disp8} ja        _jmp_addr_0x0053fcdc                          // 0x0053fcd3    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fcd5    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fce8                          // 0x0053fcda    eb0c
_jmp_addr_0x0053fcdc:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fcdc    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00014184]             // 0x0053fce2    8d8284410100
_jmp_addr_0x0053fce8:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0053fce8    8b4008
                         push              eax                                           // 0x0053fceb    50
                         {disp8} lea       ecx, dword ptr [esi + 0x24]                   // 0x0053fcec    8d4e24
                         push              ecx                                           // 0x0053fcef    51
                         call              _wcscpy                                       // 0x0053fcf0    e8c1622800
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0053fcf5    8b0d5c19d000
                         mov               ebx, dword ptr [esi]                          // 0x0053fcfb    8b1e
                         add               esp, 0x08                                     // 0x0053fcfd    83c408
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0053fd00    e87b320100
                         dec               eax                                           // 0x0053fd05    48
                         neg               eax                                           // 0x0053fd06    f7d8
                         sbb.s             al, al                                        // 0x0053fd08    1ac0
                         inc               al                                            // 0x0053fd0a    fec0
                         mov.s             ecx, esi                                      // 0x0053fd0c    8bce
                         push              eax                                           // 0x0053fd0e    50
                         call              dword ptr [ebx + 8]                           // 0x0053fd0f    ff5308
                         {disp32} mov      dword ptr [esi + 0x00000238], 0x0053ffb0      // 0x0053fd12    c78638020000b0ff5300
                         {disp32} jmp      _jmp_addr_0x0053fe14                          // 0x0053fd1c    e9f3000000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0053fd21    8b0d5c19d000
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0053fd27    e854320100
                         test              eax, eax                                      // 0x0053fd2c    85c0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0053fd2e    a1ac7cd100
                         {disp8} jne       _jmp_addr_0x0053fd51                          // 0x0053fd33    751c
                         cmp               eax, 0x00000d50                               // 0x0053fd35    3d500d0000
                         {disp8} ja        _jmp_addr_0x0053fd43                          // 0x0053fd3a    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fd3c    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fd6b                          // 0x0053fd41    eb28
_jmp_addr_0x0053fd43:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fd43    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00009fc0]             // 0x0053fd49    8d82c09f0000
                         {disp8} jmp       _jmp_addr_0x0053fd6b                          // 0x0053fd4f    eb1a
_jmp_addr_0x0053fd51:    cmp               eax, 0x00001478                               // 0x0053fd51    3d78140000
                         {disp8} ja        _jmp_addr_0x0053fd5f                          // 0x0053fd56    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fd58    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fd6b                          // 0x0053fd5d    eb0c
_jmp_addr_0x0053fd5f:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fd5f    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000f5a0]             // 0x0053fd65    8d82a0f50000
_jmp_addr_0x0053fd6b:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0053fd6b    8b4008
                         push              eax                                           // 0x0053fd6e    50
                         {disp8} lea       ecx, dword ptr [esi + 0x24]                   // 0x0053fd6f    8d4e24
                         push              ecx                                           // 0x0053fd72    51
                         call              _wcscpy                                       // 0x0053fd73    e83e622800
                         {disp32} mov      eax, dword ptr [_game]                        // 0x0053fd78    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00205a0c]             // 0x0053fd7d    8b880c5a2000
                         mov               edx, dword ptr [esi]                          // 0x0053fd83    8b16
                         add               esp, 0x08                                     // 0x0053fd85    83c408
                         cmp               ecx, 0x01                                     // 0x0053fd88    83f901
                         sete              cl                                            // 0x0053fd8b    0f94c1
                         push              ecx                                           // 0x0053fd8e    51
                         mov.s             ecx, esi                                      // 0x0053fd8f    8bce
                         call              dword ptr [edx + 8]                           // 0x0053fd91    ff5208
                         {disp32} mov      dword ptr [esi + 0x00000238], 0x0053ff10      // 0x0053fd94    c7863802000010ff5300
                         {disp8} jmp       _jmp_addr_0x0053fe14                          // 0x0053fd9e    eb74
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d52 // 0x0053fda0    813dac7cd100520d0000
                         {disp8} ja        _jmp_addr_0x0053fdb3                          // 0x0053fdaa    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fdac    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fdbf                          // 0x0053fdb1    eb0c
_jmp_addr_0x0053fdb3:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fdb3    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00009fd8]             // 0x0053fdb9    8d82d89f0000
_jmp_addr_0x0053fdbf:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0053fdbf    8b4008
                         push              eax                                           // 0x0053fdc2    50
                         {disp8} lea       ecx, dword ptr [esi + 0x24]                   // 0x0053fdc3    8d4e24
                         push              ecx                                           // 0x0053fdc6    51
                         call              _wcscpy                                       // 0x0053fdc7    e8ea612800
                         add               esp, 0x08                                     // 0x0053fdcc    83c408
                         {disp32} mov      dword ptr [esi + 0x00000238], 0x00540000      // 0x0053fdcf    c7863802000000005400
                         {disp8} jmp       _jmp_addr_0x0053fe14                          // 0x0053fdd9    eb39
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d53 // 0x0053fddb    813dac7cd100530d0000
                         {disp8} ja        _jmp_addr_0x0053fdee                          // 0x0053fde5    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0053fde7    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0053fdfa                          // 0x0053fdec    eb0c
_jmp_addr_0x0053fdee:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0053fdee    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00009fe4]             // 0x0053fdf4    8d82e49f0000
_jmp_addr_0x0053fdfa:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0053fdfa    8b4008
                         push              eax                                           // 0x0053fdfd    50
                         {disp8} lea       ecx, dword ptr [esi + 0x24]                   // 0x0053fdfe    8d4e24
                         push              ecx                                           // 0x0053fe01    51
                         call              _wcscpy                                       // 0x0053fe02    e8af612800
                         add               esp, 0x08                                     // 0x0053fe07    83c408
                         {disp32} mov      dword ptr [esi + 0x00000238], 0x0053fb70      // 0x0053fe0a    c7863802000070fb5300
_jmp_addr_0x0053fe14:    inc               edi                                           // 0x0053fe14    47
                         cmp               edi, 0x05                                     // 0x0053fe15    83ff05
                         {disp32} jl       _jmp_addr_0x0053fc4b                          // 0x0053fe18    0f8c2dfeffff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0053fe1e    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00205a0c]             // 0x0053fe24    8b810c5a2000
                         test              eax, eax                                      // 0x0053fe2a    85c0
                         mov               esi, 0x00000091                               // 0x0053fe2c    be91000000
                         mov               edi, 0x00000046                               // 0x0053fe31    bf46000000
                         mov               ebx, 0x00000050                               // 0x0053fe36    bb50000000
                         {disp8} jne       _jmp_addr_0x0053fe46                          // 0x0053fe3b    7509
                         call              ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x0053fe3d    e83e310100
                         test              eax, eax                                      // 0x0053fe42    85c0
                         {disp8} je        _jmp_addr_0x0053fe55                          // 0x0053fe44    740f
_jmp_addr_0x0053fe46:    mov               ebx, 0x00000064                               // 0x0053fe46    bb64000000
                         mov               edi, 0x00000050                               // 0x0053fe4b    bf50000000
                         mov               esi, 0x00000096                               // 0x0053fe50    be96000000
_jmp_addr_0x0053fe55:    {disp8} mov       edx, dword ptr [ebp + 0x10]                   // 0x0053fe55    8b5510
                         {disp8} mov       dword ptr [edx + 0x0c], esi                   // 0x0053fe58    89720c
                         {disp8} mov       ecx, dword ptr [ebp + 0x10]                   // 0x0053fe5b    8b4d10
                         lea               eax, dword ptr [edi + esi * 0x1]              // 0x0053fe5e    8d0437
                         {disp8} mov       dword ptr [ecx + 0x14], eax                   // 0x0053fe61    894114
                         {disp8} mov       edx, dword ptr [ebp + 0x10]                   // 0x0053fe64    8b5510
                         {disp32} mov      al, byte ptr [edx + 0x00000229]               // 0x0053fe67    8a8229020000
                         test              al, al                                        // 0x0053fe6d    84c0
                         {disp8} jne       _jmp_addr_0x0053fe73                          // 0x0053fe6f    7502
                         add.s             esi, ebx                                      // 0x0053fe71    03f3
_jmp_addr_0x0053fe73:    {disp8} mov       eax, dword ptr [ebp + 0x14]                   // 0x0053fe73    8b4514
                         {disp8} mov       dword ptr [eax + 0x0c], esi                   // 0x0053fe76    89700c
                         {disp8} mov       edx, dword ptr [ebp + 0x14]                   // 0x0053fe79    8b5514
                         lea               ecx, dword ptr [edi + esi * 0x1]              // 0x0053fe7c    8d0c37
                         {disp8} mov       dword ptr [edx + 0x14], ecx                   // 0x0053fe7f    894a14
                         {disp8} mov       eax, dword ptr [ebp + 0x14]                   // 0x0053fe82    8b4514
                         {disp32} mov      cl, byte ptr [eax + 0x00000229]               // 0x0053fe85    8a8829020000
                         test              cl, cl                                        // 0x0053fe8b    84c9
                         {disp8} jne       _jmp_addr_0x0053fe91                          // 0x0053fe8d    7502
                         add.s             esi, ebx                                      // 0x0053fe8f    03f3
_jmp_addr_0x0053fe91:    {disp8} mov       ecx, dword ptr [ebp + 0x18]                   // 0x0053fe91    8b4d18
                         {disp8} mov       dword ptr [ecx + 0x0c], esi                   // 0x0053fe94    89710c
                         {disp8} mov       eax, dword ptr [ebp + 0x18]                   // 0x0053fe97    8b4518
                         lea               edx, dword ptr [edi + esi * 0x1]              // 0x0053fe9a    8d1437
                         {disp8} mov       dword ptr [eax + 0x14], edx                   // 0x0053fe9d    895014
                         {disp8} mov       ecx, dword ptr [ebp + 0x18]                   // 0x0053fea0    8b4d18
                         {disp32} mov      al, byte ptr [ecx + 0x00000229]               // 0x0053fea3    8a8129020000
                         test              al, al                                        // 0x0053fea9    84c0
                         {disp8} jne       _jmp_addr_0x0053feaf                          // 0x0053feab    7502
                         add.s             esi, ebx                                      // 0x0053fead    03f3
_jmp_addr_0x0053feaf:    {disp8} mov       edx, dword ptr [ebp + 0x1c]                   // 0x0053feaf    8b551c
                         {disp8} mov       dword ptr [edx + 0x0c], esi                   // 0x0053feb2    89720c
                         {disp8} mov       ecx, dword ptr [ebp + 0x1c]                   // 0x0053feb5    8b4d1c
                         lea               eax, dword ptr [edi + esi * 0x1]              // 0x0053feb8    8d0437
                         {disp8} mov       dword ptr [ecx + 0x14], eax                   // 0x0053febb    894114
                         {disp8} mov       edx, dword ptr [ebp + 0x1c]                   // 0x0053febe    8b551c
                         {disp32} mov      al, byte ptr [edx + 0x00000229]               // 0x0053fec1    8a8229020000
                         test              al, al                                        // 0x0053fec7    84c0
                         {disp8} jne       _jmp_addr_0x0053fecd                          // 0x0053fec9    7502
                         add.s             esi, ebx                                      // 0x0053fecb    03f3
_jmp_addr_0x0053fecd:    {disp8} mov       eax, dword ptr [ebp + 0x20]                   // 0x0053fecd    8b4520
                         {disp8} mov       dword ptr [eax + 0x0c], esi                   // 0x0053fed0    89700c
                         {disp8} mov       ecx, dword ptr [ebp + 0x20]                   // 0x0053fed3    8b4d20
                         add.s             edi, esi                                      // 0x0053fed6    03fe
                         {disp8} mov       dword ptr [ecx + 0x14], edi                   // 0x0053fed8    897914
                         pop               edi                                           // 0x0053fedb    5f
                         pop               esi                                           // 0x0053fedc    5e
                         pop               ebp                                           // 0x0053fedd    5d
                         pop               ebx                                           // 0x0053fede    5b
                         add               esp, 0x00000200                               // 0x0053fedf    81c400020000
                         ret                                                             // 0x0053fee5    c3

// Snippet: db, [0x0053fee6, 0x0053fee8)
.byte 0x8b, 0xff                  // 0x0053fee6

// Snippet: jmptbl, [0x0053fee8, 0x0053fefc)
.byte 0x5f, 0xfc, 0x53, 0x00      // 0x0053fee8
.byte 0x9d, 0xfc, 0x53, 0x00      // 0x0053feec
.byte 0x21, 0xfd, 0x53, 0x00      // 0x0053fef0
.byte 0xa0, 0xfd, 0x53, 0x00      // 0x0053fef4
.byte 0xdb, 0xfd, 0x53, 0x00      // 0x0053fef8

// Snippet: db, [0x0053fefc, 0x0053ff00)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0053fefc

