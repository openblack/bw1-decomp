.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetMidTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _jmp_addr_0x004707f0
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern _jmp_addr_0x005dd370
.extern _jmp_addr_0x0062b830
.extern _jmp_addr_0x0062d210
.extern _jmp_addr_0x0062d6e0
.extern _jmp_addr_0x0062d710
.extern _jmp_addr_0x0062d860
.extern _jmp_addr_0x0062d9a0
.extern _wcscpy
.extern __chkstk
.extern ___nw__FUl

.globl ?Init@MPFEChooseConnection@@SAXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z
.globl _Init__20MPFEChooseConnectionFUlUlPFiP8SetupBoxP12SetupControlii_v
.globl ?Destroy@MPFEChooseConnection@@UAEXXZ

start_0x0062b030_0x0062b830:
// Snippet: asm, [0x0062b030, 0x0062b800)
_Init__20MPFEChooseConnectionFUlUlPFiP8SetupBoxP12SetupControlii_v:
?Init@MPFEChooseConnection@@SAXKKP6AXHPAUSetupBox@@PAUSetupControl@@HH@Z@Z:
                                                                          {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x0062b030    8b44240c
                         {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x0062b034    8b542404
                         push             edi                                           // 0x0062b038    57
                         mov.s            edi, ecx                                      // 0x0062b039    8bf9
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x0062b03b    8b4c240c
                         push             eax                                           // 0x0062b03f    50
                         push             ecx                                           // 0x0062b040    51
                         push             edx                                           // 0x0062b041    52
                         mov.s            ecx, edi                                      // 0x0062b042    8bcf
                         call             @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x0062b044    e8b783eeff
                         push             0x000000b9                                    // 0x0062b049    68b9000000
                         push             0x00bf4b24                                    // 0x0062b04e    68244bbf00
                         push             0x0000025c                                    // 0x0062b053    685c020000
                         call             ___nw__FUl                                    // 0x0062b058    e833071b00
                         add              esp, 0x0c                                     // 0x0062b05d    83c40c
                         test             eax, eax                                      // 0x0062b060    85c0
                         {disp8} je       _jmp_addr_0x0062b081                          // 0x0062b062    741d
                         push             0x2                                           // 0x0062b064    6a02
                         push             0x0                                           // 0x0062b066    6a00
                         push             0x28                                          // 0x0062b068    6a28
                         push             0x00c4cd30                                    // 0x0062b06a    6830cdc400
                         push             0x00000212                                    // 0x0062b06f    6812020000
                         push             0x1e                                          // 0x0062b074    6a1e
                         push             0x1                                           // 0x0062b076    6a01
                         mov.s            ecx, eax                                      // 0x0062b078    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0062b07a    e8e121deff
                         {disp8} jmp      _jmp_addr_0x0062b083                          // 0x0062b07f    eb02
_jmp_addr_0x0062b081:    xor.s            eax, eax                                      // 0x0062b081    33c0
_jmp_addr_0x0062b083:    push             0x000000bb                                    // 0x0062b083    68bb000000
                         push             0x00bf4b24                                    // 0x0062b088    68244bbf00
                         {disp8} mov      dword ptr [edi + 0x10], eax                   // 0x0062b08d    894710
                         push             0x0000025c                                    // 0x0062b090    685c020000
                         {disp32} mov     dword ptr [eax + 0x00000238], 0x0062b200      // 0x0062b095    c7803802000000b26200
                         call             ___nw__FUl                                    // 0x0062b09f    e8ec061b00
                         add              esp, 0x0c                                     // 0x0062b0a4    83c40c
                         test             eax, eax                                      // 0x0062b0a7    85c0
                         {disp8} je       _jmp_addr_0x0062b0cb                          // 0x0062b0a9    7420
                         push             0x3                                           // 0x0062b0ab    6a03
                         push             0x1                                           // 0x0062b0ad    6a01
                         push             0x28                                          // 0x0062b0af    6a28
                         push             0x00c4cd30                                    // 0x0062b0b1    6830cdc400
                         push             0x00000212                                    // 0x0062b0b6    6812020000
                         push             0x000002da                                    // 0x0062b0bb    68da020000
                         push             0x4                                           // 0x0062b0c0    6a04
                         mov.s            ecx, eax                                      // 0x0062b0c2    8bc8
                         call             @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0062b0c4    e89721deff
                         {disp8} jmp      _jmp_addr_0x0062b0cd                          // 0x0062b0c9    eb02
_jmp_addr_0x0062b0cb:    xor.s            eax, eax                                      // 0x0062b0cb    33c0
_jmp_addr_0x0062b0cd:    push             esi                                           // 0x0062b0cd    56
                         push             0x000000be                                    // 0x0062b0ce    68be000000
                         push             0x00bf4b24                                    // 0x0062b0d3    68244bbf00
                         {disp8} mov      dword ptr [edi + 0x14], eax                   // 0x0062b0d8    894714
                         push             0x00000244                                    // 0x0062b0db    6844020000
                         {disp32} mov     dword ptr [eax + 0x00000238], 0x0062b210      // 0x0062b0e0    c7803802000010b26200
                         call             ___nw__FUl                                    // 0x0062b0ea    e8a1061b00
                         mov.s            esi, eax                                      // 0x0062b0ef    8bf0
                         add              esp, 0x0c                                     // 0x0062b0f1    83c40c
                         test             esi, esi                                      // 0x0062b0f4    85f6
                         {disp8} je       _jmp_addr_0x0062b134                          // 0x0062b0f6    743c
                         push             0x00c4cd30                                    // 0x0062b0f8    6830cdc400
                         push             0x28                                          // 0x0062b0fd    6a28
                         push             0x000002d0                                    // 0x0062b0ff    68d0020000
                         push             0x46                                          // 0x0062b104    6a46
                         push             0x28                                          // 0x0062b106    6a28
                         push             0x2                                           // 0x0062b108    6a02
                         mov.s            ecx, esi                                      // 0x0062b10a    8bce
                         call             ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0062b10c    e83fe1ddff
                         mov              dword ptr [esi], 0x008ab5c0                   // 0x0062b111    c706c0b58a00
                         {disp32} mov     dword ptr [esi + 0x0000023c], 0x00000001      // 0x0062b117    c7863c02000001000000
                         {disp32} mov     byte ptr [esi + 0x0000022a], 0x00             // 0x0062b121    c6862a02000000
                         {disp32} mov     dword ptr [esi + 0x00000240], 0x00000000      // 0x0062b128    c7864002000000000000
                         {disp8} jmp      _jmp_addr_0x0062b136                          // 0x0062b132    eb02
_jmp_addr_0x0062b134:    xor.s            esi, esi                                      // 0x0062b134    33f6
_jmp_addr_0x0062b136:    {disp8} mov      dword ptr [edi + 0x18], esi                   // 0x0062b136    897718
                         call             _jmp_addr_0x00407a20                          // 0x0062b139    e8e2c8ddff
                         {disp8} mov      ecx, dword ptr [edi + 0x18]                   // 0x0062b13e    8b4f18
                         push             0x000000c1                                    // 0x0062b141    68c1000000
                         push             0x00bf4b24                                    // 0x0062b146    68244bbf00
                         push             0x000002b0                                    // 0x0062b14b    68b0020000
                         {disp8} mov      dword ptr [ecx + 0x20], eax                   // 0x0062b150    894120
                         call             ___nw__FUl                                    // 0x0062b153    e838061b00
                         add              esp, 0x0c                                     // 0x0062b158    83c40c
                         test             eax, eax                                      // 0x0062b15b    85c0
                         pop              esi                                           // 0x0062b15d    5e
                         {disp8} je       _jmp_addr_0x0062b17f                          // 0x0062b15e    741f
                         push             0x000000f0                                    // 0x0062b160    68f0000000
                         push             0x000001f4                                    // 0x0062b165    68f4010000
                         push             0x000000c8                                    // 0x0062b16a    68c8000000
                         push             0x00000096                                    // 0x0062b16f    6896000000
                         push             0x3                                           // 0x0062b174    6a03
                         mov.s            ecx, eax                                      // 0x0062b176    8bc8
                         call             @__ct__9SetupListFiiiii@28                    // 0x0062b178    e8d3f2ddff
                         {disp8} jmp      _jmp_addr_0x0062b181                          // 0x0062b17d    eb02
_jmp_addr_0x0062b17f:    xor.s            eax, eax                                      // 0x0062b17f    33c0
_jmp_addr_0x0062b181:    {disp8} mov      dword ptr [edi + 0x1c], eax                   // 0x0062b181    89471c
                         {disp32} mov     dword ptr [eax + 0x00000238], 0x0062b310      // 0x0062b184    c7803802000010b36200
                         call             _jmp_addr_0x00407a20                          // 0x0062b18e    e88dc8ddff
                         {disp8} mov      edx, dword ptr [edi + 0x1c]                   // 0x0062b193    8b571c
                         push             0x000000c4                                    // 0x0062b196    68c4000000
                         push             0x00bf4b24                                    // 0x0062b19b    68244bbf00
                         push             0x00000468                                    // 0x0062b1a0    6868040000
                         {disp8} mov      dword ptr [edx + 0x20], eax                   // 0x0062b1a5    894220
                         call             ___nw__FUl                                    // 0x0062b1a8    e8e3051b00
                         add              esp, 0x0c                                     // 0x0062b1ad    83c40c
                         test             eax, eax                                      // 0x0062b1b0    85c0
                         {disp8} je       _jmp_addr_0x0062b1d7                          // 0x0062b1b2    7423
                         push             0x0                                           // 0x0062b1b4    6a00
                         push             0x00c4cd30                                    // 0x0062b1b6    6830cdc400
                         push             0x1e                                          // 0x0062b1bb    6a1e
                         push             0x00000118                                    // 0x0062b1bd    6818010000
                         push             0x000001d7                                    // 0x0062b1c2    68d7010000
                         push             0x00000104                                    // 0x0062b1c7    6804010000
                         push             0x5                                           // 0x0062b1cc    6a05
                         mov.s            ecx, eax                                      // 0x0062b1ce    8bc8
                         call             @__ct__9SetupEditFiiiiiPwi@33                 // 0x0062b1d0    e84b10deff
                         {disp8} jmp      _jmp_addr_0x0062b1d9                          // 0x0062b1d5    eb02
_jmp_addr_0x0062b1d7:    xor.s            eax, eax                                      // 0x0062b1d7    33c0
_jmp_addr_0x0062b1d9:    {disp8} mov      dword ptr [edi + 0x20], eax                   // 0x0062b1d9    894720
                         call             _GetMidTextSize__Fv                           // 0x0062b1dc    e81fc8ddff
                         {disp8} mov      ecx, dword ptr [edi + 0x20]                   // 0x0062b1e1    8b4f20
                         {disp8} mov      dword ptr [ecx + 0x20], eax                   // 0x0062b1e4    894120
                         {disp8} mov      ecx, dword ptr [edi + 0x20]                   // 0x0062b1e7    8b4f20
                         mov              edx, dword ptr [ecx]                          // 0x0062b1ea    8b11
                         push             0x1                                           // 0x0062b1ec    6a01
                         call             dword ptr [edx + 8]                           // 0x0062b1ee    ff5208
                         pop              edi                                           // 0x0062b1f1    5f
                         ret              0x000c                                        // 0x0062b1f2    c20c00
                         nop                                                            // 0x0062b1f5    90
                         nop                                                            // 0x0062b1f6    90
                         nop                                                            // 0x0062b1f7    90
                         nop                                                            // 0x0062b1f8    90
                         nop                                                            // 0x0062b1f9    90
                         nop                                                            // 0x0062b1fa    90
                         nop                                                            // 0x0062b1fb    90
                         nop                                                            // 0x0062b1fc    90
                         nop                                                            // 0x0062b1fd    90
                         nop                                                            // 0x0062b1fe    90
                         nop                                                            // 0x0062b1ff    90
                         mov              ecx, 0x00d40e20                               // 0x0062b200    b9200ed400
                         {disp32} jmp     _jmp_addr_0x0062d9a0                          // 0x0062b205    e996270000
                         nop                                                            // 0x0062b20a    90
                         nop                                                            // 0x0062b20b    90
                         nop                                                            // 0x0062b20c    90
                         nop                                                            // 0x0062b20d    90
                         nop                                                            // 0x0062b20e    90
                         nop                                                            // 0x0062b20f    90
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0062b210    8b442408
                         {disp32} mov     cl, byte ptr [eax + 0x00000229]               // 0x0062b214    8a8829020000
                         test             cl, cl                                        // 0x0062b21a    84c9
                         push             esi                                           // 0x0062b21c    56
                         push             edi                                           // 0x0062b21d    57
                         {disp32} jne     _jmp_addr_0x0062b303                          // 0x0062b21e    0f85df000000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9c4]        // 0x0062b224    8b0dc409d400
                         {disp32} mov     eax, dword ptr [ecx + 0x00000248]             // 0x0062b22a    8b8148020000
                         test             eax, eax                                      // 0x0062b230    85c0
                         {disp32} jl      _jmp_addr_0x0062b303                          // 0x0062b232    0f8ccb000000
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0062b238    3b8150020000
                         {disp32} jge     _jmp_addr_0x0062b303                          // 0x0062b23e    0f8dbf000000
                         {disp32} mov     ecx, dword ptr [ecx + 0x00000264]             // 0x0062b244    8b8964020000
                         mov              esi, dword ptr [ecx + eax * 0x4]              // 0x0062b24a    8b3481
                         test             esi, esi                                      // 0x0062b24d    85f6
                         {disp32} je      _jmp_addr_0x0062b303                          // 0x0062b24f    0f84ae000000
                         {disp32} mov     edx, dword ptr [rdata_bytes + 0x3f4]          // 0x0062b255    8b15f4938a00
                         mov              dword ptr [edx], 0x00000000                   // 0x0062b25b    c70200000000
                         cmp              dword ptr [esi], 0x01                         // 0x0062b261    833e01
                         {disp8} jne      _jmp_addr_0x0062b27f                          // 0x0062b264    7519
                         {disp32} mov     eax, dword ptr [rdata_bytes + 0x3f4]          // 0x0062b266    a1f4938a00
                         push             esi                                           // 0x0062b26b    56
                         mov              ecx, 0x00d40e20                               // 0x0062b26c    b9200ed400
                         mov              dword ptr [eax], 0x00000001                   // 0x0062b271    c70001000000
                         call             _jmp_addr_0x0062d860                          // 0x0062b277    e8e4250000
                         pop              edi                                           // 0x0062b27c    5f
                         pop              esi                                           // 0x0062b27d    5e
                         ret                                                            // 0x0062b27e    c3
_jmp_addr_0x0062b27f:    call             _jmp_addr_0x0062d6e0                          // 0x0062b27f    e85c240000
                         test             eax, eax                                      // 0x0062b284    85c0
                         {disp8} je       _jmp_addr_0x0062b296                          // 0x0062b286    740e
                         push             esi                                           // 0x0062b288    56
                         mov              ecx, 0x00d40e20                               // 0x0062b289    b9200ed400
                         call             _jmp_addr_0x0062d860                          // 0x0062b28e    e8cd250000
                         pop              edi                                           // 0x0062b293    5f
                         pop              esi                                           // 0x0062b294    5e
                         ret                                                            // 0x0062b295    c3
_jmp_addr_0x0062b296:    {disp8} mov      edi, dword ptr [esp + 0x0c]                   // 0x0062b296    8b7c240c
                         push             0x0                                           // 0x0062b29a    6a00
                         push             0x1                                           // 0x0062b29c    6a01
                         push             0x00c4cd30                                    // 0x0062b29e    6830cdc400
                         mov.s            ecx, edi                                      // 0x0062b2a3    8bcf
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0062b2a5    e8e65edeff
                         {disp32} mov     dword ptr [data_bytes + 0x37a9cc], edi        // 0x0062b2aa    893dcc09d400
                         {disp32} mov     ecx, dword ptr [edi + 0x000000b4]             // 0x0062b2b0    8b8fb4000000
                         add              ecx, 0x24                                     // 0x0062b2b6    83c124
                         push             ecx                                           // 0x0062b2b9    51
                         mov.s            ecx, esi                                      // 0x0062b2ba    8bce
                         call             _jmp_addr_0x0062d710                          // 0x0062b2bc    e84f240000
                         test             eax, eax                                      // 0x0062b2c1    85c0
                         {disp8} jne      _jmp_addr_0x0062b303                          // 0x0062b2c3    753e
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000dad // 0x0062b2c5    813dac7cd100ad0d0000
                         {disp8} ja       _jmp_addr_0x0062b2e8                          // 0x0062b2cf    7717
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b2d1    a1a87cd100
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b2d6    8b4008
                         push             0x0                                           // 0x0062b2d9    6a00
                         push             0x0                                           // 0x0062b2db    6a00
                         push             eax                                           // 0x0062b2dd    50
                         mov.s            ecx, edi                                      // 0x0062b2de    8bcf
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0062b2e0    e8ab5edeff
                         pop              edi                                           // 0x0062b2e5    5f
                         pop              esi                                           // 0x0062b2e6    5e
                         ret                                                            // 0x0062b2e7    c3
_jmp_addr_0x0062b2e8:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0062b2e8    8b15a87cd100
                         {disp32} lea     eax, dword ptr [edx + 0x0000a41c]             // 0x0062b2ee    8d821ca40000
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b2f4    8b4008
                         push             0x0                                           // 0x0062b2f7    6a00
                         push             0x0                                           // 0x0062b2f9    6a00
                         push             eax                                           // 0x0062b2fb    50
                         mov.s            ecx, edi                                      // 0x0062b2fc    8bcf
                         call             @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0062b2fe    e88d5edeff
_jmp_addr_0x0062b303:    pop              edi                                           // 0x0062b303    5f
                         pop              esi                                           // 0x0062b304    5e
                         ret                                                            // 0x0062b305    c3
                         nop                                                            // 0x0062b306    90
                         nop                                                            // 0x0062b307    90
                         nop                                                            // 0x0062b308    90
                         nop                                                            // 0x0062b309    90
                         nop                                                            // 0x0062b30a    90
                         nop                                                            // 0x0062b30b    90
                         nop                                                            // 0x0062b30c    90
                         nop                                                            // 0x0062b30d    90
                         nop                                                            // 0x0062b30e    90
                         nop                                                            // 0x0062b30f    90
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a9c4]        // 0x0062b310    a1c409d400
                         cmp              dword ptr [eax + 0x00000248], -0x01           // 0x0062b315    83b848020000ff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b31c    8b0dbc09d400
                         {disp8} jne      _jmp_addr_0x0062b32c                          // 0x0062b322    7508
                         mov              edx, dword ptr [ecx]                          // 0x0062b324    8b11
                         push             0x1                                           // 0x0062b326    6a01
                         call             dword ptr [edx + 8]                           // 0x0062b328    ff5208
                         ret                                                            // 0x0062b32b    c3
_jmp_addr_0x0062b32c:    mov              eax, dword ptr [ecx]                          // 0x0062b32c    8b01
                         push             0x0                                           // 0x0062b32e    6a00
                         call             dword ptr [eax + 8]                           // 0x0062b330    ff5008
                         ret                                                            // 0x0062b333    c3
                         nop                                                            // 0x0062b334    90
                         nop                                                            // 0x0062b335    90
                         nop                                                            // 0x0062b336    90
                         nop                                                            // 0x0062b337    90
                         nop                                                            // 0x0062b338    90
                         nop                                                            // 0x0062b339    90
                         nop                                                            // 0x0062b33a    90
                         nop                                                            // 0x0062b33b    90
                         nop                                                            // 0x0062b33c    90
                         nop                                                            // 0x0062b33d    90
                         nop                                                            // 0x0062b33e    90
                         nop                                                            // 0x0062b33f    90
?Destroy@MPFEChooseConnection@@UAEXXZ:
                         ret                                                            // 0x0062b340    c3
                         nop                                                            // 0x0062b341    90
                         nop                                                            // 0x0062b342    90
                         nop                                                            // 0x0062b343    90
                         nop                                                            // 0x0062b344    90
                         nop                                                            // 0x0062b345    90
                         nop                                                            // 0x0062b346    90
                         nop                                                            // 0x0062b347    90
                         nop                                                            // 0x0062b348    90
                         nop                                                            // 0x0062b349    90
                         nop                                                            // 0x0062b34a    90
                         nop                                                            // 0x0062b34b    90
                         nop                                                            // 0x0062b34c    90
                         nop                                                            // 0x0062b34d    90
                         nop                                                            // 0x0062b34e    90
                         nop                                                            // 0x0062b34f    90
_jmp_addr_0x0062b350:    mov              eax, 0x00002820                               // 0x0062b350    b820280000
                         call             __chkstk                                      // 0x0062b355    e856bb1900
                         push             ebx                                           // 0x0062b35a    53
                         push             ebp                                           // 0x0062b35b    55
                         push             esi                                           // 0x0062b35c    56
                         push             edi                                           // 0x0062b35d    57
                         {disp8} lea      eax, dword ptr [esp + 0x18]                   // 0x0062b35e    8d442418
                         push             eax                                           // 0x0062b362    50
                         push             0x00bf4b90                                    // 0x0062b363    68904bbf00
                         xor.s            ebp, ebp                                      // 0x0062b368    33ed
                         push             0x009caff8                                    // 0x0062b36a    68f8af9c00
                         mov.s            edi, ecx                                      // 0x0062b36f    8bf9
                         {disp8} mov      dword ptr [esp + 0x24], ebp                   // 0x0062b371    896c2424
                         call             dword ptr [__imp__RegistryRetrieveULong__YA_AW4LH_RETURN__PAD0PAK_Z]               // 0x0062b375    ff1544938a00
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x0062b37b    8b442424
                         add              esp, 0x0c                                     // 0x0062b37f    83c40c
                         cmp.s            eax, ebp                                      // 0x0062b382    3bc5
                         {disp8} je       _jmp_addr_0x0062b3a4                          // 0x0062b384    741e
                         {disp32} mov     al, byte ptr [data_bytes + 0x37a998]          // 0x0062b386    a09809d400
                         test             al, al                                        // 0x0062b38b    84c0
                         {disp8} jne      _jmp_addr_0x0062b3a4                          // 0x0062b38d    7515
                         push             ebp                                           // 0x0062b38f    55
                         push             0x00bf4b50                                    // 0x0062b390    68504bbf00
                         call             _jmp_addr_0x005dd370                          // 0x0062b395    e8d61ffbff
                         add              esp, 0x08                                     // 0x0062b39a    83c408
                         {disp32} mov     byte ptr [data_bytes + 0x37a998], 0x01        // 0x0062b39d    c6059809d40001
_jmp_addr_0x0062b3a4:    push             0x00000d7a                                    // 0x0062b3a4    687a0d0000
                         mov              ecx, 0x00d17ca8                               // 0x0062b3a9    b9a87cd100
                         {disp32} mov     dword ptr [edi + 0x00000430], ebp             // 0x0062b3ae    89af30040000
                         call             _jmp_addr_0x004707f0                          // 0x0062b3b4    e83754e4ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b3b9    8b4008
                         {disp8} mov      ecx, dword ptr [edi + 0x10]                   // 0x0062b3bc    8b4f10
                         push             eax                                           // 0x0062b3bf    50
                         add              ecx, 0x24                                     // 0x0062b3c0    83c124
                         push             ecx                                           // 0x0062b3c3    51
                         call             _wcscpy                                       // 0x0062b3c4    e8edab1900
                         add              esp, 0x08                                     // 0x0062b3c9    83c408
                         push             0x00001a82                                    // 0x0062b3cc    68821a0000
                         mov              ecx, 0x00d17ca8                               // 0x0062b3d1    b9a87cd100
                         call             _jmp_addr_0x004707f0                          // 0x0062b3d6    e81554e4ff
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b3db    8b4008
                         {disp8} mov      edx, dword ptr [edi + 0x14]                   // 0x0062b3de    8b5714
                         push             eax                                           // 0x0062b3e1    50
                         add              edx, 0x24                                     // 0x0062b3e2    83c224
                         push             edx                                           // 0x0062b3e5    52
                         call             _wcscpy                                       // 0x0062b3e6    e8cbab1900
                         add              esp, 0x08                                     // 0x0062b3eb    83c408
                         call             _jmp_addr_0x0062d210                          // 0x0062b3ee    e81d1e0000
                         cmp              dword ptr [data_bytes + 0x351cac], 0x000018e3 // 0x0062b3f3    813dac7cd100e3180000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b3fd    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0062b409                          // 0x0062b402    7605
                         add              eax, 0x00012aa4                               // 0x0062b404    05a42a0100
_jmp_addr_0x0062b409:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x0062b409    8b4808
                         {disp8} mov      edx, dword ptr [edi + 0x18]                   // 0x0062b40c    8b5718
                         push             ecx                                           // 0x0062b40f    51
                         add              edx, 0x24                                     // 0x0062b410    83c224
                         push             edx                                           // 0x0062b413    52
                         call             _wcscpy                                       // 0x0062b414    e89dab1900
                         {disp8} mov      esi, dword ptr [edi + 0x1c]                   // 0x0062b419    8b771c
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0062b41c    8b8650020000
                         add              esp, 0x08                                     // 0x0062b422    83c408
                         cmp.s            eax, ebp                                      // 0x0062b425    3bc5
                         mov              ebx, 0x00000001                               // 0x0062b427    bb01000000
                         {disp8} jle      _jmp_addr_0x0062b441                          // 0x0062b42c    7e13
_jmp_addr_0x0062b42e:    dec              eax                                           // 0x0062b42e    48
                         push             eax                                           // 0x0062b42f    50
                         mov.s            ecx, esi                                      // 0x0062b430    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x0062b432    e829f9ddff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0062b437    8b8650020000
                         cmp.s            eax, ebp                                      // 0x0062b43d    3bc5
                         {disp8} jg       _jmp_addr_0x0062b42e                          // 0x0062b43f    7fed
_jmp_addr_0x0062b441:    {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x0062b441    8b471c
                         {disp32} mov     dword ptr [eax + 0x00000248], 0xffffffff      // 0x0062b444    c78048020000ffffffff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b44e    8b0dbc09d400
                         mov              edx, dword ptr [ecx]                          // 0x0062b454    8b11
                         push             0x1                                           // 0x0062b456    6a01
                         {disp8} mov      byte ptr [esp + 0x17], 0x00                   // 0x0062b458    c644241700
                         call             dword ptr [edx + 8]                           // 0x0062b45d    ff5208
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37ae28]        // 0x0062b460    a1280ed400
                         cmp.s            eax, ebp                                      // 0x0062b465    3bc5
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x0062b467    89442414
                         {disp32} je      _jmp_addr_0x0062b6da                          // 0x0062b46b    0f8469020000
                         {disp8} jmp      _jmp_addr_0x0062b477                          // 0x0062b471    eb04
_jmp_addr_0x0062b473:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x0062b473    8b442414
_jmp_addr_0x0062b477:    {disp8} mov      ebp, dword ptr [eax + 0x04]                   // 0x0062b477    8b6804
                         cmp              dword ptr [ebp + 0x00], 0x01                  // 0x0062b47a    837d0001
                         {disp32} jne     _jmp_addr_0x0062b509                          // 0x0062b47e    0f8585000000
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000dc5 // 0x0062b484    813dac7cd100c50d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b48e    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0062b49a                          // 0x0062b493    7605
                         add              eax, 0x0000a53c                               // 0x0062b495    053ca50000
_jmp_addr_0x0062b49a:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b49a    8b4008
                         push             eax                                           // 0x0062b49d    50
                         push             ebx                                           // 0x0062b49e    53
                         {disp8} lea      ecx, dword ptr [esp + 0x24]                   // 0x0062b49f    8d4c2424
                         push             0x00bea688                                    // 0x0062b4a3    6888a6be00
                         push             ecx                                           // 0x0062b4a8    51
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0062b4a9    ff15d8938a00
                         {disp8} mov      esi, dword ptr [edi + 0x1c]                   // 0x0062b4af    8b771c
                         {disp32} mov     edx, dword ptr [esi + 0x00000250]             // 0x0062b4b2    8b9650020000
                         add              esp, 0x10                                     // 0x0062b4b8    83c410
                         push             eax                                           // 0x0062b4bb    50
                         push             edx                                           // 0x0062b4bc    52
                         mov.s            ecx, esi                                      // 0x0062b4bd    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0062b4bf    e8acf9ddff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0062b4c4    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0062b4ca    8d41ff
                         test             eax, eax                                      // 0x0062b4cd    85c0
                         {disp8} jl       _jmp_addr_0x0062b4e2                          // 0x0062b4cf    7c11
                         cmp.s            eax, ecx                                      // 0x0062b4d1    3bc1
                         {disp8} jge      _jmp_addr_0x0062b4e2                          // 0x0062b4d3    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x0062b4d5    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0062b4db    c7048100000000
_jmp_addr_0x0062b4e2:    {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b4e2    8b0dbc09d400
                         mov              edx, dword ptr [ecx]                          // 0x0062b4e8    8b11
                         push             0x0                                           // 0x0062b4ea    6a00
                         {disp8} mov      byte ptr [esp + 0x17], 0x01                   // 0x0062b4ec    c644241701
                         call             dword ptr [edx + 8]                           // 0x0062b4f1    ff5208
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x0062b4f4    8b471c
                         {disp32} mov     ecx, dword ptr [eax + 0x00000250]             // 0x0062b4f7    8b8850020000
                         dec              ecx                                           // 0x0062b4fd    49
                         {disp32} mov     dword ptr [eax + 0x00000248], ecx             // 0x0062b4fe    898848020000
                         {disp32} jmp     _jmp_addr_0x0062b6a4                          // 0x0062b504    e99b010000
_jmp_addr_0x0062b509:    {disp32} mov     al, byte ptr [ebp + 0x00000946]               // 0x0062b509    8a8546090000
                         test             al, al                                        // 0x0062b50f    84c0
                         {disp32} mov     al, byte ptr [ebp + 0x00000944]               // 0x0062b511    8a8544090000
                         {disp32} je      _jmp_addr_0x0062b615                          // 0x0062b517    0f84f8000000
                         test             al, al                                        // 0x0062b51d    84c0
                         {disp8} je       _jmp_addr_0x0062b571                          // 0x0062b51f    7450
                         {disp32} mov     edx, dword ptr [data_bytes + 0x351cac]        // 0x0062b521    8b15ac7cd100
                         cmp              edx, 0x00000da6                               // 0x0062b527    81faa60d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b52d    a1a87cd100
                         mov.s            ecx, eax                                      // 0x0062b532    8bc8
                         {disp8} jbe      _jmp_addr_0x0062b53c                          // 0x0062b534    7606
                         {disp32} lea     ecx, dword ptr [eax + 0x0000a3c8]             // 0x0062b536    8d88c8a30000
_jmp_addr_0x0062b53c:    cmp              edx, 0x00000da5                               // 0x0062b53c    81faa50d0000
                         {disp8} mov      ecx, dword ptr [ecx + 0x08]                   // 0x0062b542    8b4908
                         {disp8} jbe      _jmp_addr_0x0062b54c                          // 0x0062b545    7605
                         add              eax, 0x0000a3bc                               // 0x0062b547    05bca30000
_jmp_addr_0x0062b54c:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b54c    8b4008
                         push             ecx                                           // 0x0062b54f    51
                         {disp32} lea     edx, dword ptr [ebp + 0x00000840]             // 0x0062b550    8d9540080000
                         push             edx                                           // 0x0062b556    52
                         push             eax                                           // 0x0062b557    50
                         push             ebx                                           // 0x0062b558    53
                         {disp32} lea     eax, dword ptr [esp + 0x00001838]             // 0x0062b559    8d842438180000
                         push             0x00bea6d8                                    // 0x0062b560    68d8a6be00
                         push             eax                                           // 0x0062b565    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0062b566    ff15d8938a00
                         add              esp, 0x18                                     // 0x0062b56c    83c418
                         {disp8} jmp      _jmp_addr_0x0062b5b2                          // 0x0062b56f    eb41
_jmp_addr_0x0062b571:    cmp              dword ptr [data_bytes + 0x351cac], 0x00000da6 // 0x0062b571    813dac7cd100a60d0000
                         {disp8} ja       _jmp_addr_0x0062b584                          // 0x0062b57b    7707
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b57d    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x0062b590                          // 0x0062b582    eb0c
_jmp_addr_0x0062b584:    {disp32} mov     ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0062b584    8b0da87cd100
                         {disp32} lea     eax, dword ptr [ecx + 0x0000a3c8]             // 0x0062b58a    8d81c8a30000
_jmp_addr_0x0062b590:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b590    8b4008
                         push             eax                                           // 0x0062b593    50
                         {disp32} lea     edx, dword ptr [ebp + 0x00000840]             // 0x0062b594    8d9540080000
                         push             edx                                           // 0x0062b59a    52
                         push             ebx                                           // 0x0062b59b    53
                         {disp32} lea     eax, dword ptr [esp + 0x0000082c]             // 0x0062b59c    8d84242c080000
                         push             0x00bea6c4                                    // 0x0062b5a3    68c4a6be00
                         push             eax                                           // 0x0062b5a8    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0062b5a9    ff15d8938a00
                         add              esp, 0x14                                     // 0x0062b5af    83c414
_jmp_addr_0x0062b5b2:    {disp8} mov      esi, dword ptr [edi + 0x1c]                   // 0x0062b5b2    8b771c
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0062b5b5    8b8e50020000
                         push             eax                                           // 0x0062b5bb    50
                         push             ecx                                           // 0x0062b5bc    51
                         mov.s            ecx, esi                                      // 0x0062b5bd    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0062b5bf    e8acf8ddff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0062b5c4    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0062b5ca    8d41ff
                         test             eax, eax                                      // 0x0062b5cd    85c0
                         {disp8} jl       _jmp_addr_0x0062b5e2                          // 0x0062b5cf    7c11
                         cmp.s            eax, ecx                                      // 0x0062b5d1    3bc1
                         {disp8} jge      _jmp_addr_0x0062b5e2                          // 0x0062b5d3    7d0d
                         {disp32} mov     edx, dword ptr [esi + 0x00000268]             // 0x0062b5d5    8b9668020000
                         mov              dword ptr [edx + eax * 0x4], 0x00000000       // 0x0062b5db    c7048200000000
_jmp_addr_0x0062b5e2:    {disp8} mov      al, byte ptr [esp + 0x13]                     // 0x0062b5e2    8a442413
                         test             al, al                                        // 0x0062b5e6    84c0
                         {disp32} jne     _jmp_addr_0x0062b6a4                          // 0x0062b5e8    0f85b6000000
                         {disp8} mov      eax, dword ptr [edi + 0x1c]                   // 0x0062b5ee    8b471c
                         {disp32} mov     ecx, dword ptr [eax + 0x00000250]             // 0x0062b5f1    8b8850020000
                         dec              ecx                                           // 0x0062b5f7    49
                         {disp32} mov     dword ptr [eax + 0x00000248], ecx             // 0x0062b5f8    898848020000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b5fe    8b0dbc09d400
                         mov              edx, dword ptr [ecx]                          // 0x0062b604    8b11
                         push             0x0                                           // 0x0062b606    6a00
                         {disp8} mov      byte ptr [esp + 0x17], 0x01                   // 0x0062b608    c644241701
                         call             dword ptr [edx + 8]                           // 0x0062b60d    ff5208
                         {disp32} jmp     _jmp_addr_0x0062b6a4                          // 0x0062b610    e98f000000
_jmp_addr_0x0062b615:    test             al, al                                        // 0x0062b615    84c0
                         {disp8} je       _jmp_addr_0x0062b656                          // 0x0062b617    743d
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00000da5 // 0x0062b619    813dac7cd100a50d0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0062b623    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x0062b62f                          // 0x0062b628    7605
                         add              eax, 0x0000a3bc                               // 0x0062b62a    05bca30000
_jmp_addr_0x0062b62f:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b62f    8b4008
                         {disp32} lea     ecx, dword ptr [ebp + 0x00000840]             // 0x0062b632    8d8d40080000
                         push             ecx                                           // 0x0062b638    51
                         push             eax                                           // 0x0062b639    50
                         {disp8} lea      edx, dword ptr [ebx + 0x01]                   // 0x0062b63a    8d5301
                         push             edx                                           // 0x0062b63d    52
                         {disp32} lea     eax, dword ptr [esp + 0x00001030]             // 0x0062b63e    8d842430100000
                         push             0x00bea6b0                                    // 0x0062b645    68b0a6be00
                         push             eax                                           // 0x0062b64a    50
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0062b64b    ff15d8938a00
                         add              esp, 0x14                                     // 0x0062b651    83c414
                         {disp8} jmp      _jmp_addr_0x0062b674                          // 0x0062b654    eb1e
_jmp_addr_0x0062b656:    {disp32} lea     ecx, dword ptr [ebp + 0x00000840]             // 0x0062b656    8d8d40080000
                         push             ecx                                           // 0x0062b65c    51
                         push             ebx                                           // 0x0062b65d    53
                         {disp32} lea     edx, dword ptr [esp + 0x00002034]             // 0x0062b65e    8d942434200000
                         push             0x00bea6a0                                    // 0x0062b665    68a0a6be00
                         push             edx                                           // 0x0062b66a    52
                         call             dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0062b66b    ff15d8938a00
                         add              esp, 0x10                                     // 0x0062b671    83c410
_jmp_addr_0x0062b674:    {disp8} mov      esi, dword ptr [edi + 0x1c]                   // 0x0062b674    8b771c
                         push             eax                                           // 0x0062b677    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x0062b678    8b8650020000
                         push             eax                                           // 0x0062b67e    50
                         mov.s            ecx, esi                                      // 0x0062b67f    8bce
                         call             @InsertString__9SetupListFiPw@16              // 0x0062b681    e8eaf7ddff
                         {disp32} mov     ecx, dword ptr [esi + 0x00000250]             // 0x0062b686    8b8e50020000
                         {disp8} lea      eax, dword ptr [ecx + -0x01]                  // 0x0062b68c    8d41ff
                         test             eax, eax                                      // 0x0062b68f    85c0
                         {disp8} jl       _jmp_addr_0x0062b6a4                          // 0x0062b691    7c11
                         cmp.s            eax, ecx                                      // 0x0062b693    3bc1
                         {disp8} jge      _jmp_addr_0x0062b6a4                          // 0x0062b695    7d0d
                         {disp32} mov     ecx, dword ptr [esi + 0x00000268]             // 0x0062b697    8b8e68020000
                         mov              dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0062b69d    c7048100000000
_jmp_addr_0x0062b6a4:    {disp32} mov     edx, dword ptr [data_bytes + 0x37a9c4]        // 0x0062b6a4    8b15c409d400
                         {disp32} mov     eax, dword ptr [edx + 0x00000250]             // 0x0062b6aa    8b8250020000
                         dec              eax                                           // 0x0062b6b0    48
                         {disp8} mov      ecx, dword ptr [edi + 0x1c]                   // 0x0062b6b1    8b4f1c
                         {disp8} js       _jmp_addr_0x0062b6c7                          // 0x0062b6b4    7811
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0062b6b6    3b8150020000
                         {disp8} jge      _jmp_addr_0x0062b6c7                          // 0x0062b6bc    7d09
                         {disp32} mov     ecx, dword ptr [ecx + 0x00000264]             // 0x0062b6be    8b8964020000
                         mov              dword ptr [ecx + eax * 0x4], ebp              // 0x0062b6c4    892c81
_jmp_addr_0x0062b6c7:    {disp8} mov      edx, dword ptr [esp + 0x14]                   // 0x0062b6c7    8b542414
                         mov              eax, dword ptr [edx]                          // 0x0062b6cb    8b02
                         inc              ebx                                           // 0x0062b6cd    43
                         test             eax, eax                                      // 0x0062b6ce    85c0
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x0062b6d0    89442414
                         {disp32} jne     _jmp_addr_0x0062b473                          // 0x0062b6d4    0f8599fdffff
_jmp_addr_0x0062b6da:    call             _jmp_addr_0x0062d6e0                          // 0x0062b6da    e801200000
                         test             eax, eax                                      // 0x0062b6df    85c0
                         pop              edi                                           // 0x0062b6e1    5f
                         pop              esi                                           // 0x0062b6e2    5e
                         pop              ebp                                           // 0x0062b6e3    5d
                         pop              ebx                                           // 0x0062b6e4    5b
                         {disp8} je       _jmp_addr_0x0062b6f7                          // 0x0062b6e5    7410
                         call             _jmp_addr_0x0062d6e0                          // 0x0062b6e7    e8f41f0000
                         push             eax                                           // 0x0062b6ec    50
                         mov              ecx, 0x00d40e20                               // 0x0062b6ed    b9200ed400
                         call             _jmp_addr_0x0062d860                          // 0x0062b6f2    e869210000
_jmp_addr_0x0062b6f7:    add              esp, 0x00002820                               // 0x0062b6f7    81c420280000
                         ret                                                            // 0x0062b6fd    c3
                         nop                                                            // 0x0062b6fe    90
                         nop                                                            // 0x0062b6ff    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x0062b700    8b442404
                         cmp              eax, 0x0d                                     // 0x0062b704    83f80d
                         {disp32} ja      _jmp_addr_0x0062b7fd                          // 0x0062b707    0f87f0000000
                         xor.s            ecx, ecx                                      // 0x0062b70d    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x0062b818]               // 0x0062b70f    8a8818b86200
                         jmp              dword ptr [ecx*4 + 0x62b800]                  // 0x0062b715    ff248d00b86200
                         push             esi                                           // 0x0062b71c    56
                         {disp32} mov     esi, dword ptr [data_bytes + 0x2078]          // 0x0062b71d    8b3578809c00
                         push             0x1                                           // 0x0062b723    6a01
                         push             0x1                                           // 0x0062b725    6a01
                         mov.s            eax, esi                                      // 0x0062b727    8bc6
                         cdq                                                            // 0x0062b729    99
                         sub.s            eax, edx                                      // 0x0062b72a    2bc2
                         push             0x00e0e0e0                                    // 0x0062b72c    68e0e0e000
                         push             0x00e0e0e0                                    // 0x0062b731    68e0e0e000
                         sar              eax, 1                                        // 0x0062b736    d1f8
                         {disp32} mov     dword ptr [data_bytes + 0x2078], eax          // 0x0062b738    a378809c00
                         {disp32} mov     eax, dword ptr [data_bytes + 0x37a9c0]        // 0x0062b73d    a1c009d400
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x0062b742    8b5014
                         {disp8} mov      ecx, dword ptr [eax + 0x10]                   // 0x0062b745    8b4810
                         push             0x00e0e0e0                                    // 0x0062b748    68e0e0e000
                         push             0x00e0e0e0                                    // 0x0062b74d    68e0e0e000
                         push             edx                                           // 0x0062b752    52
                         {disp8} mov      edx, dword ptr [eax + 0x0c]                   // 0x0062b753    8b500c
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x0062b756    8b4008
                         push             ecx                                           // 0x0062b759    51
                         push             edx                                           // 0x0062b75a    52
                         push             eax                                           // 0x0062b75b    50
                         call             ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z          // 0x0062b75c    e85f7bdeff
                         add              esp, 0x28                                     // 0x0062b761    83c428
                         {disp32} mov     dword ptr [data_bytes + 0x2078], esi          // 0x0062b764    893578809c00
                         pop              esi                                           // 0x0062b76a    5e
                         ret              0x0014                                        // 0x0062b76b    c21400
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x0062b76e    8b4c2410
                         {disp8} mov      edx, dword ptr [esp + 0x0c]                   // 0x0062b772    8b54240c
                         {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x0062b776    8b442408
                         push             ecx                                           // 0x0062b77a    51
                         push             edx                                           // 0x0062b77b    52
                         push             eax                                           // 0x0062b77c    50
                         call             _jmp_addr_0x0062b830                          // 0x0062b77d    e8ae000000
                         add              esp, 0x0c                                     // 0x0062b782    83c40c
                         ret              0x0014                                        // 0x0062b785    c21400
                         mov              ecx, 0x00d409a8                               // 0x0062b788    b9a809d400
                         call             _jmp_addr_0x0062b350                          // 0x0062b78d    e8befbffff
                         ret              0x0014                                        // 0x0062b792    c21400
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x0062b795    8b4c240c
                         test             ecx, ecx                                      // 0x0062b799    85c9
                         {disp8} je       _jmp_addr_0x0062b7fd                          // 0x0062b79b    7460
                         {disp32} mov     eax, dword ptr [ecx + 0x00000238]             // 0x0062b79d    8b8138020000
                         test             eax, eax                                      // 0x0062b7a3    85c0
                         {disp8} je       _jmp_addr_0x0062b7fd                          // 0x0062b7a5    7456
                         push             ecx                                           // 0x0062b7a7    51
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x0062b7a8    8b4c240c
                         push             ecx                                           // 0x0062b7ac    51
                         call             eax                                           // 0x0062b7ad    ffd0
                         add              esp, 0x08                                     // 0x0062b7af    83c408
                         ret              0x0014                                        // 0x0062b7b2    c21400
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9c4]        // 0x0062b7b5    8b0dc409d400
                         {disp32} mov     eax, dword ptr [ecx + 0x00000248]             // 0x0062b7bb    8b8148020000
                         test             eax, eax                                      // 0x0062b7c1    85c0
                         {disp8} jl       _jmp_addr_0x0062b7ea                          // 0x0062b7c3    7c25
                         cmp              eax, dword ptr [ecx + 0x00000250]             // 0x0062b7c5    3b8150020000
                         {disp8} jge      _jmp_addr_0x0062b7ea                          // 0x0062b7cb    7d1d
                         {disp32} mov     edx, dword ptr [ecx + 0x00000264]             // 0x0062b7cd    8b9164020000
                         mov              eax, dword ptr [edx + eax * 0x4]              // 0x0062b7d3    8b0482
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b7d6    8b0dbc09d400
                         mov              edx, dword ptr [ecx]                          // 0x0062b7dc    8b11
                         test             eax, eax                                      // 0x0062b7de    85c0
                         sete             al                                            // 0x0062b7e0    0f94c0
                         push             eax                                           // 0x0062b7e3    50
                         call             dword ptr [edx + 8]                           // 0x0062b7e4    ff5208
                         ret              0x0014                                        // 0x0062b7e7    c21400
_jmp_addr_0x0062b7ea:    {disp32} mov     ecx, dword ptr [data_bytes + 0x37a9bc]        // 0x0062b7ea    8b0dbc09d400
                         mov              edx, dword ptr [ecx]                          // 0x0062b7f0    8b11
                         xor.s            eax, eax                                      // 0x0062b7f2    33c0
                         test             eax, eax                                      // 0x0062b7f4    85c0
                         sete             al                                            // 0x0062b7f6    0f94c0
                         push             eax                                           // 0x0062b7f9    50
                         call             dword ptr [edx + 8]                           // 0x0062b7fa    ff5208
_jmp_addr_0x0062b7fd:    ret              0x0014                                        // 0x0062b7fd    c21400

// Snippet: jmptbl, [0x0062b800, 0x0062b818)
.byte 0xb5, 0xb7, 0x62, 0x00      // 0x0062b800
.byte 0x95, 0xb7, 0x62, 0x00      // 0x0062b804
.byte 0x6e, 0xb7, 0x62, 0x00      // 0x0062b808
.byte 0x88, 0xb7, 0x62, 0x00      // 0x0062b80c
.byte 0x1c, 0xb7, 0x62, 0x00      // 0x0062b810
.byte 0xfd, 0xb7, 0x62, 0x00      // 0x0062b814

// Snippet: ijmptbl, [0x0062b818, 0x0062b826)
.byte 0x00, 0x01, 0x05, 0x02      // 0x0062b818
.byte 0x05, 0x05, 0x03, 0x05      // 0x0062b81c
.byte 0x05, 0x05, 0x05, 0x05      // 0x0062b820
.byte 0x05, 0x04                  // 0x0062b824

// Snippet: db, [0x0062b826, 0x0062b830)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062b826
.byte 0x90, 0x90, 0x90, 0x90      // 0x0062b82a
.byte 0x90, 0x90                  // 0x0062b82e

