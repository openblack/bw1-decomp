.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @DeleteString__9SetupListFi@12
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x00551040
.extern _jmp_addr_0x00557f90
.extern _jmp_addr_0x00566890
.extern _jmp_addr_0x00591010
.extern _jmp_addr_0x005c5f50
.extern _jmp_addr_0x00635cf0
.extern _jmp_addr_0x00635d40
.extern _jmp_addr_0x00636220
.extern _jmp_addr_0x0063ed40
.extern _jmp_addr_0x00640cb0
.extern _jmp_addr_0x00641510
.extern _sprintf
.extern _wcscpy
.extern __sleep
.extern ___nw__FUl
.extern _Report3D__FPCce
.extern _CHAR2WCHAR__FPc

start_0x00640fa0_0x00641510:
// Snippet: asm, [0x00640fa0, 0x006414b7)
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00640fa0    8b442404
                         cmp              eax, 0x18                                     // 0x00640fa4    83f818
                         {disp8} je       _jmp_addr_0x00640fdb                          // 0x00640fa7    7432
                         cmp              eax, 0x23                                     // 0x00640fa9    83f823
                         {disp8} je       _jmp_addr_0x00640fc0                          // 0x00640fac    7412
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x00640fae    8b4c2408
                         push             ecx                                           // 0x00640fb2    51
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00640fb3    8b0d5c19d000
                         push             eax                                           // 0x00640fb9    50
                         call             _jmp_addr_0x00640cb0                          // 0x00640fba    e8f1fcffff
                         ret                                                            // 0x00640fbf    c3
_jmp_addr_0x00640fc0:    push             0x0                                           // 0x00640fc0    6a00
                         push             0x00bfe5d4                                    // 0x00640fc2    68d4e5bf00
                         call             _jmp_addr_0x0063ed40                          // 0x00640fc7    e874ddffff
                         push             0x1                                           // 0x00640fcc    6a01
                         push             0x00bfe5b8                                    // 0x00640fce    68b8e5bf00
                         call             _jmp_addr_0x0063ed40                          // 0x00640fd3    e868ddffff
                         add              esp, 0x10                                     // 0x00640fd8    83c410
_jmp_addr_0x00640fdb:    ret                                                            // 0x00640fdb    c3
                         nop                                                            // 0x00640fdc    90
                         nop                                                            // 0x00640fdd    90
                         nop                                                            // 0x00640fde    90
                         nop                                                            // 0x00640fdf    90
                         ret              0x0008                                        // 0x00640fe0    c20800
                         nop                                                            // 0x00640fe3    90
                         nop                                                            // 0x00640fe4    90
                         nop                                                            // 0x00640fe5    90
                         nop                                                            // 0x00640fe6    90
                         nop                                                            // 0x00640fe7    90
                         nop                                                            // 0x00640fe8    90
                         nop                                                            // 0x00640fe9    90
                         nop                                                            // 0x00640fea    90
                         nop                                                            // 0x00640feb    90
                         nop                                                            // 0x00640fec    90
                         nop                                                            // 0x00640fed    90
                         nop                                                            // 0x00640fee    90
                         nop                                                            // 0x00640fef    90
                         ret              0x0008                                        // 0x00640ff0    c20800
                         nop                                                            // 0x00640ff3    90
                         nop                                                            // 0x00640ff4    90
                         nop                                                            // 0x00640ff5    90
                         nop                                                            // 0x00640ff6    90
                         nop                                                            // 0x00640ff7    90
                         nop                                                            // 0x00640ff8    90
                         nop                                                            // 0x00640ff9    90
                         nop                                                            // 0x00640ffa    90
                         nop                                                            // 0x00640ffb    90
                         nop                                                            // 0x00640ffc    90
                         nop                                                            // 0x00640ffd    90
                         nop                                                            // 0x00640ffe    90
                         nop                                                            // 0x00640fff    90
                         ret              0x0008                                        // 0x00641000    c20800
                         nop                                                            // 0x00641003    90
                         nop                                                            // 0x00641004    90
                         nop                                                            // 0x00641005    90
                         nop                                                            // 0x00641006    90
                         nop                                                            // 0x00641007    90
                         nop                                                            // 0x00641008    90
                         nop                                                            // 0x00641009    90
                         nop                                                            // 0x0064100a    90
                         nop                                                            // 0x0064100b    90
                         nop                                                            // 0x0064100c    90
                         nop                                                            // 0x0064100d    90
                         nop                                                            // 0x0064100e    90
                         nop                                                            // 0x0064100f    90
                         cmp              dword ptr [esp + 0x04], 0x1e                  // 0x00641010    837c24041e
                         {disp8} jne      _jmp_addr_0x00641041                          // 0x00641015    752a
                         push             0x00000f5e                                    // 0x00641017    685e0f0000
                         push             0x00bfe2d8                                    // 0x0064101c    68d8e2bf00
                         push             0x4                                           // 0x00641021    6a04
                         call             ___nw__FUl                                    // 0x00641023    e868a71900
                         add              esp, 0x0c                                     // 0x00641028    83c40c
                         push             0x4                                           // 0x0064102b    6a04
                         push             eax                                           // 0x0064102d    50
                         mov              dword ptr [eax], 0x00000000                   // 0x0064102e    c70000000000
                         {disp32} mov     ecx, dword ptr [_game]                        // 0x00641034    8b0d5c19d000
                         push             0x6b                                          // 0x0064103a    6a6b
                         call             _jmp_addr_0x00551040                          // 0x0064103c    e8fffff0ff
_jmp_addr_0x00641041:    ret              0x0008                                        // 0x00641041    c20800
                         nop                                                            // 0x00641044    90
                         nop                                                            // 0x00641045    90
                         nop                                                            // 0x00641046    90
                         nop                                                            // 0x00641047    90
                         nop                                                            // 0x00641048    90
                         nop                                                            // 0x00641049    90
                         nop                                                            // 0x0064104a    90
                         nop                                                            // 0x0064104b    90
                         nop                                                            // 0x0064104c    90
                         nop                                                            // 0x0064104d    90
                         nop                                                            // 0x0064104e    90
                         nop                                                            // 0x0064104f    90
                         call             _jmp_addr_0x00566890                          // 0x00641050    e83b58f2ff
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab08]        // 0x00641055    8b0d080bcd00
                         {disp8} mov      dword ptr [ecx + 0x6c], eax                   // 0x0064105b    89416c
                         {disp32} mov     edx, dword ptr [data_bytes + 0x30ab08]        // 0x0064105e    8b15080bcd00
                         {disp8} mov      byte ptr [edx + 0x40], 0x00                   // 0x00641064    c6424000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x30ab08]        // 0x00641068    8b0d080bcd00
                         mov              eax, dword ptr [ecx]                          // 0x0064106e    8b01
                         {disp8} jmp      dword ptr [eax + 0xc]                         // 0x00641070    ff600c
                         nop                                                            // 0x00641073    90
                         nop                                                            // 0x00641074    90
                         nop                                                            // 0x00641075    90
                         nop                                                            // 0x00641076    90
                         nop                                                            // 0x00641077    90
                         nop                                                            // 0x00641078    90
                         nop                                                            // 0x00641079    90
                         nop                                                            // 0x0064107a    90
                         nop                                                            // 0x0064107b    90
                         nop                                                            // 0x0064107c    90
                         nop                                                            // 0x0064107d    90
                         nop                                                            // 0x0064107e    90
                         nop                                                            // 0x0064107f    90
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x00641080    8b442404
                         sub              esp, 0x00000c08                               // 0x00641084    81ec080c0000
                         add              eax, -0x04                                    // 0x0064108a    83c0fc
                         cmp              eax, 0x2c                                     // 0x0064108d    83f82c
                         push             esi                                           // 0x00641090    56
                         push             edi                                           // 0x00641091    57
                         {disp32} ja      _jmp_addr_0x006414ac                          // 0x00641092    0f8714040000
                         xor.s            ecx, ecx                                      // 0x00641098    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x006414d8]               // 0x0064109a    8a88d8146400
                         jmp              dword ptr [ecx*4 + 0x6414b8]                  // 0x006410a0    ff248db8146400
                         {disp32} mov     edx, dword ptr [_game]                        // 0x006410a7    8b155c19d000
                         {disp32} mov     eax, dword ptr [edx + 0x0025005c]             // 0x006410ad    8b825c002500
                         {disp32} mov     ecx, dword ptr [eax + 0x000045c4]             // 0x006410b3    8b88c4450000
                         {disp32} mov     edx, dword ptr [eax + 0x000045c8]             // 0x006410b9    8b90c8450000
                         push             ecx                                           // 0x006410bf    51
                         push             edx                                           // 0x006410c0    52
                         push             0x00bfe754                                    // 0x006410c1    6854e7bf00
                         call             _Report3D__FPCce                              // 0x006410c6    e805ab1d00
                         {disp32} mov     eax, dword ptr [_game]                        // 0x006410cb    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x0025005c]             // 0x006410d0    8b885c002500
                         {disp32} mov     eax, dword ptr [ecx + 0x000045c8]             // 0x006410d6    8b81c8450000
                         add              esp, 0x0c                                     // 0x006410dc    83c40c
                         xor.s            esi, esi                                      // 0x006410df    33f6
                         test             eax, eax                                      // 0x006410e1    85c0
                         {disp32} jle     _jmp_addr_0x006414ac                          // 0x006410e3    0f8ec3030000
_jmp_addr_0x006410e9:    push             esi                                           // 0x006410e9    56
                         call             _jmp_addr_0x005c5f50                          // 0x006410ea    e8614ef8ff
                         mov.s            edi, eax                                      // 0x006410ef    8bf8
                         test             edi, edi                                      // 0x006410f1    85ff
                         {disp8} je       _jmp_addr_0x00641137                          // 0x006410f3    7442
                         mov              eax, dword ptr [edi]                          // 0x006410f5    8b07
                         cmp              eax, dword ptr [data_bytes + 0x351cac]        // 0x006410f7    3b05ac7cd100
                         {disp8} jae      _jmp_addr_0x00641103                          // 0x006410fd    7304
                         test             eax, eax                                      // 0x006410ff    85c0
                         {disp8} ja       _jmp_addr_0x0064110a                          // 0x00641101    7707
_jmp_addr_0x00641103:    {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x00641103    a1a87cd100
                         {disp8} jmp      _jmp_addr_0x00641116                          // 0x00641108    eb0c
_jmp_addr_0x0064110a:    {disp32} mov     edx, dword ptr [data_bytes + 0x351ca8]        // 0x0064110a    8b15a87cd100
                         lea              ecx, dword ptr [eax + eax * 0x2]              // 0x00641110    8d0c40
                         lea              eax, dword ptr [edx + ecx * 0x4]              // 0x00641113    8d048a
_jmp_addr_0x00641116:    {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x00641116    8b4008
                         push             eax                                           // 0x00641119    50
                         call             _jmp_addr_0x0053b4a0                          // 0x0064111a    e881a3efff
                         add              esp, 0x04                                     // 0x0064111f    83c404
                         push             eax                                           // 0x00641122    50
                         {disp8} mov      eax, dword ptr [edi + 0x0c]                   // 0x00641123    8b470c
                         push             eax                                           // 0x00641126    50
                         push             esi                                           // 0x00641127    56
                         push             0x00bfe748                                    // 0x00641128    6848e7bf00
                         call             _Report3D__FPCce                              // 0x0064112d    e89eaa1d00
                         add              esp, 0x10                                     // 0x00641132    83c410
                         {disp8} jmp      _jmp_addr_0x00641145                          // 0x00641135    eb0e
_jmp_addr_0x00641137:    push             esi                                           // 0x00641137    56
                         push             0x00bfe73c                                    // 0x00641138    683ce7bf00
                         call             _Report3D__FPCce                              // 0x0064113d    e88eaa1d00
                         add              esp, 0x08                                     // 0x00641142    83c408
_jmp_addr_0x00641145:    {disp32} mov     ecx, dword ptr [_game]                        // 0x00641145    8b0d5c19d000
                         {disp32} mov     ecx, dword ptr [ecx + 0x0025005c]             // 0x0064114b    8b895c002500
                         {disp32} mov     eax, dword ptr [ecx + 0x000045c8]             // 0x00641151    8b81c8450000
                         inc              esi                                           // 0x00641157    46
                         cmp.s            esi, eax                                      // 0x00641158    3bf0
                         {disp8} jl       _jmp_addr_0x006410e9                          // 0x0064115a    7c8d
                         pop              edi                                           // 0x0064115c    5f
                         pop              esi                                           // 0x0064115d    5e
                         add              esp, 0x00000c08                               // 0x0064115e    81c4080c0000
                         ret              0x0008                                        // 0x00641164    c20800
                         {disp32} mov     eax, dword ptr [esp + 0x00000c18]             // 0x00641167    8b8424180c0000
                         xor.s            edx, edx                                      // 0x0064116e    33d2
                         {disp32} mov     dx, word ptr [rdata_bytes + 0xf8620]          // 0x00641170    668b1520169a00
                         and.s            edx, eax                                      // 0x00641177    23d0
                         test             dx, dx                                        // 0x00641179    6685d2
                         {disp32} je      _jmp_addr_0x00641216                          // 0x0064117c    0f8494000000
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001ab6 // 0x00641182    813dac7cd100b61a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x0064118c    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x00641198                          // 0x00641191    7605
                         add              eax, 0x00014088                               // 0x00641193    0588400100
_jmp_addr_0x00641198:    {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x00641198    8b7008
                         {disp32} mov     edi, dword ptr [data_bytes + 0x30ab14]        // 0x0064119b    8b3d140bcd00
                         call             _HideAll__13DialogBoxBaseFv@0                 // 0x006411a1    e83a25edff
                         {disp8} mov      ecx, dword ptr [edi + 0x10]                   // 0x006411a6    8b4f10
                         add              ecx, 0x24                                     // 0x006411a9    83c124
                         push             esi                                           // 0x006411ac    56
                         push             ecx                                           // 0x006411ad    51
                         call             _wcscpy                                       // 0x006411ae    e8034e1800
                         {disp8} mov      esi, dword ptr [edi + 0x14]                   // 0x006411b3    8b7714
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x006411b6    8b8650020000
                         add              esp, 0x08                                     // 0x006411bc    83c408
                         test             eax, eax                                      // 0x006411bf    85c0
                         {disp8} jle      _jmp_addr_0x006411d6                          // 0x006411c1    7e13
_jmp_addr_0x006411c3:    dec              eax                                           // 0x006411c3    48
                         push             eax                                           // 0x006411c4    50
                         mov.s            ecx, esi                                      // 0x006411c5    8bce
                         call             @DeleteString__9SetupListFi@12                // 0x006411c7    e8949bdcff
                         {disp32} mov     eax, dword ptr [esi + 0x00000250]             // 0x006411cc    8b8650020000
                         test             eax, eax                                      // 0x006411d2    85c0
                         {disp8} jg       _jmp_addr_0x006411c3                          // 0x006411d4    7fed
_jmp_addr_0x006411d6:    mov              edx, dword ptr [edi]                          // 0x006411d6    8b17
                         mov.s            ecx, edi                                      // 0x006411d8    8bcf
                         call             dword ptr [edx + 0xc]                         // 0x006411da    ff520c
                         cmp              dword ptr [data_bytes + 0x351cac], 0x00001a72 // 0x006411dd    813dac7cd100721a0000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x351ca8]        // 0x006411e7    a1a87cd100
                         {disp8} jbe      _jmp_addr_0x006411f3                          // 0x006411ec    7605
                         add              eax, 0x00013d58                               // 0x006411ee    05583d0100
_jmp_addr_0x006411f3:    {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x006411f3    8b4808
                         {disp32} mov     edx, dword ptr [data_bytes + 0x30ab14]        // 0x006411f6    8b15140bcd00
                         push             0x0                                           // 0x006411fc    6a00
                         push             0x0                                           // 0x006411fe    6a00
                         push             0x0                                           // 0x00641200    6a00
                         push             ecx                                           // 0x00641202    51
                         {disp8} mov      ecx, dword ptr [edx + 0x14]                   // 0x00641203    8b4a14
                         call             _jmp_addr_0x00641510                          // 0x00641206    e805030000
                         pop              edi                                           // 0x0064120b    5f
                         pop              esi                                           // 0x0064120c    5e
                         add              esp, 0x00000c08                               // 0x0064120d    81c4080c0000
                         ret              0x0008                                        // 0x00641213    c20800
_jmp_addr_0x00641216:    xor.s            ecx, ecx                                      // 0x00641216    33c9
                         {disp32} mov     cx, word ptr [rdata_bytes + 0xf861c]          // 0x00641218    668b0d1c169a00
                         and.s            ecx, eax                                      // 0x0064121f    23c8
                         test             cx, cx                                        // 0x00641221    6685c9
                         {disp32} je      _jmp_addr_0x006414ac                          // 0x00641224    0f8482020000
                         push             0x0                                           // 0x0064122a    6a00
                         call             _jmp_addr_0x00557f90                          // 0x0064122c    e85f6df1ff
                         push             0x000003e8                                    // 0x00641231    68e8030000
                         call             __sleep                                       // 0x00641236    e893891800
                         push             0x1                                           // 0x0064123b    6a01
                         call             _jmp_addr_0x00557f90                          // 0x0064123d    e84e6df1ff
                         add              esp, 0x0c                                     // 0x00641242    83c40c
                         pop              edi                                           // 0x00641245    5f
                         pop              esi                                           // 0x00641246    5e
                         add              esp, 0x00000c08                               // 0x00641247    81c4080c0000
                         ret              0x0008                                        // 0x0064124d    c20800
                         push             0x00bfe734                                    // 0x00641250    6834e7bf00
                         push             0x00bfe72c                                    // 0x00641255    682ce7bf00
                         {disp32} lea     edx, dword ptr [esp + 0x00000410]             // 0x0064125a    8d942410040000
                         push             0x00bfe708                                    // 0x00641261    6808e7bf00
                         push             edx                                           // 0x00641266    52
                         call             dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x00641267    ff155c938a00
                         push             eax                                           // 0x0064126d    50
                         call             _CHAR2WCHAR__FPc                              // 0x0064126e    e82dee1e00
                         {disp32} mov     esi, dword ptr [data_bytes + 0x34043c]        // 0x00641273    8b353c64d000
                         mov.s            edi, eax                                      // 0x00641279    8bf8
                         {disp32} mov     eax, dword ptr [esi + 0x000000e0]             // 0x0064127b    8b86e0000000
                         push             0x0000011a                                    // 0x00641281    681a010000
                         inc              eax                                           // 0x00641286    40
                         push             0x00bfde78                                    // 0x00641287    6878debf00
                         push             0x0000100c                                    // 0x0064128c    680c100000
                         {disp32} mov     dword ptr [esi + 0x000000e0], eax             // 0x00641291    8986e0000000
                         call             ___nw__FUl                                    // 0x00641297    e8f4a41900
                         add              esp, 0x20                                     // 0x0064129c    83c420
                         test             eax, eax                                      // 0x0064129f    85c0
                         {disp8} je       _jmp_addr_0x006412af                          // 0x006412a1    740c
                         push             edi                                           // 0x006412a3    57
                         push             0x2                                           // 0x006412a4    6a02
                         mov.s            ecx, eax                                      // 0x006412a6    8bc8
                         call             _jmp_addr_0x00635cf0                          // 0x006412a8    e8434affff
                         {disp8} jmp      _jmp_addr_0x006412b1                          // 0x006412ad    eb02
_jmp_addr_0x006412af:    xor.s            eax, eax                                      // 0x006412af    33c0
_jmp_addr_0x006412b1:    push             eax                                           // 0x006412b1    50
                         {disp32} lea     ecx, dword ptr [esi + 0x000000e8]             // 0x006412b2    8d8ee8000000
                         call             _jmp_addr_0x00636220                          // 0x006412b8    e8634fffff
                         mov.s            ecx, esi                                      // 0x006412bd    8bce
                         call             _jmp_addr_0x00635d40                          // 0x006412bf    e87c4affff
                         pop              edi                                           // 0x006412c4    5f
                         pop              esi                                           // 0x006412c5    5e
                         add              esp, 0x00000c08                               // 0x006412c6    81c4080c0000
                         ret              0x0008                                        // 0x006412cc    c20800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x380a80]        // 0x006412cf    a1806ad400
                         push             eax                                           // 0x006412d4    50
                         {disp32} lea     ecx, dword ptr [esp + 0x00000810]             // 0x006412d5    8d8c2410080000
                         push             0x00bfe6f0                                    // 0x006412dc    68f0e6bf00
                         push             ecx                                           // 0x006412e1    51
                         call             dword ptr [__imp___0LHSPrintf__QAA_PADZZ@4]   // 0x006412e2    ff155c938a00
                         push             eax                                           // 0x006412e8    50
                         call             _CHAR2WCHAR__FPc                              // 0x006412e9    e8b2ed1e00
                         {disp32} mov     esi, dword ptr [data_bytes + 0x34043c]        // 0x006412ee    8b353c64d000
                         mov.s            edi, eax                                      // 0x006412f4    8bf8
                         {disp32} mov     eax, dword ptr [esi + 0x000000e0]             // 0x006412f6    8b86e0000000
                         push             0x0000011a                                    // 0x006412fc    681a010000
                         inc              eax                                           // 0x00641301    40
                         push             0x00bfde78                                    // 0x00641302    6878debf00
                         push             0x0000100c                                    // 0x00641307    680c100000
                         {disp32} mov     dword ptr [esi + 0x000000e0], eax             // 0x0064130c    8986e0000000
                         call             ___nw__FUl                                    // 0x00641312    e879a41900
                         add              esp, 0x1c                                     // 0x00641317    83c41c
                         test             eax, eax                                      // 0x0064131a    85c0
                         {disp8} je       _jmp_addr_0x0064132c                          // 0x0064131c    740e
                         push             edi                                           // 0x0064131e    57
                         push             0x3                                           // 0x0064131f    6a03
                         mov.s            ecx, eax                                      // 0x00641321    8bc8
                         call             _jmp_addr_0x00635cf0                          // 0x00641323    e8c849ffff
                         mov.s            edi, eax                                      // 0x00641328    8bf8
                         {disp8} jmp      _jmp_addr_0x0064132e                          // 0x0064132a    eb02
_jmp_addr_0x0064132c:    xor.s            edi, edi                                      // 0x0064132c    33ff
_jmp_addr_0x0064132e:    push             edi                                           // 0x0064132e    57
                         {disp32} lea     ecx, dword ptr [esi + 0x000000e8]             // 0x0064132f    8d8ee8000000
                         call             _jmp_addr_0x00636220                          // 0x00641335    e8e64effff
                         mov.s            ecx, esi                                      // 0x0064133a    8bce
                         call             _jmp_addr_0x00635d40                          // 0x0064133c    e8ff49ffff
                         test             edi, edi                                      // 0x00641341    85ff
                         {disp32} je      _jmp_addr_0x006414ac                          // 0x00641343    0f8463010000
                         {disp32} mov     edx, dword ptr [data_bytes + 0x380a80]        // 0x00641349    8b15806ad400
                         {disp32} mov     dword ptr [edi + 0x00001004], edx             // 0x0064134f    899704100000
                         pop              edi                                           // 0x00641355    5f
                         pop              esi                                           // 0x00641356    5e
                         add              esp, 0x00000c08                               // 0x00641357    81c4080c0000
                         ret              0x0008                                        // 0x0064135d    c20800
                         {disp32} mov     eax, dword ptr [data_bytes + 0x380a80]        // 0x00641360    a1806ad400
                         inc              eax                                           // 0x00641365    40
                         cmp              eax, 0x09                                     // 0x00641366    83f809
                         {disp32} mov     dword ptr [data_bytes + 0x380a80], eax        // 0x00641369    a3806ad400
                         {disp32} jne     _jmp_addr_0x006414ac                          // 0x0064136e    0f8538010000
                         pop              edi                                           // 0x00641374    5f
                         {disp32} mov     dword ptr [data_bytes + 0x380a80], 0x00000000 // 0x00641375    c705806ad40000000000
                         pop              esi                                           // 0x0064137f    5e
                         add              esp, 0x00000c08                               // 0x00641380    81c4080c0000
                         ret              0x0008                                        // 0x00641386    c20800
                         push             0x0                                           // 0x00641389    6a00
                         push             0x00bfe6d0                                    // 0x0064138b    68d0e6bf00
                         call             _jmp_addr_0x0063ed40                          // 0x00641390    e8abd9ffff
                         push             0x1                                           // 0x00641395    6a01
                         push             0x00bfe6b8                                    // 0x00641397    68b8e6bf00
                         call             _jmp_addr_0x0063ed40                          // 0x0064139c    e89fd9ffff
                         push             0x1                                           // 0x006413a1    6a01
                         push             0x00bfe69c                                    // 0x006413a3    689ce6bf00
                         call             _jmp_addr_0x0063ed40                          // 0x006413a8    e893d9ffff
                         add              esp, 0x18                                     // 0x006413ad    83c418
                         pop              edi                                           // 0x006413b0    5f
                         pop              esi                                           // 0x006413b1    5e
                         add              esp, 0x00000c08                               // 0x006413b2    81c4080c0000
                         ret              0x0008                                        // 0x006413b8    c20800
                         {disp32} mov     edx, dword ptr [esp + 0x00000c18]             // 0x006413bb    8b9424180c0000
                         xor.s            eax, eax                                      // 0x006413c2    33c0
                         {disp32} mov     ax, word ptr [rdata_bytes + 0xf861c]          // 0x006413c4    66a11c169a00
                         and.s            eax, edx                                      // 0x006413ca    23c2
                         test             ax, ax                                        // 0x006413cc    6685c0
                         {disp8} je       _jmp_addr_0x0064144b                          // 0x006413cf    747a
                         push             0x0                                           // 0x006413d1    6a00
                         push             0x00bfe67c                                    // 0x006413d3    687ce6bf00
                         call             _jmp_addr_0x0063ed40                          // 0x006413d8    e863d9ffff
                         {disp32} mov     al, byte ptr [data_bytes + 0x380a84]          // 0x006413dd    a0846ad400
                         add              esp, 0x08                                     // 0x006413e2    83c408
                         test             al, al                                        // 0x006413e5    84c0
                         {disp8} jne      _jmp_addr_0x00641409                          // 0x006413e7    7520
                         pop              edi                                           // 0x006413e9    5f
                         {disp32} mov     byte ptr [data_bytes + 0x33b6b0], 0x01        // 0x006413ea    c605b016d00001
                         {disp32} mov     byte ptr [data_bytes + 0x33b6cf], 0x01        // 0x006413f1    c605cf16d00001
                         {disp32} mov     byte ptr [data_bytes + 0x380a84], 0x01        // 0x006413f8    c605846ad40001
                         pop              esi                                           // 0x006413ff    5e
                         add              esp, 0x00000c08                               // 0x00641400    81c4080c0000
                         ret              0x0008                                        // 0x00641406    c20800
_jmp_addr_0x00641409:    {disp32} mov     al, byte ptr [data_bytes + 0x33b6ce]          // 0x00641409    a0ce16d000
                         test             al, al                                        // 0x0064140e    84c0
                         {disp8} jne      _jmp_addr_0x00641432                          // 0x00641410    7520
                         pop              edi                                           // 0x00641412    5f
                         {disp32} mov     byte ptr [data_bytes + 0x33b6cf], 0x03        // 0x00641413    c605cf16d00003
                         {disp32} mov     byte ptr [data_bytes + 0x33b6cd], 0x01        // 0x0064141a    c605cd16d00001
                         {disp32} mov     byte ptr [data_bytes + 0x380a84], 0x00        // 0x00641421    c605846ad40000
                         pop              esi                                           // 0x00641428    5e
                         add              esp, 0x00000c08                               // 0x00641429    81c4080c0000
                         ret              0x0008                                        // 0x0064142f    c20800
_jmp_addr_0x00641432:    pop              edi                                           // 0x00641432    5f
                         {disp32} mov     byte ptr [data_bytes + 0x33b6cf], 0x00        // 0x00641433    c605cf16d00000
                         {disp32} mov     byte ptr [data_bytes + 0x380a84], 0x00        // 0x0064143a    c605846ad40000
                         pop              esi                                           // 0x00641441    5e
                         add              esp, 0x00000c08                               // 0x00641442    81c4080c0000
                         ret              0x0008                                        // 0x00641448    c20800
_jmp_addr_0x0064144b:    {disp32} mov     eax, dword ptr [data_bytes + 0x33b830]        // 0x0064144b    a13018d000
                         cmp              eax, -0x01                                    // 0x00641450    83f8ff
                         {disp8} je       _jmp_addr_0x00641489                          // 0x00641453    7434
                         movsx            ecx, word ptr [data_bytes + 0x33b824]         // 0x00641455    0fbf0d2418d000
                         movsx            edx, word ptr [data_bytes + 0x33b820]         // 0x0064145c    0fbf152018d000
                         push             ecx                                           // 0x00641463    51
                         push             edx                                           // 0x00641464    52
                         push             eax                                           // 0x00641465    50
                         push             0x00d01789                                    // 0x00641466    688917d000
                         push             0x00d016f3                                    // 0x0064146b    68f316d000
                         push             0x00d016f0                                    // 0x00641470    68f016d000
                         {disp8} lea      eax, dword ptr [esp + 0x20]                   // 0x00641475    8d442420
                         push             0x00bfe61c                                    // 0x00641479    681ce6bf00
                         push             eax                                           // 0x0064147e    50
                         call             _sprintf                                      // 0x0064147f    e84e431800
                         add              esp, 0x20                                     // 0x00641484    83c420
                         {disp8} jmp      _jmp_addr_0x0064149b                          // 0x00641487    eb12
_jmp_addr_0x00641489:    {disp8} lea      ecx, dword ptr [esp + 0x08]                   // 0x00641489    8d4c2408
                         push             0x00bfe5f0                                    // 0x0064148d    68f0e5bf00
                         push             ecx                                           // 0x00641492    51
                         call             _sprintf                                      // 0x00641493    e83a431800
                         add              esp, 0x08                                     // 0x00641498    83c408
_jmp_addr_0x0064149b:    {disp8} lea      edx, dword ptr [esp + 0x08]                   // 0x0064149b    8d542408
                         push             edx                                           // 0x0064149f    52
                         push             -0x1                                          // 0x006414a0    6aff
                         mov              ecx, OFFSET _global                           // 0x006414a2    b9203bcd00
                         call             _jmp_addr_0x00591010                          // 0x006414a7    e864fbf4ff
_jmp_addr_0x006414ac:    pop              edi                                           // 0x006414ac    5f
                         pop              esi                                           // 0x006414ad    5e
                         add              esp, 0x00000c08                               // 0x006414ae    81c4080c0000
                         ret              0x0008                                        // 0x006414b4    c20800

// Snippet: db, [0x006414b7, 0x006414b8)
.byte 0x90                        // 0x006414b7

// Snippet: jmptbl, [0x006414b8, 0x006414d8)
.byte 0xa7, 0x10, 0x64, 0x00      // 0x006414b8
.byte 0xbb, 0x13, 0x64, 0x00      // 0x006414bc
.byte 0x50, 0x12, 0x64, 0x00      // 0x006414c0
.byte 0x67, 0x11, 0x64, 0x00      // 0x006414c4
.byte 0x89, 0x13, 0x64, 0x00      // 0x006414c8
.byte 0x60, 0x13, 0x64, 0x00      // 0x006414cc
.byte 0xcf, 0x12, 0x64, 0x00      // 0x006414d0
.byte 0xac, 0x14, 0x64, 0x00      // 0x006414d4

// Snippet: ijmptbl, [0x006414d8, 0x00641505)
.byte 0x00, 0x07, 0x07, 0x07      // 0x006414d8
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414dc
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414e0
.byte 0x07, 0x01, 0x07, 0x07      // 0x006414e4
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414e8
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414ec
.byte 0x07, 0x07, 0x02, 0x03      // 0x006414f0
.byte 0x07, 0x07, 0x07, 0x04      // 0x006414f4
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414f8
.byte 0x07, 0x07, 0x07, 0x07      // 0x006414fc
.byte 0x07, 0x07, 0x05, 0x07      // 0x00641500
.byte 0x06                        // 0x00641504

// Snippet: db, [0x00641505, 0x00641510)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00641505
.byte 0x90, 0x90, 0x90, 0x90      // 0x00641509
.byte 0x90, 0x90, 0x90            // 0x0064150d

