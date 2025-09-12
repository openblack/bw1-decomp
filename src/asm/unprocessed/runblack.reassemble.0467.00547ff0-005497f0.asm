.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00408100
.extern _jmp_addr_0x00408240
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__10SetupButtonFiiiiiPwi@36
.extern @__ct__9SetupListFiiiii@28
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern @__ct__9SetupEditFiiiiiPwi@33
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x005497f0
.extern _jmp_addr_0x00549900
.extern _jmp_addr_0x00549a90
.extern _jmp_addr_0x00712b10
.extern _jmp_addr_0x00712b20
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ?Exists@LHOSFile@@SAIPAD@Z
.extern _sprintf
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern _fopen
.extern _fclose
.extern _fread
.extern _fgets
.extern ___nw__FUl
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00839010
.extern _jmp_addr_0x00870920
.extern _jmp_addr_0x00870990
.extern __filelength
.extern __fileno

.globl _jmp_addr_0x00548990
.globl ?Init@SetupOnlineLandscapes@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@SetupOnlineLandscapes@@UAEXXZ
.globl ?InitControls@SetupOnlineLandscapes@@UAEXXZ

start_0x00547ff0_0x005497f0:
// Snippet: asm, [0x00547ff0, 0x00549789)
?Init@SetupOnlineLandscapes@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00547ff0    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00547ff4    8b542404
                         push               ebx                                           // 0x00547ff8    53
                         push               ebp                                           // 0x00547ff9    55
                         push               edi                                           // 0x00547ffa    57
                         mov.s              edi, ecx                                      // 0x00547ffb    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00547ffd    8b4c2414
                         push               eax                                           // 0x00548001    50
                         push               ecx                                           // 0x00548002    51
                         push               edx                                           // 0x00548003    52
                         mov.s              ecx, edi                                      // 0x00548004    8bcf
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00548006    e8f5b3fcff
                         push               0x000001cc                                    // 0x0054800b    68cc010000
                         push               0x00bea7c8                                    // 0x00548010    68c8a7be00
                         push               0x00000468                                    // 0x00548015    6868040000
                         {disp32} mov       dword ptr [data_bytes + 0x30b670], edi        // 0x0054801a    893d7016cd00
                         call               ___nw__FUl                                    // 0x00548020    e86b372900
                         xor.s              ebx, ebx                                      // 0x00548025    33db
                         add                esp, 0x0c                                     // 0x00548027    83c40c
                         cmp.s              eax, ebx                                      // 0x0054802a    3bc3
                         {disp8} je         _jmp_addr_0x00548053                          // 0x0054802c    7425
                         push               ebx                                           // 0x0054802e    53
                         push               0x00c4cd30                                    // 0x0054802f    6830cdc400
                         push               0x1e                                          // 0x00548034    6a1e
                         push               0x000001f4                                    // 0x00548036    68f4010000
                         push               0x0000020d                                    // 0x0054803b    680d020000
                         push               0x00000096                                    // 0x00548040    6896000000
                         push               0x000003e6                                    // 0x00548045    68e6030000
                         mov.s              ecx, eax                                      // 0x0054804a    8bc8
                         call               @__ct__9SetupEditFiiiiiPwi@33                 // 0x0054804c    e8cf41ecff
                         {disp8} jmp        _jmp_addr_0x00548055                          // 0x00548051    eb02
_jmp_addr_0x00548053:    xor.s              eax, eax                                      // 0x00548053    33c0
_jmp_addr_0x00548055:    push               0x000001d0                                    // 0x00548055    68d0010000
                         push               0x00bea7c8                                    // 0x0054805a    68c8a7be00
                         {disp32} mov       dword ptr [edi + 0x000000a0], eax             // 0x0054805f    8987a0000000
                         push               0x0000025c                                    // 0x00548065    685c020000
                         {disp8} mov        dword ptr [eax + 0x20], 0x00000010            // 0x0054806a    c7402010000000
                         call               ___nw__FUl                                    // 0x00548071    e81a372900
                         add                esp, 0x0c                                     // 0x00548076    83c40c
                         cmp.s              eax, ebx                                      // 0x00548079    3bc3
                         {disp8} je         _jmp_addr_0x005480b3                          // 0x0054807b    7436
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x0054807d    813dac7cd100240a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00548087    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00548095                          // 0x0054808d    7606
                         add                ecx, 0x000079b0                               // 0x0054808f    81c1b0790000
_jmp_addr_0x00548095:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00548095    8b4908
                         push               0x3                                           // 0x00548098    6a03
                         push               0x1                                           // 0x0054809a    6a01
                         push               0x28                                          // 0x0054809c    6a28
                         push               ecx                                           // 0x0054809e    51
                         push               0x00000208                                    // 0x0054809f    6808020000
                         push               0x000002d0                                    // 0x005480a4    68d0020000
                         push               ebx                                           // 0x005480a9    53
                         mov.s              ecx, eax                                      // 0x005480aa    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005480ac    e8af51ecff
                         {disp8} jmp        _jmp_addr_0x005480b5                          // 0x005480b1    eb02
_jmp_addr_0x005480b3:    xor.s              eax, eax                                      // 0x005480b3    33c0
_jmp_addr_0x005480b5:    push               esi                                           // 0x005480b5    56
                         push               0x000001d4                                    // 0x005480b6    68d4010000
                         push               0x00bea7c8                                    // 0x005480bb    68c8a7be00
                         push               0x00000244                                    // 0x005480c0    6844020000
                         {disp32} mov       dword ptr [edi + 0x000000a4], eax             // 0x005480c5    8987a4000000
                         call               ___nw__FUl                                    // 0x005480cb    e8c0362900
                         mov.s              esi, eax                                      // 0x005480d0    8bf0
                         add                esp, 0x0c                                     // 0x005480d2    83c40c
                         cmp.s              esi, ebx                                      // 0x005480d5    3bf3
                         {disp8} je         _jmp_addr_0x0054812a                          // 0x005480d7    7451
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012ca // 0x005480d9    813dac7cd100ca120000
                         {disp8} ja         _jmp_addr_0x005480ec                          // 0x005480e3    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005480e5    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005480f8                          // 0x005480ea    eb0c
_jmp_addr_0x005480ec:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005480ec    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e178]             // 0x005480f2    8d8278e10000
_jmp_addr_0x005480f8:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005480f8    8b4008
                         push               eax                                           // 0x005480fb    50
                         push               0x1e                                          // 0x005480fc    6a1e
                         push               0x000000c8                                    // 0x005480fe    68c8000000
                         push               0x3c                                          // 0x00548103    6a3c
                         push               0x50                                          // 0x00548105    6a50
                         push               0x3                                           // 0x00548107    6a03
                         mov.s              ecx, esi                                      // 0x00548109    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0054810b    e84011ecff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x00548110    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebx             // 0x00548116    899e3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x0054811c    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x00548122    899e40020000
                         {disp8} jmp        _jmp_addr_0x0054812c                          // 0x00548128    eb02
_jmp_addr_0x0054812a:    xor.s              esi, esi                                      // 0x0054812a    33f6
_jmp_addr_0x0054812c:    push               0x000001d6                                    // 0x0054812c    68d6010000
                         push               0x00bea7c8                                    // 0x00548131    68c8a7be00
                         {disp32} mov       dword ptr [edi + 0x000000ac], esi             // 0x00548136    89b7ac000000
                         mov                ebp, 0x00000014                               // 0x0054813c    bd14000000
                         push               0x000002b0                                    // 0x00548141    68b0020000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x00548146    896e20
                         call               ___nw__FUl                                    // 0x00548149    e842362900
                         add                esp, 0x0c                                     // 0x0054814e    83c40c
                         cmp.s              eax, ebx                                      // 0x00548151    3bc3
                         {disp8} je         _jmp_addr_0x0054816e                          // 0x00548153    7419
                         push               0x000001a4                                    // 0x00548155    68a4010000
                         push               0x000000fa                                    // 0x0054815a    68fa000000
                         push               0x5a                                          // 0x0054815f    6a5a
                         push               0x50                                          // 0x00548161    6a50
                         push               0x2                                           // 0x00548163    6a02
                         mov.s              ecx, eax                                      // 0x00548165    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x00548167    e8e422ecff
                         {disp8} jmp        _jmp_addr_0x00548170                          // 0x0054816c    eb02
_jmp_addr_0x0054816e:    xor.s              eax, eax                                      // 0x0054816e    33c0
_jmp_addr_0x00548170:    push               0x000001d8                                    // 0x00548170    68d8010000
                         push               0x00bea7c8                                    // 0x00548175    68c8a7be00
                         {disp32} mov       dword ptr [edi + 0x00000098], eax             // 0x0054817a    898798000000
                         push               0x00000244                                    // 0x00548180    6844020000
                         {disp8} mov        dword ptr [eax + 0x20], ebp                   // 0x00548185    896820
                         call               ___nw__FUl                                    // 0x00548188    e803362900
                         mov.s              esi, eax                                      // 0x0054818d    8bf0
                         add                esp, 0x0c                                     // 0x0054818f    83c40c
                         cmp.s              esi, ebx                                      // 0x00548192    3bf3
                         {disp8} je         _jmp_addr_0x005481cf                          // 0x00548194    7439
                         push               0x00c4cd30                                    // 0x00548196    6830cdc400
                         push               0x1e                                          // 0x0054819b    6a1e
                         push               0x00000190                                    // 0x0054819d    6890010000
                         push               0x0000015e                                    // 0x005481a2    685e010000
                         push               0x0000015e                                    // 0x005481a7    685e010000
                         push               0x6                                           // 0x005481ac    6a06
                         mov.s              ecx, esi                                      // 0x005481ae    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x005481b0    e89b10ecff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x005481b5    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], ebx             // 0x005481bb    899e3c020000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x005481c1    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x005481c7    899e40020000
                         {disp8} jmp        _jmp_addr_0x005481d1                          // 0x005481cd    eb02
_jmp_addr_0x005481cf:    xor.s              esi, esi                                      // 0x005481cf    33f6
_jmp_addr_0x005481d1:    push               0x000001da                                    // 0x005481d1    68da010000
                         push               0x00bea7c8                                    // 0x005481d6    68c8a7be00
                         {disp32} mov       dword ptr [edi + 0x000000b0], esi             // 0x005481db    89b7b0000000
                         push               0x000002b0                                    // 0x005481e1    68b0020000
                         {disp8} mov        dword ptr [esi + 0x20], ebp                   // 0x005481e6    896e20
                         call               ___nw__FUl                                    // 0x005481e9    e8a2352900
                         add                esp, 0x0c                                     // 0x005481ee    83c40c
                         cmp.s              eax, ebx                                      // 0x005481f1    3bc3
                         pop                esi                                           // 0x005481f3    5e
                         {disp8} je         _jmp_addr_0x00548212                          // 0x005481f4    741c
                         push               0x64                                          // 0x005481f6    6a64
                         push               0x00000190                                    // 0x005481f8    6890010000
                         push               0x00000177                                    // 0x005481fd    6877010000
                         push               0x0000015e                                    // 0x00548202    685e010000
                         push               0x5                                           // 0x00548207    6a05
                         mov.s              ecx, eax                                      // 0x00548209    8bc8
                         call               @__ct__9SetupListFiiiii@28                    // 0x0054820b    e84022ecff
                         {disp8} jmp        _jmp_addr_0x00548214                          // 0x00548210    eb02
_jmp_addr_0x00548212:    xor.s              eax, eax                                      // 0x00548212    33c0
_jmp_addr_0x00548214:    {disp32} mov       dword ptr [edi + 0x0000009c], eax             // 0x00548214    89879c000000
                         {disp8} mov        dword ptr [eax + 0x20], ebp                   // 0x0054821a    896820
                         {disp32} mov       ecx, dword ptr [edi + 0x0000009c]             // 0x0054821d    8b8f9c000000
                         mov                edx, dword ptr [ecx]                          // 0x00548223    8b11
                         push               0x1                                           // 0x00548225    6a01
                         call               dword ptr [edx + 8]                           // 0x00548227    ff5208
                         push               0x000001de                                    // 0x0054822a    68de010000
                         push               0x00bea7c8                                    // 0x0054822f    68c8a7be00
                         push               0x00000244                                    // 0x00548234    6844020000
                         call               ___nw__FUl                                    // 0x00548239    e852352900
                         add                esp, 0x0c                                     // 0x0054823e    83c40c
                         cmp.s              eax, ebx                                      // 0x00548241    3bc3
                         {disp8} je         _jmp_addr_0x0054827e                          // 0x00548243    7439
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012cc // 0x00548245    813dac7cd100cc120000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054824f    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x0054825d                          // 0x00548255    7606
                         add                ecx, 0x0000e190                               // 0x00548257    81c190e10000
_jmp_addr_0x0054825d:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054825d    8b4908
                         push               ebx                                           // 0x00548260    53
                         push               ecx                                           // 0x00548261    51
                         push               0x1e                                          // 0x00548262    6a1e
                         push               0x000000c8                                    // 0x00548264    68c8000000
                         push               0x000001e0                                    // 0x00548269    68e0010000
                         push               0x0000015e                                    // 0x0054826e    685e010000
                         push               0x4                                           // 0x00548273    6a04
                         mov.s              ecx, eax                                      // 0x00548275    8bc8
                         call               @__ct__10SetupButtonFiiiiiPwi@36              // 0x00548277    e83416ecff
                         {disp8} jmp        _jmp_addr_0x00548280                          // 0x0054827c    eb02
_jmp_addr_0x0054827e:    xor.s              eax, eax                                      // 0x0054827e    33c0
_jmp_addr_0x00548280:    {disp32} mov       dword ptr [edi + 0x000000a8], eax             // 0x00548280    8987a8000000
                         mov                edx, dword ptr [eax]                          // 0x00548286    8b10
                         push               0x1                                           // 0x00548288    6a01
                         mov.s              ecx, eax                                      // 0x0054828a    8bc8
                         call               dword ptr [edx + 8]                           // 0x0054828c    ff5208
                         {disp32} mov       eax, dword ptr [edi + 0x000000a8]             // 0x0054828f    8b87a8000000
                         pop                edi                                           // 0x00548295    5f
                         {disp8} mov        dword ptr [eax + 0x20], ebp                   // 0x00548296    896820
                         pop                ebp                                           // 0x00548299    5d
                         pop                ebx                                           // 0x0054829a    5b
                         ret                0x000c                                        // 0x0054829b    c20c00
                         nop                                                              // 0x0054829e    90
                         nop                                                              // 0x0054829f    90
?Destroy@SetupOnlineLandscapes@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x005482a0    e8ebb2fcff
                         {disp32} mov       dword ptr [data_bytes + 0x30b670], 0x00000000 // 0x005482a5    c7057016cd0000000000
                         ret                                                              // 0x005482af    c3
?InitControls@SetupOnlineLandscapes@@UAEXXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005482b0    a17016cd00
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005482b5    8b5004
                         xor.s              eax, eax                                      // 0x005482b8    33c0
                         {disp32} mov       dword ptr [edx + 0x000000ac], 0x00000010      // 0x005482ba    c782ac00000010000000
                         {disp32} mov       dword ptr [ecx + 0x00000080], eax             // 0x005482c4    898180000000
                         {disp32} mov       dword ptr [ecx + 0x00000084], eax             // 0x005482ca    898184000000
                         ret                                                              // 0x005482d0    c3
                         nop                                                              // 0x005482d1    90
                         nop                                                              // 0x005482d2    90
                         nop                                                              // 0x005482d3    90
                         nop                                                              // 0x005482d4    90
                         nop                                                              // 0x005482d5    90
                         nop                                                              // 0x005482d6    90
                         nop                                                              // 0x005482d7    90
                         nop                                                              // 0x005482d8    90
                         nop                                                              // 0x005482d9    90
                         nop                                                              // 0x005482da    90
                         nop                                                              // 0x005482db    90
                         nop                                                              // 0x005482dc    90
                         nop                                                              // 0x005482dd    90
                         nop                                                              // 0x005482de    90
                         nop                                                              // 0x005482df    90
_jmp_addr_0x005482e0:    sub                esp, 0x44                                     // 0x005482e0    83ec44
                         push               ebx                                           // 0x005482e3    53
                         push               ebp                                           // 0x005482e4    55
                         push               esi                                           // 0x005482e5    56
                         mov.s              ebx, ecx                                      // 0x005482e6    8bd9
                         push               edi                                           // 0x005482e8    57
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x005482e9    895c2414
                         call               _jmp_addr_0x00548920                          // 0x005482ed    e82e060000
                         xor.s              eax, eax                                      // 0x005482f2    33c0
                         mov                ecx, 0x00000006                               // 0x005482f4    b906000000
                         {disp8} lea        edi, dword ptr [esp + 0x38]                   // 0x005482f9    8d7c2438
                         rep stosd                                                        // 0x005482fd    f3ab
                         xor.s              esi, esi                                      // 0x005482ff    33f6
                         stosb                                                            // 0x00548301    aa
                         {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00548302    8b442458
                         push               0x009ce5d8                                    // 0x00548306    68d8e59c00
                         push               eax                                           // 0x0054830b    50
                         {disp8} mov        dword ptr [esp + 0x34], esi                   // 0x0054830c    89742434
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x00548310    89742430
                         {disp8} mov        dword ptr [esp + 0x3c], esi                   // 0x00548314    8974243c
                         {disp8} mov        dword ptr [esp + 0x38], esi                   // 0x00548318    89742438
                         {disp8} mov        byte ptr [esp + 0x28], 0x00                   // 0x0054831c    c644242800
                         {disp8} mov        byte ptr [esp + 0x29], 0x00                   // 0x00548321    c644242900
                         {disp8} mov        byte ptr [esp + 0x2a], 0x00                   // 0x00548326    c644242a00
                         {disp8} mov        byte ptr [esp + 0x2b], 0x00                   // 0x0054832b    c644242b00
                         {disp8} mov        byte ptr [esp + 0x2c], 0x00                   // 0x00548330    c644242c00
                         {disp8} mov        byte ptr [esp + 0x2d], 0x00                   // 0x00548335    c644242d00
                         {disp8} mov        byte ptr [esp + 0x2e], 0x00                   // 0x0054833a    c644242e00
                         {disp8} mov        byte ptr [esp + 0x2f], 0x00                   // 0x0054833f    c644242f00
                         call               _fopen                                        // 0x00548344    e8d4ea2700
                         mov.s              edi, eax                                      // 0x00548349    8bf8
                         add                esp, 0x08                                     // 0x0054834b    83c408
                         cmp.s              edi, esi                                      // 0x0054834e    3bfe
                         {disp8} jne        _jmp_addr_0x0054835e                          // 0x00548350    750c
                         pop                edi                                           // 0x00548352    5f
                         pop                esi                                           // 0x00548353    5e
                         pop                ebp                                           // 0x00548354    5d
                         xor.s              al, al                                        // 0x00548355    32c0
                         pop                ebx                                           // 0x00548357    5b
                         add                esp, 0x44                                     // 0x00548358    83c444
                         ret                0x000c                                        // 0x0054835b    c20c00
_jmp_addr_0x0054835e:    push               edi                                           // 0x0054835e    57
                         call               __fileno                                      // 0x0054835f    e83fd93500
                         push               eax                                           // 0x00548364    50
                         call               __filelength                                  // 0x00548365    e8afd83500
                         push               edi                                           // 0x0054836a    57
                         push               0x18                                          // 0x0054836b    6a18
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x0054836d    8d4c2448
                         push               0x1                                           // 0x00548371    6a01
                         push               ecx                                           // 0x00548373    51
                         {disp8} mov        dword ptr [esp + 0x70], eax                   // 0x00548374    89442470
                         call               _fread                                        // 0x00548378    e80ef12700
                         add                esp, 0x18                                     // 0x0054837d    83c418
                         mov                ebp, 0x008dece4                               // 0x00548380    bde4ec8d00
                         {disp8} lea        esi, dword ptr [esp + 0x38]                   // 0x00548385    8d742438
_jmp_addr_0x00548389:    mov                dl, byte ptr [esi]                            // 0x00548389    8a16
                         {disp8} mov        cl, byte ptr [ebp + 0x00]                     // 0x0054838b    8a4d00
                         mov.s              al, dl                                        // 0x0054838e    8ac2
                         cmp.s              dl, cl                                        // 0x00548390    3ad1
                         {disp8} jne        _jmp_addr_0x005483b2                          // 0x00548392    751e
                         test               al, al                                        // 0x00548394    84c0
                         {disp8} je         _jmp_addr_0x005483ae                          // 0x00548396    7416
                         {disp8} mov        cl, byte ptr [esi + 0x01]                     // 0x00548398    8a4e01
                         {disp8} mov        dl, byte ptr [ebp + 0x01]                     // 0x0054839b    8a5501
                         mov.s              al, cl                                        // 0x0054839e    8ac1
                         cmp.s              cl, dl                                        // 0x005483a0    3aca
                         {disp8} jne        _jmp_addr_0x005483b2                          // 0x005483a2    750e
                         add                esi, 0x02                                     // 0x005483a4    83c602
                         add                ebp, 0x02                                     // 0x005483a7    83c502
                         test               al, al                                        // 0x005483aa    84c0
                         {disp8} jne        _jmp_addr_0x00548389                          // 0x005483ac    75db
_jmp_addr_0x005483ae:    xor.s              eax, eax                                      // 0x005483ae    33c0
                         {disp8} jmp        _jmp_addr_0x005483b7                          // 0x005483b0    eb05
_jmp_addr_0x005483b2:    sbb.s              eax, eax                                      // 0x005483b2    1bc0
                         sbb                eax, -0x01                                    // 0x005483b4    83d8ff
_jmp_addr_0x005483b7:    test               eax, eax                                      // 0x005483b7    85c0
                         {disp8} je         _jmp_addr_0x00548400                          // 0x005483b9    7445
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012d7 // 0x005483bb    813dac7cd100d7120000
                         {disp8} ja         _jmp_addr_0x005483ce                          // 0x005483c5    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005483c7    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005483da                          // 0x005483cc    eb0c
_jmp_addr_0x005483ce:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005483ce    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e214]             // 0x005483d4    8d8214e20000
_jmp_addr_0x005483da:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005483da    8b4008
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x005483dd    8b4c245c
                         push               0x0                                           // 0x005483e1    6a00
                         push               0x0                                           // 0x005483e3    6a00
                         push               eax                                           // 0x005483e5    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005483e6    e8a58decff
                         push               edi                                           // 0x005483eb    57
                         call               _fclose                                       // 0x005483ec    e83fea2700
                         add                esp, 0x04                                     // 0x005483f1    83c404
                         pop                edi                                           // 0x005483f4    5f
                         pop                esi                                           // 0x005483f5    5e
                         pop                ebp                                           // 0x005483f6    5d
                         xor.s              al, al                                        // 0x005483f7    32c0
                         pop                ebx                                           // 0x005483f9    5b
                         add                esp, 0x44                                     // 0x005483fa    83c444
                         ret                0x000c                                        // 0x005483fd    c20c00
_jmp_addr_0x00548400:    {disp8} mov        ebp, dword ptr [esp + 0x58]                   // 0x00548400    8b6c2458
                         push               0x0000023e                                    // 0x00548404    683e020000
                         {disp8} lea        ecx, dword ptr [ebp + 0x01]                   // 0x00548409    8d4d01
                         push               0x00bea7c8                                    // 0x0054840c    68c8a7be00
                         push               ecx                                           // 0x00548411    51
                         call               ___nw__FUl                                    // 0x00548412    e879332900
                         push               edi                                           // 0x00548417    57
                         add                ebp, -0x18                                    // 0x00548418    83c5e8
                         push               ebp                                           // 0x0054841b    55
                         mov.s              esi, eax                                      // 0x0054841c    8bf0
                         push               0x1                                           // 0x0054841e    6a01
                         push               esi                                           // 0x00548420    56
                         call               _fread                                        // 0x00548421    e865f02700
                         push               edi                                           // 0x00548426    57
                         call               _fclose                                       // 0x00548427    e804ea2700
                         {disp8} lea        edx, dword ptr [esp + 0x50]                   // 0x0054842c    8d542450
                         push               edx                                           // 0x00548430    52
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                   // 0x00548431    8d44244c
                         push               eax                                           // 0x00548435    50
                         push               esi                                           // 0x00548436    56
                         call               _jmp_addr_0x00712b20                          // 0x00548437    e8e4a61c00
                         mov.s              edi, eax                                      // 0x0054843c    8bf8
                         mov                ecx, dword ptr [edi]                          // 0x0054843e    8b0f
                         {disp8} mov        ecx, dword ptr [ecx + edi * 0x1 + 0x05]       // 0x00548440    8b4c3905
                         mov                eax, 0x55555556                               // 0x00548444    b856555555
                         imul               ecx                                           // 0x00548449    f7e9
                         mov.s              eax, edx                                      // 0x0054844b    8bc2
                         shr                eax, 0x1f                                     // 0x0054844d    c1e81f
                         add.s              edx, eax                                      // 0x00548450    03d0
                         {disp32} mov       dword ptr [esp + 0x00000084], edx             // 0x00548452    89942484000000
                         {disp8} mov        dword ptr [esp + 0x44], edi                   // 0x00548459    897c2444
                         {disp32} fild      dword ptr [esp + 0x00000084]                  // 0x0054845d    db842484000000
                         fsqrt                                                            // 0x00548464    d9fa
                         call               _jmp_addr_0x007a1400                          // 0x00548466    e8958f2500
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x0054846b    8d54243c
                         push               edx                                           // 0x0054846f    52
                         mov.s              ebp, eax                                      // 0x00548470    8be8
                         push               -0x1                                          // 0x00548472    6aff
                         {disp32} mov       dword ptr [ebx + 0x000004c4], ebp             // 0x00548474    89abc4040000
                         mov                ecx, dword ptr [edi]                          // 0x0054847a    8b0f
                         push               0x44                                          // 0x0054847c    6a44
                         {disp8} mov        dword ptr [esp + 0x54], esi                   // 0x0054847e    89742454
                         push               0x0                                           // 0x00548482    6a00
                         {disp32} mov       dword ptr [esp + 0x00000094], ebp             // 0x00548484    89ac2494000000
                         {disp8} lea        esi, dword ptr [ecx + edi * 0x1 + 0x09]       // 0x0054848b    8d743909
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000000            // 0x0054848f    c744244c00000000
                         call               _jmp_addr_0x008379e0                          // 0x00548497    e844f52e00
                         push               eax                                           // 0x0054849c    50
                         push               0x5                                           // 0x0054849d    6a05
                         {disp32} mov       dword ptr [ebx + 0x00000080], eax             // 0x0054849f    898380000000
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x005484a5    e886782e00
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000080]             // 0x005484aa    8b8b80000000
                         add                esp, 0x44                                     // 0x005484b0    83c444
                         push               0x1                                           // 0x005484b3    6a01
                         {disp32} mov       dword ptr [ebx + 0x00000084], eax             // 0x005484b5    898384000000
                         call               _jmp_addr_0x00839010                          // 0x005484bb    e8500b2f00
                         mov.s              ecx, eax                                      // 0x005484c0    8bc8
                         call               _jmp_addr_0x00870920                          // 0x005484c2    e859843200
                         mov.s              ebx, eax                                      // 0x005484c7    8bd8
                         xor.s              eax, eax                                      // 0x005484c9    33c0
                         test               ebp, ebp                                      // 0x005484cb    85ed
                         mov                ecx, 0x00008000                               // 0x005484cd    b900800000
                         mov.s              edi, ebx                                      // 0x005484d2    8bfb
                         rep stosd                                                        // 0x005484d4    f3ab
                         {disp8} jle        _jmp_addr_0x00548552                          // 0x005484d6    7e7a
                         xor.s              edi, edi                                      // 0x005484d8    33ff
                         {disp8} mov        dword ptr [esp + 0x5c], ebp                   // 0x005484da    896c245c
_jmp_addr_0x005484de:    xor.s              ecx, ecx                                      // 0x005484de    33c9
_jmp_addr_0x005484e0:    mov                dl, byte ptr [eax + esi * 0x1]                // 0x005484e0    8a1430
                         test               dl, dl                                        // 0x005484e3    84d2
                         {disp8} jne        _jmp_addr_0x005484fe                          // 0x005484e5    7517
                         cmp                byte ptr [eax + esi * 0x1 + 0x01], dl         // 0x005484e7    38543001
                         {disp8} jne        _jmp_addr_0x005484fe                          // 0x005484eb    7511
                         cmp                byte ptr [eax + esi * 0x1 + 0x02], dl         // 0x005484ed    38543002
                         {disp8} jne        _jmp_addr_0x005484fe                          // 0x005484f1    750b
                         lea                edx, dword ptr [edi + ecx * 0x1]              // 0x005484f3    8d140f
                         mov                word ptr [ebx + edx * 0x2], 0x0000            // 0x005484f6    66c704530000
                         {disp8} jmp        _jmp_addr_0x00548539                          // 0x005484fc    eb3b
_jmp_addr_0x005484fe:    movsx              bp, dl                                        // 0x005484fe    660fbeea
                         xor.s              edx, edx                                      // 0x00548502    33d2
                         {disp8} mov        dl, byte ptr [eax + esi * 0x1 + 0x02]         // 0x00548504    8a543002
                         sar                dl, 4                                         // 0x00548508    c0fa04
                         movsx              dx, dl                                        // 0x0054850b    660fbed2
                         and                ebp, 0x00000ff0                               // 0x0054850f    81e5f00f0000
                         add                ebp, 0x00000f00                               // 0x00548515    81c5000f0000
                         shl                ebp, 4                                        // 0x0054851b    c1e504
                         add.s              ebp, edx                                      // 0x0054851e    03ea
                         movsx              dx, byte ptr [eax + esi * 0x1 + 0x01]         // 0x00548520    660fbe543001
                         and                edx, 0x0000fff0                               // 0x00548526    81e2f0ff0000
                         add.s              ebp, edx                                      // 0x0054852c    03ea
                         lea                edx, dword ptr [edi + ecx * 0x1]              // 0x0054852e    8d140f
                         mov                word ptr [ebx + edx * 0x2], bp                // 0x00548531    66892c53
                         {disp8} mov        ebp, dword ptr [esp + 0x58]                   // 0x00548535    8b6c2458
_jmp_addr_0x00548539:    add                eax, 0x03                                     // 0x00548539    83c003
                         inc                ecx                                           // 0x0054853c    41
                         cmp.s              ecx, ebp                                      // 0x0054853d    3bcd
                         {disp8} jl         _jmp_addr_0x005484e0                          // 0x0054853f    7c9f
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                   // 0x00548541    8b4c245c
                         add                edi, 0x00000100                               // 0x00548545    81c700010000
                         dec                ecx                                           // 0x0054854b    49
                         {disp8} mov        dword ptr [esp + 0x5c], ecx                   // 0x0054854c    894c245c
                         {disp8} jne        _jmp_addr_0x005484de                          // 0x00548550    758c
_jmp_addr_0x00548552:    {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x00548552    8b442458
                         xor.s              edi, edi                                      // 0x00548556    33ff
                         xor.s              ebp, ebp                                      // 0x00548558    33ed
                         test               eax, eax                                      // 0x0054855a    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], edi                   // 0x0054855c    897c245c
                         {disp32} jle       _jmp_addr_0x00548645                          // 0x00548560    0f8edf000000
_jmp_addr_0x00548566:    xor.s              esi, esi                                      // 0x00548566    33f6
_jmp_addr_0x00548568:    push               ebp                                           // 0x00548568    55
                         {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x00548569    8d442434
                         push               esi                                           // 0x0054856d    56
                         push               eax                                           // 0x0054856e    50
                         call               _jmp_addr_0x00548860                          // 0x0054856f    e8ec020000
                         add                esp, 0x0c                                     // 0x00548574    83c40c
                         test               eax, eax                                      // 0x00548577    85c0
                         {disp8} je         _jmp_addr_0x005485cb                          // 0x00548579    7450
                         {disp8} mov        al, byte ptr [eax + 0x08]                     // 0x0054857b    8a4008
                         cmp                al, -0x01                                     // 0x0054857e    3cff
                         mov                edi, 0x00000007                               // 0x00548580    bf07000000
                         {disp8} je         _jmp_addr_0x0054858a                          // 0x00548585    7403
                         movsx              edi, al                                       // 0x00548587    0fbef8
_jmp_addr_0x0054858a:    {disp32} mov       eax, dword ptr [edi * 0x4 + 0x00bff0b8]       // 0x0054858a    8b04bdb8f0bf00
                         mov.s              ecx, eax                                      // 0x00548591    8bc8
                         shr                ecx, 0x14                                     // 0x00548593    c1e914
                         mov.s              edx, eax                                      // 0x00548596    8bd0
                         shr                edx, 0x1c                                     // 0x00548598    c1ea1c
                         and                cl, 0x0f                                      // 0x0054859b    80e10f
                         shl                dl, 4                                         // 0x0054859e    c0e204
                         or.s               cl, dl                                        // 0x005485a1    0aca
                         xor.s              edx, edx                                      // 0x005485a3    33d2
                         mov.s              dh, cl                                        // 0x005485a5    8af1
                         mov.s              ecx, eax                                      // 0x005485a7    8bc8
                         shr                ecx, 0xc                                      // 0x005485a9    c1e90c
                         and                ecx, 0x0f                                     // 0x005485ac    83e10f
                         and                eax, 0x000000f0                               // 0x005485af    25f0000000
                         or.s               edx, ecx                                      // 0x005485b4    0bd1
                         or.s               edx, eax                                      // 0x005485b6    0bd0
                         push               edx                                           // 0x005485b8    52
                         push               0x1                                           // 0x005485b9    6a01
                         push               ebp                                           // 0x005485bb    55
                         push               esi                                           // 0x005485bc    56
                         push               ebx                                           // 0x005485bd    53
                         call               _jmp_addr_0x00548890                          // 0x005485be    e8cd020000
                         add                esp, 0x14                                     // 0x005485c3    83c414
                         {disp8} mov        byte ptr [esp + edi * 0x1 + 0x20], 0x01       // 0x005485c6    c6443c2001
_jmp_addr_0x005485cb:    push               ebp                                           // 0x005485cb    55
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x005485cc    8d54242c
                         push               esi                                           // 0x005485d0    56
                         push               edx                                           // 0x005485d1    52
                         call               _jmp_addr_0x00548860                          // 0x005485d2    e889020000
                         add                esp, 0x0c                                     // 0x005485d7    83c40c
                         test               eax, eax                                      // 0x005485da    85c0
                         {disp8} je         _jmp_addr_0x0054862b                          // 0x005485dc    744d
                         {disp8} mov        al, byte ptr [eax + 0x08]                     // 0x005485de    8a4008
                         cmp                al, -0x01                                     // 0x005485e1    3cff
                         {disp8} jne        _jmp_addr_0x005485ec                          // 0x005485e3    7507
                         mov                eax, 0x00000007                               // 0x005485e5    b807000000
                         {disp8} jmp        _jmp_addr_0x005485ef                          // 0x005485ea    eb03
_jmp_addr_0x005485ec:    movsx              eax, al                                       // 0x005485ec    0fbec0
_jmp_addr_0x005485ef:    {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00bff0b8]       // 0x005485ef    8b0485b8f0bf00
                         mov.s              ecx, eax                                      // 0x005485f6    8bc8
                         shr                ecx, 0x14                                     // 0x005485f8    c1e914
                         mov.s              edx, eax                                      // 0x005485fb    8bd0
                         shr                edx, 0x1c                                     // 0x005485fd    c1ea1c
                         and                cl, 0x0f                                      // 0x00548600    80e10f
                         shl                dl, 4                                         // 0x00548603    c0e204
                         or.s               cl, dl                                        // 0x00548606    0aca
                         xor.s              edx, edx                                      // 0x00548608    33d2
                         mov.s              dh, cl                                        // 0x0054860a    8af1
                         mov.s              ecx, eax                                      // 0x0054860c    8bc8
                         shr                ecx, 0xc                                      // 0x0054860e    c1e90c
                         and                ecx, 0x0f                                     // 0x00548611    83e10f
                         and                eax, 0x000000f0                               // 0x00548614    25f0000000
                         or.s               edx, ecx                                      // 0x00548619    0bd1
                         or.s               edx, eax                                      // 0x0054861b    0bd0
                         push               edx                                           // 0x0054861d    52
                         push               0x2                                           // 0x0054861e    6a02
                         push               ebp                                           // 0x00548620    55
                         push               esi                                           // 0x00548621    56
                         push               ebx                                           // 0x00548622    53
                         call               _jmp_addr_0x00548890                          // 0x00548623    e868020000
                         add                esp, 0x14                                     // 0x00548628    83c414
_jmp_addr_0x0054862b:    {disp8} mov        eax, dword ptr [esp + 0x58]                   // 0x0054862b    8b442458
                         inc                esi                                           // 0x0054862f    46
                         cmp.s              esi, eax                                      // 0x00548630    3bf0
                         {disp32} jl        _jmp_addr_0x00548568                          // 0x00548632    0f8c30ffffff
                         inc                ebp                                           // 0x00548638    45
                         cmp.s              ebp, eax                                      // 0x00548639    3be8
                         {disp32} jl        _jmp_addr_0x00548566                          // 0x0054863b    0f8c25ffffff
                         {disp8} mov        edi, dword ptr [esp + 0x5c]                   // 0x00548641    8b7c245c
_jmp_addr_0x00548645:    xor.s              eax, eax                                      // 0x00548645    33c0
_jmp_addr_0x00548647:    {disp8} mov        cl, byte ptr [esp + eax * 0x1 + 0x20]         // 0x00548647    8a4c0420
                         test               cl, cl                                        // 0x0054864b    84c9
                         {disp8} je         _jmp_addr_0x00548650                          // 0x0054864d    7401
                         inc                edi                                           // 0x0054864f    47
_jmp_addr_0x00548650:    inc                eax                                           // 0x00548650    40
                         cmp                eax, 0x08                                     // 0x00548651    83f808
                         {disp8} jl         _jmp_addr_0x00548647                          // 0x00548654    7cf1
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00548656    8b5c2414
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000080]             // 0x0054865a    8b8b80000000
                         call               _jmp_addr_0x00839010                          // 0x00548660    e8ab092f00
                         mov.s              ecx, eax                                      // 0x00548665    8bc8
                         call               _jmp_addr_0x00870990                          // 0x00548667    e824833200
                         {disp32} mov       ecx, dword ptr [ebx + 0x00000080]             // 0x0054866c    8b8b80000000
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x00548672    8b4110
                         and                eax, 0x3f                                     // 0x00548675    83e03f
                         cmp                eax, 0x08                                     // 0x00548678    83f808
                         {disp8} je         _jmp_addr_0x00548682                          // 0x0054867b    7405
                         cmp                eax, 0x04                                     // 0x0054867d    83f804
                         {disp8} jne        _jmp_addr_0x0054868c                          // 0x00548680    750a
_jmp_addr_0x00548682:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00548682    c7813801000001000000
_jmp_addr_0x0054868c:    {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x0054868c    8b157016cd00
                         {disp32} mov       esi, dword ptr [edx + 0x0000009c]             // 0x00548692    8bb29c000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00548698    8b8650020000
                         test               eax, eax                                      // 0x0054869e    85c0
                         {disp8} jle        _jmp_addr_0x005486b5                          // 0x005486a0    7e13
_jmp_addr_0x005486a2:    dec                eax                                           // 0x005486a2    48
                         push               eax                                           // 0x005486a3    50
                         mov.s              ecx, esi                                      // 0x005486a4    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005486a6    e8b526ecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005486ab    8b8650020000
                         test               eax, eax                                      // 0x005486b1    85c0
                         {disp8} jg         _jmp_addr_0x005486a2                          // 0x005486b3    7fed
_jmp_addr_0x005486b5:    {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005486b5    a17016cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x0000009c]             // 0x005486ba    8b889c000000
                         mov                edx, dword ptr [ecx]                          // 0x005486c0    8b11
                         push               0x0                                           // 0x005486c2    6a00
                         call               dword ptr [edx + 8]                           // 0x005486c4    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005486c7    a17016cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]             // 0x005486cc    8b88b0000000
                         mov                edx, dword ptr [ecx]                          // 0x005486d2    8b11
                         push               0x0                                           // 0x005486d4    6a00
                         call               dword ptr [edx + 8]                           // 0x005486d6    ff5208
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012d8 // 0x005486d9    813dac7cd100d8120000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005486e3    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005486ef                          // 0x005486e8    7605
                         add                eax, 0x0000e220                               // 0x005486ea    0520e20000
_jmp_addr_0x005486ef:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b66c]        // 0x005486ef    8b0d6c16cd00
                         {disp8} mov        esi, dword ptr [eax + 0x08]                   // 0x005486f5    8b7008
                         push               edi                                           // 0x005486f8    57
                         push               ecx                                           // 0x005486f9    51
                         call               _CHAR2WCHAR__FPc                              // 0x005486fa    e8a1792e00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x005486ff    8b157016cd00
                         add                esp, 0x04                                     // 0x00548705    83c404
                         push               eax                                           // 0x00548708    50
                         {disp32} mov       eax, dword ptr [edx + 0x000000b0]             // 0x00548709    8b82b0000000
                         add                eax, 0x24                                     // 0x0054870f    83c024
                         push               esi                                           // 0x00548712    56
                         push               eax                                           // 0x00548713    50
                         call               _swprintf                                     // 0x00548714    e866dd2700
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x00548719    8b7c2428
                         {disp8} lea        ecx, dword ptr [edi + 0x04]                   // 0x0054871d    8d4f04
                         push               ecx                                           // 0x00548720    51
                         call               _CHAR2WCHAR__FPc                              // 0x00548721    e87a792e00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548726    8b157016cd00
                         {disp32} mov       esi, dword ptr [edx + 0x0000009c]             // 0x0054872c    8bb29c000000
                         add                esp, 0x14                                     // 0x00548732    83c414
                         push               eax                                           // 0x00548735    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00548736    8b8650020000
                         push               eax                                           // 0x0054873c    50
                         mov.s              ecx, esi                                      // 0x0054873d    8bce
                         call               @InsertString__9SetupListFiPw@16              // 0x0054873f    e82c27ecff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]             // 0x00548744    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0054874a    8d41ff
                         test               eax, eax                                      // 0x0054874d    85c0
                         {disp8} jl         _jmp_addr_0x00548762                          // 0x0054874f    7c11
                         cmp.s              eax, ecx                                      // 0x00548751    3bc1
                         {disp8} jge        _jmp_addr_0x00548762                          // 0x00548753    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]             // 0x00548755    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000       // 0x0054875b    c7048100000000
_jmp_addr_0x00548762:    {disp32} mov       eax, dword ptr [ebx + 0x00000090]             // 0x00548762    8b8390000000
                         test               eax, eax                                      // 0x00548768    85c0
                         {disp8} jne        _jmp_addr_0x0054877f                          // 0x0054876a    7513
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x0054876c    8b157016cd00
                         {disp32} mov       ecx, dword ptr [edx + 0x000000a8]             // 0x00548772    8b8aa8000000
                         mov                eax, dword ptr [ecx]                          // 0x00548778    8b01
                         push               0x0                                           // 0x0054877a    6a00
                         call               dword ptr [eax + 8]                           // 0x0054877c    ff5008
_jmp_addr_0x0054877f:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0054877f    8b4c241c
                         push               ecx                                           // 0x00548783    51
                         call               ??3@YAXPAX@Z                                  // 0x00548784    e80f672600
                         add                esp, 0x04                                     // 0x00548789    83c404
                         test               edi, edi                                      // 0x0054878c    85ff
                         {disp8} je         _jmp_addr_0x005487a0                          // 0x0054878e    7410
                         mov.s              ecx, edi                                      // 0x00548790    8bcf
                         call               _jmp_addr_0x00712b10                          // 0x00548792    e879a31c00
                         push               edi                                           // 0x00548797    57
                         call               ??3@YAXPAX@Z                                  // 0x00548798    e8fb662600
                         add                esp, 0x04                                     // 0x0054879d    83c404
_jmp_addr_0x005487a0:    {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x005487a0    8b4c2428
                         test               ecx, ecx                                      // 0x005487a4    85c9
                         {disp8} je         _jmp_addr_0x005487f7                          // 0x005487a6    744f
_jmp_addr_0x005487a8:    {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x005487a8    8b5904
                         xor.s              edi, edi                                      // 0x005487ab    33ff
                         test               ecx, ecx                                      // 0x005487ad    85c9
                         mov.s              eax, ecx                                      // 0x005487af    8bc1
                         {disp8} je         _jmp_addr_0x005487e6                          // 0x005487b1    7433
_jmp_addr_0x005487b3:    cmp                dword ptr [eax + 0x04], ebx                   // 0x005487b3    395804
                         mov                esi, dword ptr [eax]                          // 0x005487b6    8b30
                         {disp8} jne        _jmp_addr_0x005487de                          // 0x005487b8    7524
                         cmp.s              eax, ecx                                      // 0x005487ba    3bc1
                         {disp8} jne        _jmp_addr_0x005487c4                          // 0x005487bc    7506
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x005487be    89742428
                         {disp8} jmp        _jmp_addr_0x005487c6                          // 0x005487c2    eb02
_jmp_addr_0x005487c4:    mov                dword ptr [edi], esi                          // 0x005487c4    8937
_jmp_addr_0x005487c6:    {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x005487c6    8b54242c
                         dec                edx                                           // 0x005487ca    4a
                         push               eax                                           // 0x005487cb    50
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x005487cc    89542430
                         call               ??3@YAXPAX@Z                                  // 0x005487d0    e8c3662600
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x005487d5    8b4c242c
                         add                esp, 0x04                                     // 0x005487d9    83c404
                         {disp8} jmp        _jmp_addr_0x005487e0                          // 0x005487dc    eb02
_jmp_addr_0x005487de:    mov.s              edi, eax                                      // 0x005487de    8bf8
_jmp_addr_0x005487e0:    test               esi, esi                                      // 0x005487e0    85f6
                         mov.s              eax, esi                                      // 0x005487e2    8bc6
                         {disp8} jne        _jmp_addr_0x005487b3                          // 0x005487e4    75cd
_jmp_addr_0x005487e6:    push               ebx                                           // 0x005487e6    53
                         call               ??3@YAXPAX@Z                                  // 0x005487e7    e8ac662600
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x005487ec    8b4c242c
                         add                esp, 0x04                                     // 0x005487f0    83c404
                         test               ecx, ecx                                      // 0x005487f3    85c9
                         {disp8} jne        _jmp_addr_0x005487a8                          // 0x005487f5    75b1
_jmp_addr_0x005487f7:    {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x005487f7    8b4c2430
                         test               ecx, ecx                                      // 0x005487fb    85c9
                         {disp8} je         _jmp_addr_0x0054884e                          // 0x005487fd    744f
_jmp_addr_0x005487ff:    {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x005487ff    8b5904
                         xor.s              edi, edi                                      // 0x00548802    33ff
                         test               ecx, ecx                                      // 0x00548804    85c9
                         mov.s              eax, ecx                                      // 0x00548806    8bc1
                         {disp8} je         _jmp_addr_0x0054883d                          // 0x00548808    7433
_jmp_addr_0x0054880a:    cmp                dword ptr [eax + 0x04], ebx                   // 0x0054880a    395804
                         mov                esi, dword ptr [eax]                          // 0x0054880d    8b30
                         {disp8} jne        _jmp_addr_0x00548835                          // 0x0054880f    7524
                         cmp.s              eax, ecx                                      // 0x00548811    3bc1
                         {disp8} jne        _jmp_addr_0x0054881b                          // 0x00548813    7506
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x00548815    89742430
                         {disp8} jmp        _jmp_addr_0x0054881d                          // 0x00548819    eb02
_jmp_addr_0x0054881b:    mov                dword ptr [edi], esi                          // 0x0054881b    8937
_jmp_addr_0x0054881d:    {disp8} mov        edx, dword ptr [esp + 0x34]                   // 0x0054881d    8b542434
                         dec                edx                                           // 0x00548821    4a
                         push               eax                                           // 0x00548822    50
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00548823    89542438
                         call               ??3@YAXPAX@Z                                  // 0x00548827    e86c662600
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0054882c    8b4c2434
                         add                esp, 0x04                                     // 0x00548830    83c404
                         {disp8} jmp        _jmp_addr_0x00548837                          // 0x00548833    eb02
_jmp_addr_0x00548835:    mov.s              edi, eax                                      // 0x00548835    8bf8
_jmp_addr_0x00548837:    test               esi, esi                                      // 0x00548837    85f6
                         mov.s              eax, esi                                      // 0x00548839    8bc6
                         {disp8} jne        _jmp_addr_0x0054880a                          // 0x0054883b    75cd
_jmp_addr_0x0054883d:    push               ebx                                           // 0x0054883d    53
                         call               ??3@YAXPAX@Z                                  // 0x0054883e    e855662600
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00548843    8b4c2434
                         add                esp, 0x04                                     // 0x00548847    83c404
                         test               ecx, ecx                                      // 0x0054884a    85c9
                         {disp8} jne        _jmp_addr_0x005487ff                          // 0x0054884c    75b1
_jmp_addr_0x0054884e:    pop                edi                                           // 0x0054884e    5f
                         pop                esi                                           // 0x0054884f    5e
                         pop                ebp                                           // 0x00548850    5d
                         mov                al, 0x01                                      // 0x00548851    b001
                         pop                ebx                                           // 0x00548853    5b
                         add                esp, 0x44                                     // 0x00548854    83c444
                         ret                0x000c                                        // 0x00548857    c20c00
                         call               dword ptr [__imp__bind@4]                     // 0x0054885a    ff15dc988a00
_jmp_addr_0x00548860:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00548860    8b442404
                         mov                eax, dword ptr [eax]                          // 0x00548864    8b00
                         test               eax, eax                                      // 0x00548866    85c0
                         push               esi                                           // 0x00548868    56
                         {disp8} je         _jmp_addr_0x0054888c                          // 0x00548869    7421
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0054886b    8b742410
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0054886f    8b54240c
_jmp_addr_0x00548873:    {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00548873    8b4804
                         cmp                dword ptr [ecx], edx                          // 0x00548876    3911
                         {disp8} jne        _jmp_addr_0x0054887f                          // 0x00548878    7505
                         cmp                dword ptr [ecx + 0x04], esi                   // 0x0054887a    397104
                         {disp8} je         _jmp_addr_0x00548887                          // 0x0054887d    7408
_jmp_addr_0x0054887f:    mov                eax, dword ptr [eax]                          // 0x0054887f    8b00
                         test               eax, eax                                      // 0x00548881    85c0
                         {disp8} je         _jmp_addr_0x0054888c                          // 0x00548883    7407
                         {disp8} jmp        _jmp_addr_0x00548873                          // 0x00548885    ebec
_jmp_addr_0x00548887:    {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x00548887    8b4004
                         pop                esi                                           // 0x0054888a    5e
                         ret                                                              // 0x0054888b    c3
_jmp_addr_0x0054888c:    xor.s              eax, eax                                      // 0x0054888c    33c0
                         pop                esi                                           // 0x0054888e    5e
                         ret                                                              // 0x0054888f    c3
_jmp_addr_0x00548890:    push               ebx                                           // 0x00548890    53
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x00548891    8b5c2414
                         cmp                ebx, -0x01                                    // 0x00548895    83fbff
                         {disp8} je         _jmp_addr_0x00548917                          // 0x00548898    747d
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0054889a    db442410
                         push               ebp                                           // 0x0054889e    55
                         {disp8} fild       dword ptr [esp + 0x10]                        // 0x0054889f    db442410
                         push               esi                                           // 0x005488a3    56
                         {disp8} mov        si, word ptr [esp + 0x20]                     // 0x005488a4    668b742420
                         push               edi                                           // 0x005488a9    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x005488aa    8b7c2414
_jmp_addr_0x005488ae:    {disp32} fld       dword ptr [__real@40c90fdb]                   // 0x005488ae    d90510b28a00
                         {disp8} fild       dword ptr [esp + 0x20]                        // 0x005488b4    db442420
_jmp_addr_0x005488b8:    fld                st(1)                                         // 0x005488b8    d9c1
                         fcos                                                             // 0x005488ba    d9ff
                         fmul               st, st(1)                                     // 0x005488bc    d8c9
                         fadd               st, st(4)                                     // 0x005488be    d8c4
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x005488c0    d805b4a38a00
                         call               _jmp_addr_0x007a1400                          // 0x005488c6    e8358b2500
                         fld                st(1)                                         // 0x005488cb    d9c1
                         fsin                                                             // 0x005488cd    d9fe
                         mov.s              ebp, eax                                      // 0x005488cf    8be8
                         shl                ebp, 8                                        // 0x005488d1    c1e508
                         fmul               st, st(1)                                     // 0x005488d4    d8c9
                         fadd               st, st(3)                                     // 0x005488d6    d8c3
                         {disp32} fadd      dword ptr [_rdata_float0p5]                   // 0x005488d8    d805b4a38a00
                         call               _jmp_addr_0x007a1400                          // 0x005488de    e81d8b2500
                         fxch               st(1)                                         // 0x005488e3    d9c9
                         {disp32} fsub      dword ptr [rdata_bytes + 0x35d04]             // 0x005488e5    d82504ed8d00
                         add.s              ebp, eax                                      // 0x005488eb    03e8
                         fxch               st(1)                                         // 0x005488ed    d9c9
                         mov                word ptr [edi + ebp * 0x2], si                // 0x005488ef    6689346f
                         fld                st(1)                                         // 0x005488f3    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x005488f5    d81d98a38a00
                         fnstsw             ax                                            // 0x005488fb    dfe0
                         test               ah, 0x41                                      // 0x005488fd    f6c441
                         {disp8} je         _jmp_addr_0x005488b8                          // 0x00548900    74b6
                         dec                ebx                                           // 0x00548902    4b
                         fstp               st(0)                                         // 0x00548903    ddd8
                         cmp                ebx, -0x01                                    // 0x00548905    83fbff
                         fstp               st(0)                                         // 0x00548908    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0054890a    895c2420
                         {disp8} jne        _jmp_addr_0x005488ae                          // 0x0054890e    759e
                         pop                edi                                           // 0x00548910    5f
                         fstp               st(0)                                         // 0x00548911    ddd8
                         pop                esi                                           // 0x00548913    5e
                         fstp               st(0)                                         // 0x00548914    ddd8
                         pop                ebp                                           // 0x00548916    5d
_jmp_addr_0x00548917:    pop                ebx                                           // 0x00548917    5b
                         ret                                                              // 0x00548918    c3
                         nop                                                              // 0x00548919    90
                         nop                                                              // 0x0054891a    90
                         nop                                                              // 0x0054891b    90
                         nop                                                              // 0x0054891c    90
                         nop                                                              // 0x0054891d    90
                         nop                                                              // 0x0054891e    90
                         nop                                                              // 0x0054891f    90
_jmp_addr_0x00548920:    push               esi                                           // 0x00548920    56
                         mov.s              esi, ecx                                      // 0x00548921    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x00000080]             // 0x00548923    8b8e80000000
                         test               ecx, ecx                                      // 0x00548929    85c9
                         {disp8} je         _jmp_addr_0x0054893c                          // 0x0054892b    740f
                         call               ?Release@LH3DTexture@@QAEXXZ                  // 0x0054892d    e80ef42e00
                         {disp32} mov       dword ptr [esi + 0x00000080], 0x00000000      // 0x00548932    c7868000000000000000
_jmp_addr_0x0054893c:    {disp32} mov       eax, dword ptr [esi + 0x00000084]             // 0x0054893c    8b8684000000
                         test               eax, eax                                      // 0x00548942    85c0
                         {disp8} je         _jmp_addr_0x00548957                          // 0x00548944    7411
                         {disp8} mov        dword ptr [eax + 0x08], 0x00000000            // 0x00548946    c7400800000000
                         {disp32} mov       dword ptr [esi + 0x00000084], 0x00000000      // 0x0054894d    c7868400000000000000
_jmp_addr_0x00548957:    {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548957    a17016cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x0000009c]             // 0x0054895c    8b889c000000
                         mov                edx, dword ptr [ecx]                          // 0x00548962    8b11
                         push               0x1                                           // 0x00548964    6a01
                         call               dword ptr [edx + 8]                           // 0x00548966    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548969    a17016cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000000b0]             // 0x0054896e    8b88b0000000
                         mov                edx, dword ptr [ecx]                          // 0x00548974    8b11
                         push               0x1                                           // 0x00548976    6a01
                         call               dword ptr [edx + 8]                           // 0x00548978    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x0054897b    a17016cd00
                         {disp32} mov       ecx, dword ptr [eax + 0x000000a8]             // 0x00548980    8b88a8000000
                         mov                edx, dword ptr [ecx]                          // 0x00548986    8b11
                         push               0x1                                           // 0x00548988    6a01
                         call               dword ptr [edx + 8]                           // 0x0054898a    ff5208
                         pop                esi                                           // 0x0054898d    5e
                         ret                                                              // 0x0054898e    c3
                         nop                                                              // 0x0054898f    90
_jmp_addr_0x00548990:    sub                esp, 0x00000494                               // 0x00548990    81ec94040000
                         push               ebx                                           // 0x00548996    53
                         push               ebp                                           // 0x00548997    55
                         push               esi                                           // 0x00548998    56
                         push               edi                                           // 0x00548999    57
                         push               0x009d976c                                    // 0x0054899a    686c979d00
                         push               0x00bea824                                    // 0x0054899f    6824a8be00
                         call               _fopen                                        // 0x005489a4    e874e42700
                         mov.s              ebp, eax                                      // 0x005489a9    8be8
                         add                esp, 0x08                                     // 0x005489ab    83c408
                         test               ebp, ebp                                      // 0x005489ae    85ed
                         {disp32} je        _jmp_addr_0x00548a8f                          // 0x005489b0    0f84d9000000
                         push               ebp                                           // 0x005489b6    55
                         {disp32} lea       eax, dword ptr [esp + 0x000002a8]             // 0x005489b7    8d8424a8020000
                         push               0x00000200                                    // 0x005489be    6800020000
                         push               eax                                           // 0x005489c3    50
                         call               _fgets                                        // 0x005489c4    e83dfc2700
                         add                esp, 0x0c                                     // 0x005489c9    83c40c
                         test               eax, eax                                      // 0x005489cc    85c0
                         {disp32} je        _jmp_addr_0x00548a86                          // 0x005489ce    0f84b2000000
_jmp_addr_0x005489d4:    xor.s              eax, eax                                      // 0x005489d4    33c0
_jmp_addr_0x005489d6:    cmp                byte ptr [esp + eax * 0x1 + 0x000002a4], 0x3a // 0x005489d6    80bc04a40200003a
                         {disp8} je         _jmp_addr_0x005489ea                          // 0x005489de    740a
                         inc                eax                                           // 0x005489e0    40
                         cmp                eax, 0x0000008c                               // 0x005489e1    3d8c000000
                         {disp8} jl         _jmp_addr_0x005489d6                          // 0x005489e6    7cee
                         {disp8} jmp        _jmp_addr_0x00548a0a                          // 0x005489e8    eb20
_jmp_addr_0x005489ea:    mov.s              ecx, eax                                      // 0x005489ea    8bc8
                         mov.s              edx, ecx                                      // 0x005489ec    8bd1
                         shr                ecx, 2                                        // 0x005489ee    c1e902
                         {disp32} lea       esi, dword ptr [esp + 0x000002a4]             // 0x005489f1    8db424a4020000
                         {disp8} lea        edi, dword ptr [esp + 0x10]                   // 0x005489f8    8d7c2410
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005489fc    f3a5
                         mov.s              ecx, edx                                      // 0x005489fe    8bca
                         and                ecx, 0x03                                     // 0x00548a00    83e103
                         rep movsb                                                        // 0x00548a03    f3a4
                         {disp8} mov        byte ptr [esp + eax * 0x1 + 0x10], 0x00       // 0x00548a05    c644041000
_jmp_addr_0x00548a0a:    {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00548a0a    8d442410
                         push               eax                                           // 0x00548a0e    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x00548a0f    8d8c24a0000000
                         push               0x00bea808                                    // 0x00548a16    6808a8be00
                         push               ecx                                           // 0x00548a1b    51
                         call               _sprintf                                      // 0x00548a1c    e8b1cd2700
                         add                esp, 0x0c                                     // 0x00548a21    83c40c
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00548a24    8d542410
                         push               edx                                           // 0x00548a28    52
                         {disp32} lea       eax, dword ptr [esp + 0x000001a4]             // 0x00548a29    8d8424a4010000
                         push               0x00bea7f0                                    // 0x00548a30    68f0a7be00
                         push               eax                                           // 0x00548a35    50
                         call               _sprintf                                      // 0x00548a36    e897cd2700
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a8]             // 0x00548a3b    8d8c24a8000000
                         push               ecx                                           // 0x00548a42    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00548a43    e8583c2700
                         mov.s              ebx, eax                                      // 0x00548a48    8bd8
                         neg                ebx                                           // 0x00548a4a    f7db
                         {disp32} lea       edx, dword ptr [esp + 0x000001b0]             // 0x00548a4c    8d9424b0010000
                         sbb.s              bl, bl                                        // 0x00548a53    1adb
                         push               edx                                           // 0x00548a55    52
                         inc                bl                                            // 0x00548a56    fec3
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00548a58    e8433c2700
                         add                esp, 0x14                                     // 0x00548a5d    83c414
                         test               eax, eax                                      // 0x00548a60    85c0
                         {disp8} jne        _jmp_addr_0x00548a68                          // 0x00548a62    7504
                         test               bl, bl                                        // 0x00548a64    84db
                         {disp8} jne        _jmp_addr_0x00548a9c                          // 0x00548a66    7534
_jmp_addr_0x00548a68:    push               ebp                                           // 0x00548a68    55
                         {disp32} lea       eax, dword ptr [esp + 0x000002a8]             // 0x00548a69    8d8424a8020000
                         push               0x00000200                                    // 0x00548a70    6800020000
                         push               eax                                           // 0x00548a75    50
                         call               _fgets                                        // 0x00548a76    e88bfb2700
                         add                esp, 0x0c                                     // 0x00548a7b    83c40c
                         test               eax, eax                                      // 0x00548a7e    85c0
                         {disp32} jne       _jmp_addr_0x005489d4                          // 0x00548a80    0f854effffff
_jmp_addr_0x00548a86:    push               ebp                                           // 0x00548a86    55
                         call               _fclose                                       // 0x00548a87    e8a4e32700
                         add                esp, 0x04                                     // 0x00548a8c    83c404
_jmp_addr_0x00548a8f:    pop                edi                                           // 0x00548a8f    5f
                         pop                esi                                           // 0x00548a90    5e
                         pop                ebp                                           // 0x00548a91    5d
                         xor.s              al, al                                        // 0x00548a92    32c0
                         pop                ebx                                           // 0x00548a94    5b
                         add                esp, 0x00000494                               // 0x00548a95    81c494040000
                         ret                                                              // 0x00548a9b    c3
_jmp_addr_0x00548a9c:    pop                edi                                           // 0x00548a9c    5f
                         pop                esi                                           // 0x00548a9d    5e
                         pop                ebp                                           // 0x00548a9e    5d
                         mov                al, 0x01                                      // 0x00548a9f    b001
                         pop                ebx                                           // 0x00548aa1    5b
                         add                esp, 0x00000494                               // 0x00548aa2    81c494040000
                         ret                                                              // 0x00548aa8    c3
                         nop                                                              // 0x00548aa9    90
                         nop                                                              // 0x00548aaa    90
                         nop                                                              // 0x00548aab    90
                         nop                                                              // 0x00548aac    90
                         nop                                                              // 0x00548aad    90
                         nop                                                              // 0x00548aae    90
                         nop                                                              // 0x00548aaf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00548ab0    8b442404
                         sub                esp, 0x00000b08                               // 0x00548ab4    81ec080b0000
                         cmp                eax, 0x05                                     // 0x00548aba    83f805
                         push               ebx                                           // 0x00548abd    53
                         push               ebp                                           // 0x00548abe    55
                         push               esi                                           // 0x00548abf    56
                         push               edi                                           // 0x00548ac0    57
                         {disp32} je        _jmp_addr_0x0054977c                          // 0x00548ac1    0f84b50c0000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548ac7    8b157016cd00
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x00548acd    8b4210
                         {disp32} mov       ebx, dword ptr [esp + 0x00000b20]             // 0x00548ad0    8b9c24200b0000
                         {disp8} lea        ecx, dword ptr [edx + 0x10]                   // 0x00548ad7    8d4a10
                         xor.s              ebp, ebp                                      // 0x00548ada    33ed
                         or                 edi, 0xffffffff                               // 0x00548adc    83cfff
                         cmp.s              eax, ebp                                      // 0x00548adf    3bc5
                         mov                esi, 0x00000004                               // 0x00548ae1    be04000000
                         {disp32} je        _jmp_addr_0x00548ec4                          // 0x00548ae6    0f84d8030000
                         call               dword ptr [rdata_bytes + 0x42c]               // 0x00548aec    ff152c948a00
                         cmp                eax, 0x0b                                     // 0x00548af2    83f80b
                         {disp32} ja        _jmp_addr_0x00548ebe                          // 0x00548af5    0f87c3030000
                         jmp                dword ptr [eax*4 + 0x54978c]                  // 0x00548afb    ff24858c975400
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548b02    a17016cd00
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x00548b07    8d4810
                         call               dword ptr [rdata_bytes + 0x428]               // 0x00548b0a    ff1528948a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x00548b10    d80d1cb48a00
                         call               _jmp_addr_0x007a1400                          // 0x00548b16    e8e5882500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548b1b    8b0d7016cd00
                         {disp8} fld        dword ptr [ecx + 0x44]                        // 0x00548b21    d94144
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000094]             // 0x00548b24    8b8994000000
                         sub                esp, 0x08                                     // 0x00548b2a    83ec08
                         fstp               qword ptr [esp]                               // 0x00548b2d    dd1c24
                         push               eax                                           // 0x00548b30    50
                         push               ecx                                           // 0x00548b31    51
                         call               _jmp_addr_0x005497f0                          // 0x00548b32    e8b90c0000
                         {disp32} mov       edx, dword ptr [ebx + 0x000000b4]             // 0x00548b37    8b93b4000000
                         add                esp, 0x04                                     // 0x00548b3d    83c404
                         push               eax                                           // 0x00548b40    50
                         add                edx, 0x24                                     // 0x00548b41    83c224
                         push               edx                                           // 0x00548b44    52
                         call               _swprintf                                     // 0x00548b45    e835d92700
                         push               ebx                                           // 0x00548b4a    53
                         call               _jmp_addr_0x00549900                          // 0x00548b4b    e8b00d0000
                         add                esp, 0x18                                     // 0x00548b50    83c418
                         {disp32} jmp       _jmp_addr_0x00548ebe                          // 0x00548b53    e966030000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548b58    8b157016cd00
                         cmp                dword ptr [edx + 0x00000094], 0x01            // 0x00548b5e    83ba9400000001
                         {disp8} jne        _jmp_addr_0x00548bcc                          // 0x00548b65    7565
                         {disp8} mov        eax, dword ptr [edx + 0x7c]                   // 0x00548b67    8b427c
                         cmp.s              eax, ebp                                      // 0x00548b6a    3bc5
                         {disp32} mov       ecx, dword ptr [edx + 0x00000098]             // 0x00548b6c    8b8a98000000
                         {disp8} jl         _jmp_addr_0x00548b8f                          // 0x00548b72    7c1b
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x00548b74    3b8150020000
                         {disp8} jge        _jmp_addr_0x00548b8f                          // 0x00548b7a    7d13
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]             // 0x00548b7c    8b8968020000
                         mov                dword ptr [ecx + eax * 0x4], 0x000000ff       // 0x00548b82    c70481ff000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548b89    8b157016cd00
_jmp_addr_0x00548b8f:    {disp32} mov       dword ptr [edx + 0x00000094], esi             // 0x00548b8f    89b294000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b66c]        // 0x00548b95    a16c16cd00
                         cmp.s              eax, ebp                                      // 0x00548b9a    3bc5
                         {disp8} je         _jmp_addr_0x00548ba9                          // 0x00548b9c    740b
                         push               eax                                           // 0x00548b9e    50
                         call               _CHAR2WCHAR__FPc                              // 0x00548b9f    e8fc742e00
                         add                esp, 0x04                                     // 0x00548ba4    83c404
                         {disp8} jmp        _jmp_addr_0x00548bae                          // 0x00548ba7    eb05
_jmp_addr_0x00548ba9:    mov                eax, 0x00c4cd30                               // 0x00548ba9    b830cdc400
_jmp_addr_0x00548bae:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548bae    8b0d7016cd00
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x00548bb4    8b5124
                         push               eax                                           // 0x00548bb7    50
                         push               ebx                                           // 0x00548bb8    53
                         push               edx                                           // 0x00548bb9    52
                         call               _jmp_addr_0x005482e0                          // 0x00548bba    e821f7ffff
                         mov.s              ecx, ebx                                      // 0x00548bbf    8bcb
                         call               _jmp_addr_0x00408240                          // 0x00548bc1    e87af6ebff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548bc6    8b157016cd00
_jmp_addr_0x00548bcc:    cmp                dword ptr [edx + 0x00000094], 0x02            // 0x00548bcc    83ba9400000002
                         {disp32} jne       _jmp_addr_0x00548ec4                          // 0x00548bd3    0f85eb020000
                         {disp8} mov        eax, dword ptr [edx + 0x7c]                   // 0x00548bd9    8b427c
                         cmp.s              eax, ebp                                      // 0x00548bdc    3bc5
                         {disp32} mov       ecx, dword ptr [edx + 0x00000098]             // 0x00548bde    8b8a98000000
                         {disp8} jl         _jmp_addr_0x00548c01                          // 0x00548be4    7c1b
                         cmp                eax, dword ptr [ecx + 0x00000250]             // 0x00548be6    3b8150020000
                         {disp8} jge        _jmp_addr_0x00548c01                          // 0x00548bec    7d13
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]             // 0x00548bee    8b8968020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00ff0000       // 0x00548bf4    c704810000ff00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548bfb    8b157016cd00
_jmp_addr_0x00548c01:    mov.s              ecx, ebx                                      // 0x00548c01    8bcb
                         {disp32} mov       dword ptr [edx + 0x00000094], esi             // 0x00548c03    89b294000000
                         call               _jmp_addr_0x00408240                          // 0x00548c09    e832f6ebff
                         {disp32} jmp       _jmp_addr_0x00548ebe                          // 0x00548c0e    e9ab020000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548c13    8b157016cd00
                         {disp8} mov        dword ptr [edx + 0x7c], edi                   // 0x00548c19    897a7c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548c1c    a17016cd00
                         mov.s              ecx, ebx                                      // 0x00548c21    8bcb
                         {disp32} mov       dword ptr [eax + 0x00000094], esi             // 0x00548c23    89b094000000
                         call               _jmp_addr_0x00408240                          // 0x00548c29    e812f6ebff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548c2e    8b0d7016cd00
                         cmp                dword ptr [ecx + 0x00000094], 0x03            // 0x00548c34    83b99400000003
                         {disp8} jne        _jmp_addr_0x00548c44                          // 0x00548c3b    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548c3d    c6057416cd0001
_jmp_addr_0x00548c44:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012d9 // 0x00548c44    813dac7cd100d9120000
                         {disp8} ja         _jmp_addr_0x00548c60                          // 0x00548c4e    7710
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548c50    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548c55    8b4008
                         push               ebp                                           // 0x00548c58    55
                         push               ebp                                           // 0x00548c59    55
                         push               eax                                           // 0x00548c5a    50
                         {disp32} jmp       _jmp_addr_0x00548eb7                          // 0x00548c5b    e957020000
_jmp_addr_0x00548c60:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00548c60    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e22c]             // 0x00548c66    8d822ce20000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548c6c    8b4008
                         push               ebp                                           // 0x00548c6f    55
                         push               ebp                                           // 0x00548c70    55
                         push               eax                                           // 0x00548c71    50
                         {disp32} jmp       _jmp_addr_0x00548eb7                          // 0x00548c72    e940020000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548c77    8b0d7016cd00
                         {disp8} mov        dword ptr [ecx + 0x7c], edi                   // 0x00548c7d    89797c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548c80    8b157016cd00
                         mov.s              ecx, ebx                                      // 0x00548c86    8bcb
                         {disp32} mov       dword ptr [edx + 0x00000094], esi             // 0x00548c88    89b294000000
                         call               _jmp_addr_0x00408240                          // 0x00548c8e    e8adf5ebff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548c93    a17016cd00
                         cmp                dword ptr [eax + 0x00000094], 0x03            // 0x00548c98    83b89400000003
                         {disp8} jne        _jmp_addr_0x00548ca8                          // 0x00548c9f    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548ca1    c6057416cd0001
_jmp_addr_0x00548ca8:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012da // 0x00548ca8    813dac7cd100da120000
                         {disp8} ja         _jmp_addr_0x00548cc3                          // 0x00548cb2    770f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548cb4    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00548cb9    8b5008
                         push               ebp                                           // 0x00548cbc    55
                         push               ebp                                           // 0x00548cbd    55
                         {disp32} jmp       _jmp_addr_0x00548eb6                          // 0x00548cbe    e9f3010000
_jmp_addr_0x00548cc3:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00548cc3    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000e240]             // 0x00548cc9    8b9140e20000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e238]             // 0x00548ccf    8d8138e20000
                         push               ebp                                           // 0x00548cd5    55
                         push               ebp                                           // 0x00548cd6    55
                         {disp32} jmp       _jmp_addr_0x00548eb6                          // 0x00548cd7    e9da010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548cdc    a17016cd00
                         {disp8} mov        dword ptr [eax + 0x7c], edi                   // 0x00548ce1    89787c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548ce4    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], esi             // 0x00548cea    89b194000000
                         mov.s              ecx, ebx                                      // 0x00548cf0    8bcb
                         call               _jmp_addr_0x00408240                          // 0x00548cf2    e849f5ebff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548cf7    8b157016cd00
                         cmp                dword ptr [edx + 0x00000094], 0x03            // 0x00548cfd    83ba9400000003
                         {disp8} jne        _jmp_addr_0x00548d0d                          // 0x00548d04    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548d06    c6057416cd0001
_jmp_addr_0x00548d0d:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012db // 0x00548d0d    813dac7cd100db120000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548d17    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00548d23                          // 0x00548d1c    7605
                         add                eax, 0x0000e244                               // 0x00548d1e    0544e20000
_jmp_addr_0x00548d23:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00548d23    8b4808
                         push               ebp                                           // 0x00548d26    55
                         push               ebp                                           // 0x00548d27    55
                         push               ecx                                           // 0x00548d28    51
                         {disp32} jmp       _jmp_addr_0x00548eb7                          // 0x00548d29    e989010000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548d2e    8b157016cd00
                         {disp8} mov        dword ptr [edx + 0x7c], edi                   // 0x00548d34    897a7c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548d37    a17016cd00
                         mov.s              ecx, ebx                                      // 0x00548d3c    8bcb
                         {disp32} mov       dword ptr [eax + 0x00000094], esi             // 0x00548d3e    89b094000000
                         call               _jmp_addr_0x00408240                          // 0x00548d44    e8f7f4ebff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548d49    8b0d7016cd00
                         cmp                dword ptr [ecx + 0x00000094], 0x03            // 0x00548d4f    83b99400000003
                         {disp8} jne        _jmp_addr_0x00548d5f                          // 0x00548d56    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548d58    c6057416cd0001
_jmp_addr_0x00548d5f:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012dc // 0x00548d5f    813dac7cd100dc120000
                         {disp8} ja         _jmp_addr_0x00548d7b                          // 0x00548d69    7710
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548d6b    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548d70    8b4008
                         push               ebp                                           // 0x00548d73    55
                         push               ebp                                           // 0x00548d74    55
                         push               eax                                           // 0x00548d75    50
                         {disp32} jmp       _jmp_addr_0x00548eb7                          // 0x00548d76    e93c010000
_jmp_addr_0x00548d7b:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00548d7b    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e250]             // 0x00548d81    8d8250e20000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548d87    8b4008
                         push               ebp                                           // 0x00548d8a    55
                         push               ebp                                           // 0x00548d8b    55
                         push               eax                                           // 0x00548d8c    50
                         {disp32} jmp       _jmp_addr_0x00548eb7                          // 0x00548d8d    e925010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548d92    8b0d7016cd00
                         {disp8} mov        dword ptr [ecx + 0x7c], edi                   // 0x00548d98    89797c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548d9b    8b157016cd00
                         mov.s              ecx, ebx                                      // 0x00548da1    8bcb
                         {disp32} mov       dword ptr [edx + 0x00000094], esi             // 0x00548da3    89b294000000
                         call               _jmp_addr_0x00408240                          // 0x00548da9    e892f4ebff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548dae    a17016cd00
                         cmp                dword ptr [eax + 0x00000094], 0x03            // 0x00548db3    83b89400000003
                         {disp8} jne        _jmp_addr_0x00548dc3                          // 0x00548dba    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548dbc    c6057416cd0001
_jmp_addr_0x00548dc3:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012dd // 0x00548dc3    813dac7cd100dd120000
                         {disp8} ja         _jmp_addr_0x00548dde                          // 0x00548dcd    770f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548dcf    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00548dd4    8b5008
                         push               ebp                                           // 0x00548dd7    55
                         push               ebp                                           // 0x00548dd8    55
                         {disp32} jmp       _jmp_addr_0x00548eb6                          // 0x00548dd9    e9d8000000
_jmp_addr_0x00548dde:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00548dde    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000e264]             // 0x00548de4    8b9164e20000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e25c]             // 0x00548dea    8d815ce20000
                         push               ebp                                           // 0x00548df0    55
                         push               ebp                                           // 0x00548df1    55
                         {disp32} jmp       _jmp_addr_0x00548eb6                          // 0x00548df2    e9bf000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548df7    a17016cd00
                         {disp8} mov        dword ptr [eax + 0x7c], edi                   // 0x00548dfc    89787c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548dff    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], esi             // 0x00548e05    89b194000000
                         mov.s              ecx, ebx                                      // 0x00548e0b    8bcb
                         call               _jmp_addr_0x00408240                          // 0x00548e0d    e82ef4ebff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548e12    8b157016cd00
                         cmp                dword ptr [edx + 0x00000094], 0x03            // 0x00548e18    83ba9400000003
                         {disp8} jne        _jmp_addr_0x00548e28                          // 0x00548e1f    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548e21    c6057416cd0001
_jmp_addr_0x00548e28:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012de // 0x00548e28    813dac7cd100de120000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548e32    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00548e3e                          // 0x00548e37    7605
                         add                eax, 0x0000e268                               // 0x00548e39    0568e20000
_jmp_addr_0x00548e3e:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00548e3e    8b4808
                         push               ebp                                           // 0x00548e41    55
                         push               ebp                                           // 0x00548e42    55
                         push               ecx                                           // 0x00548e43    51
                         {disp8} jmp        _jmp_addr_0x00548eb7                          // 0x00548e44    eb71
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548e46    8b157016cd00
                         {disp8} mov        dword ptr [edx + 0x7c], edi                   // 0x00548e4c    897a7c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548e4f    a17016cd00
                         mov.s              ecx, ebx                                      // 0x00548e54    8bcb
                         {disp32} mov       dword ptr [eax + 0x00000094], esi             // 0x00548e56    89b094000000
                         call               _jmp_addr_0x00408240                          // 0x00548e5c    e8dff3ebff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548e61    a17016cd00
                         cmp                dword ptr [eax + 0x00000094], 0x03            // 0x00548e66    83b89400000003
                         {disp8} jne        _jmp_addr_0x00548e76                          // 0x00548e6d    7507
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x01        // 0x00548e6f    c6057416cd0001
_jmp_addr_0x00548e76:    {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00548e76    8b4824
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012df // 0x00548e79    813dac7cd100df120000
                         {disp8} ja         _jmp_addr_0x00548e8c                          // 0x00548e83    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548e85    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00548e98                          // 0x00548e8a    eb0c
_jmp_addr_0x00548e8c:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00548e8c    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e274]             // 0x00548e92    8d8274e20000
_jmp_addr_0x00548e98:    {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548e98    8b4008
                         push               ecx                                           // 0x00548e9b    51
                         push               eax                                           // 0x00548e9c    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000320]             // 0x00548e9d    8d8c2420030000
                         push               ecx                                           // 0x00548ea4    51
                         call               _swprintf                                     // 0x00548ea5    e8d5d52700
                         add                esp, 0x0c                                     // 0x00548eaa    83c40c
                         push               ebp                                           // 0x00548ead    55
                         push               ebp                                           // 0x00548eae    55
                         {disp32} lea       edx, dword ptr [esp + 0x00000320]             // 0x00548eaf    8d942420030000
_jmp_addr_0x00548eb6:    push               edx                                           // 0x00548eb6    52
_jmp_addr_0x00548eb7:    mov.s              ecx, ebx                                      // 0x00548eb7    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00548eb9    e8d282ecff
_jmp_addr_0x00548ebe:    {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548ebe    8b157016cd00
_jmp_addr_0x00548ec4:    {disp32} mov       eax, dword ptr [esp + 0x00000b1c]             // 0x00548ec4    8b84241c0b0000
                         cmp                eax, 0x0e                                     // 0x00548ecb    83f80e
                         {disp32} ja        _jmp_addr_0x0054977c                          // 0x00548ece    0f87a8080000
                         xor.s              ecx, ecx                                      // 0x00548ed4    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x005497dc]               // 0x00548ed6    8a88dc975400
                         jmp                dword ptr [ecx*4 + 0x5497bc]                  // 0x00548edc    ff248dbc975400
                         {disp32} mov       dword ptr [edx + 0x00000094], esi             // 0x00548ee3    89b294000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00548ee9    8b157016cd00
                         {disp32} mov       dword ptr [edx + 0x00000088], ebp             // 0x00548eef    89aa88000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548ef5    a17016cd00
                         {disp32} mov       dword ptr [eax + 0x00000080], ebp             // 0x00548efa    89a880000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548f00    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000084], ebp             // 0x00548f06    89a984000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548f0c    8b0d7016cd00
                         {disp32} mov       esi, dword ptr [ecx + 0x0000009c]             // 0x00548f12    8bb19c000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00548f18    8b8650020000
                         cmp.s              eax, ebp                                      // 0x00548f1e    3bc5
                         {disp8} jle        _jmp_addr_0x00548f3b                          // 0x00548f20    7e19
_jmp_addr_0x00548f22:    dec                eax                                           // 0x00548f22    48
                         push               eax                                           // 0x00548f23    50
                         mov.s              ecx, esi                                      // 0x00548f24    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00548f26    e8351eecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00548f2b    8b8650020000
                         cmp.s              eax, ebp                                      // 0x00548f31    3bc5
                         {disp8} jg         _jmp_addr_0x00548f22                          // 0x00548f33    7fed
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548f35    8b0d7016cd00
_jmp_addr_0x00548f3b:    mov                edx, dword ptr [ecx]                          // 0x00548f3b    8b11
                         call               dword ptr [edx + 0x20]                        // 0x00548f3d    ff5220
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548f40    a17016cd00
                         {disp8} mov        dword ptr [eax + 0x7c], edi                   // 0x00548f45    89787c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x00548f48    a17016cd00
                         cmp                dword ptr [eax + 0x00000090], ebp             // 0x00548f4d    39a890000000
                         {disp8} jne        _jmp_addr_0x00548fcd                          // 0x00548f53    7578
                         push               ebp                                           // 0x00548f55    55
                         push               0x00bea824                                    // 0x00548f56    6824a8be00
                         push               0x00bea888                                    // 0x00548f5b    6888a8be00
                         push               0x00bea878                                    // 0x00548f60    6878a8be00
                         push               0x50                                          // 0x00548f65    6a50
                         push               0x00bea864                                    // 0x00548f67    6864a8be00
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x00548f6c    8d4810
                         call               dword ptr [rdata_bytes + 0x424]               // 0x00548f6f    ff1524948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548f75    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], 0x00000003      // 0x00548f7b    c7819400000003000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012ca // 0x00548f85    813dac7cd100ca120000
                         {disp8} ja         _jmp_addr_0x00548f98                          // 0x00548f8f    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00548f91    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00548fa4                          // 0x00548f96    eb0c
_jmp_addr_0x00548f98:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00548f98    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e178]             // 0x00548f9e    8d8278e10000
_jmp_addr_0x00548fa4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00548fa4    8b0d7016cd00
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00548faa    8b4008
                         {disp32} mov       edx, dword ptr [ecx + 0x000000ac]             // 0x00548fad    8b91ac000000
                         push               eax                                           // 0x00548fb3    50
                         add                edx, 0x24                                     // 0x00548fb4    83c224
                         push               edx                                           // 0x00548fb7    52
                         call               _swprintf                                     // 0x00548fb8    e8c2d42700
                         add                esp, 0x08                                     // 0x00548fbd    83c408
                         pop                edi                                           // 0x00548fc0    5f
                         pop                esi                                           // 0x00548fc1    5e
                         pop                ebp                                           // 0x00548fc2    5d
                         pop                ebx                                           // 0x00548fc3    5b
                         add                esp, 0x00000b08                               // 0x00548fc4    81c4080b0000
                         ret                0x0014                                        // 0x00548fca    c21400
_jmp_addr_0x00548fcd:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012de // 0x00548fcd    813dac7cd100de120000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00548fd7    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x00548fe5                          // 0x00548fdd    7606
                         add                ecx, 0x0000e268                               // 0x00548fdf    81c168e20000
_jmp_addr_0x00548fe5:    {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x00548fe5    8b5108
                         {disp32} mov       eax, dword ptr [eax + 0x000000ac]             // 0x00548fe8    8b80ac000000
                         push               edx                                           // 0x00548fee    52
                         add                eax, 0x24                                     // 0x00548fef    83c024
                         push               eax                                           // 0x00548ff2    50
                         call               _swprintf                                     // 0x00548ff3    e887d42700
                         add                esp, 0x08                                     // 0x00548ff8    83c408
                         pop                edi                                           // 0x00548ffb    5f
                         pop                esi                                           // 0x00548ffc    5e
                         pop                ebp                                           // 0x00548ffd    5d
                         pop                ebx                                           // 0x00548ffe    5b
                         add                esp, 0x00000b08                               // 0x00548fff    81c4080b0000
                         ret                0x0014                                        // 0x00549005    c21400
                         {disp8} lea        ecx, dword ptr [edx + 0x10]                   // 0x00549008    8d4a10
                         call               dword ptr [rdata_bytes + 0x420]               // 0x0054900b    ff1520948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549011    8b0d7016cd00
                         {disp32} lea       edi, dword ptr [ecx + 0x000000b8]             // 0x00549017    8db9b8000000
_jmp_addr_0x0054901d:    mov                eax, dword ptr [edi]                          // 0x0054901d    8b07
                         cmp.s              eax, ebp                                      // 0x0054901f    3bc5
                         {disp8} je         _jmp_addr_0x0054903a                          // 0x00549021    7417
                         {disp8} mov        esi, dword ptr [eax + 0x04]                   // 0x00549023    8b7004
                         push               ebp                                           // 0x00549026    55
                         push               esi                                           // 0x00549027    56
                         mov.s              ecx, edi                                      // 0x00549028    8bcf
                         call               _jmp_addr_0x00549a90                          // 0x0054902a    e8610a0000
                         push               esi                                           // 0x0054902f    56
                         call               ??3@YAXPAX@Z                                  // 0x00549030    e8635e2600
                         add                esp, 0x04                                     // 0x00549035    83c404
                         {disp8} jmp        _jmp_addr_0x0054901d                          // 0x00549038    ebe3
_jmp_addr_0x0054903a:    {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x0054903a    8b157016cd00
                         {disp32} mov       esi, dword ptr [edx + 0x00000098]             // 0x00549040    8bb298000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00549046    8b8650020000
                         cmp.s              eax, ebp                                      // 0x0054904c    3bc5
                         {disp8} jle        _jmp_addr_0x00549063                          // 0x0054904e    7e13
_jmp_addr_0x00549050:    dec                eax                                           // 0x00549050    48
                         push               eax                                           // 0x00549051    50
                         mov.s              ecx, esi                                      // 0x00549052    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00549054    e8071decff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00549059    8b8650020000
                         cmp.s              eax, ebp                                      // 0x0054905f    3bc5
                         {disp8} jg         _jmp_addr_0x00549050                          // 0x00549061    7fed
_jmp_addr_0x00549063:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549063    8b0d7016cd00
                         call               _jmp_addr_0x00548920                          // 0x00549069    e8b2f8ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x0054906e    a17016cd00
                         {disp32} mov       esi, dword ptr [eax + 0x0000009c]             // 0x00549073    8bb09c000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x00549079    8b8650020000
                         cmp.s              eax, ebp                                      // 0x0054907f    3bc5
                         {disp8} jle        _jmp_addr_0x00549096                          // 0x00549081    7e13
_jmp_addr_0x00549083:    dec                eax                                           // 0x00549083    48
                         push               eax                                           // 0x00549084    50
                         mov.s              ecx, esi                                      // 0x00549085    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x00549087    e8d41cecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x0054908c    8b8650020000
                         cmp.s              eax, ebp                                      // 0x00549092    3bc5
                         {disp8} jg         _jmp_addr_0x00549083                          // 0x00549094    7fed
_jmp_addr_0x00549096:    {disp32} mov       ecx, dword ptr [data_bytes + 0x343190]        // 0x00549096    8b0d9091d000
                         pop                edi                                           // 0x0054909c    5f
                         {disp32} mov       dword ptr [data_bytes + 0x30b66c], ebp        // 0x0054909d    892d6c16cd00
                         pop                esi                                           // 0x005490a3    5e
                         {disp8} mov        byte ptr [ecx + 0x20], 0x01                   // 0x005490a4    c6412001
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30a648]        // 0x005490a8    8b154806cd00
                         pop                ebp                                           // 0x005490ae    5d
                         {disp8} mov        byte ptr [edx + 0x20], 0x01                   // 0x005490af    c6422001
                         pop                ebx                                           // 0x005490b3    5b
                         add                esp, 0x00000b08                               // 0x005490b4    81c4080b0000
                         ret                0x0014                                        // 0x005490ba    c21400
                         {disp32} mov       ebp, dword ptr [esp + 0x00000b24]             // 0x005490bd    8bac24240b0000
                         test               ebp, ebp                                      // 0x005490c4    85ed
                         {disp32} je        _jmp_addr_0x0054977c                          // 0x005490c6    0f84b0060000
                         {disp8} mov        eax, dword ptr [ebp + 0x18]                   // 0x005490cc    8b4518
                         test               eax, eax                                      // 0x005490cf    85c0
                         {disp32} jne       _jmp_addr_0x00549198                          // 0x005490d1    0f85c1000000
                         {disp32} mov       al, byte ptr [ebp + 0x00000229]               // 0x005490d7    8a8529020000
                         test               al, al                                        // 0x005490dd    84c0
                         {disp32} jne       _jmp_addr_0x00549198                          // 0x005490df    0f85b3000000
                         cmp                dword ptr [edx + 0x00000090], 0x01            // 0x005490e5    83ba9000000001
                         {disp32} jne       _jmp_addr_0x0054918d                          // 0x005490ec    0f859b000000
                         {disp32} mov       eax, dword ptr [edx + 0x00000098]             // 0x005490f2    8b8298000000
                         cmp                dword ptr [eax + 0x00000248], edi             // 0x005490f8    39b848020000
                         {disp8} jne        _jmp_addr_0x00549158                          // 0x005490fe    7558
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012cd // 0x00549100    813dac7cd100cd120000
                         {disp8} ja         _jmp_addr_0x0054912d                          // 0x0054910a    7721
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054910c    a1a87cd100
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00549111    8b5008
                         push               0x0                                           // 0x00549114    6a00
                         push               0x0                                           // 0x00549116    6a00
                         push               edx                                           // 0x00549118    52
                         mov.s              ecx, ebx                                      // 0x00549119    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x0054911b    e87080ecff
                         pop                edi                                           // 0x00549120    5f
                         pop                esi                                           // 0x00549121    5e
                         pop                ebp                                           // 0x00549122    5d
                         pop                ebx                                           // 0x00549123    5b
                         add                esp, 0x00000b08                               // 0x00549124    81c4080b0000
                         ret                0x0014                                        // 0x0054912a    c21400
_jmp_addr_0x0054912d:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0054912d    8b0da87cd100
                         {disp32} mov       edx, dword ptr [ecx + 0x0000e1a4]             // 0x00549133    8b91a4e10000
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e19c]             // 0x00549139    8d819ce10000
                         push               0x0                                           // 0x0054913f    6a00
                         push               0x0                                           // 0x00549141    6a00
                         push               edx                                           // 0x00549143    52
                         mov.s              ecx, ebx                                      // 0x00549144    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00549146    e84580ecff
                         pop                edi                                           // 0x0054914b    5f
                         pop                esi                                           // 0x0054914c    5e
                         pop                ebp                                           // 0x0054914d    5d
                         pop                ebx                                           // 0x0054914e    5b
                         add                esp, 0x00000b08                               // 0x0054914f    81c4080b0000
                         ret                0x0014                                        // 0x00549155    c21400
_jmp_addr_0x00549158:    {disp32} mov       eax, dword ptr [edx + 0x000000b4]             // 0x00549158    8b82b4000000
                         test               eax, eax                                      // 0x0054915e    85c0
                         {disp8} je         _jmp_addr_0x0054918d                          // 0x00549160    742b
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]        // 0x00549162    a1f41ad300
                         {disp8} mov        byte ptr [eax + 0x21], 0x01                   // 0x00549167    c6402101
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x0054916b    8b157016cd00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x30b66c]        // 0x00549171    8b356c16cd00
                         {disp32} mov       edi, dword ptr [edx + 0x000000b4]             // 0x00549177    8bbab4000000
                         mov                ecx, 0x000000cb                               // 0x0054917d    b9cb000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00549182    f3a5
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b680]        // 0x00549184    a18016cd00
                         {disp8} mov        byte ptr [eax + 0x10], 0x01                   // 0x00549189    c6401001
_jmp_addr_0x0054918d:    call               _jmp_addr_0x00513640                          // 0x0054918d    e8aea4fcff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00549192    8b157016cd00
_jmp_addr_0x00549198:    cmp                dword ptr [ebp + 0x18], 0x02                  // 0x00549198    837d1802
                         {disp32} jne       _jmp_addr_0x0054942d                          // 0x0054919c    0f858b020000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000b24]             // 0x005491a2    8b8c24240b0000
                         {disp32} mov       al, byte ptr [ecx + 0x00000229]               // 0x005491a9    8a8129020000
                         test               al, al                                        // 0x005491af    84c0
                         {disp32} jne       _jmp_addr_0x0054942d                          // 0x005491b1    0f8576020000
                         {disp32} mov       dword ptr [data_bytes + 0x30b66c], 0x00000000 // 0x005491b7    c7056c16cd0000000000
                         {disp32} mov       eax, dword ptr [edx + 0x00000098]             // 0x005491c1    8b8298000000
                         {disp32} mov       ecx, dword ptr [eax + 0x00000248]             // 0x005491c7    8b8848020000
                         cmp                ecx, -0x01                                    // 0x005491cd    83f9ff
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x005491d0    894c2414
                         {disp8} jne        _jmp_addr_0x005491ea                          // 0x005491d4    7514
                         mov.s              ecx, edx                                      // 0x005491d6    8bca
                         call               _jmp_addr_0x00548920                          // 0x005491d8    e843f7ffff
                         pop                edi                                           // 0x005491dd    5f
                         pop                esi                                           // 0x005491de    5e
                         pop                ebp                                           // 0x005491df    5d
                         pop                ebx                                           // 0x005491e0    5b
                         add                esp, 0x00000b08                               // 0x005491e1    81c4080b0000
                         ret                0x0014                                        // 0x005491e7    c21400
_jmp_addr_0x005491ea:    test               ecx, ecx                                      // 0x005491ea    85c9
                         {disp8} jl         _jmp_addr_0x00549212                          // 0x005491ec    7c24
                         cmp                ecx, dword ptr [eax + 0x00000250]             // 0x005491ee    3b8850020000
                         {disp8} jge        _jmp_addr_0x00549212                          // 0x005491f4    7d1c
                         {disp32} mov       edx, dword ptr [eax + 0x00000258]             // 0x005491f6    8b9058020000
                         shl                ecx, 9                                        // 0x005491fc    c1e109
                         add.s              edx, ecx                                      // 0x005491ff    03d1
                         push               edx                                           // 0x00549201    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000071c]             // 0x00549202    8d84241c070000
                         push               eax                                           // 0x00549209    50
                         call               _wcscpy                                       // 0x0054920a    e8a7cd2700
                         add                esp, 0x08                                     // 0x0054920f    83c408
_jmp_addr_0x00549212:    {disp32} lea       ecx, dword ptr [esp + 0x00000718]             // 0x00549212    8d8c2418070000
                         push               ecx                                           // 0x00549219    51
                         call               _jmp_addr_0x0053b4a0                          // 0x0054921a    e88122ffff
                         or                 ecx, 0xffffffff                               // 0x0054921f    83c9ff
                         mov.s              edi, eax                                      // 0x00549222    8bf8
                         xor.s              eax, eax                                      // 0x00549224    33c0
                         add                esp, 0x04                                     // 0x00549226    83c404
                         repne scasb                                                      // 0x00549229    f2ae
                         not                ecx                                           // 0x0054922b    f7d1
                         sub.s              edi, ecx                                      // 0x0054922d    2bf9
                         mov.s              eax, ecx                                      // 0x0054922f    8bc1
                         shr                ecx, 2                                        // 0x00549231    c1e902
                         mov.s              esi, edi                                      // 0x00549234    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x00000118]             // 0x00549236    8d942418010000
                         mov.s              edi, edx                                      // 0x0054923d    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054923f    f3a5
                         mov.s              ecx, eax                                      // 0x00549241    8bc8
                         and                ecx, 0x03                                     // 0x00549243    83e103
                         rep movsb                                                        // 0x00549246    f3a4
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549248    8b0d7016cd00
                         {disp32} mov       ebp, dword ptr [ecx + 0x000000b8]             // 0x0054924e    8ba9b8000000
                         test               ebp, ebp                                      // 0x00549254    85ed
                         {disp32} je        _jmp_addr_0x0054942d                          // 0x00549256    0f84d1010000
_jmp_addr_0x0054925c:    {disp8} mov        edi, dword ptr [ebp + 0x04]                   // 0x0054925c    8b7d04
                         {disp32} lea       esi, dword ptr [esp + 0x00000118]             // 0x0054925f    8db42418010000
                         mov.s              eax, edi                                      // 0x00549266    8bc7
_jmp_addr_0x00549268:    mov                dl, byte ptr [eax]                            // 0x00549268    8a10
                         mov.s              cl, dl                                        // 0x0054926a    8aca
                         cmp                dl, byte ptr [esi]                            // 0x0054926c    3a16
                         {disp8} jne        _jmp_addr_0x0054928c                          // 0x0054926e    751c
                         test               cl, cl                                        // 0x00549270    84c9
                         {disp8} je         _jmp_addr_0x00549288                          // 0x00549272    7414
                         {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00549274    8a5001
                         mov.s              cl, dl                                        // 0x00549277    8aca
                         cmp                dl, byte ptr [esi + 0x01]                     // 0x00549279    3a5601
                         {disp8} jne        _jmp_addr_0x0054928c                          // 0x0054927c    750e
                         add                eax, 0x02                                     // 0x0054927e    83c002
                         add                esi, 0x02                                     // 0x00549281    83c602
                         test               cl, cl                                        // 0x00549284    84c9
                         {disp8} jne        _jmp_addr_0x00549268                          // 0x00549286    75e0
_jmp_addr_0x00549288:    xor.s              eax, eax                                      // 0x00549288    33c0
                         {disp8} jmp        _jmp_addr_0x00549291                          // 0x0054928a    eb05
_jmp_addr_0x0054928c:    sbb.s              eax, eax                                      // 0x0054928c    1bc0
                         sbb                eax, -0x01                                    // 0x0054928e    83d8ff
_jmp_addr_0x00549291:    test               eax, eax                                      // 0x00549291    85c0
                         {disp8} je         _jmp_addr_0x005492ec                          // 0x00549293    7457
                         test               ebp, ebp                                      // 0x00549295    85ed
                         {disp8} jne        _jmp_addr_0x005492dc                          // 0x00549297    7543
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549299    8b0d7016cd00
                         call               _jmp_addr_0x00548920                          // 0x0054929f    e87cf6ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005492a4    a17016cd00
                         {disp32} mov       esi, dword ptr [eax + 0x0000009c]             // 0x005492a9    8bb09c000000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005492af    8b8650020000
                         test               eax, eax                                      // 0x005492b5    85c0
                         {disp8} jle        _jmp_addr_0x005492cc                          // 0x005492b7    7e13
_jmp_addr_0x005492b9:    dec                eax                                           // 0x005492b9    48
                         push               eax                                           // 0x005492ba    50
                         mov.s              ecx, esi                                      // 0x005492bb    8bce
                         call               @DeleteString__9SetupListFi@12                // 0x005492bd    e89e1aecff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]             // 0x005492c2    8b8650020000
                         test               eax, eax                                      // 0x005492c8    85c0
                         {disp8} jg         _jmp_addr_0x005492b9                          // 0x005492ca    7fed
_jmp_addr_0x005492cc:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005492cc    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], 0x00000004      // 0x005492d2    c7819400000004000000
_jmp_addr_0x005492dc:    {disp8} mov        ebp, dword ptr [ebp + 0x00]                   // 0x005492dc    8b6d00
                         test               ebp, ebp                                      // 0x005492df    85ed
                         {disp32} jne       _jmp_addr_0x0054925c                          // 0x005492e1    0f8575ffffff
                         {disp32} jmp       _jmp_addr_0x0054942d                          // 0x005492e7    e941010000
_jmp_addr_0x005492ec:    {disp32} lea       esi, dword ptr [edi + 0x000000c8]             // 0x005492ec    8db7c8000000
                         push               esi                                           // 0x005492f2    56
                         {disp32} lea       edx, dword ptr [esp + 0x0000031c]             // 0x005492f3    8d94241c030000
                         push               0x00bea85c                                    // 0x005492fa    685ca8be00
                         push               edx                                           // 0x005492ff    52
                         {disp32} mov       dword ptr [data_bytes + 0x30b66c], edi        // 0x00549300    893d6c16cd00
                         call               _sprintf                                      // 0x00549306    e8c7c42700
                         add                esp, 0x0c                                     // 0x0054930b    83c40c
                         push               esi                                           // 0x0054930e    56
                         {disp32} lea       eax, dword ptr [esp + 0x0000011c]             // 0x0054930f    8d84241c010000
                         push               0x00bea808                                    // 0x00549316    6808a8be00
                         push               eax                                           // 0x0054931b    50
                         call               _sprintf                                      // 0x0054931c    e8b1c42700
                         {disp32} lea       ecx, dword ptr [esp + 0x00000124]             // 0x00549321    8d8c2424010000
                         push               ecx                                           // 0x00549328    51
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x00549329    e872332700
                         add                esp, 0x10                                     // 0x0054932e    83c410
                         test               eax, eax                                      // 0x00549331    85c0
                         {disp32} je        _jmp_addr_0x005493fa                          // 0x00549333    0f84c1000000
                         or                 ecx, 0xffffffff                               // 0x00549339    83c9ff
                         xor.s              eax, eax                                      // 0x0054933c    33c0
                         {disp32} lea       edi, dword ptr [esp + 0x00000118]             // 0x0054933e    8dbc2418010000
                         repne scasb                                                      // 0x00549345    f2ae
                         not                ecx                                           // 0x00549347    f7d1
                         sub.s              edi, ecx                                      // 0x00549349    2bf9
                         mov.s              eax, ecx                                      // 0x0054934b    8bc1
                         shr                ecx, 2                                        // 0x0054934d    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00549350    8d542418
                         mov.s              esi, edi                                      // 0x00549354    8bf7
                         mov.s              edi, edx                                      // 0x00549356    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00549358    f3a5
                         mov.s              ecx, eax                                      // 0x0054935a    8bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x0054935c    a17016cd00
                         and                ecx, 0x03                                     // 0x00549361    83e103
                         push               0x1                                           // 0x00549364    6a01
                         rep movsb                                                        // 0x00549366    f3a4
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00549368    8d4c241c
                         push               ecx                                           // 0x0054936c    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000320]             // 0x0054936d    8d942420030000
                         push               edx                                           // 0x00549374    52
                         push               0x00bea878                                    // 0x00549375    6878a8be00
                         push               0x50                                          // 0x0054937a    6a50
                         push               0x00bea84c                                    // 0x0054937c    684ca8be00
                         {disp8} lea        ecx, dword ptr [eax + 0x10]                   // 0x00549381    8d4810
                         call               dword ptr [rdata_bytes + 0x424]               // 0x00549384    ff1524948a00
                         test               eax, eax                                      // 0x0054938a    85c0
                         {disp8} jne        _jmp_addr_0x005493bb                          // 0x0054938c    752d
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x0054938e    8b0d7016cd00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00549394    8b542414
                         push               eax                                           // 0x00549398    50
                         push               0x1                                           // 0x00549399    6a01
                         {disp8} mov        dword ptr [ecx + 0x7c], edx                   // 0x0054939b    89517c
                         push               0x00c4cd30                                    // 0x0054939e    6830cdc400
                         mov.s              ecx, ebx                                      // 0x005493a3    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005493a5    e8e67decff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005493aa    a17016cd00
                         {disp32} mov       dword ptr [eax + 0x00000094], 0x00000001      // 0x005493af    c7809400000001000000
                         {disp8} jmp        _jmp_addr_0x0054942d                          // 0x005493b9    eb72
_jmp_addr_0x005493bb:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012cf // 0x005493bb    813dac7cd100cf120000
                         {disp8} ja         _jmp_addr_0x005493ce                          // 0x005493c5    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005493c7    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005493da                          // 0x005493cc    eb0c
_jmp_addr_0x005493ce:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005493ce    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e1b4]             // 0x005493d4    8d81b4e10000
_jmp_addr_0x005493da:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x005493da    8b5008
                         push               0x0                                           // 0x005493dd    6a00
                         push               0x0                                           // 0x005493df    6a00
                         push               edx                                           // 0x005493e1    52
                         mov.s              ecx, ebx                                      // 0x005493e2    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005493e4    e8a77decff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b670]        // 0x005493e9    a17016cd00
                         {disp32} mov       dword ptr [eax + 0x00000094], 0x00000004      // 0x005493ee    c7809400000004000000
                         {disp8} jmp        _jmp_addr_0x0054942d                          // 0x005493f8    eb33
_jmp_addr_0x005493fa:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005493fa    8b0d7016cd00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00549400    8b542414
                         push               0x0                                           // 0x00549404    6a00
                         push               ebx                                           // 0x00549406    53
                         {disp32} lea       eax, dword ptr [esp + 0x00000120]             // 0x00549407    8d842420010000
                         {disp8} mov        dword ptr [ecx + 0x7c], edx                   // 0x0054940e    89517c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x00549411    8b0d7016cd00
                         push               eax                                           // 0x00549417    50
                         call               _jmp_addr_0x005482e0                          // 0x00549418    e8c3eeffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x0054941d    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], 0x00000004      // 0x00549423    c7819400000004000000
_jmp_addr_0x0054942d:    {disp32} mov       eax, dword ptr [esp + 0x00000b24]             // 0x0054942d    8b8424240b0000
                         cmp                dword ptr [eax + 0x18], 0x04                  // 0x00549434    83781804
                         {disp32} jne       _jmp_addr_0x0054977c                          // 0x00549438    0f853e030000
                         {disp32} mov       cl, byte ptr [eax + 0x00000229]               // 0x0054943e    8a8829020000
                         test               cl, cl                                        // 0x00549444    84c9
                         {disp32} jne       _jmp_addr_0x0054977c                          // 0x00549446    0f8530030000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b66c]        // 0x0054944c    8b156c16cd00
                         add                edx, 0x000000c8                               // 0x00549452    81c2c8000000
                         push               edx                                           // 0x00549458    52
                         push               0x00bea844                                    // 0x00549459    6844a8be00
                         push               0x00cd0d94                                    // 0x0054945e    68940dcd00
                         call               _sprintf                                      // 0x00549463    e86ac32700
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30b66c]        // 0x00549468    a16c16cd00
                         add                esp, 0x0c                                     // 0x0054946d    83c40c
                         add                eax, 0x000000c8                               // 0x00549470    05c8000000
                         push               eax                                           // 0x00549475    50
                         push               0x00bea7f0                                    // 0x00549476    68f0a7be00
                         push               0x00cd0b94                                    // 0x0054947b    68940bcd00
                         call               _sprintf                                      // 0x00549480    e84dc32700
                         push               0x00cd0b94                                    // 0x00549485    68940bcd00
                         call               ?Exists@LHOSFile@@SAIPAD@Z                    // 0x0054948a    e811322700
                         add                esp, 0x10                                     // 0x0054948f    83c410
                         test               eax, eax                                      // 0x00549492    85c0
                         {disp32} jne       _jmp_addr_0x00549568                          // 0x00549494    0f85ce000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x0054949a    8b0d7016cd00
                         {disp32} mov       dword ptr [ecx + 0x00000094], 0x00000002      // 0x005494a0    c7819400000002000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012d0 // 0x005494aa    813dac7cd100d0120000
                         {disp8} ja         _jmp_addr_0x005494d7                          // 0x005494b4    7721
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005494b6    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005494bb    8b4008
                         push               0x0                                           // 0x005494be    6a00
                         push               0x3                                           // 0x005494c0    6a03
                         push               eax                                           // 0x005494c2    50
                         mov.s              ecx, ebx                                      // 0x005494c3    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005494c5    e8c67cecff
                         pop                edi                                           // 0x005494ca    5f
                         pop                esi                                           // 0x005494cb    5e
                         pop                ebp                                           // 0x005494cc    5d
                         pop                ebx                                           // 0x005494cd    5b
                         add                esp, 0x00000b08                               // 0x005494ce    81c4080b0000
                         ret                0x0014                                        // 0x005494d4    c21400
_jmp_addr_0x005494d7:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x005494d7    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e1c0]             // 0x005494dd    8d82c0e10000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005494e3    8b4008
                         push               0x0                                           // 0x005494e6    6a00
                         push               0x3                                           // 0x005494e8    6a03
                         push               eax                                           // 0x005494ea    50
                         mov.s              ecx, ebx                                      // 0x005494eb    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005494ed    e89e7cecff
                         pop                edi                                           // 0x005494f2    5f
                         pop                esi                                           // 0x005494f3    5e
                         pop                ebp                                           // 0x005494f4    5d
                         pop                ebx                                           // 0x005494f5    5b
                         add                esp, 0x00000b08                               // 0x005494f6    81c4080b0000
                         ret                0x0014                                        // 0x005494fc    c21400
                         {disp32} mov       eax, dword ptr [esp + 0x00000b28]             // 0x005494ff    8b8424280b0000
                         cmp                eax, 0x00002711                               // 0x00549506    3d11270000
                         {disp8} jne        _jmp_addr_0x00549521                          // 0x0054950b    7514
                         {disp8} lea        ecx, dword ptr [edx + 0x10]                   // 0x0054950d    8d4a10
                         call               dword ptr [rdata_bytes + 0x420]               // 0x00549510    ff1520948a00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00549516    8b157016cd00
                         {disp32} jmp       _jmp_addr_0x00549629                          // 0x0054951c    e908010000
_jmp_addr_0x00549521:    cmp                eax, 0x00002710                               // 0x00549521    3d10270000
                         {disp8} jne        _jmp_addr_0x0054954e                          // 0x00549526    7526
                         {disp32} mov       al, byte ptr [data_bytes + 0x30b674]          // 0x00549528    a07416cd00
                         test               al, al                                        // 0x0054952d    84c0
                         {disp32} je        _jmp_addr_0x00549629                          // 0x0054952f    0f84f4000000
                         call               _jmp_addr_0x00513640                          // 0x00549535    e806a1fcff
                         pop                edi                                           // 0x0054953a    5f
                         pop                esi                                           // 0x0054953b    5e
                         pop                ebp                                           // 0x0054953c    5d
                         {disp32} mov       byte ptr [data_bytes + 0x30b674], 0x00        // 0x0054953d    c6057416cd0000
                         pop                ebx                                           // 0x00549544    5b
                         add                esp, 0x00000b08                               // 0x00549545    81c4080b0000
                         ret                0x0014                                        // 0x0054954b    c21400
_jmp_addr_0x0054954e:    cmp                eax, 0x00002712                               // 0x0054954e    3d12270000
                         {disp32} jne       _jmp_addr_0x00549629                          // 0x00549553    0f85d0000000
                         cmp                dword ptr [edx + 0x00000094], 0x02            // 0x00549559    83ba9400000002
                         {disp32} jne       _jmp_addr_0x00549627                          // 0x00549560    0f85c1000000
                         {disp8} jmp        _jmp_addr_0x0054956e                          // 0x00549566    eb06
_jmp_addr_0x00549568:    {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x00549568    8b157016cd00
_jmp_addr_0x0054956e:    or                 ecx, 0xffffffff                               // 0x0054956e    83c9ff
                         xor.s              eax, eax                                      // 0x00549571    33c0
                         mov                edi, 0x00cd0b94                               // 0x00549573    bf940bcd00
                         repne scasb                                                      // 0x00549578    f2ae
                         not                ecx                                           // 0x0054957a    f7d1
                         sub.s              edi, ecx                                      // 0x0054957c    2bf9
                         mov.s              eax, ecx                                      // 0x0054957e    8bc1
                         shr                ecx, 2                                        // 0x00549580    c1e902
                         mov.s              esi, edi                                      // 0x00549583    8bf7
                         {disp8} lea        ebp, dword ptr [esp + 0x18]                   // 0x00549585    8d6c2418
                         mov.s              edi, ebp                                      // 0x00549589    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054958b    f3a5
                         mov.s              ecx, eax                                      // 0x0054958d    8bc8
                         and                ecx, 0x03                                     // 0x0054958f    83e103
                         push               0x1                                           // 0x00549592    6a01
                         rep movsb                                                        // 0x00549594    f3a4
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00549596    8d4c241c
                         push               ecx                                           // 0x0054959a    51
                         push               0x00cd0d94                                    // 0x0054959b    68940dcd00
                         push               0x00bea878                                    // 0x005495a0    6878a8be00
                         push               0x50                                          // 0x005495a5    6a50
                         push               0x00bea84c                                    // 0x005495a7    684ca8be00
                         {disp8} lea        ecx, dword ptr [edx + 0x10]                   // 0x005495ac    8d4a10
                         call               dword ptr [rdata_bytes + 0x424]               // 0x005495af    ff1524948a00
                         test               eax, eax                                      // 0x005495b5    85c0
                         {disp8} jne        _jmp_addr_0x005495e5                          // 0x005495b7    752c
                         push               eax                                           // 0x005495b9    50
                         push               0x1                                           // 0x005495ba    6a01
                         push               0x00c4cd30                                    // 0x005495bc    6830cdc400
                         mov.s              ecx, ebx                                      // 0x005495c1    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x005495c3    e8c87becff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x005495c8    8b157016cd00
                         pop                edi                                           // 0x005495ce    5f
                         pop                esi                                           // 0x005495cf    5e
                         pop                ebp                                           // 0x005495d0    5d
                         {disp32} mov       dword ptr [edx + 0x00000094], 0x00000002      // 0x005495d1    c7829400000002000000
                         pop                ebx                                           // 0x005495db    5b
                         add                esp, 0x00000b08                               // 0x005495dc    81c4080b0000
                         ret                0x0014                                        // 0x005495e2    c21400
_jmp_addr_0x005495e5:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012d1 // 0x005495e5    813dac7cd100d1120000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005495ef    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005495fb                          // 0x005495f4    7605
                         add                eax, 0x0000e1cc                               // 0x005495f6    05cce10000
_jmp_addr_0x005495fb:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005495fb    8b4808
                         push               0x0                                           // 0x005495fe    6a00
                         push               0x0                                           // 0x00549600    6a00
                         push               ecx                                           // 0x00549602    51
                         mov.s              ecx, ebx                                      // 0x00549603    8bcb
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00549605    e8867becff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30b670]        // 0x0054960a    8b157016cd00
                         pop                edi                                           // 0x00549610    5f
                         pop                esi                                           // 0x00549611    5e
                         pop                ebp                                           // 0x00549612    5d
                         {disp32} mov       dword ptr [edx + 0x00000094], 0x00000004      // 0x00549613    c7829400000004000000
                         pop                ebx                                           // 0x0054961d    5b
                         add                esp, 0x00000b08                               // 0x0054961e    81c4080b0000
                         ret                0x0014                                        // 0x00549624    c21400
_jmp_addr_0x00549627:    xor.s              ebp, ebp                                      // 0x00549627    33ed
_jmp_addr_0x00549629:    cmp                dword ptr [edx + 0x00000084], ebp             // 0x00549629    39aa84000000
                         {disp32} je        _jmp_addr_0x0054977c                          // 0x0054962f    0f8447010000
                         {disp32} fild      dword ptr [edx + 0x000004c4]                  // 0x00549635    db82c4040000
                         push               0x42c80000                                    // 0x0054963b    680000c842
                         push               ebp                                           // 0x00549640    55
                         push               0x0000a000                                    // 0x00549641    6800a00000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x250c]              // 0x00549646    d80d0cb58a00
                         push               0xffff6000                                    // 0x0054964c    680060ffff
                         push               0x1                                           // 0x00549651    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x24]                   // 0x00549653    8d442424
                         push               eax                                           // 0x00549657    50
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00549658    d95c242c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0054965c    8b44242c
                         {disp32} mov       dword ptr [data_bytes + 0x2078], 0x000000ff   // 0x00549660    c70578809c00ff000000
                         {disp8} mov        byte ptr [esp + 0x28], -0x01                  // 0x0054966a    c6442428ff
                         {disp8} mov        byte ptr [esp + 0x29], -0x01                  // 0x0054966f    c6442429ff
                         {disp8} mov        byte ptr [esp + 0x2a], -0x01                  // 0x00549674    c644242aff
                         {disp8} mov        byte ptr [esp + 0x2b], -0x01                  // 0x00549679    c644242bff
                         {disp32} mov       ecx, dword ptr [edx + 0x00000084]             // 0x0054967e    8b8a84000000
                         push               ecx                                           // 0x00549684    51
                         push               eax                                           // 0x00549685    50
                         push               eax                                           // 0x00549686    50
                         push               ebp                                           // 0x00549687    55
                         push               ebp                                           // 0x00549688    55
                         push               0x00000154                                    // 0x00549689    6854010000
                         push               0x00000262                                    // 0x0054968e    6862020000
                         push               0x50                                          // 0x00549693    6a50
                         push               0x0000015e                                    // 0x00549695    685e010000
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                 // 0x0054969a    e8e192ecff
                         add                esp, 0x3c                                     // 0x0054969f    83c43c
                         pop                edi                                           // 0x005496a2    5f
                         pop                esi                                           // 0x005496a3    5e
                         pop                ebp                                           // 0x005496a4    5d
                         pop                ebx                                           // 0x005496a5    5b
                         add                esp, 0x00000b08                               // 0x005496a6    81c4080b0000
                         ret                0x0014                                        // 0x005496ac    c21400
                         {disp32} mov       edx, dword ptr [esp + 0x00000b2c]             // 0x005496af    8b94242c0b0000
                         {disp32} mov       eax, dword ptr [esp + 0x00000b28]             // 0x005496b6    8b8424280b0000
                         push               edx                                           // 0x005496bd    52
                         push               eax                                           // 0x005496be    50
                         mov.s              ecx, ebx                                      // 0x005496bf    8bcb
                         call               _jmp_addr_0x00408100                          // 0x005496c1    e83aeaebff
                         cmp.s              eax, ebp                                      // 0x005496c6    3bc5
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]        // 0x005496c8    8b0d7016cd00
                         {disp32} mov       esi, dword ptr [ecx + 0x000000a0]             // 0x005496ce    8bb1a0000000
                         {disp32} je        _jmp_addr_0x0054977c                          // 0x005496d4    0f84a2000000
                         {disp8} mov        eax, dword ptr [eax + 0x18]                   // 0x005496da    8b4018
                         sub.s              eax, ebp                                      // 0x005496dd    2bc5
                         {disp8} je         _jmp_addr_0x00549723                          // 0x005496df    7442
                         sub                eax, 0x02                                     // 0x005496e1    83e802
                         {disp32} jne       _jmp_addr_0x0054977c                          // 0x005496e4    0f8592000000
                         cmp                dword ptr [data_bytes + 0x351cac], 0x000012d2 // 0x005496ea    813dac7cd100d2120000
                         {disp8} ja         _jmp_addr_0x00549709                          // 0x005496f4    7713
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005496f6    a1a87cd100
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005496fb    8b4008
                         push               0x000000ff                                    // 0x005496fe    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x00549703    8d7e24
                         push               eax                                           // 0x00549706    50
                         {disp8} jmp        _jmp_addr_0x0054974e                          // 0x00549707    eb45
_jmp_addr_0x00549709:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00549709    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000e1d8]             // 0x0054970f    8d82d8e10000
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00549715    8b4008
                         push               0x000000ff                                    // 0x00549718    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054971d    8d7e24
                         push               eax                                           // 0x00549720    50
                         {disp8} jmp        _jmp_addr_0x0054974e                          // 0x00549721    eb2b
_jmp_addr_0x00549723:    cmp                dword ptr [data_bytes + 0x351cac], 0x000012e0 // 0x00549723    813dac7cd100e0120000
                         {disp8} ja         _jmp_addr_0x00549736                          // 0x0054972d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0054972f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x00549742                          // 0x00549734    eb0c
_jmp_addr_0x00549736:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00549736    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000e280]             // 0x0054973c    8d8180e20000
_jmp_addr_0x00549742:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00549742    8b5008
                         push               0x000000ff                                    // 0x00549745    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                   // 0x0054974a    8d7e24
                         push               edx                                           // 0x0054974d    52
_jmp_addr_0x0054974e:    push               edi                                           // 0x0054974e    57
                         call               _wcsncpy                                      // 0x0054974f    e8d1cc2700
                         push               edi                                           // 0x00549754    57
                         {disp32} mov       word ptr [esi + 0x00000222], bp               // 0x00549755    6689ae22020000
                         call               _wcslen                                       // 0x0054975c    e801cd2700
                         add                esp, 0x10                                     // 0x00549761    83c410
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax             // 0x00549764    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax             // 0x0054976a    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax             // 0x00549770    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], ebp             // 0x00549776    89ae58020000
_jmp_addr_0x0054977c:    pop                edi                                           // 0x0054977c    5f
                         pop                esi                                           // 0x0054977d    5e
                         pop                ebp                                           // 0x0054977e    5d
                         pop                ebx                                           // 0x0054977f    5b
                         add                esp, 0x00000b08                               // 0x00549780    81c4080b0000
                         ret                0x0014                                        // 0x00549786    c21400

// Snippet: db, [0x00549789, 0x0054978c)
.byte 0x8d, 0x49, 0x00            // 0x00549789

// Snippet: jmptbl, [0x0054978c, 0x005497dc)
.byte 0x02, 0x8b, 0x54, 0x00      // 0x0054978c
.byte 0x58, 0x8b, 0x54, 0x00      // 0x00549790
.byte 0x02, 0x8b, 0x54, 0x00      // 0x00549794
.byte 0xbe, 0x8e, 0x54, 0x00      // 0x00549798
.byte 0xdc, 0x8c, 0x54, 0x00      // 0x0054979c
.byte 0x02, 0x8b, 0x54, 0x00      // 0x005497a0
.byte 0x2e, 0x8d, 0x54, 0x00      // 0x005497a4
.byte 0x92, 0x8d, 0x54, 0x00      // 0x005497a8
.byte 0x77, 0x8c, 0x54, 0x00      // 0x005497ac
.byte 0x13, 0x8c, 0x54, 0x00      // 0x005497b0
.byte 0xf7, 0x8d, 0x54, 0x00      // 0x005497b4
.byte 0x46, 0x8e, 0x54, 0x00      // 0x005497b8
.byte 0xaf, 0x96, 0x54, 0x00      // 0x005497bc
.byte 0xbd, 0x90, 0x54, 0x00      // 0x005497c0
.byte 0x7c, 0x97, 0x54, 0x00      // 0x005497c4
.byte 0xff, 0x94, 0x54, 0x00      // 0x005497c8
.byte 0xe3, 0x8e, 0x54, 0x00      // 0x005497cc
.byte 0x08, 0x90, 0x54, 0x00      // 0x005497d0
.byte 0x29, 0x96, 0x54, 0x00      // 0x005497d4
.byte 0x7c, 0x97, 0x54, 0x00      // 0x005497d8

// Snippet: ijmptbl, [0x005497dc, 0x005497eb)
.byte 0x00, 0x01, 0x02, 0x03      // 0x005497dc
.byte 0x07, 0x07, 0x04, 0x05      // 0x005497e0
.byte 0x07, 0x07, 0x07, 0x07      // 0x005497e4
.byte 0x07, 0x07, 0x06            // 0x005497e8

// Snippet: db, [0x005497eb, 0x005497f0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005497eb
.byte 0x90                        // 0x005497ef

