.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl
.extern _jmp_addr_0x007a1480
.extern _vsprintf
.extern _rand
.extern _jmp_addr_0x0081a760
.extern _jmp_addr_0x0081aab0
.extern _jmp_addr_0x00820ec0
.extern _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.extern ?DrawTriangle@LH3DRender@@SAXPAUVertex3D@@KPAGK@Z
.extern _jmp_addr_0x0082f920
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z

.globl _jmp_addr_0x0081b370
.globl _jmp_addr_0x0081b450
.globl _jmp_addr_0x0081b5f0
.globl _jmp_addr_0x0081b9c0
.globl _Report3D__FPCce
.globl _jmp_addr_0x0081bc10
.globl _jmp_addr_0x0081c090
.globl ?Draw3DScreenTriangle@LH3DTech@@SAXJPAULHPoint@@PAULH3DColor@@PAMJPAJPAULH3DMaterial@@H@Z
.globl _jmp_addr_0x0081c780
.globl _Random__Fff@8
.globl _jmp_addr_0x0081d2c0
.globl _jmp_addr_0x0081d4f0
.globl _jmp_addr_0x0081dd90

start_0x0081b370_0x0081e1f0:
// Snippet: asm, [0x0081b370, 0x0081e17c)
_jmp_addr_0x0081b370:    fild               dword ptr [ecx]                               // 0x0081b370    db01
                         {disp32} fsub      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081b372    d825f039e800
                         {disp32} fmul      dword ptr [data_bytes + 0x27212c]             // 0x0081b378    d80d2c81c300
                         {disp32} fdiv      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081b37e    d835f039e800
                         {disp8} fild       dword ptr [ecx + 0x04]                        // 0x0081b384    db4104
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081b387    d82df439e800
                         {disp32} fmul      dword ptr [data_bytes + 0x272130]             // 0x0081b38d    d80d3081c300
                         {disp32} fdiv      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081b393    d835f439e800
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0081b399    d905e039e800
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0081b39f    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081b3a3    d81d98a38a00
                         fnstsw             ax                                            // 0x0081b3a9    dfe0
                         test               ah, 0x40                                      // 0x0081b3ab    f6c440
                         {disp8} jne        _jmp_addr_0x0081b3be                          // 0x0081b3ae    750e
                         {disp8} fdivr      dword ptr [esp + 0x04]                        // 0x0081b3b0    d87c2404
                         fld                st(0)                                         // 0x0081b3b4    d9c0
                         fmulp              st(3), st                                     // 0x0081b3b6    decb
                         fmulp              st(1), st                                     // 0x0081b3b8    dec9
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0081b3ba    d9442404
_jmp_addr_0x0081b3be:    {disp32} fld       dword ptr [data_bytes + 0x4dbd30]             // 0x0081b3be    d905301dea00
                         fmul               st, st(1)                                     // 0x0081b3c4    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd2c]             // 0x0081b3c6    d9052c1dea00
                         fmul               st, st(3)                                     // 0x0081b3cc    d8cb
                         faddp              st(1), st                                     // 0x0081b3ce    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd28]             // 0x0081b3d0    d905281dea00
                         fmul               st, st(4)                                     // 0x0081b3d6    d8cc
                         faddp              st(1), st                                     // 0x0081b3d8    dec1
                         fstp               dword ptr [edx]                               // 0x0081b3da    d91a
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd3c]             // 0x0081b3dc    d9053c1dea00
                         fmul               st, st(1)                                     // 0x0081b3e2    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd38]             // 0x0081b3e4    d905381dea00
                         fmul               st, st(3)                                     // 0x0081b3ea    d8cb
                         faddp              st(1), st                                     // 0x0081b3ec    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd34]             // 0x0081b3ee    d905341dea00
                         fmul               st, st(4)                                     // 0x0081b3f4    d8cc
                         faddp              st(1), st                                     // 0x0081b3f6    dec1
                         {disp8} fstp       dword ptr [edx + 0x04]                        // 0x0081b3f8    d95a04
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd48]             // 0x0081b3fb    d905481dea00
                         fmul               st, st(1)                                     // 0x0081b401    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd44]             // 0x0081b403    d905441dea00
                         fmul               st, st(3)                                     // 0x0081b409    d8cb
                         faddp              st(1), st                                     // 0x0081b40b    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4dbd40]             // 0x0081b40d    d905401dea00
                         fmul               st, st(4)                                     // 0x0081b413    d8cc
                         faddp              st(1), st                                     // 0x0081b415    dec1
                         {disp8} fstp       dword ptr [edx + 0x08]                        // 0x0081b417    d95a08
                         fstp               st(0)                                         // 0x0081b41a    ddd8
                         fstp               st(0)                                         // 0x0081b41c    ddd8
                         fstp               st(0)                                         // 0x0081b41e    ddd8
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x0081b420    d905b81dea00
                         fadd               dword ptr [edx]                               // 0x0081b426    d802
                         fstp               dword ptr [edx]                               // 0x0081b428    d91a
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdbc]             // 0x0081b42a    d905bc1dea00
                         {disp8} fadd       dword ptr [edx + 0x04]                        // 0x0081b430    d84204
                         {disp8} fstp       dword ptr [edx + 0x04]                        // 0x0081b433    d95a04
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdc0]             // 0x0081b436    d905c01dea00
                         {disp8} fadd       dword ptr [edx + 0x08]                        // 0x0081b43c    d84208
                         {disp8} fstp       dword ptr [edx + 0x08]                        // 0x0081b43f    d95a08
                         ret                0x0004                                        // 0x0081b442    c20400
                         nop                                                              // 0x0081b445    90
                         nop                                                              // 0x0081b446    90
                         nop                                                              // 0x0081b447    90
                         nop                                                              // 0x0081b448    90
                         nop                                                              // 0x0081b449    90
                         nop                                                              // 0x0081b44a    90
                         nop                                                              // 0x0081b44b    90
                         nop                                                              // 0x0081b44c    90
                         nop                                                              // 0x0081b44d    90
                         nop                                                              // 0x0081b44e    90
                         nop                                                              // 0x0081b44f    90
_jmp_addr_0x0081b450:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0081b450    8b442408
                         test               eax, eax                                      // 0x0081b454    85c0
                         {disp32} jle       _jmp_addr_0x0081b5ed                          // 0x0081b456    0f8e91010000
                         push               esi                                           // 0x0081b45c    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0081b45d    8b742408
                         push               edi                                           // 0x0081b461    57
                         mov.s              edi, eax                                      // 0x0081b462    8bf8
_jmp_addr_0x0081b464:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b464    a1a09eea00
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081b469    d9400c
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0081b46c    d84e04
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0081b46f    d94018
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0081b472    d84e08
                         faddp              st(1), st                                     // 0x0081b475    dec1
                         fld                dword ptr [esi]                               // 0x0081b477    d906
                         fmul               dword ptr [eax]                               // 0x0081b479    d808
                         faddp              st(1), st                                     // 0x0081b47b    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0081b47d    d84024
                         fstp               dword ptr [ecx]                               // 0x0081b480    d919
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b482    a1a09eea00
                         {disp8} fld        dword ptr [eax + 0x10]                        // 0x0081b487    d94010
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0081b48a    d84e04
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0081b48d    d94004
                         fmul               dword ptr [esi]                               // 0x0081b490    d80e
                         faddp              st(1), st                                     // 0x0081b492    dec1
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x0081b494    d9401c
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0081b497    d84e08
                         faddp              st(1), st                                     // 0x0081b49a    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x0081b49c    d84028
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0081b49f    d95904
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b4a2    a1a09eea00
                         {disp8} fld        dword ptr [eax + 0x14]                        // 0x0081b4a7    d94014
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0081b4aa    d84e04
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0081b4ad    d94008
                         fmul               dword ptr [esi]                               // 0x0081b4b0    d80e
                         faddp              st(1), st                                     // 0x0081b4b2    dec1
                         {disp8} fld        dword ptr [eax + 0x20]                        // 0x0081b4b4    d94020
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0081b4b7    d84e08
                         faddp              st(1), st                                     // 0x0081b4ba    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0081b4bc    d8402c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x0081b4bf    d9510c
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081b4c2    d81de039e800
                         fnstsw             ax                                            // 0x0081b4c8    dfe0
                         test               ah, 0x01                                      // 0x0081b4ca    f6c401
                         {disp8} je         _jmp_addr_0x0081b4d7                          // 0x0081b4cd    7408
                         mov                dword ptr [edx], 0x00000020                   // 0x0081b4cf    c70220000000
                         {disp8} jmp        _jmp_addr_0x0081b4dd                          // 0x0081b4d5    eb06
_jmp_addr_0x0081b4d7:    mov                dword ptr [edx], 0x00000000                   // 0x0081b4d7    c70200000000
_jmp_addr_0x0081b4dd:    fld                dword ptr [ecx]                               // 0x0081b4dd    d901
                         {disp8} fcomp      dword ptr [ecx + 0x0c]                        // 0x0081b4df    d8590c
                         fnstsw             ax                                            // 0x0081b4e2    dfe0
                         test               ah, 0x41                                      // 0x0081b4e4    f6c441
                         {disp8} jne        _jmp_addr_0x0081b4f0                          // 0x0081b4e7    7507
                         mov                eax, dword ptr [edx]                          // 0x0081b4e9    8b02
                         or                 eax, 0x10                                     // 0x0081b4eb    83c810
                         {disp8} jmp        _jmp_addr_0x0081b503                          // 0x0081b4ee    eb13
_jmp_addr_0x0081b4f0:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0081b4f0    d9410c
                         fchs                                                             // 0x0081b4f3    d9e0
                         fcomp              dword ptr [ecx]                               // 0x0081b4f5    d819
                         fnstsw             ax                                            // 0x0081b4f7    dfe0
                         test               ah, 0x41                                      // 0x0081b4f9    f6c441
                         {disp8} jne        _jmp_addr_0x0081b505                          // 0x0081b4fc    7507
                         mov                eax, dword ptr [edx]                          // 0x0081b4fe    8b02
                         or                 eax, 0x8                                      // 0x0081b500    83c808
_jmp_addr_0x0081b503:    mov                dword ptr [edx], eax                          // 0x0081b503    8902
_jmp_addr_0x0081b505:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0081b505    d94104
                         {disp8} fcomp      dword ptr [ecx + 0x0c]                        // 0x0081b508    d8590c
                         fnstsw             ax                                            // 0x0081b50b    dfe0
                         test               ah, 0x41                                      // 0x0081b50d    f6c441
                         {disp8} jne        _jmp_addr_0x0081b519                          // 0x0081b510    7507
                         mov                eax, dword ptr [edx]                          // 0x0081b512    8b02
                         or                 eax, 0x4                                      // 0x0081b514    83c804
                         {disp8} jmp        _jmp_addr_0x0081b52d                          // 0x0081b517    eb14
_jmp_addr_0x0081b519:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0081b519    d9410c
                         fchs                                                             // 0x0081b51c    d9e0
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x0081b51e    d85904
                         fnstsw             ax                                            // 0x0081b521    dfe0
                         test               ah, 0x41                                      // 0x0081b523    f6c441
                         {disp8} jne        _jmp_addr_0x0081b52f                          // 0x0081b526    7507
                         mov                eax, dword ptr [edx]                          // 0x0081b528    8b02
                         or                 eax, 0x2                                      // 0x0081b52a    83c802
_jmp_addr_0x0081b52d:    mov                dword ptr [edx], eax                          // 0x0081b52d    8902
_jmp_addr_0x0081b52f:    cmp                dword ptr [edx], 0x00                         // 0x0081b52f    833a00
                         {disp32} jne       _jmp_addr_0x0081b5db                          // 0x0081b532    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081b538    d90590a38a00
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                        // 0x0081b53e    d8710c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x0081b541    d9510c
                         fmul               dword ptr [ecx]                               // 0x0081b544    d809
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081b546    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081b54c    d80df039e800
                         fst                dword ptr [ecx]                               // 0x0081b552    d911
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081b554    d81d98a38a00
                         fnstsw             ax                                            // 0x0081b55a    dfe0
                         test               ah, 0x01                                      // 0x0081b55c    f6c401
                         {disp8} je         _jmp_addr_0x0081b569                          // 0x0081b55f    7408
                         mov                dword ptr [ecx], 0x00000000                   // 0x0081b561    c70100000000
                         {disp8} jmp        _jmp_addr_0x0081b57f                          // 0x0081b567    eb16
_jmp_addr_0x0081b569:    fld                dword ptr [ecx]                               // 0x0081b569    d901
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081b56b    d81d00abc200
                         fnstsw             ax                                            // 0x0081b571    dfe0
                         test               ah, 0x41                                      // 0x0081b573    f6c441
                         {disp8} jne        _jmp_addr_0x0081b57f                          // 0x0081b576    7507
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081b578    a100abc200
                         mov                dword ptr [ecx], eax                          // 0x0081b57d    8901
_jmp_addr_0x0081b57f:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0081b57f    d9410c
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0081b582    d84904
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081b585    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081b58b    d82df439e800
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0081b591    d95104
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081b594    d81d98a38a00
                         fnstsw             ax                                            // 0x0081b59a    dfe0
                         test               ah, 0x01                                      // 0x0081b59c    f6c401
                         {disp8} je         _jmp_addr_0x0081b5aa                          // 0x0081b59f    7409
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x0081b5a1    c7410400000000
                         {disp8} jmp        _jmp_addr_0x0081b5c2                          // 0x0081b5a8    eb18
_jmp_addr_0x0081b5aa:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0081b5aa    d94104
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081b5ad    d81d04abc200
                         fnstsw             ax                                            // 0x0081b5b3    dfe0
                         test               ah, 0x41                                      // 0x0081b5b5    f6c441
                         {disp8} jne        _jmp_addr_0x0081b5c2                          // 0x0081b5b8    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081b5ba    a104abc200
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0081b5bf    894104
_jmp_addr_0x0081b5c2:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0081b5c2    d905e039e800
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x0081b5c8    d8490c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x0081b5cb    d9510c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081b5ce    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081b5d4    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0081b5d6    d95908
                         fstp               st(0)                                         // 0x0081b5d9    ddd8
_jmp_addr_0x0081b5db:    add                edx, 0x04                                     // 0x0081b5db    83c204
                         add                ecx, 0x20                                     // 0x0081b5de    83c120
                         add                esi, 0x0c                                     // 0x0081b5e1    83c60c
                         dec                edi                                           // 0x0081b5e4    4f
                         {disp32} jne       _jmp_addr_0x0081b464                          // 0x0081b5e5    0f8579feffff
                         pop                edi                                           // 0x0081b5eb    5f
                         pop                esi                                           // 0x0081b5ec    5e
_jmp_addr_0x0081b5ed:    ret                0x0008                                        // 0x0081b5ed    c20800
_jmp_addr_0x0081b5f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0081b5f0    8b442404
                         push               esi                                           // 0x0081b5f4    56
                         mov.s              esi, eax                                      // 0x0081b5f5    8bf0
                         dec                eax                                           // 0x0081b5f7    48
                         test               esi, esi                                      // 0x0081b5f8    85f6
                         {disp32} je        _jmp_addr_0x0081b694                          // 0x0081b5fa    0f8494000000
                         {disp8} lea        esi, dword ptr [eax + 0x01]                   // 0x0081b600    8d7001
_jmp_addr_0x0081b603:    fld                dword ptr [edx]                               // 0x0081b603    d902
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b605    a1a09eea00
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081b60a    d94204
                         add                ecx, 0x20                                     // 0x0081b60d    83c120
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0081b610    d94208
                         add                edx, 0x0c                                     // 0x0081b613    83c20c
                         dec                esi                                           // 0x0081b616    4e
                         fld                st(0)                                         // 0x0081b617    d9c0
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x0081b619    d84820
                         fld                st(2)                                         // 0x0081b61c    d9c2
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0081b61e    d84814
                         faddp              st(1), st                                     // 0x0081b621    dec1
                         fld                st(3)                                         // 0x0081b623    d9c3
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0081b625    d84808
                         faddp              st(1), st                                     // 0x0081b628    dec1
                         {disp8} fadd       dword ptr [eax + 0x2c]                        // 0x0081b62a    d8402c
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0081b62d    d83d90a38a00
                         {disp8} fst        dword ptr [ecx + -0x14]                       // 0x0081b633    d951ec
                         fld                st(1)                                         // 0x0081b636    d9c1
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b638    a1a09eea00
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0081b63d    d84818
                         fld                st(3)                                         // 0x0081b640    d9c3
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0081b642    d8480c
                         faddp              st(1), st                                     // 0x0081b645    dec1
                         fld                st(4)                                         // 0x0081b647    d9c4
                         fmul               dword ptr [eax]                               // 0x0081b649    d808
                         faddp              st(1), st                                     // 0x0081b64b    dec1
                         {disp8} fadd       dword ptr [eax + 0x24]                        // 0x0081b64d    d84024
                         fmul               st, st(1)                                     // 0x0081b650    d8c9
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081b652    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081b658    d80df039e800
                         {disp8} fstp       dword ptr [ecx + -0x20]                       // 0x0081b65e    d959e0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081b661    a1a09eea00
                         fstp               st(0)                                         // 0x0081b666    ddd8
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0081b668    d8481c
                         fxch               st(1)                                         // 0x0081b66b    d9c9
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0081b66d    d84810
                         faddp              st(1), st                                     // 0x0081b670    dec1
                         fxch               st(1)                                         // 0x0081b672    d9c9
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0081b674    d84804
                         faddp              st(1), st                                     // 0x0081b677    dec1
                         {disp8} fadd       dword ptr [eax + 0x28]                        // 0x0081b679    d84028
                         {disp8} fmul       dword ptr [ecx + -0x14]                       // 0x0081b67c    d849ec
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                   // 0x0081b67f    d82d90a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081b685    d80df439e800
                         {disp8} fstp       dword ptr [ecx + -0x1c]                       // 0x0081b68b    d959e4
                         {disp32} jne       _jmp_addr_0x0081b603                          // 0x0081b68e    0f856fffffff
_jmp_addr_0x0081b694:    pop                esi                                           // 0x0081b694    5e
                         ret                0x0004                                        // 0x0081b695    c20400
                         nop                                                              // 0x0081b698    90
                         nop                                                              // 0x0081b699    90
                         nop                                                              // 0x0081b69a    90
                         nop                                                              // 0x0081b69b    90
                         nop                                                              // 0x0081b69c    90
                         nop                                                              // 0x0081b69d    90
                         nop                                                              // 0x0081b69e    90
                         nop                                                              // 0x0081b69f    90
                         sub                esp, 0x40                                     // 0x0081b6a0    83ec40
                         push               ebx                                           // 0x0081b6a3    53
                         push               ebp                                           // 0x0081b6a4    55
                         push               esi                                           // 0x0081b6a5    56
                         push               edi                                           // 0x0081b6a6    57
                         {disp8} mov        edi, dword ptr [esp + 0x54]                   // 0x0081b6a7    8b7c2454
                         test               edi, edi                                      // 0x0081b6ab    85ff
                         mov.s              ebx, edx                                      // 0x0081b6ad    8bda
                         mov.s              esi, ecx                                      // 0x0081b6af    8bf1
                         {disp32} je        _jmp_addr_0x0081b73d                          // 0x0081b6b1    0f8486000000
_jmp_addr_0x0081b6b7:    mov.s              eax, esi                                      // 0x0081b6b7    8bc6
                         and                eax, 0x0000ffff                               // 0x0081b6b9    25ffff0000
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081b6be    8b0c85e0b5e300
                         test               edi, ecx                                      // 0x0081b6c5    85cf
                         {disp8} je         _jmp_addr_0x0081b6fc                          // 0x0081b6c7    7433
                         mov.s              ecx, ebx                                      // 0x0081b6c9    8bcb
                         and                ecx, 0x0000ffff                               // 0x0081b6cb    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], edi       // 0x0081b6d1    853c8de0b5e300
                         {disp32} jne       _jmp_addr_0x0081b78e                          // 0x0081b6d8    0f85b0000000
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081b6de    8b2da89eea00
                         {disp32} inc       word ptr [data_bytes + 0x4e3ea8]              // 0x0081b6e4    66ff05a89eea00
                         push               ebp                                           // 0x0081b6eb    55
                         push               esi                                           // 0x0081b6ec    56
                         mov.s              edx, ebx                                      // 0x0081b6ed    8bd3
                         mov.s              ecx, edi                                      // 0x0081b6ef    8bcf
                         call               _jmp_addr_0x0081dd90                          // 0x0081b6f1    e89a260000
                         shr                edi, 1                                        // 0x0081b6f6    d1ef
                         mov.s              esi, ebp                                      // 0x0081b6f8    8bf5
                         {disp8} jmp        _jmp_addr_0x0081b735                          // 0x0081b6fa    eb39
_jmp_addr_0x0081b6fc:    mov.s              edx, ebx                                      // 0x0081b6fc    8bd3
                         and                edx, 0x0000ffff                               // 0x0081b6fe    81e2ffff0000
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00e3b5e0]       // 0x0081b704    8b0495e0b5e300
                         test               edi, eax                                      // 0x0081b70b    85c7
                         {disp8} je         _jmp_addr_0x0081b72f                          // 0x0081b70d    7420
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081b70f    8b2da89eea00
                         {disp32} inc       word ptr [data_bytes + 0x4e3ea8]              // 0x0081b715    66ff05a89eea00
                         push               ebp                                           // 0x0081b71c    55
                         push               ebx                                           // 0x0081b71d    53
                         mov.s              edx, esi                                      // 0x0081b71e    8bd6
                         mov.s              ecx, edi                                      // 0x0081b720    8bcf
                         call               _jmp_addr_0x0081dd90                          // 0x0081b722    e869260000
                         mov.s              ebx, esi                                      // 0x0081b727    8bde
                         shr                edi, 1                                        // 0x0081b729    d1ef
                         mov.s              esi, ebp                                      // 0x0081b72b    8bf5
                         {disp8} jmp        _jmp_addr_0x0081b735                          // 0x0081b72d    eb06
_jmp_addr_0x0081b72f:    or.s               eax, ecx                                      // 0x0081b72f    0bc1
                         {disp8} je         _jmp_addr_0x0081b73d                          // 0x0081b731    740a
                         shr                edi, 1                                        // 0x0081b733    d1ef
_jmp_addr_0x0081b735:    test               edi, edi                                      // 0x0081b735    85ff
                         {disp32} jne       _jmp_addr_0x0081b6b7                          // 0x0081b737    0f857affffff
_jmp_addr_0x0081b73d:    {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081b73d    a138a6ec00
                         and                esi, 0x0000ffff                               // 0x0081b742    81e6ffff0000
                         shl                esi, 5                                        // 0x0081b748    c1e605
                         add                esi, 0x00e437e0                               // 0x0081b74b    81c6e037e400
                         push               0x0                                           // 0x0081b751    6a00
                         mov                ecx, 0x00000008                               // 0x0081b753    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x14]                   // 0x0081b758    8d7c2414
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0081b75c    f3a5
                         push               0x2                                           // 0x0081b75e    6a02
                         mov.s              esi, ebx                                      // 0x0081b760    8bf3
                         and                esi, 0x0000ffff                               // 0x0081b762    81e6ffff0000
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0081b768    8d542418
                         push               edx                                           // 0x0081b76c    52
                         shl                esi, 5                                        // 0x0081b76d    c1e605
                         push               0x000001c4                                    // 0x0081b770    68c4010000
                         add                esi, 0x00e437e0                               // 0x0081b775    81c6e037e400
                         mov                ecx, 0x00000008                               // 0x0081b77b    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x40]                   // 0x0081b780    8d7c2440
                         push               0x2                                           // 0x0081b784    6a02
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0081b786    f3a5
                         mov                ecx, dword ptr [eax]                          // 0x0081b788    8b08
                         push               eax                                           // 0x0081b78a    50
                         call               dword ptr [ecx + 0x64]                        // 0x0081b78b    ff5164
_jmp_addr_0x0081b78e:    pop                edi                                           // 0x0081b78e    5f
                         pop                esi                                           // 0x0081b78f    5e
                         pop                ebp                                           // 0x0081b790    5d
                         pop                ebx                                           // 0x0081b791    5b
                         add                esp, 0x40                                     // 0x0081b792    83c440
                         ret                0x0004                                        // 0x0081b795    c20400
                         nop                                                              // 0x0081b798    90
                         nop                                                              // 0x0081b799    90
                         nop                                                              // 0x0081b79a    90
                         nop                                                              // 0x0081b79b    90
                         nop                                                              // 0x0081b79c    90
                         nop                                                              // 0x0081b79d    90
                         nop                                                              // 0x0081b79e    90
                         nop                                                              // 0x0081b79f    90
_jmp_addr_0x0081b7a0:    push               ebx                                           // 0x0081b7a0    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x0081b7a1    8b5c240c
                         push               ebp                                           // 0x0081b7a5    55
                         push               esi                                           // 0x0081b7a6    56
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0081b7a7    8b742418
                         test               esi, esi                                      // 0x0081b7ab    85f6
                         push               edi                                           // 0x0081b7ad    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0081b7ae    8b7c2414
                         {disp8} je         _jmp_addr_0x0081b832                          // 0x0081b7b2    747e
_jmp_addr_0x0081b7b4:    mov.s              eax, edi                                      // 0x0081b7b4    8bc7
                         and                eax, 0x0000ffff                               // 0x0081b7b6    25ffff0000
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081b7bb    8b0c85e0b5e300
                         test               esi, ecx                                      // 0x0081b7c2    85ce
                         {disp8} je         _jmp_addr_0x0081b7f5                          // 0x0081b7c4    742f
                         mov.s              ecx, ebx                                      // 0x0081b7c6    8bcb
                         and                ecx, 0x0000ffff                               // 0x0081b7c8    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], esi       // 0x0081b7ce    85348de0b5e300
                         {disp8} jne        _jmp_addr_0x0081b84e                          // 0x0081b7d5    7577
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081b7d7    8b2da89eea00
                         {disp32} inc       word ptr [data_bytes + 0x4e3ea8]              // 0x0081b7dd    66ff05a89eea00
                         push               ebp                                           // 0x0081b7e4    55
                         push               edi                                           // 0x0081b7e5    57
                         mov.s              edx, ebx                                      // 0x0081b7e6    8bd3
                         mov.s              ecx, esi                                      // 0x0081b7e8    8bce
                         call               _jmp_addr_0x0081dd90                          // 0x0081b7ea    e8a1250000
                         shr                esi, 1                                        // 0x0081b7ef    d1ee
                         mov.s              edi, ebp                                      // 0x0081b7f1    8bfd
                         {disp8} jmp        _jmp_addr_0x0081b82e                          // 0x0081b7f3    eb39
_jmp_addr_0x0081b7f5:    mov.s              edx, ebx                                      // 0x0081b7f5    8bd3
                         and                edx, 0x0000ffff                               // 0x0081b7f7    81e2ffff0000
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00e3b5e0]       // 0x0081b7fd    8b0495e0b5e300
                         test               esi, eax                                      // 0x0081b804    85c6
                         {disp8} je         _jmp_addr_0x0081b828                          // 0x0081b806    7420
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081b808    8b2da89eea00
                         {disp32} inc       word ptr [data_bytes + 0x4e3ea8]              // 0x0081b80e    66ff05a89eea00
                         push               ebp                                           // 0x0081b815    55
                         push               ebx                                           // 0x0081b816    53
                         mov.s              edx, edi                                      // 0x0081b817    8bd7
                         mov.s              ecx, esi                                      // 0x0081b819    8bce
                         call               _jmp_addr_0x0081dd90                          // 0x0081b81b    e870250000
                         mov.s              ebx, edi                                      // 0x0081b820    8bdf
                         shr                esi, 1                                        // 0x0081b822    d1ee
                         mov.s              edi, ebp                                      // 0x0081b824    8bfd
                         {disp8} jmp        _jmp_addr_0x0081b82e                          // 0x0081b826    eb06
_jmp_addr_0x0081b828:    or.s               eax, ecx                                      // 0x0081b828    0bc1
                         {disp8} je         _jmp_addr_0x0081b832                          // 0x0081b82a    7406
                         shr                esi, 1                                        // 0x0081b82c    d1ee
_jmp_addr_0x0081b82e:    test               esi, esi                                      // 0x0081b82e    85f6
                         {disp8} jne        _jmp_addr_0x0081b7b4                          // 0x0081b830    7582
_jmp_addr_0x0081b832:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081b832    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081b837    66893c45e05dea00
                         inc                eax                                           // 0x0081b83f    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], bx         // 0x0081b840    66891c45e05dea00
                         inc                eax                                           // 0x0081b848    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081b849    a3a49eea00
_jmp_addr_0x0081b84e:    pop                edi                                           // 0x0081b84e    5f
                         pop                esi                                           // 0x0081b84f    5e
                         pop                ebp                                           // 0x0081b850    5d
                         pop                ebx                                           // 0x0081b851    5b
                         ret                                                              // 0x0081b852    c3
                         nop                                                              // 0x0081b853    90
                         nop                                                              // 0x0081b854    90
                         nop                                                              // 0x0081b855    90
                         nop                                                              // 0x0081b856    90
                         nop                                                              // 0x0081b857    90
                         nop                                                              // 0x0081b858    90
                         nop                                                              // 0x0081b859    90
                         nop                                                              // 0x0081b85a    90
                         nop                                                              // 0x0081b85b    90
                         nop                                                              // 0x0081b85c    90
                         nop                                                              // 0x0081b85d    90
                         nop                                                              // 0x0081b85e    90
                         nop                                                              // 0x0081b85f    90
                         sub                esp, 0x14                                     // 0x0081b860    83ec14
                         push               ebx                                           // 0x0081b863    53
                         push               ebp                                           // 0x0081b864    55
                         push               esi                                           // 0x0081b865    56
                         push               edi                                           // 0x0081b866    57
                         mov.s              ebp, edx                                      // 0x0081b867    8bea
                         mov.s              edi, ecx                                      // 0x0081b869    8bf9
                         and                ecx, 0x0000ffff                               // 0x0081b86b    81e1ffff0000
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00e3b5e0]       // 0x0081b871    8b048de0b5e300
                         and                edx, 0x0000ffff                               // 0x0081b878    81e2ffff0000
                         {disp32} mov       esi, dword ptr [edx * 0x4 + 0x00e3b5e0]       // 0x0081b87e    8b3495e0b5e300
                         test               eax, esi                                      // 0x0081b885    85f0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0081b887    89442410
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0081b88b    89742418
                         {disp32} jne       _jmp_addr_0x0081b9ad                          // 0x0081b88f    0f8518010000
                         mov.s              ebx, esi                                      // 0x0081b895    8bde
                         or.s               ebx, eax                                      // 0x0081b897    0bd8
                         {disp8} jne        _jmp_addr_0x0081b8bf                          // 0x0081b899    7524
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081b89b    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081b8a0    66893c45e05dea00
                         pop                edi                                           // 0x0081b8a8    5f
                         inc                eax                                           // 0x0081b8a9    40
                         pop                esi                                           // 0x0081b8aa    5e
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], bp         // 0x0081b8ab    66892c45e05dea00
                         inc                eax                                           // 0x0081b8b3    40
                         pop                ebp                                           // 0x0081b8b4    5d
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081b8b5    a3a49eea00
                         pop                ebx                                           // 0x0081b8ba    5b
                         add                esp, 0x14                                     // 0x0081b8bb    83c414
                         ret                                                              // 0x0081b8be    c3
_jmp_addr_0x0081b8bf:    {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0081b8bf    894c241c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081b8c3    8b0da89eea00
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0081b8c9    89542420
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0081b8cd    894c2414
                         mov                ebx, 0x00000020                               // 0x0081b8d1    bb20000000
                         {disp8} jmp        _jmp_addr_0x0081b8dc                          // 0x0081b8d6    eb04
_jmp_addr_0x0081b8d8:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0081b8d8    8b742418
_jmp_addr_0x0081b8dc:    xor.s              esi, eax                                      // 0x0081b8dc    33f0
                         test               ebx, esi                                      // 0x0081b8de    85f3
                         {disp8} je         _jmp_addr_0x0081b932                          // 0x0081b8e0    7450
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0081b8e2    8b4c2414
                         mov.s              esi, ecx                                      // 0x0081b8e6    8bf1
                         inc                ecx                                           // 0x0081b8e8    41
                         test               eax, ebx                                      // 0x0081b8e9    85d8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0081b8eb    894c2414
                         push               esi                                           // 0x0081b8ef    56
                         {disp8} je         _jmp_addr_0x0081b911                          // 0x0081b8f0    741f
                         push               edi                                           // 0x0081b8f2    57
                         mov.s              edx, ebp                                      // 0x0081b8f3    8bd5
                         mov.s              ecx, ebx                                      // 0x0081b8f5    8bcb
                         call               _jmp_addr_0x0081dd90                          // 0x0081b8f7    e894240000
                         mov.s              edi, esi                                      // 0x0081b8fc    8bfe
                         and                esi, 0x0000ffff                               // 0x0081b8fe    81e6ffff0000
                         {disp32} mov       edx, dword ptr [esi * 0x4 + 0x00e3b5e0]       // 0x0081b904    8b14b5e0b5e300
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0081b90b    89542410
                         {disp8} jmp        _jmp_addr_0x0081b92e                          // 0x0081b90f    eb1d
_jmp_addr_0x0081b911:    push               ebp                                           // 0x0081b911    55
                         mov.s              edx, edi                                      // 0x0081b912    8bd7
                         mov.s              ecx, ebx                                      // 0x0081b914    8bcb
                         call               _jmp_addr_0x0081dd90                          // 0x0081b916    e875240000
                         mov.s              ebp, esi                                      // 0x0081b91b    8bee
                         and                esi, 0x0000ffff                               // 0x0081b91d    81e6ffff0000
                         {disp32} mov       eax, dword ptr [esi * 0x4 + 0x00e3b5e0]       // 0x0081b923    8b04b5e0b5e300
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0081b92a    89442418
_jmp_addr_0x0081b92e:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0081b92e    8b442410
_jmp_addr_0x0081b932:    shr                ebx, 1                                        // 0x0081b932    d1eb
                         {disp8} jne        _jmp_addr_0x0081b8d8                          // 0x0081b934    75a2
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0081b936    8b44241c
                         and                edi, 0x0000ffff                               // 0x0081b93a    81e7ffff0000
                         cmp.s              edi, eax                                      // 0x0081b940    3bf8
                         {disp8} je         _jmp_addr_0x0081b961                          // 0x0081b942    741d
                         mov.s              esi, edi                                      // 0x0081b944    8bf7
                         shl                esi, 5                                        // 0x0081b946    c1e605
                         mov.s              edi, eax                                      // 0x0081b949    8bf8
                         shl                edi, 5                                        // 0x0081b94b    c1e705
                         add                esi, 0x00e437e0                               // 0x0081b94e    81c6e037e400
                         add                edi, 0x00e437e0                               // 0x0081b954    81c7e037e400
                         mov                ecx, 0x00000008                               // 0x0081b95a    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0081b95f    f3a5
_jmp_addr_0x0081b961:    {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0081b961    8b542420
                         and                ebp, 0x0000ffff                               // 0x0081b965    81e5ffff0000
                         cmp.s              ebp, edx                                      // 0x0081b96b    3bea
                         {disp8} je         _jmp_addr_0x0081b98c                          // 0x0081b96d    741d
                         mov.s              esi, ebp                                      // 0x0081b96f    8bf5
                         shl                esi, 5                                        // 0x0081b971    c1e605
                         mov.s              edi, edx                                      // 0x0081b974    8bfa
                         shl                edi, 5                                        // 0x0081b976    c1e705
                         add                esi, 0x00e437e0                               // 0x0081b979    81c6e037e400
                         add                edi, 0x00e437e0                               // 0x0081b97f    81c7e037e400
                         mov                ecx, 0x00000008                               // 0x0081b985    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0081b98a    f3a5
_jmp_addr_0x0081b98c:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081b98c    a1a49eea00
                         {disp8} mov        cx, word ptr [esp + 0x1c]                     // 0x0081b991    668b4c241c
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081b996    66890c45e05dea00
                         inc                eax                                           // 0x0081b99e    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081b99f    66891445e05dea00
                         inc                eax                                           // 0x0081b9a7    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081b9a8    a3a49eea00
_jmp_addr_0x0081b9ad:    pop                edi                                           // 0x0081b9ad    5f
                         pop                esi                                           // 0x0081b9ae    5e
                         pop                ebp                                           // 0x0081b9af    5d
                         pop                ebx                                           // 0x0081b9b0    5b
                         add                esp, 0x14                                     // 0x0081b9b1    83c414
                         ret                                                              // 0x0081b9b4    c3
                         nop                                                              // 0x0081b9b5    90
                         nop                                                              // 0x0081b9b6    90
                         nop                                                              // 0x0081b9b7    90
                         nop                                                              // 0x0081b9b8    90
                         nop                                                              // 0x0081b9b9    90
                         nop                                                              // 0x0081b9ba    90
                         nop                                                              // 0x0081b9bb    90
                         nop                                                              // 0x0081b9bc    90
                         nop                                                              // 0x0081b9bd    90
                         nop                                                              // 0x0081b9be    90
                         nop                                                              // 0x0081b9bf    90
_jmp_addr_0x0081b9c0:    sub                esp, 0x0c                                     // 0x0081b9c0    83ec0c
                         {disp32} fld       dword ptr [data_bytes + 0x264b00]             // 0x0081b9c3    d90500abc200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081b9c9    a100abc200
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x0081b9ce    d82590a38a00
                         push               ebx                                           // 0x0081b9d4    53
                         push               ebp                                           // 0x0081b9d5    55
                         push               esi                                           // 0x0081b9d6    56
                         mov.s              esi, ecx                                      // 0x0081b9d7    8bf1
                         {disp32} fstp      dword ptr [data_bytes + 0x264b00]             // 0x0081b9d9    d91d00abc200
                         {disp32} fld       dword ptr [data_bytes + 0x264b04]             // 0x0081b9df    d90504abc200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x264b04]        // 0x0081b9e5    8b0d04abc200
                         {disp32} fsub      dword ptr [_rdata_float1p0]                   // 0x0081b9eb    d82590a38a00
                         push               edi                                           // 0x0081b9f1    57
                         lea                edi, dword ptr [esi + esi * 0x1]              // 0x0081b9f2    8d3c36
                         push               edi                                           // 0x0081b9f5    57
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0081b9f6    894c241c
                         {disp32} fstp      dword ptr [data_bytes + 0x264b04]             // 0x0081b9fa    d91d04abc200
                         mov                ebp, 0x00e3b5e0                               // 0x0081ba00    bde0b5e300
                         push               edx                                           // 0x0081ba05    52
                         mov.s              edx, ebp                                      // 0x0081ba06    8bd5
                         mov                ecx, 0x00e437e0                               // 0x0081ba08    b9e037e400
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0081ba0d    8944241c
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x0081ba11    897c2418
                         call               _jmp_addr_0x0081b450                          // 0x0081ba15    e836faffff
                         xor.s              ebx, ebx                                      // 0x0081ba1a    33db
                         cmp.s              edi, ebx                                      // 0x0081ba1c    3bfb
                         lea                edx, dword ptr [esi + esi * 0x1]              // 0x0081ba1e    8d1436
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], ebx        // 0x0081ba21    891da49eea00
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], dx          // 0x0081ba27    668915a89eea00
                         {disp32} jle       _jmp_addr_0x0081bbaa                          // 0x0081ba2e    0f8e76010000
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0081ba34    8b7c2424
                         mov                esi, 0x00e43810                               // 0x0081ba38    be1038e400
_jmp_addr_0x0081ba3d:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0081ba3d    8b442420
                         mov                ecx, dword ptr [eax]                          // 0x0081ba41    8b08
                         {disp8} mov        dword ptr [esi + -0x20], ecx                  // 0x0081ba43    894ee0
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0081ba46    8b5004
                         mov                dword ptr [esi], edx                          // 0x0081ba49    8916
                         mov                eax, dword ptr [edi]                          // 0x0081ba4b    8b07
                         {disp8} mov        dword ptr [esi + -0x18], eax                  // 0x0081ba4d    8946e8
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0081ba50    8b4f04
                         {disp8} mov        dword ptr [esi + -0x14], ecx                  // 0x0081ba53    894eec
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0081ba56    8b5708
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x0081ba59    8b4d00
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0081ba5c    895608
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                   // 0x0081ba5f    8b470c
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x0081ba62    89460c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0081ba65    8b4504
                         mov.s              edx, ecx                                      // 0x0081ba68    8bd1
                         or.s               edx, eax                                      // 0x0081ba6a    0bd0
                         {disp8} je         _jmp_addr_0x0081ba83                          // 0x0081ba6c    7415
                         test               eax, ecx                                      // 0x0081ba6e    85c8
                         {disp8} jne        _jmp_addr_0x0081baa2                          // 0x0081ba70    7530
                         push               0x20                                          // 0x0081ba72    6a20
                         {disp8} lea        eax, dword ptr [ebx + 0x01]                   // 0x0081ba74    8d4301
                         push               eax                                           // 0x0081ba77    50
                         push               ebx                                           // 0x0081ba78    53
                         call               _jmp_addr_0x0081b7a0                          // 0x0081ba79    e822fdffff
                         add                esp, 0x0c                                     // 0x0081ba7e    83c40c
                         {disp8} jmp        _jmp_addr_0x0081baa2                          // 0x0081ba81    eb1f
_jmp_addr_0x0081ba83:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081ba83    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], bx         // 0x0081ba88    66891c45e05dea00
                         inc                eax                                           // 0x0081ba90    40
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                   // 0x0081ba91    8d4b01
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081ba94    66890c45e05dea00
                         inc                eax                                           // 0x0081ba9c    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081ba9d    a3a49eea00
_jmp_addr_0x0081baa2:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0081baa2    8b4c2420
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0081baa6    8b442410
                         add                ecx, 0x8                                      // 0x0081baaa    83c108
                         add                ebx, 0x02                                     // 0x0081baad    83c302
                         add                ebp, 0x08                                     // 0x0081bab0    83c508
                         add                esi, 0x40                                     // 0x0081bab3    83c640
                         add                edi, 0x10                                     // 0x0081bab6    83c710
                         cmp.s              ebx, eax                                      // 0x0081bab9    3bd8
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0081babb    894c2420
                         {disp32} jl        _jmp_addr_0x0081ba3d                          // 0x0081babf    0f8c78ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081bac5    a1a49eea00
                         test               eax, eax                                      // 0x0081baca    85c0
                         {disp32} je        _jmp_addr_0x0081bbaa                          // 0x0081bacc    0f84d8000000
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0081bad2    8b742428
                         test               esi, esi                                      // 0x0081bad6    85f6
                         {disp8} je         _jmp_addr_0x0081bb14                          // 0x0081bad8    743a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x0081bada    a11487c300
                         test               eax, eax                                      // 0x0081badf    85c0
                         {disp32} je        _jmp_addr_0x0081bb78                          // 0x0081bae1    0f8491000000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081bae7    8b3d18a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081baed    89354ca6ec00
                         mov                eax, dword ptr [esi]                          // 0x0081baf3    8b06
                         xor.s              edx, edx                                      // 0x0081baf5    33d2
                         mov.s              ecx, esi                                      // 0x0081baf7    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081baf9    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081bafc    a114a6ec00
                         test               eax, eax                                      // 0x0081bb01    85c0
                         {disp8} jne        _jmp_addr_0x0081bb54                          // 0x0081bb03    754f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081bb05    f6460504
                         {disp8} jne        _jmp_addr_0x0081bb54                          // 0x0081bb09    7549
                         push               0x0                                           // 0x0081bb0b    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081bb0d    e83e440100
                         {disp8} jmp        _jmp_addr_0x0081bb5b                          // 0x0081bb12    eb47
_jmp_addr_0x0081bb14:    {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x0081bb14    a11487c300
                         test               eax, eax                                      // 0x0081bb19    85c0
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4e3ec4]        // 0x0081bb1b    8b35c49eea00
                         {disp8} je         _jmp_addr_0x0081bb78                          // 0x0081bb21    7455
                         test               esi, esi                                      // 0x0081bb23    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081bb25    89354ca6ec00
                         {disp8} je         _jmp_addr_0x0081bb78                          // 0x0081bb2b    744b
                         mov                eax, dword ptr [esi]                          // 0x0081bb2d    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081bb2f    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x0081bb35    33d2
                         mov.s              ecx, esi                                      // 0x0081bb37    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081bb39    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081bb3c    a114a6ec00
                         test               eax, eax                                      // 0x0081bb41    85c0
                         {disp8} jne        _jmp_addr_0x0081bb54                          // 0x0081bb43    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081bb45    f6460504
                         {disp8} jne        _jmp_addr_0x0081bb54                          // 0x0081bb49    7509
                         push               0x0                                           // 0x0081bb4b    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081bb4d    e8fe430100
                         {disp8} jmp        _jmp_addr_0x0081bb5b                          // 0x0081bb52    eb07
_jmp_addr_0x0081bb54:    push               0x0                                           // 0x0081bb54    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081bb56    e8b5430100
_jmp_addr_0x0081bb5b:    xor.s              ecx, ecx                                      // 0x0081bb5b    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081bb5d    8a4e05
                         not                cl                                            // 0x0081bb60    f6d1
                         add                esp, 0x04                                     // 0x0081bb62    83c404
                         and                ecx, 0x01                                     // 0x0081bb65    83e101
                         shl                ecx, 1                                        // 0x0081bb68    d1e1
                         or                 ecx, 1                                        // 0x0081bb6a    83c901
                         push               ecx                                           // 0x0081bb6d    51
                         push               0x16                                          // 0x0081bb6e    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0081bb70    e8cb6dbfff
                         add                esp, 0x08                                     // 0x0081bb75    83c408
_jmp_addr_0x0081bb78:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081bb78    8b0da49eea00
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081bb7e    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081bb83    8b10
                         push               0x0                                           // 0x0081bb85    6a00
                         push               ecx                                           // 0x0081bb87    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081bb88    8b0da89eea00
                         push               0x00ea5de0                                    // 0x0081bb8e    68e05dea00
                         and                ecx, 0x0000ffff                               // 0x0081bb93    81e1ffff0000
                         push               ecx                                           // 0x0081bb99    51
                         push               0x00e437e0                                    // 0x0081bb9a    68e037e400
                         push               0x000001c4                                    // 0x0081bb9f    68c4010000
                         push               0x2                                           // 0x0081bba4    6a02
                         push               eax                                           // 0x0081bba6    50
                         call               dword ptr [edx + 0x68]                        // 0x0081bba7    ff5268
_jmp_addr_0x0081bbaa:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081bbaa    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0081bbae    8b442418
                         pop                edi                                           // 0x0081bbb2    5f
                         pop                esi                                           // 0x0081bbb3    5e
                         pop                ebp                                           // 0x0081bbb4    5d
                         {disp32} mov       dword ptr [data_bytes + 0x264b00], edx        // 0x0081bbb5    891500abc200
                         {disp32} mov       dword ptr [data_bytes + 0x264b04], eax        // 0x0081bbbb    a304abc200
                         pop                ebx                                           // 0x0081bbc0    5b
                         add                esp, 0x0c                                     // 0x0081bbc1    83c40c
                         ret                0x000c                                        // 0x0081bbc4    c20c00
                         nop                                                              // 0x0081bbc7    90
                         nop                                                              // 0x0081bbc8    90
                         nop                                                              // 0x0081bbc9    90
                         nop                                                              // 0x0081bbca    90
                         nop                                                              // 0x0081bbcb    90
                         nop                                                              // 0x0081bbcc    90
                         nop                                                              // 0x0081bbcd    90
                         nop                                                              // 0x0081bbce    90
                         nop                                                              // 0x0081bbcf    90
_Report3D__FPCce:        {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0081bbd0    8b4c2404
                         sub                esp, 0x00000800                               // 0x0081bbd4    81ec00080000
                         {disp32} lea       eax, dword ptr [esp + 0x00000808]             // 0x0081bbda    8d842408080000
                         push               eax                                           // 0x0081bbe1    50
                         push               ecx                                           // 0x0081bbe2    51
                         {disp8} lea        edx, dword ptr [esp + 0x08]                   // 0x0081bbe3    8d542408
                         push               edx                                           // 0x0081bbe7    52
                         call               _vsprintf                                     // 0x0081bbe8    e826c2faff
                         add                esp, 0x0c                                     // 0x0081bbed    83c40c
                         {disp8} lea        eax, dword ptr [esp + 0x00]                   // 0x0081bbf0    8d442400
                         push               eax                                           // 0x0081bbf4    50
                         call               dword ptr [__imp__OutputDebugStringA@4]       // 0x0081bbf5    ff1550918a00
                         add                esp, 0x00000800                               // 0x0081bbfb    81c400080000
                         ret                                                              // 0x0081bc01    c3
                         nop                                                              // 0x0081bc02    90
                         nop                                                              // 0x0081bc03    90
                         nop                                                              // 0x0081bc04    90
                         nop                                                              // 0x0081bc05    90
                         nop                                                              // 0x0081bc06    90
                         nop                                                              // 0x0081bc07    90
                         nop                                                              // 0x0081bc08    90
                         nop                                                              // 0x0081bc09    90
                         nop                                                              // 0x0081bc0a    90
                         nop                                                              // 0x0081bc0b    90
                         nop                                                              // 0x0081bc0c    90
                         nop                                                              // 0x0081bc0d    90
                         nop                                                              // 0x0081bc0e    90
                         nop                                                              // 0x0081bc0f    90
_jmp_addr_0x0081bc10:    sub                esp, 0x08                                     // 0x0081bc10    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0081bc13    8b442418
                         test               eax, eax                                      // 0x0081bc17    85c0
                         push               ebx                                           // 0x0081bc19    53
                         push               ebp                                           // 0x0081bc1a    55
                         push               esi                                           // 0x0081bc1b    56
                         push               edi                                           // 0x0081bc1c    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081bc1d    894c2410
                         mov                ebx, 0x00ea9e40                               // 0x0081bc21    bb409eea00
                         {disp8} jne        _jmp_addr_0x0081bc2d                          // 0x0081bc26    7505
                         mov                ebx, 0x00ea9e10                               // 0x0081bc28    bb109eea00
_jmp_addr_0x0081bc2d:    mov.s              eax, ecx                                      // 0x0081bc2d    8bc1
                         and                eax, 0x0000ffff                               // 0x0081bc2f    25ffff0000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], ebx        // 0x0081bc34    891da09eea00
                         mov                edi, 0x00e3b5e0                               // 0x0081bc3a    bfe0b5e300
                         {disp32} jle       _jmp_addr_0x0081bdda                          // 0x0081bc3f    0f8e95010000
                         {disp8} mov        ebp, dword ptr [esp + 0x1c]                   // 0x0081bc45    8b6c241c
                         mov                esi, 0x00e437ec                               // 0x0081bc49    beec37e400
                         mov.s              ecx, eax                                      // 0x0081bc4e    8bc8
_jmp_addr_0x0081bc50:    {disp8} fld        dword ptr [ebx + 0x18]                        // 0x0081bc50    d94318
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081bc53    d84a08
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081bc56    d94204
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x0081bc59    d84b0c
                         faddp              st(1), st                                     // 0x0081bc5c    dec1
                         fld                dword ptr [edx]                               // 0x0081bc5e    d902
                         fmul               dword ptr [ebx]                               // 0x0081bc60    d80b
                         faddp              st(1), st                                     // 0x0081bc62    dec1
                         {disp8} fadd       dword ptr [ebx + 0x24]                        // 0x0081bc64    d84324
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x0081bc67    d95ef4
                         fld                dword ptr [edx]                               // 0x0081bc6a    d902
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0081bc6c    d84b04
                         {disp8} fld        dword ptr [ebx + 0x1c]                        // 0x0081bc6f    d9431c
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081bc72    d84a08
                         faddp              st(1), st                                     // 0x0081bc75    dec1
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081bc77    d94204
                         {disp8} fmul       dword ptr [ebx + 0x10]                        // 0x0081bc7a    d84b10
                         faddp              st(1), st                                     // 0x0081bc7d    dec1
                         {disp8} fadd       dword ptr [ebx + 0x28]                        // 0x0081bc7f    d84328
                         {disp8} fstp       dword ptr [esi + -0x08]                       // 0x0081bc82    d95ef8
                         fld                dword ptr [edx]                               // 0x0081bc85    d902
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x0081bc87    d84b08
                         {disp8} fld        dword ptr [ebx + 0x20]                        // 0x0081bc8a    d94320
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081bc8d    d84a08
                         faddp              st(1), st                                     // 0x0081bc90    dec1
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081bc92    d94204
                         {disp8} fmul       dword ptr [ebx + 0x14]                        // 0x0081bc95    d84b14
                         faddp              st(1), st                                     // 0x0081bc98    dec1
                         {disp8} fadd       dword ptr [ebx + 0x2c]                        // 0x0081bc9a    d8432c
                         fst                dword ptr [esi]                               // 0x0081bc9d    d916
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081bc9f    d81de039e800
                         fnstsw             ax                                            // 0x0081bca5    dfe0
                         test               ah, 0x01                                      // 0x0081bca7    f6c401
                         {disp8} je         _jmp_addr_0x0081bcb4                          // 0x0081bcaa    7408
                         mov                dword ptr [edi], 0x00000020                   // 0x0081bcac    c70720000000
                         {disp8} jmp        _jmp_addr_0x0081bcba                          // 0x0081bcb2    eb06
_jmp_addr_0x0081bcb4:    mov                dword ptr [edi], 0x00000000                   // 0x0081bcb4    c70700000000
_jmp_addr_0x0081bcba:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081bcba    d946f4
                         fcomp              dword ptr [esi]                               // 0x0081bcbd    d81e
                         fnstsw             ax                                            // 0x0081bcbf    dfe0
                         test               ah, 0x41                                      // 0x0081bcc1    f6c441
                         {disp8} jne        _jmp_addr_0x0081bccd                          // 0x0081bcc4    7507
                         mov                eax, dword ptr [edi]                          // 0x0081bcc6    8b07
                         or                 eax, 0x10                                     // 0x0081bcc8    83c810
                         {disp8} jmp        _jmp_addr_0x0081bce0                          // 0x0081bccb    eb13
_jmp_addr_0x0081bccd:    fld                dword ptr [esi]                               // 0x0081bccd    d906
                         fchs                                                             // 0x0081bccf    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x0c]                       // 0x0081bcd1    d85ef4
                         fnstsw             ax                                            // 0x0081bcd4    dfe0
                         test               ah, 0x41                                      // 0x0081bcd6    f6c441
                         {disp8} jne        _jmp_addr_0x0081bce2                          // 0x0081bcd9    7507
                         mov                eax, dword ptr [edi]                          // 0x0081bcdb    8b07
                         or                 eax, 0x8                                      // 0x0081bcdd    83c808
_jmp_addr_0x0081bce0:    mov                dword ptr [edi], eax                          // 0x0081bce0    8907
_jmp_addr_0x0081bce2:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081bce2    d946f8
                         fcomp              dword ptr [esi]                               // 0x0081bce5    d81e
                         fnstsw             ax                                            // 0x0081bce7    dfe0
                         test               ah, 0x41                                      // 0x0081bce9    f6c441
                         {disp8} jne        _jmp_addr_0x0081bcf5                          // 0x0081bcec    7507
                         mov                eax, dword ptr [edi]                          // 0x0081bcee    8b07
                         or                 eax, 0x4                                      // 0x0081bcf0    83c804
                         {disp8} jmp        _jmp_addr_0x0081bd08                          // 0x0081bcf3    eb13
_jmp_addr_0x0081bcf5:    fld                dword ptr [esi]                               // 0x0081bcf5    d906
                         fchs                                                             // 0x0081bcf7    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x08]                       // 0x0081bcf9    d85ef8
                         fnstsw             ax                                            // 0x0081bcfc    dfe0
                         test               ah, 0x41                                      // 0x0081bcfe    f6c441
                         {disp8} jne        _jmp_addr_0x0081bd0a                          // 0x0081bd01    7507
                         mov                eax, dword ptr [edi]                          // 0x0081bd03    8b07
                         or                 eax, 0x2                                      // 0x0081bd05    83c802
_jmp_addr_0x0081bd08:    mov                dword ptr [edi], eax                          // 0x0081bd08    8907
_jmp_addr_0x0081bd0a:    cmp                dword ptr [edi], 0x00                         // 0x0081bd0a    833f00
                         {disp32} jne       _jmp_addr_0x0081bdb6                          // 0x0081bd0d    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081bd13    d90590a38a00
                         fdiv               dword ptr [esi]                               // 0x0081bd19    d836
                         fst                dword ptr [esi]                               // 0x0081bd1b    d916
                         {disp8} fmul       dword ptr [esi + -0x0c]                       // 0x0081bd1d    d84ef4
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081bd20    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081bd26    d80df039e800
                         {disp8} fst        dword ptr [esi + -0x0c]                       // 0x0081bd2c    d956f4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081bd2f    d81d98a38a00
                         fnstsw             ax                                            // 0x0081bd35    dfe0
                         test               ah, 0x01                                      // 0x0081bd37    f6c401
                         {disp8} je         _jmp_addr_0x0081bd45                          // 0x0081bd3a    7409
                         {disp8} mov        dword ptr [esi + -0x0c], 0x00000000           // 0x0081bd3c    c746f400000000
                         {disp8} jmp        _jmp_addr_0x0081bd5d                          // 0x0081bd43    eb18
_jmp_addr_0x0081bd45:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081bd45    d946f4
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081bd48    d81d00abc200
                         fnstsw             ax                                            // 0x0081bd4e    dfe0
                         test               ah, 0x41                                      // 0x0081bd50    f6c441
                         {disp8} jne        _jmp_addr_0x0081bd5d                          // 0x0081bd53    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081bd55    a100abc200
                         {disp8} mov        dword ptr [esi + -0x0c], eax                  // 0x0081bd5a    8946f4
_jmp_addr_0x0081bd5d:    fld                dword ptr [esi]                               // 0x0081bd5d    d906
                         {disp8} fmul       dword ptr [esi + -0x08]                       // 0x0081bd5f    d84ef8
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081bd62    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081bd68    d82df439e800
                         {disp8} fst        dword ptr [esi + -0x08]                       // 0x0081bd6e    d956f8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081bd71    d81d98a38a00
                         fnstsw             ax                                            // 0x0081bd77    dfe0
                         test               ah, 0x01                                      // 0x0081bd79    f6c401
                         {disp8} je         _jmp_addr_0x0081bd87                          // 0x0081bd7c    7409
                         {disp8} mov        dword ptr [esi + -0x08], 0x00000000           // 0x0081bd7e    c746f800000000
                         {disp8} jmp        _jmp_addr_0x0081bd9f                          // 0x0081bd85    eb18
_jmp_addr_0x0081bd87:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081bd87    d946f8
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081bd8a    d81d04abc200
                         fnstsw             ax                                            // 0x0081bd90    dfe0
                         test               ah, 0x41                                      // 0x0081bd92    f6c441
                         {disp8} jne        _jmp_addr_0x0081bd9f                          // 0x0081bd95    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081bd97    a104abc200
                         {disp8} mov        dword ptr [esi + -0x08], eax                  // 0x0081bd9c    8946f8
_jmp_addr_0x0081bd9f:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0081bd9f    d905e039e800
                         fmul               dword ptr [esi]                               // 0x0081bda5    d80e
                         fst                dword ptr [esi]                               // 0x0081bda7    d916
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081bda9    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081bdaf    d8e1
                         {disp8} fstp       dword ptr [esi + -0x04]                       // 0x0081bdb1    d95efc
                         fstp               st(0)                                         // 0x0081bdb4    ddd8
_jmp_addr_0x0081bdb6:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0081bdb6    8b4500
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0081bdb9    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0081bdbc    c7460800000000
                         add                edi, 0x04                                     // 0x0081bdc3    83c704
                         add                esi, 0x20                                     // 0x0081bdc6    83c620
                         add                ebp, 0x04                                     // 0x0081bdc9    83c504
                         add                edx, 0x0c                                     // 0x0081bdcc    83c20c
                         dec                ecx                                           // 0x0081bdcf    49
                         {disp32} jne       _jmp_addr_0x0081bc50                          // 0x0081bdd0    0f857afeffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0081bdd6    8b4c2410
_jmp_addr_0x0081bdda:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0081bdda    8b44242c
                         xor.s              edx, edx                                      // 0x0081bdde    33d2
                         cmp.s              eax, edx                                      // 0x0081bde0    3bc2
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], edx        // 0x0081bde2    8915a49eea00
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], cx          // 0x0081bde8    66890da89eea00
                         {disp8} je         _jmp_addr_0x0081be01                          // 0x0081bdef    7410
                         xor.s              ecx, ecx                                      // 0x0081bdf1    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x0081bdf3    8a4805
                         and                ecx, 0x01                                     // 0x0081bdf6    83e101
                         {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], ecx        // 0x0081bdf9    890db89eea00
                         {disp8} jmp        _jmp_addr_0x0081be07                          // 0x0081bdff    eb06
_jmp_addr_0x0081be01:    {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], edx        // 0x0081be01    8915b89eea00
_jmp_addr_0x0081be07:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0081be07    8b442420
                         cmp.s              eax, edx                                      // 0x0081be0b    3bc2
                         {disp32} jle       _jmp_addr_0x0081c07e                          // 0x0081be0d    0f8e6b020000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0081be13    8b742424
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0081be17    89442410
_jmp_addr_0x0081be1b:    mov                bp, word ptr [esi]                            // 0x0081be1b    668b2e
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081be1e    668b7e04
                         add                esi, 0x04                                     // 0x0081be22    83c604
                         {disp8} mov        ax, word ptr [esi + 0x04]                     // 0x0081be25    668b4604
                         add                esi, 0x04                                     // 0x0081be29    83c604
                         add                esi, 0x04                                     // 0x0081be2c    83c604
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0081be2f    896c2428
                         and                ebp, 0x0000ffff                               // 0x0081be33    81e5ffff0000
                         {disp32} mov       ecx, dword ptr [ebp * 0x4 + 0x00e3b5e0]       // 0x0081be39    8b0cade0b5e300
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0081be40    89442420
                         and                eax, 0x0000ffff                               // 0x0081be44    25ffff0000
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081be49    8b1485e0b5e300
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0081be50    897c241c
                         and                edi, 0x0000ffff                               // 0x0081be54    81e7ffff0000
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0081be5a    89542424
                         {disp32} mov       edx, dword ptr [edi * 0x4 + 0x00e3b5e0]       // 0x0081be5e    8b14bde0b5e300
                         mov.s              ebx, ecx                                      // 0x0081be65    8bd9
                         or.s               ebx, edx                                      // 0x0081be67    0bda
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0081be69    89542414
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0081be6d    8b542424
                         or.s               ebx, edx                                      // 0x0081be71    0bda
                         {disp32} je        _jmp_addr_0x0081befe                          // 0x0081be73    0f8485000000
                         and                ecx, dword ptr [esp + 0x14]                   // 0x0081be79    234c2414
                         test               edx, ecx                                      // 0x0081be7d    85ca
                         {disp8} jne        _jmp_addr_0x0081be95                          // 0x0081be7f    7514
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0081be81    8b442420
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0081be85    8b54241c
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0081be89    8b4c2428
                         push               0x20                                          // 0x0081be8d    6a20
                         push               eax                                           // 0x0081be8f    50
                         call               _jmp_addr_0x0081a760                          // 0x0081be90    e8cbe8ffff
_jmp_addr_0x0081be95:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081be95    a1a49eea00
_jmp_addr_0x0081be9a:    dec                dword ptr [esp + 0x10]                        // 0x0081be9a    ff4c2410
                         {disp32} jne       _jmp_addr_0x0081be1b                          // 0x0081be9e    0f8577ffffff
                         test               eax, eax                                      // 0x0081bea4    85c0
                         {disp32} je        _jmp_addr_0x0081c07e                          // 0x0081bea6    0f84d2010000
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0081beac    8b74242c
                         test               esi, esi                                      // 0x0081beb0    85f6
                         {disp32} je        _jmp_addr_0x0081bfd4                          // 0x0081beb2    0f841c010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x272714]        // 0x0081beb8    8b0d1487c300
                         test               ecx, ecx                                      // 0x0081bebe    85c9
                         {disp32} je        _jmp_addr_0x0081c062                          // 0x0081bec0    0f849c010000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081bec6    8b3d18a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081becc    89354ca6ec00
                         mov                eax, dword ptr [esi]                          // 0x0081bed2    8b06
                         xor.s              edx, edx                                      // 0x0081bed4    33d2
                         mov.s              ecx, esi                                      // 0x0081bed6    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081bed8    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081bedb    a114a6ec00
                         test               eax, eax                                      // 0x0081bee0    85c0
                         {disp32} jne       _jmp_addr_0x0081bf87                          // 0x0081bee2    0f859f000000
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081bee8    f6460504
                         {disp32} jne       _jmp_addr_0x0081bf87                          // 0x0081beec    0f8595000000
                         push               0x0                                           // 0x0081bef2    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081bef4    e857400100
                         {disp32} jmp       _jmp_addr_0x0081bf8e                          // 0x0081bef9    e990000000
_jmp_addr_0x0081befe:    shl                eax, 5                                        // 0x0081befe    c1e005
                         {disp32} fld       dword ptr [eax + 0x00e437e4]                  // 0x0081bf01    d980e437e400
                         {disp32} lea       ecx, dword ptr [eax + 0x00e437e0]             // 0x0081bf07    8d88e037e400
                         shl                ebp, 5                                        // 0x0081bf0d    c1e505
                         {disp32} fsub      dword ptr [ebp + 0x00e437e4]                  // 0x0081bf10    d8a5e437e400
                         {disp32} lea       eax, dword ptr [ebp + 0x00e437e0]             // 0x0081bf16    8d85e037e400
                         shl                edi, 5                                        // 0x0081bf1c    c1e705
                         {disp32} fld       dword ptr [edi + 0x00e437e0]                  // 0x0081bf1f    d987e037e400
                         {disp32} lea       edx, dword ptr [edi + 0x00e437e0]             // 0x0081bf25    8d97e037e400
                         fsub               dword ptr [eax]                               // 0x0081bf2b    d820
                         fmulp              st(1), st                                     // 0x0081bf2d    dec9
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081bf2f    d94204
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0081bf32    d86004
                         fld                dword ptr [ecx]                               // 0x0081bf35    d901
                         fsub               dword ptr [eax]                               // 0x0081bf37    d820
                         fmulp              st(1), st                                     // 0x0081bf39    dec9
                         fsubp              st(1), st                                     // 0x0081bf3b    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081bf3d    d81d98a38a00
                         fnstsw             ax                                            // 0x0081bf43    dfe0
                         test               ah, 0x41                                      // 0x0081bf45    f6c441
                         {disp32} jne       _jmp_addr_0x0081be95                          // 0x0081bf48    0f8547ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081bf4e    a1a49eea00
                         {disp8} mov        cx, word ptr [esp + 0x28]                     // 0x0081bf53    668b4c2428
                         {disp8} mov        dx, word ptr [esp + 0x1c]                     // 0x0081bf58    668b54241c
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081bf5d    66890c45e05dea00
                         {disp8} mov        cx, word ptr [esp + 0x20]                     // 0x0081bf65    668b4c2420
                         inc                eax                                           // 0x0081bf6a    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081bf6b    66891445e05dea00
                         inc                eax                                           // 0x0081bf73    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081bf74    66890c45e05dea00
                         inc                eax                                           // 0x0081bf7c    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081bf7d    a3a49eea00
                         {disp32} jmp       _jmp_addr_0x0081be9a                          // 0x0081bf82    e913ffffff
_jmp_addr_0x0081bf87:    push               0x0                                           // 0x0081bf87    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081bf89    e8823f0100
_jmp_addr_0x0081bf8e:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0081bf8e    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0081bf93    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081bf95    8a4e05
                         not                cl                                            // 0x0081bf98    f6d1
                         add                esp, 0x04                                     // 0x0081bf9a    83c404
                         and                ecx, 0x01                                     // 0x0081bf9d    83e101
                         shl                ecx, 1                                        // 0x0081bfa0    d1e1
                         or                 ecx, 1                                        // 0x0081bfa2    83c901
                         mov.s              esi, ecx                                      // 0x0081bfa5    8bf1
                         cmp.s              eax, esi                                      // 0x0081bfa7    3bc6
                         {disp32} je        _jmp_addr_0x0081c05d                          // 0x0081bfa9    0f84ae000000
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081bfaf    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081bfb4    8b10
                         push               esi                                           // 0x0081bfb6    56
                         push               0x16                                          // 0x0081bfb7    6a16
                         push               eax                                           // 0x0081bfb9    50
                         call               dword ptr [edx + 0x50]                        // 0x0081bfba    ff5250
                         test               eax, eax                                      // 0x0081bfbd    85c0
                         {disp32} je        _jmp_addr_0x0081c057                          // 0x0081bfbf    0f8492000000
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0081bfc5    c70548a2ec00ffffffff
                         {disp32} jmp       _jmp_addr_0x0081c05d                          // 0x0081bfcf    e989000000
_jmp_addr_0x0081bfd4:    {disp32} mov       ecx, dword ptr [data_bytes + 0x272714]        // 0x0081bfd4    8b0d1487c300
                         test               ecx, ecx                                      // 0x0081bfda    85c9
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4e3ec4]        // 0x0081bfdc    8b35c49eea00
                         {disp8} je         _jmp_addr_0x0081c062                          // 0x0081bfe2    747e
                         test               esi, esi                                      // 0x0081bfe4    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081bfe6    89354ca6ec00
                         {disp8} je         _jmp_addr_0x0081c062                          // 0x0081bfec    7474
                         mov                eax, dword ptr [esi]                          // 0x0081bfee    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081bff0    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x0081bff6    33d2
                         mov.s              ecx, esi                                      // 0x0081bff8    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081bffa    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081bffd    a114a6ec00
                         test               eax, eax                                      // 0x0081c002    85c0
                         {disp8} jne        _jmp_addr_0x0081c015                          // 0x0081c004    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081c006    f6460504
                         {disp8} jne        _jmp_addr_0x0081c015                          // 0x0081c00a    7509
                         push               0x0                                           // 0x0081c00c    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081c00e    e83d3f0100
                         {disp8} jmp        _jmp_addr_0x0081c01c                          // 0x0081c013    eb07
_jmp_addr_0x0081c015:    push               0x0                                           // 0x0081c015    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081c017    e8f43e0100
_jmp_addr_0x0081c01c:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0081c01c    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0081c021    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081c023    8a4e05
                         not                cl                                            // 0x0081c026    f6d1
                         add                esp, 0x04                                     // 0x0081c028    83c404
                         and                ecx, 0x01                                     // 0x0081c02b    83e101
                         shl                ecx, 1                                        // 0x0081c02e    d1e1
                         or                 ecx, 1                                        // 0x0081c030    83c901
                         mov.s              esi, ecx                                      // 0x0081c033    8bf1
                         cmp.s              eax, esi                                      // 0x0081c035    3bc6
                         {disp8} je         _jmp_addr_0x0081c05d                          // 0x0081c037    7424
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081c039    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081c03e    8b10
                         push               esi                                           // 0x0081c040    56
                         push               0x16                                          // 0x0081c041    6a16
                         push               eax                                           // 0x0081c043    50
                         call               dword ptr [edx + 0x50]                        // 0x0081c044    ff5250
                         test               eax, eax                                      // 0x0081c047    85c0
                         {disp8} je         _jmp_addr_0x0081c057                          // 0x0081c049    740c
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0081c04b    c70548a2ec00ffffffff
                         {disp8} jmp        _jmp_addr_0x0081c05d                          // 0x0081c055    eb06
_jmp_addr_0x0081c057:    {disp32} mov       dword ptr [data_bytes + 0x504248], esi        // 0x0081c057    893548a2ec00
_jmp_addr_0x0081c05d:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c05d    a1a49eea00
_jmp_addr_0x0081c062:    {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081c062    8b15a89eea00
                         push               eax                                           // 0x0081c068    50
                         push               0x00ea5de0                                    // 0x0081c069    68e05dea00
                         and                edx, 0x0000ffff                               // 0x0081c06e    81e2ffff0000
                         mov                ecx, 0x00e437e0                               // 0x0081c074    b9e037e400
                         call               ?DrawTriangle@LH3DRender@@SAXPAUVertex3D@@KPAGK@Z                         // 0x0081c079    e892370100
_jmp_addr_0x0081c07e:    pop                edi                                           // 0x0081c07e    5f
                         pop                esi                                           // 0x0081c07f    5e
                         pop                ebp                                           // 0x0081c080    5d
                         pop                ebx                                           // 0x0081c081    5b
                         add                esp, 0x08                                     // 0x0081c082    83c408
                         ret                0x0014                                        // 0x0081c085    c21400
                         nop                                                              // 0x0081c088    90
                         nop                                                              // 0x0081c089    90
                         nop                                                              // 0x0081c08a    90
                         nop                                                              // 0x0081c08b    90
                         nop                                                              // 0x0081c08c    90
                         nop                                                              // 0x0081c08d    90
                         nop                                                              // 0x0081c08e    90
                         nop                                                              // 0x0081c08f    90
_jmp_addr_0x0081c090:    push               ecx                                           // 0x0081c090    51
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0081c091    8b44241c
                         test               eax, eax                                      // 0x0081c095    85c0
                         push               ebx                                           // 0x0081c097    53
                         push               ebp                                           // 0x0081c098    55
                         push               esi                                           // 0x0081c099    56
                         push               edi                                           // 0x0081c09a    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081c09b    894c2410
                         {disp32} jne       _jmp_addr_0x0081c12a                          // 0x0081c09f    0f8585000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e40]        // 0x0081c0a5    a1409eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e10], eax        // 0x0081c0aa    a3109eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e44]        // 0x0081c0af    a1449eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e14], eax        // 0x0081c0b4    a3149eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e48]        // 0x0081c0b9    a1489eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e18], eax        // 0x0081c0be    a3189eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e4c]        // 0x0081c0c3    a14c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e1c], eax        // 0x0081c0c8    a31c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e50]        // 0x0081c0cd    a1509eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e20], eax        // 0x0081c0d2    a3209eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e54]        // 0x0081c0d7    a1549eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e24], eax        // 0x0081c0dc    a3249eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e58]        // 0x0081c0e1    a1589eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e28], eax        // 0x0081c0e6    a3289eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e5c]        // 0x0081c0eb    a15c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e2c], eax        // 0x0081c0f0    a32c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e60]        // 0x0081c0f5    a1609eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e30], eax        // 0x0081c0fa    a3309eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e64]        // 0x0081c0ff    a1649eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e34], eax        // 0x0081c104    a3349eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e68]        // 0x0081c109    a1689eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e38], eax        // 0x0081c10e    a3389eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e6c]        // 0x0081c113    a16c9eea00
                         mov                ebp, 0x00ea9e10                               // 0x0081c118    bd109eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], ebp        // 0x0081c11d    892da09eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e3c], eax        // 0x0081c123    a33c9eea00
                         {disp8} jmp        _jmp_addr_0x0081c130                          // 0x0081c128    eb06
_jmp_addr_0x0081c12a:    {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea0]        // 0x0081c12a    8b2da09eea00
_jmp_addr_0x0081c130:    mov.s              eax, ecx                                      // 0x0081c130    8bc1
                         and                eax, 0x0000ffff                               // 0x0081c132    25ffff0000
                         mov                edi, 0x00e3b5e0                               // 0x0081c137    bfe0b5e300
                         {disp32} jle       _jmp_addr_0x0081c2f3                          // 0x0081c13c    0f8eb1010000
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0081c142    8b5c241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0081c146    8b4c2418
                         mov                esi, 0x00e437ec                               // 0x0081c14a    beec37e400
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0081c14f    8944242c
_jmp_addr_0x0081c153:    fld                dword ptr [edx]                               // 0x0081c153    d902
                         {disp8} fmul       dword ptr [ebp + 0x00]                        // 0x0081c155    d84d00
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081c158    d94204
                         {disp8} fmul       dword ptr [ebp + 0x0c]                        // 0x0081c15b    d84d0c
                         faddp              st(1), st                                     // 0x0081c15e    dec1
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0081c160    d94208
                         {disp8} fmul       dword ptr [ebp + 0x18]                        // 0x0081c163    d84d18
                         faddp              st(1), st                                     // 0x0081c166    dec1
                         {disp8} fadd       dword ptr [ebp + 0x24]                        // 0x0081c168    d84524
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x0081c16b    d95ef4
                         fld                dword ptr [edx]                               // 0x0081c16e    d902
                         {disp8} fmul       dword ptr [ebp + 0x04]                        // 0x0081c170    d84d04
                         {disp8} fld        dword ptr [ebp + 0x1c]                        // 0x0081c173    d9451c
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081c176    d84a08
                         faddp              st(1), st                                     // 0x0081c179    dec1
                         {disp8} fld        dword ptr [ebp + 0x10]                        // 0x0081c17b    d94510
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081c17e    d84a04
                         faddp              st(1), st                                     // 0x0081c181    dec1
                         {disp8} fadd       dword ptr [ebp + 0x28]                        // 0x0081c183    d84528
                         {disp8} fstp       dword ptr [esi + -0x08]                       // 0x0081c186    d95ef8
                         fld                dword ptr [edx]                               // 0x0081c189    d902
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081c18b    d84d08
                         {disp8} fld        dword ptr [ebp + 0x20]                        // 0x0081c18e    d94520
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081c191    d84a08
                         faddp              st(1), st                                     // 0x0081c194    dec1
                         {disp8} fld        dword ptr [ebp + 0x14]                        // 0x0081c196    d94514
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081c199    d84a04
                         faddp              st(1), st                                     // 0x0081c19c    dec1
                         {disp8} fadd       dword ptr [ebp + 0x2c]                        // 0x0081c19e    d8452c
                         fst                dword ptr [esi]                               // 0x0081c1a1    d916
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081c1a3    d81de039e800
                         fnstsw             ax                                            // 0x0081c1a9    dfe0
                         test               ah, 0x01                                      // 0x0081c1ab    f6c401
                         {disp8} je         _jmp_addr_0x0081c1b8                          // 0x0081c1ae    7408
                         mov                dword ptr [edi], 0x00000020                   // 0x0081c1b0    c70720000000
                         {disp8} jmp        _jmp_addr_0x0081c1be                          // 0x0081c1b6    eb06
_jmp_addr_0x0081c1b8:    mov                dword ptr [edi], 0x00000000                   // 0x0081c1b8    c70700000000
_jmp_addr_0x0081c1be:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081c1be    d946f4
                         fcomp              dword ptr [esi]                               // 0x0081c1c1    d81e
                         fnstsw             ax                                            // 0x0081c1c3    dfe0
                         test               ah, 0x41                                      // 0x0081c1c5    f6c441
                         {disp8} jne        _jmp_addr_0x0081c1d1                          // 0x0081c1c8    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c1ca    8b07
                         or                 eax, 0x10                                     // 0x0081c1cc    83c810
                         {disp8} jmp        _jmp_addr_0x0081c1e4                          // 0x0081c1cf    eb13
_jmp_addr_0x0081c1d1:    fld                dword ptr [esi]                               // 0x0081c1d1    d906
                         fchs                                                             // 0x0081c1d3    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x0c]                       // 0x0081c1d5    d85ef4
                         fnstsw             ax                                            // 0x0081c1d8    dfe0
                         test               ah, 0x41                                      // 0x0081c1da    f6c441
                         {disp8} jne        _jmp_addr_0x0081c1e6                          // 0x0081c1dd    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c1df    8b07
                         or                 eax, 0x8                                      // 0x0081c1e1    83c808
_jmp_addr_0x0081c1e4:    mov                dword ptr [edi], eax                          // 0x0081c1e4    8907
_jmp_addr_0x0081c1e6:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081c1e6    d946f8
                         fcomp              dword ptr [esi]                               // 0x0081c1e9    d81e
                         fnstsw             ax                                            // 0x0081c1eb    dfe0
                         test               ah, 0x41                                      // 0x0081c1ed    f6c441
                         {disp8} jne        _jmp_addr_0x0081c1f9                          // 0x0081c1f0    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c1f2    8b07
                         or                 eax, 0x4                                      // 0x0081c1f4    83c804
                         {disp8} jmp        _jmp_addr_0x0081c20c                          // 0x0081c1f7    eb13
_jmp_addr_0x0081c1f9:    fld                dword ptr [esi]                               // 0x0081c1f9    d906
                         fchs                                                             // 0x0081c1fb    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x08]                       // 0x0081c1fd    d85ef8
                         fnstsw             ax                                            // 0x0081c200    dfe0
                         test               ah, 0x41                                      // 0x0081c202    f6c441
                         {disp8} jne        _jmp_addr_0x0081c20e                          // 0x0081c205    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c207    8b07
                         or                 eax, 0x2                                      // 0x0081c209    83c802
_jmp_addr_0x0081c20c:    mov                dword ptr [edi], eax                          // 0x0081c20c    8907
_jmp_addr_0x0081c20e:    cmp                dword ptr [edi], 0x00                         // 0x0081c20e    833f00
                         {disp32} jne       _jmp_addr_0x0081c2ba                          // 0x0081c211    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c217    d90590a38a00
                         fdiv               dword ptr [esi]                               // 0x0081c21d    d836
                         fst                dword ptr [esi]                               // 0x0081c21f    d916
                         {disp8} fmul       dword ptr [esi + -0x0c]                       // 0x0081c221    d84ef4
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081c224    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081c22a    d80df039e800
                         {disp8} fst        dword ptr [esi + -0x0c]                       // 0x0081c230    d956f4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081c233    d81d98a38a00
                         fnstsw             ax                                            // 0x0081c239    dfe0
                         test               ah, 0x01                                      // 0x0081c23b    f6c401
                         {disp8} je         _jmp_addr_0x0081c249                          // 0x0081c23e    7409
                         {disp8} mov        dword ptr [esi + -0x0c], 0x00000000           // 0x0081c240    c746f400000000
                         {disp8} jmp        _jmp_addr_0x0081c261                          // 0x0081c247    eb18
_jmp_addr_0x0081c249:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081c249    d946f4
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081c24c    d81d00abc200
                         fnstsw             ax                                            // 0x0081c252    dfe0
                         test               ah, 0x41                                      // 0x0081c254    f6c441
                         {disp8} jne        _jmp_addr_0x0081c261                          // 0x0081c257    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081c259    a100abc200
                         {disp8} mov        dword ptr [esi + -0x0c], eax                  // 0x0081c25e    8946f4
_jmp_addr_0x0081c261:    fld                dword ptr [esi]                               // 0x0081c261    d906
                         {disp8} fmul       dword ptr [esi + -0x08]                       // 0x0081c263    d84ef8
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081c266    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081c26c    d82df439e800
                         {disp8} fst        dword ptr [esi + -0x08]                       // 0x0081c272    d956f8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081c275    d81d98a38a00
                         fnstsw             ax                                            // 0x0081c27b    dfe0
                         test               ah, 0x01                                      // 0x0081c27d    f6c401
                         {disp8} je         _jmp_addr_0x0081c28b                          // 0x0081c280    7409
                         {disp8} mov        dword ptr [esi + -0x08], 0x00000000           // 0x0081c282    c746f800000000
                         {disp8} jmp        _jmp_addr_0x0081c2a3                          // 0x0081c289    eb18
_jmp_addr_0x0081c28b:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081c28b    d946f8
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081c28e    d81d04abc200
                         fnstsw             ax                                            // 0x0081c294    dfe0
                         test               ah, 0x41                                      // 0x0081c296    f6c441
                         {disp8} jne        _jmp_addr_0x0081c2a3                          // 0x0081c299    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081c29b    a104abc200
                         {disp8} mov        dword ptr [esi + -0x08], eax                  // 0x0081c2a0    8946f8
_jmp_addr_0x0081c2a3:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0081c2a3    d905e039e800
                         fmul               dword ptr [esi]                               // 0x0081c2a9    d80e
                         fst                dword ptr [esi]                               // 0x0081c2ab    d916
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c2ad    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081c2b3    d8e1
                         {disp8} fstp       dword ptr [esi + -0x04]                       // 0x0081c2b5    d95efc
                         fstp               st(0)                                         // 0x0081c2b8    ddd8
_jmp_addr_0x0081c2ba:    mov                eax, dword ptr [ecx]                          // 0x0081c2ba    8b01
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0081c2bc    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0081c2bf    c7460800000000
                         mov                eax, dword ptr [ebx]                          // 0x0081c2c6    8b03
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x0081c2c8    89460c
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0081c2cb    8b4304
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0081c2ce    894610
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0081c2d1    8b44242c
                         add                edi, 0x04                                     // 0x0081c2d5    83c704
                         add                esi, 0x20                                     // 0x0081c2d8    83c620
                         add                ecx, 0x4                                      // 0x0081c2db    83c104
                         add                edx, 0x0c                                     // 0x0081c2de    83c20c
                         add                ebx, 0x08                                     // 0x0081c2e1    83c308
                         dec                eax                                           // 0x0081c2e4    48
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0081c2e5    8944242c
                         {disp32} jne       _jmp_addr_0x0081c153                          // 0x0081c2e9    0f8564feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0081c2ef    8b4c2410
_jmp_addr_0x0081c2f3:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0081c2f3    8b442428
                         test               eax, eax                                      // 0x0081c2f7    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], 0x00000000 // 0x0081c2f9    c705a49eea0000000000
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], cx          // 0x0081c303    66890da89eea00
                         {disp8} je         _jmp_addr_0x0081c314                          // 0x0081c30a    7408
                         {disp8} mov        al, byte ptr [eax + 0x05]                     // 0x0081c30c    8a4005
                         and                eax, 0x01                                     // 0x0081c30f    83e001
                         {disp8} jmp        _jmp_addr_0x0081c319                          // 0x0081c312    eb05
_jmp_addr_0x0081c314:    mov                eax, 0x00000001                               // 0x0081c314    b801000000
_jmp_addr_0x0081c319:    {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], eax        // 0x0081c319    a3b89eea00
                         test               eax, eax                                      // 0x0081c31e    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0081c320    8b442420
                         {disp32} je        _jmp_addr_0x0081c3d3                          // 0x0081c324    0f84a9000000
                         test               eax, eax                                      // 0x0081c32a    85c0
                         {disp32} jle       _jmp_addr_0x0081c5b6                          // 0x0081c32c    0f8e84020000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0081c332    8b742424
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0081c336    89442420
_jmp_addr_0x0081c33a:    mov                cx, word ptr [esi]                            // 0x0081c33a    668b0e
                         {disp8} mov        dx, word ptr [esi + 0x04]                     // 0x0081c33d    668b5604
                         add                esi, 0x04                                     // 0x0081c341    83c604
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081c344    668b7e04
                         add                esi, 0x04                                     // 0x0081c348    83c604
                         add                esi, 0x04                                     // 0x0081c34b    83c604
                         mov.s              eax, edi                                      // 0x0081c34e    8bc7
                         and                eax, 0x0000ffff                               // 0x0081c350    25ffff0000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081c355    8b0485e0b5e300
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0081c35c    89442424
                         mov.s              eax, edx                                      // 0x0081c360    8bc2
                         and                eax, 0x0000ffff                               // 0x0081c362    25ffff0000
                         {disp32} mov       ebx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081c367    8b1c85e0b5e300
                         mov.s              eax, ecx                                      // 0x0081c36e    8bc1
                         and                eax, 0x0000ffff                               // 0x0081c370    25ffff0000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081c375    8b0485e0b5e300
                         mov.s              ebp, eax                                      // 0x0081c37c    8be8
                         or.s               ebp, ebx                                      // 0x0081c37e    0beb
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x0081c380    895c242c
                         {disp8} mov        ebx, dword ptr [esp + 0x24]                   // 0x0081c384    8b5c2424
                         or.s               ebp, ebx                                      // 0x0081c388    0beb
                         {disp8} je         _jmp_addr_0x0081c3ac                          // 0x0081c38a    7420
                         and                eax, dword ptr [esp + 0x2c]                   // 0x0081c38c    2344242c
                         test               ebx, eax                                      // 0x0081c390    85c3
                         {disp8} jne        _jmp_addr_0x0081c39c                          // 0x0081c392    7508
                         push               0x20                                          // 0x0081c394    6a20
                         push               edi                                           // 0x0081c396    57
                         call               _jmp_addr_0x0081a760                          // 0x0081c397    e8c4e3ffff
_jmp_addr_0x0081c39c:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c39c    a1a49eea00
_jmp_addr_0x0081c3a1:    dec                dword ptr [esp + 0x20]                        // 0x0081c3a1    ff4c2420
                         {disp8} jne        _jmp_addr_0x0081c33a                          // 0x0081c3a5    7593
                         {disp32} jmp       _jmp_addr_0x0081c46c                          // 0x0081c3a7    e9c0000000
_jmp_addr_0x0081c3ac:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c3ac    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081c3b1    66890c45e05dea00
                         inc                eax                                           // 0x0081c3b9    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081c3ba    66891445e05dea00
                         inc                eax                                           // 0x0081c3c2    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081c3c3    66893c45e05dea00
                         inc                eax                                           // 0x0081c3cb    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081c3cc    a3a49eea00
                         {disp8} jmp        _jmp_addr_0x0081c3a1                          // 0x0081c3d1    ebce
_jmp_addr_0x0081c3d3:    test               eax, eax                                      // 0x0081c3d3    85c0
                         {disp32} jle       _jmp_addr_0x0081c5b6                          // 0x0081c3d5    0f8edb010000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0081c3db    8b742424
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0081c3df    8944241c
_jmp_addr_0x0081c3e3:    mov                bx, word ptr [esi]                            // 0x0081c3e3    668b1e
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081c3e6    668b7e04
                         add                esi, 0x04                                     // 0x0081c3ea    83c604
                         {disp8} mov        ax, word ptr [esi + 0x04]                     // 0x0081c3ed    668b4604
                         add                esi, 0x04                                     // 0x0081c3f1    83c604
                         add                esi, 0x04                                     // 0x0081c3f4    83c604
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0081c3f7    895c2420
                         and                ebx, 0x0000ffff                               // 0x0081c3fb    81e3ffff0000
                         {disp8} mov        dword ptr [esp + 0x24], edi                   // 0x0081c401    897c2424
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0081c405    8944242c
                         and                eax, 0x0000ffff                               // 0x0081c409    25ffff0000
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081c40e    8b0c85e0b5e300
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0081c415    894c2418
                         {disp32} mov       ecx, dword ptr [ebx * 0x4 + 0x00e3b5e0]       // 0x0081c419    8b0c9de0b5e300
                         and                edi, 0x0000ffff                               // 0x0081c420    81e7ffff0000
                         {disp32} mov       edx, dword ptr [edi * 0x4 + 0x00e3b5e0]       // 0x0081c426    8b14bde0b5e300
                         mov.s              ebp, ecx                                      // 0x0081c42d    8be9
                         or.s               ebp, edx                                      // 0x0081c42f    0bea
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0081c431    89542410
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0081c435    8b542418
                         or.s               ebp, edx                                      // 0x0081c439    0bea
                         {disp32} je        _jmp_addr_0x0081c4c6                          // 0x0081c43b    0f8485000000
                         and                ecx, dword ptr [esp + 0x10]                   // 0x0081c441    234c2410
                         test               edx, ecx                                      // 0x0081c445    85ca
                         {disp8} jne        _jmp_addr_0x0081c45d                          // 0x0081c447    7514
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0081c449    8b54242c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0081c44d    8b4c2420
                         push               0x20                                          // 0x0081c451    6a20
                         push               edx                                           // 0x0081c453    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0081c454    8b54242c
                         call               _jmp_addr_0x0081a760                          // 0x0081c458    e803e3ffff
_jmp_addr_0x0081c45d:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c45d    a1a49eea00
_jmp_addr_0x0081c462:    dec                dword ptr [esp + 0x1c]                        // 0x0081c462    ff4c241c
                         {disp32} jne       _jmp_addr_0x0081c3e3                          // 0x0081c466    0f8577ffffff
_jmp_addr_0x0081c46c:    test               eax, eax                                      // 0x0081c46c    85c0
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0081c46e    8b742428
                         {disp32} je        _jmp_addr_0x0081c5b6                          // 0x0081c472    0f843e010000
                         test               esi, esi                                      // 0x0081c478    85f6
                         {disp32} je        _jmp_addr_0x0081c59a                          // 0x0081c47a    0f841a010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x272714]        // 0x0081c480    8b0d1487c300
                         test               ecx, ecx                                      // 0x0081c486    85c9
                         {disp32} je        _jmp_addr_0x0081c59a                          // 0x0081c488    0f840c010000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081c48e    8b3d18a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081c494    89354ca6ec00
                         mov                eax, dword ptr [esi]                          // 0x0081c49a    8b06
                         xor.s              edx, edx                                      // 0x0081c49c    33d2
                         mov.s              ecx, esi                                      // 0x0081c49e    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081c4a0    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081c4a3    a114a6ec00
                         test               eax, eax                                      // 0x0081c4a8    85c0
                         {disp32} jne       _jmp_addr_0x0081c54f                          // 0x0081c4aa    0f859f000000
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081c4b0    f6460504
                         {disp32} jne       _jmp_addr_0x0081c54f                          // 0x0081c4b4    0f8595000000
                         push               0x0                                           // 0x0081c4ba    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081c4bc    e88f3a0100
                         {disp32} jmp       _jmp_addr_0x0081c556                          // 0x0081c4c1    e990000000
_jmp_addr_0x0081c4c6:    shl                eax, 5                                        // 0x0081c4c6    c1e005
                         {disp32} fld       dword ptr [eax + 0x00e437e4]                  // 0x0081c4c9    d980e437e400
                         {disp32} lea       ecx, dword ptr [eax + 0x00e437e0]             // 0x0081c4cf    8d88e037e400
                         shl                ebx, 5                                        // 0x0081c4d5    c1e305
                         {disp32} fsub      dword ptr [ebx + 0x00e437e4]                  // 0x0081c4d8    d8a3e437e400
                         {disp32} lea       eax, dword ptr [ebx + 0x00e437e0]             // 0x0081c4de    8d83e037e400
                         shl                edi, 5                                        // 0x0081c4e4    c1e705
                         {disp32} fld       dword ptr [edi + 0x00e437e0]                  // 0x0081c4e7    d987e037e400
                         {disp32} lea       edx, dword ptr [edi + 0x00e437e0]             // 0x0081c4ed    8d97e037e400
                         fsub               dword ptr [eax]                               // 0x0081c4f3    d820
                         fmulp              st(1), st                                     // 0x0081c4f5    dec9
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0081c4f7    d94204
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0081c4fa    d86004
                         fld                dword ptr [ecx]                               // 0x0081c4fd    d901
                         fsub               dword ptr [eax]                               // 0x0081c4ff    d820
                         fmulp              st(1), st                                     // 0x0081c501    dec9
                         fsubp              st(1), st                                     // 0x0081c503    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081c505    d81d98a38a00
                         fnstsw             ax                                            // 0x0081c50b    dfe0
                         test               ah, 0x41                                      // 0x0081c50d    f6c441
                         {disp32} jne       _jmp_addr_0x0081c45d                          // 0x0081c510    0f8547ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c516    a1a49eea00
                         {disp8} mov        cx, word ptr [esp + 0x20]                     // 0x0081c51b    668b4c2420
                         {disp8} mov        dx, word ptr [esp + 0x24]                     // 0x0081c520    668b542424
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081c525    66890c45e05dea00
                         {disp8} mov        cx, word ptr [esp + 0x2c]                     // 0x0081c52d    668b4c242c
                         inc                eax                                           // 0x0081c532    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081c533    66891445e05dea00
                         inc                eax                                           // 0x0081c53b    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081c53c    66890c45e05dea00
                         inc                eax                                           // 0x0081c544    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081c545    a3a49eea00
                         {disp32} jmp       _jmp_addr_0x0081c462                          // 0x0081c54a    e913ffffff
_jmp_addr_0x0081c54f:    push               0x0                                           // 0x0081c54f    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081c551    e8ba390100
_jmp_addr_0x0081c556:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0081c556    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0081c55b    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081c55d    8a4e05
                         not                cl                                            // 0x0081c560    f6d1
                         add                esp, 0x04                                     // 0x0081c562    83c404
                         and                ecx, 0x01                                     // 0x0081c565    83e101
                         shl                ecx, 1                                        // 0x0081c568    d1e1
                         or                 ecx, 1                                        // 0x0081c56a    83c901
                         mov.s              esi, ecx                                      // 0x0081c56d    8bf1
                         cmp.s              eax, esi                                      // 0x0081c56f    3bc6
                         {disp8} je         _jmp_addr_0x0081c595                          // 0x0081c571    7422
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081c573    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081c578    8b10
                         push               esi                                           // 0x0081c57a    56
                         push               0x16                                          // 0x0081c57b    6a16
                         push               eax                                           // 0x0081c57d    50
                         call               dword ptr [edx + 0x50]                        // 0x0081c57e    ff5250
                         test               eax, eax                                      // 0x0081c581    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0081c583    c70548a2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0081c595                          // 0x0081c58d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504248], esi        // 0x0081c58f    893548a2ec00
_jmp_addr_0x0081c595:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c595    a1a49eea00
_jmp_addr_0x0081c59a:    {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081c59a    8b15a89eea00
                         push               eax                                           // 0x0081c5a0    50
                         push               0x00ea5de0                                    // 0x0081c5a1    68e05dea00
                         and                edx, 0x0000ffff                               // 0x0081c5a6    81e2ffff0000
                         mov                ecx, 0x00e437e0                               // 0x0081c5ac    b9e037e400
                         call               ?DrawTriangle@LH3DRender@@SAXPAUVertex3D@@KPAGK@Z                         // 0x0081c5b1    e85a320100
_jmp_addr_0x0081c5b6:    pop                edi                                           // 0x0081c5b6    5f
                         pop                esi                                           // 0x0081c5b7    5e
                         pop                ebp                                           // 0x0081c5b8    5d
                         pop                ebx                                           // 0x0081c5b9    5b
                         pop                ecx                                           // 0x0081c5ba    59
                         ret                0x0018                                        // 0x0081c5bb    c21800
                         nop                                                              // 0x0081c5be    90
                         nop                                                              // 0x0081c5bf    90
?Draw3DScreenTriangle@LH3DTech@@SAXJPAULHPoint@@PAULH3DColor@@PAMJPAJPAULH3DMaterial@@H@Z:
                                                                                   push               ebx                                           // 0x0081c5c0    53
                         push               ebp                                           // 0x0081c5c1    55
                         mov.s              ebx, ecx                                      // 0x0081c5c2    8bd9
                         and                ebx, 0x0000ffff                               // 0x0081c5c4    81e3ffff0000
                         push               esi                                           // 0x0081c5ca    56
                         push               edi                                           // 0x0081c5cb    57
                         {disp8} jle        _jmp_addr_0x0081c62d                          // 0x0081c5cc    7e5f
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0081c5ce    8b742418
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0081c5d2    8b7c2414
                         mov                eax, 0x00e437ec                               // 0x0081c5d6    b8ec37e400
_jmp_addr_0x0081c5db:    mov                ebp, dword ptr [edx]                          // 0x0081c5db    8b2a
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c5dd    d90590a38a00
                         {disp8} mov        dword ptr [eax + -0x0c], ebp                  // 0x0081c5e3    8968f4
                         {disp8} mov        ebp, dword ptr [edx + 0x04]                   // 0x0081c5e6    8b6a04
                         {disp8} mov        dword ptr [eax + -0x08], ebp                  // 0x0081c5e9    8968f8
                         {disp8} fdiv       dword ptr [edx + 0x08]                        // 0x0081c5ec    d87208
                         add                eax, 0x20                                     // 0x0081c5ef    83c020
                         add                edi, 0x04                                     // 0x0081c5f2    83c704
                         add                edx, 0x0c                                     // 0x0081c5f5    83c20c
                         add                esi, 0x08                                     // 0x0081c5f8    83c608
                         dec                ebx                                           // 0x0081c5fb    4b
                         {disp32} fmul      dword ptr [_near_clipping]                    // 0x0081c5fc    d80de039e800
                         {disp8} fst        dword ptr [eax + -0x20]                       // 0x0081c602    d950e0
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c605    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081c60b    d8e1
                         {disp8} fstp       dword ptr [eax + -0x24]                       // 0x0081c60d    d958dc
                         {disp8} mov        ebp, dword ptr [edi + -0x04]                  // 0x0081c610    8b6ffc
                         {disp8} mov        dword ptr [eax + -0x1c], ebp                  // 0x0081c613    8968e4
                         {disp8} mov        dword ptr [eax + -0x18], 0x00000000           // 0x0081c616    c740e800000000
                         fstp               st(0)                                         // 0x0081c61d    ddd8
                         {disp8} mov        ebp, dword ptr [esi + -0x08]                  // 0x0081c61f    8b6ef8
                         {disp8} mov        dword ptr [eax + -0x14], ebp                  // 0x0081c622    8968ec
                         {disp8} mov        ebp, dword ptr [esi + -0x04]                  // 0x0081c625    8b6efc
                         {disp8} mov        dword ptr [eax + -0x10], ebp                  // 0x0081c628    8968f0
                         {disp8} jne        _jmp_addr_0x0081c5db                          // 0x0081c62b    75ae
_jmp_addr_0x0081c62d:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0081c62d    8b5c241c
                         xor.s              eax, eax                                      // 0x0081c631    33c0
                         test               ebx, ebx                                      // 0x0081c633    85db
                         mov                ebp, 0x00000001                               // 0x0081c635    bd01000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081c63a    a3a49eea00
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], cx          // 0x0081c63f    66890da89eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], ebp        // 0x0081c646    892db89eea00
                         {disp32} jle       _jmp_addr_0x0081c76b                          // 0x0081c64c    0f8e19010000
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0081c652    8b4c2420
_jmp_addr_0x0081c656:    mov                dx, word ptr [ecx]                            // 0x0081c656    668b11
                         {disp8} mov        si, word ptr [ecx + 0x04]                     // 0x0081c659    668b7104
                         add                ecx, 0x4                                      // 0x0081c65d    83c104
                         {disp8} mov        di, word ptr [ecx + 0x04]                     // 0x0081c660    668b7904
                         add                ecx, 0x4                                      // 0x0081c664    83c104
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081c667    66891445e05dea00
                         add                ecx, 0x4                                      // 0x0081c66f    83c104
                         inc                eax                                           // 0x0081c672    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], si         // 0x0081c673    66893445e05dea00
                         inc                eax                                           // 0x0081c67b    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081c67c    66893c45e05dea00
                         inc                eax                                           // 0x0081c684    40
                         dec                ebx                                           // 0x0081c685    4b
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081c686    a3a49eea00
                         {disp8} jne        _jmp_addr_0x0081c656                          // 0x0081c68b    75c9
                         test               eax, eax                                      // 0x0081c68d    85c0
                         {disp32} je        _jmp_addr_0x0081c76b                          // 0x0081c68f    0f84d6000000
                         {disp8} mov        esi, dword ptr [esp + 0x24]                   // 0x0081c695    8b742424
                         test               esi, esi                                      // 0x0081c699    85f6
                         {disp8} je         _jmp_addr_0x0081c6fb                          // 0x0081c69b    745e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x272714]        // 0x0081c69d    8b0d1487c300
                         test               ecx, ecx                                      // 0x0081c6a3    85c9
                         {disp8} je         _jmp_addr_0x0081c6fb                          // 0x0081c6a5    7454
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081c6a7    8b3d18a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081c6ad    89354ca6ec00
                         mov                eax, dword ptr [esi]                          // 0x0081c6b3    8b06
                         xor.s              edx, edx                                      // 0x0081c6b5    33d2
                         mov.s              ecx, esi                                      // 0x0081c6b7    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081c6b9    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081c6bc    a114a6ec00
                         test               eax, eax                                      // 0x0081c6c1    85c0
                         {disp8} jne        _jmp_addr_0x0081c6d4                          // 0x0081c6c3    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081c6c5    f6460504
                         {disp8} jne        _jmp_addr_0x0081c6d4                          // 0x0081c6c9    7509
                         push               0x0                                           // 0x0081c6cb    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081c6cd    e87e380100
                         {disp8} jmp        _jmp_addr_0x0081c6db                          // 0x0081c6d2    eb07
_jmp_addr_0x0081c6d4:    push               0x0                                           // 0x0081c6d4    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081c6d6    e835380100
_jmp_addr_0x0081c6db:    xor.s              ecx, ecx                                      // 0x0081c6db    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081c6dd    8a4e05
                         not                cl                                            // 0x0081c6e0    f6d1
                         add                esp, 0x04                                     // 0x0081c6e2    83c404
                         and.s              ecx, ebp                                      // 0x0081c6e5    23cd
                         shl                ecx, 1                                        // 0x0081c6e7    d1e1
                         or.s               ecx, ebp                                      // 0x0081c6e9    0bcd
                         push               ecx                                           // 0x0081c6eb    51
                         push               0x16                                          // 0x0081c6ec    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0081c6ee    e84d62bfff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c6f3    a1a49eea00
                         add                esp, 0x08                                     // 0x0081c6f8    83c408
_jmp_addr_0x0081c6fb:    {disp32} mov       ecx, dword ptr [data_bytes + 0x504200]        // 0x0081c6fb    8b0d00a2ec00
                         test               ecx, ecx                                      // 0x0081c701    85c9
                         {disp8} je         _jmp_addr_0x0081c722                          // 0x0081c703    741d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081c705    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081c70a    8b10
                         push               0x0                                           // 0x0081c70c    6a00
                         push               0x4                                           // 0x0081c70e    6a04
                         push               eax                                           // 0x0081c710    50
                         call               dword ptr [edx + 0x50]                        // 0x0081c711    ff5250
                         neg                eax                                           // 0x0081c714    f7d8
                         sbb.s              eax, eax                                      // 0x0081c716    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504200], eax        // 0x0081c718    a300a2ec00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081c71d    a1a49eea00
_jmp_addr_0x0081c722:    push               eax                                           // 0x0081c722    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081c723    a1a89eea00
                         push               0x00ea5de0                                    // 0x0081c728    68e05dea00
                         and                eax, 0x0000ffff                               // 0x0081c72d    25ffff0000
                         push               eax                                           // 0x0081c732    50
                         push               0x00e437e0                                    // 0x0081c733    68e037e400
                         push               0x000001c4                                    // 0x0081c738    68c4010000
                         push               0x4                                           // 0x0081c73d    6a04
                         call               _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl                          // 0x0081c73f    e86cde0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504200]        // 0x0081c744    a100a2ec00
                         add                esp, 0x18                                     // 0x0081c749    83c418
                         cmp.s              eax, ebp                                      // 0x0081c74c    3bc5
                         {disp8} je         _jmp_addr_0x0081c76b                          // 0x0081c74e    741b
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081c750    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0081c755    8b08
                         push               ebp                                           // 0x0081c757    55
                         push               0x4                                           // 0x0081c758    6a04
                         push               eax                                           // 0x0081c75a    50
                         call               dword ptr [ecx + 0x50]                        // 0x0081c75b    ff5150
                         neg                eax                                           // 0x0081c75e    f7d8
                         sbb.s              eax, eax                                      // 0x0081c760    1bc0
                         and                eax, 0xfffffffe                               // 0x0081c762    83e0fe
                         inc                eax                                           // 0x0081c765    40
                         {disp32} mov       dword ptr [data_bytes + 0x504200], eax        // 0x0081c766    a300a2ec00
_jmp_addr_0x0081c76b:    pop                edi                                           // 0x0081c76b    5f
                         pop                esi                                           // 0x0081c76c    5e
                         pop                ebp                                           // 0x0081c76d    5d
                         pop                ebx                                           // 0x0081c76e    5b
                         ret                0x0018                                        // 0x0081c76f    c21800
                         nop                                                              // 0x0081c772    90
                         nop                                                              // 0x0081c773    90
                         nop                                                              // 0x0081c774    90
                         nop                                                              // 0x0081c775    90
                         nop                                                              // 0x0081c776    90
                         nop                                                              // 0x0081c777    90
                         nop                                                              // 0x0081c778    90
                         nop                                                              // 0x0081c779    90
                         nop                                                              // 0x0081c77a    90
                         nop                                                              // 0x0081c77b    90
                         nop                                                              // 0x0081c77c    90
                         nop                                                              // 0x0081c77d    90
                         nop                                                              // 0x0081c77e    90
                         nop                                                              // 0x0081c77f    90
_jmp_addr_0x0081c780:    sub                esp, 0x08                                     // 0x0081c780    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e40]        // 0x0081c783    a1409eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e10], eax        // 0x0081c788    a3109eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e44]        // 0x0081c78d    a1449eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e14], eax        // 0x0081c792    a3149eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e48]        // 0x0081c797    a1489eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e18], eax        // 0x0081c79c    a3189eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e4c]        // 0x0081c7a1    a14c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e1c], eax        // 0x0081c7a6    a31c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e50]        // 0x0081c7ab    a1509eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e20], eax        // 0x0081c7b0    a3209eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e54]        // 0x0081c7b5    a1549eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e24], eax        // 0x0081c7ba    a3249eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e58]        // 0x0081c7bf    a1589eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e28], eax        // 0x0081c7c4    a3289eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e5c]        // 0x0081c7c9    a15c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e2c], eax        // 0x0081c7ce    a32c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e60]        // 0x0081c7d3    a1609eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e30], eax        // 0x0081c7d8    a3309eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e64]        // 0x0081c7dd    a1649eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e34], eax        // 0x0081c7e2    a3349eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e68]        // 0x0081c7e7    a1689eea00
                         push               ebx                                           // 0x0081c7ec    53
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e38], eax        // 0x0081c7ed    a3389eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e6c]        // 0x0081c7f2    a16c9eea00
                         push               ebp                                           // 0x0081c7f7    55
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e3c], eax        // 0x0081c7f8    a33c9eea00
                         push               esi                                           // 0x0081c7fd    56
                         mov.s              eax, ecx                                      // 0x0081c7fe    8bc1
                         and                eax, 0x0000ffff                               // 0x0081c800    25ffff0000
                         push               edi                                           // 0x0081c805    57
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081c806    894c2410
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e10 // 0x0081c80a    c705a09eea00109eea00
                         mov                edi, 0x00e3b5e0                               // 0x0081c814    bfe0b5e300
                         {disp32} jle       _jmp_addr_0x0081c9ed                          // 0x0081c819    0f8ece010000
                         {disp8} mov        ebp, dword ptr [esp + 0x20]                   // 0x0081c81f    8b6c2420
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0081c823    8b5c241c
                         mov                esi, 0x00e437ec                               // 0x0081c827    beec37e400
                         mov.s              ecx, eax                                      // 0x0081c82c    8bc8
_jmp_addr_0x0081c82e:    {disp32} fld       dword ptr [data_bytes + 0x4e3e40]             // 0x0081c82e    d905409eea00
                         fmul               dword ptr [edx]                               // 0x0081c834    d80a
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e58]             // 0x0081c836    d905589eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081c83c    d84a08
                         faddp              st(1), st                                     // 0x0081c83f    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e4c]             // 0x0081c841    d9054c9eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081c847    d84a04
                         faddp              st(1), st                                     // 0x0081c84a    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e64]             // 0x0081c84c    d805649eea00
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x0081c852    d95ef4
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e5c]             // 0x0081c855    d9055c9eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081c85b    d84a08
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e50]             // 0x0081c85e    d905509eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081c864    d84a04
                         faddp              st(1), st                                     // 0x0081c867    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e44]             // 0x0081c869    d905449eea00
                         fmul               dword ptr [edx]                               // 0x0081c86f    d80a
                         faddp              st(1), st                                     // 0x0081c871    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e68]             // 0x0081c873    d805689eea00
                         {disp8} fstp       dword ptr [esi + -0x08]                       // 0x0081c879    d95ef8
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e60]             // 0x0081c87c    d905609eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081c882    d84a08
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e54]             // 0x0081c885    d905549eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081c88b    d84a04
                         faddp              st(1), st                                     // 0x0081c88e    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e48]             // 0x0081c890    d905489eea00
                         fmul               dword ptr [edx]                               // 0x0081c896    d80a
                         faddp              st(1), st                                     // 0x0081c898    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e6c]             // 0x0081c89a    d8056c9eea00
                         fst                dword ptr [esi]                               // 0x0081c8a0    d916
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081c8a2    d81de039e800
                         fnstsw             ax                                            // 0x0081c8a8    dfe0
                         test               ah, 0x01                                      // 0x0081c8aa    f6c401
                         {disp8} je         _jmp_addr_0x0081c8b7                          // 0x0081c8ad    7408
                         mov                dword ptr [edi], 0x00000020                   // 0x0081c8af    c70720000000
                         {disp8} jmp        _jmp_addr_0x0081c8bd                          // 0x0081c8b5    eb06
_jmp_addr_0x0081c8b7:    mov                dword ptr [edi], 0x00000000                   // 0x0081c8b7    c70700000000
_jmp_addr_0x0081c8bd:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081c8bd    d946f4
                         fcomp              dword ptr [esi]                               // 0x0081c8c0    d81e
                         fnstsw             ax                                            // 0x0081c8c2    dfe0
                         test               ah, 0x41                                      // 0x0081c8c4    f6c441
                         {disp8} jne        _jmp_addr_0x0081c8d0                          // 0x0081c8c7    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c8c9    8b07
                         or                 eax, 0x10                                     // 0x0081c8cb    83c810
                         {disp8} jmp        _jmp_addr_0x0081c8e3                          // 0x0081c8ce    eb13
_jmp_addr_0x0081c8d0:    fld                dword ptr [esi]                               // 0x0081c8d0    d906
                         fchs                                                             // 0x0081c8d2    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x0c]                       // 0x0081c8d4    d85ef4
                         fnstsw             ax                                            // 0x0081c8d7    dfe0
                         test               ah, 0x41                                      // 0x0081c8d9    f6c441
                         {disp8} jne        _jmp_addr_0x0081c8e5                          // 0x0081c8dc    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c8de    8b07
                         or                 eax, 0x8                                      // 0x0081c8e0    83c808
_jmp_addr_0x0081c8e3:    mov                dword ptr [edi], eax                          // 0x0081c8e3    8907
_jmp_addr_0x0081c8e5:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081c8e5    d946f8
                         fcomp              dword ptr [esi]                               // 0x0081c8e8    d81e
                         fnstsw             ax                                            // 0x0081c8ea    dfe0
                         test               ah, 0x41                                      // 0x0081c8ec    f6c441
                         {disp8} jne        _jmp_addr_0x0081c8f8                          // 0x0081c8ef    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c8f1    8b07
                         or                 eax, 0x4                                      // 0x0081c8f3    83c804
                         {disp8} jmp        _jmp_addr_0x0081c90b                          // 0x0081c8f6    eb13
_jmp_addr_0x0081c8f8:    fld                dword ptr [esi]                               // 0x0081c8f8    d906
                         fchs                                                             // 0x0081c8fa    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x08]                       // 0x0081c8fc    d85ef8
                         fnstsw             ax                                            // 0x0081c8ff    dfe0
                         test               ah, 0x41                                      // 0x0081c901    f6c441
                         {disp8} jne        _jmp_addr_0x0081c90d                          // 0x0081c904    7507
                         mov                eax, dword ptr [edi]                          // 0x0081c906    8b07
                         or                 eax, 0x2                                      // 0x0081c908    83c802
_jmp_addr_0x0081c90b:    mov                dword ptr [edi], eax                          // 0x0081c90b    8907
_jmp_addr_0x0081c90d:    cmp                dword ptr [edi], 0x00                         // 0x0081c90d    833f00
                         {disp32} jne       _jmp_addr_0x0081c9b9                          // 0x0081c910    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c916    d90590a38a00
                         fdiv               dword ptr [esi]                               // 0x0081c91c    d836
                         fst                dword ptr [esi]                               // 0x0081c91e    d916
                         {disp8} fmul       dword ptr [esi + -0x0c]                       // 0x0081c920    d84ef4
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081c923    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081c929    d80df039e800
                         {disp8} fst        dword ptr [esi + -0x0c]                       // 0x0081c92f    d956f4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081c932    d81d98a38a00
                         fnstsw             ax                                            // 0x0081c938    dfe0
                         test               ah, 0x01                                      // 0x0081c93a    f6c401
                         {disp8} je         _jmp_addr_0x0081c948                          // 0x0081c93d    7409
                         {disp8} mov        dword ptr [esi + -0x0c], 0x00000000           // 0x0081c93f    c746f400000000
                         {disp8} jmp        _jmp_addr_0x0081c960                          // 0x0081c946    eb18
_jmp_addr_0x0081c948:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081c948    d946f4
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081c94b    d81d00abc200
                         fnstsw             ax                                            // 0x0081c951    dfe0
                         test               ah, 0x41                                      // 0x0081c953    f6c441
                         {disp8} jne        _jmp_addr_0x0081c960                          // 0x0081c956    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081c958    a100abc200
                         {disp8} mov        dword ptr [esi + -0x0c], eax                  // 0x0081c95d    8946f4
_jmp_addr_0x0081c960:    fld                dword ptr [esi]                               // 0x0081c960    d906
                         {disp8} fmul       dword ptr [esi + -0x08]                       // 0x0081c962    d84ef8
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081c965    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081c96b    d82df439e800
                         {disp8} fst        dword ptr [esi + -0x08]                       // 0x0081c971    d956f8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081c974    d81d98a38a00
                         fnstsw             ax                                            // 0x0081c97a    dfe0
                         test               ah, 0x01                                      // 0x0081c97c    f6c401
                         {disp8} je         _jmp_addr_0x0081c98a                          // 0x0081c97f    7409
                         {disp8} mov        dword ptr [esi + -0x08], 0x00000000           // 0x0081c981    c746f800000000
                         {disp8} jmp        _jmp_addr_0x0081c9a2                          // 0x0081c988    eb18
_jmp_addr_0x0081c98a:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081c98a    d946f8
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081c98d    d81d04abc200
                         fnstsw             ax                                            // 0x0081c993    dfe0
                         test               ah, 0x41                                      // 0x0081c995    f6c441
                         {disp8} jne        _jmp_addr_0x0081c9a2                          // 0x0081c998    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081c99a    a104abc200
                         {disp8} mov        dword ptr [esi + -0x08], eax                  // 0x0081c99f    8946f8
_jmp_addr_0x0081c9a2:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0081c9a2    d905e039e800
                         fmul               dword ptr [esi]                               // 0x0081c9a8    d80e
                         fst                dword ptr [esi]                               // 0x0081c9aa    d916
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081c9ac    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081c9b2    d8e1
                         {disp8} fstp       dword ptr [esi + -0x04]                       // 0x0081c9b4    d95efc
                         fstp               st(0)                                         // 0x0081c9b7    ddd8
_jmp_addr_0x0081c9b9:    mov                eax, dword ptr [ebx]                          // 0x0081c9b9    8b03
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0081c9bb    894604
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0081c9be    8b4304
                         add                ebx, 0x04                                     // 0x0081c9c1    83c304
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0081c9c4    894608
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0081c9c7    8b4500
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x0081c9ca    89460c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0081c9cd    8b4504
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0081c9d0    894610
                         add                edi, 0x04                                     // 0x0081c9d3    83c704
                         add                esi, 0x20                                     // 0x0081c9d6    83c620
                         add                ebx, 0x04                                     // 0x0081c9d9    83c304
                         add                edx, 0x0c                                     // 0x0081c9dc    83c20c
                         add                ebp, 0x08                                     // 0x0081c9df    83c508
                         dec                ecx                                           // 0x0081c9e2    49
                         {disp32} jne       _jmp_addr_0x0081c82e                          // 0x0081c9e3    0f8545feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0081c9e9    8b4c2410
_jmp_addr_0x0081c9ed:    {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0081c9ed    8b44242c
                         test               eax, eax                                      // 0x0081c9f1    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], 0x00000000 // 0x0081c9f3    c705a49eea0000000000
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], cx          // 0x0081c9fd    66890da89eea00
                         {disp32} je        _jmp_addr_0x0081cad0                          // 0x0081ca04    0f84c6000000
                         xor.s              ecx, ecx                                      // 0x0081ca0a    33c9
                         {disp8} mov        cl, byte ptr [eax + 0x05]                     // 0x0081ca0c    8a4805
                         and                ecx, 0x01                                     // 0x0081ca0f    83e101
                         {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], ecx        // 0x0081ca12    890db89eea00
                         test               byte ptr [eax + 0x05], 0x01                   // 0x0081ca18    f6400501
                         {disp32} je        _jmp_addr_0x0081cad0                          // 0x0081ca1c    0f84ae000000
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0081ca22    8b442424
                         test               eax, eax                                      // 0x0081ca26    85c0
                         {disp32} jle       _jmp_addr_0x0081ccb7                          // 0x0081ca28    0f8e89020000
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0081ca2e    8b742428
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0081ca32    89442424
_jmp_addr_0x0081ca36:    mov                cx, word ptr [esi]                            // 0x0081ca36    668b0e
                         {disp8} mov        dx, word ptr [esi + 0x04]                     // 0x0081ca39    668b5604
                         add                esi, 0x04                                     // 0x0081ca3d    83c604
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081ca40    668b7e04
                         add                esi, 0x04                                     // 0x0081ca44    83c604
                         add                esi, 0x04                                     // 0x0081ca47    83c604
                         mov.s              ebp, ecx                                      // 0x0081ca4a    8be9
                         and                ebp, 0x0000ffff                               // 0x0081ca4c    81e5ffff0000
                         {disp32} mov       ebp, dword ptr [ebp * 0x4 + 0x00e3b5e0]       // 0x0081ca52    8b2cade0b5e300
                         mov.s              eax, edi                                      // 0x0081ca59    8bc7
                         and                eax, 0x0000ffff                               // 0x0081ca5b    25ffff0000
                         {disp32} mov       ebx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081ca60    8b1c85e0b5e300
                         mov.s              eax, edx                                      // 0x0081ca67    8bc2
                         and                eax, 0x0000ffff                               // 0x0081ca69    25ffff0000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081ca6e    8b0485e0b5e300
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0081ca75    896c2428
                         mov.s              ebp, eax                                      // 0x0081ca79    8be8
                         or.s               ebp, ebx                                      // 0x0081ca7b    0beb
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0081ca7d    895c2420
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                   // 0x0081ca81    8b5c2428
                         or.s               ebp, ebx                                      // 0x0081ca85    0beb
                         {disp8} je         _jmp_addr_0x0081caa9                          // 0x0081ca87    7420
                         and                eax, dword ptr [esp + 0x20]                   // 0x0081ca89    23442420
                         test               ebx, eax                                      // 0x0081ca8d    85c3
                         {disp8} jne        _jmp_addr_0x0081ca99                          // 0x0081ca8f    7508
                         push               0x20                                          // 0x0081ca91    6a20
                         push               edi                                           // 0x0081ca93    57
                         call               _jmp_addr_0x0081a760                          // 0x0081ca94    e8c7dcffff
_jmp_addr_0x0081ca99:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081ca99    a1a49eea00
_jmp_addr_0x0081ca9e:    dec                dword ptr [esp + 0x24]                        // 0x0081ca9e    ff4c2424
                         {disp8} jne        _jmp_addr_0x0081ca36                          // 0x0081caa2    7592
                         {disp32} jmp       _jmp_addr_0x0081cb6d                          // 0x0081caa4    e9c4000000
_jmp_addr_0x0081caa9:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081caa9    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081caae    66890c45e05dea00
                         inc                eax                                           // 0x0081cab6    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081cab7    66891445e05dea00
                         inc                eax                                           // 0x0081cabf    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081cac0    66893c45e05dea00
                         inc                eax                                           // 0x0081cac8    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081cac9    a3a49eea00
                         {disp8} jmp        _jmp_addr_0x0081ca9e                          // 0x0081cace    ebce
_jmp_addr_0x0081cad0:    {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0081cad0    8b442424
                         test               eax, eax                                      // 0x0081cad4    85c0
                         {disp32} jle       _jmp_addr_0x0081ccb7                          // 0x0081cad6    0f8edb010000
                         {disp8} mov        esi, dword ptr [esp + 0x28]                   // 0x0081cadc    8b742428
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0081cae0    8944241c
_jmp_addr_0x0081cae4:    mov                bx, word ptr [esi]                            // 0x0081cae4    668b1e
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081cae7    668b7e04
                         add                esi, 0x04                                     // 0x0081caeb    83c604
                         {disp8} mov        ax, word ptr [esi + 0x04]                     // 0x0081caee    668b4604
                         add                esi, 0x04                                     // 0x0081caf2    83c604
                         add                esi, 0x04                                     // 0x0081caf5    83c604
                         {disp8} mov        dword ptr [esp + 0x24], ebx                   // 0x0081caf8    895c2424
                         and                ebx, 0x0000ffff                               // 0x0081cafc    81e3ffff0000
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x0081cb02    897c2428
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0081cb06    89442420
                         and                eax, 0x0000ffff                               // 0x0081cb0a    25ffff0000
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081cb0f    8b0c85e0b5e300
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081cb16    894c2410
                         {disp32} mov       ecx, dword ptr [ebx * 0x4 + 0x00e3b5e0]       // 0x0081cb1a    8b0c9de0b5e300
                         and                edi, 0x0000ffff                               // 0x0081cb21    81e7ffff0000
                         {disp32} mov       edx, dword ptr [edi * 0x4 + 0x00e3b5e0]       // 0x0081cb27    8b14bde0b5e300
                         mov.s              ebp, ecx                                      // 0x0081cb2e    8be9
                         or.s               ebp, edx                                      // 0x0081cb30    0bea
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0081cb32    89542414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0081cb36    8b542410
                         or.s               ebp, edx                                      // 0x0081cb3a    0bea
                         {disp32} je        _jmp_addr_0x0081cbc7                          // 0x0081cb3c    0f8485000000
                         and                ecx, dword ptr [esp + 0x14]                   // 0x0081cb42    234c2414
                         test               edx, ecx                                      // 0x0081cb46    85ca
                         {disp8} jne        _jmp_addr_0x0081cb5e                          // 0x0081cb48    7514
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0081cb4a    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0081cb4e    8b4c2424
                         push               0x20                                          // 0x0081cb52    6a20
                         push               edx                                           // 0x0081cb54    52
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0081cb55    8b542430
                         call               _jmp_addr_0x0081a760                          // 0x0081cb59    e802dcffff
_jmp_addr_0x0081cb5e:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081cb5e    a1a49eea00
_jmp_addr_0x0081cb63:    dec                dword ptr [esp + 0x1c]                        // 0x0081cb63    ff4c241c
                         {disp32} jne       _jmp_addr_0x0081cae4                          // 0x0081cb67    0f8577ffffff
_jmp_addr_0x0081cb6d:    test               eax, eax                                      // 0x0081cb6d    85c0
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0081cb6f    8b74242c
                         {disp32} je        _jmp_addr_0x0081ccb7                          // 0x0081cb73    0f843e010000
                         test               esi, esi                                      // 0x0081cb79    85f6
                         {disp32} je        _jmp_addr_0x0081cc9b                          // 0x0081cb7b    0f841a010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x272714]        // 0x0081cb81    8b0d1487c300
                         test               ecx, ecx                                      // 0x0081cb87    85c9
                         {disp32} je        _jmp_addr_0x0081cc9b                          // 0x0081cb89    0f840c010000
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081cb8f    8b3d18a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081cb95    89354ca6ec00
                         mov                eax, dword ptr [esi]                          // 0x0081cb9b    8b06
                         xor.s              edx, edx                                      // 0x0081cb9d    33d2
                         mov.s              ecx, esi                                      // 0x0081cb9f    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081cba1    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x0081cba4    a114a6ec00
                         test               eax, eax                                      // 0x0081cba9    85c0
                         {disp32} jne       _jmp_addr_0x0081cc50                          // 0x0081cbab    0f859f000000
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081cbb1    f6460504
                         {disp32} jne       _jmp_addr_0x0081cc50                          // 0x0081cbb5    0f8595000000
                         push               0x0                                           // 0x0081cbbb    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081cbbd    e88e330100
                         {disp32} jmp       _jmp_addr_0x0081cc57                          // 0x0081cbc2    e990000000
_jmp_addr_0x0081cbc7:    shl                eax, 5                                        // 0x0081cbc7    c1e005
                         {disp32} fld       dword ptr [eax + 0x00e437e4]                  // 0x0081cbca    d980e437e400
                         {disp32} lea       eax, dword ptr [eax + 0x00e437e0]             // 0x0081cbd0    8d80e037e400
                         shl                ebx, 5                                        // 0x0081cbd6    c1e305
                         {disp32} fsub      dword ptr [ebx + 0x00e437e4]                  // 0x0081cbd9    d8a3e437e400
                         {disp32} lea       ebx, dword ptr [ebx + 0x00e437e0]             // 0x0081cbdf    8d9be037e400
                         shl                edi, 5                                        // 0x0081cbe5    c1e705
                         {disp32} fld       dword ptr [edi + 0x00e437e0]                  // 0x0081cbe8    d987e037e400
                         {disp32} lea       edi, dword ptr [edi + 0x00e437e0]             // 0x0081cbee    8dbfe037e400
                         fsub               dword ptr [ebx]                               // 0x0081cbf4    d823
                         fmulp              st(1), st                                     // 0x0081cbf6    dec9
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x0081cbf8    d94704
                         {disp8} fsub       dword ptr [ebx + 0x04]                        // 0x0081cbfb    d86304
                         fld                dword ptr [eax]                               // 0x0081cbfe    d900
                         fsub               dword ptr [ebx]                               // 0x0081cc00    d823
                         fmulp              st(1), st                                     // 0x0081cc02    dec9
                         fsubp              st(1), st                                     // 0x0081cc04    dee9
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081cc06    d81d98a38a00
                         fnstsw             ax                                            // 0x0081cc0c    dfe0
                         test               ah, 0x41                                      // 0x0081cc0e    f6c441
                         {disp32} jne       _jmp_addr_0x0081cb5e                          // 0x0081cc11    0f8547ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081cc17    a1a49eea00
                         {disp8} mov        cx, word ptr [esp + 0x24]                     // 0x0081cc1c    668b4c2424
                         {disp8} mov        dx, word ptr [esp + 0x28]                     // 0x0081cc21    668b542428
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081cc26    66890c45e05dea00
                         {disp8} mov        cx, word ptr [esp + 0x20]                     // 0x0081cc2e    668b4c2420
                         inc                eax                                           // 0x0081cc33    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081cc34    66891445e05dea00
                         inc                eax                                           // 0x0081cc3c    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081cc3d    66890c45e05dea00
                         inc                eax                                           // 0x0081cc45    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081cc46    a3a49eea00
                         {disp32} jmp       _jmp_addr_0x0081cb63                          // 0x0081cc4b    e913ffffff
_jmp_addr_0x0081cc50:    push               0x0                                           // 0x0081cc50    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081cc52    e8b9320100
_jmp_addr_0x0081cc57:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0081cc57    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0081cc5c    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081cc5e    8a4e05
                         not                cl                                            // 0x0081cc61    f6d1
                         add                esp, 0x04                                     // 0x0081cc63    83c404
                         and                ecx, 0x01                                     // 0x0081cc66    83e101
                         shl                ecx, 1                                        // 0x0081cc69    d1e1
                         or                 ecx, 1                                        // 0x0081cc6b    83c901
                         mov.s              esi, ecx                                      // 0x0081cc6e    8bf1
                         cmp.s              eax, esi                                      // 0x0081cc70    3bc6
                         {disp8} je         _jmp_addr_0x0081cc96                          // 0x0081cc72    7422
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081cc74    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081cc79    8b10
                         push               esi                                           // 0x0081cc7b    56
                         push               0x16                                          // 0x0081cc7c    6a16
                         push               eax                                           // 0x0081cc7e    50
                         call               dword ptr [edx + 0x50]                        // 0x0081cc7f    ff5250
                         test               eax, eax                                      // 0x0081cc82    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0081cc84    c70548a2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0081cc96                          // 0x0081cc8e    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504248], esi        // 0x0081cc90    893548a2ec00
_jmp_addr_0x0081cc96:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081cc96    a1a49eea00
_jmp_addr_0x0081cc9b:    {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081cc9b    8b15a89eea00
                         push               eax                                           // 0x0081cca1    50
                         push               0x00ea5de0                                    // 0x0081cca2    68e05dea00
                         and                edx, 0x0000ffff                               // 0x0081cca7    81e2ffff0000
                         mov                ecx, 0x00e437e0                               // 0x0081ccad    b9e037e400
                         call               ?DrawTriangle@LH3DRender@@SAXPAUVertex3D@@KPAGK@Z                         // 0x0081ccb2    e8592b0100
_jmp_addr_0x0081ccb7:    pop                edi                                           // 0x0081ccb7    5f
                         pop                esi                                           // 0x0081ccb8    5e
                         pop                ebp                                           // 0x0081ccb9    5d
                         pop                ebx                                           // 0x0081ccba    5b
                         add                esp, 0x08                                     // 0x0081ccbb    83c408
                         ret                0x0014                                        // 0x0081ccbe    c21400
                         nop                                                              // 0x0081ccc1    90
                         nop                                                              // 0x0081ccc2    90
                         nop                                                              // 0x0081ccc3    90
                         nop                                                              // 0x0081ccc4    90
                         nop                                                              // 0x0081ccc5    90
                         nop                                                              // 0x0081ccc6    90
                         nop                                                              // 0x0081ccc7    90
                         nop                                                              // 0x0081ccc8    90
                         nop                                                              // 0x0081ccc9    90
                         nop                                                              // 0x0081ccca    90
                         nop                                                              // 0x0081cccb    90
                         nop                                                              // 0x0081cccc    90
                         nop                                                              // 0x0081cccd    90
                         nop                                                              // 0x0081ccce    90
                         nop                                                              // 0x0081cccf    90
                         sub                esp, 0x08                                     // 0x0081ccd0    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e40]        // 0x0081ccd3    a1409eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e10], eax        // 0x0081ccd8    a3109eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e44]        // 0x0081ccdd    a1449eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e14], eax        // 0x0081cce2    a3149eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e48]        // 0x0081cce7    a1489eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e18], eax        // 0x0081ccec    a3189eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e4c]        // 0x0081ccf1    a14c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e1c], eax        // 0x0081ccf6    a31c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e50]        // 0x0081ccfb    a1509eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e20], eax        // 0x0081cd00    a3209eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e54]        // 0x0081cd05    a1549eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e24], eax        // 0x0081cd0a    a3249eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e58]        // 0x0081cd0f    a1589eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e28], eax        // 0x0081cd14    a3289eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e5c]        // 0x0081cd19    a15c9eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e2c], eax        // 0x0081cd1e    a32c9eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e60]        // 0x0081cd23    a1609eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e30], eax        // 0x0081cd28    a3309eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e64]        // 0x0081cd2d    a1649eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e34], eax        // 0x0081cd32    a3349eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e68]        // 0x0081cd37    a1689eea00
                         push               ebx                                           // 0x0081cd3c    53
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e38], eax        // 0x0081cd3d    a3389eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e6c]        // 0x0081cd42    a16c9eea00
                         push               ebp                                           // 0x0081cd47    55
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e3c], eax        // 0x0081cd48    a33c9eea00
                         push               esi                                           // 0x0081cd4d    56
                         mov.s              eax, ecx                                      // 0x0081cd4e    8bc1
                         and                eax, 0x0000ffff                               // 0x0081cd50    25ffff0000
                         push               edi                                           // 0x0081cd55    57
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0081cd56    894c2414
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e10 // 0x0081cd5a    c705a09eea00109eea00
                         mov                edi, 0x00e3b5e0                               // 0x0081cd64    bfe0b5e300
                         {disp32} jle       _jmp_addr_0x0081cf57                          // 0x0081cd69    0f8ee8010000
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                   // 0x0081cd6f    8b6c2424
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0081cd73    8b5c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0081cd77    8b4c241c
                         mov                esi, 0x00e437ec                               // 0x0081cd7b    beec37e400
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0081cd80    89442410
_jmp_addr_0x0081cd84:    {disp32} fld       dword ptr [data_bytes + 0x4e3e58]             // 0x0081cd84    d905589eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081cd8a    d84a08
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e4c]             // 0x0081cd8d    d9054c9eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081cd93    d84a04
                         faddp              st(1), st                                     // 0x0081cd96    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e40]             // 0x0081cd98    d905409eea00
                         fmul               dword ptr [edx]                               // 0x0081cd9e    d80a
                         faddp              st(1), st                                     // 0x0081cda0    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e64]             // 0x0081cda2    d805649eea00
                         {disp8} fstp       dword ptr [esi + -0x0c]                       // 0x0081cda8    d95ef4
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e5c]             // 0x0081cdab    d9055c9eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081cdb1    d84a08
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e50]             // 0x0081cdb4    d905509eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081cdba    d84a04
                         faddp              st(1), st                                     // 0x0081cdbd    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e44]             // 0x0081cdbf    d905449eea00
                         fmul               dword ptr [edx]                               // 0x0081cdc5    d80a
                         faddp              st(1), st                                     // 0x0081cdc7    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e68]             // 0x0081cdc9    d805689eea00
                         {disp8} fstp       dword ptr [esi + -0x08]                       // 0x0081cdcf    d95ef8
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e60]             // 0x0081cdd2    d905609eea00
                         {disp8} fmul       dword ptr [edx + 0x08]                        // 0x0081cdd8    d84a08
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e54]             // 0x0081cddb    d905549eea00
                         {disp8} fmul       dword ptr [edx + 0x04]                        // 0x0081cde1    d84a04
                         faddp              st(1), st                                     // 0x0081cde4    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e48]             // 0x0081cde6    d905489eea00
                         fmul               dword ptr [edx]                               // 0x0081cdec    d80a
                         faddp              st(1), st                                     // 0x0081cdee    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e6c]             // 0x0081cdf0    d8056c9eea00
                         fst                dword ptr [esi]                               // 0x0081cdf6    d916
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081cdf8    d81de039e800
                         fnstsw             ax                                            // 0x0081cdfe    dfe0
                         test               ah, 0x01                                      // 0x0081ce00    f6c401
                         {disp8} je         _jmp_addr_0x0081ce0d                          // 0x0081ce03    7408
                         mov                dword ptr [edi], 0x00000020                   // 0x0081ce05    c70720000000
                         {disp8} jmp        _jmp_addr_0x0081ce13                          // 0x0081ce0b    eb06
_jmp_addr_0x0081ce0d:    mov                dword ptr [edi], 0x00000000                   // 0x0081ce0d    c70700000000
_jmp_addr_0x0081ce13:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081ce13    d946f4
                         fcomp              dword ptr [esi]                               // 0x0081ce16    d81e
                         fnstsw             ax                                            // 0x0081ce18    dfe0
                         test               ah, 0x41                                      // 0x0081ce1a    f6c441
                         {disp8} jne        _jmp_addr_0x0081ce26                          // 0x0081ce1d    7507
                         mov                eax, dword ptr [edi]                          // 0x0081ce1f    8b07
                         or                 eax, 0x10                                     // 0x0081ce21    83c810
                         {disp8} jmp        _jmp_addr_0x0081ce39                          // 0x0081ce24    eb13
_jmp_addr_0x0081ce26:    fld                dword ptr [esi]                               // 0x0081ce26    d906
                         fchs                                                             // 0x0081ce28    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x0c]                       // 0x0081ce2a    d85ef4
                         fnstsw             ax                                            // 0x0081ce2d    dfe0
                         test               ah, 0x41                                      // 0x0081ce2f    f6c441
                         {disp8} jne        _jmp_addr_0x0081ce3b                          // 0x0081ce32    7507
                         mov                eax, dword ptr [edi]                          // 0x0081ce34    8b07
                         or                 eax, 0x8                                      // 0x0081ce36    83c808
_jmp_addr_0x0081ce39:    mov                dword ptr [edi], eax                          // 0x0081ce39    8907
_jmp_addr_0x0081ce3b:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081ce3b    d946f8
                         fcomp              dword ptr [esi]                               // 0x0081ce3e    d81e
                         fnstsw             ax                                            // 0x0081ce40    dfe0
                         test               ah, 0x41                                      // 0x0081ce42    f6c441
                         {disp8} jne        _jmp_addr_0x0081ce4e                          // 0x0081ce45    7507
                         mov                eax, dword ptr [edi]                          // 0x0081ce47    8b07
                         or                 eax, 0x4                                      // 0x0081ce49    83c804
                         {disp8} jmp        _jmp_addr_0x0081ce61                          // 0x0081ce4c    eb13
_jmp_addr_0x0081ce4e:    fld                dword ptr [esi]                               // 0x0081ce4e    d906
                         fchs                                                             // 0x0081ce50    d9e0
                         {disp8} fcomp      dword ptr [esi + -0x08]                       // 0x0081ce52    d85ef8
                         fnstsw             ax                                            // 0x0081ce55    dfe0
                         test               ah, 0x41                                      // 0x0081ce57    f6c441
                         {disp8} jne        _jmp_addr_0x0081ce63                          // 0x0081ce5a    7507
                         mov                eax, dword ptr [edi]                          // 0x0081ce5c    8b07
                         or                 eax, 0x2                                      // 0x0081ce5e    83c802
_jmp_addr_0x0081ce61:    mov                dword ptr [edi], eax                          // 0x0081ce61    8907
_jmp_addr_0x0081ce63:    cmp                dword ptr [edi], 0x00                         // 0x0081ce63    833f00
                         {disp32} jne       _jmp_addr_0x0081cf0f                          // 0x0081ce66    0f85a3000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081ce6c    d90590a38a00
                         fdiv               dword ptr [esi]                               // 0x0081ce72    d836
                         fst                dword ptr [esi]                               // 0x0081ce74    d916
                         {disp8} fmul       dword ptr [esi + -0x0c]                       // 0x0081ce76    d84ef4
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081ce79    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081ce7f    d80df039e800
                         {disp8} fst        dword ptr [esi + -0x0c]                       // 0x0081ce85    d956f4
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081ce88    d81d98a38a00
                         fnstsw             ax                                            // 0x0081ce8e    dfe0
                         test               ah, 0x01                                      // 0x0081ce90    f6c401
                         {disp8} je         _jmp_addr_0x0081ce9e                          // 0x0081ce93    7409
                         {disp8} mov        dword ptr [esi + -0x0c], 0x00000000           // 0x0081ce95    c746f400000000
                         {disp8} jmp        _jmp_addr_0x0081ceb6                          // 0x0081ce9c    eb18
_jmp_addr_0x0081ce9e:    {disp8} fld        dword ptr [esi + -0x0c]                       // 0x0081ce9e    d946f4
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081cea1    d81d00abc200
                         fnstsw             ax                                            // 0x0081cea7    dfe0
                         test               ah, 0x41                                      // 0x0081cea9    f6c441
                         {disp8} jne        _jmp_addr_0x0081ceb6                          // 0x0081ceac    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0081ceae    a100abc200
                         {disp8} mov        dword ptr [esi + -0x0c], eax                  // 0x0081ceb3    8946f4
_jmp_addr_0x0081ceb6:    fld                dword ptr [esi]                               // 0x0081ceb6    d906
                         {disp8} fmul       dword ptr [esi + -0x08]                       // 0x0081ceb8    d84ef8
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081cebb    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081cec1    d82df439e800
                         {disp8} fst        dword ptr [esi + -0x08]                       // 0x0081cec7    d956f8
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0081ceca    d81d98a38a00
                         fnstsw             ax                                            // 0x0081ced0    dfe0
                         test               ah, 0x01                                      // 0x0081ced2    f6c401
                         {disp8} je         _jmp_addr_0x0081cee0                          // 0x0081ced5    7409
                         {disp8} mov        dword ptr [esi + -0x08], 0x00000000           // 0x0081ced7    c746f800000000
                         {disp8} jmp        _jmp_addr_0x0081cef8                          // 0x0081cede    eb18
_jmp_addr_0x0081cee0:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0081cee0    d946f8
                         {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081cee3    d81d04abc200
                         fnstsw             ax                                            // 0x0081cee9    dfe0
                         test               ah, 0x41                                      // 0x0081ceeb    f6c441
                         {disp8} jne        _jmp_addr_0x0081cef8                          // 0x0081ceee    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081cef0    a104abc200
                         {disp8} mov        dword ptr [esi + -0x08], eax                  // 0x0081cef5    8946f8
_jmp_addr_0x0081cef8:    {disp32} fld       dword ptr [_near_clipping]                    // 0x0081cef8    d905e039e800
                         fmul               dword ptr [esi]                               // 0x0081cefe    d80e
                         fst                dword ptr [esi]                               // 0x0081cf00    d916
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081cf02    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081cf08    d8e1
                         {disp8} fstp       dword ptr [esi + -0x04]                       // 0x0081cf0a    d95efc
                         fstp               st(0)                                         // 0x0081cf0d    ddd8
_jmp_addr_0x0081cf0f:    mov                eax, dword ptr [ecx]                          // 0x0081cf0f    8b01
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0081cf11    894604
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0081cf14    c7460800000000
                         mov                eax, dword ptr [ebx]                          // 0x0081cf1b    8b03
                         {disp8} mov        dword ptr [esi + 0x0c], eax                   // 0x0081cf1d    89460c
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0081cf20    8b4304
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0081cf23    894610
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x0081cf26    8b4500
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0081cf29    894614
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0081cf2c    8b4504
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0081cf2f    894618
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0081cf32    8b442410
                         add                edi, 0x04                                     // 0x0081cf36    83c704
                         add                esi, 0x28                                     // 0x0081cf39    83c628
                         add                ecx, 0x4                                      // 0x0081cf3c    83c104
                         add                edx, 0x0c                                     // 0x0081cf3f    83c20c
                         add                ebx, 0x08                                     // 0x0081cf42    83c308
                         add                ebp, 0x08                                     // 0x0081cf45    83c508
                         dec                eax                                           // 0x0081cf48    48
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0081cf49    89442410
                         {disp32} jne       _jmp_addr_0x0081cd84                          // 0x0081cf4d    0f8531feffff
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0081cf53    8b4c2414
_jmp_addr_0x0081cf57:    {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0081cf57    8b442428
                         {disp32} mov       word ptr [data_bytes + 0x4e3ea8], cx          // 0x0081cf5b    66890da89eea00
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x0081cf62    8b4c2430
                         xor.s              edx, edx                                      // 0x0081cf66    33d2
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], 0x00000000 // 0x0081cf68    c705a49eea0000000000
                         {disp8} mov        dl, byte ptr [ecx + 0x05]                     // 0x0081cf72    8a5105
                         and                edx, 0x01                                     // 0x0081cf75    83e201
                         test               eax, eax                                      // 0x0081cf78    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x4e3eb8], edx        // 0x0081cf7a    8915b89eea00
                         {disp32} jle       _jmp_addr_0x0081d176                          // 0x0081cf80    0f8ef0010000
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0081cf86    8b74242c
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0081cf8a    89442424
_jmp_addr_0x0081cf8e:    mov                cx, word ptr [esi]                            // 0x0081cf8e    668b0e
                         {disp8} mov        dx, word ptr [esi + 0x04]                     // 0x0081cf91    668b5604
                         add                esi, 0x04                                     // 0x0081cf95    83c604
                         {disp8} mov        di, word ptr [esi + 0x04]                     // 0x0081cf98    668b7e04
                         add                esi, 0x04                                     // 0x0081cf9c    83c604
                         add                esi, 0x04                                     // 0x0081cf9f    83c604
                         mov.s              eax, edi                                      // 0x0081cfa2    8bc7
                         and                eax, 0x0000ffff                               // 0x0081cfa4    25ffff0000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081cfa9    8b0485e0b5e300
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0081cfb0    89442420
                         mov.s              eax, edx                                      // 0x0081cfb4    8bc2
                         and                eax, 0x0000ffff                               // 0x0081cfb6    25ffff0000
                         {disp32} mov       ebx, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081cfbb    8b1c85e0b5e300
                         mov.s              eax, ecx                                      // 0x0081cfc2    8bc1
                         and                eax, 0x0000ffff                               // 0x0081cfc4    25ffff0000
                         {disp32} mov       eax, dword ptr [eax * 0x4 + 0x00e3b5e0]       // 0x0081cfc9    8b0485e0b5e300
                         mov.s              ebp, eax                                      // 0x0081cfd0    8be8
                         or.s               ebp, ebx                                      // 0x0081cfd2    0beb
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0081cfd4    895c241c
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                   // 0x0081cfd8    8b5c2420
                         or.s               ebp, ebx                                      // 0x0081cfdc    0beb
                         {disp8} je         _jmp_addr_0x0081cff2                          // 0x0081cfde    7412
                         and                eax, dword ptr [esp + 0x1c]                   // 0x0081cfe0    2344241c
                         test               ebx, eax                                      // 0x0081cfe4    85c3
                         {disp8} jne        _jmp_addr_0x0081d017                          // 0x0081cfe6    752f
                         push               0x20                                          // 0x0081cfe8    6a20
                         push               edi                                           // 0x0081cfea    57
                         call               _jmp_addr_0x0081aab0                          // 0x0081cfeb    e8c0daffff
                         {disp8} jmp        _jmp_addr_0x0081d017                          // 0x0081cff0    eb25
_jmp_addr_0x0081cff2:    {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081cff2    a1a49eea00
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x0081cff7    66890c45e05dea00
                         inc                eax                                           // 0x0081cfff    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x0081d000    66891445e05dea00
                         inc                eax                                           // 0x0081d008    40
                         {disp32} mov       word ptr [eax * 0x2 + 0x00ea5de0], di         // 0x0081d009    66893c45e05dea00
                         inc                eax                                           // 0x0081d011    40
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea4], eax        // 0x0081d012    a3a49eea00
_jmp_addr_0x0081d017:    dec                dword ptr [esp + 0x24]                        // 0x0081d017    ff4c2424
                         {disp32} jne       _jmp_addr_0x0081cf8e                          // 0x0081d01b    0f856dffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081d021    a1a49eea00
                         xor.s              ebx, ebx                                      // 0x0081d026    33db
                         cmp.s              eax, ebx                                      // 0x0081d028    3bc3
                         {disp32} je        _jmp_addr_0x0081d176                          // 0x0081d02a    0f8446010000
                         cmp                dword ptr [data_bytes + 0x272714], ebx        // 0x0081d030    391d1487c300
                         {disp8} je         _jmp_addr_0x0081d0b0                          // 0x0081d036    7478
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x0081d038    8b742430
                         cmp.s              esi, ebx                                      // 0x0081d03c    3bf3
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x0081d03e    89354ca6ec00
                         {disp8} je         _jmp_addr_0x0081d0b0                          // 0x0081d044    746a
                         mov                eax, dword ptr [esi]                          // 0x0081d046    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081d048    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x0081d04e    33d2
                         mov.s              ecx, esi                                      // 0x0081d050    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081d052    ff14c7
                         cmp                dword ptr [data_bytes + 0x504614], ebx        // 0x0081d055    391d14a6ec00
                         {disp8} jne        _jmp_addr_0x0081d06b                          // 0x0081d05b    750e
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081d05d    f6460504
                         {disp8} jne        _jmp_addr_0x0081d06b                          // 0x0081d061    7508
                         push               ebx                                           // 0x0081d063    53
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081d064    e8e72e0100
                         {disp8} jmp        _jmp_addr_0x0081d071                          // 0x0081d069    eb06
_jmp_addr_0x0081d06b:    push               ebx                                           // 0x0081d06b    53
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081d06c    e89f2e0100
_jmp_addr_0x0081d071:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0081d071    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x0081d076    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x0081d078    8a4e05
                         not                cl                                            // 0x0081d07b    f6d1
                         add                esp, 0x04                                     // 0x0081d07d    83c404
                         and                ecx, 0x01                                     // 0x0081d080    83e101
                         shl                ecx, 1                                        // 0x0081d083    d1e1
                         or                 ecx, 1                                        // 0x0081d085    83c901
                         mov.s              esi, ecx                                      // 0x0081d088    8bf1
                         cmp.s              eax, esi                                      // 0x0081d08a    3bc6
                         {disp8} je         _jmp_addr_0x0081d0b0                          // 0x0081d08c    7422
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081d08e    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081d093    8b10
                         push               esi                                           // 0x0081d095    56
                         push               0x16                                          // 0x0081d096    6a16
                         push               eax                                           // 0x0081d098    50
                         call               dword ptr [edx + 0x50]                        // 0x0081d099    ff5250
                         test               eax, eax                                      // 0x0081d09c    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0081d09e    c70548a2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0081d0b0                          // 0x0081d0a8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504248], esi        // 0x0081d0aa    893548a2ec00
_jmp_addr_0x0081d0b0:    {disp8} mov        esi, dword ptr [esp + 0x34]                   // 0x0081d0b0    8b742434
                         cmp.s              esi, ebx                                      // 0x0081d0b4    3bf3
                         {disp8} jne        _jmp_addr_0x0081d0d9                          // 0x0081d0b6    7521
                         cmp                dword ptr [data_bytes + 0x5021d4], ebx        // 0x0081d0b8    391dd481ec00
                         {disp8} je         _jmp_addr_0x0081d135                          // 0x0081d0be    7475
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081d0c0    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0081d0c5    8b08
                         push               ebx                                           // 0x0081d0c7    53
                         push               0x1                                           // 0x0081d0c8    6a01
                         push               eax                                           // 0x0081d0ca    50
                         call               dword ptr [ecx + 0x8c]                        // 0x0081d0cb    ff918c000000
                         {disp32} mov       dword ptr [data_bytes + 0x5021d4], ebx        // 0x0081d0d1    891dd481ec00
                         {disp8} jmp        _jmp_addr_0x0081d135                          // 0x0081d0d7    eb5c
_jmp_addr_0x0081d0d9:    cmp                dword ptr [data_bytes + 0x272714], ebx        // 0x0081d0d9    391d1487c300
                         {disp8} je         _jmp_addr_0x0081d135                          // 0x0081d0df    7454
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5021cc]        // 0x0081d0e1    a1cc81ec00
                         cmp.s              eax, ebx                                      // 0x0081d0e6    3bc3
                         {disp32} mov       dword ptr [data_bytes + 0x504650], esi        // 0x0081d0e8    893550a6ec00
                         {disp8} je         _jmp_addr_0x0081d0f6                          // 0x0081d0ee    7406
                         {disp32} mov       dword ptr [data_bytes + 0x5021c8], esi        // 0x0081d0f0    8935c881ec00
_jmp_addr_0x0081d0f6:    cmp                byte ptr [data_bytes + 0x5021c4], bl          // 0x0081d0f6    381dc481ec00
                         {disp8} jne        _jmp_addr_0x0081d135                          // 0x0081d0fc    7537
                         cmp.s              eax, ebx                                      // 0x0081d0fe    3bc3
                         {disp8} je         _jmp_addr_0x0081d135                          // 0x0081d100    7433
                         mov                eax, dword ptr [esi]                          // 0x0081d102    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x0081d104    8b3d18a6ec00
                         mov                edx, 0x00000001                               // 0x0081d10a    ba01000000
                         mov.s              ecx, esi                                      // 0x0081d10f    8bce
                         call               dword ptr [edi + eax*8]                       // 0x0081d111    ff14c7
                         cmp                dword ptr [data_bytes + 0x504614], ebx        // 0x0081d114    391d14a6ec00
                         {disp8} jne        _jmp_addr_0x0081d12b                          // 0x0081d11a    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x0081d11c    f6460504
                         {disp8} jne        _jmp_addr_0x0081d12b                          // 0x0081d120    7509
                         push               0x1                                           // 0x0081d122    6a01
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x0081d124    e8272e0100
                         {disp8} jmp        _jmp_addr_0x0081d132                          // 0x0081d129    eb07
_jmp_addr_0x0081d12b:    push               0x1                                           // 0x0081d12b    6a01
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0081d12d    e8de2d0100
_jmp_addr_0x0081d132:    add                esp, 0x04                                     // 0x0081d132    83c404
_jmp_addr_0x0081d135:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3ea4]        // 0x0081d135    8b0da49eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d13b    8b15a89eea00
                         push               ecx                                           // 0x0081d141    51
                         push               0x00ea5de0                                    // 0x0081d142    68e05dea00
                         and                edx, 0x0000ffff                               // 0x0081d147    81e2ffff0000
                         mov                ecx, 0x00e437e0                               // 0x0081d14d    b9e037e400
                         call               _jmp_addr_0x0082f920                          // 0x0081d152    e8c9270100
                         cmp                dword ptr [data_bytes + 0x5021d4], ebx        // 0x0081d157    391dd481ec00
                         {disp8} je         _jmp_addr_0x0081d176                          // 0x0081d15d    7417
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0081d15f    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0081d164    8b10
                         push               ebx                                           // 0x0081d166    53
                         push               0x1                                           // 0x0081d167    6a01
                         push               eax                                           // 0x0081d169    50
                         call               dword ptr [edx + 0x8c]                        // 0x0081d16a    ff928c000000
                         {disp32} mov       dword ptr [data_bytes + 0x5021d4], ebx        // 0x0081d170    891dd481ec00
_jmp_addr_0x0081d176:    pop                edi                                           // 0x0081d176    5f
                         pop                esi                                           // 0x0081d177    5e
                         pop                ebp                                           // 0x0081d178    5d
                         pop                ebx                                           // 0x0081d179    5b
                         add                esp, 0x08                                     // 0x0081d17a    83c408
                         ret                0x001c                                        // 0x0081d17d    c21c00
_Random__Fff@8:          push               ecx                                           // 0x0081d180    51
                         call               _rand                                         // 0x0081d181    e8b1b6faff
                         {disp8} mov        dword ptr [esp + 0x00], eax                   // 0x0081d186    89442400
                         {disp8} fild       dword ptr [esp + 0x00]                        // 0x0081d18a    db442400
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa700]             // 0x0081d18e    d80d00379a00
                         {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0081d194    d944240c
                         {disp8} fsub       dword ptr [esp + 0x08]                        // 0x0081d198    d8642408
                         fmulp              st(1), st                                     // 0x0081d19c    dec9
                         {disp8} fadd       dword ptr [esp + 0x08]                        // 0x0081d19e    d8442408
                         pop                ecx                                           // 0x0081d1a2    59
                         ret                0x0008                                        // 0x0081d1a3    c20800
                         nop                                                              // 0x0081d1a6    90
                         nop                                                              // 0x0081d1a7    90
                         nop                                                              // 0x0081d1a8    90
                         nop                                                              // 0x0081d1a9    90
                         nop                                                              // 0x0081d1aa    90
                         nop                                                              // 0x0081d1ab    90
                         nop                                                              // 0x0081d1ac    90
                         nop                                                              // 0x0081d1ad    90
                         nop                                                              // 0x0081d1ae    90
                         nop                                                              // 0x0081d1af    90
_jmp_addr_0x0081d1b0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0081d1b0    8b442404
                         {disp32} mov       cl, byte ptr [eax * 0x4 + 0x00e3b5e0]         // 0x0081d1b4    8a0c85e0b5e300
                         mov                dl, 0x3f                                      // 0x0081d1bb    b23f
                         sub                esp, 0x40                                     // 0x0081d1bd    83ec40
                         test               dl, cl                                        // 0x0081d1c0    84ca
                         {disp8} jne        _jmp_addr_0x0081d228                          // 0x0081d1c2    7564
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0081d1c4    d905e039e800
                         shl                eax, 5                                        // 0x0081d1ca    c1e005
                         add                eax, 0x00e437e0                               // 0x0081d1cd    05e037e400
                         {disp8} fdiv       dword ptr [eax + 0x0c]                        // 0x0081d1d2    d8700c
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0081d1d5    8b4818
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0081d1d8    894c2418
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x0081d1dc    8b481c
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0081d1df    894c241c
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0081d1e3    8b4810
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081d1e6    894c2410
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x0081d1ea    8d4c2400
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x0081d1ee    d95c240c
                         fld                dword ptr [eax]                               // 0x0081d1f2    d900
                         {disp32} fsub      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081d1f4    d825f039e800
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f8]             // 0x0081d1fa    d80df839e800
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0081d200    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0081d204    d95c2400
                         {disp32} fld       dword ptr [data_bytes + 0x4bd9f4]             // 0x0081d208    d905f439e800
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0081d20e    d86004
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0081d211    8b4014
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0081d214    89442414
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9fc]             // 0x0081d218    d80dfc39e800
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0081d21e    d84c240c
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0081d222    d95c2404
                         {disp8} jmp        _jmp_addr_0x0081d232                          // 0x0081d226    eb0a
_jmp_addr_0x0081d228:    shl                eax, 5                                        // 0x0081d228    c1e005
                         add                eax, 0x00e437e0                               // 0x0081d22b    05e037e400
                         mov.s              ecx, eax                                      // 0x0081d230    8bc8
_jmp_addr_0x0081d232:    {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x0081d232    8b442448
                         test               byte ptr [eax * 0x4 + 0x00e3b5e0], dl         // 0x0081d236    841485e0b5e300
                         {disp8} jne        _jmp_addr_0x0081d2ac                          // 0x0081d23d    756d
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0081d23f    d905e039e800
                         shl                eax, 5                                        // 0x0081d245    c1e005
                         add                eax, 0x00e437e0                               // 0x0081d248    05e037e400
                         {disp8} fdiv       dword ptr [eax + 0x0c]                        // 0x0081d24d    d8700c
                         {disp8} mov        edx, dword ptr [eax + 0x18]                   // 0x0081d250    8b5018
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0081d253    89542438
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x0081d257    8b501c
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0081d25a    8954243c
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0081d25e    8b5010
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x0081d261    89542430
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0081d265    d95c242c
                         fld                dword ptr [eax]                               // 0x0081d269    d900
                         {disp32} fsub      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081d26b    d825f039e800
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f8]             // 0x0081d271    d80df839e800
                         {disp8} fmul       dword ptr [esp + 0x2c]                        // 0x0081d277    d84c242c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0081d27b    d95c2420
                         {disp32} fld       dword ptr [data_bytes + 0x4bd9f4]             // 0x0081d27f    d905f439e800
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0081d285    d86004
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0081d288    8b4014
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0081d28b    89442434
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0081d28f    8d442420
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9fc]             // 0x0081d293    d80dfc39e800
                         push               eax                                           // 0x0081d299    50
                         push               ecx                                           // 0x0081d29a    51
                         {disp8} fmul       dword ptr [esp + 0x34]                        // 0x0081d29b    d84c2434
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0081d29f    d95c242c
                         call               _jmp_addr_0x00820ec0                          // 0x0081d2a3    e8183c0000
                         add                esp, 0x48                                     // 0x0081d2a8    83c448
                         ret                                                              // 0x0081d2ab    c3
_jmp_addr_0x0081d2ac:    shl                eax, 5                                        // 0x0081d2ac    c1e005
                         add                eax, 0x00e437e0                               // 0x0081d2af    05e037e400
                         push               eax                                           // 0x0081d2b4    50
                         push               ecx                                           // 0x0081d2b5    51
                         call               _jmp_addr_0x00820ec0                          // 0x0081d2b6    e8053c0000
                         add                esp, 0x48                                     // 0x0081d2bb    83c448
                         ret                                                              // 0x0081d2be    c3
                         nop                                                              // 0x0081d2bf    90
_jmp_addr_0x0081d2c0:    push               ecx                                           // 0x0081d2c0    51
                         push               ebx                                           // 0x0081d2c1    53
                         push               ebp                                           // 0x0081d2c2    55
                         push               esi                                           // 0x0081d2c3    56
                         push               edi                                           // 0x0081d2c4    57
                         mov.s              edi, ecx                                      // 0x0081d2c5    8bf9
                         and                ecx, 0x0000ffff                               // 0x0081d2c7    81e1ffff0000
                         mov.s              esi, edx                                      // 0x0081d2cd    8bf2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00e3b5e0]       // 0x0081d2cf    8b148de0b5e300
                         mov                eax, 0x00000800                               // 0x0081d2d6    b800080000
                         test               eax, edx                                      // 0x0081d2db    85d0
                         mov.s              edx, esi                                      // 0x0081d2dd    8bd6
                         {disp32} je        _jmp_addr_0x0081d3db                          // 0x0081d2df    0f84f6000000
                         and                edx, 0x0000ffff                               // 0x0081d2e5    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d2eb    850495e0b5e300
                         {disp8} je         _jmp_addr_0x0081d34e                          // 0x0081d2f2    745a
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x0081d2f4    8b5c2418
                         mov.s              ecx, ebx                                      // 0x0081d2f8    8bcb
                         and                ecx, 0x0000ffff                               // 0x0081d2fa    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], eax       // 0x0081d300    85048de0b5e300
                         {disp32} jne       _jmp_addr_0x0081d4df                          // 0x0081d307    0f85d2010000
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d30d    8b2da89eea00
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d313    668305a89eea0002
                         {disp8} lea        edx, dword ptr [ebp + 0x01]                   // 0x0081d31b    8d5501
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0081d31e    89542418
                         push               ebp                                           // 0x0081d322    55
                         mov.s              edx, edi                                      // 0x0081d323    8bd7
                         mov.s              ecx, ebx                                      // 0x0081d325    8bcb
                         call               _jmp_addr_0x0081d790                          // 0x0081d327    e864040000
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0081d32c    8b7c2418
                         push               edi                                           // 0x0081d330    57
                         mov.s              edx, esi                                      // 0x0081d331    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d333    8bcb
                         call               _jmp_addr_0x0081d790                          // 0x0081d335    e856040000
                         push               0x20                                          // 0x0081d33a    6a20
                         push               edi                                           // 0x0081d33c    57
                         mov.s              edx, ebp                                      // 0x0081d33d    8bd5
                         mov.s              ecx, ebx                                      // 0x0081d33f    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d341    e81ad4ffff
                         pop                edi                                           // 0x0081d346    5f
                         pop                esi                                           // 0x0081d347    5e
                         pop                ebp                                           // 0x0081d348    5d
                         pop                ebx                                           // 0x0081d349    5b
                         pop                ecx                                           // 0x0081d34a    59
                         ret                0x0004                                        // 0x0081d34b    c20400
_jmp_addr_0x0081d34e:    {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d34e    8b1da89eea00
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0081d354    8b6c2418
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d358    668305a89eea0002
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                   // 0x0081d360    8d4b01
                         mov.s              edx, ebp                                      // 0x0081d363    8bd5
                         and                edx, 0x0000ffff                               // 0x0081d365    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081d36b    894c2410
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d36f    850495e0b5e300
                         push               ebx                                           // 0x0081d376    53
                         mov.s              edx, edi                                      // 0x0081d377    8bd7
                         mov.s              ecx, esi                                      // 0x0081d379    8bce
                         {disp8} je         _jmp_addr_0x0081d3a4                          // 0x0081d37b    7427
                         call               _jmp_addr_0x0081d790                          // 0x0081d37d    e80e040000
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0081d382    8b7c2410
                         push               edi                                           // 0x0081d386    57
                         mov.s              edx, ebp                                      // 0x0081d387    8bd5
                         mov.s              ecx, esi                                      // 0x0081d389    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d38b    e800040000
                         push               0x20                                          // 0x0081d390    6a20
                         push               edi                                           // 0x0081d392    57
                         mov.s              edx, esi                                      // 0x0081d393    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d395    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d397    e8c4d3ffff
                         pop                edi                                           // 0x0081d39c    5f
                         pop                esi                                           // 0x0081d39d    5e
                         pop                ebp                                           // 0x0081d39e    5d
                         pop                ebx                                           // 0x0081d39f    5b
                         pop                ecx                                           // 0x0081d3a0    59
                         ret                0x0004                                        // 0x0081d3a1    c20400
_jmp_addr_0x0081d3a4:    call               _jmp_addr_0x0081d790                          // 0x0081d3a4    e8e7030000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0081d3a9    8b442410
                         push               eax                                           // 0x0081d3ad    50
                         mov.s              edx, edi                                      // 0x0081d3ae    8bd7
                         mov.s              ecx, ebp                                      // 0x0081d3b0    8bcd
                         call               _jmp_addr_0x0081d790                          // 0x0081d3b2    e8d9030000
                         push               0x20                                          // 0x0081d3b7    6a20
                         push               ebp                                           // 0x0081d3b9    55
                         mov.s              edx, esi                                      // 0x0081d3ba    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d3bc    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d3be    e89dd3ffff
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0081d3c3    8b4c2410
                         push               0x20                                          // 0x0081d3c7    6a20
                         push               ecx                                           // 0x0081d3c9    51
                         mov.s              edx, ebp                                      // 0x0081d3ca    8bd5
                         mov.s              ecx, ebx                                      // 0x0081d3cc    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d3ce    e88dd3ffff
                         pop                edi                                           // 0x0081d3d3    5f
                         pop                esi                                           // 0x0081d3d4    5e
                         pop                ebp                                           // 0x0081d3d5    5d
                         pop                ebx                                           // 0x0081d3d6    5b
                         pop                ecx                                           // 0x0081d3d7    59
                         ret                0x0004                                        // 0x0081d3d8    c20400
_jmp_addr_0x0081d3db:    and                edx, 0x0000ffff                               // 0x0081d3db    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d3e1    850495e0b5e300
                         {disp32} je        _jmp_addr_0x0081d479                          // 0x0081d3e8    0f848b000000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d3ee    8b1da89eea00
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0081d3f4    8b6c2418
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d3f8    668305a89eea0002
                         {disp8} lea        ecx, dword ptr [ebx + 0x01]                   // 0x0081d400    8d4b01
                         mov.s              edx, ebp                                      // 0x0081d403    8bd5
                         and                edx, 0x0000ffff                               // 0x0081d405    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0081d40b    894c2410
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d40f    850495e0b5e300
                         push               ebx                                           // 0x0081d416    53
                         mov.s              edx, esi                                      // 0x0081d417    8bd6
                         mov.s              ecx, edi                                      // 0x0081d419    8bcf
                         {disp8} je         _jmp_addr_0x0081d444                          // 0x0081d41b    7427
                         call               _jmp_addr_0x0081d790                          // 0x0081d41d    e86e030000
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0081d422    8b742410
                         push               esi                                           // 0x0081d426    56
                         mov.s              edx, ebp                                      // 0x0081d427    8bd5
                         mov.s              ecx, edi                                      // 0x0081d429    8bcf
                         call               _jmp_addr_0x0081d790                          // 0x0081d42b    e860030000
                         push               0x20                                          // 0x0081d430    6a20
                         push               esi                                           // 0x0081d432    56
                         mov.s              edx, ebx                                      // 0x0081d433    8bd3
                         mov.s              ecx, edi                                      // 0x0081d435    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d437    e824d3ffff
                         pop                edi                                           // 0x0081d43c    5f
                         pop                esi                                           // 0x0081d43d    5e
                         pop                ebp                                           // 0x0081d43e    5d
                         pop                ebx                                           // 0x0081d43f    5b
                         pop                ecx                                           // 0x0081d440    59
                         ret                0x0004                                        // 0x0081d441    c20400
_jmp_addr_0x0081d444:    call               _jmp_addr_0x0081d790                          // 0x0081d444    e847030000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0081d449    8b442410
                         push               eax                                           // 0x0081d44d    50
                         mov.s              edx, esi                                      // 0x0081d44e    8bd6
                         mov.s              ecx, ebp                                      // 0x0081d450    8bcd
                         call               _jmp_addr_0x0081d790                          // 0x0081d452    e839030000
                         push               0x20                                          // 0x0081d457    6a20
                         push               ebp                                           // 0x0081d459    55
                         mov.s              edx, ebx                                      // 0x0081d45a    8bd3
                         mov.s              ecx, edi                                      // 0x0081d45c    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d45e    e8fdd2ffff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0081d463    8b542410
                         push               0x20                                          // 0x0081d467    6a20
                         push               ebp                                           // 0x0081d469    55
                         mov.s              ecx, ebx                                      // 0x0081d46a    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d46c    e8efd2ffff
                         pop                edi                                           // 0x0081d471    5f
                         pop                esi                                           // 0x0081d472    5e
                         pop                ebp                                           // 0x0081d473    5d
                         pop                ebx                                           // 0x0081d474    5b
                         pop                ecx                                           // 0x0081d475    59
                         ret                0x0004                                        // 0x0081d476    c20400
_jmp_addr_0x0081d479:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0081d479    8b542418
                         mov.s              ecx, edx                                      // 0x0081d47d    8bca
                         and                ecx, 0x0000ffff                               // 0x0081d47f    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], eax       // 0x0081d485    85048de0b5e300
                         {disp8} je         _jmp_addr_0x0081d4d3                          // 0x0081d48c    7445
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d48e    8b1da89eea00
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d494    668305a89eea0002
                         push               ebx                                           // 0x0081d49c    53
                         mov.s              ecx, edi                                      // 0x0081d49d    8bcf
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0081d49f    8d6b01
                         call               _jmp_addr_0x0081d790                          // 0x0081d4a2    e8e9020000
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0081d4a7    8b542418
                         push               ebp                                           // 0x0081d4ab    55
                         mov.s              ecx, esi                                      // 0x0081d4ac    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d4ae    e8dd020000
                         push               0x20                                          // 0x0081d4b3    6a20
                         push               esi                                           // 0x0081d4b5    56
                         mov.s              edx, edi                                      // 0x0081d4b6    8bd7
                         mov.s              ecx, ebx                                      // 0x0081d4b8    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d4ba    e8a1d2ffff
                         push               0x20                                          // 0x0081d4bf    6a20
                         push               ebp                                           // 0x0081d4c1    55
                         mov.s              edx, esi                                      // 0x0081d4c2    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d4c4    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d4c6    e895d2ffff
                         pop                edi                                           // 0x0081d4cb    5f
                         pop                esi                                           // 0x0081d4cc    5e
                         pop                ebp                                           // 0x0081d4cd    5d
                         pop                ebx                                           // 0x0081d4ce    5b
                         pop                ecx                                           // 0x0081d4cf    59
                         ret                0x0004                                        // 0x0081d4d0    c20400
_jmp_addr_0x0081d4d3:    push               0x20                                          // 0x0081d4d3    6a20
                         push               edx                                           // 0x0081d4d5    52
                         mov.s              edx, esi                                      // 0x0081d4d6    8bd6
                         mov.s              ecx, edi                                      // 0x0081d4d8    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d4da    e881d2ffff
_jmp_addr_0x0081d4df:    pop                edi                                           // 0x0081d4df    5f
                         pop                esi                                           // 0x0081d4e0    5e
                         pop                ebp                                           // 0x0081d4e1    5d
                         pop                ebx                                           // 0x0081d4e2    5b
                         pop                ecx                                           // 0x0081d4e3    59
                         ret                0x0004                                        // 0x0081d4e4    c20400
                         nop                                                              // 0x0081d4e7    90
                         nop                                                              // 0x0081d4e8    90
                         nop                                                              // 0x0081d4e9    90
                         nop                                                              // 0x0081d4ea    90
                         nop                                                              // 0x0081d4eb    90
                         nop                                                              // 0x0081d4ec    90
                         nop                                                              // 0x0081d4ed    90
                         nop                                                              // 0x0081d4ee    90
                         nop                                                              // 0x0081d4ef    90
_jmp_addr_0x0081d4f0:    push               ebx                                           // 0x0081d4f0    53
                         push               ebp                                           // 0x0081d4f1    55
                         push               esi                                           // 0x0081d4f2    56
                         push               edi                                           // 0x0081d4f3    57
                         mov.s              edi, ecx                                      // 0x0081d4f4    8bf9
                         and                ecx, 0x0000ffff                               // 0x0081d4f6    81e1ffff0000
                         mov.s              esi, edx                                      // 0x0081d4fc    8bf2
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00e3b5e0]       // 0x0081d4fe    8b148de0b5e300
                         mov                eax, 0x00000800                               // 0x0081d505    b800080000
                         test               eax, edx                                      // 0x0081d50a    85d0
                         {disp32} je        _jmp_addr_0x0081d640                          // 0x0081d50c    0f842e010000
                         mov.s              edx, esi                                      // 0x0081d512    8bd6
                         and                edx, 0x0000ffff                               // 0x0081d514    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d51a    850495e0b5e300
                         {disp8} je         _jmp_addr_0x0081d58f                          // 0x0081d521    746c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0081d523    8b4c2414
                         mov.s              edx, ecx                                      // 0x0081d527    8bd1
                         and                edx, 0x0000ffff                               // 0x0081d529    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d52f    850495e0b5e300
                         {disp32} jne       _jmp_addr_0x0081d784                          // 0x0081d536    0f8548020000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d53c    8b1da89eea00
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d542    668305a89eea0002
                         push               ebx                                           // 0x0081d54a    53
                         mov.s              edx, edi                                      // 0x0081d54b    8bd7
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0081d54d    8d6b01
                         call               _jmp_addr_0x0081d790                          // 0x0081d550    e83b020000
                         mov.s              edx, esi                                      // 0x0081d555    8bd6
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0081d557    8b742414
                         push               ebp                                           // 0x0081d55b    55
                         mov.s              ecx, esi                                      // 0x0081d55c    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d55e    e82d020000
                         mov.s              eax, ebp                                      // 0x0081d563    8bc5
                         and                eax, 0x0000ffff                               // 0x0081d565    25ffff0000
                         mov.s              ecx, ebx                                      // 0x0081d56a    8bcb
                         push               eax                                           // 0x0081d56c    50
                         and                ecx, 0x0000ffff                               // 0x0081d56d    81e1ffff0000
                         push               ecx                                           // 0x0081d573    51
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d574    e837fcffff
                         add                esp, 0x08                                     // 0x0081d579    83c408
                         push               0x20                                          // 0x0081d57c    6a20
                         push               ebp                                           // 0x0081d57e    55
                         mov.s              edx, ebx                                      // 0x0081d57f    8bd3
                         mov.s              ecx, esi                                      // 0x0081d581    8bce
                         call               _jmp_addr_0x0081a760                          // 0x0081d583    e8d8d1ffff
                         pop                edi                                           // 0x0081d588    5f
                         pop                esi                                           // 0x0081d589    5e
                         pop                ebp                                           // 0x0081d58a    5d
                         pop                ebx                                           // 0x0081d58b    5b
                         ret                0x0004                                        // 0x0081d58c    c20400
_jmp_addr_0x0081d58f:    {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d58f    8b1da89eea00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d595    8b542414
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d599    668305a89eea0002
                         and                edx, 0x0000ffff                               // 0x0081d5a1    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d5a7    850495e0b5e300
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0081d5ae    8d6b01
                         push               ebx                                           // 0x0081d5b1    53
                         mov.s              edx, edi                                      // 0x0081d5b2    8bd7
                         mov.s              ecx, esi                                      // 0x0081d5b4    8bce
                         {disp8} je         _jmp_addr_0x0081d5f5                          // 0x0081d5b6    743d
                         call               _jmp_addr_0x0081d790                          // 0x0081d5b8    e8d3010000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d5bd    8b542414
                         push               ebp                                           // 0x0081d5c1    55
                         mov.s              ecx, esi                                      // 0x0081d5c2    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d5c4    e8c7010000
                         mov.s              eax, ebp                                      // 0x0081d5c9    8bc5
                         and                eax, 0x0000ffff                               // 0x0081d5cb    25ffff0000
                         mov.s              ecx, ebx                                      // 0x0081d5d0    8bcb
                         push               eax                                           // 0x0081d5d2    50
                         and                ecx, 0x0000ffff                               // 0x0081d5d3    81e1ffff0000
                         push               ecx                                           // 0x0081d5d9    51
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d5da    e8d1fbffff
                         add                esp, 0x08                                     // 0x0081d5df    83c408
                         push               0x20                                          // 0x0081d5e2    6a20
                         push               ebp                                           // 0x0081d5e4    55
                         mov.s              edx, esi                                      // 0x0081d5e5    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d5e7    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d5e9    e872d1ffff
                         pop                edi                                           // 0x0081d5ee    5f
                         pop                esi                                           // 0x0081d5ef    5e
                         pop                ebp                                           // 0x0081d5f0    5d
                         pop                ebx                                           // 0x0081d5f1    5b
                         ret                0x0004                                        // 0x0081d5f2    c20400
_jmp_addr_0x0081d5f5:    call               _jmp_addr_0x0081d790                          // 0x0081d5f5    e896010000
                         mov.s              edx, edi                                      // 0x0081d5fa    8bd7
                         {disp8} mov        edi, dword ptr [esp + 0x14]                   // 0x0081d5fc    8b7c2414
                         push               ebp                                           // 0x0081d600    55
                         mov.s              ecx, edi                                      // 0x0081d601    8bcf
                         call               _jmp_addr_0x0081d790                          // 0x0081d603    e888010000
                         mov.s              edx, ebp                                      // 0x0081d608    8bd5
                         and                edx, 0x0000ffff                               // 0x0081d60a    81e2ffff0000
                         mov.s              eax, ebx                                      // 0x0081d610    8bc3
                         push               edx                                           // 0x0081d612    52
                         and                eax, 0x0000ffff                               // 0x0081d613    25ffff0000
                         push               eax                                           // 0x0081d618    50
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d619    e892fbffff
                         add                esp, 0x08                                     // 0x0081d61e    83c408
                         push               0x20                                          // 0x0081d621    6a20
                         push               edi                                           // 0x0081d623    57
                         mov.s              edx, esi                                      // 0x0081d624    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d626    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d628    e833d1ffff
                         push               0x20                                          // 0x0081d62d    6a20
                         push               ebp                                           // 0x0081d62f    55
                         mov.s              edx, edi                                      // 0x0081d630    8bd7
                         mov.s              ecx, ebx                                      // 0x0081d632    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d634    e827d1ffff
                         pop                edi                                           // 0x0081d639    5f
                         pop                esi                                           // 0x0081d63a    5e
                         pop                ebp                                           // 0x0081d63b    5d
                         pop                ebx                                           // 0x0081d63c    5b
                         ret                0x0004                                        // 0x0081d63d    c20400
_jmp_addr_0x0081d640:    mov.s              ecx, esi                                      // 0x0081d640    8bce
                         and                ecx, 0x0000ffff                               // 0x0081d642    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], eax       // 0x0081d648    85048de0b5e300
                         {disp32} je        _jmp_addr_0x0081d706                          // 0x0081d64f    0f84b1000000
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d655    8b1da89eea00
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d65b    8b542414
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d65f    668305a89eea0002
                         and                edx, 0x0000ffff                               // 0x0081d667    81e2ffff0000
                         test               dword ptr [edx * 0x4 + 0x00e3b5e0], eax       // 0x0081d66d    850495e0b5e300
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0081d674    8d6b01
                         push               ebx                                           // 0x0081d677    53
                         mov.s              edx, esi                                      // 0x0081d678    8bd6
                         mov.s              ecx, edi                                      // 0x0081d67a    8bcf
                         {disp8} je         _jmp_addr_0x0081d6bb                          // 0x0081d67c    743d
                         call               _jmp_addr_0x0081d790                          // 0x0081d67e    e80d010000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d683    8b542414
                         push               ebp                                           // 0x0081d687    55
                         mov.s              ecx, edi                                      // 0x0081d688    8bcf
                         call               _jmp_addr_0x0081d790                          // 0x0081d68a    e801010000
                         mov.s              eax, ebp                                      // 0x0081d68f    8bc5
                         and                eax, 0x0000ffff                               // 0x0081d691    25ffff0000
                         mov.s              ecx, ebx                                      // 0x0081d696    8bcb
                         push               eax                                           // 0x0081d698    50
                         and                ecx, 0x0000ffff                               // 0x0081d699    81e1ffff0000
                         push               ecx                                           // 0x0081d69f    51
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d6a0    e80bfbffff
                         add                esp, 0x08                                     // 0x0081d6a5    83c408
                         push               0x20                                          // 0x0081d6a8    6a20
                         push               ebp                                           // 0x0081d6aa    55
                         mov.s              edx, ebx                                      // 0x0081d6ab    8bd3
                         mov.s              ecx, edi                                      // 0x0081d6ad    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d6af    e8acd0ffff
                         pop                edi                                           // 0x0081d6b4    5f
                         pop                esi                                           // 0x0081d6b5    5e
                         pop                ebp                                           // 0x0081d6b6    5d
                         pop                ebx                                           // 0x0081d6b7    5b
                         ret                0x0004                                        // 0x0081d6b8    c20400
_jmp_addr_0x0081d6bb:    call               _jmp_addr_0x0081d790                          // 0x0081d6bb    e8d0000000
                         mov.s              edx, esi                                      // 0x0081d6c0    8bd6
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0081d6c2    8b742414
                         push               ebp                                           // 0x0081d6c6    55
                         mov.s              ecx, esi                                      // 0x0081d6c7    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d6c9    e8c2000000
                         mov.s              edx, ebp                                      // 0x0081d6ce    8bd5
                         and                edx, 0x0000ffff                               // 0x0081d6d0    81e2ffff0000
                         mov.s              eax, ebx                                      // 0x0081d6d6    8bc3
                         push               edx                                           // 0x0081d6d8    52
                         and                eax, 0x0000ffff                               // 0x0081d6d9    25ffff0000
                         push               eax                                           // 0x0081d6de    50
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d6df    e8ccfaffff
                         add                esp, 0x08                                     // 0x0081d6e4    83c408
                         push               0x20                                          // 0x0081d6e7    6a20
                         push               esi                                           // 0x0081d6e9    56
                         mov.s              edx, ebx                                      // 0x0081d6ea    8bd3
                         mov.s              ecx, edi                                      // 0x0081d6ec    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d6ee    e86dd0ffff
                         push               0x20                                          // 0x0081d6f3    6a20
                         push               esi                                           // 0x0081d6f5    56
                         mov.s              edx, ebp                                      // 0x0081d6f6    8bd5
                         mov.s              ecx, ebx                                      // 0x0081d6f8    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d6fa    e861d0ffff
                         pop                edi                                           // 0x0081d6ff    5f
                         pop                esi                                           // 0x0081d700    5e
                         pop                ebp                                           // 0x0081d701    5d
                         pop                ebx                                           // 0x0081d702    5b
                         ret                0x0004                                        // 0x0081d703    c20400
_jmp_addr_0x0081d706:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d706    8b542414
                         mov.s              ecx, edx                                      // 0x0081d70a    8bca
                         and                ecx, 0x0000ffff                               // 0x0081d70c    81e1ffff0000
                         test               dword ptr [ecx * 0x4 + 0x00e3b5e0], eax       // 0x0081d712    85048de0b5e300
                         {disp8} je         _jmp_addr_0x0081d778                          // 0x0081d719    745d
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x4e3ea8]        // 0x0081d71b    8b1da89eea00
                         add                word ptr [data_bytes + 0x4e3ea8], 0x02        // 0x0081d721    668305a89eea0002
                         push               ebx                                           // 0x0081d729    53
                         mov.s              ecx, edi                                      // 0x0081d72a    8bcf
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0081d72c    8d6b01
                         call               _jmp_addr_0x0081d790                          // 0x0081d72f    e85c000000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0081d734    8b542414
                         push               ebp                                           // 0x0081d738    55
                         mov.s              ecx, esi                                      // 0x0081d739    8bce
                         call               _jmp_addr_0x0081d790                          // 0x0081d73b    e850000000
                         mov.s              edx, ebp                                      // 0x0081d740    8bd5
                         and                edx, 0x0000ffff                               // 0x0081d742    81e2ffff0000
                         mov.s              eax, ebx                                      // 0x0081d748    8bc3
                         push               edx                                           // 0x0081d74a    52
                         and                eax, 0x0000ffff                               // 0x0081d74b    25ffff0000
                         push               eax                                           // 0x0081d750    50
                         call               _jmp_addr_0x0081d1b0                          // 0x0081d751    e85afaffff
                         add                esp, 0x08                                     // 0x0081d756    83c408
                         push               0x20                                          // 0x0081d759    6a20
                         push               esi                                           // 0x0081d75b    56
                         mov.s              edx, edi                                      // 0x0081d75c    8bd7
                         mov.s              ecx, ebx                                      // 0x0081d75e    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d760    e8fbcfffff
                         push               0x20                                          // 0x0081d765    6a20
                         push               ebp                                           // 0x0081d767    55
                         mov.s              edx, esi                                      // 0x0081d768    8bd6
                         mov.s              ecx, ebx                                      // 0x0081d76a    8bcb
                         call               _jmp_addr_0x0081a760                          // 0x0081d76c    e8efcfffff
                         pop                edi                                           // 0x0081d771    5f
                         pop                esi                                           // 0x0081d772    5e
                         pop                ebp                                           // 0x0081d773    5d
                         pop                ebx                                           // 0x0081d774    5b
                         ret                0x0004                                        // 0x0081d775    c20400
_jmp_addr_0x0081d778:    push               0x20                                          // 0x0081d778    6a20
                         push               edx                                           // 0x0081d77a    52
                         mov.s              edx, esi                                      // 0x0081d77b    8bd6
                         mov.s              ecx, edi                                      // 0x0081d77d    8bcf
                         call               _jmp_addr_0x0081a760                          // 0x0081d77f    e8dccfffff
_jmp_addr_0x0081d784:    pop                edi                                           // 0x0081d784    5f
                         pop                esi                                           // 0x0081d785    5e
                         pop                ebp                                           // 0x0081d786    5d
                         pop                ebx                                           // 0x0081d787    5b
                         ret                0x0004                                        // 0x0081d788    c20400
                         nop                                                              // 0x0081d78b    90
                         nop                                                              // 0x0081d78c    90
                         nop                                                              // 0x0081d78d    90
                         nop                                                              // 0x0081d78e    90
                         nop                                                              // 0x0081d78f    90
_jmp_addr_0x0081d790:    push               ebp                                           // 0x0081d790    55
                         mov.s              ebp, esp                                      // 0x0081d791    8bec
                         sub                esp, 0x60                                     // 0x0081d793    83ec60
                         push               ebx                                           // 0x0081d796    53
                         push               esi                                           // 0x0081d797    56
                         {disp8} mov        esi, dword ptr [ebp + 0x08]                   // 0x0081d798    8b7508
                         and                esi, 0x0000ffff                               // 0x0081d79b    81e6ffff0000
                         push               edi                                           // 0x0081d7a1    57
                         and                edx, 0x0000ffff                               // 0x0081d7a2    81e2ffff0000
                         mov.s              edi, ecx                                      // 0x0081d7a8    8bf9
                         {disp8} mov        dword ptr [ebp + -0x40], esi                  // 0x0081d7aa    8975c0
                         and                edi, 0x0000ffff                               // 0x0081d7ad    81e7ffff0000
                         {disp32} mov       al, byte ptr [edi * 0x4 + 0x00e3b5e0]         // 0x0081d7b3    8a04bde0b5e300
                         shl                edx, 5                                        // 0x0081d7ba    c1e205
                         shl                esi, 5                                        // 0x0081d7bd    c1e605
                         add                edx, 0x00e437e0                               // 0x0081d7c0    81c2e037e400
                         add                esi, 0x00e437e0                               // 0x0081d7c6    81c6e037e400
                         test               al, 0x3f                                      // 0x0081d7cc    a83f
                         mov.s              ebx, edx                                      // 0x0081d7ce    8bda
                         {disp8} jne        _jmp_addr_0x0081d82d                          // 0x0081d7d0    755b
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0081d7d2    d905e039e800
                         shl                edi, 5                                        // 0x0081d7d8    c1e705
                         add                edi, 0x00e437e0                               // 0x0081d7db    81c7e037e400
                         {disp8} fdiv       dword ptr [edi + 0x0c]                        // 0x0081d7e1    d8770c
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0081d7e4    8b4718
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0081d7e7    8b4f1c
                         {disp8} mov        edx, dword ptr [edi + 0x10]                   // 0x0081d7ea    8b5710
                         {disp8} mov        dword ptr [ebp + -0x48], eax                  // 0x0081d7ed    8945b8
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0081d7f0    8b4714
                         {disp8} mov        dword ptr [ebp + -0x44], ecx                  // 0x0081d7f3    894dbc
                         {disp8} mov        dword ptr [ebp + -0x50], edx                  // 0x0081d7f6    8955b0
                         {disp8} mov        dword ptr [ebp + -0x4c], eax                  // 0x0081d7f9    8945b4
                         {disp8} fstp       dword ptr [ebp + -0x54]                       // 0x0081d7fc    d95dac
                         fld                dword ptr [edi]                               // 0x0081d7ff    d907
                         {disp32} fsub      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081d801    d825f039e800
                         {disp8} fmul       dword ptr [ebp + -0x54]                       // 0x0081d807    d84dac
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f8]             // 0x0081d80a    d80df839e800
                         {disp8} fstp       dword ptr [ebp + -0x60]                       // 0x0081d810    d95da0
                         {disp32} fld       dword ptr [data_bytes + 0x4bd9f4]             // 0x0081d813    d905f439e800
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x0081d819    d86704
                         {disp8} lea        edi, dword ptr [ebp + -0x60]                  // 0x0081d81c    8d7da0
                         {disp8} fmul       dword ptr [ebp + -0x54]                       // 0x0081d81f    d84dac
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9fc]             // 0x0081d822    d80dfc39e800
                         {disp8} fstp       dword ptr [ebp + -0x5c]                       // 0x0081d828    d95da4
                         {disp8} jmp        _jmp_addr_0x0081d836                          // 0x0081d82b    eb09
_jmp_addr_0x0081d82d:    shl                edi, 5                                        // 0x0081d82d    c1e705
                         add                edi, 0x00e437e0                               // 0x0081d830    81c7e037e400
_jmp_addr_0x0081d836:    fld                dword ptr [edi]                               // 0x0081d836    d907
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x0081d838    d94704
                         {disp8} fstp       dword ptr [ebp + -0x38]                       // 0x0081d83b    d95dc8
                         {disp8} fld        dword ptr [edi + 0x0c]                        // 0x0081d83e    d9470c
                         {disp8} mov        ecx, dword ptr [ebp + -0x38]                  // 0x0081d841    8b4dc8
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x0081d844    d95dcc
                         {disp8} mov        dword ptr [ebp + -0x20], ecx                  // 0x0081d847    894de0
                         {disp8} fst        dword ptr [ebp + 0x08]                        // 0x0081d84a    d95508
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df8]             // 0x0081d84d    d905f89dea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d853    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3dec]             // 0x0081d856    d905ec9dea00
                         {disp8} fmul       dword ptr [ebp + -0x38]                       // 0x0081d85c    d84dc8
                         faddp              st(1), st                                     // 0x0081d85f    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de0]             // 0x0081d861    d905e09dea00
                         fmul               st, st(2)                                     // 0x0081d867    d8ca
                         faddp              st(1), st                                     // 0x0081d869    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e04]             // 0x0081d86b    d805049eea00
                         fstp               st(1)                                         // 0x0081d871    ddd9
                         {disp32} fld       dword ptr [data_bytes + 0x4e3dfc]             // 0x0081d873    d905fc9dea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d879    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df0]             // 0x0081d87c    d905f09dea00
                         {disp8} fmul       dword ptr [ebp + -0x38]                       // 0x0081d882    d84dc8
                         faddp              st(1), st                                     // 0x0081d885    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de4]             // 0x0081d887    d905e49dea00
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081d88d    d84d08
                         faddp              st(1), st                                     // 0x0081d890    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e08]             // 0x0081d892    d805089eea00
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e00]             // 0x0081d898    d905009eea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d89e    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df4]             // 0x0081d8a1    d905f49dea00
                         {disp8} fmul       dword ptr [ebp + -0x20]                       // 0x0081d8a7    d84de0
                         faddp              st(1), st                                     // 0x0081d8aa    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de8]             // 0x0081d8ac    d905e89dea00
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081d8b2    d84d08
                         faddp              st(1), st                                     // 0x0081d8b5    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e0c]             // 0x0081d8b7    d8050c9eea00
                         {disp32} fld       dword ptr [data_bytes + 0x53d130]             // 0x0081d8bd    d9053031f000
                         fmul               st, st(1)                                     // 0x0081d8c3    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x53d12c]             // 0x0081d8c5    d9052c31f000
                         fmul               st, st(3)                                     // 0x0081d8cb    d8cb
                         faddp              st(1), st                                     // 0x0081d8cd    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x53d128]             // 0x0081d8cf    d9052831f000
                         fmul               st, st(4)                                     // 0x0081d8d5    d8cc
                         faddp              st(1), st                                     // 0x0081d8d7    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x53d134]             // 0x0081d8d9    d8053431f000
                         fstp               st(3)                                         // 0x0081d8df    dddb
                         fstp               st(0)                                         // 0x0081d8e1    ddd8
                         fstp               st(0)                                         // 0x0081d8e3    ddd8
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081d8e5    d81598a38a00
                         fnstsw             ax                                            // 0x0081d8eb    dfe0
                         test               ah, 0x01                                      // 0x0081d8ed    f6c401
                         {disp8} je         _jmp_addr_0x0081d8fa                          // 0x0081d8f0    7408
                         fstp               st(0)                                         // 0x0081d8f2    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x0081d8f4    d90518f58b00
_jmp_addr_0x0081d8fa:    fld                dword ptr [ebx]                               // 0x0081d8fa    d903
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0081d8fc    d94304
                         {disp8} fstp       dword ptr [ebp + -0x38]                       // 0x0081d8ff    d95dc8
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x0081d902    d9430c
                         {disp8} mov        edx, dword ptr [ebp + -0x38]                  // 0x0081d905    8b55c8
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x0081d908    d95dcc
                         {disp8} mov        dword ptr [ebp + -0x20], edx                  // 0x0081d90b    8955e0
                         {disp8} fst        dword ptr [ebp + 0x08]                        // 0x0081d90e    d95508
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df8]             // 0x0081d911    d905f89dea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d917    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3dec]             // 0x0081d91a    d905ec9dea00
                         {disp8} fmul       dword ptr [ebp + -0x38]                       // 0x0081d920    d84dc8
                         faddp              st(1), st                                     // 0x0081d923    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de0]             // 0x0081d925    d905e09dea00
                         fmul               st, st(2)                                     // 0x0081d92b    d8ca
                         faddp              st(1), st                                     // 0x0081d92d    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e04]             // 0x0081d92f    d805049eea00
                         fstp               st(1)                                         // 0x0081d935    ddd9
                         {disp32} fld       dword ptr [data_bytes + 0x4e3dfc]             // 0x0081d937    d905fc9dea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d93d    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df0]             // 0x0081d940    d905f09dea00
                         {disp8} fmul       dword ptr [ebp + -0x38]                       // 0x0081d946    d84dc8
                         faddp              st(1), st                                     // 0x0081d949    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de4]             // 0x0081d94b    d905e49dea00
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081d951    d84d08
                         faddp              st(1), st                                     // 0x0081d954    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e08]             // 0x0081d956    d805089eea00
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e00]             // 0x0081d95c    d905009eea00
                         {disp8} fmul       dword ptr [ebp + -0x34]                       // 0x0081d962    d84dcc
                         {disp32} fld       dword ptr [data_bytes + 0x4e3df4]             // 0x0081d965    d905f49dea00
                         {disp8} fmul       dword ptr [ebp + -0x20]                       // 0x0081d96b    d84de0
                         faddp              st(1), st                                     // 0x0081d96e    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x4e3de8]             // 0x0081d970    d905e89dea00
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081d976    d84d08
                         faddp              st(1), st                                     // 0x0081d979    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x4e3e0c]             // 0x0081d97b    d8050c9eea00
                         {disp32} fld       dword ptr [data_bytes + 0x53d130]             // 0x0081d981    d9053031f000
                         fmul               st, st(1)                                     // 0x0081d987    d8c9
                         {disp32} fld       dword ptr [data_bytes + 0x53d12c]             // 0x0081d989    d9052c31f000
                         fmul               st, st(3)                                     // 0x0081d98f    d8cb
                         faddp              st(1), st                                     // 0x0081d991    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x53d128]             // 0x0081d993    d9052831f000
                         fmul               st, st(4)                                     // 0x0081d999    d8cc
                         faddp              st(1), st                                     // 0x0081d99b    dec1
                         {disp32} fadd      dword ptr [data_bytes + 0x53d134]             // 0x0081d99d    d8053431f000
                         fstp               st(3)                                         // 0x0081d9a3    dddb
                         fstp               st(0)                                         // 0x0081d9a5    ddd8
                         fstp               st(0)                                         // 0x0081d9a7    ddd8
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081d9a9    d81598a38a00
                         fnstsw             ax                                            // 0x0081d9af    dfe0
                         test               ah, 0x41                                      // 0x0081d9b1    f6c441
                         {disp8} jne        _jmp_addr_0x0081d9be                          // 0x0081d9b4    7508
                         fstp               st(0)                                         // 0x0081d9b6    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x2f738]             // 0x0081d9b8    d90538878d00
_jmp_addr_0x0081d9be:    fld                st(1)                                         // 0x0081d9be    d9c1
                         xor.s              ecx, ecx                                      // 0x0081d9c0    33c9
                         fsub               st, st(1)                                     // 0x0081d9c2    d8e1
                         xor.s              edx, edx                                      // 0x0081d9c4    33d2
                         fdivr              st, st(2)                                     // 0x0081d9c6    d8fa
                         {disp8} fstp       dword ptr [ebp + 0x08]                        // 0x0081d9c8    d95d08
                         fstp               st(0)                                         // 0x0081d9cb    ddd8
                         fstp               st(0)                                         // 0x0081d9cd    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081d9cf    d90590a38a00
                         {disp8} fsub       dword ptr [ebp + 0x08]                        // 0x0081d9d5    d86508
                         {disp8} fstp       dword ptr [ebp + -0x04]                       // 0x0081d9d8    d95dfc
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081d9db    d94508
                         fmul               dword ptr [ebx]                               // 0x0081d9de    d80b
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x0081d9e0    d945fc
                         fmul               dword ptr [edi]                               // 0x0081d9e3    d80f
                         faddp              st(1), st                                     // 0x0081d9e5    dec1
                         fstp               dword ptr [esi]                               // 0x0081d9e7    d91e
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x0081d9e9    d945fc
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x0081d9ec    d84f04
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081d9ef    d94508
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0081d9f2    d84b04
                         faddp              st(1), st                                     // 0x0081d9f5    dec1
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0081d9f7    d95e04
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x0081d9fa    d945fc
                         {disp8} fmul       dword ptr [edi + 0x0c]                        // 0x0081d9fd    d84f0c
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081da00    d94508
                         {disp8} fmul       dword ptr [ebx + 0x0c]                        // 0x0081da03    d84b0c
                         faddp              st(1), st                                     // 0x0081da06    dec1
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0081da08    d95e0c
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x0081da0b    d945fc
                         {disp8} fmul       dword ptr [edi + 0x18]                        // 0x0081da0e    d84f18
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081da11    d94508
                         {disp8} fmul       dword ptr [ebx + 0x18]                        // 0x0081da14    d84b18
                         faddp              st(1), st                                     // 0x0081da17    dec1
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x0081da19    d95e18
                         {disp8} fld        dword ptr [ebp + -0x04]                       // 0x0081da1c    d945fc
                         {disp8} fmul       dword ptr [edi + 0x1c]                        // 0x0081da1f    d84f1c
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081da22    d94508
                         {disp8} fmul       dword ptr [ebx + 0x1c]                        // 0x0081da25    d84b1c
                         faddp              st(1), st                                     // 0x0081da28    dec1
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0081da2a    d95e1c
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0081da2d    8b4710
                         {disp8} mov        dword ptr [ebp + -0x20], eax                  // 0x0081da30    8945e0
                         {disp8} mov        cl, byte ptr [ebp + -0x1e]                    // 0x0081da33    8a4de2
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                  // 0x0081da36    894dec
                         {disp8} mov        ecx, dword ptr [ebx + 0x10]                   // 0x0081da39    8b4b10
                         {disp8} mov        dword ptr [ebp + -0x20], ecx                  // 0x0081da3c    894de0
                         {disp8} mov        dl, byte ptr [ebp + -0x1e]                    // 0x0081da3f    8a55e2
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x0081da42    8955f0
                         xor.s              edx, edx                                      // 0x0081da45    33d2
                         mov.s              dl, ah                                        // 0x0081da47    8ad4
                         {disp8} mov        dword ptr [ebp + -0x18], edx                  // 0x0081da49    8955e8
                         xor.s              edx, edx                                      // 0x0081da4c    33d2
                         mov.s              dl, ch                                        // 0x0081da4e    8ad5
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                  // 0x0081da50    8955e4
                         mov.s              edx, eax                                      // 0x0081da53    8bd0
                         and                edx, 0x000000ff                               // 0x0081da55    81e2ff000000
                         {disp8} mov        dword ptr [ebp + -0x2c], edx                  // 0x0081da5b    8955d4
                         mov.s              edx, ecx                                      // 0x0081da5e    8bd1
                         shr                ecx, 0x18                                     // 0x0081da60    c1e918
                         {disp8} mov        dword ptr [ebp + -0x38], ecx                  // 0x0081da63    894dc8
                         xor.s              ecx, ecx                                      // 0x0081da66    33c9
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081da68    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081da6b    df6dc8
                         and                edx, 0x000000ff                               // 0x0081da6e    81e2ff000000
                         shr                eax, 0x18                                     // 0x0081da74    c1e818
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081da77    d84d08
                         {disp8} mov        dword ptr [ebp + -0x38], eax                  // 0x0081da7a    8945c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081da7d    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081da80    df6dc8
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x0081da83    8d45f8
                         {disp8} mov        dword ptr [ebp + -0x20], edx                  // 0x0081da86    8955e0
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081da89    d84dfc
                         {disp8} mov        dword ptr [ebp + -0x0c], eax                  // 0x0081da8c    8945f4
                         faddp              st(1), st                                     // 0x0081da8f    dec1
                         {disp8} fstp       dword ptr [ebp + -0x24]                       // 0x0081da91    d95ddc
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0081da94    d945dc
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                  // 0x0081da97    8b55f4
                         fistp              dword ptr [edx]                               // 0x0081da9a    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0081da9c    8b55ec
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                  // 0x0081da9f    8b45f8
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081daa2    8955c8
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0081daa5    8b55f0
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081daa8    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081daab    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081daae    8955c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dab1    894dcc
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081dab4    d84dfc
                         {disp8} lea        edx, dword ptr [ebp + -0x0c]                  // 0x0081dab7    8d55f4
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081daba    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x24], edx                  // 0x0081dabd    8955dc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081dac0    d84d08
                         faddp              st(1), st                                     // 0x0081dac3    dec1
                         {disp8} fstp       dword ptr [ebp + -0x14]                       // 0x0081dac5    d95dec
                         {disp8} fld        dword ptr [ebp + -0x14]                       // 0x0081dac8    d945ec
                         {disp8} mov        edx, dword ptr [ebp + -0x24]                  // 0x0081dacb    8b55dc
                         fistp              dword ptr [edx]                               // 0x0081dace    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x0c]                  // 0x0081dad0    8b55f4
                         {disp8} mov        dword ptr [ebp + -0x34], edx                  // 0x0081dad3    8955cc
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                  // 0x0081dad6    8b55e8
                         {disp8} mov        dword ptr [ebp + -0x28], edx                  // 0x0081dad9    8955d8
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                  // 0x0081dadc    8b55e4
                         {disp8} mov        dword ptr [ebp + -0x24], ecx                  // 0x0081dadf    894ddc
                         {disp8} fild       qword ptr [ebp + -0x28]                       // 0x0081dae2    df6dd8
                         {disp8} mov        dword ptr [ebp + -0x28], edx                  // 0x0081dae5    8955d8
                         {disp8} mov        dword ptr [ebp + -0x24], ecx                  // 0x0081dae8    894ddc
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081daeb    d84dfc
                         {disp8} lea        edx, dword ptr [ebp + -0x10]                  // 0x0081daee    8d55f0
                         {disp8} fild       qword ptr [ebp + -0x28]                       // 0x0081daf1    df6dd8
                         {disp8} mov        dword ptr [ebp + -0x24], edx                  // 0x0081daf4    8955dc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081daf7    d84d08
                         faddp              st(1), st                                     // 0x0081dafa    dec1
                         {disp8} fstp       dword ptr [ebp + -0x1c]                       // 0x0081dafc    d95de4
                         {disp8} fld        dword ptr [ebp + -0x1c]                       // 0x0081daff    d945e4
                         {disp8} mov        edx, dword ptr [ebp + -0x24]                  // 0x0081db02    8b55dc
                         fistp              dword ptr [edx]                               // 0x0081db05    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0081db07    8b55f0
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                  // 0x0081db0a    8955e4
                         {disp8} mov        edx, dword ptr [ebp + -0x2c]                  // 0x0081db0d    8b55d4
                         {disp8} mov        dword ptr [ebp + -0x30], edx                  // 0x0081db10    8955d0
                         {disp8} mov        edx, dword ptr [ebp + -0x20]                  // 0x0081db13    8b55e0
                         {disp8} mov        dword ptr [ebp + -0x2c], ecx                  // 0x0081db16    894dd4
                         {disp8} fild       qword ptr [ebp + -0x30]                       // 0x0081db19    df6dd0
                         {disp8} mov        dword ptr [ebp + -0x30], edx                  // 0x0081db1c    8955d0
                         {disp8} mov        dword ptr [ebp + -0x2c], ecx                  // 0x0081db1f    894dd4
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081db22    d84dfc
                         {disp8} lea        edx, dword ptr [ebp + -0x14]                  // 0x0081db25    8d55ec
                         {disp8} fild       qword ptr [ebp + -0x30]                       // 0x0081db28    df6dd0
                         {disp8} mov        dword ptr [ebp + -0x2c], edx                  // 0x0081db2b    8955d4
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081db2e    d84d08
                         faddp              st(1), st                                     // 0x0081db31    dec1
                         {disp8} fstp       dword ptr [ebp + -0x24]                       // 0x0081db33    d95ddc
                         {disp8} fld        dword ptr [ebp + -0x24]                       // 0x0081db36    d945dc
                         {disp8} mov        edx, dword ptr [ebp + -0x2c]                  // 0x0081db39    8b55d4
                         fistp              dword ptr [edx]                               // 0x0081db3c    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x34]                  // 0x0081db3e    8b55cc
                         shl                eax, 8                                        // 0x0081db41    c1e008
                         or.s               eax, edx                                      // 0x0081db44    0bc2
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                  // 0x0081db46    8b55e4
                         shl                eax, 8                                        // 0x0081db49    c1e008
                         or.s               eax, edx                                      // 0x0081db4c    0bc2
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0081db4e    8b55ec
                         shl                eax, 8                                        // 0x0081db51    c1e008
                         or.s               eax, edx                                      // 0x0081db54    0bc2
                         xor.s              edx, edx                                      // 0x0081db56    33d2
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0081db58    894610
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0081db5b    8b4714
                         {disp8} mov        ebx, dword ptr [ebx + 0x14]                   // 0x0081db5e    8b5b14
                         {disp8} mov        dword ptr [ebp + -0x34], eax                  // 0x0081db61    8945cc
                         {disp8} mov        dl, byte ptr [ebp + -0x32]                    // 0x0081db64    8a55ce
                         {disp8} mov        dword ptr [ebp + -0x34], ebx                  // 0x0081db67    895dcc
                         mov.s              edi, eax                                      // 0x0081db6a    8bf8
                         and                edi, 0x000000ff                               // 0x0081db6c    81e7ff000000
                         {disp8} mov        dword ptr [ebp + -0x14], edx                  // 0x0081db72    8955ec
                         xor.s              edx, edx                                      // 0x0081db75    33d2
                         {disp8} mov        dl, byte ptr [ebp + -0x32]                    // 0x0081db77    8a55ce
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081db7a    894dcc
                         {disp8} mov        dword ptr [ebp + -0x10], edx                  // 0x0081db7d    8955f0
                         xor.s              edx, edx                                      // 0x0081db80    33d2
                         mov.s              dl, ah                                        // 0x0081db82    8ad4
                         {disp8} mov        dword ptr [ebp + -0x18], edx                  // 0x0081db84    8955e8
                         xor.s              edx, edx                                      // 0x0081db87    33d2
                         mov.s              dl, bh                                        // 0x0081db89    8ad7
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                  // 0x0081db8b    8955e4
                         mov.s              edx, ebx                                      // 0x0081db8e    8bd3
                         and                edx, 0x000000ff                               // 0x0081db90    81e2ff000000
                         shr                ebx, 0x18                                     // 0x0081db96    c1eb18
                         {disp8} mov        dword ptr [ebp + -0x20], edx                  // 0x0081db99    8955e0
                         {disp8} mov        dword ptr [ebp + -0x38], ebx                  // 0x0081db9c    895dc8
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081db9f    df6dc8
                         shr                eax, 0x18                                     // 0x0081dba2    c1e818
                         {disp8} mov        dword ptr [ebp + -0x38], eax                  // 0x0081dba5    8945c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dba8    894dcc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081dbab    d84d08
                         {disp8} lea        eax, dword ptr [ebp + -0x08]                  // 0x0081dbae    8d45f8
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dbb1    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x34], eax                  // 0x0081dbb4    8945cc
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081dbb7    d84dfc
                         faddp              st(1), st                                     // 0x0081dbba    dec1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0081dbbc    d95dd4
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x0081dbbf    d945d4
                         {disp8} mov        edx, dword ptr [ebp + -0x34]                  // 0x0081dbc2    8b55cc
                         fistp              dword ptr [edx]                               // 0x0081dbc5    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0081dbc7    8b55ec
                         {disp8} mov        eax, dword ptr [ebp + -0x08]                  // 0x0081dbca    8b45f8
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081dbcd    8955c8
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0081dbd0    8b55f0
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dbd3    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dbd6    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081dbd9    8955c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dbdc    894dcc
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081dbdf    d84dfc
                         {disp8} lea        edx, dword ptr [ebp + -0x0c]                  // 0x0081dbe2    8d55f4
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dbe5    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x34], edx                  // 0x0081dbe8    8955cc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081dbeb    d84d08
                         faddp              st(1), st                                     // 0x0081dbee    dec1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0081dbf0    d95dd4
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x0081dbf3    d945d4
                         {disp8} mov        edx, dword ptr [ebp + -0x34]                  // 0x0081dbf6    8b55cc
                         fistp              dword ptr [edx]                               // 0x0081dbf9    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x18]                  // 0x0081dbfb    8b55e8
                         {disp8} mov        ebx, dword ptr [ebp + -0x0c]                  // 0x0081dbfe    8b5df4
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081dc01    8955c8
                         {disp8} mov        edx, dword ptr [ebp + -0x1c]                  // 0x0081dc04    8b55e4
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dc07    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dc0a    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081dc0d    8955c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dc10    894dcc
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081dc13    d84dfc
                         {disp8} lea        edx, dword ptr [ebp + -0x10]                  // 0x0081dc16    8d55f0
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dc19    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x34], edx                  // 0x0081dc1c    8955cc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081dc1f    d84d08
                         faddp              st(1), st                                     // 0x0081dc22    dec1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0081dc24    d95dd4
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x0081dc27    d945d4
                         {disp8} mov        edx, dword ptr [ebp + -0x34]                  // 0x0081dc2a    8b55cc
                         fistp              dword ptr [edx]                               // 0x0081dc2d    db1a
                         {disp8} mov        edx, dword ptr [ebp + -0x10]                  // 0x0081dc2f    8b55f0
                         {disp8} mov        dword ptr [ebp + -0x38], edi                  // 0x0081dc32    897dc8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dc35    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dc38    df6dc8
                         {disp8} mov        dword ptr [ebp + -0x24], edx                  // 0x0081dc3b    8955dc
                         {disp8} mov        edx, dword ptr [ebp + -0x20]                  // 0x0081dc3e    8b55e0
                         {disp8} fmul       dword ptr [ebp + -0x04]                       // 0x0081dc41    d84dfc
                         {disp8} mov        dword ptr [ebp + -0x38], edx                  // 0x0081dc44    8955c8
                         {disp8} mov        dword ptr [ebp + -0x34], ecx                  // 0x0081dc47    894dcc
                         {disp8} fild       qword ptr [ebp + -0x38]                       // 0x0081dc4a    df6dc8
                         {disp8} lea        edx, dword ptr [ebp + 0x08]                   // 0x0081dc4d    8d5508
                         {disp8} mov        dword ptr [ebp + -0x34], edx                  // 0x0081dc50    8955cc
                         {disp8} fmul       dword ptr [ebp + 0x08]                        // 0x0081dc53    d84d08
                         faddp              st(1), st                                     // 0x0081dc56    dec1
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0081dc58    d95dd4
                         {disp8} fld        dword ptr [ebp + -0x2c]                       // 0x0081dc5b    d945d4
                         {disp8} mov        edx, dword ptr [ebp + -0x34]                  // 0x0081dc5e    8b55cc
                         fistp              dword ptr [edx]                               // 0x0081dc61    db1a
                         {disp8} mov        edx, dword ptr [ebp + 0x08]                   // 0x0081dc63    8b5508
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081dc66    d9460c
                         shl                eax, 8                                        // 0x0081dc69    c1e008
                         or.s               eax, ebx                                      // 0x0081dc6c    0bc3
                         {disp8} mov        ebx, dword ptr [ebp + -0x24]                  // 0x0081dc6e    8b5ddc
                         shl                eax, 8                                        // 0x0081dc71    c1e008
                         or.s               eax, ebx                                      // 0x0081dc74    0bc3
                         shl                eax, 8                                        // 0x0081dc76    c1e008
                         or.s               eax, edx                                      // 0x0081dc79    0bc2
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0081dc7b    894614
                         {disp32} fcomp     dword ptr [_near_clipping]                    // 0x0081dc7e    d81de039e800
                         xor.s              edx, edx                                      // 0x0081dc84    33d2
                         fnstsw             ax                                            // 0x0081dc86    dfe0
                         test               ah, 0x01                                      // 0x0081dc88    f6c401
                         {disp8} je         _jmp_addr_0x0081dc92                          // 0x0081dc8b    7405
                         mov                edx, 0x00000020                               // 0x0081dc8d    ba20000000
_jmp_addr_0x0081dc92:    fld                dword ptr [esi]                               // 0x0081dc92    d906
                         {disp8} fcomp      dword ptr [esi + 0x0c]                        // 0x0081dc94    d85e0c
                         fnstsw             ax                                            // 0x0081dc97    dfe0
                         test               ah, 0x41                                      // 0x0081dc99    f6c441
                         {disp8} jne        _jmp_addr_0x0081dca1                          // 0x0081dc9c    7503
                         or                 edx, 0x10                                     // 0x0081dc9e    83ca10
_jmp_addr_0x0081dca1:    {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081dca1    d9460c
                         fchs                                                             // 0x0081dca4    d9e0
                         fcom               dword ptr [esi]                               // 0x0081dca6    d816
                         fnstsw             ax                                            // 0x0081dca8    dfe0
                         test               ah, 0x41                                      // 0x0081dcaa    f6c441
                         {disp8} jne        _jmp_addr_0x0081dcb2                          // 0x0081dcad    7503
                         or                 edx, 8                                        // 0x0081dcaf    83ca08
_jmp_addr_0x0081dcb2:    {disp8} fld        dword ptr [esi + 0x04]                        // 0x0081dcb2    d94604
                         {disp8} fcomp      dword ptr [esi + 0x0c]                        // 0x0081dcb5    d85e0c
                         fnstsw             ax                                            // 0x0081dcb8    dfe0
                         test               ah, 0x41                                      // 0x0081dcba    f6c441
                         {disp8} jne        _jmp_addr_0x0081dcc2                          // 0x0081dcbd    7503
                         or                 edx, 4                                        // 0x0081dcbf    83ca04
_jmp_addr_0x0081dcc2:    {disp8} fcomp      dword ptr [esi + 0x04]                        // 0x0081dcc2    d85e04
                         fnstsw             ax                                            // 0x0081dcc5    dfe0
                         test               ah, 0x41                                      // 0x0081dcc7    f6c441
                         {disp8} jne        _jmp_addr_0x0081dccf                          // 0x0081dcca    7503
                         or                 edx, 2                                        // 0x0081dccc    83ca02
_jmp_addr_0x0081dccf:    cmp.s              edx, ecx                                      // 0x0081dccf    3bd1
                         {disp8} mov        eax, dword ptr [ebp + -0x40]                  // 0x0081dcd1    8b45c0
                         {disp32} mov       dword ptr [eax * 0x4 + 0x00e3b5e0], edx       // 0x0081dcd4    891485e0b5e300
                         {disp32} jne       _jmp_addr_0x0081dd7a                          // 0x0081dcdb    0f8599000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081dce1    d90590a38a00
                         {disp8} fdiv       dword ptr [esi + 0x0c]                        // 0x0081dce7    d8760c
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x0081dcea    d9560c
                         fld                st(0)                                         // 0x0081dced    d9c0
                         fmul               dword ptr [esi]                               // 0x0081dcef    d80e
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081dcf1    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081dcf7    d80df039e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081dcfd    d81598a38a00
                         fst                dword ptr [esi]                               // 0x0081dd03    d916
                         fnstsw             ax                                            // 0x0081dd05    dfe0
                         test               ah, 0x01                                      // 0x0081dd07    f6c401
                         {disp8} je         _jmp_addr_0x0081dd12                          // 0x0081dd0a    7406
                         fstp               st(0)                                         // 0x0081dd0c    ddd8
                         mov                dword ptr [esi], ecx                          // 0x0081dd0e    890e
                         {disp8} jmp        _jmp_addr_0x0081dd27                          // 0x0081dd10    eb15
_jmp_addr_0x0081dd12:    {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081dd12    d81d00abc200
                         fnstsw             ax                                            // 0x0081dd18    dfe0
                         test               ah, 0x41                                      // 0x0081dd1a    f6c441
                         {disp8} jne        _jmp_addr_0x0081dd27                          // 0x0081dd1d    7508
                         {disp32} mov       edx, dword ptr [data_bytes + 0x264b00]        // 0x0081dd1f    8b1500abc200
                         mov                dword ptr [esi], edx                          // 0x0081dd25    8916
_jmp_addr_0x0081dd27:    fld                st(0)                                         // 0x0081dd27    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0081dd29    d84e04
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081dd2c    d80df439e800
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081dd32    d82df439e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081dd38    d81598a38a00
                         {disp8} fst        dword ptr [esi + 0x04]                        // 0x0081dd3e    d95604
                         fnstsw             ax                                            // 0x0081dd41    dfe0
                         test               ah, 0x01                                      // 0x0081dd43    f6c401
                         {disp8} je         _jmp_addr_0x0081dd4f                          // 0x0081dd46    7407
                         fstp               st(0)                                         // 0x0081dd48    ddd8
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0081dd4a    894e04
                         {disp8} jmp        _jmp_addr_0x0081dd64                          // 0x0081dd4d    eb15
_jmp_addr_0x0081dd4f:    {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081dd4f    d81d04abc200
                         fnstsw             ax                                            // 0x0081dd55    dfe0
                         test               ah, 0x41                                      // 0x0081dd57    f6c441
                         {disp8} jne        _jmp_addr_0x0081dd64                          // 0x0081dd5a    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081dd5c    a104abc200
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0081dd61    894604
_jmp_addr_0x0081dd64:    {disp32} fmul      dword ptr [_near_clipping]                    // 0x0081dd64    d80de039e800
                         {disp8} fst        dword ptr [esi + 0x0c]                        // 0x0081dd6a    d9560c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081dd6d    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081dd73    d8e1
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0081dd75    d95e08
                         fstp               st(0)                                         // 0x0081dd78    ddd8
_jmp_addr_0x0081dd7a:    pop                edi                                           // 0x0081dd7a    5f
                         pop                esi                                           // 0x0081dd7b    5e
                         pop                ebx                                           // 0x0081dd7c    5b
                         mov.s              esp, ebp                                      // 0x0081dd7d    8be5
                         pop                ebp                                           // 0x0081dd7f    5d
                         ret                0x0004                                        // 0x0081dd80    c20400
                         nop                                                              // 0x0081dd83    90
                         nop                                                              // 0x0081dd84    90
                         nop                                                              // 0x0081dd85    90
                         nop                                                              // 0x0081dd86    90
                         nop                                                              // 0x0081dd87    90
                         nop                                                              // 0x0081dd88    90
                         nop                                                              // 0x0081dd89    90
                         nop                                                              // 0x0081dd8a    90
                         nop                                                              // 0x0081dd8b    90
                         nop                                                              // 0x0081dd8c    90
                         nop                                                              // 0x0081dd8d    90
                         nop                                                              // 0x0081dd8e    90
                         nop                                                              // 0x0081dd8f    90
_jmp_addr_0x0081dd90:    push               ebp                                           // 0x0081dd90    55
                         mov.s              ebp, esp                                      // 0x0081dd91    8bec
                         sub                esp, 0x38                                     // 0x0081dd93    83ec38
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3eb4]        // 0x0081dd96    a1b49eea00
                         test               eax, eax                                      // 0x0081dd9b    85c0
                         {disp8} mov        dword ptr [ebp + -0x14], ecx                  // 0x0081dd9d    894dec
                         {disp8} je         _jmp_addr_0x0081ddb5                          // 0x0081dda0    7413
                         {disp8} mov        eax, dword ptr [ebp + 0x0c]                   // 0x0081dda2    8b450c
                         push               eax                                           // 0x0081dda5    50
                         {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x0081dda6    8b4508
                         push               eax                                           // 0x0081dda9    50
                         call               _jmp_addr_0x007a1480                          // 0x0081ddaa    e8d136f8ff
                         mov.s              esp, ebp                                      // 0x0081ddaf    8be5
                         pop                ebp                                           // 0x0081ddb1    5d
                         ret                0x0008                                        // 0x0081ddb2    c20800
_jmp_addr_0x0081ddb5:    {disp8} mov        eax, dword ptr [ebp + 0x08]                   // 0x0081ddb5    8b4508
                         push               esi                                           // 0x0081ddb8    56
                         push               edi                                           // 0x0081ddb9    57
                         {disp8} mov        edi, dword ptr [ebp + 0x0c]                   // 0x0081ddba    8b7d0c
                         and                edi, 0x0000ffff                               // 0x0081ddbd    81e7ffff0000
                         and                eax, 0x0000ffff                               // 0x0081ddc3    25ffff0000
                         mov.s              esi, edx                                      // 0x0081ddc8    8bf2
                         {disp8} mov        dword ptr [ebp + -0x18], edi                  // 0x0081ddca    897de8
                         and                esi, 0x0000ffff                               // 0x0081ddcd    81e6ffff0000
                         {disp32} mov       dl, byte ptr [esi * 0x4 + 0x00e3b5e0]         // 0x0081ddd3    8a14b5e0b5e300
                         shl                eax, 5                                        // 0x0081ddda    c1e005
                         shl                edi, 5                                        // 0x0081dddd    c1e705
                         add                eax, 0x00e437e0                               // 0x0081dde0    05e037e400
                         add                edi, 0x00e437e0                               // 0x0081dde5    81c7e037e400
                         test               dl, 0x3f                                      // 0x0081ddeb    f6c23f
                         {disp8} mov        dword ptr [ebp + -0x10], eax                  // 0x0081ddee    8945f0
                         {disp8} mov        dword ptr [ebp + -0x04], edi                  // 0x0081ddf1    897dfc
                         {disp8} jne        _jmp_addr_0x0081de51                          // 0x0081ddf4    755b
                         {disp32} fld       dword ptr [_near_clipping]                    // 0x0081ddf6    d905e039e800
                         shl                esi, 5                                        // 0x0081ddfc    c1e605
                         add                esi, 0x00e437e0                               // 0x0081ddff    81c6e037e400
                         {disp8} fdiv       dword ptr [esi + 0x0c]                        // 0x0081de05    d8760c
                         {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x0081de08    8b5618
                         {disp8} mov        dword ptr [ebp + -0x20], edx                  // 0x0081de0b    8955e0
                         {disp8} mov        edx, dword ptr [esi + 0x1c]                   // 0x0081de0e    8b561c
                         {disp8} mov        dword ptr [ebp + -0x1c], edx                  // 0x0081de11    8955e4
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x0081de14    8b5610
                         {disp8} mov        dword ptr [ebp + -0x28], edx                  // 0x0081de17    8955d8
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0081de1a    8b5614
                         {disp8} mov        dword ptr [ebp + -0x24], edx                  // 0x0081de1d    8955dc
                         {disp8} fstp       dword ptr [ebp + -0x2c]                       // 0x0081de20    d95dd4
                         fld                dword ptr [esi]                               // 0x0081de23    d906
                         {disp32} fsub      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081de25    d825f039e800
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f8]             // 0x0081de2b    d80df839e800
                         {disp8} fmul       dword ptr [ebp + -0x2c]                       // 0x0081de31    d84dd4
                         {disp8} fstp       dword ptr [ebp + -0x38]                       // 0x0081de34    d95dc8
                         {disp32} fld       dword ptr [data_bytes + 0x4bd9f4]             // 0x0081de37    d905f439e800
                         {disp8} fsub       dword ptr [esi + 0x04]                        // 0x0081de3d    d86604
                         {disp8} lea        esi, dword ptr [ebp + -0x38]                  // 0x0081de40    8d75c8
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9fc]             // 0x0081de43    d80dfc39e800
                         {disp8} fmul       dword ptr [ebp + -0x2c]                       // 0x0081de49    d84dd4
                         {disp8} fstp       dword ptr [ebp + -0x34]                       // 0x0081de4c    d95dcc
                         {disp8} jmp        _jmp_addr_0x0081de5a                          // 0x0081de4f    eb09
_jmp_addr_0x0081de51:    shl                esi, 5                                        // 0x0081de51    c1e605
                         add                esi, 0x00e437e0                               // 0x0081de54    81c6e037e400
_jmp_addr_0x0081de5a:    add                ecx, -0x2                                     // 0x0081de5a    83c1fe
                         cmp                ecx, 0x1e                                     // 0x0081de5d    83f91e
                         {disp8} mov        dword ptr [ebp + 0x0c], esi                   // 0x0081de60    89750c
                         {disp8} ja         _jmp_addr_0x0081debc                          // 0x0081de63    7757
                         xor.s              edx, edx                                      // 0x0081de65    33d2
                         {disp32} mov       dl, byte ptr [ecx + 0x0081e194]               // 0x0081de67    8a9194e18100
                         jmp                dword ptr [edx*4 + 0x81e17c]                  // 0x0081de6d    ff24957ce18100
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081de74    d9460c
                         {disp32} fsub      dword ptr [_near_clipping]                    // 0x0081de77    d825e039e800
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081de7d    d9400c
                         {disp32} fsub      dword ptr [_near_clipping]                    // 0x0081de80    d825e039e800
                         {disp8} jmp        _jmp_addr_0x0081dec2                          // 0x0081de86    eb3a
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081de88    d9460c
                         fadd               dword ptr [esi]                               // 0x0081de8b    d806
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081de8d    d9400c
                         fadd               dword ptr [eax]                               // 0x0081de90    d800
                         {disp8} jmp        _jmp_addr_0x0081dec2                          // 0x0081de92    eb2e
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081de94    d9460c
                         fsub               dword ptr [esi]                               // 0x0081de97    d826
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081de99    d9400c
                         fsub               dword ptr [eax]                               // 0x0081de9c    d820
                         {disp8} jmp        _jmp_addr_0x0081dec2                          // 0x0081de9e    eb22
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081dea0    d9460c
                         {disp8} fsub       dword ptr [esi + 0x04]                        // 0x0081dea3    d86604
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081dea6    d9400c
                         {disp8} fsub       dword ptr [eax + 0x04]                        // 0x0081dea9    d86004
                         {disp8} jmp        _jmp_addr_0x0081dec2                          // 0x0081deac    eb14
                         {disp8} fld        dword ptr [esi + 0x0c]                        // 0x0081deae    d9460c
                         {disp8} fadd       dword ptr [esi + 0x04]                        // 0x0081deb1    d84604
                         {disp8} fld        dword ptr [eax + 0x0c]                        // 0x0081deb4    d9400c
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x0081deb7    d84004
                         {disp8} jmp        _jmp_addr_0x0081dec2                          // 0x0081deba    eb06
_jmp_addr_0x0081debc:    {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081debc    d94508
                         {disp8} fld        dword ptr [ebp + 0x08]                        // 0x0081debf    d94508
_jmp_addr_0x0081dec2:    fld                st(1)                                         // 0x0081dec2    d9c1
                         {disp8} lea        ecx, dword ptr [ebp + 0x08]                   // 0x0081dec4    8d4d08
                         fsub               st, st(1)                                     // 0x0081dec7    d8e1
                         push               ebx                                           // 0x0081dec9    53
                         {disp8} mov        dword ptr [ebp + -0x08], ecx                  // 0x0081deca    894df8
                         fdivp              st(2), st                                     // 0x0081decd    defa
                         fstp               st(0)                                         // 0x0081decf    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081ded1    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081ded7    d8e1
                         fld                st(1)                                         // 0x0081ded9    d9c1
                         fmul               dword ptr [eax]                               // 0x0081dedb    d808
                         fld                st(1)                                         // 0x0081dedd    d9c1
                         fmul               dword ptr [esi]                               // 0x0081dedf    d80e
                         faddp              st(1), st                                     // 0x0081dee1    dec1
                         fstp               dword ptr [edi]                               // 0x0081dee3    d91f
                         fld                st(0)                                         // 0x0081dee5    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0081dee7    d84e04
                         fld                st(2)                                         // 0x0081deea    d9c2
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0081deec    d84804
                         faddp              st(1), st                                     // 0x0081deef    dec1
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x0081def1    d95f04
                         fld                st(0)                                         // 0x0081def4    d9c0
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0081def6    d84e0c
                         fld                st(2)                                         // 0x0081def9    d9c2
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x0081defb    d8480c
                         faddp              st(1), st                                     // 0x0081defe    dec1
                         {disp8} fstp       dword ptr [edi + 0x0c]                        // 0x0081df00    d95f0c
                         fld                st(0)                                         // 0x0081df03    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0081df05    d84e18
                         fld                st(2)                                         // 0x0081df08    d9c2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0081df0a    d84818
                         faddp              st(1), st                                     // 0x0081df0d    dec1
                         {disp8} fstp       dword ptr [edi + 0x18]                        // 0x0081df0f    d95f18
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0081df12    d84e1c
                         fld                st(1)                                         // 0x0081df15    d9c1
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0081df17    d8481c
                         faddp              st(1), st                                     // 0x0081df1a    dec1
                         {disp8} fstp       dword ptr [edi + 0x1c]                        // 0x0081df1c    d95f1c
                         {disp32} fmul      dword ptr [__real@437f0000]                   // 0x0081df1f    d80d70b28a00
                         {disp8} fstp       dword ptr [ebp + -0x0c]                       // 0x0081df25    d95df4
                         {disp8} fld        dword ptr [ebp + -0x0c]                       // 0x0081df28    d945f4
                         {disp8} mov        edx, dword ptr [ebp + -0x08]                  // 0x0081df2b    8b55f8
                         fistp              dword ptr [edx]                               // 0x0081df2e    db1a
                         {disp8} mov        esi, dword ptr [esi + 0x10]                   // 0x0081df30    8b7610
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x0081df33    8b4010
                         {disp8} mov        ecx, dword ptr [ebp + 0x08]                   // 0x0081df36    8b4d08
                         mov.s              ebx, eax                                      // 0x0081df39    8bd8
                         and                ebx, 0x00ff0000                               // 0x0081df3b    81e30000ff00
                         imul               ebx, ecx                                      // 0x0081df41    0fafd9
                         mov.s              edi, esi                                      // 0x0081df44    8bfe
                         and                edi, 0x00ff0000                               // 0x0081df46    81e70000ff00
                         mov                edx, 0x000000ff                               // 0x0081df4c    baff000000
                         sub.s              edx, ecx                                      // 0x0081df51    2bd1
                         imul               edi, edx                                      // 0x0081df53    0faffa
                         add.s              ebx, edi                                      // 0x0081df56    03df
                         mov.s              edi, eax                                      // 0x0081df58    8bf8
                         and                edi, 0x000000ff                               // 0x0081df5a    81e7ff000000
                         imul               edi, ecx                                      // 0x0081df60    0faff9
                         mov.s              ecx, esi                                      // 0x0081df63    8bce
                         and                ecx, 0x000000ff                               // 0x0081df65    81e1ff000000
                         imul               ecx, edx                                      // 0x0081df6b    0fafca
                         add.s              edi, ecx                                      // 0x0081df6e    03f9
                         and                edi, 0x0000ff00                               // 0x0081df70    81e700ff0000
                         and                ebx, 0xff0000ff                               // 0x0081df76    81e3ff0000ff
                         or.s               ebx, edi                                      // 0x0081df7c    0bdf
                         mov.s              ecx, eax                                      // 0x0081df7e    8bc8
                         mov.s              edi, esi                                      // 0x0081df80    8bfe
                         and                ecx, 0x0000ff00                               // 0x0081df82    81e100ff0000
                         imul               ecx, dword ptr [ebp + 0x08]                   // 0x0081df88    0faf4d08
                         and                edi, 0x0000ff00                               // 0x0081df8c    81e700ff0000
                         imul               edi, edx                                      // 0x0081df92    0faffa
                         add.s              ecx, edi                                      // 0x0081df95    03cf
                         {disp8} mov        edi, dword ptr [ebp + 0x08]                   // 0x0081df97    8b7d08
                         shr                eax, 8                                        // 0x0081df9a    c1e808
                         and                ecx, 0x00ff0000                               // 0x0081df9d    81e10000ff00
                         shr                esi, 8                                        // 0x0081dfa3    c1ee08
                         or.s               ebx, ecx                                      // 0x0081dfa6    0bd9
                         and                eax, 0x00ff0000                               // 0x0081dfa8    250000ff00
                         and                esi, 0x00ff0000                               // 0x0081dfad    81e60000ff00
                         imul               eax, edi                                      // 0x0081dfb3    0fafc7
                         shr                ebx, 8                                        // 0x0081dfb6    c1eb08
                         imul               esi, edx                                      // 0x0081dfb9    0faff2
                         {disp8} mov        ecx, dword ptr [ebp + 0x0c]                   // 0x0081dfbc    8b4d0c
                         add.s              eax, esi                                      // 0x0081dfbf    03c6
                         and                eax, 0xff000000                               // 0x0081dfc1    25000000ff
                         or.s               ebx, eax                                      // 0x0081dfc6    0bd8
                         {disp8} mov        eax, dword ptr [ebp + -0x04]                  // 0x0081dfc8    8b45fc
                         {disp8} mov        dword ptr [eax + 0x10], ebx                   // 0x0081dfcb    895810
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                   // 0x0081dfce    8b4914
                         {disp8} mov        eax, dword ptr [ebp + -0x10]                  // 0x0081dfd1    8b45f0
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0081dfd4    8b4014
                         mov.s              esi, eax                                      // 0x0081dfd7    8bf0
                         and                esi, 0x00ff0000                               // 0x0081dfd9    81e60000ff00
                         imul               esi, edi                                      // 0x0081dfdf    0faff7
                         mov.s              ebx, ecx                                      // 0x0081dfe2    8bd9
                         and                ebx, 0x00ff0000                               // 0x0081dfe4    81e30000ff00
                         imul               ebx, edx                                      // 0x0081dfea    0fafda
                         add.s              esi, ebx                                      // 0x0081dfed    03f3
                         mov.s              ebx, eax                                      // 0x0081dfef    8bd8
                         and                ebx, 0x000000ff                               // 0x0081dff1    81e3ff000000
                         imul               ebx, edi                                      // 0x0081dff7    0fafdf
                         mov.s              edi, ecx                                      // 0x0081dffa    8bf9
                         and                edi, 0x000000ff                               // 0x0081dffc    81e7ff000000
                         imul               edi, edx                                      // 0x0081e002    0faffa
                         add.s              ebx, edi                                      // 0x0081e005    03df
                         and                esi, 0xff0000ff                               // 0x0081e007    81e6ff0000ff
                         and                ebx, 0x0000ff00                               // 0x0081e00d    81e300ff0000
                         or.s               esi, ebx                                      // 0x0081e013    0bf3
                         mov.s              edi, eax                                      // 0x0081e015    8bf8
                         mov.s              ebx, ecx                                      // 0x0081e017    8bd9
                         and                edi, 0x0000ff00                               // 0x0081e019    81e700ff0000
                         imul               edi, dword ptr [ebp + 0x08]                   // 0x0081e01f    0faf7d08
                         shr                eax, 8                                        // 0x0081e023    c1e808
                         and                ebx, 0x0000ff00                               // 0x0081e026    81e300ff0000
                         imul               ebx, edx                                      // 0x0081e02c    0fafda
                         shr                ecx, 8                                        // 0x0081e02f    c1e908
                         and                eax, 0x00ff0000                               // 0x0081e032    250000ff00
                         imul               eax, dword ptr [ebp + 0x08]                   // 0x0081e037    0faf4508
                         and                ecx, 0x00ff0000                               // 0x0081e03b    81e10000ff00
                         imul               ecx, edx                                      // 0x0081e041    0fafca
                         {disp8} mov        edx, dword ptr [ebp + -0x14]                  // 0x0081e044    8b55ec
                         add.s              edi, ebx                                      // 0x0081e047    03fb
                         and                edi, 0x00ff0000                               // 0x0081e049    81e70000ff00
                         or.s               esi, edi                                      // 0x0081e04f    0bf7
                         add.s              eax, ecx                                      // 0x0081e051    03c1
                         {disp8} mov        ecx, dword ptr [ebp + -0x04]                  // 0x0081e053    8b4dfc
                         shr                esi, 8                                        // 0x0081e056    c1ee08
                         and                eax, 0xff000000                               // 0x0081e059    25000000ff
                         or.s               esi, eax                                      // 0x0081e05e    0bf0
                         {disp8} mov        dword ptr [ecx + 0x14], esi                   // 0x0081e060    897114
                         {disp8} lea        eax, dword ptr [edx + -0x04]                  // 0x0081e063    8d42fc
                         xor.s              esi, esi                                      // 0x0081e066    33f6
                         cmp                eax, 0x1c                                     // 0x0081e068    83f81c
                         pop                ebx                                           // 0x0081e06b    5b
                         {disp8} ja         _jmp_addr_0x0081e0c1                          // 0x0081e06c    7753
                         xor.s              edx, edx                                      // 0x0081e06e    33d2
                         {disp32} mov       dl, byte ptr [eax + 0x0081e1c8]               // 0x0081e070    8a90c8e18100
                         jmp                dword ptr [edx*4 + 0x81e1b4]                  // 0x0081e076    ff2495b4e18100
                         fld                dword ptr [ecx]                               // 0x0081e07d    d901
                         {disp8} fcomp      dword ptr [ecx + 0x0c]                        // 0x0081e07f    d8590c
                         fnstsw             ax                                            // 0x0081e082    dfe0
                         test               ah, 0x41                                      // 0x0081e084    f6c441
                         {disp8} jne        _jmp_addr_0x0081e08e                          // 0x0081e087    7505
                         mov                esi, 0x00000010                               // 0x0081e089    be10000000
_jmp_addr_0x0081e08e:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0081e08e    d9410c
                         fchs                                                             // 0x0081e091    d9e0
                         fcomp              dword ptr [ecx]                               // 0x0081e093    d819
                         fnstsw             ax                                            // 0x0081e095    dfe0
                         test               ah, 0x41                                      // 0x0081e097    f6c441
                         {disp8} jne        _jmp_addr_0x0081e09f                          // 0x0081e09a    7503
                         or                 esi, 8                                        // 0x0081e09c    83ce08
_jmp_addr_0x0081e09f:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0081e09f    d94104
                         {disp8} fcomp      dword ptr [ecx + 0x0c]                        // 0x0081e0a2    d8590c
                         fnstsw             ax                                            // 0x0081e0a5    dfe0
                         test               ah, 0x41                                      // 0x0081e0a7    f6c441
                         {disp8} jne        _jmp_addr_0x0081e0af                          // 0x0081e0aa    7503
                         or                 esi, 4                                        // 0x0081e0ac    83ce04
_jmp_addr_0x0081e0af:    {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0081e0af    d9410c
                         fchs                                                             // 0x0081e0b2    d9e0
                         {disp8} fcomp      dword ptr [ecx + 0x04]                        // 0x0081e0b4    d85904
                         fnstsw             ax                                            // 0x0081e0b7    dfe0
                         test               ah, 0x41                                      // 0x0081e0b9    f6c441
                         {disp8} jne        _jmp_addr_0x0081e0c1                          // 0x0081e0bc    7503
                         or                 esi, 2                                        // 0x0081e0be    83ce02
_jmp_addr_0x0081e0c1:    {disp8} mov        eax, dword ptr [ebp + -0x18]                  // 0x0081e0c1    8b45e8
                         pop                edi                                           // 0x0081e0c4    5f
                         {disp32} mov       dword ptr [eax * 0x4 + 0x00e3b5e0], esi       // 0x0081e0c5    893485e0b5e300
                         test               esi, esi                                      // 0x0081e0cc    85f6
                         pop                esi                                           // 0x0081e0ce    5e
                         {disp32} jne       _jmp_addr_0x0081e176                          // 0x0081e0cf    0f85a1000000
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081e0d5    d90590a38a00
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                        // 0x0081e0db    d8710c
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x0081e0de    d9510c
                         fld                st(0)                                         // 0x0081e0e1    d9c0
                         fmul               dword ptr [ecx]                               // 0x0081e0e3    d809
                         {disp32} fadd      dword ptr [_rdata_float1p0]                   // 0x0081e0e5    d80590a38a00
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f0]             // 0x0081e0eb    d80df039e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081e0f1    d81598a38a00
                         fst                dword ptr [ecx]                               // 0x0081e0f7    d911
                         fnstsw             ax                                            // 0x0081e0f9    dfe0
                         test               ah, 0x01                                      // 0x0081e0fb    f6c401
                         {disp8} je         _jmp_addr_0x0081e10a                          // 0x0081e0fe    740a
                         fstp               st(0)                                         // 0x0081e100    ddd8
                         mov                dword ptr [ecx], 0x00000000                   // 0x0081e102    c70100000000
                         {disp8} jmp        _jmp_addr_0x0081e11f                          // 0x0081e108    eb15
_jmp_addr_0x0081e10a:    {disp32} fcomp     dword ptr [data_bytes + 0x264b00]             // 0x0081e10a    d81d00abc200
                         fnstsw             ax                                            // 0x0081e110    dfe0
                         test               ah, 0x41                                      // 0x0081e112    f6c441
                         {disp8} jne        _jmp_addr_0x0081e11f                          // 0x0081e115    7508
                         {disp32} mov       edx, dword ptr [data_bytes + 0x264b00]        // 0x0081e117    8b1500abc200
                         mov                dword ptr [ecx], edx                          // 0x0081e11d    8911
_jmp_addr_0x0081e11f:    fld                st(0)                                         // 0x0081e11f    d9c0
                         {disp32} fmul      dword ptr [data_bytes + 0x4bd9f4]             // 0x0081e121    d80df439e800
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0081e127    d84904
                         {disp32} fsubr     dword ptr [data_bytes + 0x4bd9f4]             // 0x0081e12a    d82df439e800
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0081e130    d81598a38a00
                         {disp8} fst        dword ptr [ecx + 0x04]                        // 0x0081e136    d95104
                         fnstsw             ax                                            // 0x0081e139    dfe0
                         test               ah, 0x01                                      // 0x0081e13b    f6c401
                         {disp8} je         _jmp_addr_0x0081e14b                          // 0x0081e13e    740b
                         fstp               st(0)                                         // 0x0081e140    ddd8
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x0081e142    c7410400000000
                         {disp8} jmp        _jmp_addr_0x0081e160                          // 0x0081e149    eb15
_jmp_addr_0x0081e14b:    {disp32} fcomp     dword ptr [data_bytes + 0x264b04]             // 0x0081e14b    d81d04abc200
                         fnstsw             ax                                            // 0x0081e151    dfe0
                         test               ah, 0x41                                      // 0x0081e153    f6c441
                         {disp8} jne        _jmp_addr_0x0081e160                          // 0x0081e156    7508
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b04]        // 0x0081e158    a104abc200
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0081e15d    894104
_jmp_addr_0x0081e160:    {disp32} fmul      dword ptr [_near_clipping]                    // 0x0081e160    d80de039e800
                         {disp8} fst        dword ptr [ecx + 0x0c]                        // 0x0081e166    d9510c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0081e169    d90590a38a00
                         fsub               st, st(1)                                     // 0x0081e16f    d8e1
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0081e171    d95908
                         fstp               st(0)                                         // 0x0081e174    ddd8
_jmp_addr_0x0081e176:    mov.s              esp, ebp                                      // 0x0081e176    8be5
                         pop                ebp                                           // 0x0081e178    5d
                         ret                0x0008                                        // 0x0081e179    c20800

// Snippet: jmptbl, [0x0081e17c, 0x0081e194)
.byte 0xae, 0xde, 0x81, 0x00      // 0x0081e17c
.byte 0xa0, 0xde, 0x81, 0x00      // 0x0081e180
.byte 0x88, 0xde, 0x81, 0x00      // 0x0081e184
.byte 0x94, 0xde, 0x81, 0x00      // 0x0081e188
.byte 0x74, 0xde, 0x81, 0x00      // 0x0081e18c
.byte 0xbc, 0xde, 0x81, 0x00      // 0x0081e190

// Snippet: ijmptbl, [0x0081e194, 0x0081e1b3)
.byte 0x00, 0x05, 0x01, 0x05      // 0x0081e194
.byte 0x05, 0x05, 0x02, 0x05      // 0x0081e198
.byte 0x05, 0x05, 0x05, 0x05      // 0x0081e19c
.byte 0x05, 0x05, 0x03, 0x05      // 0x0081e1a0
.byte 0x05, 0x05, 0x05, 0x05      // 0x0081e1a4
.byte 0x05, 0x05, 0x05, 0x05      // 0x0081e1a8
.byte 0x05, 0x05, 0x05, 0x05      // 0x0081e1ac
.byte 0x05, 0x05, 0x04            // 0x0081e1b0

// Snippet: db, [0x0081e1b3, 0x0081e1b4)
.byte 0x90                        // 0x0081e1b3

// Snippet: jmptbl, [0x0081e1b4, 0x0081e1c8)
.byte 0xaf, 0xe0, 0x81, 0x00      // 0x0081e1b4
.byte 0x9f, 0xe0, 0x81, 0x00      // 0x0081e1b8
.byte 0x8e, 0xe0, 0x81, 0x00      // 0x0081e1bc
.byte 0x7d, 0xe0, 0x81, 0x00      // 0x0081e1c0
.byte 0xc1, 0xe0, 0x81, 0x00      // 0x0081e1c4

// Snippet: ijmptbl, [0x0081e1c8, 0x0081e1e5)
.byte 0x00, 0x04, 0x04, 0x04      // 0x0081e1c8
.byte 0x01, 0x04, 0x04, 0x04      // 0x0081e1cc
.byte 0x04, 0x04, 0x04, 0x04      // 0x0081e1d0
.byte 0x02, 0x04, 0x04, 0x04      // 0x0081e1d4
.byte 0x04, 0x04, 0x04, 0x04      // 0x0081e1d8
.byte 0x04, 0x04, 0x04, 0x04      // 0x0081e1dc
.byte 0x04, 0x04, 0x04, 0x04      // 0x0081e1e0
.byte 0x03                        // 0x0081e1e4

// Snippet: db, [0x0081e1e5, 0x0081e1f0)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0081e1e5
.byte 0x90, 0x90, 0x90, 0x90      // 0x0081e1e9
.byte 0x90, 0x90, 0x90            // 0x0081e1ed

