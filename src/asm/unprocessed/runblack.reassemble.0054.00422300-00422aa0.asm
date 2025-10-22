.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00422cd0
.extern _jmp_addr_0x00422d50
.extern _jmp_addr_0x004230d0
.extern ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z
.extern _jmp_addr_0x00527700
.extern _jmp_addr_0x00527710
.extern ?ToBeDeleted@MultiMapFixed@@UAEXH@Z
.extern ?AllocateMultiChild@MultiMapFixed@@QAEXXZ
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern ?CheckAndSetSaved@GameThing@@QAE_NXZ
.extern _jmp_addr_0x005c9090
.extern _jmp_addr_0x005d56c0
.extern ?ConvertToText@MapCoords@@QAEPADPAD@Z
.extern _jmp_addr_0x006055c0
.extern ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z
.extern _jmp_addr_0x0063b5d0
.extern ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z
.extern ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _sprintf
.extern __strcmpi
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00801c90
.extern ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z
.extern _jmp_addr_0x00823240

.globl _jmp_addr_0x00422580
.globl _jmp_addr_0x00422600
.globl _jmp_addr_0x00422750
.globl ?CallVirtualFunctionsForCreation@AnimatedStatic@@UAEXABUMapCoords@@@Z
.globl ?ToBeDeleted@AnimatedStatic@@UAEXH@Z
.globl ?SaveObject@AnimatedStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.globl ?Draw@ChessPion@@UAEXXZ

start_0x00422300_0x00422aa0:
// Snippet: asm, [0x00422300, 0x00422a7e)
?CallVirtualFunctionsForCreation@AnimatedStatic@@UAEXABUMapCoords@@@Z:
                         sub               esp, 0x14                                     // 0x00422300    83ec14
                         push              ebx                                           // 0x00422303    53
                         push              esi                                           // 0x00422304    56
                         mov.s             esi, ecx                                      // 0x00422305    8bf1
                         mov               eax, dword ptr [esi]                          // 0x00422307    8b06
                         push              edi                                           // 0x00422309    57
                         call              dword ptr [eax + 0x538]                       // 0x0042230a    ff9038050000
                         mov               edx, dword ptr [esi]                          // 0x00422310    8b16
                         mov.s             ecx, esi                                      // 0x00422312    8bce
                         call              dword ptr [edx + 0x608]                       // 0x00422314    ff9208060000
                         test              eax, eax                                      // 0x0042231a    85c0
                         {disp32} mov      edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x0042231c    8b1534fee900
                         {disp8} jl        _jmp_addr_0x00422328                          // 0x00422322    7c04
                         cmp               eax, dword ptr [edx]                          // 0x00422324    3b02
                         {disp8} jl        _jmp_addr_0x0042232a                          // 0x00422326    7c02
_jmp_addr_0x00422328:    xor.s             eax, eax                                      // 0x00422328    33c0
_jmp_addr_0x0042232a:    {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x0042232a    8b4e40
                         mov               edi, dword ptr [ecx]                          // 0x0042232d    8b39
                         {disp8} mov       edx, dword ptr [edx + eax * 0x4 + 0x04]       // 0x0042232f    8b548204
                         push              0x0                                           // 0x00422333    6a00
                         push              0x0                                           // 0x00422335    6a00
                         call              dword ptr [edi + 0xf4]                        // 0x00422337    ff97f4000000
                         mov               eax, dword ptr [esi]                          // 0x0042233d    8b06
                         mov.s             ecx, esi                                      // 0x0042233f    8bce
                         call              dword ptr [eax + 0x120]                       // 0x00422341    ff9020010000
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x00422347    d95c240c
                         mov               edx, dword ptr [esi]                          // 0x0042234b    8b16
                         mov.s             ecx, esi                                      // 0x0042234d    8bce
                         call              dword ptr [edx + 0x508]                       // 0x0042234f    ff9208050000
                         {disp8} fstp      dword ptr [esp + 0x10]                        // 0x00422355    d95c2410
                         {disp8} mov       ecx, dword ptr [esp + 0x24]                   // 0x00422359    8b4c2424
                         fild              dword ptr [ecx]                               // 0x0042235d    db01
                         {disp8} mov       edi, dword ptr [esi + 0x40]                   // 0x0042235f    8b7e40
                         {disp8} lea       eax, dword ptr [edi + 0x50]                   // 0x00422362    8d4750
                         push              eax                                           // 0x00422365    50
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00422366    d80da4a38a00
                         {disp8} lea       edx, dword ptr [edi + 0x4c]                   // 0x0042236c    8d574c
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x0042236f    d95c2418
                         {disp8} fild      dword ptr [ecx + 0x04]                        // 0x00422373    db4104
                         {disp32} fmul     dword ptr [_rdata_float_coord_to_point]       // 0x00422376    d80da4a38a00
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x0042237c    d95c2420
                         {disp8} fld       dword ptr [ecx + 0x08]                        // 0x00422380    d94108
                         {disp8} fstp      dword ptr [esp + 0x1c]                        // 0x00422383    d95c241c
                         call              ?GetAltitudeAndSetColorSpecular@LH3DIsland@@SAMABULH3DMapCoords@@PAK1@Z                           // 0x00422387    e8b40f3e00
                         {disp8} fadd      dword ptr [esp + 0x18]                        // 0x0042238c    d8442418
                         {disp8} mov       ecx, dword ptr [esp + 0x0c]                   // 0x00422390    8b4c240c
                         {disp8} mov       edx, dword ptr [esp + 0x10]                   // 0x00422394    8b542410
                         push              ecx                                           // 0x00422398    51
                         {disp8} fstp      dword ptr [esp + 0x1c]                        // 0x00422399    d95c241c
                         push              edx                                           // 0x0042239d    52
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x0042239e    8d54241c
                         mov.s             ecx, edi                                      // 0x004223a2    8bcf
                         call              ?SetPosition@LH3DObject@@SAXABULHPoint@@MM@Z  // 0x004223a4    e8970d0000
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x004223a9    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x004223ac    8b01
                         mov               edx, 0x00000001                               // 0x004223ae    ba01000000
                         call              dword ptr [eax + 0x88]                        // 0x004223b3    ff9088000000
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x004223b9    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x004223bc    8b01
                         mov               edx, 0x00000001                               // 0x004223be    ba01000000
                         call              dword ptr [eax + 0x40]                        // 0x004223c3    ff5040
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x004223c6    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x004223c9    8b01
                         xor.s             edx, edx                                      // 0x004223cb    33d2
                         call              dword ptr [eax + 0x80]                        // 0x004223cd    ff9080000000
                         mov               edx, dword ptr [esi]                          // 0x004223d3    8b16
                         mov.s             ecx, esi                                      // 0x004223d5    8bce
                         call              dword ptr [edx + 0x850]                       // 0x004223d7    ff9250080000
                         mov.s             ecx, esi                                      // 0x004223dd    8bce
                         call              ?AllocateMultiChild@MultiMapFixed@@QAEXXZ     // 0x004223df    e86cc61000
                         test              byte ptr [esi + 0x0a], 0x01                   // 0x004223e4    f6460a01
                         {disp8} jne       _jmp_addr_0x004223f4                          // 0x004223e8    750a
                         mov               eax, dword ptr [esi]                          // 0x004223ea    8b06
                         mov.s             ecx, esi                                      // 0x004223ec    8bce
                         call              dword ptr [eax + 0x544]                       // 0x004223ee    ff9044050000
_jmp_addr_0x004223f4:    mov               edx, dword ptr [esi]                          // 0x004223f4    8b16
                         mov.s             ecx, esi                                      // 0x004223f6    8bce
                         call              dword ptr [edx + 0x890]                       // 0x004223f8    ff9290080000
                         test              eax, eax                                      // 0x004223fe    85c0
                         {disp8} jne       _jmp_addr_0x0042241f                          // 0x00422400    751d
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00422402    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x00422405    8b01
                         mov               edx, 0x00000001                               // 0x00422407    ba01000000
                         call              dword ptr [eax + 0x88]                        // 0x0042240c    ff9088000000
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x00422412    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x00422415    8b01
                         xor.s             edx, edx                                      // 0x00422417    33d2
                         call              dword ptr [eax + 0x80]                        // 0x00422419    ff9080000000
_jmp_addr_0x0042241f:    {disp8} mov       ecx, dword ptr [esi + 0x28]                   // 0x0042241f    8b4e28
                         {disp32} mov      eax, dword ptr [ecx + 0x00000128]             // 0x00422422    8b8128010000
                         {disp32} mov      ecx, dword ptr [data_bytes + 0x517508]        // 0x00422428    8b0d08d5ed00
                         cmp               eax, dword ptr [ecx]                          // 0x0042242e    3b01
                         {disp8} jge       _jmp_addr_0x0042243c                          // 0x00422430    7d0a
                         test              eax, eax                                      // 0x00422432    85c0
                         {disp8} jl        _jmp_addr_0x0042243c                          // 0x00422434    7c06
                         {disp8} mov       eax, dword ptr [ecx + eax * 0x4 + 0x04]       // 0x00422436    8b448104
                         {disp8} jmp       _jmp_addr_0x0042243f                          // 0x0042243a    eb03
_jmp_addr_0x0042243c:    {disp8} mov       eax, dword ptr [ecx + 0x04]                   // 0x0042243c    8b4104
_jmp_addr_0x0042243f:    {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x0042243f    8b4e40
                         mov               edi, dword ptr [ecx]                          // 0x00422442    8b39
                         mov.s             edx, eax                                      // 0x00422444    8bd0
                         call              dword ptr [edi + 0x180]                       // 0x00422446    ff9780010000
                         {disp32} lea      edi, dword ptr [esi + 0x0000008c]             // 0x0042244c    8dbe8c000000
                         mov               ebx, 0x00000003                               // 0x00422452    bb03000000
_jmp_addr_0x00422457:    mov               eax, dword ptr [edi]                          // 0x00422457    8b07
                         test              eax, eax                                      // 0x00422459    85c0
                         {disp8} je        _jmp_addr_0x00422465                          // 0x0042245b    7408
                         push              eax                                           // 0x0042245d    50
                         mov.s             ecx, esi                                      // 0x0042245e    8bce
                         call              _jmp_addr_0x00422d50                          // 0x00422460    e8eb080000
_jmp_addr_0x00422465:    add               edi, 0x04                                     // 0x00422465    83c704
                         dec               ebx                                           // 0x00422468    4b
                         {disp8} jne       _jmp_addr_0x00422457                          // 0x00422469    75ec
                         mov.s             ecx, esi                                      // 0x0042246b    8bce
                         call              _jmp_addr_0x004230d0                          // 0x0042246d    e85e0c0000
                         test              eax, eax                                      // 0x00422472    85c0
                         {disp32} je       _jmp_addr_0x00422577                          // 0x00422474    0f84fd000000
                         {disp8} mov       ecx, dword ptr [esi + 0x40]                   // 0x0042247a    8b4e40
                         mov               eax, dword ptr [ecx]                          // 0x0042247d    8b01
                         xor.s             edx, edx                                      // 0x0042247f    33d2
                         call              dword ptr [eax + 0x40]                        // 0x00422481    ff5040
                         xor.s             edi, edi                                      // 0x00422484    33ff
_jmp_addr_0x00422486:    test              edi, edi                                      // 0x00422486    85ff
                         {disp32} fld      dword ptr [_rdata_float0p0]                   // 0x00422488    d90598a38a00
                         {disp8} mov       dword ptr [esp + 0x14], 0x41700000            // 0x0042248e    c744241400007041
                         {disp8} jne       _jmp_addr_0x004224a0                          // 0x00422496    7508
                         {disp8} mov       dword ptr [esp + 0x14], 0xc1700000            // 0x00422498    c7442414000070c1
_jmp_addr_0x004224a0:    {disp8} mov       eax, dword ptr [esi + 0x40]                   // 0x004224a0    8b4640
                         {disp8} fstp      dword ptr [esp + 0x1c]                        // 0x004224a3    d95c241c
                         {disp8} fld       dword ptr [esp + 0x14]                        // 0x004224a7    d9442414
                         {disp8} mov       dword ptr [esp + 0x18], 0x41f00000            // 0x004224ab    c74424180000f041
                         {disp8} fld       dword ptr [esp + 0x14]                        // 0x004224b3    d9442414
                         add               eax, 0x14                                     // 0x004224b7    83c014
                         fmul              dword ptr [eax]                               // 0x004224ba    d808
                         push              0x0                                           // 0x004224bc    6a00
                         {disp8} fld       dword ptr [eax + 0x0c]                        // 0x004224be    d9400c
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1651c]             // 0x004224c1    d80d1cf58b00
                         faddp             st(1), st                                     // 0x004224c7    dec1
                         {disp8} fadd      dword ptr [eax + 0x24]                        // 0x004224c9    d84024
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x004224cc    d95c2418
                         fld               st(0)                                         // 0x004224d0    d9c0
                         {disp8} fmul      dword ptr [eax + 0x04]                        // 0x004224d2    d84804
                         {disp8} fld       dword ptr [eax + 0x10]                        // 0x004224d5    d94010
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1651c]             // 0x004224d8    d80d1cf58b00
                         faddp             st(1), st                                     // 0x004224de    dec1
                         {disp8} fadd      dword ptr [eax + 0x28]                        // 0x004224e0    d84028
                         {disp8} fstp      dword ptr [esp + 0x1c]                        // 0x004224e3    d95c241c
                         {disp8} fmul      dword ptr [eax + 0x08]                        // 0x004224e7    d84808
                         {disp8} fld       dword ptr [eax + 0x14]                        // 0x004224ea    d94014
                         {disp32} fmul     dword ptr [rdata_bytes + 0x1651c]             // 0x004224ed    d80d1cf58b00
                         faddp             st(1), st                                     // 0x004224f3    dec1
                         {disp8} fadd      dword ptr [eax + 0x2c]                        // 0x004224f5    d8402c
                         {disp8} fstp      dword ptr [esp + 0x20]                        // 0x004224f8    d95c2420
                         call              ?Create@Game3DObject@@SAPAV1@W4ObjectType@LH3DObject@@@Z                          // 0x004224fc    e8af862100
                         {disp32} mov      dword ptr [esi + edi * 0x4 + 0x00000080], eax // 0x00422501    8984be80000000
                         {disp32} mov      edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00422508    8b1534fee900
                         mov               ebx, dword ptr [edx]                          // 0x0042250e    8b1a
                         mov               ecx, 0x0000018e                               // 0x00422510    b98e010000
                         add               esp, 0x04                                     // 0x00422515    83c404
                         cmp.s             ebx, ecx                                      // 0x00422518    3bd9
                         {disp8} jg        _jmp_addr_0x0042251e                          // 0x0042251a    7f02
                         xor.s             ecx, ecx                                      // 0x0042251c    33c9
_jmp_addr_0x0042251e:    {disp8} mov       edx, dword ptr [edx + ecx * 0x4 + 0x04]       // 0x0042251e    8b548a04
                         mov               ebx, dword ptr [eax]                          // 0x00422522    8b18
                         push              0x0                                           // 0x00422524    6a00
                         push              0x0                                           // 0x00422526    6a00
                         mov.s             ecx, eax                                      // 0x00422528    8bc8
                         call              dword ptr [ebx + 0xf4]                        // 0x0042252a    ff93f4000000
                         {disp32} mov      ecx, dword ptr [esi + edi * 0x4 + 0x00000080] // 0x00422530    8b8cbe80000000
                         mov               eax, dword ptr [ecx]                          // 0x00422537    8b01
                         mov               edx, 0x00000001                               // 0x00422539    ba01000000
                         call              dword ptr [eax + 0x58]                        // 0x0042253e    ff5058
                         {disp32} mov      ecx, dword ptr [esi + edi * 0x4 + 0x00000080] // 0x00422541    8b8cbe80000000
                         mov               eax, dword ptr [ecx]                          // 0x00422548    8b01
                         push              0x3f800000                                    // 0x0042254a    680000803f
                         push              0x0                                           // 0x0042254f    6a00
                         {disp8} lea       edx, dword ptr [esp + 0x1c]                   // 0x00422551    8d54241c
                         call              dword ptr [eax + 0x20]                        // 0x00422555    ff5020
                         {disp32} mov      ecx, dword ptr [esi + edi * 0x4 + 0x00000080] // 0x00422558    8b8cbe80000000
                         add               ecx, 0x38                                     // 0x0042255f    83c138
                         push              0x0                                           // 0x00422562    6a00
                         push              ecx                                           // 0x00422564    51
                         call              _jmp_addr_0x00823240                          // 0x00422565    e8d60c4000
                         add               esp, 0x08                                     // 0x0042256a    83c408
                         inc               edi                                           // 0x0042256d    47
                         cmp               edi, 0x02                                     // 0x0042256e    83ff02
                         {disp32} jl       _jmp_addr_0x00422486                          // 0x00422571    0f8c0fffffff
_jmp_addr_0x00422577:    pop               edi                                           // 0x00422577    5f
                         pop               esi                                           // 0x00422578    5e
                         pop               ebx                                           // 0x00422579    5b
                         add               esp, 0x14                                     // 0x0042257a    83c414
                         ret               0x0004                                        // 0x0042257d    c20400
_jmp_addr_0x00422580:    xor.s             edx, edx                                      // 0x00422580    33d2
                         {disp8} mov       dword ptr [ecx + 0x78], edx                   // 0x00422582    895178
                         {disp8} mov       dword ptr [ecx + 0x7c], edx                   // 0x00422585    89517c
                         {disp32} lea      eax, dword ptr [ecx + 0x0000008c]             // 0x00422588    8d818c000000
                         mov               ecx, 0x00000003                               // 0x0042258e    b903000000
_jmp_addr_0x00422593:    {disp8} mov       dword ptr [eax + -0x0c], edx                  // 0x00422593    8950f4
                         mov               dword ptr [eax], edx                          // 0x00422596    8910
                         add               eax, 0x04                                     // 0x00422598    83c004
                         dec               ecx                                           // 0x0042259b    49
                         {disp8} jne       _jmp_addr_0x00422593                          // 0x0042259c    75f5
                         ret                                                             // 0x0042259e    c3
                         nop                                                             // 0x0042259f    90
?ToBeDeleted@AnimatedStatic@@UAEXH@Z:
                         {disp32} mov      eax, dword ptr [_game]                        // 0x004225a0    a15c19d000
                         push              ebx                                           // 0x004225a5    53
                         push              ebp                                           // 0x004225a6    55
                         push              edi                                           // 0x004225a7    57
                         {disp32} lea      edi, dword ptr [eax + 0x00205cbc]             // 0x004225a8    8db8bc5c2000
                         mov               eax, dword ptr [edi]                          // 0x004225ae    8b07
                         xor.s             ebx, ebx                                      // 0x004225b0    33db
                         test              eax, eax                                      // 0x004225b2    85c0
                         mov.s             ebp, ecx                                      // 0x004225b4    8be9
                         {disp8} je        _jmp_addr_0x004225e5                          // 0x004225b6    742d
                         push              esi                                           // 0x004225b8    56
_jmp_addr_0x004225b9:    cmp               dword ptr [eax + 0x04], ebp                   // 0x004225b9    396804
                         mov               esi, dword ptr [eax]                          // 0x004225bc    8b30
                         {disp8} jne       _jmp_addr_0x004225dc                          // 0x004225be    751c
                         cmp               eax, dword ptr [edi]                          // 0x004225c0    3b07
                         {disp8} jne       _jmp_addr_0x004225c8                          // 0x004225c2    7504
                         mov               dword ptr [edi], esi                          // 0x004225c4    8937
                         {disp8} jmp       _jmp_addr_0x004225ca                          // 0x004225c6    eb02
_jmp_addr_0x004225c8:    mov               dword ptr [ebx], esi                          // 0x004225c8    8933
_jmp_addr_0x004225ca:    {disp8} mov       edx, dword ptr [edi + 0x04]                   // 0x004225ca    8b5704
                         dec               edx                                           // 0x004225cd    4a
                         push              eax                                           // 0x004225ce    50
                         {disp8} mov       dword ptr [edi + 0x04], edx                   // 0x004225cf    895704
                         call              ??3@YAXPAX@Z                                  // 0x004225d2    e8c1c83800
                         add               esp, 0x04                                     // 0x004225d7    83c404
                         {disp8} jmp       _jmp_addr_0x004225de                          // 0x004225da    eb02
_jmp_addr_0x004225dc:    mov.s             ebx, eax                                      // 0x004225dc    8bd8
_jmp_addr_0x004225de:    test              esi, esi                                      // 0x004225de    85f6
                         mov.s             eax, esi                                      // 0x004225e0    8bc6
                         {disp8} jne       _jmp_addr_0x004225b9                          // 0x004225e2    75d5
                         pop               esi                                           // 0x004225e4    5e
_jmp_addr_0x004225e5:    {disp8} mov       ecx, dword ptr [esp + 0x10]                   // 0x004225e5    8b4c2410
                         push              ecx                                           // 0x004225e9    51
                         mov.s             ecx, ebp                                      // 0x004225ea    8bcd
                         call              ?ToBeDeleted@MultiMapFixed@@UAEXH@Z           // 0x004225ec    e8bfbc1000
                         pop               edi                                           // 0x004225f1    5f
                         pop               ebp                                           // 0x004225f2    5d
                         pop               ebx                                           // 0x004225f3    5b
                         ret               0x0004                                        // 0x004225f4    c20400
                         nop                                                             // 0x004225f7    90
                         nop                                                             // 0x004225f8    90
                         nop                                                             // 0x004225f9    90
                         nop                                                             // 0x004225fa    90
                         nop                                                             // 0x004225fb    90
                         nop                                                             // 0x004225fc    90
                         nop                                                             // 0x004225fd    90
                         nop                                                             // 0x004225fe    90
                         nop                                                             // 0x004225ff    90
_jmp_addr_0x00422600:    push              ebx                                           // 0x00422600    53
                         {disp8} mov       ebx, dword ptr [esp + 0x08]                   // 0x00422601    8b5c2408
                         push              esi                                           // 0x00422605    56
                         push              edi                                           // 0x00422606    57
                         xor.s             edi, edi                                      // 0x00422607    33ff
                         mov               esi, 0x00c54d30                               // 0x00422609    be304dc500
_jmp_addr_0x0042260e:    mov.s             ecx, esi                                      // 0x0042260e    8bce
                         call              _jmp_addr_0x00527700                          // 0x00422610    e8eb501000
                         push              eax                                           // 0x00422615    50
                         push              ebx                                           // 0x00422616    53
                         call              __strcmpi                                     // 0x00422617    e8c4463a00
                         add               esp, 0x08                                     // 0x0042261c    83c408
                         test              eax, eax                                      // 0x0042261f    85c0
                         {disp8} je        _jmp_addr_0x0042263b                          // 0x00422621    7418
                         add               esi, 0x0000012c                               // 0x00422623    81c62c010000
                         inc               edi                                           // 0x00422629    47
                         cmp               esi, 0x00c55ff0                               // 0x0042262a    81fef05fc500
                         .byte             0x72, 0xdc// {disp8} jb _jmp_addr_0x0042260e  // 0x00422630    72dc
                         pop               edi                                           // 0x00422632    5f
                         pop               esi                                           // 0x00422633    5e
                         mov               eax, 0x00000010                               // 0x00422634    b810000000
                         pop               ebx                                           // 0x00422639    5b
                         ret                                                             // 0x0042263a    c3
_jmp_addr_0x0042263b:    mov.s             eax, edi                                      // 0x0042263b    8bc7
                         pop               edi                                           // 0x0042263d    5f
                         pop               esi                                           // 0x0042263e    5e
                         pop               ebx                                           // 0x0042263f    5b
                         ret                                                             // 0x00422640    c3
                         nop                                                             // 0x00422641    90
                         nop                                                             // 0x00422642    90
                         nop                                                             // 0x00422643    90
                         nop                                                             // 0x00422644    90
                         nop                                                             // 0x00422645    90
                         nop                                                             // 0x00422646    90
                         nop                                                             // 0x00422647    90
                         nop                                                             // 0x00422648    90
                         nop                                                             // 0x00422649    90
                         nop                                                             // 0x0042264a    90
                         nop                                                             // 0x0042264b    90
                         nop                                                             // 0x0042264c    90
                         nop                                                             // 0x0042264d    90
                         nop                                                             // 0x0042264e    90
                         nop                                                             // 0x0042264f    90
?SaveObject@AnimatedStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z:
                         sub               esp, 0x000001ac                               // 0x00422650    81ecac010000
                         push              ebx                                           // 0x00422656    53
                         push              esi                                           // 0x00422657    56
                         mov.s             esi, ecx                                      // 0x00422658    8bf1
                         call              ?CheckAndSetSaved@GameThing@@QAE_NXZ          // 0x0042265a    e891d81400
                         mov.s             ebx, eax                                      // 0x0042265f    8bd8
                         test              ebx, ebx                                      // 0x00422661    85db
                         {disp32} je       _jmp_addr_0x0042273a                          // 0x00422663    0f84d1000000
                         {disp32} mov      eax, dword ptr [esp + 0x000001bc]             // 0x00422669    8b8424bc010000
                         test              eax, eax                                      // 0x00422670    85c0
                         {disp8} je        _jmp_addr_0x00422684                          // 0x00422672    7410
                         push              eax                                           // 0x00422674    50
                         {disp8} lea       eax, dword ptr [esp + 0x1c]                   // 0x00422675    8d44241c
                         push              eax                                           // 0x00422679    50
                         {disp8} lea       ecx, dword ptr [esi + 0x14]                   // 0x0042267a    8d4e14
                         call              _jmp_addr_0x006055c0                          // 0x0042267d    e83e2f1e00
                         {disp8} jmp       _jmp_addr_0x00422687                          // 0x00422682    eb03
_jmp_addr_0x00422684:    {disp8} lea       eax, dword ptr [esi + 0x14]                   // 0x00422684    8d4614
_jmp_addr_0x00422687:    mov               ecx, dword ptr [eax]                          // 0x00422687    8b08
                         {disp8} mov       dword ptr [esp + 0x0c], ecx                   // 0x00422689    894c240c
                         {disp8} mov       edx, dword ptr [eax + 0x04]                   // 0x0042268d    8b5004
                         {disp8} mov       dword ptr [esp + 0x10], edx                   // 0x00422690    89542410
                         {disp8} mov       eax, dword ptr [eax + 0x08]                   // 0x00422694    8b4008
                         mov               edx, dword ptr [esi]                          // 0x00422697    8b16
                         push              edi                                           // 0x00422699    57
                         mov.s             ecx, esi                                      // 0x0042269a    8bce
                         {disp8} mov       dword ptr [esp + 0x18], eax                   // 0x0042269c    89442418
                         call              dword ptr [edx + 0x120]                       // 0x004226a0    ff9220010000
                         {disp8} fstp      dword ptr [esp + 0x0c]                        // 0x004226a6    d95c240c
                         mov               eax, dword ptr [esi]                          // 0x004226aa    8b06
                         mov.s             ecx, esi                                      // 0x004226ac    8bce
                         call              dword ptr [eax + 0x508]                       // 0x004226ae    ff9008050000
                         {disp8} fld       dword ptr [esp + 0x0c]                        // 0x004226b4    d944240c
                         {disp32} fmul     dword ptr [__real@447a0000]                   // 0x004226b8    d80d28b28a00
                         call              _jmp_addr_0x007a1400                          // 0x004226be    e83ded3700
                         {disp32} fmul     dword ptr [__real@447a0000]                   // 0x004226c3    d80d28b28a00
                         push              eax                                           // 0x004226c9    50
                         call              _jmp_addr_0x007a1400                          // 0x004226ca    e831ed3700
                         push              eax                                           // 0x004226cf    50
                         {disp32} lea      ecx, dword ptr [esp + 0x0000015c]             // 0x004226d0    8d8c245c010000
                         push              ecx                                           // 0x004226d7    51
                         mov.s             ecx, esi                                      // 0x004226d8    8bce
                         call              _jmp_addr_0x00527710                          // 0x004226da    e831501000
                         push              eax                                           // 0x004226df    50
                         {disp32} lea      edx, dword ptr [esp + 0x000000fc]             // 0x004226e0    8d9424fc000000
                         push              edx                                           // 0x004226e7    52
                         {disp8} lea       ecx, dword ptr [esp + 0x20]                   // 0x004226e8    8d4c2420
                         call              ?ConvertToText@MapCoords@@QAEPADPAD@Z         // 0x004226ec    e88f011e00
                         push              eax                                           // 0x004226f1    50
                         push              0x57                                          // 0x004226f2    6a57
                         call              ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z                          // 0x004226f4    e8372a2f00
                         add               esp, 0x04                                     // 0x004226f9    83c404
                         push              eax                                           // 0x004226fc    50
                         {disp8} lea       eax, dword ptr [esp + 0x3c]                   // 0x004226fd    8d44243c
                         push              eax                                           // 0x00422701    50
                         call              _sprintf                                      // 0x00422702    e8cb303a00
                         {disp32} mov      edx, dword ptr [esp + 0x000001d4]             // 0x00422707    8b9424d4010000
                         or                ecx, 0xffffffff                               // 0x0042270e    83c9ff
                         xor.s             eax, eax                                      // 0x00422711    33c0
                         {disp8} lea       edi, dword ptr [esp + 0x40]                   // 0x00422713    8d7c2440
                         repne scasb                                                     // 0x00422717    f2ae
                         not               ecx                                           // 0x00422719    f7d1
                         dec               ecx                                           // 0x0042271b    49
                         push              ecx                                           // 0x0042271c    51
                         {disp8} lea       ecx, dword ptr [esp + 0x44]                   // 0x0042271d    8d4c2444
                         push              ecx                                           // 0x00422721    51
                         push              edx                                           // 0x00422722    52
                         push              esi                                           // 0x00422723    56
                         call              ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z  // 0x00422724    e8e76e2f00
                         add               esp, 0x28                                     // 0x00422729    83c428
                         pop               edi                                           // 0x0042272c    5f
                         pop               esi                                           // 0x0042272d    5e
                         mov.s             eax, ebx                                      // 0x0042272e    8bc3
                         pop               ebx                                           // 0x00422730    5b
                         add               esp, 0x000001ac                               // 0x00422731    81c4ac010000
                         ret               0x0008                                        // 0x00422737    c20800
_jmp_addr_0x0042273a:    pop               esi                                           // 0x0042273a    5e
                         mov.s             eax, ebx                                      // 0x0042273b    8bc3
                         pop               ebx                                           // 0x0042273d    5b
                         add               esp, 0x000001ac                               // 0x0042273e    81c4ac010000
                         ret               0x0008                                        // 0x00422744    c20800
                         nop                                                             // 0x00422747    90
                         nop                                                             // 0x00422748    90
                         nop                                                             // 0x00422749    90
                         nop                                                             // 0x0042274a    90
                         nop                                                             // 0x0042274b    90
                         nop                                                             // 0x0042274c    90
                         nop                                                             // 0x0042274d    90
                         nop                                                             // 0x0042274e    90
                         nop                                                             // 0x0042274f    90
_jmp_addr_0x00422750:    {disp8} mov       edx, dword ptr [esp + 0x04]                   // 0x00422750    8b542404
                         {disp8} mov       ecx, dword ptr [edx + 0x38]                   // 0x00422754    8b4a38
                         {disp8} lea       eax, dword ptr [ecx + -0x02]                  // 0x00422757    8d41fe
                         imul              eax, dword ptr [edx + 0x20]                   // 0x0042275a    0faf4220
                         cdq                                                             // 0x0042275e    99
                         idiv              ecx                                           // 0x0042275f    f7f9
                         ret                                                             // 0x00422761    c3
                         nop                                                             // 0x00422762    90
                         nop                                                             // 0x00422763    90
                         nop                                                             // 0x00422764    90
                         nop                                                             // 0x00422765    90
                         nop                                                             // 0x00422766    90
                         nop                                                             // 0x00422767    90
                         nop                                                             // 0x00422768    90
                         nop                                                             // 0x00422769    90
                         nop                                                             // 0x0042276a    90
                         nop                                                             // 0x0042276b    90
                         nop                                                             // 0x0042276c    90
                         nop                                                             // 0x0042276d    90
                         nop                                                             // 0x0042276e    90
                         nop                                                             // 0x0042276f    90
?Draw@ChessPion@@UAEXXZ:
                         sub               esp, 0x10                                     // 0x00422770    83ec10
                         push              ebx                                           // 0x00422773    53
                         push              ebp                                           // 0x00422774    55
                         mov.s             ebx, ecx                                      // 0x00422775    8bd9
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x00422777    8b4b40
                         mov               eax, dword ptr [ecx]                          // 0x0042277a    8b01
                         push              esi                                           // 0x0042277c    56
                         push              edi                                           // 0x0042277d    57
                         call              dword ptr [eax + 0x18c]                       // 0x0042277e    ff908c010000
                         mov.s             esi, eax                                      // 0x00422784    8bf0
                         cmp               dword ptr [ebx + 0x7c], 0x01                  // 0x00422786    837b7c01
                         {disp8} jne       _jmp_addr_0x004227b0                          // 0x0042278a    7524
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x0042278c    8b4b40
                         {disp32} mov      ebp, dword ptr [data_bytes + 0x4e3ec0]        // 0x0042278f    8b2dc09eea00
                         mov               edx, dword ptr [ecx]                          // 0x00422795    8b11
                         add.s             esi, ebp                                      // 0x00422797    03f5
                         call              dword ptr [edx + 0x184]                       // 0x00422799    ff9284010000
                         push              eax                                           // 0x0042279f    50
                         call              _jmp_addr_0x00422750                          // 0x004227a0    e8abffffff
                         add               esp, 0x04                                     // 0x004227a5    83c404
                         cmp.s             esi, eax                                      // 0x004227a8    3bf0
                         {disp8} jle       _jmp_addr_0x004227ba                          // 0x004227aa    7e0e
                         mov.s             esi, eax                                      // 0x004227ac    8bf0
                         {disp8} jmp       _jmp_addr_0x004227ba                          // 0x004227ae    eb0a
_jmp_addr_0x004227b0:    sub               esi, dword ptr [data_bytes + 0x4e3ec0]        // 0x004227b0    2b35c09eea00
                         {disp8} jns       _jmp_addr_0x004227ba                          // 0x004227b6    7902
                         xor.s             esi, esi                                      // 0x004227b8    33f6
_jmp_addr_0x004227ba:    {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x004227ba    8b4b40
                         mov               eax, dword ptr [ecx]                          // 0x004227bd    8b01
                         mov.s             edx, esi                                      // 0x004227bf    8bd6
                         call              dword ptr [eax + 0x188]                       // 0x004227c1    ff9088010000
                         {disp8} mov       eax, dword ptr [ebx + 0x40]                   // 0x004227c7    8b4340
                         {disp8} lea       esi, dword ptr [eax + 0x50]                   // 0x004227ca    8d7050
                         {disp8} lea       edi, dword ptr [eax + 0x4c]                   // 0x004227cd    8d784c
                         push              esi                                           // 0x004227d0    56
                         {disp8} lea       ebp, dword ptr [eax + 0x38]                   // 0x004227d1    8d6838
                         push              edi                                           // 0x004227d4    57
                         push              ebp                                           // 0x004227d5    55
                         call              _jmp_addr_0x00801c90                          // 0x004227d6    e8b5f43d00
                         mov               ecx, dword ptr [esi]                          // 0x004227db    8b0e
                         push              edi                                           // 0x004227dd    57
                         push              ecx                                           // 0x004227de    51
                         push              ebp                                           // 0x004227df    55
                         call              _jmp_addr_0x007feb30                          // 0x004227e0    e84bc33d00
                         mov               dword ptr [esi], eax                          // 0x004227e5    8906
                         {disp8} mov       ecx, dword ptr [ebx + 0x28]                   // 0x004227e7    8b4b28
                         sub               ecx, 0x00c54d30                               // 0x004227ea    81e9304dc500
                         mov               eax, 0x1b4e81b5                               // 0x004227f0    b8b5814e1b
                         imul              ecx                                           // 0x004227f5    f7e9
                         sar               edx, 5                                        // 0x004227f7    c1fa05
                         mov.s             eax, edx                                      // 0x004227fa    8bc2
                         shr               eax, 0x1f                                     // 0x004227fc    c1e81f
                         add.s             edx, eax                                      // 0x004227ff    03d0
                         add               esp, 0x18                                     // 0x00422801    83c418
                         cmp               edx, 0x0f                                     // 0x00422804    83fa0f
                         {disp32} ja       _jmp_addr_0x00422a76                          // 0x00422807    0f8769020000
                         xor.s             ecx, ecx                                      // 0x0042280d    33c9
                         {disp32} mov      cl, byte ptr [edx + 0x00422a90]               // 0x0042280f    8a8a902a4200
                         jmp               dword ptr [ecx*4 + 0x422a80]                  // 0x00422815    ff248d802a4200
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x0042281c    8b4b40
                         mov.s             edx, ebx                                      // 0x0042281f    8bd3
                         call              _jmp_addr_0x0063b5d0                          // 0x00422821    e8aa8d2100
                         {disp32} mov      ebp, dword ptr [data_bytes + 0x4dbaf0]        // 0x00422826    8b2df01aea00
                         test              ebp, ebp                                      // 0x0042282c    85ed
                         {disp8} je        _jmp_addr_0x00422861                          // 0x0042282e    7431
                         {disp32} lea      esi, dword ptr [ebx + 0x00000080]             // 0x00422830    8db380000000
                         mov               edi, 0x00000002                               // 0x00422836    bf02000000
_jmp_addr_0x0042283b:    {disp8} mov       edx, dword ptr [ebx + 0x40]                   // 0x0042283b    8b5340
                         {disp8} mov       ecx, dword ptr [edx + 0x4c]                   // 0x0042283e    8b4a4c
                         mov               eax, dword ptr [esi]                          // 0x00422841    8b06
                         {disp8} mov       dword ptr [eax + 0x4c], ecx                   // 0x00422843    89484c
                         {disp8} mov       edx, dword ptr [ebx + 0x40]                   // 0x00422846    8b5340
                         {disp8} mov       ecx, dword ptr [edx + 0x50]                   // 0x00422849    8b4a50
                         mov               eax, dword ptr [esi]                          // 0x0042284c    8b06
                         {disp8} mov       dword ptr [eax + 0x50], ecx                   // 0x0042284e    894850
                         mov               ecx, dword ptr [esi]                          // 0x00422851    8b0e
                         mov               edx, dword ptr [ecx]                          // 0x00422853    8b11
                         call              dword ptr [edx + 0x100]                       // 0x00422855    ff9200010000
                         add               esi, 0x04                                     // 0x0042285b    83c604
                         dec               edi                                           // 0x0042285e    4f
                         {disp8} jne       _jmp_addr_0x0042283b                          // 0x0042285f    75da
_jmp_addr_0x00422861:    pop               edi                                           // 0x00422861    5f
                         pop               esi                                           // 0x00422862    5e
                         {disp32} mov      dword ptr [data_bytes + 0x4dbaf0], ebp        // 0x00422863    892df01aea00
                         pop               ebp                                           // 0x00422869    5d
                         pop               ebx                                           // 0x0042286a    5b
                         add               esp, 0x10                                     // 0x0042286b    83c410
                         ret                                                             // 0x0042286e    c3
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x0042286f    8b4b40
                         mov.s             edx, ebx                                      // 0x00422872    8bd3
                         call              _jmp_addr_0x0063b5d0                          // 0x00422874    e8578d2100
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00422879    a1f01aea00
                         mov.s             ecx, ebx                                      // 0x0042287e    8bcb
                         {disp8} mov       dword ptr [esp + 0x1c], eax                   // 0x00422880    8944241c
                         call              _jmp_addr_0x00422cd0                          // 0x00422884    e847040000
                         test              eax, eax                                      // 0x00422889    85c0
                         {disp32} je       _jmp_addr_0x00422965                          // 0x0042288b    0f84d4000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x00422891    c744241000000000
                         {disp32} lea      ebp, dword ptr [ebx + 0x00000080]             // 0x00422899    8dab80000000
_jmp_addr_0x0042289f:    cmp               dword ptr [ebp + 0x00], 0x00                  // 0x0042289f    837d0000
                         {disp32} je       _jmp_addr_0x00422950                          // 0x004228a3    0f84a7000000
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x004228a9    8b4b40
                         mov.s             esi, ecx                                      // 0x004228ac    8bf1
                         mov               edx, dword ptr [esi]                          // 0x004228ae    8b16
                         {disp8} mov       dword ptr [esp + 0x18], ecx                   // 0x004228b0    894c2418
                         call              dword ptr [edx + 0x18c]                       // 0x004228b4    ff928c010000
                         {disp8} mov       dword ptr [esp + 0x14], eax                   // 0x004228ba    89442414
                         {disp8} fild      dword ptr [esp + 0x14]                        // 0x004228be    db442414
                         mov               eax, dword ptr [esi]                          // 0x004228c2    8b06
                         mov.s             ecx, esi                                      // 0x004228c4    8bce
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x004228c6    d95c2418
                         call              dword ptr [eax + 0x184]                       // 0x004228ca    ff9084010000
                         {disp8} mov       ecx, dword ptr [eax + 0x20]                   // 0x004228d0    8b4820
                         sub               ecx, 0x03                                     // 0x004228d3    83e903
                         {disp8} mov       dword ptr [esp + 0x14], ecx                   // 0x004228d6    894c2414
                         {disp8} fild      dword ptr [esp + 0x14]                        // 0x004228da    db442414
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x004228de    8b4d00
                         mov               edx, dword ptr [ecx]                          // 0x004228e1    8b11
                         {disp8} fdivr     dword ptr [esp + 0x18]                        // 0x004228e3    d87c2418
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x004228e7    d95c2418
                         call              dword ptr [edx + 0xf8]                        // 0x004228eb    ff92f8000000
                         {disp8} fld       dword ptr [eax + 0x28]                        // 0x004228f1    d94028
                         {disp8} mov       esi, dword ptr [ebx + 0x40]                   // 0x004228f4    8b7340
                         fadd.s            st(0), st(0)                                  // 0x004228f7    dcc0
                         {disp8} fild      dword ptr [esp + 0x10]                        // 0x004228f9    db442410
                         {disp8} mov       edi, dword ptr [ebp + 0x00]                   // 0x004228fd    8b7d00
                         add               esi, 0x14                                     // 0x00422900    83c614
                         add               edi, 0x14                                     // 0x00422903    83c714
                         mov               ecx, 0x0000000c                               // 0x00422906    b90c000000
                         fmul              st, st(1)                                     // 0x0042290b    d8c9
                         {disp32} fld      dword ptr [rdata_bytes + 0x189bc]             // 0x0042290d    d905bc198c00
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x00422913    f3a5
                         fmul              st, st(2)                                     // 0x00422915    d8ca
                         {disp8} fmul      dword ptr [esp + 0x18]                        // 0x00422917    d84c2418
                         fsubp             st(1), st                                     // 0x0042291b    dee9
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x0042291d    d95c2418
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x00422921    8b4b40
                         mov               eax, dword ptr [ecx]                          // 0x00422924    8b01
                         fstp              st(0)                                         // 0x00422926    ddd8
                         call              dword ptr [eax + 0xf8]                        // 0x00422928    ff90f8000000
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x0042292e    8b4d00
                         {disp8} fld       dword ptr [eax + 0x28]                        // 0x00422931    d94028
                         xor.s             edx, edx                                      // 0x00422934    33d2
                         fadd.s            st(0), st(0)                                  // 0x00422936    dcc0
                         {disp8} fadd      dword ptr [esp + 0x18]                        // 0x00422938    d8442418
                         {disp32} fsub     dword ptr [__real@3e4ccccd]                   // 0x0042293c    d82544b28a00
                         {disp8} fadd      dword ptr [ecx + 0x3c]                        // 0x00422942    d8413c
                         {disp8} fstp      dword ptr [ecx + 0x3c]                        // 0x00422945    d9593c
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x00422948    8b4d00
                         call              _jmp_addr_0x0063b5d0                          // 0x0042294b    e8808c2100
_jmp_addr_0x00422950:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x00422950    8b442410
                         inc               eax                                           // 0x00422954    40
                         add               ebp, 0x04                                     // 0x00422955    83c504
                         cmp               eax, 0x03                                     // 0x00422958    83f803
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x0042295b    89442410
                         {disp32} jl       _jmp_addr_0x0042289f                          // 0x0042295f    0f8c3affffff
_jmp_addr_0x00422965:    {disp8} mov       eax, dword ptr [ebx + 0x7c]                   // 0x00422965    8b437c
                         test              eax, eax                                      // 0x00422968    85c0
                         {disp32} jne      _jmp_addr_0x00422a5b                          // 0x0042296a    0f85eb000000
                         {disp8} mov       dword ptr [esp + 0x10], 0x00000000            // 0x00422970    c744241000000000
                         {disp32} lea      ebp, dword ptr [ebx + 0x00000080]             // 0x00422978    8dab80000000
_jmp_addr_0x0042297e:    {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x0042297e    8b4d00
                         test              ecx, ecx                                      // 0x00422981    85c9
                         {disp32} je       _jmp_addr_0x00422a46                          // 0x00422983    0f84bd000000
                         mov               edx, dword ptr [ecx]                          // 0x00422989    8b11
                         call              dword ptr [edx + 0xf8]                        // 0x0042298b    ff92f8000000
                         {disp8} fild      dword ptr [esp + 0x10]                        // 0x00422991    db442410
                         {disp8} mov       esi, dword ptr [ebx + 0x40]                   // 0x00422995    8b7340
                         {disp8} mov       edi, dword ptr [ebp + 0x00]                   // 0x00422998    8b7d00
                         {disp8} fmul      dword ptr [eax + 0x28]                        // 0x0042299b    d84828
                         add               esi, 0x14                                     // 0x0042299e    83c614
                         add               edi, 0x14                                     // 0x004229a1    83c714
                         mov               ecx, 0x0000000c                               // 0x004229a4    b90c000000
                         rep movsd         es:[edi], dword ptr ds:[esi]                  // 0x004229a9    f3a5
                         fadd.s            st(0), st(0)                                  // 0x004229ab    dcc0
                         {disp8} fstp      dword ptr [esp + 0x18]                        // 0x004229ad    d95c2418
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x004229b1    8b4b40
                         mov               eax, dword ptr [ecx]                          // 0x004229b4    8b01
                         call              dword ptr [eax + 0xf8]                        // 0x004229b6    ff90f8000000
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x004229bc    8b4d00
                         {disp8} fld       dword ptr [eax + 0x28]                        // 0x004229bf    d94028
                         fadd.s            st(0), st(0)                                  // 0x004229c2    dcc0
                         {disp8} fadd      dword ptr [esp + 0x18]                        // 0x004229c4    d8442418
                         {disp32} fsub     dword ptr [__real@3e4ccccd]                   // 0x004229c8    d82544b28a00
                         {disp8} fadd      dword ptr [ecx + 0x3c]                        // 0x004229ce    d8413c
                         {disp8} fstp      dword ptr [ecx + 0x3c]                        // 0x004229d1    d9593c
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x004229d4    8b4d00
                         mov               edx, dword ptr [ecx]                          // 0x004229d7    8b11
                         {disp8} lea       eax, dword ptr [ecx + 0x38]                   // 0x004229d9    8d4138
                         push              eax                                           // 0x004229dc    50
                         call              dword ptr [edx + 0x34]                        // 0x004229dd    ff5234
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x004229e0    8b4b40
                         {disp8} mov       eax, dword ptr [ecx + 0x4c]                   // 0x004229e3    8b414c
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x004229e6    8b5500
                         {disp8} mov       dword ptr [edx + 0x4c], eax                   // 0x004229e9    89424c
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x004229ec    8b4b40
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x004229ef    8b5500
                         {disp8} mov       eax, dword ptr [ecx + 0x50]                   // 0x004229f2    8b4150
                         {disp8} mov       dword ptr [edx + 0x50], eax                   // 0x004229f5    894250
                         {disp8} mov       ecx, dword ptr [ebp + 0x00]                   // 0x004229f8    8b4d00
                         mov               edx, dword ptr [ecx]                          // 0x004229fb    8b11
                         call              dword ptr [edx + 0x100]                       // 0x004229fd    ff9200010000
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00422a03    a1f01aea00
                         test              eax, eax                                      // 0x00422a08    85c0
                         {disp8} je        _jmp_addr_0x00422a46                          // 0x00422a0a    743a
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbaf4]        // 0x00422a0c    a1f41aea00
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00422a11    8b0d5c19d000
                         {disp32} mov      ecx, dword ptr [ecx + 0x0025005c]             // 0x00422a17    8b895c002500
                         push              eax                                           // 0x00422a1d    50
                         push              ebx                                           // 0x00422a1e    53
                         call              _jmp_addr_0x005c9090                          // 0x00422a1f    e86c661a00
                         {disp32} mov      eax, dword ptr [data_bytes + 0x4dbad0]        // 0x00422a24    a1d01aea00
                         test              eax, eax                                      // 0x00422a29    85c0
                         {disp8} je        _jmp_addr_0x00422a46                          // 0x00422a2b    7419
                         {disp8} mov       edx, dword ptr [ebp + 0x00]                   // 0x00422a2d    8b5500
                         {disp32} mov      ecx, dword ptr [_game]                        // 0x00422a30    8b0d5c19d000
                         push              edx                                           // 0x00422a36    52
                         push              0x0                                           // 0x00422a37    6a00
                         push              ebx                                           // 0x00422a39    53
                         call              ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00422a3a    e8112e1300
                         mov.s             ecx, eax                                      // 0x00422a3f    8bc8
                         call              _jmp_addr_0x005d56c0                          // 0x00422a41    e87a2c1b00
_jmp_addr_0x00422a46:    {disp8} mov       eax, dword ptr [esp + 0x10]                   // 0x00422a46    8b442410
                         inc               eax                                           // 0x00422a4a    40
                         add               ebp, 0x04                                     // 0x00422a4b    83c504
                         cmp               eax, 0x03                                     // 0x00422a4e    83f803
                         {disp8} mov       dword ptr [esp + 0x10], eax                   // 0x00422a51    89442410
                         {disp32} jl       _jmp_addr_0x0042297e                          // 0x00422a55    0f8c23ffffff
_jmp_addr_0x00422a5b:    {disp8} mov       eax, dword ptr [esp + 0x1c]                   // 0x00422a5b    8b44241c
                         pop               edi                                           // 0x00422a5f    5f
                         pop               esi                                           // 0x00422a60    5e
                         pop               ebp                                           // 0x00422a61    5d
                         {disp32} mov      dword ptr [data_bytes + 0x4dbaf0], eax        // 0x00422a62    a3f01aea00
                         pop               ebx                                           // 0x00422a67    5b
                         add               esp, 0x10                                     // 0x00422a68    83c410
                         ret                                                             // 0x00422a6b    c3
                         {disp8} mov       ecx, dword ptr [ebx + 0x40]                   // 0x00422a6c    8b4b40
                         mov.s             edx, ebx                                      // 0x00422a6f    8bd3
                         call              _jmp_addr_0x0063b5d0                          // 0x00422a71    e85a8b2100
_jmp_addr_0x00422a76:    pop               edi                                           // 0x00422a76    5f
                         pop               esi                                           // 0x00422a77    5e
                         pop               ebp                                           // 0x00422a78    5d
                         pop               ebx                                           // 0x00422a79    5b
                         add               esp, 0x10                                     // 0x00422a7a    83c410
                         ret                                                             // 0x00422a7d    c3

// Snippet: db, [0x00422a7e, 0x00422a80)
.byte 0x8b, 0xff                  // 0x00422a7e

// Snippet: jmptbl, [0x00422a80, 0x00422a90)
.byte 0x1c, 0x28, 0x42, 0x00      // 0x00422a80
.byte 0x6f, 0x28, 0x42, 0x00      // 0x00422a84
.byte 0x6c, 0x2a, 0x42, 0x00      // 0x00422a88
.byte 0x76, 0x2a, 0x42, 0x00      // 0x00422a8c

// Snippet: ijmptbl, [0x00422a90, 0x00422aa0)
.byte 0x00, 0x01, 0x02, 0x03      // 0x00422a90
.byte 0x03, 0x03, 0x03, 0x03      // 0x00422a94
.byte 0x03, 0x03, 0x03, 0x03      // 0x00422a98
.byte 0x03, 0x03, 0x03, 0x02      // 0x00422a9c

