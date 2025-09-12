.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00408100
.extern @SetFocusControl__8SetupBoxFP12SetupControl@12
.extern ??0SetupControl@@QAE@HHHHHPA_W@Z
.extern @__ct__14SetupBigButtonFiiiPwiii@36
.extern @__ct__12SetupPictureFiiiP12LH3DMaterialiibib@38
.extern @__ct__17SetupColourPickerFiiiiiiP12LH3DMaterial@33
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern ?unadjust@SetupThing@@SAMAAH0@Z
.extern ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047d980
.extern @__ct__12LH3DCreatureFP8CreatureRC7LHPointPv@20
.extern _jmp_addr_0x00480240
.extern _jmp_addr_0x00480c60
.extern _jmp_addr_0x00482c90
.extern ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ
.extern _jmp_addr_0x00484310
.extern _jmp_addr_0x00484360
.extern _jmp_addr_0x00484b00
.extern _jmp_addr_0x0048e260
.extern _jmp_addr_0x0048f710
.extern _jmp_addr_0x004e7310
.extern @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20
.extern ?Destroy@DialogBoxBase@@UAEXXZ
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00543d50
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005d8a10
.extern _jmp_addr_0x005dea60
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHLoadData__FPcPvUlPUl
.extern _atexit
.extern ___nw__FUl
.extern _jmp_addr_0x008190d0
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x0081b370
.extern _jmp_addr_0x00866640
.extern _jmp_addr_0x00867400

.globl _jmp_addr_0x005427f0
.globl _jmp_addr_0x00542a90
.globl _jmp_addr_0x00542c50
.globl _jmp_addr_0x00543200
.globl ?Init@TattooEditor@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z
.globl ?Destroy@TattooEditor@@UAEXXZ
.globl ?InitControls@TattooEditor@@UAEXXZ

start_0x00542510_0x00543d50:
// Snippet: asm, [0x00542510, 0x00543d14)
?Init@TattooEditor@@UAEXIIP6AXHPAVSetupBox@@PAVSetupControl@@HH@Z@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00542510    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00542514    8b542404
                         push               ebx                                           // 0x00542518    53
                         push               edi                                           // 0x00542519    57
                         mov.s              edi, ecx                                      // 0x0054251a    8bf9
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0054251c    8b4c2410
                         push               eax                                           // 0x00542520    50
                         push               ecx                                           // 0x00542521    51
                         push               edx                                           // 0x00542522    52
                         mov.s              ecx, edi                                      // 0x00542523    8bcf
                         call               @Init__13DialogBoxBaseFUlUlPFiP8SetupBoxP12SetupControlii_v@20                          // 0x00542525    e8d60efdff
                         push               0x00000a6f                                    // 0x0054252a    686f0a0000
                         push               0x00bea568                                    // 0x0054252f    6868a5be00
                         push               0x00000258                                    // 0x00542534    6858020000
                         {disp32} mov       dword ptr [data_bytes + 0x30ab70], edi        // 0x00542539    893d700bcd00
                         call               ___nw__FUl                                    // 0x0054253f    e84c922900
                         xor.s              ebx, ebx                                      // 0x00542544    33db
                         add                esp, 0x0c                                     // 0x00542546    83c40c
                         cmp.s              eax, ebx                                      // 0x00542549    3bc3
                         {disp8} je         _jmp_addr_0x0054256b                          // 0x0054254b    741e
                         {disp32} mov       ecx, dword ptr [_SetupThing]                  // 0x0054254d    8b0d80ccc400
                         push               ecx                                           // 0x00542553    51
                         push               ebx                                           // 0x00542554    53
                         push               0x00000207                                    // 0x00542555    6807020000
                         push               0x34                                          // 0x0054255a    6a34
                         push               0x23                                          // 0x0054255c    6a23
                         push               0x2c                                          // 0x0054255e    6a2c
                         push               0x5                                           // 0x00542560    6a05
                         mov.s              ecx, eax                                      // 0x00542562    8bc8
                         call               @__ct__17SetupColourPickerFiiiiiiP12LH3DMaterial@33                          // 0x00542564    e857e5ecff
                         {disp8} jmp        _jmp_addr_0x0054256d                          // 0x00542569    eb02
_jmp_addr_0x0054256b:    xor.s              eax, eax                                      // 0x0054256b    33c0
_jmp_addr_0x0054256d:    push               0x00000a70                                    // 0x0054256d    68700a0000
                         push               0x00bea568                                    // 0x00542572    6868a5be00
                         push               0x00000258                                    // 0x00542577    6858020000
                         {disp8} mov        dword ptr [edi + 0x60], eax                   // 0x0054257c    894760
                         call               ___nw__FUl                                    // 0x0054257f    e80c922900
                         add                esp, 0x0c                                     // 0x00542584    83c40c
                         cmp.s              eax, ebx                                      // 0x00542587    3bc3
                         {disp8} je         _jmp_addr_0x005425ad                          // 0x00542589    7422
                         {disp32} mov       edx, dword ptr [_SetupThing]                  // 0x0054258b    8b1580ccc400
                         push               edx                                           // 0x00542591    52
                         push               0x1                                           // 0x00542592    6a01
                         push               0x00000207                                    // 0x00542594    6807020000
                         push               0x34                                          // 0x00542599    6a34
                         push               0x23                                          // 0x0054259b    6a23
                         push               0x000002c0                                    // 0x0054259d    68c0020000
                         push               0x6                                           // 0x005425a2    6a06
                         mov.s              ecx, eax                                      // 0x005425a4    8bc8
                         call               @__ct__17SetupColourPickerFiiiiiiP12LH3DMaterial@33                          // 0x005425a6    e815e5ecff
                         {disp8} jmp        _jmp_addr_0x005425af                          // 0x005425ab    eb02
_jmp_addr_0x005425ad:    xor.s              eax, eax                                      // 0x005425ad    33c0
_jmp_addr_0x005425af:    push               ebp                                           // 0x005425af    55
                         push               esi                                           // 0x005425b0    56
                         push               0x00000a73                                    // 0x005425b1    68730a0000
                         push               0x00bea568                                    // 0x005425b6    6868a5be00
                         push               0x00000244                                    // 0x005425bb    6844020000
                         {disp8} mov        dword ptr [edi + 0x64], eax                   // 0x005425c0    894764
                         call               ___nw__FUl                                    // 0x005425c3    e8c8912900
                         mov.s              esi, eax                                      // 0x005425c8    8bf0
                         add                esp, 0x0c                                     // 0x005425ca    83c40c
                         cmp.s              esi, ebx                                      // 0x005425cd    3bf3
                         {disp8} je         _jmp_addr_0x00542621                          // 0x005425cf    7450
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dc2 // 0x005425d1    813dac7cd100c20d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x005425db    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005425e7                          // 0x005425e0    7605
                         add                eax, 0x0000a518                               // 0x005425e2    0518a50000
_jmp_addr_0x005425e7:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x005425e7    8b4808
                         push               ecx                                           // 0x005425ea    51
                         push               0x64                                          // 0x005425eb    6a64
                         push               0x000001f4                                    // 0x005425ed    68f4010000
                         push               0x1e                                          // 0x005425f2    6a1e
                         push               0x00000096                                    // 0x005425f4    6896000000
                         push               0x000003e7                                    // 0x005425f9    68e7030000
                         mov.s              ecx, esi                                      // 0x005425fe    8bce
                         call               ??0SetupControl@@QAE@HHHHHPA_W@Z              // 0x00542600    e84b6cecff
                         mov                dword ptr [esi], 0x008ab5c0                   // 0x00542605    c706c0b58a00
                         {disp32} mov       dword ptr [esi + 0x0000023c], 0x00000004      // 0x0054260b    c7863c02000004000000
                         {disp32} mov       byte ptr [esi + 0x0000022a], bl               // 0x00542615    889e2a020000
                         {disp32} mov       dword ptr [esi + 0x00000240], ebx             // 0x0054261b    899e40020000
_jmp_addr_0x00542621:    push               0x00000a75                                    // 0x00542621    68750a0000
                         push               0x00bea568                                    // 0x00542626    6868a5be00
                         push               0x0000025c                                    // 0x0054262b    685c020000
                         call               ___nw__FUl                                    // 0x00542630    e85b912900
                         add                esp, 0x0c                                     // 0x00542635    83c40c
                         cmp.s              eax, ebx                                      // 0x00542638    3bc3
                         {disp8} je         _jmp_addr_0x0054267a                          // 0x0054263a    743e
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a24 // 0x0054263c    813dac7cd100240a0000
                         {disp8} ja         _jmp_addr_0x00542650                          // 0x00542646    7708
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x00542648    8b0da87cd100
                         {disp8} jmp        _jmp_addr_0x0054265c                          // 0x0054264e    eb0c
_jmp_addr_0x00542650:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]        // 0x00542650    8b15a87cd100
                         {disp32} lea       ecx, dword ptr [edx + 0x000079b0]             // 0x00542656    8d8ab0790000
_jmp_addr_0x0054265c:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0054265c    8b4908
                         push               0x2                                           // 0x0054265f    6a02
                         push               ebx                                           // 0x00542661    53
                         push               0x28                                          // 0x00542662    6a28
                         push               ecx                                           // 0x00542664    51
                         push               0x000001f4                                    // 0x00542665    68f4010000
                         push               0x00000096                                    // 0x0054266a    6896000000
                         push               0x1                                           // 0x0054266f    6a01
                         mov.s              ecx, eax                                      // 0x00542671    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00542673    e8e8abecff
                         {disp8} jmp        _jmp_addr_0x0054267c                          // 0x00542678    eb02
_jmp_addr_0x0054267a:    xor.s              eax, eax                                      // 0x0054267a    33c0
_jmp_addr_0x0054267c:    push               0x00000a76                                    // 0x0054267c    68760a0000
                         push               0x00bea568                                    // 0x00542681    6868a5be00
                         push               0x0000025c                                    // 0x00542686    685c020000
                         {disp8} mov        dword ptr [edi + 0x14], eax                   // 0x0054268b    894714
                         call               ___nw__FUl                                    // 0x0054268e    e8fd902900
                         add                esp, 0x0c                                     // 0x00542693    83c40c
                         cmp.s              eax, ebx                                      // 0x00542696    3bc3
                         {disp8} je         _jmp_addr_0x005426d1                          // 0x00542698    7437
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000a23 // 0x0054269a    813dac7cd100230a0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]        // 0x005426a4    8b0da87cd100
                         {disp8} jbe        _jmp_addr_0x005426b2                          // 0x005426aa    7606
                         add                ecx, 0x000079a4                               // 0x005426ac    81c1a4790000
_jmp_addr_0x005426b2:    {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x005426b2    8b4908
                         push               0x3                                           // 0x005426b5    6a03
                         push               0x1                                           // 0x005426b7    6a01
                         push               0x28                                          // 0x005426b9    6a28
                         push               ecx                                           // 0x005426bb    51
                         push               0x000001f4                                    // 0x005426bc    68f4010000
                         push               0x00000262                                    // 0x005426c1    6862020000
                         push               0x2                                           // 0x005426c6    6a02
                         mov.s              ecx, eax                                      // 0x005426c8    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x005426ca    e891abecff
                         {disp8} jmp        _jmp_addr_0x005426d3                          // 0x005426cf    eb02
_jmp_addr_0x005426d1:    xor.s              eax, eax                                      // 0x005426d1    33c0
_jmp_addr_0x005426d3:    {disp8} mov        dword ptr [edi + 0x18], eax                   // 0x005426d3    894718
                         xor.s              esi, esi                                      // 0x005426d6    33f6
                         {disp8} lea        ebp, dword ptr [edi + 0x20]                   // 0x005426d8    8d6f20
_jmp_addr_0x005426db:    push               0x00000a7d                                    // 0x005426db    687d0a0000
                         push               0x00bea568                                    // 0x005426e0    6868a5be00
                         push               0x00000294                                    // 0x005426e5    6894020000
                         call               ___nw__FUl                                    // 0x005426ea    e8a1902900
                         add                esp, 0x0c                                     // 0x005426ef    83c40c
                         cmp.s              eax, ebx                                      // 0x005426f2    3bc3
                         {disp8} je         _jmp_addr_0x00542737                          // 0x005426f4    7441
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30a6f4]        // 0x005426f6    8b15f406cd00
                         push               0x1                                           // 0x005426fc    6a01
                         push               0x40                                          // 0x005426fe    6a40
                         push               ebx                                           // 0x00542700    53
                         push               0x4                                           // 0x00542701    6a04
                         push               esi                                           // 0x00542703    56
                         push               edx                                           // 0x00542704    52
                         mov.s              edx, esi                                      // 0x00542705    8bd6
                         and                edx, 0x07                                     // 0x00542707    83e207
                         mov.s              ecx, edx                                      // 0x0054270a    8bca
                         shl                ecx, 6                                        // 0x0054270c    c1e106
                         {disp8} lea        edx, dword ptr [ecx + edx * 0x1 + 0x23]       // 0x0054270f    8d541123
                         xor.s              ecx, ecx                                      // 0x00542713    33c9
                         cmp                esi, 0x08                                     // 0x00542715    83fe08
                         setge              cl                                            // 0x00542718    0f9dc1
                         push               edx                                           // 0x0054271b    52
                         {disp8} lea        edx, dword ptr [esi + 0x64]                   // 0x0054271c    8d5664
                         dec                ecx                                           // 0x0054271f    49
                         and                ecx, 0xfffffdc0                               // 0x00542720    81e1c0fdffff
                         add                ecx, 0x00000290                               // 0x00542726    81c190020000
                         push               ecx                                           // 0x0054272c    51
                         push               edx                                           // 0x0054272d    52
                         mov.s              ecx, eax                                      // 0x0054272e    8bc8
                         call               @__ct__12SetupPictureFiiiP12LH3DMaterialiibib@38                          // 0x00542730    e89bdeecff
                         {disp8} jmp        _jmp_addr_0x00542739                          // 0x00542735    eb02
_jmp_addr_0x00542737:    xor.s              eax, eax                                      // 0x00542737    33c0
_jmp_addr_0x00542739:    {disp8} mov        dword ptr [ebp + 0x00], eax                   // 0x00542739    894500
                         inc                esi                                           // 0x0054273c    46
                         add                ebp, 0x04                                     // 0x0054273d    83c504
                         cmp                esi, 0x10                                     // 0x00542740    83fe10
                         {disp32} mov       dword ptr [eax + 0x0000027c], 0xffffffff      // 0x00542743    c7807c020000ffffffff
                         {disp8} jl         _jmp_addr_0x005426db                          // 0x0054274d    7c8c
                         push               0x00000a81                                    // 0x0054274f    68810a0000
                         push               0x00bea568                                    // 0x00542754    6868a5be00
                         push               0x0000025c                                    // 0x00542759    685c020000
                         call               ___nw__FUl                                    // 0x0054275e    e82d902900
                         add                esp, 0x0c                                     // 0x00542763    83c40c
                         cmp.s              eax, ebx                                      // 0x00542766    3bc3
                         pop                esi                                           // 0x00542768    5e
                         pop                ebp                                           // 0x00542769    5d
                         {disp8} je         _jmp_addr_0x0054278b                          // 0x0054276a    741f
                         push               0x4                                           // 0x0054276c    6a04
                         push               ebx                                           // 0x0054276e    53
                         push               0x60                                          // 0x0054276f    6a60
                         push               0x009cee0c                                    // 0x00542771    680cee9c00
                         push               0x000001c2                                    // 0x00542776    68c2010000
                         push               0x00000160                                    // 0x0054277b    6860010000
                         push               0xb                                           // 0x00542780    6a0b
                         mov.s              ecx, eax                                      // 0x00542782    8bc8
                         call               @__ct__14SetupBigButtonFiiiPwiii@36           // 0x00542784    e8d7aaecff
                         {disp8} jmp        _jmp_addr_0x0054278d                          // 0x00542789    eb02
_jmp_addr_0x0054278b:    xor.s              eax, eax                                      // 0x0054278b    33c0
_jmp_addr_0x0054278d:    push               ebx                                           // 0x0054278d    53
                         {disp8} mov        dword ptr [edi + 0x1c], eax                   // 0x0054278e    89471c
                         push               0x00003000                                    // 0x00542791    6800300000
                         {disp32} lea       eax, dword ptr [edi + 0x000000a8]             // 0x00542796    8d87a8000000
                         push               eax                                           // 0x0054279c    50
                         push               0x00bea71c                                    // 0x0054279d    681ca7be00
                         call               _LHLoadData__FPcPvUlPUl                       // 0x005427a2    e849a62700
                         {disp8} mov        ecx, dword ptr [edi + 0x60]                   // 0x005427a7    8b4f60
                         mov                eax, 0x3f000000                               // 0x005427aa    b80000003f
                         {disp32} mov       dword ptr [ecx + 0x00000250], eax             // 0x005427af    898150020000
                         {disp8} mov        edx, dword ptr [edi + 0x64]                   // 0x005427b5    8b5764
                         add                esp, 0x10                                     // 0x005427b8    83c410
                         {disp32} mov       dword ptr [edx + 0x00000250], eax             // 0x005427bb    898250020000
                         {disp32} mov       dword ptr [edi + 0x0000320c], ebx             // 0x005427c1    899f0c320000
                         {disp32} mov       byte ptr [edi + 0x00003210], bl               // 0x005427c7    889f10320000
                         pop                edi                                           // 0x005427cd    5f
                         pop                ebx                                           // 0x005427ce    5b
                         ret                0x000c                                        // 0x005427cf    c20c00
                         nop                                                              // 0x005427d2    90
                         nop                                                              // 0x005427d3    90
                         nop                                                              // 0x005427d4    90
                         nop                                                              // 0x005427d5    90
                         nop                                                              // 0x005427d6    90
                         nop                                                              // 0x005427d7    90
                         nop                                                              // 0x005427d8    90
                         nop                                                              // 0x005427d9    90
                         nop                                                              // 0x005427da    90
                         nop                                                              // 0x005427db    90
                         nop                                                              // 0x005427dc    90
                         nop                                                              // 0x005427dd    90
                         nop                                                              // 0x005427de    90
                         nop                                                              // 0x005427df    90
?Destroy@TattooEditor@@UAEXXZ:
                         call               ?Destroy@DialogBoxBase@@UAEXXZ                // 0x005427e0    e8ab0dfdff
                         {disp32} mov       dword ptr [data_bytes + 0x30ab70], 0x00000000 // 0x005427e5    c705700bcd0000000000
                         ret                                                              // 0x005427ef    c3
_jmp_addr_0x005427f0:    sub                esp, 0x0000011c                               // 0x005427f0    81ec1c010000
                         push               ebx                                           // 0x005427f6    53
                         push               ebp                                           // 0x005427f7    55
                         push               esi                                           // 0x005427f8    56
                         mov.s              ebx, ecx                                      // 0x005427f9    8bd9
                         {disp32} mov       esi, dword ptr [ebx + 0x0000320c]             // 0x005427fb    8bb30c320000
                         test               esi, esi                                      // 0x00542801    85f6
                         push               edi                                           // 0x00542803    57
                         {disp8} je         _jmp_addr_0x00542824                          // 0x00542804    741e
                         {disp32} mov       al, byte ptr [ebx + 0x00003210]               // 0x00542806    8a8310320000
                         test               al, al                                        // 0x0054280c    84c0
                         {disp8} je         _jmp_addr_0x00542824                          // 0x0054280e    7414
                         test               esi, esi                                      // 0x00542810    85f6
                         {disp8} je         _jmp_addr_0x00542824                          // 0x00542812    7410
                         mov.s              ecx, esi                                      // 0x00542814    8bce
                         call               _jmp_addr_0x00480240                          // 0x00542816    e825daf3ff
                         push               esi                                           // 0x0054281b    56
                         call               ??3@YAXPAX@Z                                  // 0x0054281c    e877c62600
                         add                esp, 0x04                                     // 0x00542821    83c404
_jmp_addr_0x00542824:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x6a8]          // 0x00542824    8b15a8968a00
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x0054282a    8d44241c
                         push               eax                                           // 0x0054282e    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0054282f    8d4c2430
                         {disp8} mov        dword ptr [esp + 0x20], 0x000000ff            // 0x00542833    c7442420ff000000
                         mov                eax, dword ptr [edx]                          // 0x0054283b    8b02
                         push               ecx                                           // 0x0054283d    51
                         push               eax                                           // 0x0054283e    50
                         call               dword ptr [rdata_bytes + 0x5f0]               // 0x0054283f    ff15f0958a00
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x00542845    8d4c2438
                         push               ecx                                           // 0x00542849    51
                         call               _jmp_addr_0x004e7310                          // 0x0054284a    e8c14afaff
                         add                esp, 0x10                                     // 0x0054284f    83c410
                         test               eax, eax                                      // 0x00542852    85c0
                         {disp32} mov       dword ptr [ebx + 0x0000320c], eax             // 0x00542854    89830c320000
                         {disp32} jne       _jmp_addr_0x005428fa                          // 0x0054285a    0f859a000000
                         push               0x00000aa5                                    // 0x00542860    68a50a0000
                         push               0x00bea568                                    // 0x00542865    6868a5be00
                         push               0x000057b8                                    // 0x0054286a    68b8570000
                         call               ___nw__FUl                                    // 0x0054286f    e81c8f2900
                         add                esp, 0x0c                                     // 0x00542874    83c40c
                         test               eax, eax                                      // 0x00542877    85c0
                         {disp8} je         _jmp_addr_0x005428a5                          // 0x00542879    742a
                         push               0x0                                           // 0x0054287b    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0054287d    8d542424
                         push               edx                                           // 0x00542881    52
                         push               0x0                                           // 0x00542882    6a00
                         mov.s              ecx, eax                                      // 0x00542884    8bc8
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x00542886    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0054288e    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00542896    c744243400000000
                         call               @__ct__12LH3DCreatureFP8CreatureRC7LHPointPv@20                          // 0x0054289e    e8cdcef3ff
                         {disp8} jmp        _jmp_addr_0x005428a7                          // 0x005428a3    eb02
_jmp_addr_0x005428a5:    xor.s              eax, eax                                      // 0x005428a5    33c0
_jmp_addr_0x005428a7:    {disp32} mov       dword ptr [ebx + 0x0000320c], eax             // 0x005428a7    89830c320000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x9730]          // 0x005428ad    8b0d30f79c00
                         mov                edx, dword ptr [eax]                          // 0x005428b3    8b10
                         push               0x0                                           // 0x005428b5    6a00
                         push               ecx                                           // 0x005428b7    51
                         mov.s              ecx, eax                                      // 0x005428b8    8bc8
                         call               dword ptr [edx + 0x20]                        // 0x005428ba    ff5220
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000320c]             // 0x005428bd    8b8b0c320000
                         mov                edx, dword ptr [ecx]                          // 0x005428c3    8b11
                         push               0x3f800000                                    // 0x005428c5    680000803f
                         call               dword ptr [edx + 8]                           // 0x005428ca    ff5208
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000320c]             // 0x005428cd    8b8b0c320000
                         mov                eax, 0x3f000000                               // 0x005428d3    b80000003f
                         {disp32} mov       dword ptr [ecx + 0x000000a4], eax             // 0x005428d8    8981a4000000
                         {disp32} mov       edx, dword ptr [ebx + 0x0000320c]             // 0x005428de    8b930c320000
                         {disp32} mov       dword ptr [edx + 0x000000ac], eax             // 0x005428e4    8982ac000000
                         {disp32} mov       eax, dword ptr [ebx + 0x0000320c]             // 0x005428ea    8b830c320000
                         {disp32} mov       dword ptr [eax + 0x0000009c], 0x00000000      // 0x005428f0    c7809c00000000000000
_jmp_addr_0x005428fa:    {disp32} mov       ecx, dword ptr [ebx + 0x0000320c]             // 0x005428fa    8b8b0c320000
                         mov                edx, dword ptr [ecx]                          // 0x00542900    8b11
                         push               0x3f800000                                    // 0x00542902    680000803f
                         call               dword ptr [edx + 8]                           // 0x00542907    ff5208
                         mov                ecx, 0x000024b0                               // 0x0054290a    b9b0240000
                         sub.s              ecx, ebx                                      // 0x0054290f    2bcb
                         mov                ebp, 0x00002490                               // 0x00542911    bd90240000
                         sub.s              ebp, ebx                                      // 0x00542916    2beb
                         {disp32} lea       esi, dword ptr [ebx + 0x000031ec]             // 0x00542918    8db3ec310000
                         {disp32} lea       edi, dword ptr [ebx + 0x000030ac]             // 0x0054291e    8dbbac300000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00542924    894c2418
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00542928    896c2414
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000008            // 0x0054292c    c744241008000000
_jmp_addr_0x00542934:    {disp32} mov       eax, dword ptr [ebx + 0x0000320c]             // 0x00542934    8b830c320000
                         lea                edx, dword ptr [ecx + esi * 0x1]              // 0x0054293a    8d1431
                         cmp                dword ptr [edx + eax * 0x1], 0x00             // 0x0054293d    833c0200
                         {disp8} je         _jmp_addr_0x00542970                          // 0x00542941    742d
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f0]             // 0x00542943    8b88f0470000
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x00542949    8b9098000000
                         {disp32} mov       edx, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x0054294f    8b9490b4000000
                         add.s              ebp, esi                                      // 0x00542956    03ee
                         add.s              ebp, eax                                      // 0x00542958    03e8
                         push               ebp                                           // 0x0054295a    55
                         push               ecx                                           // 0x0054295b    51
                         push               edx                                           // 0x0054295c    52
                         mov.s              ecx, edi                                      // 0x0054295d    8bcf
                         call               _jmp_addr_0x00866640                          // 0x0054295f    e8dc3c3200
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00542964    8b6c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00542968    8b4c2418
                         mov                dword ptr [esi], eax                          // 0x0054296c    8906
                         {disp8} jmp        _jmp_addr_0x00542976                          // 0x0054296e    eb06
_jmp_addr_0x00542970:    mov                dword ptr [esi], 0x00000000                   // 0x00542970    c70600000000
_jmp_addr_0x00542976:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00542976    8b442410
                         add                esi, 0x04                                     // 0x0054297a    83c604
                         add                edi, 0x28                                     // 0x0054297d    83c728
                         dec                eax                                           // 0x00542980    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00542981    89442410
                         {disp8} jne        _jmp_addr_0x00542934                          // 0x00542985    75ad
                         {disp32} lea       ebp, dword ptr [ebx + 0x00000088]             // 0x00542987    8dab88000000
                         xor.s              eax, eax                                      // 0x0054298d    33c0
                         mov                ecx, 0x00000008                               // 0x0054298f    b908000000
                         mov.s              edi, ebp                                      // 0x00542994    8bfd
                         rep stosd                                                        // 0x00542996    f3ab
                         mov.s              eax, ebp                                      // 0x00542998    8bc5
                         mov                ecx, 0x00000008                               // 0x0054299a    b908000000
_jmp_addr_0x0054299f:    or                 byte ptr [eax], 0xf0                          // 0x0054299f    8008f0
                         add                eax, 0x04                                     // 0x005429a2    83c004
                         dec                ecx                                           // 0x005429a5    49
                         {disp8} jne        _jmp_addr_0x0054299f                          // 0x005429a6    75f7
                         {disp8} lea        edx, dword ptr [ebx + 0x68]                   // 0x005429a8    8d5368
                         xor.s              eax, eax                                      // 0x005429ab    33c0
                         mov                ecx, 0x00000008                               // 0x005429ad    b908000000
                         mov.s              edi, edx                                      // 0x005429b2    8bfa
                         rep stosd                                                        // 0x005429b4    f3ab
                         mov.s              eax, edx                                      // 0x005429b6    8bc2
                         mov                ecx, 0x00000008                               // 0x005429b8    b908000000
_jmp_addr_0x005429bd:    or                 byte ptr [eax], 0xf0                          // 0x005429bd    8008f0
                         add                eax, 0x04                                     // 0x005429c0    83c004
                         dec                ecx                                           // 0x005429c3    49
                         {disp8} jne        _jmp_addr_0x005429bd                          // 0x005429c4    75f7
                         {disp32} mov       esi, dword ptr [_game]                        // 0x005429c6    8b355c19d000
                         xor.s              eax, eax                                      // 0x005429cc    33c0
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]               // 0x005429ce    8a86595a2000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x005429d4    8d0c80
                         lea                ecx, dword ptr [eax + ecx * 0x8]              // 0x005429d7    8d0cc8
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x005429da    8d0448
                         shl                eax, 5                                        // 0x005429dd    c1e005
                         {disp32} mov       eax, dword ptr [eax + esi * 0x1 + 0x00000a64] // 0x005429e0    8b8430640a0000
                         test               eax, eax                                      // 0x005429e7    85c0
                         {disp8} je         _jmp_addr_0x00542a2a                          // 0x005429e9    743f
                         {disp32} lea       esi, dword ptr [eax + 0x00001170]             // 0x005429eb    8db070110000
                         xor.s              eax, eax                                      // 0x005429f1    33c0
                         mov                ecx, 0x00000008                               // 0x005429f3    b908000000
                         mov.s              edi, ebp                                      // 0x005429f8    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x005429fa    f3a5
                         {disp32} mov       esi, dword ptr [_game]                        // 0x005429fc    8b355c19d000
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]               // 0x00542a02    8a86595a2000
                         mov.s              edi, edx                                      // 0x00542a08    8bfa
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00542a0a    8d0c80
                         lea                ecx, dword ptr [eax + ecx * 0x8]              // 0x00542a0d    8d0cc8
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x00542a10    8d0448
                         shl                eax, 5                                        // 0x00542a13    c1e005
                         {disp32} mov       esi, dword ptr [eax + esi * 0x1 + 0x00000a64] // 0x00542a16    8bb430640a0000
                         add                esi, 0x00001170                               // 0x00542a1d    81c670110000
                         mov                ecx, 0x00000008                               // 0x00542a23    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00542a28    f3a5
_jmp_addr_0x00542a2a:    {disp32} mov       ecx, dword ptr [ebx + 0x0000320c]             // 0x00542a2a    8b8b0c320000
                         xor.s              eax, eax                                      // 0x00542a30    33c0
                         {disp32} mov       dword ptr [ecx + 0x00004a94], ebp             // 0x00542a32    89a9944a0000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00542a38    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00542a3e    8a81595a2000
                         push               0x0                                           // 0x00542a44    6a00
                         push               0x1                                           // 0x00542a46    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00542a48    8d1480
                         push               eax                                           // 0x00542a4b    50
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00542a4c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00542a4f    8d0450
                         shl                eax, 5                                        // 0x00542a52    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00542a55    8b8c08640a0000
                         push               ecx                                           // 0x00542a5c    51
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x00542a5d    6838bdd400
                         call               _jmp_addr_0x005dea60                          // 0x00542a62    e8f9bf0900
                         {disp32} mov       ecx, dword ptr [ebx + 0x0000320c]             // 0x00542a67    8b8b0c320000
                         mov                edx, dword ptr [ecx]                          // 0x00542a6d    8b11
                         add                esp, 0x14                                     // 0x00542a6f    83c414
                         call               dword ptr [edx + 0x10]                        // 0x00542a72    ff5210
                         pop                edi                                           // 0x00542a75    5f
                         pop                esi                                           // 0x00542a76    5e
                         pop                ebp                                           // 0x00542a77    5d
                         {disp32} mov       byte ptr [ebx + 0x00003210], 0x01             // 0x00542a78    c6831032000001
                         pop                ebx                                           // 0x00542a7f    5b
                         add                esp, 0x0000011c                               // 0x00542a80    81c41c010000
                         ret                                                              // 0x00542a86    c3
                         nop                                                              // 0x00542a87    90
                         nop                                                              // 0x00542a88    90
                         nop                                                              // 0x00542a89    90
                         nop                                                              // 0x00542a8a    90
                         nop                                                              // 0x00542a8b    90
                         nop                                                              // 0x00542a8c    90
                         nop                                                              // 0x00542a8d    90
                         nop                                                              // 0x00542a8e    90
                         nop                                                              // 0x00542a8f    90
_jmp_addr_0x00542a90:    sub                esp, 0x14                                     // 0x00542a90    83ec14
                         push               ebx                                           // 0x00542a93    53
                         push               esi                                           // 0x00542a94    56
                         mov.s              esi, ecx                                      // 0x00542a95    8bf1
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542a97    8b8e0c320000
                         xor.s              ebx, ebx                                      // 0x00542a9d    33db
                         cmp.s              ecx, ebx                                      // 0x00542a9f    3bcb
                         {disp32} je        _jmp_addr_0x00542bbc                          // 0x00542aa1    0f8415010000
                         cmp                byte ptr [esi + 0x00003210], bl               // 0x00542aa7    389e10320000
                         {disp32} je        _jmp_addr_0x00542bbc                          // 0x00542aad    0f8409010000
                         {disp32} mov       edx, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x00542ab3    8b153481c300
                         mov                eax, dword ptr [ecx]                          // 0x00542ab9    8b01
                         push               edx                                           // 0x00542abb    52
                         call               dword ptr [eax + 0x14]                        // 0x00542abc    ff5014
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542abf    8b8e0c320000
                         mov                eax, dword ptr [ecx]                          // 0x00542ac5    8b01
                         call               dword ptr [eax + 0x18]                        // 0x00542ac7    ff5018
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542aca    8b8e0c320000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000482c]             // 0x00542ad0    8b892c480000
                         mov                eax, dword ptr [ecx]                          // 0x00542ad6    8b01
                         mov                edx, 0x00000001                               // 0x00542ad8    ba01000000
                         call               dword ptr [eax + 0xa0]                        // 0x00542add    ff90a0000000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542ae3    8b8e0c320000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000482c]             // 0x00542ae9    8b892c480000
                         mov                eax, dword ptr [ecx]                          // 0x00542aef    8b01
                         push               ebx                                           // 0x00542af1    53
                         or                 edx, 0xffffffff                               // 0x00542af2    83caff
                         call               dword ptr [eax + 0x2c]                        // 0x00542af5    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c0]        // 0x00542af8    8b0dc052e800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00542afe    8b15c452e800
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x00542b04    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00542b08    8954240c
                         push               0x41200000                                    // 0x00542b0c    6800002041
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00542b11    8d542414
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x00542b15    8d4c240c
                         call               _jmp_addr_0x0081b370                          // 0x00542b19    e852882d00
                         cmp                dword ptr [data_bytes + 0x50424c], 0x04       // 0x00542b1e    833d4ca2ec0004
                         {disp8} je         _jmp_addr_0x00542b45                          // 0x00542b25    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00542b27    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x00542b2c    8b08
                         push               0x4                                           // 0x00542b2e    6a04
                         push               0x17                                          // 0x00542b30    6a17
                         push               eax                                           // 0x00542b32    50
                         call               dword ptr [ecx + 0x50]                        // 0x00542b33    ff5150
                         neg                eax                                           // 0x00542b36    f7d8
                         sbb.s              eax, eax                                      // 0x00542b38    1bc0
                         and                eax, 0xfffffffb                               // 0x00542b3a    83e0fb
                         add                eax, 0x04                                     // 0x00542b3d    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00542b40    a34ca2ec00
_jmp_addr_0x00542b45:    cmp                dword ptr [data_bytes + 0x504228], 0x01       // 0x00542b45    833d28a2ec0001
                         {disp8} je         _jmp_addr_0x00542b6a                          // 0x00542b4c    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00542b4e    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00542b53    8b10
                         push               0x1                                           // 0x00542b55    6a01
                         push               0xe                                           // 0x00542b57    6a0e
                         push               eax                                           // 0x00542b59    50
                         call               dword ptr [edx + 0x50]                        // 0x00542b5a    ff5250
                         neg                eax                                           // 0x00542b5d    f7d8
                         sbb.s              eax, eax                                      // 0x00542b5f    1bc0
                         and                eax, 0xfffffffe                               // 0x00542b61    83e0fe
                         inc                eax                                           // 0x00542b64    40
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x00542b65    a328a2ec00
_jmp_addr_0x00542b6a:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00542b6a    8b0dc452e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00542b70    a1c052e800
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x00542b75    894c240c
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb10], eax        // 0x00542b79    a3101bea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb14], ecx        // 0x00542b7e    890d141bea00
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542b84    8b8e0c320000
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x00542b8a    89442408
                         call               _jmp_addr_0x0048e260                          // 0x00542b8e    e8cdb6f4ff
                         cmp                dword ptr [data_bytes + 0x286d0c], ebx        // 0x00542b93    391d0ccdc400
                         {disp8} jne        _jmp_addr_0x00542c08                          // 0x00542b99    756d
                         cmp                dword ptr [data_bytes + 0x286d14], ebx        // 0x00542b9b    391d14cdc400
                         {disp8} jne        _jmp_addr_0x00542c08                          // 0x00542ba1    7565
                         {disp32} mov       dword ptr [data_bytes + 0x30ab74], ebx        // 0x00542ba3    891d740bcd00
_jmp_addr_0x00542ba9:    {disp32} mov       eax, dword ptr [esi + 0x0000320c]             // 0x00542ba9    8b860c320000
                         add                eax, 0x000048c0                               // 0x00542baf    05c0480000
                         {disp8} mov        dword ptr [eax + 0x08], ebx                   // 0x00542bb4    895808
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x00542bb7    895804
                         mov                dword ptr [eax], ebx                          // 0x00542bba    8918
_jmp_addr_0x00542bbc:    cmp                dword ptr [esi + 0x0000320c], ebx             // 0x00542bbc    399e0c320000
                         {disp8} je         _jmp_addr_0x00542c02                          // 0x00542bc2    743e
                         cmp                dword ptr [esi + 0x00003214], ebx             // 0x00542bc4    399e14320000
                         {disp8} jl         _jmp_addr_0x00542c02                          // 0x00542bca    7c36
                         test               byte ptr [data_bytes + 0x4bf304], 0x01        // 0x00542bcc    f6050453e80001
                         {disp8} je         _jmp_addr_0x00542c02                          // 0x00542bd3    742d
                         {disp32} mov       ecx, dword ptr [esi + 0x0000321c]             // 0x00542bd5    8b8e1c320000
                         {disp32} mov       edx, dword ptr [esi + 0x00003218]             // 0x00542bdb    8b9618320000
                         push               0x0000a000                                    // 0x00542be1    6800a00000
                         push               0xffff6000                                    // 0x00542be6    680060ffff
                         push               ebx                                           // 0x00542beb    53
                         push               ebx                                           // 0x00542bec    53
                         push               0x10                                          // 0x00542bed    6a10
                         push               ebx                                           // 0x00542bef    53
                         push               0x1                                           // 0x00542bf0    6a01
                         sub                ecx, 0x08                                     // 0x00542bf2    83e908
                         push               ecx                                           // 0x00542bf5    51
                         sub                edx, 0x08                                     // 0x00542bf6    83ea08
                         push               edx                                           // 0x00542bf9    52
                         call               ?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z // 0x00542bfa    e851f5ecff
                         add                esp, 0x24                                     // 0x00542bff    83c424
_jmp_addr_0x00542c02:    pop                esi                                           // 0x00542c02    5e
                         pop                ebx                                           // 0x00542c03    5b
                         add                esp, 0x14                                     // 0x00542c04    83c414
                         ret                                                              // 0x00542c07    c3
_jmp_addr_0x00542c08:    cmp                dword ptr [data_bytes + 0x30ab74], ebx        // 0x00542c08    391d740bcd00
                         push               edi                                           // 0x00542c0e    57
                         {disp32} mov       edi, dword ptr [__imp__GetTickCount@4]        // 0x00542c0f    8b3dc4918a00
                         {disp8} jne        _jmp_addr_0x00542c1e                          // 0x00542c15    7507
                         call               edi                                           // 0x00542c17    ffd7
                         {disp32} mov       dword ptr [data_bytes + 0x30ab74], eax        // 0x00542c19    a3740bcd00
_jmp_addr_0x00542c1e:    call               edi                                           // 0x00542c1e    ffd7
                         sub                eax, dword ptr [data_bytes + 0x30ab74]        // 0x00542c20    2b05740bcd00
                         cmp                eax, 0x000005dc                               // 0x00542c26    3ddc050000
                         pop                edi                                           // 0x00542c2b    5f
                         {disp32} jae       _jmp_addr_0x00542ba9                          // 0x00542c2c    0f8377ffffff
                         {disp32} mov       ecx, dword ptr [esi + 0x0000320c]             // 0x00542c32    8b8e0c320000
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00542c38    8d442410
                         push               eax                                           // 0x00542c3c    50
                         call               _jmp_addr_0x00482c90                          // 0x00542c3d    e84e00f4ff
                         {disp32} jmp       _jmp_addr_0x00542bbc                          // 0x00542c42    e975ffffff
                         nop                                                              // 0x00542c47    90
                         nop                                                              // 0x00542c48    90
                         nop                                                              // 0x00542c49    90
                         nop                                                              // 0x00542c4a    90
                         nop                                                              // 0x00542c4b    90
                         nop                                                              // 0x00542c4c    90
                         nop                                                              // 0x00542c4d    90
                         nop                                                              // 0x00542c4e    90
                         nop                                                              // 0x00542c4f    90
_jmp_addr_0x00542c50:    sub                esp, 0x44                                     // 0x00542c50    83ec44
                         push               ebx                                           // 0x00542c53    53
                         push               ebp                                           // 0x00542c54    55
                         mov.s              ebp, ecx                                      // 0x00542c55    8be9
                         {disp32} mov       eax, dword ptr [ebp + 0x0000320c]             // 0x00542c57    8b850c320000
                         xor.s              ebx, ebx                                      // 0x00542c5d    33db
                         cmp.s              eax, ebx                                      // 0x00542c5f    3bc3
                         push               esi                                           // 0x00542c61    56
                         push               edi                                           // 0x00542c62    57
                         {disp32} je        _jmp_addr_0x00542d08                          // 0x00542c63    0f849f000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30a6e4]        // 0x00542c69    a1e406cd00
                         sub                eax, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x00542c6e    2b053481c300
                         cmp.s              eax, ebx                                      // 0x00542c74    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e4], eax        // 0x00542c76    a3e406cd00
                         {disp32} jg        _jmp_addr_0x00542d08                          // 0x00542c7b    0f8f87000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30a6e0]        // 0x00542c81    a1e006cd00
                         inc                eax                                           // 0x00542c86    40
                         cmp                eax, 0x0a                                     // 0x00542c87    83f80a
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e0], eax        // 0x00542c8a    a3e006cd00
                         {disp8} jge        _jmp_addr_0x00542cd5                          // 0x00542c8f    7d44
                         push               0x3                                           // 0x00542c91    6a03
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00542c93    e8d8b81900
                         add                esp, 0x04                                     // 0x00542c98    83c404
                         sub.s              eax, ebx                                      // 0x00542c9b    2bc3
                         {disp8} je         _jmp_addr_0x00542cc6                          // 0x00542c9d    7427
                         dec                eax                                           // 0x00542c9f    48
                         {disp8} je         _jmp_addr_0x00542cb7                          // 0x00542ca0    7415
                         dec                eax                                           // 0x00542ca2    48
                         {disp8} jne        _jmp_addr_0x00542cf1                          // 0x00542ca3    754c
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542ca5    8b8d0c320000
                         push               0x000000ca                                    // 0x00542cab    68ca000000
                         call               _jmp_addr_0x00484360                          // 0x00542cb0    e8ab16f4ff
                         {disp8} jmp        _jmp_addr_0x00542cf1                          // 0x00542cb5    eb3a
_jmp_addr_0x00542cb7:    {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542cb7    8b8d0c320000
                         push               0x3c                                          // 0x00542cbd    6a3c
                         call               _jmp_addr_0x00484b00                          // 0x00542cbf    e83c1ef4ff
                         {disp8} jmp        _jmp_addr_0x00542cf1                          // 0x00542cc4    eb2b
_jmp_addr_0x00542cc6:    {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542cc6    8b8d0c320000
                         push               0x41                                          // 0x00542ccc    6a41
                         call               _jmp_addr_0x00484b00                          // 0x00542cce    e82d1ef4ff
                         {disp8} jmp        _jmp_addr_0x00542cf1                          // 0x00542cd3    eb1c
_jmp_addr_0x00542cd5:    {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542cd5    8b8d0c320000
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00542cdb    e8f015f4ff
                         test               eax, eax                                      // 0x00542ce0    85c0
                         {disp8} jne        _jmp_addr_0x00542cf1                          // 0x00542ce2    750d
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542ce4    8b8d0c320000
                         push               0x26                                          // 0x00542cea    6a26
                         call               _jmp_addr_0x00484310                          // 0x00542cec    e81f16f4ff
_jmp_addr_0x00542cf1:    push               0x00004e20                                    // 0x00542cf1    68204e0000
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00542cf6    e875b81900
                         add                esp, 0x04                                     // 0x00542cfb    83c404
                         add                eax, 0x00004e20                               // 0x00542cfe    05204e0000
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e4], eax        // 0x00542d03    a3e406cd00
_jmp_addr_0x00542d08:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00542d08    8b4d04
                         xor.s              eax, eax                                      // 0x00542d0b    33c0
                         {disp32} mov       al, byte ptr [ebp + 0x00003210]               // 0x00542d0d    8a8510320000
                         {disp32} mov       dword ptr [ecx + 0x00000094], eax             // 0x00542d13    898194000000
                         cmp                dword ptr [ebp + 0x0000320c], ebx             // 0x00542d19    399d0c320000
                         {disp32} je        _jmp_addr_0x005431f4                          // 0x00542d1f    0f84cf040000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00542d25    a1c052e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00542d2a    8b0dc452e800
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x00542d30    8d542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00542d34    89442424
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00542d38    8944242c
                         push               edx                                           // 0x00542d3c    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00542d3d    8d442428
                         push               eax                                           // 0x00542d41    50
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00542d42    894c2438
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00542d46    894c2428
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00542d4a    e8e1eeecff
                         fstp               st(0)                                         // 0x00542d4f    ddd8
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00542d51    8b4c2428
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00542d55    8b54242c
                         add                esp, 0x08                                     // 0x00542d59    83c408
                         push               ecx                                           // 0x00542d5c    51
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00542d5d    8b4d04
                         push               edx                                           // 0x00542d60    52
                         call               _jmp_addr_0x00408100                          // 0x00542d61    e89a53ecff
                         test               byte ptr [data_bytes + 0x4bf304], 0x01        // 0x00542d66    f6050453e80001
                         {disp8} je         _jmp_addr_0x00542daa                          // 0x00542d6d    743b
                         push               0x00004e20                                    // 0x00542d6f    68204e0000
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00542d74    e8f7b71900
                         add                eax, 0x00004e20                               // 0x00542d79    05204e0000
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e4], eax        // 0x00542d7e    a3e406cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e0], ebx        // 0x00542d83    891de006cd00
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542d89    8b8d0c320000
                         add                esp, 0x04                                     // 0x00542d8f    83c404
                         call               ?IsPerformingBodyAction@LH3DCreature@@QAE_NXZ // 0x00542d92    e83915f4ff
                         test               eax, eax                                      // 0x00542d97    85c0
                         {disp8} je         _jmp_addr_0x00542daa                          // 0x00542d99    740f
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00542d9b    8b8d0c320000
                         push               0x1                                           // 0x00542da1    6a01
                         push               0x1                                           // 0x00542da3    6a01
                         call               _jmp_addr_0x0048f710                          // 0x00542da5    e866c9f4ff
_jmp_addr_0x00542daa:    or                 esi, 0xffffffff                               // 0x00542daa    83ceff
                         {disp32} lea       ecx, dword ptr [ebp + 0x000030ac]             // 0x00542dad    8d8dac300000
                         {disp32} lea       eax, dword ptr [ebp + 0x000031ec]             // 0x00542db3    8d85ec310000
                         {disp32} mov       dword ptr [ebp + 0x00003214], esi             // 0x00542db9    89b514320000
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00542dbf    894c2428
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00542dc3    8944241c
_jmp_addr_0x00542dc7:    {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00542dc7    8b54241c
                         cmp                dword ptr [edx], 0x00                         // 0x00542dcb    833a00
                         {disp32} je        _jmp_addr_0x00542fb7                          // 0x00542dce    0f84e3010000
                         {disp32} mov       eax, dword ptr [ebp + 0x0000320c]             // 0x00542dd4    8b850c320000
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x00542dda    8d54243c
                         push               edx                                           // 0x00542dde    52
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x00542ddf    8d54244c
                         push               edx                                           // 0x00542de3    52
                         {disp32} mov       edx, dword ptr [eax + 0x000047f0]             // 0x00542de4    8b90f0470000
                         push               edx                                           // 0x00542dea    52
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x00542deb    8b9098000000
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x00542df1    8b8490b4000000
                         push               eax                                           // 0x00542df8    50
                         call               _jmp_addr_0x00867400                          // 0x00542df9    e802463200
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00542dfe    d9442448
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdb8]             // 0x00542e02    d825b81dea00
                         {disp8} fld        dword ptr [esp + 0x4c]                        // 0x00542e08    d944244c
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdbc]             // 0x00542e0c    d825bc1dea00
                         {disp8} fld        dword ptr [esp + 0x50]                        // 0x00542e12    d9442450
                         {disp32} fsub      dword ptr [data_bytes + 0x4dbdc0]             // 0x00542e16    d825c01dea00
                         fld                st(2)                                         // 0x00542e1c    d9c2
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00542e1e    d81d98a38a00
                         fnstsw             ax                                            // 0x00542e24    dfe0
                         test               ah, 0x40                                      // 0x00542e26    f6c440
                         {disp8} je         _jmp_addr_0x00542e47                          // 0x00542e29    741c
                         fld                st(1)                                         // 0x00542e2b    d9c1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00542e2d    d81d98a38a00
                         fnstsw             ax                                            // 0x00542e33    dfe0
                         test               ah, 0x40                                      // 0x00542e35    f6c440
                         {disp8} je         _jmp_addr_0x00542e47                          // 0x00542e38    740d
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00542e3a    d81598a38a00
                         fnstsw             ax                                            // 0x00542e40    dfe0
                         test               ah, 0x40                                      // 0x00542e42    f6c440
                         {disp8} jne        _jmp_addr_0x00542e71                          // 0x00542e45    752a
_jmp_addr_0x00542e47:    fld                st(0)                                         // 0x00542e47    d9c0
                         fmul               st, st(1)                                     // 0x00542e49    d8c9
                         fld                st(2)                                         // 0x00542e4b    d9c2
                         fmul               st, st(3)                                     // 0x00542e4d    d8cb
                         faddp              st(1), st                                     // 0x00542e4f    dec1
                         fld                st(3)                                         // 0x00542e51    d9c3
                         fmul               st, st(4)                                     // 0x00542e53    d8cc
                         faddp              st(1), st                                     // 0x00542e55    dec1
                         fsqrt                                                            // 0x00542e57    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00542e59    d83d90a38a00
                         fld                st(0)                                         // 0x00542e5f    d9c0
                         fmulp              st(4), st                                     // 0x00542e61    decc
                         fxch               st(2)                                         // 0x00542e63    d9ca
                         fmul               st, st(2)                                     // 0x00542e65    d8ca
                         fxch               st(2)                                         // 0x00542e67    d9ca
                         fxch               st(1)                                         // 0x00542e69    d9c9
                         fmul               st, st(1)                                     // 0x00542e6b    d8c9
                         fxch               st(1)                                         // 0x00542e6d    d9c9
                         fstp               st(0)                                         // 0x00542e6f    ddd8
_jmp_addr_0x00542e71:    {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00542e71    d944243c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00542e75    d81d98a38a00
                         fnstsw             ax                                            // 0x00542e7b    dfe0
                         test               ah, 0x40                                      // 0x00542e7d    f6c440
                         {disp8} je         _jmp_addr_0x00542ea4                          // 0x00542e80    7422
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00542e82    d9442440
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00542e86    d81d98a38a00
                         fnstsw             ax                                            // 0x00542e8c    dfe0
                         test               ah, 0x40                                      // 0x00542e8e    f6c440
                         {disp8} je         _jmp_addr_0x00542ea4                          // 0x00542e91    7411
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00542e93    d9442444
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00542e97    d81d98a38a00
                         fnstsw             ax                                            // 0x00542e9d    dfe0
                         test               ah, 0x40                                      // 0x00542e9f    f6c440
                         {disp8} jne        _jmp_addr_0x00542ee8                          // 0x00542ea2    7544
_jmp_addr_0x00542ea4:    {disp8} fld        dword ptr [esp + 0x44]                        // 0x00542ea4    d9442444
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x00542ea8    d84c2444
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00542eac    d9442440
                         {disp8} fmul       dword ptr [esp + 0x40]                        // 0x00542eb0    d84c2440
                         faddp              st(1), st                                     // 0x00542eb4    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00542eb6    d944243c
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x00542eba    d84c243c
                         faddp              st(1), st                                     // 0x00542ebe    dec1
                         fsqrt                                                            // 0x00542ec0    d9fa
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x00542ec2    d83d90a38a00
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00542ec8    d944243c
                         fmul               st, st(1)                                     // 0x00542ecc    d8c9
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x00542ece    d95c243c
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00542ed2    d9442440
                         fmul               st, st(1)                                     // 0x00542ed6    d8c9
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x00542ed8    d95c2440
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x00542edc    d9442444
                         fmul               st, st(1)                                     // 0x00542ee0    d8c9
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x00542ee2    d95c2444
                         fstp               st(0)                                         // 0x00542ee6    ddd8
_jmp_addr_0x00542ee8:    {disp8} fld        dword ptr [esp + 0x44]                        // 0x00542ee8    d9442444
                         fmul               st, st(1)                                     // 0x00542eec    d8c9
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00542eee    d9442440
                         fmul               st, st(3)                                     // 0x00542ef2    d8cb
                         faddp              st(1), st                                     // 0x00542ef4    dec1
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x00542ef6    d944243c
                         fmul               st, st(4)                                     // 0x00542efa    d8cc
                         faddp              st(1), st                                     // 0x00542efc    dec1
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26130]             // 0x00542efe    d81d30f18c00
                         fstp               st(0)                                         // 0x00542f04    ddd8
                         fnstsw             ax                                            // 0x00542f06    dfe0
                         fstp               st(0)                                         // 0x00542f08    ddd8
                         test               ah, 0x41                                      // 0x00542f0a    f6c441
                         fstp               st(0)                                         // 0x00542f0d    ddd8
                         {disp32} jne       _jmp_addr_0x00542fb7                          // 0x00542f0f    0f85a2000000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00542f15    8d4c2418
                         push               ecx                                           // 0x00542f19    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00542f1a    8d542418
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00542f1e    8d4c244c
                         call               _jmp_addr_0x008190d0                          // 0x00542f22    e8a9612d00
                         test               eax, eax                                      // 0x00542f27    85c0
                         {disp32} je        _jmp_addr_0x00542fb7                          // 0x00542f29    0f8488000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00542f2f    a1c052e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00542f34    8b0dc452e800
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00542f3a    8b542418
                         mov.s              esi, eax                                      // 0x00542f3e    8bf0
                         mov.s              edi, eax                                      // 0x00542f40    8bf8
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00542f42    89442434
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x00542f46    8944242c
                         mov.s              eax, edx                                      // 0x00542f4a    8bc2
                         sub.s              edx, ecx                                      // 0x00542f4c    2bd1
                         sub.s              eax, ecx                                      // 0x00542f4e    2bc1
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00542f50    894c2438
                         imul               eax, edx                                      // 0x00542f54    0fafc2
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00542f57    894c2438
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00542f5b    894c2430
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00542f5f    8b4c2414
                         mov.s              edx, ecx                                      // 0x00542f63    8bd1
                         sub.s              ecx, esi                                      // 0x00542f65    2bce
                         sub.s              edx, edi                                      // 0x00542f67    2bd7
                         imul               edx, ecx                                      // 0x00542f69    0fafd1
                         {disp32} mov       ecx, dword ptr [ebp + 0x00003214]             // 0x00542f6c    8b8d14320000
                         or                 esi, 0xffffffff                               // 0x00542f72    83ceff
                         add.s              eax, edx                                      // 0x00542f75    03c2
                         cmp.s              ecx, esi                                      // 0x00542f77    3bce
                         {disp8} je         _jmp_addr_0x00542f83                          // 0x00542f79    7408
                         cmp                dword ptr [ebp + 0x00003220], eax             // 0x00542f7b    398520320000
                         {disp8} jle        _jmp_addr_0x00542fb7                          // 0x00542f81    7e34
_jmp_addr_0x00542f83:    {disp32} mov       dword ptr [ebp + 0x00003220], eax             // 0x00542f83    898520320000
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00542f89    8d442418
                         push               eax                                           // 0x00542f8d    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x00542f8e    8d4c2418
                         push               ecx                                           // 0x00542f92    51
                         {disp32} mov       dword ptr [ebp + 0x00003214], ebx             // 0x00542f93    899d14320000
                         call               ?unadjust@SetupThing@@SAMAAH0@Z               // 0x00542f99    e892ececff
                         fstp               st(0)                                         // 0x00542f9e    ddd8
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00542fa0    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00542fa4    8b442420
                         add                esp, 0x08                                     // 0x00542fa8    83c408
                         {disp32} mov       dword ptr [ebp + 0x00003218], edx             // 0x00542fab    899518320000
                         {disp32} mov       dword ptr [ebp + 0x0000321c], eax             // 0x00542fb1    89851c320000
_jmp_addr_0x00542fb7:    {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x00542fb7    8b7c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x00542fbb    8b4c2428
                         inc                ebx                                           // 0x00542fbf    43
                         add                edi, 0x04                                     // 0x00542fc0    83c704
                         add                ecx, 0x28                                     // 0x00542fc3    83c128
                         cmp                ebx, 0x08                                     // 0x00542fc6    83fb08
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x00542fc9    897c241c
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00542fcd    894c2428
                         {disp32} jl        _jmp_addr_0x00542dc7                          // 0x00542fd1    0f8cf0fdffff
                         {disp32} mov       eax, dword ptr [ebp + 0x00003214]             // 0x00542fd7    8b8514320000
                         test               eax, eax                                      // 0x00542fdd    85c0
                         {disp8} jl         _jmp_addr_0x00542ff3                          // 0x00542fdf    7c12
                         cmp                dword ptr [ebp + 0x00003220], 0x00001000      // 0x00542fe1    81bd2032000000100000
                         {disp8} jle        _jmp_addr_0x00542ff3                          // 0x00542feb    7e06
                         {disp32} mov       dword ptr [ebp + 0x00003214], esi             // 0x00542fed    89b514320000
_jmp_addr_0x00542ff3:    {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00542ff3    8b4d04
                         {disp8} mov        eax, dword ptr [ecx + 0x70]                   // 0x00542ff6    8b4170
                         test               eax, eax                                      // 0x00542ff9    85c0
                         {disp8} je         _jmp_addr_0x00543006                          // 0x00542ffb    7409
                         {disp32} mov       edx, dword ptr [ebp + 0x00003214]             // 0x00542ffd    8b9514320000
                         {disp8} mov        dword ptr [eax + 0x1c], edx                   // 0x00543003    89501c
_jmp_addr_0x00543006:    {disp32} mov       eax, dword ptr [ebp + 0x00003214]             // 0x00543006    8b8514320000
                         test               eax, eax                                      // 0x0054300c    85c0
                         {disp32} jl        _jmp_addr_0x005431f4                          // 0x0054300e    0f8ce0010000
                         test               byte ptr [data_bytes + 0x4bf304], 0x01        // 0x00543014    f6050453e80001
                         {disp8} jne        _jmp_addr_0x00543054                          // 0x0054301b    7537
                         {disp32} mov       eax, dword ptr [ebp + 0x000030a8]             // 0x0054301d    8b85a8300000
                         test               eax, eax                                      // 0x00543023    85c0
                         {disp8} jl         _jmp_addr_0x00543047                          // 0x00543025    7c20
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00543027    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0054302b    8b542424
                         {disp8} mov        eax, dword ptr [ebp + eax * 0x4 + 0x20]       // 0x0054302f    8b448520
                         push               ecx                                           // 0x00543033    51
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00543034    8b4d04
                         push               edx                                           // 0x00543037    52
                         push               eax                                           // 0x00543038    50
                         push               ecx                                           // 0x00543039    51
                         push               0xb                                           // 0x0054303a    6a0b
                         call               _jmp_addr_0x00543440                          // 0x0054303c    e8ff030000
                         {disp32} mov       dword ptr [ebp + 0x000030a8], esi             // 0x00543041    89b5a8300000
_jmp_addr_0x00543047:    test               byte ptr [data_bytes + 0x4bf304], 0x01        // 0x00543047    f6050453e80001
                         {disp32} je        _jmp_addr_0x005431f4                          // 0x0054304e    0f84a0010000
_jmp_addr_0x00543054:    cmp                dword ptr [ebp + 0x000030a8], esi             // 0x00543054    39b5a8300000
                         {disp32} jne       _jmp_addr_0x005431f4                          // 0x0054305a    0f8594010000
                         {disp8} mov        edx, dword ptr [ebp + 0x04]                   // 0x00543060    8b5504
                         {disp8} mov        eax, dword ptr [edx + 0x70]                   // 0x00543063    8b4270
                         test               eax, eax                                      // 0x00543066    85c0
                         {disp8} je         _jmp_addr_0x00543078                          // 0x00543068    740e
                         {disp32} mov       cl, byte ptr [eax + 0x0000022a]               // 0x0054306a    8a882a020000
                         test               cl, cl                                        // 0x00543070    84c9
                         {disp32} jne       _jmp_addr_0x005431f4                          // 0x00543072    0f857c010000
_jmp_addr_0x00543078:    {disp32} mov       ecx, dword ptr [ebp + 0x00003214]             // 0x00543078    8b8d14320000
                         mov                esi, 0x00000007                               // 0x0054307e    be07000000
                         {disp32} lea       eax, dword ptr [ebp + 0x000000a4]             // 0x00543083    8d85a4000000
_jmp_addr_0x00543089:    xor.s              edx, edx                                      // 0x00543089    33d2
                         mov                dl, byte ptr [eax]                            // 0x0054308b    8a10
                         shr                edx, 4                                        // 0x0054308d    c1ea04
                         cmp.s              edx, ecx                                      // 0x00543090    3bd1
                         {disp8} je         _jmp_addr_0x005430a1                          // 0x00543092    740d
                         dec                esi                                           // 0x00543094    4e
                         sub                eax, 0x04                                     // 0x00543095    83e804
                         test               esi, esi                                      // 0x00543098    85f6
                         {disp8} jge        _jmp_addr_0x00543089                          // 0x0054309a    7ded
                         {disp32} jmp       _jmp_addr_0x00543161                          // 0x0054309c    e9c0000000
_jmp_addr_0x005430a1:    {disp32} mov       bl, byte ptr [ebp + esi * 0x4 + 0x00000088]   // 0x005430a1    8a9cb588000000
                         or                 bl, 0xf0                                      // 0x005430a8    80cbf0
                         xor.s              eax, eax                                      // 0x005430ab    33c0
                         mov.s              al, bl                                        // 0x005430ad    8ac3
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x00000088], bl   // 0x005430af    889cb588000000
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x005430b6    8b4d04
                         and                eax, 0x0f                                     // 0x005430b9    83e00f
                         {disp8} mov        edi, dword ptr [ebp + eax * 0x4 + 0x20]       // 0x005430bc    8b7c8520
                         push               edi                                           // 0x005430c0    57
                         call               @SetFocusControl__8SetupBoxFP12SetupControl@12// 0x005430c1    e87a60ecff
                         xor.s              eax, eax                                      // 0x005430c6    33c0
                         {disp32} mov       al, byte ptr [ebp + esi * 0x4 + 0x00000088]   // 0x005430c8    8a84b588000000
                         push               0x1                                           // 0x005430cf    6a01
                         push               0x0                                           // 0x005430d1    6a00
                         push               0x0                                           // 0x005430d3    6a00
                         mov.s              ecx, edi                                      // 0x005430d5    8bcf
                         and                eax, 0x0f                                     // 0x005430d7    83e00f
                         {disp32} mov       dword ptr [ebp + 0x000030a8], eax             // 0x005430da    8985a8300000
                         mov                edx, dword ptr [edi]                          // 0x005430e0    8b17
                         call               dword ptr [edx + 0x1c]                        // 0x005430e2    ff521c
                         {disp32} lea       ecx, dword ptr [ebp + esi * 0x4 + 0x0000008b] // 0x005430e5    8d8cb58b000000
                         {disp32} lea       eax, dword ptr [ebp + esi * 0x4 + 0x0000008a] // 0x005430ec    8d84b58a000000
                         {disp32} lea       edi, dword ptr [ebp + esi * 0x4 + 0x00000089] // 0x005430f3    8dbcb589000000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x005430fa    894c241c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x005430fe    89442428
                         {disp8} lea        ecx, dword ptr [ebp + 0x20]                   // 0x00543102    8d4d20
                         mov                esi, 0x00000010                               // 0x00543105    be10000000
_jmp_addr_0x0054310a:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0054310a    8b442428
                         mov                al, byte ptr [eax]                            // 0x0054310e    8a00
                         mov                dl, byte ptr [edi]                            // 0x00543110    8a17
                         {disp8} mov        byte ptr [esp + 0x13], al                     // 0x00543112    88442413
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00543116    8b44241c
                         mov                bl, byte ptr [eax]                            // 0x0054311a    8a18
                         mov                eax, dword ptr [ecx]                          // 0x0054311c    8b01
                         add                eax, 0x0000027c                               // 0x0054311e    057c020000
                         {disp8} mov        byte ptr [eax + 0x02], bl                     // 0x00543123    885802
                         {disp8} mov        bl, byte ptr [esp + 0x13]                     // 0x00543126    8a5c2413
                         add                ecx, 0x4                                      // 0x0054312a    83c104
                         dec                esi                                           // 0x0054312d    4e
                         {disp8} mov        byte ptr [eax + 0x03], -0x01                  // 0x0054312e    c64003ff
                         {disp8} mov        byte ptr [eax + 0x01], bl                     // 0x00543132    885801
                         mov                byte ptr [eax], dl                            // 0x00543135    8810
                         {disp8} jne        _jmp_addr_0x0054310a                          // 0x00543137    75d1
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543139    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0054313f    e80c270100
                         test               eax, eax                                      // 0x00543144    85c0
                         {disp8} je         _jmp_addr_0x00543161                          // 0x00543146    7419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543148    8b0d5c19d000
                         push               0x80000000                                    // 0x0054314e    6800000080
                         push               0x2c                                          // 0x00543153    6a2c
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00543155    e8f6260100
                         mov.s              ecx, eax                                      // 0x0054315a    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x0054315c    e8af580900
_jmp_addr_0x00543161:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00543161    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00543167    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543169    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0054316f    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543172    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543175    8d0450
                         shl                eax, 5                                        // 0x00543178    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0054317b    8b8408640a0000
                         test               eax, eax                                      // 0x00543182    85c0
                         {disp8} je         _jmp_addr_0x0054319f                          // 0x00543184    7419
                         {disp32} lea       esi, dword ptr [ebp + 0x00000088]             // 0x00543186    8db588000000
                         {disp32} lea       edi, dword ptr [eax + 0x00001170]             // 0x0054318c    8db870110000
                         mov                ecx, 0x00000008                               // 0x00543192    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00543197    f3a5
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543199    8b0d5c19d000
_jmp_addr_0x0054319f:    xor.s              eax, eax                                      // 0x0054319f    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x005431a1    8a81595a2000
                         push               0x0                                           // 0x005431a7    6a00
                         push               0x1                                           // 0x005431a9    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x005431ab    8d1480
                         push               eax                                           // 0x005431ae    50
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x005431af    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005431b2    8d0450
                         shl                eax, 5                                        // 0x005431b5    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x005431b8    8b8c08640a0000
                         push               ecx                                           // 0x005431bf    51
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x005431c0    6838bdd400
                         call               _jmp_addr_0x005dea60                          // 0x005431c5    e896b80900
                         {disp8} mov        byte ptr [ebp + 0x10], 0x01                   // 0x005431ca    c6451001
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab70]        // 0x005431ce    8b15700bcd00
                         {disp32} mov       ecx, dword ptr [edx + 0x0000320c]             // 0x005431d4    8b8a0c320000
                         mov                eax, dword ptr [ecx]                          // 0x005431da    8b01
                         add                esp, 0x14                                     // 0x005431dc    83c414
                         call               dword ptr [eax + 0x10]                        // 0x005431df    ff5010
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x005431e2    8b8d0c320000
                         push               0x00000708                                    // 0x005431e8    6808070000
                         push               0x14                                          // 0x005431ed    6a14
                         call               _jmp_addr_0x00480c60                          // 0x005431ef    e86cdaf3ff
_jmp_addr_0x005431f4:    pop                edi                                           // 0x005431f4    5f
                         pop                esi                                           // 0x005431f5    5e
                         pop                ebp                                           // 0x005431f6    5d
                         pop                ebx                                           // 0x005431f7    5b
                         add                esp, 0x44                                     // 0x005431f8    83c444
                         ret                                                              // 0x005431fb    c3
                         nop                                                              // 0x005431fc    90
                         nop                                                              // 0x005431fd    90
                         nop                                                              // 0x005431fe    90
                         nop                                                              // 0x005431ff    90
_jmp_addr_0x00543200:    sub                esp, 0x08                                     // 0x00543200    83ec08
                         push               ebp                                           // 0x00543203    55
                         mov.s              ebp, ecx                                      // 0x00543204    8be9
                         {disp32} mov       al, byte ptr [ebp + 0x00003210]               // 0x00543206    8a8510320000
                         test               al, al                                        // 0x0054320c    84c0
                         push               esi                                           // 0x0054320e    56
                         {disp8} je         _jmp_addr_0x0054323c                          // 0x0054320f    742b
                         {disp32} mov       esi, dword ptr [ebp + 0x0000320c]             // 0x00543211    8bb50c320000
                         test               esi, esi                                      // 0x00543217    85f6
                         {disp8} je         _jmp_addr_0x0054322b                          // 0x00543219    7410
                         mov.s              ecx, esi                                      // 0x0054321b    8bce
                         call               _jmp_addr_0x00480240                          // 0x0054321d    e81ed0f3ff
                         push               esi                                           // 0x00543222    56
                         call               ??3@YAXPAX@Z                                  // 0x00543223    e870bc2600
                         add                esp, 0x04                                     // 0x00543228    83c404
_jmp_addr_0x0054322b:    {disp32} mov       dword ptr [ebp + 0x0000320c], 0x00000000      // 0x0054322b    c7850c32000000000000
                         {disp32} mov       byte ptr [ebp + 0x00003210], 0x00             // 0x00543235    c6851032000000
_jmp_addr_0x0054323c:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0054323c    8b442414
                         cmp                dword ptr [ebp + 0x0000320c], eax             // 0x00543240    39850c320000
                         {disp32} je        _jmp_addr_0x005433cc                          // 0x00543246    0f8480010000
                         test               eax, eax                                      // 0x0054324c    85c0
                         {disp32} mov       dword ptr [ebp + 0x0000320c], eax             // 0x0054324e    89850c320000
                         {disp32} je        _jmp_addr_0x005433cc                          // 0x00543254    0f8472010000
                         push               ebx                                           // 0x0054325a    53
                         mov                ecx, 0x000024b0                               // 0x0054325b    b9b0240000
                         sub.s              ecx, ebp                                      // 0x00543260    2bcd
                         mov                ebx, 0x00002490                               // 0x00543262    bb90240000
                         sub.s              ebx, ebp                                      // 0x00543267    2bdd
                         push               edi                                           // 0x00543269    57
                         {disp32} lea       esi, dword ptr [ebp + 0x000031ec]             // 0x0054326a    8db5ec310000
                         {disp32} lea       edi, dword ptr [ebp + 0x000030ac]             // 0x00543270    8dbdac300000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00543276    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0054327a    895c2414
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000008            // 0x0054327e    c744241c08000000
_jmp_addr_0x00543286:    {disp32} mov       eax, dword ptr [ebp + 0x0000320c]             // 0x00543286    8b850c320000
                         lea                edx, dword ptr [ecx + esi * 0x1]              // 0x0054328c    8d1431
                         cmp                dword ptr [edx + eax * 0x1], 0x00             // 0x0054328f    833c0200
                         {disp8} je         _jmp_addr_0x005432c2                          // 0x00543293    742d
                         {disp32} mov       ecx, dword ptr [eax + 0x000047f0]             // 0x00543295    8b88f0470000
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x0054329b    8b9098000000
                         {disp32} mov       edx, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x005432a1    8b9490b4000000
                         add.s              ebx, esi                                      // 0x005432a8    03de
                         add.s              ebx, eax                                      // 0x005432aa    03d8
                         push               ebx                                           // 0x005432ac    53
                         push               ecx                                           // 0x005432ad    51
                         push               edx                                           // 0x005432ae    52
                         mov.s              ecx, edi                                      // 0x005432af    8bcf
                         call               _jmp_addr_0x00866640                          // 0x005432b1    e88a333200
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x005432b6    8b4c2410
                         {disp8} mov        ebx, dword ptr [esp + 0x14]                   // 0x005432ba    8b5c2414
                         mov                dword ptr [esi], eax                          // 0x005432be    8906
                         {disp8} jmp        _jmp_addr_0x005432c8                          // 0x005432c0    eb06
_jmp_addr_0x005432c2:    mov                dword ptr [esi], 0x00000000                   // 0x005432c2    c70600000000
_jmp_addr_0x005432c8:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x005432c8    8b44241c
                         add                esi, 0x04                                     // 0x005432cc    83c604
                         add                edi, 0x28                                     // 0x005432cf    83c728
                         dec                eax                                           // 0x005432d2    48
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x005432d3    8944241c
                         {disp8} jne        _jmp_addr_0x00543286                          // 0x005432d7    75ad
                         {disp32} lea       ebx, dword ptr [ebp + 0x00000088]             // 0x005432d9    8d9d88000000
                         xor.s              eax, eax                                      // 0x005432df    33c0
                         mov                ecx, 0x00000008                               // 0x005432e1    b908000000
                         mov.s              edi, ebx                                      // 0x005432e6    8bfb
                         rep stosd                                                        // 0x005432e8    f3ab
                         mov.s              eax, ebx                                      // 0x005432ea    8bc3
                         mov                ecx, 0x00000008                               // 0x005432ec    b908000000
_jmp_addr_0x005432f1:    or                 byte ptr [eax], 0xf0                          // 0x005432f1    8008f0
                         add                eax, 0x04                                     // 0x005432f4    83c004
                         dec                ecx                                           // 0x005432f7    49
                         {disp8} jne        _jmp_addr_0x005432f1                          // 0x005432f8    75f7
                         {disp8} lea        edx, dword ptr [ebp + 0x68]                   // 0x005432fa    8d5568
                         xor.s              eax, eax                                      // 0x005432fd    33c0
                         mov                ecx, 0x00000008                               // 0x005432ff    b908000000
                         mov.s              edi, edx                                      // 0x00543304    8bfa
                         rep stosd                                                        // 0x00543306    f3ab
                         mov.s              eax, edx                                      // 0x00543308    8bc2
                         mov                ecx, 0x00000008                               // 0x0054330a    b908000000
_jmp_addr_0x0054330f:    or                 byte ptr [eax], 0xf0                          // 0x0054330f    8008f0
                         add                eax, 0x04                                     // 0x00543312    83c004
                         dec                ecx                                           // 0x00543315    49
                         {disp8} jne        _jmp_addr_0x0054330f                          // 0x00543316    75f7
                         {disp32} mov       esi, dword ptr [_game]                        // 0x00543318    8b355c19d000
                         xor.s              eax, eax                                      // 0x0054331e    33c0
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]               // 0x00543320    8a86595a2000
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x00543326    8d0c80
                         lea                ecx, dword ptr [eax + ecx * 0x8]              // 0x00543329    8d0cc8
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x0054332c    8d0448
                         shl                eax, 5                                        // 0x0054332f    c1e005
                         {disp32} mov       eax, dword ptr [eax + esi * 0x1 + 0x00000a64] // 0x00543332    8b8430640a0000
                         test               eax, eax                                      // 0x00543339    85c0
                         {disp8} je         _jmp_addr_0x0054337c                          // 0x0054333b    743f
                         {disp32} lea       esi, dword ptr [eax + 0x00001170]             // 0x0054333d    8db070110000
                         xor.s              eax, eax                                      // 0x00543343    33c0
                         mov                ecx, 0x00000008                               // 0x00543345    b908000000
                         mov.s              edi, ebx                                      // 0x0054334a    8bfb
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054334c    f3a5
                         {disp32} mov       esi, dword ptr [_game]                        // 0x0054334e    8b355c19d000
                         {disp32} mov       al, byte ptr [esi + 0x00205a59]               // 0x00543354    8a86595a2000
                         mov.s              edi, edx                                      // 0x0054335a    8bfa
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0054335c    8d0c80
                         lea                ecx, dword ptr [eax + ecx * 0x8]              // 0x0054335f    8d0cc8
                         lea                eax, dword ptr [eax + ecx * 0x2]              // 0x00543362    8d0448
                         shl                eax, 5                                        // 0x00543365    c1e005
                         {disp32} mov       esi, dword ptr [eax + esi * 0x1 + 0x00000a64] // 0x00543368    8bb430640a0000
                         add                esi, 0x00001170                               // 0x0054336f    81c670110000
                         mov                ecx, 0x00000008                               // 0x00543375    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0054337a    f3a5
_jmp_addr_0x0054337c:    {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x0054337c    8b8d0c320000
                         xor.s              eax, eax                                      // 0x00543382    33c0
                         {disp32} mov       dword ptr [ecx + 0x00004a94], ebx             // 0x00543384    8999944a0000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0054338a    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543390    8a81595a2000
                         push               0x0                                           // 0x00543396    6a00
                         push               0x1                                           // 0x00543398    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0054339a    8d1480
                         push               eax                                           // 0x0054339d    50
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0054339e    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x005433a1    8d0450
                         shl                eax, 5                                        // 0x005433a4    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x005433a7    8b8c08640a0000
                         push               ecx                                           // 0x005433ae    51
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x005433af    6838bdd400
                         call               _jmp_addr_0x005dea60                          // 0x005433b4    e8a7b60900
                         {disp32} mov       ebp, dword ptr [ebp + 0x0000320c]             // 0x005433b9    8bad0c320000
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x005433bf    8b5500
                         add                esp, 0x14                                     // 0x005433c2    83c414
                         mov.s              ecx, ebp                                      // 0x005433c5    8bcd
                         call               dword ptr [edx + 0x10]                        // 0x005433c7    ff5210
                         pop                edi                                           // 0x005433ca    5f
                         pop                ebx                                           // 0x005433cb    5b
_jmp_addr_0x005433cc:    pop                esi                                           // 0x005433cc    5e
                         pop                ebp                                           // 0x005433cd    5d
                         add                esp, 0x08                                     // 0x005433ce    83c408
                         ret                0x0004                                        // 0x005433d1    c20400
                         nop                                                              // 0x005433d4    90
                         nop                                                              // 0x005433d5    90
                         nop                                                              // 0x005433d6    90
                         nop                                                              // 0x005433d7    90
                         nop                                                              // 0x005433d8    90
                         nop                                                              // 0x005433d9    90
                         nop                                                              // 0x005433da    90
                         nop                                                              // 0x005433db    90
                         nop                                                              // 0x005433dc    90
                         nop                                                              // 0x005433dd    90
                         nop                                                              // 0x005433de    90
                         nop                                                              // 0x005433df    90
?InitControls@TattooEditor@@UAEXXZ:
                         push               ebx                                           // 0x005433e0    53
                         push               esi                                           // 0x005433e1    56
                         mov.s              esi, ecx                                      // 0x005433e2    8bf1
                         xor.s              ebx, ebx                                      // 0x005433e4    33db
                         {disp32} mov       dword ptr [esi + 0x00003224], ebx             // 0x005433e6    899e24320000
                         {disp32} mov       dword ptr [data_bytes + 0x30ab70], esi        // 0x005433ec    8935700bcd00
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x005433f2    8b4604
                         push               0x00004e20                                    // 0x005433f5    68204e0000
                         {disp8} mov        byte ptr [eax + 0x78], bl                     // 0x005433fa    885878
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x005433fd    e86eb11900
                         add                eax, 0x00004e20                               // 0x00543402    05204e0000
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e4], eax        // 0x00543407    a3e406cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a6e0], ebx        // 0x0054340c    891de006cd00
                         or                 eax, -0x1                                     // 0x00543412    83c8ff
                         add                esp, 0x04                                     // 0x00543415    83c404
                         {disp32} mov       dword ptr [esi + 0x00003218], ebx             // 0x00543418    899e18320000
                         {disp32} mov       dword ptr [esi + 0x0000321c], ebx             // 0x0054341e    899e1c320000
                         {disp32} mov       dword ptr [esi + 0x000030a8], eax             // 0x00543424    8986a8300000
                         {disp32} mov       dword ptr [esi + 0x00003214], eax             // 0x0054342a    898614320000
                         {disp32} mov       dword ptr [esi + 0x00003220], 0x07ffffff      // 0x00543430    c78620320000ffffff07
                         pop                esi                                           // 0x0054343a    5e
                         pop                ebx                                           // 0x0054343b    5b
                         ret                                                              // 0x0054343c    c3
                         nop                                                              // 0x0054343d    90
                         nop                                                              // 0x0054343e    90
                         nop                                                              // 0x0054343f    90
_jmp_addr_0x00543440:    {disp32} mov       al, byte ptr [data_bytes + 0x30a4fc]          // 0x00543440    a0fc04cd00
                         sub                esp, 0x48                                     // 0x00543445    83ec48
                         push               ebx                                           // 0x00543448    53
                         push               ebp                                           // 0x00543449    55
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x30ab70]        // 0x0054344a    8b2d700bcd00
                         mov                ebx, 0x00000001                               // 0x00543450    bb01000000
                         test               bl, al                                        // 0x00543455    84c3
                         push               esi                                           // 0x00543457    56
                         push               edi                                           // 0x00543458    57
                         {disp8} jne        _jmp_addr_0x00543490                          // 0x00543459    7535
                         mov.s              dl, al                                        // 0x0054345b    8ad0
                         or.s               dl, bl                                        // 0x0054345d    0ad3
                         push               0x00543d70                                    // 0x0054345f    68703d5400
                         {disp32} mov       byte ptr [data_bytes + 0x30a4fc], dl          // 0x00543464    8815fc04cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f0], 0x00000000 // 0x0054346a    c705f004cd0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f4], 0x41a00000 // 0x00543474    c705f404cd000000a041
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f8], 0xc1f00000 // 0x0054347e    c705f804cd000000f0c1
                         call               _atexit                                       // 0x00543488    e804232800
                         add                esp, 0x04                                     // 0x0054348d    83c404
_jmp_addr_0x00543490:    {disp32} mov       al, byte ptr [data_bytes + 0x30a4fc]          // 0x00543490    a0fc04cd00
                         test               al, 0x02                                      // 0x00543495    a802
                         {disp8} jne        _jmp_addr_0x005434cf                          // 0x00543497    7536
                         mov.s              dl, al                                        // 0x00543499    8ad0
                         or                 dl, 2                                         // 0x0054349b    80ca02
                         push               0x00543d60                                    // 0x0054349e    68603d5400
                         {disp32} mov       byte ptr [data_bytes + 0x30a4fc], dl          // 0x005434a3    8815fc04cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e0], 0x00000000 // 0x005434a9    c705e004cd0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e4], 0x40e00000 // 0x005434b3    c705e404cd000000e040
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e8], 0x00000000 // 0x005434bd    c705e804cd0000000000
                         call               _atexit                                       // 0x005434c7    e8c5222800
                         add                esp, 0x04                                     // 0x005434cc    83c404
_jmp_addr_0x005434cf:    {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x005434cf    8b44245c
                         dec                eax                                           // 0x005434d3    48
                         cmp                eax, 0x0d                                     // 0x005434d4    83f80d
                         {disp32} ja        _jmp_addr_0x00543d0a                          // 0x005434d7    0f872d080000
                         jmp                dword ptr [eax*4 + 0x543d14]                  // 0x005434dd    ff2485143d5400
                         {disp32} mov       cl, byte ptr [ebp + 0x00003210]               // 0x005434e4    8a8d10320000
                         test               cl, cl                                        // 0x005434ea    84c9
                         mov                eax, 0x00cd04f0                               // 0x005434ec    b8f004cd00
                         {disp8} jne        _jmp_addr_0x005434f8                          // 0x005434f1    7505
                         mov                eax, 0x00de0f58                               // 0x005434f3    b8580fde00
_jmp_addr_0x005434f8:    test               cl, cl                                        // 0x005434f8    84c9
                         fld                dword ptr [eax]                               // 0x005434fa    d900
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x005434fc    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x005434ff    8b4008
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00543502    89442418
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00543506    89542414
                         mov                eax, 0x00cd04e0                               // 0x0054350a    b8e004cd00
                         {disp8} jne        _jmp_addr_0x00543516                          // 0x0054350f    7505
                         mov                eax, 0x00de0f48                               // 0x00543511    b8480fde00
_jmp_addr_0x00543516:    mov                ecx, dword ptr [eax]                          // 0x00543516    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00543518    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0054351b    8b4008
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0054351e    894c241c
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x00543522    d864241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00543526    89542420
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0054352a    89442424
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0054352e    d95c2410
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00543532    8b4c2410
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00543536    d9442414
                         {disp8} mov        dword ptr [esp + 0x64], ecx                   // 0x0054353a    894c2464
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0054353e    d8642420
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00543542    d9442418
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x00543546    d8642424
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0054354a    d95c2418
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0054354e    db053481c300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x35cd0]             // 0x00543554    d80dd0ec8d00
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x0054355a    d95c2468
                         {disp32} fld       dword ptr [data_bytes + 0x30a4dc]             // 0x0054355e    d905dc04cd00
                         {disp8} fmul       dword ptr [esp + 0x68]                        // 0x00543564    d84c2468
                         fld                st(0)                                         // 0x00543568    d9c0
                         fcos                                                             // 0x0054356a    d9ff
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0054356c    d95c2448
                         fsin                                                             // 0x00543570    d9fe
                         {disp8} fst        dword ptr [esp + 0x30]                        // 0x00543572    d9542430
                         fchs                                                             // 0x00543576    d9e0
                         fld                st(1)                                         // 0x00543578    d9c1
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x0054357a    d95c245c
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0054357e    d9442448
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x00543582    d84c2410
                         fxch               st(1)                                         // 0x00543586    d9c9
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x00543588    d84c2418
                         faddp              st(1), st                                     // 0x0054358c    dec1
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0054358e    d95c2410
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00543592    d9442430
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x00543596    d84c2464
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0054359a    d9442448
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0054359e    d84c2418
                         faddp              st(1), st                                     // 0x005435a2    dec1
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x005435a4    d9542418
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x005435a8    d84c2418
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x005435ac    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x005435b0    d84c2410
                         faddp              st(1), st                                     // 0x005435b4    dec1
                         fsqrt                                                            // 0x005435b6    d9fa
                         {disp8} fstp       dword ptr [esp + 0x64]                        // 0x005435b8    d95c2464
                         {disp32} fld       dword ptr [data_bytes + 0x30a4d8]             // 0x005435bc    d905d804cd00
                         {disp8} fmul       dword ptr [esp + 0x64]                        // 0x005435c2    d84c2464
                         {disp8} fmul       dword ptr [esp + 0x68]                        // 0x005435c6    d84c2468
                         faddp              st(1), st                                     // 0x005435ca    dec1
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005435cc    d9442464
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2620]              // 0x005435d0    d80d20b68a00
                         {disp8} fstp       dword ptr [esp + 0x5c]                        // 0x005435d6    d95c245c
                         {disp8} fcom       dword ptr [esp + 0x5c]                        // 0x005435da    d854245c
                         fnstsw             ax                                            // 0x005435de    dfe0
                         test               ah, 0x41                                      // 0x005435e0    f6c441
                         {disp8} jne        _jmp_addr_0x005435f8                          // 0x005435e3    7513
                         {disp8} fcom       dword ptr [esp + 0x64]                        // 0x005435e5    d8542464
                         fnstsw             ax                                            // 0x005435e9    dfe0
                         test               ah, 0x01                                      // 0x005435eb    f6c401
                         {disp8} jne        _jmp_addr_0x005435fe                          // 0x005435ee    750e
                         fstp               st(0)                                         // 0x005435f0    ddd8
                         {disp8} fld        dword ptr [esp + 0x64]                        // 0x005435f2    d9442464
                         {disp8} jmp        _jmp_addr_0x005435fe                          // 0x005435f6    eb06
_jmp_addr_0x005435f8:    fstp               st(0)                                         // 0x005435f8    ddd8
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x005435fa    d944245c
_jmp_addr_0x005435fe:    {disp8} fld        dword ptr [esp + 0x1c]                        // 0x005435fe    d944241c
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x00543602    d8442410
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00543606    d95c2410
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0054360a    d9442420
                         fadd               st, st(1)                                     // 0x0054360e    d8c1
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00543610    d95c2414
                         fstp               st(0)                                         // 0x00543614    ddd8
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00543616    d9442424
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0054361a    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0054361e    d95c2418
                         {disp8} fld        dword ptr [esp + 0x68]                        // 0x00543622    d9442468
                         {disp32} fmul      dword ptr [rdata_bytes + 0x35ccc]             // 0x00543626    d80dccec8d00
                         fldl2e                                                           // 0x0054362c    d9ea
                         fmulp              st(1), st                                     // 0x0054362e    dec9
                         fld                st(0)                                         // 0x00543630    d9c0
                         frndint                                                          // 0x00543632    d9fc
                         fxch               st(1)                                         // 0x00543634    d9c9
                         fsub               st, st(1)                                     // 0x00543636    d8e1
                         f2xm1                                                            // 0x00543638    d9f0
                         fld1                                                             // 0x0054363a    d9e8
                         faddp              st(1), st                                     // 0x0054363c    dec1
                         fscale                                                           // 0x0054363e    d9fd
                         fstp               st(1)                                         // 0x00543640    ddd9
                         {disp32} fld       dword ptr [data_bytes + 0x30a4dc]             // 0x00543642    d905dc04cd00
                         fmul               st, st(1)                                     // 0x00543648    d8c9
                         {disp32} fstp      dword ptr [data_bytes + 0x30a4dc]             // 0x0054364a    d91ddc04cd00
                         {disp32} fld       dword ptr [data_bytes + 0x30a4d8]             // 0x00543650    d905d804cd00
                         fmul               st, st(1)                                     // 0x00543656    d8c9
                         {disp32} fstp      dword ptr [data_bytes + 0x30a4d8]             // 0x00543658    d91dd804cd00
                         {disp32} mov       al, byte ptr [ebp + 0x00003210]               // 0x0054365e    8a8510320000
                         test               al, al                                        // 0x00543664    84c0
                         fstp               st(0)                                         // 0x00543666    ddd8
                         {disp8} je         _jmp_addr_0x005436b3                          // 0x00543668    7449
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0054366a    8d54241c
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0054366e    8d4c2410
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x00543672    e8a9622d00
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00543677    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0054367b    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0054367f    8b4c2418
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f0], edx        // 0x00543683    8915f004cd00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00543689    8b54241c
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f4], eax        // 0x0054368d    a3f404cd00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00543692    8b442420
                         {disp32} mov       dword ptr [data_bytes + 0x30a4f8], ecx        // 0x00543696    890df804cd00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0054369c    8b4c2424
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e0], edx        // 0x005436a0    8915e004cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e4], eax        // 0x005436a6    a3e404cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a4e8], ecx        // 0x005436ab    890de804cd00
                         {disp8} jmp        _jmp_addr_0x005436ed                          // 0x005436b1    eb3a
_jmp_addr_0x005436b3:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x005436b3    8b542410
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x005436b7    8b442414
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x005436bb    8b4c2418
                         {disp32} mov       dword ptr [data_bytes + 0x41af58], edx        // 0x005436bf    8915580fde00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x005436c5    8b54241c
                         {disp32} mov       dword ptr [data_bytes + 0x41af5c], eax        // 0x005436c9    a35c0fde00
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x005436ce    8b442420
                         {disp32} mov       dword ptr [data_bytes + 0x41af60], ecx        // 0x005436d2    890d600fde00
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x005436d8    8b4c2424
                         {disp32} mov       dword ptr [data_bytes + 0x41af48], edx        // 0x005436dc    8915480fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41af4c], eax        // 0x005436e2    a34c0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41af50], ecx        // 0x005436e7    890d500fde00
_jmp_addr_0x005436ed:    {disp32} mov       ecx, dword ptr [data_bytes + 0x30a654]        // 0x005436ed    8b0d5406cd00
                         {disp32} mov       eax, dword ptr [ecx + 0x0000320c]             // 0x005436f3    8b810c320000
                         test               eax, eax                                      // 0x005436f9    85c0
                         {disp32} je        _jmp_addr_0x00543d0a                          // 0x005436fb    0f8409060000
                         {disp32} mov       al, byte ptr [ecx + 0x00003210]               // 0x00543701    8a8110320000
                         test               al, al                                        // 0x00543707    84c0
                         {disp32} je        _jmp_addr_0x00543d0a                          // 0x00543709    0f84fb050000
                         call               _jmp_addr_0x00542c50                          // 0x0054370f    e83cf5ffff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30a654]        // 0x00543714    8b0d5406cd00
                         call               _jmp_addr_0x00542a90                          // 0x0054371a    e871f3ffff
                         mov                esi, 0x00000020                               // 0x0054371f    be20000000
_jmp_addr_0x00543724:    {disp32} mov       edx, dword ptr [data_bytes + 0x30a654]        // 0x00543724    8b155406cd00
                         mov                ecx, dword ptr [esi + edx * 0x1]              // 0x0054372a    8b0c16
                         {disp32} mov       al, byte ptr [ecx + 0x00000281]               // 0x0054372d    8a8181020000
                         test               al, al                                        // 0x00543733    84c0
                         {disp8} je         _jmp_addr_0x0054373e                          // 0x00543735    7407
                         mov                eax, dword ptr [ecx]                          // 0x00543737    8b01
                         push               ebx                                           // 0x00543739    53
                         push               ebx                                           // 0x0054373a    53
                         call               dword ptr [eax + 0x14]                        // 0x0054373b    ff5014
_jmp_addr_0x0054373e:    add                esi, 0x04                                     // 0x0054373e    83c604
                         cmp                esi, 0x60                                     // 0x00543741    83fe60
                         {disp8} jl         _jmp_addr_0x00543724                          // 0x00543744    7cde
                         pop                edi                                           // 0x00543746    5f
                         pop                esi                                           // 0x00543747    5e
                         pop                ebp                                           // 0x00543748    5d
                         pop                ebx                                           // 0x00543749    5b
                         add                esp, 0x48                                     // 0x0054374a    83c448
                         ret                0x0014                                        // 0x0054374d    c21400
                         {disp32} mov       dword ptr [data_bytes + 0x30ab78], 0x00000000 // 0x00543750    c705780bcd0000000000
                         pop                edi                                           // 0x0054375a    5f
                         pop                esi                                           // 0x0054375b    5e
                         pop                ebp                                           // 0x0054375c    5d
                         pop                ebx                                           // 0x0054375d    5b
                         add                esp, 0x48                                     // 0x0054375e    83c448
                         ret                0x0014                                        // 0x00543761    c21400
                         {disp8} mov        ecx, dword ptr [esp + 0x64]                   // 0x00543764    8b4c2464
                         {disp8} mov        eax, dword ptr [ecx + 0x18]                   // 0x00543768    8b4118
                         {disp8} mov        edi, dword ptr [esp + 0x6c]                   // 0x0054376b    8b7c246c
                         cmp                eax, 0x0b                                     // 0x0054376f    83f80b
                         {disp8} mov        eax, dword ptr [esp + 0x68]                   // 0x00543772    8b442468
                         {disp8} jne        _jmp_addr_0x005437f0                          // 0x00543776    7578
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x00543778    db053481c300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x30ab78]        // 0x0054377e    8b15780bcd00
                         test               edx, edx                                      // 0x00543784    85d2
                         {disp32} fmul      dword ptr [_rdata_float0p001]                 // 0x00543786    d80db0a38a00
                         {disp8} jne        _jmp_addr_0x005437a6                          // 0x0054378c    7518
                         mov.s              edx, eax                                      // 0x0054378e    8bd0
                         mov.s              esi, edi                                      // 0x00543790    8bf7
                         {disp32} mov       dword ptr [data_bytes + 0x30a4d4], edx        // 0x00543792    8915d404cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30a4d0], esi        // 0x00543798    8935d004cd00
                         {disp32} mov       dword ptr [data_bytes + 0x30ab78], ebx        // 0x0054379e    891d780bcd00
                         {disp8} jmp        _jmp_addr_0x005437b2                          // 0x005437a4    eb0c
_jmp_addr_0x005437a6:    {disp32} mov       edx, dword ptr [data_bytes + 0x30a4d4]        // 0x005437a6    8b15d404cd00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x30a4d0]        // 0x005437ac    8b35d004cd00
_jmp_addr_0x005437b2:    sub.s              edx, eax                                      // 0x005437b2    2bd0
                         {disp8} mov        dword ptr [esp + 0x64], edx                   // 0x005437b4    89542464
                         {disp8} fild       dword ptr [esp + 0x64]                        // 0x005437b8    db442464
                         sub.s              esi, edi                                      // 0x005437bc    2bf7
                         {disp8} mov        dword ptr [esp + 0x64], esi                   // 0x005437be    89742464
                         fmul               st, st(1)                                     // 0x005437c2    d8c9
                         {disp32} fmul      dword ptr [__real@3e4ccccd]                   // 0x005437c4    d80d44b28a00
                         {disp32} fadd      dword ptr [data_bytes + 0x30a4dc]             // 0x005437ca    d805dc04cd00
                         {disp32} fstp      dword ptr [data_bytes + 0x30a4dc]             // 0x005437d0    d91ddc04cd00
                         {disp8} fild       dword ptr [esp + 0x64]                        // 0x005437d6    db442464
                         fmul               st, st(1)                                     // 0x005437da    d8c9
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x005437dc    d80d2cb28a00
                         {disp32} fsubr     dword ptr [data_bytes + 0x30a4d8]             // 0x005437e2    d82dd804cd00
                         {disp32} fstp      dword ptr [data_bytes + 0x30a4d8]             // 0x005437e8    d91dd804cd00
                         fstp               st(0)                                         // 0x005437ee    ddd8
_jmp_addr_0x005437f0:    cmp                dword ptr [ecx + 0x18], 0x05                  // 0x005437f0    83791805
                         {disp32} jne       _jmp_addr_0x0054387f                          // 0x005437f4    0f8585000000
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x005437fa    8b5108
                         {disp8} mov        esi, dword ptr [ecx + 0x10]                   // 0x005437fd    8b7110
                         sub.s              eax, edx                                      // 0x00543800    2bc2
                         shl                eax, 5                                        // 0x00543802    c1e005
                         sub.s              esi, edx                                      // 0x00543805    2bf2
                         cdq                                                              // 0x00543807    99
                         idiv               esi                                           // 0x00543808    f7fe
                         {disp8} mov        edx, dword ptr [ecx + 0x0c]                   // 0x0054380a    8b510c
                         mov.s              esi, eax                                      // 0x0054380d    8bf0
                         mov.s              eax, edi                                      // 0x0054380f    8bc7
                         {disp8} mov        edi, dword ptr [ecx + 0x14]                   // 0x00543811    8b7914
                         sub.s              eax, edx                                      // 0x00543814    2bc2
                         shl                eax, 7                                        // 0x00543816    c1e007
                         sub.s              edi, edx                                      // 0x00543819    2bfa
                         cdq                                                              // 0x0054381b    99
                         idiv               edi                                           // 0x0054381c    f7ff
                         test               esi, esi                                      // 0x0054381e    85f6
                         {disp8} jle        _jmp_addr_0x0054382e                          // 0x00543820    7e0c
                         cmp                esi, 0x1f                                     // 0x00543822    83fe1f
                         {disp8} jl         _jmp_addr_0x00543830                          // 0x00543825    7c09
                         mov                esi, 0x0000001f                               // 0x00543827    be1f000000
                         {disp8} jmp        _jmp_addr_0x00543830                          // 0x0054382c    eb02
_jmp_addr_0x0054382e:    xor.s              esi, esi                                      // 0x0054382e    33f6
_jmp_addr_0x00543830:    test               eax, eax                                      // 0x00543830    85c0
                         {disp8} jle        _jmp_addr_0x00543840                          // 0x00543832    7e0c
                         cmp                eax, 0x7f                                     // 0x00543834    83f87f
                         {disp8} jl         _jmp_addr_0x00543842                          // 0x00543837    7c09
                         mov                eax, 0x0000007f                               // 0x00543839    b87f000000
                         {disp8} jmp        _jmp_addr_0x00543842                          // 0x0054383e    eb02
_jmp_addr_0x00543840:    xor.s              eax, eax                                      // 0x00543840    33c0
_jmp_addr_0x00543842:    shl                eax, 5                                        // 0x00543842    c1e005
                         add.s              eax, esi                                      // 0x00543845    03c6
                         {disp8} lea        edx, dword ptr [ebp + eax * 0x2 + 0x70]       // 0x00543847    8d544570
                         {disp8} mov        dl, byte ptr [eax + edx * 0x1 + 0x38]         // 0x0054384b    8a541038
                         {disp8} mov        byte ptr [esp + 0x66], dl                     // 0x0054384f    88542466
                         {disp8} lea        edx, dword ptr [ebp + eax * 0x2 + 0x00]       // 0x00543853    8d544500
                         add.s              eax, edx                                      // 0x00543857    03c2
                         {disp32} mov       dl, byte ptr [eax + 0x000000a9]               // 0x00543859    8a90a9000000
                         {disp32} mov       al, byte ptr [eax + 0x000000aa]               // 0x0054385f    8a80aa000000
                         {disp8} mov        byte ptr [esp + 0x65], dl                     // 0x00543865    88542465
                         {disp8} mov        edx, dword ptr [ebp + 0x64]                   // 0x00543869    8b5564
                         {disp8} mov        byte ptr [esp + 0x67], -0x01                  // 0x0054386c    c6442467ff
                         {disp8} mov        byte ptr [esp + 0x64], al                     // 0x00543871    88442464
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x00543875    8b442464
                         {disp32} mov       dword ptr [edx + 0x00000254], eax             // 0x00543879    898254020000
_jmp_addr_0x0054387f:    {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x0054387f    8b4918
                         cmp                ecx, 0x06                                     // 0x00543882    83f906
                         {disp8} je         _jmp_addr_0x00543890                          // 0x00543885    7409
                         cmp                ecx, 0x05                                     // 0x00543887    83f905
                         {disp32} jne       _jmp_addr_0x00543d0a                          // 0x0054388a    0f857a040000
_jmp_addr_0x00543890:    {disp8} mov        ecx, dword ptr [ebp + 0x64]                   // 0x00543890    8b4d64
                         {disp32} fld       dword ptr [ecx + 0x00000250]                  // 0x00543893    d98150020000
                         {disp32} mov       edi, dword ptr [ecx + 0x00000254]             // 0x00543899    8bb954020000
                         {disp32} fcomp     dword ptr [_rdata_float0p5]                   // 0x0054389f    d81db4a38a00
                         {disp32} fld       dword ptr [ecx + 0x00000250]                  // 0x005438a5    d98150020000
                         fnstsw             ax                                            // 0x005438ab    dfe0
                         test               ah, 0x01                                      // 0x005438ad    f6c401
                         {disp8} je         _jmp_addr_0x00543904                          // 0x005438b0    7452
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x005438b2    d80df0998a00
                         call               _jmp_addr_0x007a1400                          // 0x005438b8    e843db2500
                         mov.s              esi, edi                                      // 0x005438bd    8bf7
                         and                esi, 0x00ff0000                               // 0x005438bf    81e60000ff00
                         mov.s              ecx, edi                                      // 0x005438c5    8bcf
                         imul               esi, eax                                      // 0x005438c7    0faff0
                         and                ecx, 0x0000ff00                               // 0x005438ca    81e100ff0000
                         mov.s              edx, edi                                      // 0x005438d0    8bd7
                         imul               ecx, eax                                      // 0x005438d2    0fafc8
                         and                edx, 0x000000ff                               // 0x005438d5    81e2ff000000
                         imul               edx, eax                                      // 0x005438db    0fafd0
                         and                esi, 0xff0000ff                               // 0x005438de    81e6ff0000ff
                         and                ecx, 0x00ff0000                               // 0x005438e4    81e10000ff00
                         or.s               esi, ecx                                      // 0x005438ea    0bf1
                         and                edx, 0x0000ff00                               // 0x005438ec    81e200ff0000
                         or.s               esi, edx                                      // 0x005438f2    0bf2
                         shr                esi, 8                                        // 0x005438f4    c1ee08
                         and                edi, 0xff000000                               // 0x005438f7    81e7000000ff
                         or.s               esi, edi                                      // 0x005438fd    0bf7
                         {disp32} jmp       _jmp_addr_0x00543986                          // 0x005438ff    e982000000
_jmp_addr_0x00543904:    {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00543904    d825b4a38a00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x0054390a    d80df0998a00
                         call               _jmp_addr_0x007a1400                          // 0x00543910    e8ebda2500
                         mov.s              ecx, edi                                      // 0x00543915    8bcf
                         and                ecx, 0x00ff0000                               // 0x00543917    81e10000ff00
                         mov                esi, 0x00ff0000                               // 0x0054391d    be0000ff00
                         sub.s              esi, ecx                                      // 0x00543922    2bf1
                         imul               esi, eax                                      // 0x00543924    0faff0
                         shr                esi, 8                                        // 0x00543927    c1ee08
                         mov.s              edx, edi                                      // 0x0054392a    8bd7
                         and                edx, 0xffff0000                               // 0x0054392c    81e20000ffff
                         add.s              esi, edx                                      // 0x00543932    03f2
                         mov.s              ecx, edi                                      // 0x00543934    8bcf
                         and                ecx, 0x0000ff00                               // 0x00543936    81e100ff0000
                         mov                edx, 0x0000ff00                               // 0x0054393c    ba00ff0000
                         sub.s              edx, ecx                                      // 0x00543941    2bd1
                         imul               edx, eax                                      // 0x00543943    0fafd0
                         shr                edx, 8                                        // 0x00543946    c1ea08
                         mov.s              ecx, edi                                      // 0x00543949    8bcf
                         and                ecx, 0xffffff00                               // 0x0054394b    81e100ffffff
                         add.s              edx, ecx                                      // 0x00543951    03d1
                         and                edx, 0x0000ff00                               // 0x00543953    81e200ff0000
                         and                esi, 0xffff0000                               // 0x00543959    81e60000ffff
                         or.s               esi, edx                                      // 0x0054395f    0bf2
                         mov.s              edx, edi                                      // 0x00543961    8bd7
                         and                edx, 0x000000ff                               // 0x00543963    81e2ff000000
                         mov                ecx, 0x000000ff                               // 0x00543969    b9ff000000
                         sub.s              ecx, edx                                      // 0x0054396e    2bca
                         imul               ecx, eax                                      // 0x00543970    0fafc8
                         shr                ecx, 8                                        // 0x00543973    c1e908
                         add.s              ecx, edi                                      // 0x00543976    03cf
                         and                ecx, 0x000000ff                               // 0x00543978    81e1ff000000
                         or.s               esi, ecx                                      // 0x0054397e    0bf1
                         or                 esi, 0xff000000                               // 0x00543980    81ce000000ff
_jmp_addr_0x00543986:    {disp8} lea        edi, dword ptr [ebp + 0x20]                   // 0x00543986    8d7d20
                         mov                ebx, 0x00000010                               // 0x00543989    bb10000000
_jmp_addr_0x0054398e:    push               ecx                                           // 0x0054398e    51
                         mov.s              eax, esp                                      // 0x0054398f    8bc4
                         mov                dword ptr [eax], esi                          // 0x00543991    8930
                         mov                ecx, dword ptr [edi]                          // 0x00543993    8b0f
                         add                ecx, 0x0000027c                               // 0x00543995    81c17c020000
                         call               _jmp_addr_0x00543d50                          // 0x0054399b    e8b0030000
                         add                edi, 0x04                                     // 0x005439a0    83c704
                         dec                ebx                                           // 0x005439a3    4b
                         {disp8} jne        _jmp_addr_0x0054398e                          // 0x005439a4    75e8
                         pop                edi                                           // 0x005439a6    5f
                         pop                esi                                           // 0x005439a7    5e
                         pop                ebp                                           // 0x005439a8    5d
                         pop                ebx                                           // 0x005439a9    5b
                         add                esp, 0x48                                     // 0x005439aa    83c448
                         ret                0x0014                                        // 0x005439ad    c21400
                         {disp32} mov       al, byte ptr [ebp + 0x00003210]               // 0x005439b0    8a8510320000
                         xor.s              ebx, ebx                                      // 0x005439b6    33db
                         cmp.s              al, bl                                        // 0x005439b8    3ac3
                         {disp8} mov        byte ptr [ebp + 0x10], bl                     // 0x005439ba    885d10
                         {disp32} je        _jmp_addr_0x00543d0a                          // 0x005439bd    0f8447030000
                         {disp32} mov       esi, dword ptr [ebp + 0x0000320c]             // 0x005439c3    8bb50c320000
                         cmp.s              esi, ebx                                      // 0x005439c9    3bf3
                         {disp8} je         _jmp_addr_0x005439dd                          // 0x005439cb    7410
                         mov.s              ecx, esi                                      // 0x005439cd    8bce
                         call               _jmp_addr_0x00480240                          // 0x005439cf    e86cc8f3ff
                         push               esi                                           // 0x005439d4    56
                         call               ??3@YAXPAX@Z                                  // 0x005439d5    e8beb42600
                         add                esp, 0x04                                     // 0x005439da    83c404
_jmp_addr_0x005439dd:    {disp32} mov       dword ptr [ebp + 0x0000320c], ebx             // 0x005439dd    899d0c320000
                         {disp32} mov       byte ptr [ebp + 0x00003210], bl               // 0x005439e3    889d10320000
                         pop                edi                                           // 0x005439e9    5f
                         pop                esi                                           // 0x005439ea    5e
                         pop                ebp                                           // 0x005439eb    5d
                         pop                ebx                                           // 0x005439ec    5b
                         add                esp, 0x48                                     // 0x005439ed    83c448
                         ret                0x0014                                        // 0x005439f0    c21400
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x005439f3    8b5500
                         mov.s              ecx, ebp                                      // 0x005439f6    8bcd
                         {disp8} mov        byte ptr [ebp + 0x10], 0x00                   // 0x005439f8    c6451000
                         call               dword ptr [edx + 0x20]                        // 0x005439fc    ff5220
                         pop                edi                                           // 0x005439ff    5f
                         pop                esi                                           // 0x00543a00    5e
                         pop                ebp                                           // 0x00543a01    5d
                         pop                ebx                                           // 0x00543a02    5b
                         add                esp, 0x48                                     // 0x00543a03    83c448
                         ret                0x0014                                        // 0x00543a06    c21400
                         {disp8} mov        eax, dword ptr [esp + 0x68]                   // 0x00543a09    8b442468
                         cmp                eax, 0x0d                                     // 0x00543a0d    83f80d
                         {disp8} jne        _jmp_addr_0x00543a17                          // 0x00543a10    7505
                         {disp8} mov        esi, dword ptr [ebp + 0x14]                   // 0x00543a12    8b7514
                         {disp8} jmp        _jmp_addr_0x00543a29                          // 0x00543a15    eb12
_jmp_addr_0x00543a17:    cmp                eax, 0x1b                                     // 0x00543a17    83f81b
                         {disp32} jne       _jmp_addr_0x00543d0a                          // 0x00543a1a    0f85ea020000
                         {disp8} mov        esi, dword ptr [ebp + 0x18]                   // 0x00543a20    8b7518
                         {disp8} jmp        _jmp_addr_0x00543a29                          // 0x00543a23    eb04
                         {disp8} mov        esi, dword ptr [esp + 0x64]                   // 0x00543a25    8b742464
_jmp_addr_0x00543a29:    test               esi, esi                                      // 0x00543a29    85f6
                         {disp32} je        _jmp_addr_0x00543d0a                          // 0x00543a2b    0f84d9020000
                         cmp                dword ptr [esi + 0x18], ebx                   // 0x00543a31    395e18
                         {disp8} jne        _jmp_addr_0x00543a79                          // 0x00543a34    7543
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543a36    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00543a3c    e83ff50000
                         test               eax, eax                                      // 0x00543a41    85c0
                         {disp8} je         _jmp_addr_0x00543a74                          // 0x00543a43    742f
                         {disp8} mov        al, byte ptr [ebp + 0x10]                     // 0x00543a45    8a4510
                         test               al, al                                        // 0x00543a48    84c0
                         {disp8} je         _jmp_addr_0x00543a74                          // 0x00543a4a    7428
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00001af9 // 0x00543a4c    813dac7cd100f91a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00543a56    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x00543a62                          // 0x00543a5b    7605
                         add                eax, 0x000143ac                               // 0x00543a5d    05ac430100
_jmp_addr_0x00543a62:    {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x00543a62    8b4808
                         push               0x0                                           // 0x00543a65    6a00
                         push               0x0                                           // 0x00543a67    6a00
                         push               ecx                                           // 0x00543a69    51
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x00543a6a    8b4d04
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20  // 0x00543a6d    e81ed7ecff
                         {disp8} jmp        _jmp_addr_0x00543a79                          // 0x00543a72    eb05
_jmp_addr_0x00543a74:    call               _jmp_addr_0x00513640                          // 0x00543a74    e8c7fbfcff
_jmp_addr_0x00543a79:    cmp                dword ptr [esi + 0x18], 0x02                  // 0x00543a79    837e1802
                         {disp32} jne       _jmp_addr_0x00543d0a                          // 0x00543a7d    0f8587020000
                         {disp32} mov       al, byte ptr [esi + 0x00000229]               // 0x00543a83    8a8629020000
                         test               al, al                                        // 0x00543a89    84c0
                         {disp32} jne       _jmp_addr_0x00543d0a                          // 0x00543a8b    0f8579020000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543a91    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00543a97    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543a99    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00543a9f    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543aa2    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543aa5    8d0450
                         shl                eax, 5                                        // 0x00543aa8    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00543aab    8b8408640a0000
                         test               eax, eax                                      // 0x00543ab2    85c0
                         {disp8} je         _jmp_addr_0x00543ac6                          // 0x00543ab4    7410
                         {disp8} lea        esi, dword ptr [ebp + 0x68]                   // 0x00543ab6    8d7568
                         {disp32} lea       edi, dword ptr [eax + 0x00001170]             // 0x00543ab9    8db870110000
                         mov                ecx, 0x00000008                               // 0x00543abf    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00543ac4    f3a5
_jmp_addr_0x00543ac6:    call               _jmp_addr_0x00513640                          // 0x00543ac6    e875fbfcff
                         pop                edi                                           // 0x00543acb    5f
                         pop                esi                                           // 0x00543acc    5e
                         pop                ebp                                           // 0x00543acd    5d
                         pop                ebx                                           // 0x00543ace    5b
                         add                esp, 0x48                                     // 0x00543acf    83c448
                         ret                0x0014                                        // 0x00543ad2    c21400
                         {disp8} mov        byte ptr [ebp + 0x10], 0x00                   // 0x00543ad5    c6451000
                         pop                edi                                           // 0x00543ad9    5f
                         pop                esi                                           // 0x00543ada    5e
                         pop                ebp                                           // 0x00543adb    5d
                         pop                ebx                                           // 0x00543adc    5b
                         add                esp, 0x48                                     // 0x00543add    83c448
                         ret                0x0014                                        // 0x00543ae0    c21400
                         {disp32} mov       eax, dword ptr [ebp + 0x0000320c]             // 0x00543ae3    8b850c320000
                         test               eax, eax                                      // 0x00543ae9    85c0
                         {disp32} je        _jmp_addr_0x00543d0a                          // 0x00543aeb    0f8419020000
                         {disp32} mov       ebx, dword ptr [ebp + 0x00003214]             // 0x00543af1    8b9d14320000
                         test               ebx, ebx                                      // 0x00543af7    85db
                         {disp32} mov       dword ptr [ebp + 0x000030a8], 0xffffffff      // 0x00543af9    c785a8300000ffffffff
                         {disp32} jl        _jmp_addr_0x00543c28                          // 0x00543b03    0f8c1f010000
                         {disp32} lea       edx, dword ptr [ebp + 0x00000088]             // 0x00543b09    8d9588000000
                         xor.s              esi, esi                                      // 0x00543b0f    33f6
                         mov.s              ecx, edx                                      // 0x00543b11    8bca
_jmp_addr_0x00543b13:    xor.s              eax, eax                                      // 0x00543b13    33c0
                         mov                al, byte ptr [ecx]                            // 0x00543b15    8a01
                         mov.s              edi, eax                                      // 0x00543b17    8bf8
                         shr                edi, 4                                        // 0x00543b19    c1ef04
                         cmp.s              edi, ebx                                      // 0x00543b1c    3bfb
                         {disp8} jne        _jmp_addr_0x00543b35                          // 0x00543b1e    7515
                         {disp8} mov        edi, dword ptr [esp + 0x64]                   // 0x00543b20    8b7c2464
                         and                eax, 0x0f                                     // 0x00543b24    83e00f
                         cmp                eax, dword ptr [edi + 0x00000284]             // 0x00543b27    3b8784020000
                         {disp32} je        _jmp_addr_0x00543bee                          // 0x00543b2d    0f84bb000000
                         {disp8} jmp        _jmp_addr_0x00543b39                          // 0x00543b33    eb04
_jmp_addr_0x00543b35:    {disp8} mov        edi, dword ptr [esp + 0x64]                   // 0x00543b35    8b7c2464
_jmp_addr_0x00543b39:    inc                esi                                           // 0x00543b39    46
                         add                ecx, 0x4                                      // 0x00543b3a    83c104
                         cmp                esi, 0x08                                     // 0x00543b3d    83fe08
                         {disp8} jl         _jmp_addr_0x00543b13                          // 0x00543b40    7cd1
                         xor.s              esi, esi                                      // 0x00543b42    33f6
                         mov.s              eax, edx                                      // 0x00543b44    8bc2
_jmp_addr_0x00543b46:    mov                cl, byte ptr [eax]                            // 0x00543b46    8a08
                         and                cl, -0x10                                     // 0x00543b48    80e1f0
                         cmp                cl, -0x10                                     // 0x00543b4b    80f9f0
                         {disp8} je         _jmp_addr_0x00543b59                          // 0x00543b4e    7409
                         inc                esi                                           // 0x00543b50    46
                         add                eax, 0x04                                     // 0x00543b51    83c004
                         cmp                esi, 0x08                                     // 0x00543b54    83fe08
                         {disp8} jl         _jmp_addr_0x00543b46                          // 0x00543b57    7ced
_jmp_addr_0x00543b59:    cmp                esi, 0x08                                     // 0x00543b59    83fe08
                         {disp8} jne        _jmp_addr_0x00543b7e                          // 0x00543b5c    7520
                         xor.s              esi, esi                                      // 0x00543b5e    33f6
                         mov.s              eax, edx                                      // 0x00543b60    8bc2
_jmp_addr_0x00543b62:    xor.s              edx, edx                                      // 0x00543b62    33d2
                         mov                dl, byte ptr [eax]                            // 0x00543b64    8a10
                         shr                edx, 4                                        // 0x00543b66    c1ea04
                         cmp.s              edx, ebx                                      // 0x00543b69    3bd3
                         {disp8} je         _jmp_addr_0x00543b7b                          // 0x00543b6b    740e
                         inc                esi                                           // 0x00543b6d    46
                         add                eax, 0x04                                     // 0x00543b6e    83c004
                         cmp                esi, 0x08                                     // 0x00543b71    83fe08
                         {disp8} jl         _jmp_addr_0x00543b62                          // 0x00543b74    7cec
                         {disp32} jmp       _jmp_addr_0x00543c1a                          // 0x00543b76    e99f000000
_jmp_addr_0x00543b7b:    cmp                esi, 0x08                                     // 0x00543b7b    83fe08
_jmp_addr_0x00543b7e:    {disp32} jge       _jmp_addr_0x00543c1a                          // 0x00543b7e    0f8d96000000
                         {disp32} mov       cl, byte ptr [ebp + esi * 0x4 + 0x00000088]   // 0x00543b84    8a8cb588000000
                         {disp32} mov       al, byte ptr [ebp + 0x00003214]               // 0x00543b8b    8a8514320000
                         and                cl, 0x0f                                      // 0x00543b91    80e10f
                         shl                al, 4                                         // 0x00543b94    c0e004
                         or.s               al, cl                                        // 0x00543b97    0ac1
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x00000088], al   // 0x00543b99    8884b588000000
                         {disp32} mov       dl, byte ptr [edi + 0x00000284]               // 0x00543ba0    8a9784020000
                         xor.s              dl, al                                        // 0x00543ba6    32d0
                         and                dl, 0x0f                                      // 0x00543ba8    80e20f
                         xor.s              dl, al                                        // 0x00543bab    32d0
                         push               0x00000708                                    // 0x00543bad    6808070000
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x00000088], dl   // 0x00543bb2    8894b588000000
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00543bb9    8b8d0c320000
                         push               0x10                                          // 0x00543bbf    6a10
                         call               _jmp_addr_0x00480c60                          // 0x00543bc1    e89ad0f3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543bc6    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00543bcc    e87f1c0100
                         test               eax, eax                                      // 0x00543bd1    85c0
                         {disp8} je         _jmp_addr_0x00543bee                          // 0x00543bd3    7419
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543bd5    8b0d5c19d000
                         push               0x80000000                                    // 0x00543bdb    6800000080
                         push               0x2c                                          // 0x00543be0    6a2c
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00543be2    e8691c0100
                         mov.s              ecx, eax                                      // 0x00543be7    8bc8
                         call               _jmp_addr_0x005d8a10                          // 0x00543be9    e8224e0900
_jmp_addr_0x00543bee:    cmp                esi, 0x08                                     // 0x00543bee    83fe08
                         {disp8} jge        _jmp_addr_0x00543c1a                          // 0x00543bf1    7d27
                         {disp32} mov       al, byte ptr [edi + 0x0000027e]               // 0x00543bf3    8a877e020000
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x0000008b], al   // 0x00543bf9    8884b58b000000
                         {disp32} mov       cl, byte ptr [edi + 0x0000027d]               // 0x00543c00    8a8f7d020000
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x0000008a], cl   // 0x00543c06    888cb58a000000
                         {disp32} mov       dl, byte ptr [edi + 0x0000027c]               // 0x00543c0d    8a977c020000
                         {disp32} mov       byte ptr [ebp + esi * 0x4 + 0x00000089], dl   // 0x00543c13    8894b589000000
_jmp_addr_0x00543c1a:    {disp32} mov       dword ptr [ebp + 0x000030a8], 0xffffffff      // 0x00543c1a    c785a8300000ffffffff
                         {disp8} mov        byte ptr [ebp + 0x10], 0x01                   // 0x00543c24    c6451001
_jmp_addr_0x00543c28:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00543c28    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00543c2e    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543c30    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00543c36    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543c39    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543c3c    8d0450
                         shl                eax, 5                                        // 0x00543c3f    c1e005
                         {disp32} mov       eax, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00543c42    8b8408640a0000
                         test               eax, eax                                      // 0x00543c49    85c0
                         {disp8} je         _jmp_addr_0x00543c8c                          // 0x00543c4b    743f
                         {disp32} lea       edi, dword ptr [eax + 0x00001170]             // 0x00543c4d    8db870110000
                         xor.s              eax, eax                                      // 0x00543c53    33c0
                         {disp32} lea       esi, dword ptr [ebp + 0x00000088]             // 0x00543c55    8db588000000
                         mov                ecx, 0x00000008                               // 0x00543c5b    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00543c60    f3a5
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543c62    8b0d5c19d000
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543c68    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00543c6e    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543c71    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543c74    8d0450
                         shl                eax, 5                                        // 0x00543c77    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00543c7a    8b8c08640a0000
                         call               _jmp_addr_0x0047d980                          // 0x00543c81    e8fa9cf3ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543c86    8b0d5c19d000
_jmp_addr_0x00543c8c:    xor.s              eax, eax                                      // 0x00543c8c    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543c8e    8a81595a2000
                         push               0x0                                           // 0x00543c94    6a00
                         push               0x1                                           // 0x00543c96    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00543c98    8d1480
                         push               eax                                           // 0x00543c9b    50
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543c9c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543c9f    8d0450
                         shl                eax, 5                                        // 0x00543ca2    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00543ca5    8b8c08640a0000
                         push               ecx                                           // 0x00543cac    51
                         push              0x00d4bd38 /* _PlayerProfile_00d4bd38 */       // 0x00543cad    6838bdd400
                         call               _jmp_addr_0x005dea60                          // 0x00543cb2    e8a9ad0900
                         {disp32} mov       ecx, dword ptr [ebp + 0x0000320c]             // 0x00543cb7    8b8d0c320000
                         mov                edx, dword ptr [ecx]                          // 0x00543cbd    8b11
                         add                esp, 0x14                                     // 0x00543cbf    83c414
                         call               dword ptr [edx + 0x10]                        // 0x00543cc2    ff5210
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00543cc5    8b0d5c19d000
                         {disp32} mov       eax, dword ptr [ecx + 0x00250538]             // 0x00543ccb    8b8138052500
                         test               eax, eax                                      // 0x00543cd1    85c0
                         {disp8} je         _jmp_addr_0x00543d0a                          // 0x00543cd3    7435
                         xor.s              eax, eax                                      // 0x00543cd5    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00543cd7    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00543cdd    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00543ce0    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00543ce3    8d0450
                         shl                eax, 5                                        // 0x00543ce6    c1e005
                         add.s              eax, ecx                                      // 0x00543ce9    03c1
                         {disp8} lea        ecx, dword ptr [eax + 0x18]                   // 0x00543ceb    8d4818
                         test               ecx, ecx                                      // 0x00543cee    85c9
                         {disp8} je         _jmp_addr_0x00543d0a                          // 0x00543cf0    7418
                         {disp32} mov       eax, dword ptr [eax + 0x00000a64]             // 0x00543cf2    8b80640a0000
                         test               eax, eax                                      // 0x00543cf8    85c0
                         {disp8} je         _jmp_addr_0x00543d0a                          // 0x00543cfa    740e
                         mov.s              ecx, eax                                      // 0x00543cfc    8bc8
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00543cfe    e84d3bf3ff
                         mov                edx, dword ptr [eax]                          // 0x00543d03    8b10
                         mov.s              ecx, eax                                      // 0x00543d05    8bc8
                         call               dword ptr [edx + 0x10]                        // 0x00543d07    ff5210
_jmp_addr_0x00543d0a:    pop                edi                                           // 0x00543d0a    5f
                         pop                esi                                           // 0x00543d0b    5e
                         pop                ebp                                           // 0x00543d0c    5d
                         pop                ebx                                           // 0x00543d0d    5b
                         add                esp, 0x48                                     // 0x00543d0e    83c448
                         ret                0x0014                                        // 0x00543d11    c21400

// Snippet: jmptbl, [0x00543d14, 0x00543d4c)
.byte 0x25, 0x3a, 0x54, 0x00      // 0x00543d14
.byte 0x0a, 0x3d, 0x54, 0x00      // 0x00543d18
.byte 0xd5, 0x3a, 0x54, 0x00      // 0x00543d1c
.byte 0x64, 0x37, 0x54, 0x00      // 0x00543d20
.byte 0x0a, 0x3d, 0x54, 0x00      // 0x00543d24
.byte 0xf3, 0x39, 0x54, 0x00      // 0x00543d28
.byte 0xb0, 0x39, 0x54, 0x00      // 0x00543d2c
.byte 0x09, 0x3a, 0x54, 0x00      // 0x00543d30
.byte 0x0a, 0x3d, 0x54, 0x00      // 0x00543d34
.byte 0x50, 0x37, 0x54, 0x00      // 0x00543d38
.byte 0xe3, 0x3a, 0x54, 0x00      // 0x00543d3c
.byte 0x0a, 0x3d, 0x54, 0x00      // 0x00543d40
.byte 0x0a, 0x3d, 0x54, 0x00      // 0x00543d44
.byte 0xe4, 0x34, 0x54, 0x00      // 0x00543d48

// Snippet: db, [0x00543d4c, 0x00543d50)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00543d4c

