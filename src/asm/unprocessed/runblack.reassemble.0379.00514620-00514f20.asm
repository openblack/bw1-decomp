.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern _jmp_addr_0x0046e630
.extern ??0DialogBoxBase@@QAE@XZ
.extern _jmp_addr_0x005133c0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00513e10
.extern _jmp_addr_0x00513ea0
.extern _jmp_addr_0x00513eb0
.extern _jmp_addr_0x00513f90
.extern _jmp_addr_0x00514010
.extern _jmp_addr_0x00514020
.extern _jmp_addr_0x005140b0
.extern _jmp_addr_0x0053f3e0
.extern _jmp_addr_0x0053f540
.extern _jmp_addr_0x005550f0
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005c6ca0
.extern _jmp_addr_0x005c6cf0
.extern ?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z
.extern _jmp_addr_0x0066b900
.extern _jmp_addr_0x0066bad0
.extern _jmp_addr_0x0066bcd0
.extern _wcscpy
.extern ___nw__FUl

.globl _jmp_addr_0x00514620
.globl _jmp_addr_0x005148b0
.globl ??0DialogBoxImmersion@@QAE@XZ
.globl ?Init@DialogBoxImmersion@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@DialogBoxImmersion@@UAEXXZ
.globl ?InitControls@DialogBoxImmersion@@UAEXXZ

start_0x00514620_0x00514f20:
// Snippet: asm, [0x00514620, 0x00514efa)
_jmp_addr_0x00514620:    sub               esp, 0x0000020c                               // 0x00514620    81ec0c020000
                         push              esi                                           // 0x00514626    56
                         push              edi                                           // 0x00514627    57
                         {disp32} mov      edi, dword ptr [rdata_bytes + 0x638]          // 0x00514628    8b3d38968a00
                         {disp8} lea       eax, dword ptr [esp + 0x08]                   // 0x0051462e    8d442408
                         mov.s             esi, ecx                                      // 0x00514632    8bf1
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f604]        // 0x00514634    8b0d04868d00
                         push              eax                                           // 0x0051463a    50
                         push              ecx                                           // 0x0051463b    51
                         call              edi                                           // 0x0051463c    ffd7
                         add               esp, 0x08                                     // 0x0051463e    83c408
                         test              eax, eax                                      // 0x00514641    85c0
                         {disp8} jne       _jmp_addr_0x0051464b                          // 0x00514643    7506
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x00514645    8b542408
                         {disp8} jmp       _jmp_addr_0x0051465c                          // 0x00514649    eb11
_jmp_addr_0x0051464b:    {disp32} mov      eax, dword ptr [_game]                        // 0x0051464b    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x0025005c]             // 0x00514650    8b885c002500
                         {disp32} mov      edx, dword ptr [ecx + 0x000045fc]             // 0x00514656    8b91fc450000
_jmp_addr_0x0051465c:    push              edx                                           // 0x0051465c    52
                         mov.s             ecx, esi                                      // 0x0051465d    8bce
                         call              _jmp_addr_0x00514020                          // 0x0051465f    e8bcf9ffff
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f5f4]        // 0x00514664    8b0df4858d00
                         {disp8} lea       eax, dword ptr [esp + 0x08]                   // 0x0051466a    8d442408
                         push              eax                                           // 0x0051466e    50
                         push              ecx                                           // 0x0051466f    51
                         call              edi                                           // 0x00514670    ffd7
                         add               esp, 0x08                                     // 0x00514672    83c408
                         test              eax, eax                                      // 0x00514675    85c0
                         {disp8} jne       _jmp_addr_0x0051467f                          // 0x00514677    7506
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x00514679    8b542408
                         {disp8} jmp       _jmp_addr_0x00514690                          // 0x0051467d    eb11
_jmp_addr_0x0051467f:    {disp32} mov      eax, dword ptr [_game]                        // 0x0051467f    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x0025005c]             // 0x00514684    8b885c002500
                         {disp32} mov      edx, dword ptr [ecx + 0x00004604]             // 0x0051468a    8b9104460000
_jmp_addr_0x00514690:    push              edx                                           // 0x00514690    52
                         mov.s             ecx, esi                                      // 0x00514691    8bce
                         call              _jmp_addr_0x00513f90                          // 0x00514693    e8f8f8ffff
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f5f8]        // 0x00514698    8b0df8858d00
                         {disp8} lea       eax, dword ptr [esp + 0x08]                   // 0x0051469e    8d442408
                         push              eax                                           // 0x005146a2    50
                         push              ecx                                           // 0x005146a3    51
                         call              edi                                           // 0x005146a4    ffd7
                         add               esp, 0x08                                     // 0x005146a6    83c408
                         test              eax, eax                                      // 0x005146a9    85c0
                         {disp8} jne       _jmp_addr_0x005146bc                          // 0x005146ab    750f
                         {disp8} mov       edx, dword ptr [esi + 0x34]                   // 0x005146ad    8b5634
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x005146b0    8b442408
                         {disp32} mov      dword ptr [edx + 0x00000248], eax             // 0x005146b4    898248020000
                         {disp8} jmp       _jmp_addr_0x005146d7                          // 0x005146ba    eb1b
_jmp_addr_0x005146bc:    {disp32} mov      ecx, dword ptr [_game]                        // 0x005146bc    8b0d5c19d000
                         {disp32} mov      edx, dword ptr [ecx + 0x0025005c]             // 0x005146c2    8b915c002500
                         {disp8} mov       eax, dword ptr [esi + 0x34]                   // 0x005146c8    8b4634
                         {disp32} mov      ecx, dword ptr [edx + 0x00004608]             // 0x005146cb    8b8a08460000
                         {disp32} mov      dword ptr [eax + 0x00000248], ecx             // 0x005146d1    898848020000
_jmp_addr_0x005146d7:    {disp32} mov      eax, dword ptr [rdata_bytes + 0x2f5fc]        // 0x005146d7    a1fc858d00
                         {disp8} lea       edx, dword ptr [esp + 0x08]                   // 0x005146dc    8d542408
                         push              edx                                           // 0x005146e0    52
                         push              eax                                           // 0x005146e1    50
                         call              edi                                           // 0x005146e2    ffd7
                         add               esp, 0x08                                     // 0x005146e4    83c408
                         test              eax, eax                                      // 0x005146e7    85c0
                         {disp8} jne       _jmp_addr_0x005146f2                          // 0x005146e9    7507
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x005146eb    8b4c2408
                         push              ecx                                           // 0x005146ef    51
                         {disp8} jmp       _jmp_addr_0x00514713                          // 0x005146f0    eb21
_jmp_addr_0x005146f2:    {disp32} mov      edx, dword ptr [_game]                        // 0x005146f2    8b155c19d000
                         {disp32} mov      eax, dword ptr [edx + 0x0025005c]             // 0x005146f8    8b825c002500
                         {disp32} mov      ecx, dword ptr [eax + 0x000045f8]             // 0x005146fe    8b88f8450000
                         test              ecx, ecx                                      // 0x00514704    85c9
                         {disp8} je        _jmp_addr_0x00514710                          // 0x00514706    7408
                         {disp32} mov      eax, dword ptr [eax + 0x000045f4]             // 0x00514708    8b80f4450000
                         {disp8} jmp       _jmp_addr_0x00514712                          // 0x0051470e    eb02
_jmp_addr_0x00514710:    xor.s             eax, eax                                      // 0x00514710    33c0
_jmp_addr_0x00514712:    push              eax                                           // 0x00514712    50
_jmp_addr_0x00514713:    mov.s             ecx, esi                                      // 0x00514713    8bce
                         call              _jmp_addr_0x00513e10                          // 0x00514715    e8f6f6ffff
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f600]        // 0x0051471a    8b0d00868d00
                         {disp8} lea       eax, dword ptr [esp + 0x0c]                   // 0x00514720    8d44240c
                         push              eax                                           // 0x00514724    50
                         push              ecx                                           // 0x00514725    51
                         call              dword ptr [rdata_bytes + 0x608]               // 0x00514726    ff1508968a00
                         add               esp, 0x08                                     // 0x0051472c    83c408
                         test              eax, eax                                      // 0x0051472f    85c0
                         {disp8} jne       _jmp_addr_0x00514742                          // 0x00514731    750f
                         {disp8} fld       qword ptr [esp + 0x0c]                        // 0x00514733    dd44240c
                         {disp8} mov       edx, dword ptr [esi + 0x40]                   // 0x00514737    8b5640
                         {disp32} fstp     dword ptr [edx + 0x0000023c]                  // 0x0051473a    d99a3c020000
                         {disp8} jmp       _jmp_addr_0x0051475b                          // 0x00514740    eb19
_jmp_addr_0x00514742:    {disp32} mov      eax, dword ptr [_game]                        // 0x00514742    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x0025005c]             // 0x00514747    8b885c002500
                         call              _jmp_addr_0x005c6ca0                          // 0x0051474d    e84e250b00
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00514752    8b4e40
                         {disp32} fstp     dword ptr [ecx + 0x0000023c]                  // 0x00514755    d9993c020000
_jmp_addr_0x0051475b:    {disp32} mov      eax, dword ptr [rdata_bytes + 0x2f60c]        // 0x0051475b    a10c868d00
                         {disp8} lea       edx, dword ptr [esp + 0x08]                   // 0x00514760    8d542408
                         push              edx                                           // 0x00514764    52
                         push              eax                                           // 0x00514765    50
                         call              edi                                           // 0x00514766    ffd7
                         add               esp, 0x08                                     // 0x00514768    83c408
                         test              eax, eax                                      // 0x0051476b    85c0
                         {disp8} jne       _jmp_addr_0x0051477e                          // 0x0051476d    750f
                         {disp8} mov       ecx, dword ptr [esi + 0x38]                   // 0x0051476f    8b4e38
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x00514772    8b542408
                         {disp32} mov      dword ptr [ecx + 0x00000248], edx             // 0x00514776    899148020000
                         {disp8} jmp       _jmp_addr_0x0051478b                          // 0x0051477c    eb0d
_jmp_addr_0x0051477e:    {disp8} mov       eax, dword ptr [esi + 0x38]                   // 0x0051477e    8b4638
                         {disp32} mov      dword ptr [eax + 0x00000248], 0x00000000      // 0x00514781    c7804802000000000000
_jmp_addr_0x0051478b:    {disp32} mov      edx, dword ptr [rdata_bytes + 0x2f608]        // 0x0051478b    8b1508868d00
                         {disp8} lea       ecx, dword ptr [esp + 0x08]                   // 0x00514791    8d4c2408
                         push              ecx                                           // 0x00514795    51
                         push              edx                                           // 0x00514796    52
                         call              edi                                           // 0x00514797    ffd7
                         add               esp, 0x08                                     // 0x00514799    83c408
                         test              eax, eax                                      // 0x0051479c    85c0
                         {disp8} jne       _jmp_addr_0x005147af                          // 0x0051479e    750f
                         {disp8} mov       eax, dword ptr [esi + 0x3c]                   // 0x005147a0    8b463c
                         {disp8} mov       ecx, dword ptr [esp + 0x08]                   // 0x005147a3    8b4c2408
                         {disp32} mov      dword ptr [eax + 0x00000248], ecx             // 0x005147a7    898848020000
                         {disp8} jmp       _jmp_addr_0x005147bc                          // 0x005147ad    eb0d
_jmp_addr_0x005147af:    {disp8} mov       edx, dword ptr [esi + 0x3c]                   // 0x005147af    8b563c
                         {disp32} mov      dword ptr [edx + 0x00000248], 0x00000000      // 0x005147b2    c7824802000000000000
_jmp_addr_0x005147bc:    {disp8} lea       eax, dword ptr [esp + 0x08]                   // 0x005147bc    8d442408
                         push              eax                                           // 0x005147c0    50
                         push              0x00be8d90                                    // 0x005147c1    68908dbe00
                         call              edi                                           // 0x005147c6    ffd7
                         {disp8} mov       ecx, dword ptr [esi + 0x60]                   // 0x005147c8    8b4e60
                         {disp8} mov       edx, dword ptr [ecx + 0x34]                   // 0x005147cb    8b5134
                         add               esp, 0x08                                     // 0x005147ce    83c408
                         test              eax, eax                                      // 0x005147d1    85c0
                         {disp8} jne       _jmp_addr_0x005147e1                          // 0x005147d3    750c
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x005147d5    8b442408
                         {disp32} mov      dword ptr [edx + 0x00000248], eax             // 0x005147d9    898248020000
                         {disp8} jmp       _jmp_addr_0x005147eb                          // 0x005147df    eb0a
_jmp_addr_0x005147e1:    {disp32} mov      dword ptr [edx + 0x00000248], 0x00000000      // 0x005147e1    c7824802000000000000
_jmp_addr_0x005147eb:    {disp8} lea       eax, dword ptr [esp + 0x08]                   // 0x005147eb    8d442408
                         push              eax                                           // 0x005147ef    50
                         push              0x00be8d84                                    // 0x005147f0    68848dbe00
                         call              edi                                           // 0x005147f5    ffd7
                         {disp8} mov       ecx, dword ptr [esi + 0x60]                   // 0x005147f7    8b4e60
                         {disp8} mov       edx, dword ptr [ecx + 0x34]                   // 0x005147fa    8b5134
                         add               esp, 0x08                                     // 0x005147fd    83c408
                         test              eax, eax                                      // 0x00514800    85c0
                         {disp8} jne       _jmp_addr_0x00514810                          // 0x00514802    750c
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x00514804    8b442408
                         {disp32} mov      dword ptr [edx + 0x00000248], eax             // 0x00514808    898248020000
                         {disp8} jmp       _jmp_addr_0x0051481a                          // 0x0051480e    eb0a
_jmp_addr_0x00514810:    {disp32} mov      dword ptr [edx + 0x00000248], 0x00000001      // 0x00514810    c7824802000001000000
_jmp_addr_0x0051481a:    {disp32} mov      eax, dword ptr [data_bytes + 0x2721ec]        // 0x0051481a    a1ec81c300
                         {disp32} mov      edi, dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]          // 0x0051481f    8b3d44938a00
                         {disp8} lea       edx, dword ptr [esp + 0x08]                   // 0x00514825    8d542408
                         push              edx                                           // 0x00514829    52
                         {disp8} mov       dword ptr [esi + 0x54], eax                   // 0x0051482a    894654
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x2721e8]        // 0x0051482d    8b0de881c300
                         push              0x00be8d74                                    // 0x00514833    68748dbe00
                         push              0x009caff8                                    // 0x00514838    68f8af9c00
                         {disp8} mov       dword ptr [esi + 0x58], ecx                   // 0x0051483d    894e58
                         call              edi                                           // 0x00514840    ffd7
                         add               esp, 0x0c                                     // 0x00514842    83c40c
                         test              eax, eax                                      // 0x00514845    85c0
                         {disp8} jne       _jmp_addr_0x00514850                          // 0x00514847    7507
                         {disp8} mov       eax, dword ptr [esp + 0x08]                   // 0x00514849    8b442408
                         {disp8} mov       dword ptr [esi + 0x58], eax                   // 0x0051484d    894658
_jmp_addr_0x00514850:    {disp8} lea       ecx, dword ptr [esp + 0x08]                   // 0x00514850    8d4c2408
                         push              ecx                                           // 0x00514854    51
                         push              0x00be8d68                                    // 0x00514855    68688dbe00
                         push              0x009caff8                                    // 0x0051485a    68f8af9c00
                         call              edi                                           // 0x0051485f    ffd7
                         add               esp, 0x0c                                     // 0x00514861    83c40c
                         test              eax, eax                                      // 0x00514864    85c0
                         {disp8} jne       _jmp_addr_0x0051486f                          // 0x00514866    7507
                         {disp8} mov       edx, dword ptr [esp + 0x08]                   // 0x00514868    8b542408
                         {disp8} mov       dword ptr [esi + 0x54], edx                   // 0x0051486c    895654
_jmp_addr_0x0051486f:    {disp8} mov       eax, dword ptr [esi + 0x54]                   // 0x0051486f    8b4654
                         push              eax                                           // 0x00514872    50
                         mov.s             ecx, esi                                      // 0x00514873    8bce
                         call              _jmp_addr_0x00513eb0                          // 0x00514875    e836f6ffff
                         call              dword ptr [rdata_bytes + 0x60c]               // 0x0051487a    ff150c968a00
                         push              eax                                           // 0x00514880    50
                         call              ?SetCurrentProfile@PlayerProfile@@SAXPA_W@Z   // 0x00514881    e81a6f1500
                         {disp8} lea       ecx, dword ptr [esp + 0x18]                   // 0x00514886    8d4c2418
                         push              ecx                                           // 0x0051488a    51
                         call              _jmp_addr_0x0066b900                          // 0x0051488b    e870701500
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x00514890    8d54241c
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x00514894    6838bdd400
                         push              edx                                           // 0x00514899    52
                         call              _jmp_addr_0x0066bad0                          // 0x0051489a    e831721500
                         add               esp, 0x10                                     // 0x0051489f    83c410
                         pop               edi                                           // 0x005148a2    5f
                         pop               esi                                           // 0x005148a3    5e
                         add               esp, 0x0000020c                               // 0x005148a4    81c40c020000
                         ret                                                             // 0x005148aa    c3
                         call              ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x005148ab    e8c9cfeeff
_jmp_addr_0x005148b0:    push              esi                                           // 0x005148b0    56
                         push              edi                                           // 0x005148b1    57
                         mov.s             esi, ecx                                      // 0x005148b2    8bf1
                         call              _jmp_addr_0x005140b0                          // 0x005148b4    e8f7f7ffff
                         {disp32} mov      edi, dword ptr [rdata_bytes + 0x634]          // 0x005148b9    8b3d34968a00
                         push              eax                                           // 0x005148bf    50
                         {disp32} mov      eax, dword ptr [rdata_bytes + 0x2f604]        // 0x005148c0    a104868d00
                         push              eax                                           // 0x005148c5    50
                         call              edi                                           // 0x005148c6    ffd7
                         add               esp, 0x08                                     // 0x005148c8    83c408
                         mov.s             ecx, esi                                      // 0x005148cb    8bce
                         call              _jmp_addr_0x00514010                          // 0x005148cd    e83ef7ffff
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f5f4]        // 0x005148d2    8b0df4858d00
                         push              eax                                           // 0x005148d8    50
                         push              ecx                                           // 0x005148d9    51
                         call              edi                                           // 0x005148da    ffd7
                         {disp8} mov       edx, dword ptr [esi + 0x34]                   // 0x005148dc    8b5634
                         {disp32} mov      eax, dword ptr [edx + 0x00000248]             // 0x005148df    8b8248020000
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f5f8]        // 0x005148e5    8b0df8858d00
                         push              eax                                           // 0x005148eb    50
                         push              ecx                                           // 0x005148ec    51
                         call              edi                                           // 0x005148ed    ffd7
                         add               esp, 0x10                                     // 0x005148ef    83c410
                         mov.s             ecx, esi                                      // 0x005148f2    8bce
                         call              _jmp_addr_0x00513ea0                          // 0x005148f4    e8a7f5ffff
                         {disp32} mov      edx, dword ptr [rdata_bytes + 0x2f5fc]        // 0x005148f9    8b15fc858d00
                         push              eax                                           // 0x005148ff    50
                         push              edx                                           // 0x00514900    52
                         call              edi                                           // 0x00514901    ffd7
                         {disp8} mov       eax, dword ptr [esi + 0x40]                   // 0x00514903    8b4640
                         {disp32} fld      dword ptr [eax + 0x0000023c]                  // 0x00514906    d9803c020000
                         {disp32} mov      ecx, dword ptr [rdata_bytes + 0x2f600]        // 0x0051490c    8b0d00868d00
                         fstp              qword ptr [esp]                               // 0x00514912    dd1c24
                         push              ecx                                           // 0x00514915    51
                         call              dword ptr [rdata_bytes + 0x604]               // 0x00514916    ff1504968a00
                         {disp8} mov       edx, dword ptr [esi + 0x38]                   // 0x0051491c    8b5638
                         {disp32} mov      eax, dword ptr [edx + 0x00000248]             // 0x0051491f    8b8248020000
                         {disp32} mov      dword ptr [data_bytes + 0x386554], eax        // 0x00514925    a354c5d400
                         {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0051492a    8b4e3c
                         {disp32} mov      edx, dword ptr [ecx + 0x00000248]             // 0x0051492d    8b9148020000
                         {disp32} mov      eax, dword ptr [rdata_bytes + 0x2f608]        // 0x00514933    a108868d00
                         push              edx                                           // 0x00514938    52
                         push              eax                                           // 0x00514939    50
                         call              edi                                           // 0x0051493a    ffd7
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0051493c    8b0d5c19d000
                         {disp8} mov       edx, dword ptr [ecx + 0x14]                   // 0x00514942    8b5114
                         shr               edx, 0x10                                     // 0x00514945    c1ea10
                         and               edx, 0x01                                     // 0x00514948    83e201
                         push              edx                                           // 0x0051494b    52
                         push              0x00be8d84                                    // 0x0051494c    68848dbe00
                         call              edi                                           // 0x00514951    ffd7
                         {disp8} mov       eax, dword ptr [esi + 0x58]                   // 0x00514953    8b4658
                         {disp32} mov      edi, dword ptr [rdata_bytes + 0x350]          // 0x00514956    8b3d50938a00
                         push              eax                                           // 0x0051495c    50
                         push              0x00be8d74                                    // 0x0051495d    68748dbe00
                         push              0x009caff8                                    // 0x00514962    68f8af9c00
                         call              edi                                           // 0x00514967    ffd7
                         {disp8} mov       ecx, dword ptr [esi + 0x54]                   // 0x00514969    8b4e54
                         push              ecx                                           // 0x0051496c    51
                         push              0x00be8d68                                    // 0x0051496d    68688dbe00
                         push              0x009caff8                                    // 0x00514972    68f8af9c00
                         call              edi                                           // 0x00514977    ffd7
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00514979    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00250538]             // 0x0051497f    8b8138052500
                         add               esp, 0x34                                     // 0x00514985    83c434
                         test              eax, eax                                      // 0x00514988    85c0
                         pop               edi                                           // 0x0051498a    5f
                         pop               esi                                           // 0x0051498b    5e
                         {disp8} je        _jmp_addr_0x005149ba                          // 0x0051498c    742c
                         call              _jmp_addr_0x005550f0                          // 0x0051498e    e85d070400
                         {disp32} mov      edx, dword ptr [_game]                        // 0x00514993    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x0025005c]             // 0x00514999    8b8a5c002500
                         call              _jmp_addr_0x005c6cf0                          // 0x0051499f    e84c230b00
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x005149a4    8b0d5c19d000
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x005149aa    e8a10e0400
                         {disp32} mov      ecx, dword ptr [eax + 0x000003a0]             // 0x005149af    8b88a0030000
                         call              _jmp_addr_0x0046e630                          // 0x005149b5    e8769cf5ff
_jmp_addr_0x005149ba:    push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x005149ba    6838bdd400
                         call              _jmp_addr_0x0066bcd0                          // 0x005149bf    e80c731500
                         pop               ecx                                           // 0x005149c4    59
                         ret                                                             // 0x005149c5    c3
                         nop                                                             // 0x005149c6    90
                         nop                                                             // 0x005149c7    90
                         nop                                                             // 0x005149c8    90
                         nop                                                             // 0x005149c9    90
                         nop                                                             // 0x005149ca    90
                         nop                                                             // 0x005149cb    90
                         nop                                                             // 0x005149cc    90
                         nop                                                             // 0x005149cd    90
                         nop                                                             // 0x005149ce    90
                         nop                                                             // 0x005149cf    90
??0DialogBoxImmersion@@QAE@XZ:    push              esi                                           // 0x005149d0    56
                         mov.s             esi, ecx                                      // 0x005149d1    8bf1
                         call              ??0DialogBoxBase@@QAE@XZ                      // 0x005149d3    e8c8e9ffff
                         mov               dword ptr [esi], 0x008d8644                   // 0x005149d8    c70644868d00
                         mov.s             eax, esi                                      // 0x005149de    8bc6
                         pop               esi                                           // 0x005149e0    5e
                         ret                                                             // 0x005149e1    c3
                         nop                                                             // 0x005149e2    90
                         nop                                                             // 0x005149e3    90
                         nop                                                             // 0x005149e4    90
                         nop                                                             // 0x005149e5    90
                         nop                                                             // 0x005149e6    90
                         nop                                                             // 0x005149e7    90
                         nop                                                             // 0x005149e8    90
                         nop                                                             // 0x005149e9    90
                         nop                                                             // 0x005149ea    90
                         nop                                                             // 0x005149eb    90
                         nop                                                             // 0x005149ec    90
                         nop                                                             // 0x005149ed    90
                         nop                                                             // 0x005149ee    90
                         nop                                                             // 0x005149ef    90
                         mov               dword ptr [ecx], 0x008d8644                   // 0x005149f0    c70144868d00
                         {disp32} jmp      _jmp_addr_0x005133c0                          // 0x005149f6    e9c5e9ffff
                         nop                                                             // 0x005149fb    90
                         nop                                                             // 0x005149fc    90
                         nop                                                             // 0x005149fd    90
                         nop                                                             // 0x005149fe    90
                         nop                                                             // 0x005149ff    90
_jmp_addr_0x00514a00:    {disp8} mov       eax, dword ptr [esp + 0x04]                   // 0x00514a00    8b442404
                         sub               esp, 0x0c                                     // 0x00514a04    83ec0c
                         test              eax, eax                                      // 0x00514a07    85c0
                         push              esi                                           // 0x00514a09    56
                         push              edi                                           // 0x00514a0a    57
                         mov.s             edi, ecx                                      // 0x00514a0b    8bf9
                         {disp8} jge       _jmp_addr_0x00514a14                          // 0x00514a0d    7d05
                         add               eax, 0x0000012c                               // 0x00514a0f    052c010000
_jmp_addr_0x00514a14:    cdq                                                             // 0x00514a14    99
                         xor.s             eax, edx                                      // 0x00514a15    33c2
                         sub.s             eax, edx                                      // 0x00514a17    2bc2
                         cdq                                                             // 0x00514a19    99
                         mov               ecx, 0x00000003                               // 0x00514a1a    b903000000
                         idiv              ecx                                           // 0x00514a1f    f7f9
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351cac]        // 0x00514a21    8b0dac7cd100
                         {disp8} mov       dword ptr [esp + 0x08], 0x00001613            // 0x00514a27    c744240813160000
                         {disp8} mov       dword ptr [esp + 0x0c], 0x00001614            // 0x00514a2f    c744240c14160000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00001615            // 0x00514a37    c744241015160000
                         mov.s             esi, edx                                      // 0x00514a3f    8bf2
                         {disp8} mov       eax, dword ptr [esp + esi * 0x4 + 0x08]       // 0x00514a41    8b44b408
                         cmp.s             eax, ecx                                      // 0x00514a45    3bc1
                         {disp8} jae       _jmp_addr_0x00514a4d                          // 0x00514a47    7304
                         test              eax, eax                                      // 0x00514a49    85c0
                         {disp8} ja        _jmp_addr_0x00514a54                          // 0x00514a4b    7707
_jmp_addr_0x00514a4d:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514a4d    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00514a5f                          // 0x00514a52    eb0b
_jmp_addr_0x00514a54:    lea               edx, dword ptr [eax + eax * 0x2]              // 0x00514a54    8d1440
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514a57    a1a87cd100
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x00514a5c    8d0490
_jmp_addr_0x00514a5f:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00514a5f    8b4808
                         {disp8} mov       edx, dword ptr [edi + 0x20]                   // 0x00514a62    8b5720
                         push              ecx                                           // 0x00514a65    51
                         add               edx, 0x24                                     // 0x00514a66    83c224
                         push              edx                                           // 0x00514a69    52
                         call              _wcscpy                                       // 0x00514a6a    e847152b00
                         add               esp, 0x08                                     // 0x00514a6f    83c408
                         {disp8} mov       dword ptr [edi + 0x2c], esi                   // 0x00514a72    89772c
                         pop               edi                                           // 0x00514a75    5f
                         pop               esi                                           // 0x00514a76    5e
                         add               esp, 0x0c                                     // 0x00514a77    83c40c
                         ret               0x0004                                        // 0x00514a7a    c20400
                         nop                                                             // 0x00514a7d    90
                         nop                                                             // 0x00514a7e    90
                         nop                                                             // 0x00514a7f    90
?Init@DialogBoxImmersion@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov       eax, dword ptr [esp + 0x0c]                   // 0x00514a80    8b44240c
                         {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00514a84    8b542404
                         push              ebx                                           // 0x00514a88    53
                         push              esi                                           // 0x00514a89    56
                         push              edi                                           // 0x00514a8a    57
                         mov.s             edi, ecx                                      // 0x00514a8b    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x14]                   // 0x00514a8d    8b4c2414
                         push              eax                                           // 0x00514a91    50
                         push              ecx                                           // 0x00514a92    51
                         push              edx                                           // 0x00514a93    52
                         mov.s             ecx, edi                                      // 0x00514a94    8bcf
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00514a96    e865e9ffff
                         push              0x000002f1                                    // 0x00514a9b    68f1020000
                         push              0x00be8d40                                    // 0x00514aa0    68408dbe00
                         push              0x00000244                                    // 0x00514aa5    6844020000
                         call              ___nw__FUl                                    // 0x00514aaa    e8e16c2c00
                         mov.s             esi, eax                                      // 0x00514aaf    8bf0
                         xor.s             ebx, ebx                                      // 0x00514ab1    33db
                         add               esp, 0x0c                                     // 0x00514ab3    83c40c
                         cmp.s             esi, ebx                                      // 0x00514ab6    3bf3
                         {disp8} je        _jmp_addr_0x00514b09                          // 0x00514ab8    744f
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a69 // 0x00514aba    813dac7cd100691a0000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514ac4    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x00514ad0                          // 0x00514ac9    7605
                         add               eax, 0x00013cec                               // 0x00514acb    05ec3c0100
_jmp_addr_0x00514ad0:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x00514ad0    8b4808
                         push              ecx                                           // 0x00514ad3    51
                         push              0x28                                          // 0x00514ad4    6a28
                         push              0x000002bc                                    // 0x00514ad6    68bc020000
                         push              0x3c                                          // 0x00514adb    6a3c
                         push              0x32                                          // 0x00514add    6a32
                         push              0x000003e7                                    // 0x00514adf    68e7030000
                         mov.s             ecx, esi                                      // 0x00514ae4    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00514ae6    e86547efff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x00514aeb    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000004      // 0x00514af1    c7863c02000004000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], bl               // 0x00514afb    889e2a020000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebx             // 0x00514b01    899e40020000
                         {disp8} jmp       _jmp_addr_0x00514b0b                          // 0x00514b07    eb02
_jmp_addr_0x00514b09:    xor.s             esi, esi                                      // 0x00514b09    33f6
_jmp_addr_0x00514b0b:    push              0x000002f2                                    // 0x00514b0b    68f2020000
                         push              0x00be8d40                                    // 0x00514b10    68408dbe00
                         push              0x00000244                                    // 0x00514b15    6844020000
                         {disp8} mov       dword ptr [edi + 0x10], esi                   // 0x00514b1a    897710
                         call              ___nw__FUl                                    // 0x00514b1d    e86e6c2c00
                         mov.s             esi, eax                                      // 0x00514b22    8bf0
                         add               esp, 0x0c                                     // 0x00514b24    83c40c
                         cmp.s             esi, ebx                                      // 0x00514b27    3bf3
                         {disp8} je        _jmp_addr_0x00514b86                          // 0x00514b29    745b
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a69 // 0x00514b2b    813dac7cd100691a0000
                         {disp8} ja        _jmp_addr_0x00514b3e                          // 0x00514b35    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514b37    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00514b4a                          // 0x00514b3c    eb0c
_jmp_addr_0x00514b3e:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00514b3e    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013cec]             // 0x00514b44    8d82ec3c0100
_jmp_addr_0x00514b4a:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00514b4a    8b4008
                         push              eax                                           // 0x00514b4d    50
                         push              0x5a                                          // 0x00514b4e    6a5a
                         push              0x000002bc                                    // 0x00514b50    68bc020000
                         push              0x000001b8                                    // 0x00514b55    68b8010000
                         push              0x32                                          // 0x00514b5a    6a32
                         push              0x000003e7                                    // 0x00514b5c    68e7030000
                         mov.s             ecx, esi                                      // 0x00514b61    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00514b63    e8e846efff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x00514b68    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000004      // 0x00514b6e    c7863c02000004000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], bl               // 0x00514b78    889e2a020000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebx             // 0x00514b7e    899e40020000
                         {disp8} jmp       _jmp_addr_0x00514b88                          // 0x00514b84    eb02
_jmp_addr_0x00514b86:    xor.s             esi, esi                                      // 0x00514b86    33f6
_jmp_addr_0x00514b88:    push              0x000002f6                                    // 0x00514b88    68f6020000
                         push              0x00be8d40                                    // 0x00514b8d    68408dbe00
                         {disp8} mov       dword ptr [edi + 0x14], esi                   // 0x00514b92    897714
                         push              0x00000244                                    // 0x00514b95    6844020000
                         {disp8} mov       dword ptr [esi + 0x20], 0x0000001e            // 0x00514b9a    c746201e000000
                         call              ___nw__FUl                                    // 0x00514ba1    e8ea6b2c00
                         add               esp, 0x0c                                     // 0x00514ba6    83c40c
                         cmp.s             eax, ebx                                      // 0x00514ba9    3bc3
                         {disp8} je        _jmp_addr_0x00514bcf                          // 0x00514bab    7422
                         push              ebx                                           // 0x00514bad    53
                         push              0x009cee0c                                    // 0x00514bae    680cee9c00
                         push              0x1e                                          // 0x00514bb3    6a1e
                         push              0x000000c8                                    // 0x00514bb5    68c8000000
                         push              0x000000c8                                    // 0x00514bba    68c8000000
                         push              0x0000012c                                    // 0x00514bbf    682c010000
                         push              0x7d                                          // 0x00514bc4    6a7d
                         mov.s             ecx, eax                                      // 0x00514bc6    8bc8
                         call              @__ct__10SetupButtonFiiiiiPwi@36              // 0x00514bc8    e8e34cefff
                         {disp8} jmp       _jmp_addr_0x00514bd1                          // 0x00514bcd    eb02
_jmp_addr_0x00514bcf:    xor.s             eax, eax                                      // 0x00514bcf    33c0
_jmp_addr_0x00514bd1:    {disp8} mov       dword ptr [edi + 0x20], eax                   // 0x00514bd1    894720
                         call              _GetMidTextSize__Fv                           // 0x00514bd4    e8272eefff
                         {disp8} mov       ecx, dword ptr [edi + 0x20]                   // 0x00514bd9    8b4f20
                         push              0x000002f9                                    // 0x00514bdc    68f9020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x00514be1    894120
                         {disp8} mov       edx, dword ptr [edi + 0x20]                   // 0x00514be4    8b5720
                         push              0x00be8d40                                    // 0x00514be7    68408dbe00
                         push              0x0000025c                                    // 0x00514bec    685c020000
                         {disp32} mov      dword ptr [edx + 0x00000238], 0x00514d00      // 0x00514bf1    c78238020000004d5100
                         call              ___nw__FUl                                    // 0x00514bfb    e8906b2c00
                         add               esp, 0x0c                                     // 0x00514c00    83c40c
                         cmp.s             eax, ebx                                      // 0x00514c03    3bc3
                         {disp8} je        _jmp_addr_0x00514c26                          // 0x00514c05    741f
                         push              0x2                                           // 0x00514c07    6a02
                         push              ebx                                           // 0x00514c09    53
                         push              0x20                                          // 0x00514c0a    6a20
                         push              0x009cee0c                                    // 0x00514c0c    680cee9c00
                         push              0x000000c7                                    // 0x00514c11    68c7000000
                         push              0x00000104                                    // 0x00514c16    6804010000
                         push              0x7e                                          // 0x00514c1b    6a7e
                         mov.s             ecx, eax                                      // 0x00514c1d    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00514c1f    e83c86efff
                         {disp8} jmp       _jmp_addr_0x00514c28                          // 0x00514c24    eb02
_jmp_addr_0x00514c26:    xor.s             eax, eax                                      // 0x00514c26    33c0
_jmp_addr_0x00514c28:    push              0x000002fb                                    // 0x00514c28    68fb020000
                         push              0x00be8d40                                    // 0x00514c2d    68408dbe00
                         {disp8} mov       dword ptr [edi + 0x18], eax                   // 0x00514c32    894718
                         push              0x0000025c                                    // 0x00514c35    685c020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00514d20      // 0x00514c3a    c78038020000204d5100
                         call              ___nw__FUl                                    // 0x00514c44    e8476b2c00
                         add               esp, 0x0c                                     // 0x00514c49    83c40c
                         cmp.s             eax, ebx                                      // 0x00514c4c    3bc3
                         {disp8} je        _jmp_addr_0x00514c6f                          // 0x00514c4e    741f
                         push              0x3                                           // 0x00514c50    6a03
                         push              ebx                                           // 0x00514c52    53
                         push              0x20                                          // 0x00514c53    6a20
                         push              0x009cee0c                                    // 0x00514c55    680cee9c00
                         push              0x000000c7                                    // 0x00514c5a    68c7000000
                         push              0x000001fc                                    // 0x00514c5f    68fc010000
                         push              0x7f                                          // 0x00514c64    6a7f
                         mov.s             ecx, eax                                      // 0x00514c66    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00514c68    e8f385efff
                         {disp8} jmp       _jmp_addr_0x00514c71                          // 0x00514c6d    eb02
_jmp_addr_0x00514c6f:    xor.s             eax, eax                                      // 0x00514c6f    33c0
_jmp_addr_0x00514c71:    push              0x000002fe                                    // 0x00514c71    68fe020000
                         push              0x00be8d40                                    // 0x00514c76    68408dbe00
                         {disp8} mov       dword ptr [edi + 0x1c], eax                   // 0x00514c7b    89471c
                         push              0x0000025c                                    // 0x00514c7e    685c020000
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00514d40      // 0x00514c83    c78038020000404d5100
                         call              ___nw__FUl                                    // 0x00514c8d    e8fe6a2c00
                         add               esp, 0x0c                                     // 0x00514c92    83c40c
                         cmp.s             eax, ebx                                      // 0x00514c95    3bc3
                         {disp8} je        _jmp_addr_0x00514ccc                          // 0x00514c97    7433
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000d7a // 0x00514c99    813dac7cd1007a0d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00514ca3    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x00514cb1                          // 0x00514ca9    7606
                         add               ecx, 0x0000a1b8                               // 0x00514cab    81c1b8a10000
_jmp_addr_0x00514cb1:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x00514cb1    8b4908
                         push              0x2                                           // 0x00514cb4    6a02
                         push              ebx                                           // 0x00514cb6    53
                         push              0x28                                          // 0x00514cb7    6a28
                         push              ecx                                           // 0x00514cb9    51
                         push              0x00000212                                    // 0x00514cba    6812020000
                         push              0x1e                                          // 0x00514cbf    6a1e
                         push              0x7a                                          // 0x00514cc1    6a7a
                         mov.s             ecx, eax                                      // 0x00514cc3    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00514cc5    e89685efff
                         {disp8} jmp       _jmp_addr_0x00514cce                          // 0x00514cca    eb02
_jmp_addr_0x00514ccc:    xor.s             eax, eax                                      // 0x00514ccc    33c0
_jmp_addr_0x00514cce:    {disp8} mov       dword ptr [edi + 0x24], eax                   // 0x00514cce    894724
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x00514d60      // 0x00514cd1    c78038020000604d5100
                         call              _GetMidTextSize__Fv                           // 0x00514cdb    e8202defff
                         {disp8} mov       edx, dword ptr [edi + 0x24]                   // 0x00514ce0    8b5724
                         push              0x5                                           // 0x00514ce3    6a05
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x00514ce5    894220
                         call              _jmp_addr_0x0053f540                          // 0x00514ce8    e853a80200
                         add               esp, 0x04                                     // 0x00514ced    83c404
                         pop               edi                                           // 0x00514cf0    5f
                         pop               esi                                           // 0x00514cf1    5e
                         pop               ebx                                           // 0x00514cf2    5b
                         ret               0x000c                                        // 0x00514cf3    c20c00
                         nop                                                             // 0x00514cf6    90
                         nop                                                             // 0x00514cf7    90
                         nop                                                             // 0x00514cf8    90
                         nop                                                             // 0x00514cf9    90
                         nop                                                             // 0x00514cfa    90
                         nop                                                             // 0x00514cfb    90
                         nop                                                             // 0x00514cfc    90
                         nop                                                             // 0x00514cfd    90
                         nop                                                             // 0x00514cfe    90
                         nop                                                             // 0x00514cff    90
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514d00    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514d05    8b8804032500
                         {disp8} mov       ecx, dword ptr [ecx + 0x64]                   // 0x00514d0b    8b4964
                         {disp8} mov       edx, dword ptr [ecx + 0x2c]                   // 0x00514d0e    8b512c
                         inc               edx                                           // 0x00514d11    42
                         push              edx                                           // 0x00514d12    52
                         call              _jmp_addr_0x00514a00                          // 0x00514d13    e8e8fcffff
                         ret                                                             // 0x00514d18    c3
                         nop                                                             // 0x00514d19    90
                         nop                                                             // 0x00514d1a    90
                         nop                                                             // 0x00514d1b    90
                         nop                                                             // 0x00514d1c    90
                         nop                                                             // 0x00514d1d    90
                         nop                                                             // 0x00514d1e    90
                         nop                                                             // 0x00514d1f    90
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514d20    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514d25    8b8804032500
                         {disp8} mov       ecx, dword ptr [ecx + 0x64]                   // 0x00514d2b    8b4964
                         {disp8} mov       edx, dword ptr [ecx + 0x2c]                   // 0x00514d2e    8b512c
                         dec               edx                                           // 0x00514d31    4a
                         push              edx                                           // 0x00514d32    52
                         call              _jmp_addr_0x00514a00                          // 0x00514d33    e8c8fcffff
                         ret                                                             // 0x00514d38    c3
                         nop                                                             // 0x00514d39    90
                         nop                                                             // 0x00514d3a    90
                         nop                                                             // 0x00514d3b    90
                         nop                                                             // 0x00514d3c    90
                         nop                                                             // 0x00514d3d    90
                         nop                                                             // 0x00514d3e    90
                         nop                                                             // 0x00514d3f    90
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514d40    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514d45    8b8804032500
                         {disp8} mov       ecx, dword ptr [ecx + 0x64]                   // 0x00514d4b    8b4964
                         {disp8} mov       edx, dword ptr [ecx + 0x2c]                   // 0x00514d4e    8b512c
                         inc               edx                                           // 0x00514d51    42
                         push              edx                                           // 0x00514d52    52
                         call              _jmp_addr_0x00514a00                          // 0x00514d53    e8a8fcffff
                         ret                                                             // 0x00514d58    c3
                         nop                                                             // 0x00514d59    90
                         nop                                                             // 0x00514d5a    90
                         nop                                                             // 0x00514d5b    90
                         nop                                                             // 0x00514d5c    90
                         nop                                                             // 0x00514d5d    90
                         nop                                                             // 0x00514d5e    90
                         nop                                                             // 0x00514d5f    90
                         {disp32} jmp      _jmp_addr_0x00513640                          // 0x00514d60    e9dbe8ffff
                         nop                                                             // 0x00514d65    90
                         nop                                                             // 0x00514d66    90
                         nop                                                             // 0x00514d67    90
                         nop                                                             // 0x00514d68    90
                         nop                                                             // 0x00514d69    90
                         nop                                                             // 0x00514d6a    90
                         nop                                                             // 0x00514d6b    90
                         nop                                                             // 0x00514d6c    90
                         nop                                                             // 0x00514d6d    90
                         nop                                                             // 0x00514d6e    90
                         nop                                                             // 0x00514d6f    90
?Destroy@DialogBoxImmersion@@UAEXXZ:
                         {disp32} jmp      ?Destroy@DialogBoxBase@@UAEXXZ                // 0x00514d70    e91be8ffff
                         nop                                                             // 0x00514d75    90
                         nop                                                             // 0x00514d76    90
                         nop                                                             // 0x00514d77    90
                         nop                                                             // 0x00514d78    90
                         nop                                                             // 0x00514d79    90
                         nop                                                             // 0x00514d7a    90
                         nop                                                             // 0x00514d7b    90
                         nop                                                             // 0x00514d7c    90
                         nop                                                             // 0x00514d7d    90
                         nop                                                             // 0x00514d7e    90
                         nop                                                             // 0x00514d7f    90
?InitControls@DialogBoxImmersion@@UAEXXZ:
                         {disp32} mov      eax, dword ptr [data_bytes + 0x386558]        // 0x00514d80    a158c5d400
                         mov.s             edx, eax                                      // 0x00514d85    8bd0
                         push              edx                                           // 0x00514d87    52
                         {disp8} mov       dword ptr [ecx + 0x2c], eax                   // 0x00514d88    89412c
                         call              _jmp_addr_0x00514a00                          // 0x00514d8b    e870fcffff
                         ret                                                             // 0x00514d90    c3
                         nop                                                             // 0x00514d91    90
                         nop                                                             // 0x00514d92    90
                         nop                                                             // 0x00514d93    90
                         nop                                                             // 0x00514d94    90
                         nop                                                             // 0x00514d95    90
                         nop                                                             // 0x00514d96    90
                         nop                                                             // 0x00514d97    90
                         nop                                                             // 0x00514d98    90
                         nop                                                             // 0x00514d99    90
                         nop                                                             // 0x00514d9a    90
                         nop                                                             // 0x00514d9b    90
                         nop                                                             // 0x00514d9c    90
                         nop                                                             // 0x00514d9d    90
                         nop                                                             // 0x00514d9e    90
                         nop                                                             // 0x00514d9f    90
                         {disp8} mov       eax, dword ptr [esp + 0x14]                   // 0x00514da0    8b442414
                         {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x00514da4    8b4c2410
                         push              ebx                                           // 0x00514da8    53
                         {disp8} mov       ebx, dword ptr [esp + 0x0c]                   // 0x00514da9    8b5c240c
                         push              esi                                           // 0x00514dad    56
                         {disp8} mov       esi, dword ptr [esp + 0x14]                   // 0x00514dae    8b742414
                         push              edi                                           // 0x00514db2    57
                         {disp8} mov       edi, dword ptr [esp + 0x10]                   // 0x00514db3    8b7c2410
                         push              eax                                           // 0x00514db7    50
                         push              ecx                                           // 0x00514db8    51
                         push              esi                                           // 0x00514db9    56
                         push              ebx                                           // 0x00514dba    53
                         push              edi                                           // 0x00514dbb    57
                         call              _jmp_addr_0x0053f3e0                          // 0x00514dbc    e81fa60200
                         add               esp, 0x14                                     // 0x00514dc1    83c414
                         cmp               edi, 0x07                                     // 0x00514dc4    83ff07
                         {disp32} ja       _jmp_addr_0x00514ef4                          // 0x00514dc7    0f8727010000
                         jmp               dword ptr [edi*4 + 0x514efc]                  // 0x00514dcd    ff24bdfc4e5100
                         {disp32} mov      edx, dword ptr [_game]                        // 0x00514dd4    8b155c19d000
                         {disp32} mov      eax, dword ptr [edx + 0x00250304]             // 0x00514dda    8b8204032500
                         {disp8} mov       ecx, dword ptr [eax + 0x64]                   // 0x00514de0    8b4864
                         mov               edx, dword ptr [ecx]                          // 0x00514de3    8b11
                         call              dword ptr [edx + 0x20]                        // 0x00514de5    ff5220
                         pop               edi                                           // 0x00514de8    5f
                         pop               esi                                           // 0x00514de9    5e
                         pop               ebx                                           // 0x00514dea    5b
                         ret               0x0014                                        // 0x00514deb    c21400
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514dee    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514df3    8b8804032500
                         {disp8} mov       ecx, dword ptr [ecx + 0x64]                   // 0x00514df9    8b4964
                         {disp8} mov       eax, dword ptr [ecx + 0x2c]                   // 0x00514dfc    8b412c
                         test              eax, eax                                      // 0x00514dff    85c0
                         {disp8} jg        _jmp_addr_0x00514e0a                          // 0x00514e01    7f07
                         mov               eax, 0x00001afc                               // 0x00514e03    b8fc1a0000
                         {disp8} jmp       _jmp_addr_0x00514e1a                          // 0x00514e08    eb10
_jmp_addr_0x00514e0a:    xor.s             edx, edx                                      // 0x00514e0a    33d2
                         cmp               eax, 0x02                                     // 0x00514e0c    83f802
                         setge             dl                                            // 0x00514e0f    0f9dc2
                         add               edx, 0x00001afd                               // 0x00514e12    81c2fd1a0000
                         mov.s             eax, edx                                      // 0x00514e18    8bc2
_jmp_addr_0x00514e1a:    cmp               eax, dword ptr [data_bytes + 0x351cac]        // 0x00514e1a    3b05ac7cd100
                         {disp8} jae       _jmp_addr_0x00514e26                          // 0x00514e20    7304
                         test              eax, eax                                      // 0x00514e22    85c0
                         {disp8} ja        _jmp_addr_0x00514e2d                          // 0x00514e24    7707
_jmp_addr_0x00514e26:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x00514e26    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x00514e39                          // 0x00514e2b    eb0c
_jmp_addr_0x00514e2d:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x00514e2d    8b15a87cd100
                         lea               eax, dword ptr [eax + eax * 0x2]              // 0x00514e33    8d0440
                         lea               eax, dword ptr [edx + eax * 0x4]              // 0x00514e36    8d0482
_jmp_addr_0x00514e39:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00514e39    8b4008
                         {disp8} mov       ecx, dword ptr [ecx + 0x14]                   // 0x00514e3c    8b4914
                         push              eax                                           // 0x00514e3f    50
                         add               ecx, 0x24                                     // 0x00514e40    83c124
                         push              ecx                                           // 0x00514e43    51
                         call              _wcscpy                                       // 0x00514e44    e86d112b00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x5132dc]        // 0x00514e49    a1dc92ed00
                         add               esp, 0x08                                     // 0x00514e4e    83c408
                         test              eax, eax                                      // 0x00514e51    85c0
                         {disp32} je       _jmp_addr_0x00514ef4                          // 0x00514e53    0f849b000000
                         push              0x42c80000                                    // 0x00514e59    680000c842
                         push              0x0                                           // 0x00514e5e    6a00
                         push              0x0000a000                                    // 0x00514e60    6800a00000
                         push              0xffff6000                                    // 0x00514e65    680060ffff
                         push              0x1                                           // 0x00514e6a    6a01
                         {disp8} lea       edx, dword ptr [esp + 0x34]                   // 0x00514e6c    8d542434
                         push              edx                                           // 0x00514e70    52
                         push              eax                                           // 0x00514e71    50
                         push              0x3f800000                                    // 0x00514e72    680000803f
                         push              0x3f800000                                    // 0x00514e77    680000803f
                         push              0x3f400000                                    // 0x00514e7c    680000403f
                         push              0x3e800000                                    // 0x00514e81    680000803e
                         push              0x00000180                                    // 0x00514e86    6880010000
                         mov               cl, -0x01                                     // 0x00514e8b    b1ff
                         push              0x0000021e                                    // 0x00514e8d    681e020000
                         push              0x00000127                                    // 0x00514e92    6827010000
                         push              0x00000101                                    // 0x00514e97    6801010000
                         {disp8} mov       byte ptr [esp + 0x5c], cl                     // 0x00514e9c    884c245c
                         {disp8} mov       byte ptr [esp + 0x5d], cl                     // 0x00514ea0    884c245d
                         {disp8} mov       byte ptr [esp + 0x5e], cl                     // 0x00514ea4    884c245e
                         {disp8} mov       byte ptr [esp + 0x5f], cl                     // 0x00514ea8    884c245f
                         call              ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x00514eac    e8cfdaefff
                         add               esp, 0x3c                                     // 0x00514eb1    83c43c
                         pop               edi                                           // 0x00514eb4    5f
                         pop               esi                                           // 0x00514eb5    5e
                         pop               ebx                                           // 0x00514eb6    5b
                         ret               0x0014                                        // 0x00514eb7    c21400
                         {disp32} mov      eax, dword ptr [_game]                        // 0x00514eba    a15c19d000
                         {disp32} mov      ecx, dword ptr [eax + 0x00250304]             // 0x00514ebf    8b8804032500
                         {disp8} mov       edx, dword ptr [ecx + 0x64]                   // 0x00514ec5    8b5164
                         {disp8} mov       eax, dword ptr [edx + 0x2c]                   // 0x00514ec8    8b422c
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */      // 0x00514ecb    6838bdd400
                         {disp32} mov      dword ptr [data_bytes + 0x386558], eax        // 0x00514ed0    a358c5d400
                         call              _jmp_addr_0x0066bcd0                          // 0x00514ed5    e8f66d1500
                         add               esp, 0x04                                     // 0x00514eda    83c404
                         pop               edi                                           // 0x00514edd    5f
                         pop               esi                                           // 0x00514ede    5e
                         pop               ebx                                           // 0x00514edf    5b
                         ret               0x0014                                        // 0x00514ee0    c21400
                         {disp32} mov      eax, dword ptr [esi + 0x00000238]             // 0x00514ee3    8b8638020000
                         test              eax, eax                                      // 0x00514ee9    85c0
                         {disp8} je        _jmp_addr_0x00514ef4                          // 0x00514eeb    7407
                         push              esi                                           // 0x00514eed    56
                         push              ebx                                           // 0x00514eee    53
                         call              eax                                           // 0x00514eef    ffd0
                         add               esp, 0x08                                     // 0x00514ef1    83c408
_jmp_addr_0x00514ef4:    pop               edi                                           // 0x00514ef4    5f
                         pop               esi                                           // 0x00514ef5    5e
                         pop               ebx                                           // 0x00514ef6    5b
                         ret               0x0014                                        // 0x00514ef7    c21400

// Snippet: db, [0x00514efa, 0x00514efc)
.byte 0x8b, 0xff                  // 0x00514efa

// Snippet: jmptbl, [0x00514efc, 0x00514f1c)
.byte 0xee, 0x4d, 0x51, 0x00      // 0x00514efc
.byte 0xe3, 0x4e, 0x51, 0x00      // 0x00514f00
.byte 0xf4, 0x4e, 0x51, 0x00      // 0x00514f04
.byte 0xf4, 0x4e, 0x51, 0x00      // 0x00514f08
.byte 0xf4, 0x4e, 0x51, 0x00      // 0x00514f0c
.byte 0xf4, 0x4e, 0x51, 0x00      // 0x00514f10
.byte 0xd4, 0x4d, 0x51, 0x00      // 0x00514f14
.byte 0xba, 0x4e, 0x51, 0x00      // 0x00514f18

// Snippet: db, [0x00514f1c, 0x00514f20)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00514f1c

