.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _GetSmallTextSize__Fv
.extern _jmp_addr_0x00407a20
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__14SetupVBarGraphFiiiiiPw@32
.extern @__ct__14SetupTabButtonFiiiiiPwiii@35
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00555180
.extern _jmp_addr_0x00555400
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x005559b0
.extern _jmp_addr_0x00555a10
.extern _jmp_addr_0x0056ea90
.extern _jmp_addr_0x0056eaf0
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern _jmp_addr_0x0071d0b0
.extern _jmp_addr_0x007a1400
.extern _wcscpy
.extern _swprintf
.extern ___nw__FUl

.globl _jmp_addr_0x0056e130
.globl ?Init@EndGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@EndGameBox@@UAEXXZ
.globl ?InitControls@EndGameBox@@UAEXXZ

start_0x0056e130_0x0056ea90:
// Snippet: asm, [0x0056e130, 0x0056ea7b)
_jmp_addr_0x0056e130:    push              ebx                                           // 0x0056e130    53
                         push              esi                                           // 0x0056e131    56
                         {disp8} mov       esi, dword ptr [esp + 0x0c]                   // 0x0056e132    8b74240c
                         push              edi                                           // 0x0056e136    57
                         mov.s             edi, ecx                                      // 0x0056e137    8bf9
                         xor.s             eax, eax                                      // 0x0056e139    33c0
                         {disp8} lea       edx, dword ptr [edi + 0x18]                   // 0x0056e13b    8d5718
_jmp_addr_0x0056e13e:    mov               ebx, dword ptr [edx]                          // 0x0056e13e    8b1a
                         xor.s             ecx, ecx                                      // 0x0056e140    33c9
                         cmp.s             eax, esi                                      // 0x0056e142    3bc6
                         sete              cl                                            // 0x0056e144    0f94c1
                         inc               eax                                           // 0x0056e147    40
                         add               edx, 0x04                                     // 0x0056e148    83c204
                         cmp               eax, 0x07                                     // 0x0056e14b    83f807
                         {disp32} mov      dword ptr [ebx + 0x00000244], ecx             // 0x0056e14e    898b44020000
                         {disp8} jl        _jmp_addr_0x0056e13e                          // 0x0056e154    7ce8
                         {disp8} mov       dword ptr [edi + 0x10], esi                   // 0x0056e156    897710
                         pop               edi                                           // 0x0056e159    5f
                         pop               esi                                           // 0x0056e15a    5e
                         pop               ebx                                           // 0x0056e15b    5b
                         ret               0x0004                                        // 0x0056e15c    c20400
                         nop                                                             // 0x0056e15f    90
?Init@EndGameBox@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         sub               esp, 0x10                                     // 0x0056e160    83ec10
                         {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x0056e163    8b44241c
                         push              ebx                                           // 0x0056e167    53
                         push              ebp                                           // 0x0056e168    55
                         push              esi                                           // 0x0056e169    56
                         {disp8} mov       esi, dword ptr [esp + 0x20]                   // 0x0056e16a    8b742420
                         push              edi                                           // 0x0056e16e    57
                         mov.s             edi, ecx                                      // 0x0056e16f    8bf9
                         {disp8} mov       ecx, dword ptr [esp + 0x28]                   // 0x0056e171    8b4c2428
                         push              eax                                           // 0x0056e175    50
                         push              ecx                                           // 0x0056e176    51
                         push              esi                                           // 0x0056e177    56
                         mov.s             ecx, edi                                      // 0x0056e178    8bcf
                         call              @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x0056e17a    e88152faff
                         xor.s             ebp, ebp                                      // 0x0056e17f    33ed
                         {disp8} mov       dword ptr [esp + 0x10], esi                   // 0x0056e181    89742410
                         {disp8} mov       dword ptr [esp + 0x14], ebp                   // 0x0056e185    896c2414
                         {disp8} fild      qword ptr [esp + 0x10]                        // 0x0056e189    df6c2410
                         shr               esi, 1                                        // 0x0056e18d    d1ee
                         mov               edx, 0x00000190                               // 0x0056e18f    ba90010000
                         sub.s             edx, esi                                      // 0x0056e194    2bd6
                         {disp32} fmul     dword ptr [rdata_bytes + 0x56f3c]             // 0x0056e196    d80d3cff8f00
                         {disp8} mov       dword ptr [esp + 0x18], edx                   // 0x0056e19c    89542418
                         {disp8} mov       dword ptr [esp + 0x1c], ebp                   // 0x0056e1a0    896c241c
                         {disp32} mov      dword ptr [data_bytes + 0x34006c], edi        // 0x0056e1a4    893d6c60d000
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x0056e1aa    d95c2410
                         {disp8} mov       dword ptr [edi + 0x10], ebp                   // 0x0056e1ae    896f10
                         {disp8} fild      qword ptr [esp + 0x18]                        // 0x0056e1b1    df6c2418
                         xor.s             esi, esi                                      // 0x0056e1b5    33f6
                         {disp8} fstp      dword ptr [esp + 0x24]                        // 0x0056e1b7    d95c2424
_jmp_addr_0x0056e1bb:    mov.s             eax, esi                                      // 0x0056e1bb    8bc6
                         sub.s             eax, ebp                                      // 0x0056e1bd    2bc5
                         {disp8} je        _jmp_addr_0x0056e21c                          // 0x0056e1bf    745b
                         dec               eax                                           // 0x0056e1c1    48
                         {disp8} je        _jmp_addr_0x0056e1f0                          // 0x0056e1c2    742c
                         dec               eax                                           // 0x0056e1c4    48
                         {disp8} je        _jmp_addr_0x0056e1d1                          // 0x0056e1c5    740a
                         {disp8} mov       dword ptr [esp + 0x2c], 0x00c4cd30            // 0x0056e1c7    c744242c30cdc400
                         {disp8} jmp       _jmp_addr_0x0056e242                          // 0x0056e1cf    eb71
_jmp_addr_0x0056e1d1:    cmp               dword ptr [data_bytes + 0x351cac], 0x000019f8 // 0x0056e1d1    813dac7cd100f8190000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e1db    a1a87cd100
                         {disp8} jbe       _jmp_addr_0x0056e1e7                          // 0x0056e1e0    7605
                         add               eax, 0x000137a0                               // 0x0056e1e2    05a0370100
_jmp_addr_0x0056e1e7:    {disp8} mov       ecx, dword ptr [eax + 0x08]                   // 0x0056e1e7    8b4808
                         {disp8} mov       dword ptr [esp + 0x2c], ecx                   // 0x0056e1ea    894c242c
                         {disp8} jmp       _jmp_addr_0x0056e242                          // 0x0056e1ee    eb52
_jmp_addr_0x0056e1f0:    cmp               dword ptr [data_bytes + 0x351c9c], 0x13       // 0x0056e1f0    833d9c7cd10013
                         {disp8} ja        _jmp_addr_0x0056e207                          // 0x0056e1f7    770e
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351c98]        // 0x0056e1f9    a1987cd100
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e1fe    8b4008
                         {disp8} mov       dword ptr [esp + 0x2c], eax                   // 0x0056e201    8944242c
                         {disp8} jmp       _jmp_addr_0x0056e242                          // 0x0056e205    eb3b
_jmp_addr_0x0056e207:    {disp32} mov      edx, dword ptr [data_bytes + 0x351c98]        // 0x0056e207    8b15987cd100
                         {disp32} lea      eax, dword ptr [edx + 0x000000e4]             // 0x0056e20d    8d82e4000000
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e213    8b4008
                         {disp8} mov       dword ptr [esp + 0x2c], eax                   // 0x0056e216    8944242c
                         {disp8} jmp       _jmp_addr_0x0056e242                          // 0x0056e21a    eb26
_jmp_addr_0x0056e21c:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a0e // 0x0056e21c    813dac7cd1000e1a0000
                         {disp8} ja        _jmp_addr_0x0056e22f                          // 0x0056e226    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e228    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e23b                          // 0x0056e22d    eb0c
_jmp_addr_0x0056e22f:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e22f    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x000138a8]             // 0x0056e235    8d81a8380100
_jmp_addr_0x0056e23b:    {disp8} mov       edx, dword ptr [eax + 0x08]                   // 0x0056e23b    8b5008
                         {disp8} mov       dword ptr [esp + 0x2c], edx                   // 0x0056e23e    8954242c
_jmp_addr_0x0056e242:    push              0x00000232                                    // 0x0056e242    6832020000
                         push              0x00bef098                                    // 0x0056e247    6898f0be00
                         push              0x00000254                                    // 0x0056e24c    6854020000
                         call              ___nw__FUl                                    // 0x0056e251    e83ad52600
                         mov.s             ebx, eax                                      // 0x0056e256    8bd8
                         add               esp, 0x0c                                     // 0x0056e258    83c40c
                         cmp.s             ebx, ebp                                      // 0x0056e25b    3bdd
                         {disp8} je        _jmp_addr_0x0056e2bc                          // 0x0056e25d    745d
                         {disp8} fld       dword ptr [esp + 0x24]                        // 0x0056e25f    d9442424
                         call              _jmp_addr_0x007a1400                          // 0x0056e263    e898312300
                         {disp8} fld       dword ptr [esp + 0x24]                        // 0x0056e268    d9442424
                         mov.s             ebp, eax                                      // 0x0056e26c    8be8
                         {disp8} fadd      dword ptr [esp + 0x10]                        // 0x0056e26e    d8442410
                         xor.s             eax, eax                                      // 0x0056e272    33c0
                         cmp               esi, 0x06                                     // 0x0056e274    83fe06
                         sete              al                                            // 0x0056e277    0f94c0
                         xor.s             ecx, ecx                                      // 0x0056e27a    33c9
                         test              esi, esi                                      // 0x0056e27c    85f6
                         sete              cl                                            // 0x0056e27e    0f94c1
                         xor.s             edx, edx                                      // 0x0056e281    33d2
                         push              eax                                           // 0x0056e283    50
                         {disp8} mov       eax, dword ptr [esp + 0x30]                   // 0x0056e284    8b442430
                         push              ecx                                           // 0x0056e288    51
                         cmp               esi, dword ptr [edi + 0x10]                   // 0x0056e289    3b7710
                         sete              dl                                            // 0x0056e28c    0f94c2
                         push              edx                                           // 0x0056e28f    52
                         push              eax                                           // 0x0056e290    50
                         push              0x28                                          // 0x0056e291    6a28
                         call              _jmp_addr_0x007a1400                          // 0x0056e293    e868312300
                         {disp8} mov       ecx, dword ptr [esp + 0x3c]                   // 0x0056e298    8b4c243c
                         sub.s             eax, ebp                                      // 0x0056e29c    2bc5
                         push              eax                                           // 0x0056e29e    50
                         shr               ecx, 1                                        // 0x0056e29f    d1e9
                         mov               edx, 0x00000104                               // 0x0056e2a1    ba04010000
                         sub.s             edx, ecx                                      // 0x0056e2a6    2bd1
                         push              edx                                           // 0x0056e2a8    52
                         push              ebp                                           // 0x0056e2a9    55
                         {disp32} lea      eax, dword ptr [esi + 0x000008fc]             // 0x0056e2aa    8d86fc080000
                         push              eax                                           // 0x0056e2b0    50
                         mov.s             ecx, ebx                                      // 0x0056e2b1    8bcb
                         call              @__ct__14SetupTabButtonFiiiiiPwiii@35         // 0x0056e2b3    e82813eaff
                         xor.s             ebp, ebp                                      // 0x0056e2b8    33ed
                         {disp8} jmp       _jmp_addr_0x0056e2be                          // 0x0056e2ba    eb02
_jmp_addr_0x0056e2bc:    xor.s             eax, eax                                      // 0x0056e2bc    33c0
_jmp_addr_0x0056e2be:    {disp8} fld       dword ptr [esp + 0x24]                        // 0x0056e2be    d9442424
                         {disp8} mov       dword ptr [edi + esi * 0x4 + 0x18], eax       // 0x0056e2c2    8944b718
                         {disp8} fadd      dword ptr [esp + 0x10]                        // 0x0056e2c6    d8442410
                         inc               esi                                           // 0x0056e2ca    46
                         cmp               esi, 0x07                                     // 0x0056e2cb    83fe07
                         {disp8} fstp      dword ptr [esp + 0x24]                        // 0x0056e2ce    d95c2424
                         {disp32} jl       _jmp_addr_0x0056e1bb                          // 0x0056e2d2    0f8ce3feffff
                         call              _jmp_addr_0x00407a20                          // 0x0056e2d8    e84397e9ff
                         {disp8} mov       ecx, dword ptr [edi + 0x04]                   // 0x0056e2dd    8b4f04
                         push              0x00000236                                    // 0x0056e2e0    6836020000
                         push              0x00bef098                                    // 0x0056e2e5    6898f0be00
                         push              0x00000244                                    // 0x0056e2ea    6844020000
                         {disp32} mov      dword ptr [ecx + 0x000000ac], eax             // 0x0056e2ef    8981ac000000
                         call              ___nw__FUl                                    // 0x0056e2f5    e896d42600
                         mov.s             esi, eax                                      // 0x0056e2fa    8bf0
                         add               esp, 0x0c                                     // 0x0056e2fc    83c40c
                         cmp.s             esi, ebp                                      // 0x0056e2ff    3bf5
                         mov               ebx, 0x00000004                               // 0x0056e301    bb04000000
                         {disp8} je        _jmp_addr_0x0056e33f                          // 0x0056e306    7437
                         push              0x00c4cd30                                    // 0x0056e308    6830cdc400
                         push              0x000000e4                                    // 0x0056e30d    68e4000000
                         push              0x000002d0                                    // 0x0056e312    68d0020000
                         push              0x50                                          // 0x0056e317    6a50
                         push              0x28                                          // 0x0056e319    6a28
                         push              0x1                                           // 0x0056e31b    6a01
                         mov.s             ecx, esi                                      // 0x0056e31d    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056e31f    e82cafe9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056e324    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], ebx             // 0x0056e32a    899e3c020000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056e330    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056e337    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056e341                          // 0x0056e33d    eb02
_jmp_addr_0x0056e33f:    xor.s             esi, esi                                      // 0x0056e33f    33f6
_jmp_addr_0x0056e341:    push              0x00000237                                    // 0x0056e341    6837020000
                         push              0x00bef098                                    // 0x0056e346    6898f0be00
                         push              0x00000244                                    // 0x0056e34b    6844020000
                         {disp8} mov       dword ptr [edi + 0x38], esi                   // 0x0056e350    897738
                         call              ___nw__FUl                                    // 0x0056e353    e838d42600
                         mov.s             esi, eax                                      // 0x0056e358    8bf0
                         add               esp, 0x0c                                     // 0x0056e35a    83c40c
                         cmp.s             esi, ebp                                      // 0x0056e35d    3bf5
                         {disp8} je        _jmp_addr_0x0056e398                          // 0x0056e35f    7437
                         push              0x00c4cd30                                    // 0x0056e361    6830cdc400
                         push              0x32                                          // 0x0056e366    6a32
                         push              0x000002d0                                    // 0x0056e368    68d0020000
                         push              0x000000c8                                    // 0x0056e36d    68c8000000
                         push              0x28                                          // 0x0056e372    6a28
                         push              0x1                                           // 0x0056e374    6a01
                         mov.s             ecx, esi                                      // 0x0056e376    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056e378    e8d3aee9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056e37d    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], ebx             // 0x0056e383    899e3c020000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056e389    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056e390    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056e39a                          // 0x0056e396    eb02
_jmp_addr_0x0056e398:    xor.s             esi, esi                                      // 0x0056e398    33f6
_jmp_addr_0x0056e39a:    push              0x00000238                                    // 0x0056e39a    6838020000
                         push              0x00bef098                                    // 0x0056e39f    6898f0be00
                         push              0x00000244                                    // 0x0056e3a4    6844020000
                         {disp8} mov       dword ptr [edi + 0x3c], esi                   // 0x0056e3a9    89773c
                         call              ___nw__FUl                                    // 0x0056e3ac    e8dfd32600
                         mov.s             esi, eax                                      // 0x0056e3b1    8bf0
                         add               esp, 0x0c                                     // 0x0056e3b3    83c40c
                         cmp.s             esi, ebp                                      // 0x0056e3b6    3bf5
                         {disp8} je        _jmp_addr_0x0056e416                          // 0x0056e3b8    745c
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000dec // 0x0056e3ba    813dac7cd100ec0d0000
                         {disp8} ja        _jmp_addr_0x0056e3cd                          // 0x0056e3c4    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e3c6    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e3d9                          // 0x0056e3cb    eb0c
_jmp_addr_0x0056e3cd:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e3cd    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x0000a710]             // 0x0056e3d3    8d8210a70000
_jmp_addr_0x0056e3d9:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e3d9    8b4008
                         push              eax                                           // 0x0056e3dc    50
                         push              0x28                                          // 0x0056e3dd    6a28
                         push              0x000000c8                                    // 0x0056e3df    68c8000000
                         push              0x00000212                                    // 0x0056e3e4    6812020000
                         push              0x0000012c                                    // 0x0056e3e9    682c010000
                         push              0x1                                           // 0x0056e3ee    6a01
                         mov.s             ecx, esi                                      // 0x0056e3f0    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056e3f2    e859aee9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056e3f7    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], 0x00000001      // 0x0056e3fd    c7863c02000001000000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056e407    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056e40e    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056e418                          // 0x0056e414    eb02
_jmp_addr_0x0056e416:    xor.s             esi, esi                                      // 0x0056e416    33f6
_jmp_addr_0x0056e418:    {disp8} mov       dword ptr [edi + 0x40], esi                   // 0x0056e418    897740
                         call              _GetSmallTextSize__Fv                         // 0x0056e41b    e8f095e9ff
                         {disp8} mov       ecx, dword ptr [edi + 0x40]                   // 0x0056e420    8b4f40
                         push              0x0000023a                                    // 0x0056e423    683a020000
                         push              0x00bef098                                    // 0x0056e428    6898f0be00
                         push              0x00000244                                    // 0x0056e42d    6844020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x0056e432    894120
                         call              ___nw__FUl                                    // 0x0056e435    e856d32600
                         mov.s             esi, eax                                      // 0x0056e43a    8bf0
                         add               esp, 0x0c                                     // 0x0056e43c    83c40c
                         cmp.s             esi, ebp                                      // 0x0056e43f    3bf5
                         {disp8} je        _jmp_addr_0x0056e47a                          // 0x0056e441    7437
                         push              0x00c4cd30                                    // 0x0056e443    6830cdc400
                         push              0x31                                          // 0x0056e448    6a31
                         push              0x000002d0                                    // 0x0056e44a    68d0020000
                         push              0x000000fa                                    // 0x0056e44f    68fa000000
                         push              0x28                                          // 0x0056e454    6a28
                         push              0x1                                           // 0x0056e456    6a01
                         mov.s             ecx, esi                                      // 0x0056e458    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056e45a    e8f1ade9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056e45f    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], ebx             // 0x0056e465    899e3c020000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056e46b    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056e472    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056e47c                          // 0x0056e478    eb02
_jmp_addr_0x0056e47a:    xor.s             esi, esi                                      // 0x0056e47a    33f6
_jmp_addr_0x0056e47c:    mov               eax, 0x00000001                               // 0x0056e47c    b801000000
                         {disp8} mov       dword ptr [edi + 0x34], esi                   // 0x0056e481    897734
                         {disp8} mov       dword ptr [esi + 0x1c], eax                   // 0x0056e484    89461c
                         {disp8} mov       edx, dword ptr [edi + 0x38]                   // 0x0056e487    8b5738
                         push              0x00000240                                    // 0x0056e48a    6840020000
                         {disp8} mov       dword ptr [edx + 0x1c], eax                   // 0x0056e48f    89421c
                         {disp8} mov       ecx, dword ptr [edi + 0x3c]                   // 0x0056e492    8b4f3c
                         push              0x00bef098                                    // 0x0056e495    6898f0be00
                         push              0x00000244                                    // 0x0056e49a    6844020000
                         {disp8} mov       dword ptr [ecx + 0x1c], eax                   // 0x0056e49f    89411c
                         call              ___nw__FUl                                    // 0x0056e4a2    e8e9d22600
                         mov.s             esi, eax                                      // 0x0056e4a7    8bf0
                         add               esp, 0x0c                                     // 0x0056e4a9    83c40c
                         cmp.s             esi, ebp                                      // 0x0056e4ac    3bf5
                         {disp8} je        _jmp_addr_0x0056e505                          // 0x0056e4ae    7455
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a8d // 0x0056e4b0    813dac7cd1008d1a0000
                         {disp8} ja        _jmp_addr_0x0056e4c3                          // 0x0056e4ba    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e4bc    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e4cf                          // 0x0056e4c1    eb0c
_jmp_addr_0x0056e4c3:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e4c3    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x00013e9c]             // 0x0056e4c9    8d829c3e0100
_jmp_addr_0x0056e4cf:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e4cf    8b4008
                         push              eax                                           // 0x0056e4d2    50
                         push              0x28                                          // 0x0056e4d3    6a28
                         push              0x000002d0                                    // 0x0056e4d5    68d0020000
                         push              0x0000014a                                    // 0x0056e4da    684a010000
                         push              0x28                                          // 0x0056e4df    6a28
                         push              0x1                                           // 0x0056e4e1    6a01
                         mov.s             ecx, esi                                      // 0x0056e4e3    8bce
                         call              ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x0056e4e5    e866ade9ff
                         mov               dword ptr [esi], 0x008ab5c0                   // 0x0056e4ea    c706c0b58a00
                         {disp32} mov      dword ptr [esi + 0x0000023c], ebx             // 0x0056e4f0    899e3c020000
                         {disp32} mov      byte ptr [esi + 0x0000022a], 0x00             // 0x0056e4f6    c6862a02000000
                         {disp32} mov      dword ptr [esi + 0x00000240], ebp             // 0x0056e4fd    89ae40020000
                         {disp8} jmp       _jmp_addr_0x0056e507                          // 0x0056e503    eb02
_jmp_addr_0x0056e505:    xor.s             esi, esi                                      // 0x0056e505    33f6
_jmp_addr_0x0056e507:    push              0x00000243                                    // 0x0056e507    6843020000
                         push              0x00bef098                                    // 0x0056e50c    6898f0be00
                         push              0x00000284                                    // 0x0056e511    6884020000
                         {disp8} mov       dword ptr [edi + 0x44], esi                   // 0x0056e516    897744
                         call              ___nw__FUl                                    // 0x0056e519    e872d22600
                         add               esp, 0x0c                                     // 0x0056e51e    83c40c
                         cmp.s             eax, ebp                                      // 0x0056e521    3bc5
                         {disp8} je        _jmp_addr_0x0056e548                          // 0x0056e523    7423
                         push              0x00c4cd30                                    // 0x0056e525    6830cdc400
                         push              0x000000af                                    // 0x0056e52a    68af000000
                         push              0x000000f0                                    // 0x0056e52f    68f0000000
                         push              0x00000177                                    // 0x0056e534    6877010000
                         push              0x00000118                                    // 0x0056e539    6818010000
                         push              ebp                                           // 0x0056e53e    55
                         mov.s             ecx, eax                                      // 0x0056e53f    8bc8
                         call              @__ct__14SetupVBarGraphFiiiiiPw@32            // 0x0056e541    e8ba09eaff
                         {disp8} jmp       _jmp_addr_0x0056e54a                          // 0x0056e546    eb02
_jmp_addr_0x0056e548:    xor.s             eax, eax                                      // 0x0056e548    33c0
_jmp_addr_0x0056e54a:    {disp8} mov       ecx, dword ptr [edi + 0x34]                   // 0x0056e54a    8b4f34
                         {disp8} mov       dword ptr [edi + 0x48], eax                   // 0x0056e54d    894748
                         mov               eax, 0x00000031                               // 0x0056e550    b831000000
                         push              0x0000024b                                    // 0x0056e555    684b020000
                         {disp8} mov       dword ptr [ecx + 0x20], eax                   // 0x0056e55a    894120
                         {disp8} mov       edx, dword ptr [edi + 0x38]                   // 0x0056e55d    8b5738
                         push              0x00bef098                                    // 0x0056e560    6898f0be00
                         push              0x0000025c                                    // 0x0056e565    685c020000
                         {disp8} mov       dword ptr [edx + 0x20], eax                   // 0x0056e56a    894220
                         call              ___nw__FUl                                    // 0x0056e56d    e81ed22600
                         add               esp, 0x0c                                     // 0x0056e572    83c40c
                         cmp.s             eax, ebp                                      // 0x0056e575    3bc5
                         {disp8} je        _jmp_addr_0x0056e5af                          // 0x0056e577    7436
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a38 // 0x0056e579    813dac7cd100381a0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e583    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056e591                          // 0x0056e589    7606
                         add               ecx, 0x00013aa0                               // 0x0056e58b    81c1a03a0100
_jmp_addr_0x0056e591:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056e591    8b4908
                         push              0x2                                           // 0x0056e594    6a02
                         push              ebp                                           // 0x0056e596    55
                         push              0x28                                          // 0x0056e597    6a28
                         push              ecx                                           // 0x0056e599    51
                         push              0x00000212                                    // 0x0056e59a    6812020000
                         push              0x14                                          // 0x0056e59f    6a14
                         push              0x000003e7                                    // 0x0056e5a1    68e7030000
                         mov.s             ecx, eax                                      // 0x0056e5a6    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0056e5a8    e8b3ece9ff
                         {disp8} jmp       _jmp_addr_0x0056e5b1                          // 0x0056e5ad    eb02
_jmp_addr_0x0056e5af:    xor.s             eax, eax                                      // 0x0056e5af    33c0
_jmp_addr_0x0056e5b1:    push              0x0000024c                                    // 0x0056e5b1    684c020000
                         push              0x00bef098                                    // 0x0056e5b6    6898f0be00
                         push              0x0000025c                                    // 0x0056e5bb    685c020000
                         {disp8} mov       dword ptr [edi + 0x4c], eax                   // 0x0056e5c0    89474c
                         call              ___nw__FUl                                    // 0x0056e5c3    e8c8d12600
                         add               esp, 0x0c                                     // 0x0056e5c8    83c40c
                         cmp.s             eax, ebp                                      // 0x0056e5cb    3bc5
                         {disp8} je        _jmp_addr_0x0056e60d                          // 0x0056e5cd    743e
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001ab5 // 0x0056e5cf    813dac7cd100b51a0000
                         {disp8} ja        _jmp_addr_0x0056e5e3                          // 0x0056e5d9    7708
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e5db    8b0da87cd100
                         {disp8} jmp       _jmp_addr_0x0056e5ef                          // 0x0056e5e1    eb0c
_jmp_addr_0x0056e5e3:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e5e3    8b15a87cd100
                         {disp32} lea      ecx, dword ptr [edx + 0x0001407c]             // 0x0056e5e9    8d8a7c400100
_jmp_addr_0x0056e5ef:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056e5ef    8b4908
                         push              0x2                                           // 0x0056e5f2    6a02
                         push              ebp                                           // 0x0056e5f4    55
                         push              0x28                                          // 0x0056e5f5    6a28
                         push              ecx                                           // 0x0056e5f7    51
                         push              0x00000212                                    // 0x0056e5f8    6812020000
                         push              0x14                                          // 0x0056e5fd    6a14
                         push              0x000003e7                                    // 0x0056e5ff    68e7030000
                         mov.s             ecx, eax                                      // 0x0056e604    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0056e606    e855ece9ff
                         {disp8} jmp       _jmp_addr_0x0056e60f                          // 0x0056e60b    eb02
_jmp_addr_0x0056e60d:    xor.s             eax, eax                                      // 0x0056e60d    33c0
_jmp_addr_0x0056e60f:    push              0x0000024d                                    // 0x0056e60f    684d020000
                         push              0x00bef098                                    // 0x0056e614    6898f0be00
                         push              0x0000025c                                    // 0x0056e619    685c020000
                         {disp8} mov       dword ptr [edi + 0x54], eax                   // 0x0056e61e    894754
                         call              ___nw__FUl                                    // 0x0056e621    e86ad12600
                         add               esp, 0x0c                                     // 0x0056e626    83c40c
                         cmp.s             eax, ebp                                      // 0x0056e629    3bc5
                         {disp8} je        _jmp_addr_0x0056e667                          // 0x0056e62b    743a
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00000de4 // 0x0056e62d    813dac7cd100e40d0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e637    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056e645                          // 0x0056e63d    7606
                         add               ecx, 0x0000a6b0                               // 0x0056e63f    81c1b0a60000
_jmp_addr_0x0056e645:    {disp8} mov       ecx, dword ptr [ecx + 0x08]                   // 0x0056e645    8b4908
                         push              0x3                                           // 0x0056e648    6a03
                         push              0x1                                           // 0x0056e64a    6a01
                         push              0x28                                          // 0x0056e64c    6a28
                         push              ecx                                           // 0x0056e64e    51
                         push              0x00000212                                    // 0x0056e64f    6812020000
                         push              0x000002e4                                    // 0x0056e654    68e4020000
                         push              0x000003e7                                    // 0x0056e659    68e7030000
                         mov.s             ecx, eax                                      // 0x0056e65e    8bc8
                         call              @__ct__14SetupBigButtonFiiiPwiii@36           // 0x0056e660    e8fbebe9ff
                         {disp8} jmp       _jmp_addr_0x0056e669                          // 0x0056e665    eb02
_jmp_addr_0x0056e667:    xor.s             eax, eax                                      // 0x0056e667    33c0
_jmp_addr_0x0056e669:    {disp8} mov       edx, dword ptr [edi + 0x4c]                   // 0x0056e669    8b574c
                         {disp8} mov       dword ptr [edi + 0x50], eax                   // 0x0056e66c    894750
                         {disp32} mov      dword ptr [edx + 0x00000238], 0x0056e720      // 0x0056e66f    c7823802000020e75600
                         {disp8} mov       eax, dword ptr [edi + 0x54]                   // 0x0056e679    8b4754
                         {disp32} mov      dword ptr [eax + 0x00000238], 0x0056e6a0      // 0x0056e67c    c78038020000a0e65600
                         {disp8} mov       ecx, dword ptr [edi + 0x50]                   // 0x0056e686    8b4f50
                         pop               edi                                           // 0x0056e689    5f
                         pop               esi                                           // 0x0056e68a    5e
                         pop               ebp                                           // 0x0056e68b    5d
                         {disp32} mov      dword ptr [ecx + 0x00000238], 0x0056e6b0      // 0x0056e68c    c78138020000b0e65600
                         pop               ebx                                           // 0x0056e696    5b
                         add               esp, 0x10                                     // 0x0056e697    83c410
                         ret               0x000c                                        // 0x0056e69a    c20c00
                         nop                                                             // 0x0056e69d    90
                         nop                                                             // 0x0056e69e    90
                         nop                                                             // 0x0056e69f    90
                         {disp32} jmp      _jmp_addr_0x00513640                          // 0x0056e6a0    e99b4ffaff
                         nop                                                             // 0x0056e6a5    90
                         nop                                                             // 0x0056e6a6    90
                         nop                                                             // 0x0056e6a7    90
                         nop                                                             // 0x0056e6a8    90
                         nop                                                             // 0x0056e6a9    90
                         nop                                                             // 0x0056e6aa    90
                         nop                                                             // 0x0056e6ab    90
                         nop                                                             // 0x0056e6ac    90
                         nop                                                             // 0x0056e6ad    90
                         nop                                                             // 0x0056e6ae    90
                         nop                                                             // 0x0056e6af    90
                         call              _jmp_addr_0x00513640                          // 0x0056e6b0    e88b4ffaff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e6b5    8b0d5c19d000
                         {disp32} mov      eax, dword ptr [ecx + 0x00205a0c]             // 0x0056e6bb    8b810c5a2000
                         test              eax, eax                                      // 0x0056e6c1    85c0
                         {disp8} je        _jmp_addr_0x0056e6d0                          // 0x0056e6c3    740b
                         {disp32} mov      dword ptr [ecx + 0x00250180], 0x00000005      // 0x0056e6c5    c7818001250005000000
                         ret                                                             // 0x0056e6cf    c3
_jmp_addr_0x0056e6d0:    push              esi                                           // 0x0056e6d0    56
                         call              _jmp_addr_0x005559b0                          // 0x0056e6d1    e8da72feff
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e6d6    8b0d5c19d000
                         mov.s             esi, eax                                      // 0x0056e6dc    8bf0
                         call              _jmp_addr_0x00555a10                          // 0x0056e6de    e82d73feff
                         cmp.s             eax, esi                                      // 0x0056e6e3    3bc6
                         pop               esi                                           // 0x0056e6e5    5e
                         {disp8} jne       _jmp_addr_0x0056e710                          // 0x0056e6e6    7528
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e6e8    8b0d5c19d000
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0056e6ee    e85d71feff
                         {disp32} mov      eax, dword ptr [eax + 0x000001bc]             // 0x0056e6f3    8b80bc010000
                         {disp32} mov      ecx, dword ptr [eax + 0x000001fc]             // 0x0056e6f9    8b88fc010000
                         test              ecx, ecx                                      // 0x0056e6ff    85c9
                         {disp8} je        _jmp_addr_0x0056e710                          // 0x0056e701    740d
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056e703    8b0d0c0bcd00
                         {disp8} mov       dword ptr [ecx + 0x64], 0x00000000            // 0x0056e709    c7416400000000
_jmp_addr_0x0056e710:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e710    8b0d5c19d000
                         {disp32} jmp      _jmp_addr_0x00555400                          // 0x0056e716    e9e56cfeff
                         nop                                                             // 0x0056e71b    90
                         nop                                                             // 0x0056e71c    90
                         nop                                                             // 0x0056e71d    90
                         nop                                                             // 0x0056e71e    90
                         nop                                                             // 0x0056e71f    90
                         {disp32} jmp      _jmp_addr_0x00513640                          // 0x0056e720    e91b4ffaff
                         nop                                                             // 0x0056e725    90
                         nop                                                             // 0x0056e726    90
                         nop                                                             // 0x0056e727    90
                         nop                                                             // 0x0056e728    90
                         nop                                                             // 0x0056e729    90
                         nop                                                             // 0x0056e72a    90
                         nop                                                             // 0x0056e72b    90
                         nop                                                             // 0x0056e72c    90
                         nop                                                             // 0x0056e72d    90
                         nop                                                             // 0x0056e72e    90
                         nop                                                             // 0x0056e72f    90
?Destroy@EndGameBox@@UAEXXZ:
                         call              ?Destroy@DialogBoxBase@@UAEXXZ                // 0x0056e730    e85b4efaff
                         {disp32} mov      dword ptr [data_bytes + 0x34006c], 0x00000000 // 0x0056e735    c7056c60d00000000000
                         ret                                                             // 0x0056e73f    c3
?InitControls@EndGameBox@@UAEXXZ:
                         sub               esp, 0x0000080c                               // 0x0056e740    81ec0c080000
                         push              ebp                                           // 0x0056e746    55
                         push              esi                                           // 0x0056e747    56
                         push              edi                                           // 0x0056e748    57
                         xor.s             ebp, ebp                                      // 0x0056e749    33ed
                         mov.s             esi, ecx                                      // 0x0056e74b    8bf1
                         push              ebp                                           // 0x0056e74d    55
                         {disp8} mov       dword ptr [esi + 0x10], ebp                   // 0x0056e74e    896e10
                         call              _jmp_addr_0x0056e130                          // 0x0056e751    e8daf9ffff
                         {disp8} mov       eax, dword ptr [esi + 0x64]                   // 0x0056e756    8b4664
                         cmp               eax, 0x03                                     // 0x0056e759    83f803
                         mov               edi, 0x00001aba                               // 0x0056e75c    bfba1a0000
                         {disp8} ja        _jmp_addr_0x0056e7af                          // 0x0056e761    774c
                         jmp               dword ptr [eax*4 + 0x56ea7c]                  // 0x0056e763    ff24857cea5600
                         {disp8} mov       al, byte ptr [esi + 0x5c]                     // 0x0056e76a    8a465c
                         test              al, al                                        // 0x0056e76d    84c0
                         {disp8} jne       _jmp_addr_0x0056e77d                          // 0x0056e76f    750c
                         {disp8} mov       al, byte ptr [esi + 0x5d]                     // 0x0056e771    8a465d
                         test              al, al                                        // 0x0056e774    84c0
                         mov               edi, 0x00001a68                               // 0x0056e776    bf681a0000
                         {disp8} jne       _jmp_addr_0x0056e782                          // 0x0056e77b    7505
_jmp_addr_0x0056e77d:    mov               edi, 0x00000dc7                               // 0x0056e77d    bfc70d0000
_jmp_addr_0x0056e782:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e782    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0056e788    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0056e78a    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0056e790    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0056e793    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0056e796    8d0450
                         shl               eax, 5                                        // 0x0056e799    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0056e79c    8d4c0818
                         call              ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056e7a0    e8ebbf0d00
                         cmp               eax, 0x04                                     // 0x0056e7a5    83f804
                         .byte             0x72, 0x51// {disp8} jb _jmp_addr_0x0056e7fb  // 0x0056e7a8    7251
                         mov               edi, 0x00000dc7                               // 0x0056e7aa    bfc70d0000
_jmp_addr_0x0056e7af:    cmp               edi, dword ptr [data_bytes + 0x351cac]        // 0x0056e7af    3b3dac7cd100
                         {disp8} jae       _jmp_addr_0x0056e7bf                          // 0x0056e7b5    7308
                         cmp.s             edi, ebp                                      // 0x0056e7b7    3bfd
                         {disp32} ja       _jmp_addr_0x0056e846                          // 0x0056e7b9    0f8787000000
_jmp_addr_0x0056e7bf:    {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e7bf    a1a87cd100
                         {disp32} jmp      _jmp_addr_0x0056e852                          // 0x0056e7c4    e989000000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e7c9    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0056e7cf    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0056e7d1    8a81595a2000
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0056e7d7    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0056e7da    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0056e7dd    8d0450
                         shl               eax, 5                                        // 0x0056e7e0    c1e005
                         cmp               byte ptr [eax + ecx * 0x1 + 0x000000cd], 0x04 // 0x0056e7e3    80bc08cd00000004
                         {disp8} jae       _jmp_addr_0x0056e809                          // 0x0056e7eb    731c
                         mov               edi, 0x0000108f                               // 0x0056e7ed    bf8f100000
                         {disp8} jmp       _jmp_addr_0x0056e7af                          // 0x0056e7f2    ebbb
                         mov               edi, 0x00001aba                               // 0x0056e7f4    bfba1a0000
                         {disp8} jmp       _jmp_addr_0x0056e7af                          // 0x0056e7f9    ebb4
_jmp_addr_0x0056e7fb:    cmp               edi, 0x00001a0e                               // 0x0056e7fb    81ff0e1a0000
                         {disp8} jne       _jmp_addr_0x0056e7af                          // 0x0056e801    75ac
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e803    8b0d5c19d000
_jmp_addr_0x0056e809:    call              _jmp_addr_0x00555180                          // 0x0056e809    e87269feff
                         cmp               dword ptr [data_bytes + 0x351cac], 0x00001a0e // 0x0056e80e    813dac7cd1000e1a0000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e818    8b0da87cd100
                         {disp8} jbe       _jmp_addr_0x0056e826                          // 0x0056e81e    7606
                         add               ecx, 0x000138a8                               // 0x0056e820    81c1a8380100
_jmp_addr_0x0056e826:    {disp8} mov       edx, dword ptr [ecx + 0x08]                   // 0x0056e826    8b5108
                         add               eax, 0x000008e4                               // 0x0056e829    05e4080000
                         push              eax                                           // 0x0056e82e    50
                         {disp8} mov       eax, dword ptr [esi + 0x38]                   // 0x0056e82f    8b4638
                         push              edx                                           // 0x0056e832    52
                         add               eax, 0x24                                     // 0x0056e833    83c024
                         push              0x00bef0c0                                    // 0x0056e836    68c0f0be00
                         push              eax                                           // 0x0056e83b    50
                         call              _swprintf                                     // 0x0056e83c    e83e7c2500
                         add               esp, 0x10                                     // 0x0056e841    83c410
                         {disp8} jmp       _jmp_addr_0x0056e865                          // 0x0056e844    eb1f
_jmp_addr_0x0056e846:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e846    8b15a87cd100
                         lea               ecx, dword ptr [edi + edi * 0x2]              // 0x0056e84c    8d0c7f
                         lea               eax, dword ptr [edx + ecx * 0x4]              // 0x0056e84f    8d048a
_jmp_addr_0x0056e852:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e852    8b4008
                         {disp8} mov       ecx, dword ptr [esi + 0x38]                   // 0x0056e855    8b4e38
                         push              eax                                           // 0x0056e858    50
                         add               ecx, 0x24                                     // 0x0056e859    83c124
                         push              ecx                                           // 0x0056e85c    51
                         call              _wcscpy                                       // 0x0056e85d    e854772500
                         add               esp, 0x08                                     // 0x0056e862    83c408
_jmp_addr_0x0056e865:    {disp8} mov       al, byte ptr [esi + 0x5c]                     // 0x0056e865    8a465c
                         test              al, al                                        // 0x0056e868    84c0
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351cac]        // 0x0056e86a    a1ac7cd100
                         {disp8} je        _jmp_addr_0x0056e88d                          // 0x0056e86f    741c
                         cmp               eax, 0x00001abd                               // 0x0056e871    3dbd1a0000
                         {disp8} ja        _jmp_addr_0x0056e87f                          // 0x0056e876    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e878    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e8a7                          // 0x0056e87d    eb28
_jmp_addr_0x0056e87f:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e87f    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x000140dc]             // 0x0056e885    8d82dc400100
                         {disp8} jmp       _jmp_addr_0x0056e8a7                          // 0x0056e88b    eb1a
_jmp_addr_0x0056e88d:    cmp               eax, 0x00001ab8                               // 0x0056e88d    3db81a0000
                         {disp8} ja        _jmp_addr_0x0056e89b                          // 0x0056e892    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e894    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e8a7                          // 0x0056e899    eb0c
_jmp_addr_0x0056e89b:    {disp32} mov      edx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e89b    8b15a87cd100
                         {disp32} lea      eax, dword ptr [edx + 0x000140a0]             // 0x0056e8a1    8d82a0400100
_jmp_addr_0x0056e8a7:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e8a7    8b4008
                         {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0056e8aa    8b4e3c
                         push              eax                                           // 0x0056e8ad    50
                         add               ecx, 0x24                                     // 0x0056e8ae    83c124
                         push              ecx                                           // 0x0056e8b1    51
                         call              _wcscpy                                       // 0x0056e8b2    e8ff762500
                         {disp8} mov       eax, dword ptr [esi + 0x64]                   // 0x0056e8b7    8b4664
                         mov               edi, 0x00000001                               // 0x0056e8ba    bf01000000
                         add               esp, 0x08                                     // 0x0056e8bf    83c408
                         cmp.s             eax, edi                                      // 0x0056e8c2    3bc7
                         {disp8} jne       _jmp_addr_0x0056e8da                          // 0x0056e8c4    7514
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e8c6    8b0d5c19d000
                         call              _jmp_addr_0x00555880                          // 0x0056e8cc    e8af6ffeff
                         {disp8} mov       ecx, dword ptr [eax + 0x30]                   // 0x0056e8d1    8b4830
                         push              ebp                                           // 0x0056e8d4    55
                         call              _jmp_addr_0x0071d0b0                          // 0x0056e8d5    e8d6e71a00
_jmp_addr_0x0056e8da:    {disp8} mov       ecx, dword ptr [esi + 0x50]                   // 0x0056e8da    8b4e50
                         mov               edx, dword ptr [ecx]                          // 0x0056e8dd    8b11
                         push              edi                                           // 0x0056e8df    57
                         call              dword ptr [edx + 8]                           // 0x0056e8e0    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x54]                   // 0x0056e8e3    8b4e54
                         mov               eax, dword ptr [ecx]                          // 0x0056e8e6    8b01
                         push              edi                                           // 0x0056e8e8    57
                         call              dword ptr [eax + 8]                           // 0x0056e8e9    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x4c]                   // 0x0056e8ec    8b4e4c
                         mov               edx, dword ptr [ecx]                          // 0x0056e8ef    8b11
                         push              edi                                           // 0x0056e8f1    57
                         call              dword ptr [edx + 8]                           // 0x0056e8f2    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                   // 0x0056e8f5    8b4e34
                         mov               eax, dword ptr [ecx]                          // 0x0056e8f8    8b01
                         push              edi                                           // 0x0056e8fa    57
                         call              dword ptr [eax + 8]                           // 0x0056e8fb    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0056e8fe    8b4e3c
                         mov               edx, dword ptr [ecx]                          // 0x0056e901    8b11
                         push              edi                                           // 0x0056e903    57
                         call              dword ptr [edx + 8]                           // 0x0056e904    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x44]                   // 0x0056e907    8b4e44
                         mov               eax, dword ptr [ecx]                          // 0x0056e90a    8b01
                         push              edi                                           // 0x0056e90c    57
                         call              dword ptr [eax + 8]                           // 0x0056e90d    ff5008
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056e910    8b4e48
                         mov               edx, dword ptr [ecx]                          // 0x0056e913    8b11
                         push              edi                                           // 0x0056e915    57
                         call              dword ptr [edx + 8]                           // 0x0056e916    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x0056e919    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x0056e91c    8b01
                         push              ebp                                           // 0x0056e91e    55
                         call              dword ptr [eax + 8]                           // 0x0056e91f    ff5008
                         mov.s             ecx, esi                                      // 0x0056e922    8bce
                         call              _jmp_addr_0x0056eaf0                          // 0x0056e924    e8c7010000
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e929    8b0d5c19d000
                         cmp               dword ptr [ecx + 0x000059a8], edi             // 0x0056e92f    39b9a8590000
                         {disp8} jne       _jmp_addr_0x0056e93c                          // 0x0056e935    7505
                         cmp               dword ptr [esi + 0x64], ebp                   // 0x0056e937    396e64
                         {disp8} jne       _jmp_addr_0x0056e943                          // 0x0056e93a    7507
_jmp_addr_0x0056e93c:    mov.s             ecx, esi                                      // 0x0056e93c    8bce
                         call              _jmp_addr_0x0056ea90                          // 0x0056e93e    e84d010000
_jmp_addr_0x0056e943:    {disp8} mov       al, byte ptr [esi + 0x5e]                     // 0x0056e943    8a465e
                         test              al, al                                        // 0x0056e946    84c0
                         {disp8} jne       _jmp_addr_0x0056e961                          // 0x0056e948    7517
                         cmp               dword ptr [esi + 0x64], ebp                   // 0x0056e94a    396e64
                         {disp8} je        _jmp_addr_0x0056e961                          // 0x0056e94d    7412
                         {disp32} mov      edx, dword ptr [_game]                        // 0x0056e94f    8b155c19d000
                         {disp32} mov      ecx, dword ptr [edx + 0x00205b80]             // 0x0056e955    8b8a805b2000
                         call              dword ptr [rdata_bytes + 0x46c]               // 0x0056e95b    ff156c948a00
_jmp_addr_0x0056e961:    {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e961    8b0d5c19d000
                         call              _jmp_addr_0x00555a10                          // 0x0056e967    e8a470feff
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056e96c    8b0d0c0bcd00
                         {disp32} mov      eax, dword ptr [eax + 0x000001f4]             // 0x0056e972    8b80f4010000
                         {disp8} mov       dl, byte ptr [ecx + 0x5c]                     // 0x0056e978    8a515c
                         dec               eax                                           // 0x0056e97b    48
                         test              dl, dl                                        // 0x0056e97c    84d2
                         {disp8} je        _jmp_addr_0x0056e98c                          // 0x0056e97e    740c
                         {disp8} mov       eax, dword ptr [esi + 0x58]                   // 0x0056e980    8b4658
                         {disp32} fld      dword ptr [ecx + eax * 0x4 + 0x000000ac]      // 0x0056e983    d98481ac000000
                         {disp8} jmp       _jmp_addr_0x0056e996                          // 0x0056e98a    eb0a
_jmp_addr_0x0056e98c:    {disp8} mov       edx, dword ptr [esi + 0x58]                   // 0x0056e98c    8b5658
                         lea               eax, dword ptr [eax + edx * 0x4]              // 0x0056e98f    8d0490
                         {disp8} fld       dword ptr [ecx + eax * 0x4 + 0x6c]            // 0x0056e992    d944816c
_jmp_addr_0x0056e996:    cmp               dword ptr [data_bytes + 0x351cac], 0x00001a26 // 0x0056e996    813dac7cd100261a0000
                         {disp8} ja        _jmp_addr_0x0056e9a9                          // 0x0056e9a0    7707
                         {disp32} mov      eax, dword ptr [data_bytes + 0x351ca8]        // 0x0056e9a2    a1a87cd100
                         {disp8} jmp       _jmp_addr_0x0056e9b5                          // 0x0056e9a7    eb0c
_jmp_addr_0x0056e9a9:    {disp32} mov      ecx, dword ptr [data_bytes + 0x351ca8]        // 0x0056e9a9    8b0da87cd100
                         {disp32} lea      eax, dword ptr [ecx + 0x000139c8]             // 0x0056e9af    8d81c8390100
_jmp_addr_0x0056e9b5:    {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x0056e9b5    8b4008
                         sub               esp, 0x08                                     // 0x0056e9b8    83ec08
                         fstp              qword ptr [esp]                               // 0x0056e9bb    dd1c24
                         push              eax                                           // 0x0056e9be    50
                         {disp8} lea       edx, dword ptr [esp + 0x20]                   // 0x0056e9bf    8d542420
                         push              edx                                           // 0x0056e9c3    52
                         call              dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]  // 0x0056e9c4    ff15d8938a00
                         push              eax                                           // 0x0056e9ca    50
                         {disp8} mov       eax, dword ptr [esi + 0x34]                   // 0x0056e9cb    8b4634
                         add               eax, 0x24                                     // 0x0056e9ce    83c024
                         push              eax                                           // 0x0056e9d1    50
                         call              _wcscpy                                       // 0x0056e9d2    e8df752500
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x0056e9d7    8b0d5c19d000
                         xor.s             eax, eax                                      // 0x0056e9dd    33c0
                         {disp32} mov      al, byte ptr [ecx + 0x00205a59]               // 0x0056e9df    8a81595a2000
                         add               esp, 0x18                                     // 0x0056e9e5    83c418
                         lea               edx, dword ptr [eax + eax * 0x4]              // 0x0056e9e8    8d1480
                         lea               edx, dword ptr [eax + edx * 0x8]              // 0x0056e9eb    8d14d0
                         lea               eax, dword ptr [eax + edx * 0x2]              // 0x0056e9ee    8d0450
                         shl               eax, 5                                        // 0x0056e9f1    c1e005
                         {disp8} lea       ecx, dword ptr [eax + ecx * 0x1 + 0x18]       // 0x0056e9f4    8d4c0818
                         call              ?GetPlayerNumber@GPlayer@@QBEEXZ              // 0x0056e9f8    e893bd0d00
                         cmp               eax, 0x04                                     // 0x0056e9fd    83f804
                         .byte             0x72, 0x12// {disp8} jb _jmp_addr_0x0056ea14  // 0x0056ea00    7212
                         {disp8} mov       ecx, dword ptr [esi + 0x34]                   // 0x0056ea02    8b4e34
                         mov               edx, dword ptr [ecx]                          // 0x0056ea05    8b11
                         push              edi                                           // 0x0056ea07    57
                         call              dword ptr [edx + 8]                           // 0x0056ea08    ff5208
                         {disp8} mov       ecx, dword ptr [esi + 0x3c]                   // 0x0056ea0b    8b4e3c
                         mov               eax, dword ptr [ecx]                          // 0x0056ea0e    8b01
                         push              edi                                           // 0x0056ea10    57
                         call              dword ptr [eax + 8]                           // 0x0056ea11    ff5008
_jmp_addr_0x0056ea14:    {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056ea14    8b4e48
                         mov               edx, dword ptr [ecx]                          // 0x0056ea17    8b11
                         call              dword ptr [edx + 0x34]                        // 0x0056ea19    ff5234
                         {disp8} mov       eax, dword ptr [esi + 0x68]                   // 0x0056ea1c    8b4668
                         xor.s             edi, edi                                      // 0x0056ea1f    33ff
                         cmp               word ptr [eax], bp                            // 0x0056ea21    663928
                         {disp8} jbe       _jmp_addr_0x0056ea65                          // 0x0056ea24    763f
                         push              ebx                                           // 0x0056ea26    53
                         mov               ebx, 0x000000ac                               // 0x0056ea27    bbac000000
_jmp_addr_0x0056ea2c:    {disp8} mov       edx, dword ptr [eax + ebp * 0x1 + 0x04]       // 0x0056ea2c    8b542804
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x30ab0c]        // 0x0056ea30    8b0d0c0bcd00
                         fld               dword ptr [ebx + ecx * 0x1]                   // 0x0056ea36    d9040b
                         {disp8} mov       ecx, dword ptr [esi + 0x48]                   // 0x0056ea39    8b4e48
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x0056ea3c    89542410
                         {disp8} fstp      dword ptr [esp + 0x14]                        // 0x0056ea40    d95c2414
                         mov               eax, dword ptr [ecx]                          // 0x0056ea44    8b01
                         {disp8} lea       edx, dword ptr [esp + 0x10]                   // 0x0056ea46    8d542410
                         push              edx                                           // 0x0056ea4a    52
                         call              dword ptr [eax + 0x3c]                        // 0x0056ea4b    ff503c
                         {disp8} mov       eax, dword ptr [esi + 0x68]                   // 0x0056ea4e    8b4668
                         xor.s             ecx, ecx                                      // 0x0056ea51    33c9
                         mov               cx, word ptr [eax]                            // 0x0056ea53    668b08
                         inc               edi                                           // 0x0056ea56    47
                         add               ebx, 0x04                                     // 0x0056ea57    83c304
                         add               ebp, 0x0000114c                               // 0x0056ea5a    81c54c110000
                         cmp.s             edi, ecx                                      // 0x0056ea60    3bf9
                         {disp8} jl        _jmp_addr_0x0056ea2c                          // 0x0056ea62    7cc8
                         pop               ebx                                           // 0x0056ea64    5b
_jmp_addr_0x0056ea65:    {disp8} mov       esi, dword ptr [esi + 0x48]                   // 0x0056ea65    8b7648
                         mov               edx, dword ptr [esi]                          // 0x0056ea68    8b16
                         push              0x0                                           // 0x0056ea6a    6a00
                         mov.s             ecx, esi                                      // 0x0056ea6c    8bce
                         call              dword ptr [edx + 0x38]                        // 0x0056ea6e    ff5238
                         pop               edi                                           // 0x0056ea71    5f
                         pop               esi                                           // 0x0056ea72    5e
                         pop               ebp                                           // 0x0056ea73    5d
                         add               esp, 0x0000080c                               // 0x0056ea74    81c40c080000
                         ret                                                             // 0x0056ea7a    c3

// Snippet: db, [0x0056ea7b, 0x0056ea7c)
.byte 0x90                        // 0x0056ea7b

// Snippet: jmptbl, [0x0056ea7c, 0x0056ea8c)
.byte 0x6a, 0xe7, 0x56, 0x00      // 0x0056ea7c
.byte 0xf4, 0xe7, 0x56, 0x00      // 0x0056ea80
.byte 0xc9, 0xe7, 0x56, 0x00      // 0x0056ea84
.byte 0xf4, 0xe7, 0x56, 0x00      // 0x0056ea88

// Snippet: db, [0x0056ea8c, 0x0056ea90)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0056ea8c

