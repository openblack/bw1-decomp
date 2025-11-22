.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern @AutoScroll__9SetupListFb@9
.extern @DeleteString__9SetupListFi@12
.extern @InsertString__9SetupListFiPw@16
.extern _jmp_addr_0x0040afe0
.extern @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20
.extern _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl
.extern ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z
.extern ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z
.extern _jmp_addr_0x004415e0
.extern _jmp_addr_0x004707f0
.extern _HideAll__13DialogBoxBaseFv@0
.extern _jmp_addr_0x0053b4a0
.extern _jmp_addr_0x00549930
.extern _jmp_addr_0x00549a90
.extern _jmp_addr_0x00555cc0
.extern _jmp_addr_0x0059ced0
.extern _jmp_addr_0x0059cee0
.extern _jmp_addr_0x0059cf20
.extern _jmp_addr_0x0059cf80
.extern _jmp_addr_0x005d89f0
.extern _jmp_addr_0x005ebd20
.extern _jmp_addr_0x005f5200
.extern _jmp_addr_0x005f5cf0
.extern _jmp_addr_0x005fa680
.extern _jmp_addr_0x00713a80
.extern _jmp_addr_0x00713b30
.extern _jmp_addr_0x00713e00
.extern _jmp_addr_0x00714270
.extern _jmp_addr_0x00719750
.extern _jmp_addr_0x007358f0
.extern _jmp_addr_0x00735980
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _LHLoadData__FPcPvUlPUl
.extern _atexit
.extern _wcscpy
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern ??2@YAPAXI@Z
.extern _fopen
.extern _fclose
.extern __chkstk
.extern _fread
.extern _qsort
.extern ___nw__FUl
.extern _jmp_addr_0x007de090
.extern _jmp_addr_0x007ded50
.extern ?New@UniqueKeyHeap@@QAEPAXH@Z
.extern _jmp_addr_0x007e1890
.extern ?DeltaPos@LHMouse@@QAEXXZ
.extern @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x0081b370
.extern _Random__Fff@8
.extern ?StartFrame@LH3DRender@@SAXXZ
.extern ?FinishFrame@LH3DRender@@QAEXXZ
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z
.extern _CHAR2WCHAR__FPc
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern ?Create@LH3DSprite@@SAPAV1@JH@Z
.extern ?Release@LH3DSprite@@QAEXXZ
.extern ?Draw@LH3DSprite@@QAEXXZ

.globl _jmp_addr_0x005f6a70
.globl _jmp_addr_0x005f6b80
.globl _jmp_addr_0x005f6d80
.globl _jmp_addr_0x005f7d10
.globl _jmp_addr_0x005f80c0
.globl ?__nw@LocalBase@@SAPAV1@K@Z
.globl _jmp_addr_0x005f8810
.globl _jmp_addr_0x005f8850
.globl _jmp_addr_0x005f8870
.globl _jmp_addr_0x005fa000
.globl _jmp_addr_0x005fa070

.globl _globl_ct_0x005f8760
.globl _globl_ct_0x005f8890
.globl _globl_ct_0x005f88c0
.globl _globl_ct_0x005f8910
.globl _globl_ct_0x005fa1c0
.globl _globl_ct_0x005fa1e0
.globl _globl_ct_0x005fa210

start_0x005f6a70_0x005fa480:
// Snippet: asm, [0x005f6a70, 0x005fa458)
_jmp_addr_0x005f6a70:    {disp32} mov       eax, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6a70    a1b004d200
                         push               esi                                            // 0x005f6a75    56
                         mov.s              esi, ecx                                       // 0x005f6a76    8bf1
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005f6a78    8b4804
                         test               ecx, ecx                                       // 0x005f6a7b    85c9
                         {disp8} je         _jmp_addr_0x005f6ab4                           // 0x005f6a7d    7435
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4c8]         // 0x005f6a7f    a1c804d200
                         test               eax, eax                                       // 0x005f6a84    85c0
                         {disp32} je        _jmp_addr_0x005f6b67                           // 0x005f6a86    0f84db000000
                         mov.s              ecx, esi                                       // 0x005f6a8c    8bce
                         call               _jmp_addr_0x005f80c0                           // 0x005f6a8e    e82d160000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6a93    8b0db004d200
                         mov                edx, dword ptr [ecx]                           // 0x005f6a99    8b11
                         call               dword ptr [edx + 8]                            // 0x005f6a9b    ff5208
                         mov                ecx, 0x00d4f128                                // 0x005f6a9e    b928f1d400
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], 0x00000000  // 0x005f6aa3    c705c804d20000000000
                         call               _jmp_addr_0x00719750                           // 0x005f6aad    e89e2c1200
                         pop                esi                                            // 0x005f6ab2    5e
                         ret                                                               // 0x005f6ab3    c3
_jmp_addr_0x005f6ab4:    cmp                dword ptr [data_bytes + 0x35a4d8], 0x01        // 0x005f6ab4    833dd804d20001
                         {disp8} jne        _jmp_addr_0x005f6b29                           // 0x005f6abb    756c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6abd    8b0dac04d200
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x005f6ac3    8b4104
                         test               eax, eax                                       // 0x005f6ac6    85c0
                         {disp8} je         _jmp_addr_0x005f6ada                           // 0x005f6ac8    7410
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4c8]         // 0x005f6aca    a1c804d200
                         test               eax, eax                                       // 0x005f6acf    85c0
                         {disp8} je         _jmp_addr_0x005f6ada                           // 0x005f6ad1    7407
                         push               eax                                            // 0x005f6ad3    50
                         call               dword ptr [rdata_bytes + 0x680]                // 0x005f6ad4    ff1580968a00
_jmp_addr_0x005f6ada:    mov.s              ecx, esi                                       // 0x005f6ada    8bce
                         call               _jmp_addr_0x005f80c0                           // 0x005f6adc    e8df150000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6ae1    a1ac04d200
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], 0x00000000  // 0x005f6ae6    c705c804d20000000000
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005f6af0    8b4804
                         test               ecx, ecx                                       // 0x005f6af3    85c9
                         {disp8} je         _jmp_addr_0x005f6b67                           // 0x005f6af5    7470
                         {disp32} mov       eax, dword ptr [eax + 0x00000088]              // 0x005f6af7    8b8088000000
                         mov                eax, dword ptr [eax]                           // 0x005f6afd    8b00
                         push               0x0                                            // 0x005f6aff    6a00
                         push               eax                                            // 0x005f6b01    50
                         push               0x0000138b                                     // 0x005f6b02    688b130000
                         call               dword ptr [rdata_bytes + 0x490]                // 0x005f6b07    ff1590948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6b0d    8b0dac04d200
                         add                esp, 0x0c                                      // 0x005f6b13    83c40c
                         push               eax                                            // 0x005f6b16    50
                         call               dword ptr [rdata_bytes + 0x54c]                // 0x005f6b17    ff154c958a00
                         mov                ecx, 0x00d4f128                                // 0x005f6b1d    b928f1d400
                         call               _jmp_addr_0x00719750                           // 0x005f6b22    e8292c1200
                         pop                esi                                            // 0x005f6b27    5e
                         ret                                                               // 0x005f6b28    c3
_jmp_addr_0x005f6b29:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0x678]           // 0x005f6b29    8b0d78968a00
                         mov                eax, dword ptr [ecx]                           // 0x005f6b2f    8b01
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f6b31    8b0da804d200
                         add                ecx, 0x00000094                                // 0x005f6b37    81c194000000
                         push               ecx                                            // 0x005f6b3d    51
                         push               eax                                            // 0x005f6b3e    50
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f6b3f    ff157c968a00
                         add                esp, 0x08                                      // 0x005f6b45    83c408
                         test               eax, eax                                       // 0x005f6b48    85c0
                         {disp8} je         _jmp_addr_0x005f6b67                           // 0x005f6b4a    741b
                         cmp                dword ptr [eax + 0x74], 0x01                   // 0x005f6b4c    83787401
                         {disp8} jbe        _jmp_addr_0x005f6b67                           // 0x005f6b50    7615
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x678]           // 0x005f6b52    8b1578968a00
                         mov                eax, dword ptr [edx]                           // 0x005f6b58    8b02
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f6b5a    8b0da804d200
                         push               eax                                            // 0x005f6b60    50
                         call               dword ptr [rdata_bytes + 0x684]                // 0x005f6b61    ff1584968a00
_jmp_addr_0x005f6b67:    mov                ecx, 0x00d4f128                                // 0x005f6b67    b928f1d400
                         call               _jmp_addr_0x00719750                           // 0x005f6b6c    e8df2b1200
                         pop                esi                                            // 0x005f6b71    5e
                         ret                                                               // 0x005f6b72    c3
                         nop                                                               // 0x005f6b73    90
                         nop                                                               // 0x005f6b74    90
                         nop                                                               // 0x005f6b75    90
                         nop                                                               // 0x005f6b76    90
                         nop                                                               // 0x005f6b77    90
                         nop                                                               // 0x005f6b78    90
                         nop                                                               // 0x005f6b79    90
                         nop                                                               // 0x005f6b7a    90
                         nop                                                               // 0x005f6b7b    90
                         nop                                                               // 0x005f6b7c    90
                         nop                                                               // 0x005f6b7d    90
                         nop                                                               // 0x005f6b7e    90
                         nop                                                               // 0x005f6b7f    90
_jmp_addr_0x005f6b80:    sub                esp, 0x000008e0                                // 0x005f6b80    81ece0080000
                         push               ebx                                            // 0x005f6b86    53
                         mov.s              ebx, ecx                                       // 0x005f6b87    8bd9
                         {disp8} mov        ecx, dword ptr [ebx + 0x2c]                    // 0x005f6b89    8b4b2c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]              // 0x005f6b8c    8b8148020000
                         test               eax, eax                                       // 0x005f6b92    85c0
                         push               esi                                            // 0x005f6b94    56
                         {disp32} jl        _jmp_addr_0x005f6cda                           // 0x005f6b95    0f8c3f010000
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f6b9b    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f6bae                           // 0x005f6ba1    7d0b
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]              // 0x005f6ba3    8b8964020000
                         mov                eax, dword ptr [ecx + eax * 0x4]               // 0x005f6ba9    8b0481
                         {disp8} jmp        _jmp_addr_0x005f6bb0                           // 0x005f6bac    eb02
_jmp_addr_0x005f6bae:    xor.s              eax, eax                                       // 0x005f6bae    33c0
_jmp_addr_0x005f6bb0:    {disp8} mov        dx, word ptr [eax + 0x58]                      // 0x005f6bb0    668b5058
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x620]           // 0x005f6bb4    8b0d20968a00
                         {disp8} mov        dword ptr [esp + 0x70], ecx                    // 0x005f6bba    894c2470
                         or                 ecx, 0xffffffff                                // 0x005f6bbe    83c9ff
                         push               ebp                                            // 0x005f6bc1    55
                         push               edi                                            // 0x005f6bc2    57
                         {disp8} lea        edi, dword ptr [eax + 0x5a]                    // 0x005f6bc3    8d785a
                         xor.s              eax, eax                                       // 0x005f6bc6    33c0
                         repne scasb                                                       // 0x005f6bc8    f2ae
                         not                ecx                                            // 0x005f6bca    f7d1
                         sub.s              edi, ecx                                       // 0x005f6bcc    2bf9
                         mov.s              eax, ecx                                       // 0x005f6bce    8bc1
                         shr                ecx, 2                                         // 0x005f6bd0    c1e902
                         mov.s              esi, edi                                       // 0x005f6bd3    8bf7
                         {disp8} lea        ebp, dword ptr [esp + 0x12]                    // 0x005f6bd5    8d6c2412
                         mov.s              edi, ebp                                       // 0x005f6bd9    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f6bdb    f3a5
                         mov.s              ecx, eax                                       // 0x005f6bdd    8bc8
                         and                ecx, 0x03                                      // 0x005f6bdf    83e103
                         rep movsb                                                         // 0x005f6be2    f3a4
                         or                 ecx, 0xffffffff                                // 0x005f6be4    83c9ff
                         xor.s              eax, eax                                       // 0x005f6be7    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x12]                    // 0x005f6be9    8d7c2412
                         {disp8} mov        word ptr [esp + 0x10], dx                      // 0x005f6bed    6689542410
                         repne scasb                                                       // 0x005f6bf2    f2ae
                         not                ecx                                            // 0x005f6bf4    f7d1
                         dec                ecx                                            // 0x005f6bf6    49
                         add                ecx, 0x3                                       // 0x005f6bf7    83c103
                         {disp8} je         _jmp_addr_0x005f6c04                           // 0x005f6bfa    7408
                         {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005f6bfc    8d542410
                         test               edx, edx                                       // 0x005f6c00    85d2
                         {disp8} je         _jmp_addr_0x005f6c30                           // 0x005f6c02    742c
_jmp_addr_0x005f6c04:    test               ecx, ecx                                       // 0x005f6c04    85c9
                         {disp8} mov        dword ptr [esp + 0x7c], 0x00000004             // 0x005f6c06    c744247c04000000
                         {disp32} mov       dword ptr [esp + 0x00000080], ecx              // 0x005f6c0e    898c2480000000
                         {disp8} je         _jmp_addr_0x005f6c30                           // 0x005f6c15    7419
                         mov.s              eax, ecx                                       // 0x005f6c17    8bc1
                         shr                ecx, 2                                         // 0x005f6c19    c1e902
                         {disp8} lea        esi, dword ptr [esp + 0x10]                    // 0x005f6c1c    8d742410
                         {disp32} lea       edi, dword ptr [esp + 0x00000084]              // 0x005f6c20    8dbc2484000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f6c27    f3a5
                         mov.s              ecx, eax                                       // 0x005f6c29    8bc8
                         and                ecx, 0x03                                      // 0x005f6c2b    83e103
                         rep movsb                                                         // 0x005f6c2e    f3a4
_jmp_addr_0x005f6c30:    {disp32} mov       edx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f6c30    8b15d404d200
                         {disp8} lea        ecx, dword ptr [esp + 0x78]                    // 0x005f6c36    8d4c2478
                         push               ecx                                            // 0x005f6c3a    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6c3b    8b0db004d200
                         push               edx                                            // 0x005f6c41    52
                         call               dword ptr [rdata_bytes + 0x640]                // 0x005f6c42    ff1540968a00
                         test               eax, eax                                       // 0x005f6c48    85c0
                         pop                edi                                            // 0x005f6c4a    5f
                         pop                ebp                                            // 0x005f6c4b    5d
                         {disp8} jne        _jmp_addr_0x005f6c7d                           // 0x005f6c4c    752f
                         {disp8} mov        ecx, dword ptr [ebx + 0x38]                    // 0x005f6c4e    8b4b38
                         mov                eax, dword ptr [ecx]                           // 0x005f6c51    8b01
                         push               0x1                                            // 0x005f6c53    6a01
                         call               dword ptr [eax + 8]                            // 0x005f6c55    ff5008
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6c58    a1ac04d200
                         test               eax, eax                                       // 0x005f6c5d    85c0
                         {disp8} je         _jmp_addr_0x005f6c68                           // 0x005f6c5f    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005f6c61    8b4804
                         test               ecx, ecx                                       // 0x005f6c64    85c9
                         {disp8} jne        _jmp_addr_0x005f6cda                           // 0x005f6c66    7572
_jmp_addr_0x005f6c68:    {disp8} mov        ecx, dword ptr [ebx + 0x48]                    // 0x005f6c68    8b4b48
                         {disp8} mov        edx, dword ptr [ebx + 0x2c]                    // 0x005f6c6b    8b532c
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x005f6c6e    8b4114
                         pop                esi                                            // 0x005f6c71    5e
                         {disp8} mov        dword ptr [edx + 0x14], eax                    // 0x005f6c72    894214
                         pop                ebx                                            // 0x005f6c75    5b
                         add                esp, 0x000008e0                                // 0x005f6c76    81c4e0080000
                         ret                                                               // 0x005f6c7c    c3
_jmp_addr_0x005f6c7d:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000da2  // 0x005f6c7d    813dac7cd100a20d0000
                         {disp8} ja         _jmp_addr_0x005f6c90                           // 0x005f6c87    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f6c89    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f6c9c                           // 0x005f6c8e    eb0c
_jmp_addr_0x005f6c90:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]         // 0x005f6c90    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a398]              // 0x005f6c96    8d8198a30000
_jmp_addr_0x005f6c9c:    {disp8} mov        esi, dword ptr [eax + 0x08]                    // 0x005f6c9c    8b7008
                         call               dword ptr [__imp__GetCode_LHLogger__SAKXZ@4]   // 0x005f6c9f    ff15a4938a00
                         push               eax                                            // 0x005f6ca5    50
                         push               esi                                            // 0x005f6ca6    56
                         call               dword ptr [__imp__GetText_LHLogger__SAPADXZ@4] // 0x005f6ca7    ff15a8938a00
                         push               eax                                            // 0x005f6cad    50
                         call               _CHAR2WCHAR__FPc                               // 0x005f6cae    e8ed932300
                         add                esp, 0x04                                      // 0x005f6cb3    83c404
                         push               eax                                            // 0x005f6cb6    50
                         {disp32} lea       edx, dword ptr [esp + 0x000000f0]              // 0x005f6cb7    8d9424f0000000
                         push               0x00bea638                                     // 0x005f6cbe    6838a6be00
                         push               edx                                            // 0x005f6cc3    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f6cc4    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x005f6cca    8b4b04
                         add                esp, 0x14                                      // 0x005f6ccd    83c414
                         push               0x0                                            // 0x005f6cd0    6a00
                         push               0x0                                            // 0x005f6cd2    6a00
                         push               eax                                            // 0x005f6cd4    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f6cd5    e8b6a4e1ff
_jmp_addr_0x005f6cda:    pop                esi                                            // 0x005f6cda    5e
                         pop                ebx                                            // 0x005f6cdb    5b
                         add                esp, 0x000008e0                                // 0x005f6cdc    81c4e0080000
                         ret                                                               // 0x005f6ce2    c3
                         nop                                                               // 0x005f6ce3    90
                         nop                                                               // 0x005f6ce4    90
                         nop                                                               // 0x005f6ce5    90
                         nop                                                               // 0x005f6ce6    90
                         nop                                                               // 0x005f6ce7    90
                         nop                                                               // 0x005f6ce8    90
                         nop                                                               // 0x005f6ce9    90
                         nop                                                               // 0x005f6cea    90
                         nop                                                               // 0x005f6ceb    90
                         nop                                                               // 0x005f6cec    90
                         nop                                                               // 0x005f6ced    90
                         nop                                                               // 0x005f6cee    90
                         nop                                                               // 0x005f6cef    90
                         push               esi                                            // 0x005f6cf0    56
                         push               edi                                            // 0x005f6cf1    57
                         mov.s              edi, ecx                                       // 0x005f6cf2    8bf9
                         {disp32} mov       eax, dword ptr [edi + 0x00000088]              // 0x005f6cf4    8b8788000000
                         test               eax, eax                                       // 0x005f6cfa    85c0
                         {disp8} jne        _jmp_addr_0x005f6d2a                           // 0x005f6cfc    752c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36baf4]         // 0x005f6cfe    a1f41ad300
                         {disp8} mov        cl, byte ptr [eax + 0x7c]                      // 0x005f6d03    8a487c
                         test               cl, cl                                         // 0x005f6d06    84c9
                         {disp8} jne        _jmp_addr_0x005f6d2a                           // 0x005f6d08    7520
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x005f6d0a    8b74240c
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005f6d0e    8b4c2410
                         push               0x0                                            // 0x005f6d12    6a00
                         push               0x0                                            // 0x005f6d14    6a00
                         push               esi                                            // 0x005f6d16    56
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f6d17    e874a4e1ff
                         push               esi                                            // 0x005f6d1c    56
                         call               ??3@YAXPAX@Z                                   // 0x005f6d1d    e876811b00
                         add                esp, 0x04                                      // 0x005f6d22    83c404
                         pop                edi                                            // 0x005f6d25    5f
                         pop                esi                                            // 0x005f6d26    5e
                         ret                0x0008                                         // 0x005f6d27    c20800
_jmp_addr_0x005f6d2a:    {disp8} mov        esi, dword ptr [esp + 0x0c]                    // 0x005f6d2a    8b74240c
                         test               esi, esi                                       // 0x005f6d2e    85f6
                         {disp8} je         _jmp_addr_0x005f6d78                           // 0x005f6d30    7446
                         push               0x8                                            // 0x005f6d32    6a08
                         call               ??2@YAPAXI@Z                                   // 0x005f6d34    e8b5f71c00
                         add                esp, 0x04                                      // 0x005f6d39    83c404
                         test               eax, eax                                       // 0x005f6d3c    85c0
                         {disp8} je         _jmp_addr_0x005f6d78                           // 0x005f6d3e    7438
                         {disp8} mov        dword ptr [eax + 0x04], esi                    // 0x005f6d40    897004
                         mov                dword ptr [eax], 0x00000000                    // 0x005f6d43    c70000000000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000084]              // 0x005f6d49    8b8f84000000
                         test               ecx, ecx                                       // 0x005f6d4f    85c9
                         {disp8} je         _jmp_addr_0x005f6d6c                           // 0x005f6d51    7419
_jmp_addr_0x005f6d53:    mov.s              edx, ecx                                       // 0x005f6d53    8bd1
                         mov                ecx, dword ptr [ecx]                           // 0x005f6d55    8b09
                         test               ecx, ecx                                       // 0x005f6d57    85c9
                         {disp8} jne        _jmp_addr_0x005f6d53                           // 0x005f6d59    75f8
                         test               edx, edx                                       // 0x005f6d5b    85d2
                         {disp8} je         _jmp_addr_0x005f6d6c                           // 0x005f6d5d    740d
                         mov                dword ptr [edx], eax                           // 0x005f6d5f    8902
                         {disp32} inc       dword ptr [edi + 0x00000088]                   // 0x005f6d61    ff8788000000
                         pop                edi                                            // 0x005f6d67    5f
                         pop                esi                                            // 0x005f6d68    5e
                         ret                0x0008                                         // 0x005f6d69    c20800
_jmp_addr_0x005f6d6c:    {disp32} mov       dword ptr [edi + 0x00000084], eax              // 0x005f6d6c    898784000000
                         {disp32} inc       dword ptr [edi + 0x00000088]                   // 0x005f6d72    ff8788000000
_jmp_addr_0x005f6d78:    pop                edi                                            // 0x005f6d78    5f
                         pop                esi                                            // 0x005f6d79    5e
                         ret                0x0008                                         // 0x005f6d7a    c20800
                         nop                                                               // 0x005f6d7d    90
                         nop                                                               // 0x005f6d7e    90
                         nop                                                               // 0x005f6d7f    90
_jmp_addr_0x005f6d80:    mov                eax, 0x0000549c                                // 0x005f6d80    b89c540000
                         call               __chkstk                                       // 0x005f6d85    e826011d00
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x620]           // 0x005f6d8a    a120968a00
                         push               ebx                                            // 0x005f6d8f    53
                         push               ebp                                            // 0x005f6d90    55
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x648]           // 0x005f6d91    8b2d48968a00
                         push               esi                                            // 0x005f6d97    56
                         xor.s              esi, esi                                       // 0x005f6d98    33f6
                         push               edi                                            // 0x005f6d9a    57
                         mov.s              ebx, ecx                                       // 0x005f6d9b    8bd9
                         {disp8} mov        dword ptr [esp + 0x70], eax                    // 0x005f6d9d    89442470
                         xor.s              eax, eax                                       // 0x005f6da1    33c0
                         {disp8} mov        dword ptr [esp + 0x74], esi                    // 0x005f6da3    89742474
                         {disp8} mov        dword ptr [esp + 0x78], esi                    // 0x005f6da7    89742478
                         mov                ecx, 0x00000019                                // 0x005f6dab    b919000000
                         {disp8} lea        edi, dword ptr [esp + 0x7c]                    // 0x005f6db0    8d7c247c
                         rep stosd                                                         // 0x005f6db4    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f6db6    8b0da804d200
                         stosw                                                             // 0x005f6dbc    66ab
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x444]           // 0x005f6dbe    8b3d44948a00
                         {disp32} mov       byte ptr [esp + 0x00000484], 0x00              // 0x005f6dc4    c684248404000000
                         {disp8} mov        dword ptr [esp + 0x2c], esi                    // 0x005f6dcc    8974242c
                         {disp8} mov        dword ptr [esp + 0x50], esi                    // 0x005f6dd0    89742450
                         cmp                dword ptr [ecx + 0x04], esi                    // 0x005f6dd4    397104
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x005f6dd7    895c2410
                         {disp8} je         _jmp_addr_0x005f6df4                           // 0x005f6ddb    7417
                         call               edi                                            // 0x005f6ddd    ffd7
                         test               eax, eax                                       // 0x005f6ddf    85c0
                         {disp8} jne        _jmp_addr_0x005f6df4                           // 0x005f6de1    7511
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f6de3    8b0da804d200
                         call               ebp                                            // 0x005f6de9    ffd5
                         test               eax, eax                                       // 0x005f6deb    85c0
                         {disp8} mov        byte ptr [esp + 0x1b], 0x01                    // 0x005f6ded    c644241b01
                         {disp8} jne        _jmp_addr_0x005f6df9                           // 0x005f6df2    7505
_jmp_addr_0x005f6df4:    {disp8} mov        byte ptr [esp + 0x1b], 0x00                    // 0x005f6df4    c644241b00
_jmp_addr_0x005f6df9:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6df9    8b0db004d200
                         cmp                dword ptr [ecx + 0x04], esi                    // 0x005f6dff    397104
                         {disp8} je         _jmp_addr_0x005f6e1b                           // 0x005f6e02    7417
                         call               edi                                            // 0x005f6e04    ffd7
                         test               eax, eax                                       // 0x005f6e06    85c0
                         {disp8} jne        _jmp_addr_0x005f6e1b                           // 0x005f6e08    7511
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6e0a    8b0db004d200
                         call               ebp                                            // 0x005f6e10    ffd5
                         test               eax, eax                                       // 0x005f6e12    85c0
                         {disp8} mov        byte ptr [esp + 0x1a], 0x01                    // 0x005f6e14    c644241a01
                         {disp8} jne        _jmp_addr_0x005f6e20                           // 0x005f6e19    7505
_jmp_addr_0x005f6e1b:    {disp8} mov        byte ptr [esp + 0x1a], 0x00                    // 0x005f6e1b    c644241a00
_jmp_addr_0x005f6e20:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6e20    8b0dac04d200
                         cmp                dword ptr [ecx + 0x04], esi                    // 0x005f6e26    397104
                         {disp8} je         _jmp_addr_0x005f6e41                           // 0x005f6e29    7416
                         call               edi                                            // 0x005f6e2b    ffd7
                         test               eax, eax                                       // 0x005f6e2d    85c0
                         {disp8} jne        _jmp_addr_0x005f6e41                           // 0x005f6e2f    7510
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6e31    8b0dac04d200
                         call               ebp                                            // 0x005f6e37    ffd5
                         test               eax, eax                                       // 0x005f6e39    85c0
                         {disp8} je         _jmp_addr_0x005f6e41                           // 0x005f6e3b    7404
                         mov                al, 0x01                                       // 0x005f6e3d    b001
                         {disp8} jmp        _jmp_addr_0x005f6e43                           // 0x005f6e3f    eb02
_jmp_addr_0x005f6e41:    xor.s              al, al                                         // 0x005f6e41    32c0
_jmp_addr_0x005f6e43:    {disp8} mov        cl, byte ptr [esp + 0x1b]                      // 0x005f6e43    8a4c241b
                         test               cl, cl                                         // 0x005f6e47    84c9
                         {disp8} je         _jmp_addr_0x005f6e53                           // 0x005f6e49    7408
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x35a4a8]         // 0x005f6e4b    8b2da804d200
                         {disp8} jmp        _jmp_addr_0x005f6e71                           // 0x005f6e51    eb1e
_jmp_addr_0x005f6e53:    {disp8} mov        cl, byte ptr [esp + 0x1a]                      // 0x005f6e53    8a4c241a
                         test               cl, cl                                         // 0x005f6e57    84c9
                         {disp8} je         _jmp_addr_0x005f6e63                           // 0x005f6e59    7408
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x35a4b0]         // 0x005f6e5b    8b2db004d200
                         {disp8} jmp        _jmp_addr_0x005f6e71                           // 0x005f6e61    eb0e
_jmp_addr_0x005f6e63:    test               al, al                                         // 0x005f6e63    84c0
                         {disp32} je        _jmp_addr_0x005f7cfc                           // 0x005f6e65    0f84910e0000
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6e6b    8b2dac04d200
_jmp_addr_0x005f6e71:    {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x005f6e71    8b5500
                         xor.s              edi, edi                                       // 0x005f6e74    33ff
                         push               edi                                            // 0x005f6e76    57
                         push               edi                                            // 0x005f6e77    57
                         mov.s              ecx, ebp                                       // 0x005f6e78    8bcd
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                    // 0x005f6e7a    896c241c
                         call               dword ptr [edx + 0xc]                          // 0x005f6e7e    ff520c
                         mov.s              esi, eax                                       // 0x005f6e81    8bf0
                         mov                ecx, dword ptr [esi]                           // 0x005f6e83    8b0e
                         xor.s              eax, eax                                       // 0x005f6e85    33c0
                         {disp8} mov        ax, word ptr [ecx + 0x02]                      // 0x005f6e87    668b4102
                         and                eax, 0x0000ffff                                // 0x005f6e8b    25ffff0000
                         cmp                eax, 0x00000fab                                // 0x005f6e90    3dab0f0000
                         {disp32} jg        _jmp_addr_0x005f79a1                           // 0x005f6e95    0f8f060b0000
                         {disp32} je        _jmp_addr_0x005f786c                           // 0x005f6e9b    0f84cb090000
                         cmp                eax, 0x00000fa2                                // 0x005f6ea1    3da20f0000
                         {disp32} jg        _jmp_addr_0x005f7349                           // 0x005f6ea6    0f8f9d040000
                         {disp32} je        _jmp_addr_0x005f71b8                           // 0x005f6eac    0f8406030000
                         sub                eax, 0x000007d4                                // 0x005f6eb2    2dd4070000
                         {disp32} je        _jmp_addr_0x005f7106                           // 0x005f6eb7    0f8449020000
                         sub                eax, 0x000007cc                                // 0x005f6ebd    2dcc070000
                         {disp32} je        _jmp_addr_0x005f6fce                           // 0x005f6ec2    0f8406010000
                         dec                eax                                            // 0x005f6ec8    48
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f6ec9    0f852d0e0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f6ecf    a1ac04d200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]         // 0x005f6ed4    8b0df41ad300
                         {disp8} mov        esi, dword ptr [ecx + 0x2c]                    // 0x005f6eda    8b712c
                         {disp32} lea       edi, dword ptr [eax + 0x0000010c]              // 0x005f6edd    8db80c010000
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f6ee3    8b8650020000
                         test               eax, eax                                       // 0x005f6ee9    85c0
                         {disp8} jle        _jmp_addr_0x005f6f00                           // 0x005f6eeb    7e13
_jmp_addr_0x005f6eed:    dec                eax                                            // 0x005f6eed    48
                         push               eax                                            // 0x005f6eee    50
                         mov.s              ecx, esi                                       // 0x005f6eef    8bce
                         call               @DeleteString__9SetupListFi@12                 // 0x005f6ef1    e86a3ee1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f6ef6    8b8650020000
                         test               eax, eax                                       // 0x005f6efc    85c0
                         {disp8} jg         _jmp_addr_0x005f6eed                           // 0x005f6efe    7fed
_jmp_addr_0x005f6f00:    mov                edi, dword ptr [edi]                           // 0x005f6f00    8b3f
                         test               edi, edi                                       // 0x005f6f02    85ff
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x005f6f04    897c2414
                         {disp32} je        _jmp_addr_0x005f7cfc                           // 0x005f6f08    0f84ee0d0000
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x3d8]           // 0x005f6f0e    8b2dd8938a00
_jmp_addr_0x005f6f14:    {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005f6f14    8b542414
                         {disp8} mov        edi, dword ptr [edx + 0x04]                    // 0x005f6f18    8b7a04
                         {disp32} mov       eax, dword ptr [edi + 0x000000ec]              // 0x005f6f1b    8b87ec000000
                         test               eax, eax                                       // 0x005f6f21    85c0
                         {disp8} je         _jmp_addr_0x005f6f39                           // 0x005f6f23    7414
                         push               0x00001901                                     // 0x005f6f25    6801190000
                         mov                ecx, 0x00d17ca8                                // 0x005f6f2a    b9a87cd100
                         call               _jmp_addr_0x004707f0                           // 0x005f6f2f    e8bc98e7ff
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f6f34    8b4008
                         {disp8} jmp        _jmp_addr_0x005f6f3e                           // 0x005f6f37    eb05
_jmp_addr_0x005f6f39:    mov                eax, 0x00c4cd30                                // 0x005f6f39    b830cdc400
_jmp_addr_0x005f6f3e:    {disp8} mov        ecx, dword ptr [edi + 0x74]                    // 0x005f6f3e    8b4f74
                         push               eax                                            // 0x005f6f41    50
                         push               ecx                                            // 0x005f6f42    51
                         {disp8} lea        eax, dword ptr [edi + 0x04]                    // 0x005f6f43    8d4704
                         push               eax                                            // 0x005f6f46    50
                         call               _CHAR2WCHAR__FPc                               // 0x005f6f47    e854912300
                         add                esp, 0x04                                      // 0x005f6f4c    83c404
                         push               eax                                            // 0x005f6f4f    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00001498]              // 0x005f6f50    8d8c2498140000
                         push               0x00bf3cb4                                     // 0x005f6f57    68b43cbf00
                         push               ecx                                            // 0x005f6f5c    51
                         call               ebp                                            // 0x005f6f5d    ffd5
                         {disp8} mov        esi, dword ptr [ebx + 0x2c]                    // 0x005f6f5f    8b732c
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f6f62    8b9650020000
                         add                esp, 0x14                                      // 0x005f6f68    83c414
                         push               eax                                            // 0x005f6f6b    50
                         push               edx                                            // 0x005f6f6c    52
                         mov.s              ecx, esi                                       // 0x005f6f6d    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f6f6f    e8fc3ee1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f6f74    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f6f7a    8d41ff
                         test               eax, eax                                       // 0x005f6f7d    85c0
                         {disp8} jl         _jmp_addr_0x005f6f92                           // 0x005f6f7f    7c11
                         cmp.s              eax, ecx                                       // 0x005f6f81    3bc1
                         {disp8} jge        _jmp_addr_0x005f6f92                           // 0x005f6f83    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f6f85    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f6f8b    c7048100000000
_jmp_addr_0x005f6f92:    {disp8} mov        ecx, dword ptr [ebx + 0x2c]                    // 0x005f6f92    8b4b2c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f6f95    8b8150020000
                         dec                eax                                            // 0x005f6f9b    48
                         {disp8} js         _jmp_addr_0x005f6faf                           // 0x005f6f9c    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f6f9e    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f6faf                           // 0x005f6fa4    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]              // 0x005f6fa6    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], edi               // 0x005f6fac    893c82
_jmp_addr_0x005f6faf:    {disp8} mov        eax, dword ptr [esp + 0x14]                    // 0x005f6faf    8b442414
                         mov                eax, dword ptr [eax]                           // 0x005f6fb3    8b00
                         test               eax, eax                                       // 0x005f6fb5    85c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005f6fb7    89442414
                         {disp32} jne       _jmp_addr_0x005f6f14                           // 0x005f6fbb    0f8553ffffff
                         pop                edi                                            // 0x005f6fc1    5f
                         pop                esi                                            // 0x005f6fc2    5e
                         pop                ebp                                            // 0x005f6fc3    5d
                         pop                ebx                                            // 0x005f6fc4    5b
                         add                esp, 0x0000549c                                // 0x005f6fc5    81c49c540000
                         ret                0x000c                                         // 0x005f6fcb    c20c00
_jmp_addr_0x005f6fce:    cmp                dword ptr [esp + 0x000054b0], edi              // 0x005f6fce    39bc24b0540000
                         {disp8} jne        _jmp_addr_0x005f703f                           // 0x005f6fd5    7568
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x678]           // 0x005f6fd7    8b0d78968a00
                         mov                edx, dword ptr [ecx]                           // 0x005f6fdd    8b11
                         push               0x1                                            // 0x005f6fdf    6a01
                         push               edi                                            // 0x005f6fe1    57
                         push               edx                                            // 0x005f6fe2    52
                         mov.s              ecx, ebp                                       // 0x005f6fe3    8bcd
                         call               dword ptr [rdata_bytes + 0x650]                // 0x005f6fe5    ff1550968a00
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000dbb  // 0x005f6feb    813dac7cd100bb0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f6ff5    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f7001                           // 0x005f6ffa    7605
                         add                eax, 0x0000a4c4                                // 0x005f6ffc    05c4a40000
_jmp_addr_0x005f7001:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f7001    8b4008
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f7004    8b0dd404d200
                         push               eax                                            // 0x005f700a    50
                         add                ecx, 0x70                                      // 0x005f700b    83c170
                         push               ecx                                            // 0x005f700e    51
                         {disp32} lea       edx, dword ptr [esp + 0x0000249c]              // 0x005f700f    8d94249c240000
                         push               0x00bea62c                                     // 0x005f7016    682ca6be00
                         push               edx                                            // 0x005f701b    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f701c    ff15d8938a00
                         push               eax                                            // 0x005f7022    50
                         {disp8} mov        eax, dword ptr [ebx + 0x5c]                    // 0x005f7023    8b435c
                         add                eax, 0x24                                      // 0x005f7026    83c024
                         push               eax                                            // 0x005f7029    50
                         call               _wcscpy                                        // 0x005f702a    e887ef1c00
                         add                esp, 0x18                                      // 0x005f702f    83c418
                         pop                edi                                            // 0x005f7032    5f
                         pop                esi                                            // 0x005f7033    5e
                         pop                ebp                                            // 0x005f7034    5d
                         pop                ebx                                            // 0x005f7035    5b
                         add                esp, 0x0000549c                                // 0x005f7036    81c49c540000
                         ret                0x000c                                         // 0x005f703c    c20c00
_jmp_addr_0x005f703f:    {disp32} mov       ecx, dword ptr [rdata_bytes + 0x620]           // 0x005f703f    8b0d20968a00
                         {disp32} mov       dword ptr [esp + 0x000000e4], ecx              // 0x005f7045    898c24e4000000
                         xor.s              edx, edx                                       // 0x005f704c    33d2
                         {disp32} mov       dword ptr [esp + 0x000000e8], edx              // 0x005f704e    899424e8000000
                         {disp32} mov       dword ptr [esp + 0x000000ec], edx              // 0x005f7055    899424ec000000
                         xor.s              eax, eax                                       // 0x005f705c    33c0
                         mov                ecx, 0x00000019                                // 0x005f705e    b919000000
                         {disp32} lea       edi, dword ptr [esp + 0x000000f0]              // 0x005f7063    8dbc24f0000000
                         rep stosd                                                         // 0x005f706a    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f706c    8b0dac04d200
                         push               edx                                            // 0x005f7072    52
                         {disp32} lea       edx, dword ptr [esp + 0x000000e8]              // 0x005f7073    8d9424e8000000
                         push               edx                                            // 0x005f707a    52
                         stosw                                                             // 0x005f707b    66ab
                         call               dword ptr [rdata_bytes + 0x470]                // 0x005f707d    ff1570948a00
                         {disp32} lea       eax, dword ptr [esp + 0x000000f2]              // 0x005f7083    8d8424f2000000
                         push               eax                                            // 0x005f708a    50
                         call               _CHAR2WCHAR__FPc                               // 0x005f708b    e810902300
                         push               eax                                            // 0x005f7090    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000160]              // 0x005f7091    8d8c2460010000
                         push               ecx                                            // 0x005f7098    51
                         call               _wcscpy                                        // 0x005f7099    e818ef1c00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]         // 0x005f709e    a1ac7cd100
                         add                esp, 0x0c                                      // 0x005f70a3    83c40c
                         cmp                eax, 0x00000dbc                                // 0x005f70a6    3dbc0d0000
                         {disp8} ja         _jmp_addr_0x005f70b4                           // 0x005f70ab    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f70ad    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f70c0                           // 0x005f70b2    eb0c
_jmp_addr_0x005f70b4:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]         // 0x005f70b4    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a4d0]              // 0x005f70ba    8d82d0a40000
_jmp_addr_0x005f70c0:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f70c0    8b4008
                         {disp32} mov       edx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f70c3    8b15d404d200
                         {disp32} lea       ecx, dword ptr [esp + 0x00000158]              // 0x005f70c9    8d8c2458010000
                         push               ecx                                            // 0x005f70d0    51
                         push               eax                                            // 0x005f70d1    50
                         add                edx, 0x70                                      // 0x005f70d2    83c270
                         push               edx                                            // 0x005f70d5    52
                         {disp32} lea       eax, dword ptr [esp + 0x000044b0]              // 0x005f70d6    8d8424b0440000
                         push               0x00bf3ca0                                     // 0x005f70dd    68a03cbf00
                         push               eax                                            // 0x005f70e2    50
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f70e3    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [ebx + 0x5c]                    // 0x005f70e9    8b4b5c
                         push               eax                                            // 0x005f70ec    50
                         add                ecx, 0x24                                      // 0x005f70ed    83c124
                         push               ecx                                            // 0x005f70f0    51
                         call               _wcscpy                                        // 0x005f70f1    e8c0ee1c00
                         add                esp, 0x1c                                      // 0x005f70f6    83c41c
                         pop                edi                                            // 0x005f70f9    5f
                         pop                esi                                            // 0x005f70fa    5e
                         pop                ebp                                            // 0x005f70fb    5d
                         pop                ebx                                            // 0x005f70fc    5b
                         add                esp, 0x0000549c                                // 0x005f70fd    81c49c540000
                         ret                0x000c                                         // 0x005f7103    c20c00
_jmp_addr_0x005f7106:    {disp8} lea        edx, dword ptr [esp + 0x10]                    // 0x005f7106    8d542410
                         push               edx                                            // 0x005f710a    52
                         {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x005f710b    8d442418
                         push               eax                                            // 0x005f710f    50
                         push               0x000007d4                                     // 0x005f7110    68d4070000
                         push               esi                                            // 0x005f7115    56
                         call               dword ptr [rdata_bytes + 0x64c]                // 0x005f7116    ff154c968a00
                         add                esp, 0x10                                      // 0x005f711c    83c410
                         test               eax, eax                                       // 0x005f711f    85c0
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f7121    0f85d50b0000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005f7127    8b4c2410
                         push               ecx                                            // 0x005f712b    51
                         call               _CHAR2WCHAR__FPc                               // 0x005f712c    e86f8f2300
                         {disp32} mov       esi, dword ptr [rdata_bytes + 0x3d8]           // 0x005f7131    8b35d8938a00
                         add                esp, 0x04                                      // 0x005f7137    83c404
                         push               eax                                            // 0x005f713a    50
                         {disp32} lea       edx, dword ptr [esp + 0x00000c8c]              // 0x005f713b    8d94248c0c0000
                         push               edx                                            // 0x005f7142    52
                         call               esi                                            // 0x005f7143    ffd6
                         {disp32} mov       eax, dword ptr [esp + 0x000054b8]              // 0x005f7145    8b8424b8540000
                         add                esp, 0x08                                      // 0x005f714c    83c408
                         cmp.s              eax, edi                                       // 0x005f714f    3bc7
                         {disp8} jne        _jmp_addr_0x005f715e                           // 0x005f7151    750b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f7153    8b0db004d200
                         mov                eax, dword ptr [ecx]                           // 0x005f7159    8b01
                         call               dword ptr [eax + 8]                            // 0x005f715b    ff5008
_jmp_addr_0x005f715e:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000da2  // 0x005f715e    813dac7cd100a20d0000
                         {disp8} ja         _jmp_addr_0x005f7171                           // 0x005f7168    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f716a    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f717d                           // 0x005f716f    eb0c
_jmp_addr_0x005f7171:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]         // 0x005f7171    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x0000a398]              // 0x005f7177    8d8198a30000
_jmp_addr_0x005f717d:    {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005f717d    8b542414
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f7181    8b4008
                         push               edx                                            // 0x005f7184    52
                         push               eax                                            // 0x005f7185    50
                         {disp32} lea       eax, dword ptr [esp + 0x00000c90]              // 0x005f7186    8d8424900c0000
                         push               eax                                            // 0x005f718d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x000034a8]              // 0x005f718e    8d8c24a8340000
                         push               0x00bea638                                     // 0x005f7195    6838a6be00
                         push               ecx                                            // 0x005f719a    51
                         call               esi                                            // 0x005f719b    ffd6
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x005f719d    8b4b04
                         add                esp, 0x14                                      // 0x005f71a0    83c414
                         push               edi                                            // 0x005f71a3    57
                         push               edi                                            // 0x005f71a4    57
                         push               eax                                            // 0x005f71a5    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f71a6    e8e59fe1ff
                         pop                edi                                            // 0x005f71ab    5f
                         pop                esi                                            // 0x005f71ac    5e
                         pop                ebp                                            // 0x005f71ad    5d
                         pop                ebx                                            // 0x005f71ae    5b
                         add                esp, 0x0000549c                                // 0x005f71af    81c49c540000
                         ret                0x000c                                         // 0x005f71b5    c20c00
_jmp_addr_0x005f71b8:    cmp                dword ptr [esp + 0x000054b4], edi              // 0x005f71b8    39bc24b4540000
                         {disp8} je         _jmp_addr_0x005f71f7                           // 0x005f71bf    7436
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4a8]         // 0x005f71c1    a1a804d200
                         add                eax, 0x00000094                                // 0x005f71c6    0594000000
                         add                ecx, 0x9                                       // 0x005f71cb    83c109
                         push               eax                                            // 0x005f71ce    50
                         push               ecx                                            // 0x005f71cf    51
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f71d0    ff157c968a00
                         add                esp, 0x08                                      // 0x005f71d6    83c408
                         push               edi                                            // 0x005f71d9    57
                         push               edi                                            // 0x005f71da    57
                         push               0x64                                           // 0x005f71db    6a64
                         mov.s              ecx, eax                                       // 0x005f71dd    8bc8
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], eax         // 0x005f71df    a3c804d200
                         call               dword ptr [rdata_bytes + 0x550]                // 0x005f71e4    ff1550958a00
                         pop                edi                                            // 0x005f71ea    5f
                         pop                esi                                            // 0x005f71eb    5e
                         pop                ebp                                            // 0x005f71ec    5d
                         pop                ebx                                            // 0x005f71ed    5b
                         add                esp, 0x0000549c                                // 0x005f71ee    81c49c540000
                         ret                0x000c                                         // 0x005f71f4    c20c00
_jmp_addr_0x005f71f7:    cmp                dword ptr [esp + 0x000054b0], edi              // 0x005f71f7    39bc24b0540000
                         {disp32} je        _jmp_addr_0x005f7284                           // 0x005f71fe    0f8480000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7204    a1ac04d200
                         add                eax, 0x00000094                                // 0x005f7209    0594000000
                         add                ecx, 0x9                                       // 0x005f720e    83c109
                         push               eax                                            // 0x005f7211    50
                         push               ecx                                            // 0x005f7212    51
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f7213    ff157c968a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]         // 0x005f7219    8b0df41ad300
                         add                esp, 0x08                                      // 0x005f721f    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], eax         // 0x005f7222    a3c804d200
                         call               _jmp_addr_0x005f5cf0                           // 0x005f7227    e8c4eaffff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x35a4c8]         // 0x005f722c    8b15c804d200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7232    a1ac04d200
                         push               edx                                            // 0x005f7237    52
                         push               eax                                            // 0x005f7238    50
                         mov.s              ecx, ebx                                       // 0x005f7239    8bcb
                         call               _jmp_addr_0x005f8330                           // 0x005f723b    e8f0100000
                         cmp                dword ptr [ebx + 0x24], edi                    // 0x005f7240    397b24
                         {disp32} je        _jmp_addr_0x005f7cfc                           // 0x005f7243    0f84b30a0000
                         {disp8} mov        dword ptr [ebx + 0x24], edi                    // 0x005f7249    897b24
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f724c    8b0dac04d200
                         {disp32} mov       edx, dword ptr [ecx + 0x00000088]              // 0x005f7252    8b9188000000
                         mov                eax, dword ptr [edx]                           // 0x005f7258    8b02
                         push               edi                                            // 0x005f725a    57
                         push               eax                                            // 0x005f725b    50
                         push               0x0000138b                                     // 0x005f725c    688b130000
                         call               dword ptr [rdata_bytes + 0x490]                // 0x005f7261    ff1590948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7267    8b0dac04d200
                         add                esp, 0x0c                                      // 0x005f726d    83c40c
                         push               eax                                            // 0x005f7270    50
                         call               dword ptr [rdata_bytes + 0x54c]                // 0x005f7271    ff154c958a00
                         pop                edi                                            // 0x005f7277    5f
                         pop                esi                                            // 0x005f7278    5e
                         pop                ebp                                            // 0x005f7279    5d
                         pop                ebx                                            // 0x005f727a    5b
                         add                esp, 0x0000549c                                // 0x005f727b    81c49c540000
                         ret                0x000c                                         // 0x005f7281    c20c00
_jmp_addr_0x005f7284:    {disp32} mov       eax, dword ptr [data_bytes + 0x35a4b0]         // 0x005f7284    a1b004d200
                         cmp                dword ptr [eax + 0x04], edi                    // 0x005f7289    397804
                         {disp8} je         _jmp_addr_0x005f72d2                           // 0x005f728c    7444
                         add                eax, 0x00000094                                // 0x005f728e    0594000000
                         add                ecx, 0x9                                       // 0x005f7293    83c109
                         push               eax                                            // 0x005f7296    50
                         push               ecx                                            // 0x005f7297    51
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f7298    ff157c968a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]         // 0x005f729e    8b0df41ad300
                         add                esp, 0x08                                      // 0x005f72a4    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], eax         // 0x005f72a7    a3c804d200
                         call               _jmp_addr_0x005f5cf0                           // 0x005f72ac    e83feaffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4c8]         // 0x005f72b1    a1c804d200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f72b6    8b0db004d200
                         push               eax                                            // 0x005f72bc    50
                         push               ecx                                            // 0x005f72bd    51
                         mov.s              ecx, ebx                                       // 0x005f72be    8bcb
                         call               _jmp_addr_0x005f8330                           // 0x005f72c0    e86b100000
                         pop                edi                                            // 0x005f72c5    5f
                         pop                esi                                            // 0x005f72c6    5e
                         pop                ebp                                            // 0x005f72c7    5d
                         pop                ebx                                            // 0x005f72c8    5b
                         add                esp, 0x0000549c                                // 0x005f72c9    81c49c540000
                         ret                0x000c                                         // 0x005f72cf    c20c00
_jmp_addr_0x005f72d2:    {disp32} mov       eax, dword ptr [data_bytes + 0x35a4a8]         // 0x005f72d2    a1a804d200
                         {disp32} mov       edi, dword ptr [rdata_bytes + 0x67c]           // 0x005f72d7    8b3d7c968a00
                         add                eax, 0x00000094                                // 0x005f72dd    0594000000
                         add                ecx, 0x9                                       // 0x005f72e2    83c109
                         push               eax                                            // 0x005f72e5    50
                         push               ecx                                            // 0x005f72e6    51
                         call               edi                                            // 0x005f72e7    ffd7
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36baf4]         // 0x005f72e9    8b0df41ad300
                         add                esp, 0x08                                      // 0x005f72ef    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], eax         // 0x005f72f2    a3c804d200
                         call               _jmp_addr_0x005f5cf0                           // 0x005f72f7    e8f4e9ffff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x35a4c8]         // 0x005f72fc    8b15c804d200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4a8]         // 0x005f7302    a1a804d200
                         push               edx                                            // 0x005f7307    52
                         push               eax                                            // 0x005f7308    50
                         mov.s              ecx, ebx                                       // 0x005f7309    8bcb
                         call               _jmp_addr_0x005f8330                           // 0x005f730b    e820100000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4a8]         // 0x005f7310    a1a804d200
                         mov                esi, dword ptr [esi]                           // 0x005f7315    8b36
                         add                eax, 0x00000094                                // 0x005f7317    0594000000
                         push               eax                                            // 0x005f731c    50
                         add                esi, 0x09                                      // 0x005f731d    83c609
                         push               esi                                            // 0x005f7320    56
                         call               edi                                            // 0x005f7321    ffd7
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                    // 0x005f7323    8b4874
                         add                esp, 0x08                                      // 0x005f7326    83c408
                         cmp                ecx, 0x01                                      // 0x005f7329    83f901
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f732c    0f85ca090000
                         pop                edi                                            // 0x005f7332    5f
                         pop                esi                                            // 0x005f7333    5e
                         pop                ebp                                            // 0x005f7334    5d
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], 0x00000000  // 0x005f7335    c705c804d20000000000
                         pop                ebx                                            // 0x005f733f    5b
                         add                esp, 0x0000549c                                // 0x005f7340    81c49c540000
                         ret                0x000c                                         // 0x005f7346    c20c00
_jmp_addr_0x005f7349:    sub                eax, 0x00000fa3                                // 0x005f7349    2da30f0000
                         {disp32} je        _jmp_addr_0x005f77ad                           // 0x005f734e    0f8459040000
                         dec                eax                                            // 0x005f7354    48
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f7355    0f85a1090000
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                    // 0x005f735b    8d4c244c
                         push               ecx                                            // 0x005f735f    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                    // 0x005f7360    8d54242c
                         push               edx                                            // 0x005f7364    52
                         {disp8} lea        eax, dword ptr [esp + 0x28]                    // 0x005f7365    8d442428
                         push               eax                                            // 0x005f7369    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                    // 0x005f736a    8d4c2428
                         push               ecx                                            // 0x005f736e    51
                         push               esi                                            // 0x005f736f    56
                         mov.s              ecx, ebp                                       // 0x005f7370    8bcd
                         call               dword ptr [rdata_bytes + 0x658]                // 0x005f7372    ff1558968a00
                         {disp32} mov       edx, dword ptr [ebp + 0x00000088]              // 0x005f7378    8b9588000000
                         mov                eax, dword ptr [edx]                           // 0x005f737e    8b02
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005f7380    8b4c241c
                         push               eax                                            // 0x005f7384    50
                         call               dword ptr [rdata_bytes + 0x558]                // 0x005f7385    ff1558958a00
                         mov.s              ebx, eax                                       // 0x005f738b    8bd8
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x005f738d    8b44241c
                         {disp8} mov        eax, dword ptr [eax + 0x70]                    // 0x005f7391    8b4070
                         test               eax, eax                                       // 0x005f7394    85c0
                         {disp8} je         _jmp_addr_0x005f73a9                           // 0x005f7396    7411
_jmp_addr_0x005f7398:    mov.s              ecx, eax                                       // 0x005f7398    8bc8
                         mov                eax, dword ptr [eax]                           // 0x005f739a    8b00
                         test               eax, eax                                       // 0x005f739c    85c0
                         {disp8} jne        _jmp_addr_0x005f7398                           // 0x005f739e    75f8
                         test               ecx, ecx                                       // 0x005f73a0    85c9
                         {disp8} je         _jmp_addr_0x005f73a9                           // 0x005f73a2    7405
                         {disp8} mov        ebp, dword ptr [ecx + 0x04]                    // 0x005f73a4    8b6904
                         {disp8} jmp        _jmp_addr_0x005f73ab                           // 0x005f73a7    eb02
_jmp_addr_0x005f73a9:    xor.s              ebp, ebp                                       // 0x005f73a9    33ed
_jmp_addr_0x005f73ab:    {disp8} mov        ecx, dword ptr [esp + 0x28]                    // 0x005f73ab    8b4c2428
                         push               ecx                                            // 0x005f73af    51
                         call               _wcslen                                        // 0x005f73b0    e8adf01c00
                         add                esp, 0x04                                      // 0x005f73b5    83c404
                         test               eax, eax                                       // 0x005f73b8    85c0
                         {disp32} je        _jmp_addr_0x005f7792                           // 0x005f73ba    0f84d2030000
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x005f73c0    8b542428
                         push               edx                                            // 0x005f73c4    52
                         {disp8} lea        ecx, dword ptr [esp + 0x64]                    // 0x005f73c5    8d4c2464
                         call               _jmp_addr_0x007358f0                           // 0x005f73c9    e822e51300
                         {disp8} mov        edi, dword ptr [esp + 0x60]                    // 0x005f73ce    8b7c2460
                         or                 ecx, 0xffffffff                                // 0x005f73d2    83c9ff
                         xor.s              eax, eax                                       // 0x005f73d5    33c0
                         repne scasb                                                       // 0x005f73d7    f2ae
                         not                ecx                                            // 0x005f73d9    f7d1
                         sub.s              edi, ecx                                       // 0x005f73db    2bf9
                         mov.s              eax, ecx                                       // 0x005f73dd    8bc1
                         shr                ecx, 2                                         // 0x005f73df    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x00000888]              // 0x005f73e2    8d942488080000
                         mov.s              esi, edi                                       // 0x005f73e9    8bf7
                         mov.s              edi, edx                                       // 0x005f73eb    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f73ed    f3a5
                         mov.s              ecx, eax                                       // 0x005f73ef    8bc8
                         and                ecx, 0x03                                      // 0x005f73f1    83e103
                         rep movsb                                                         // 0x005f73f4    f3a4
                         {disp32} lea       ecx, dword ptr [esp + 0x00000888]              // 0x005f73f6    8d8c2488080000
                         push               0x0092b65c                                     // 0x005f73fd    685cb69200
                         push               ecx                                            // 0x005f7402    51
                         call               _jmp_addr_0x005f5200                           // 0x005f7403    e8f8ddffff
                         {disp32} lea       edx, dword ptr [esp + 0x00000890]              // 0x005f7408    8d942490080000
                         push               0x0092b66c                                     // 0x005f740f    686cb69200
                         push               edx                                            // 0x005f7414    52
                         mov.s              esi, eax                                       // 0x005f7415    8bf0
                         call               _jmp_addr_0x005f5200                           // 0x005f7417    e8e4ddffff
                         add                esp, 0x10                                      // 0x005f741c    83c410
                         test               esi, esi                                       // 0x005f741f    85f6
                         {disp32} je        _jmp_addr_0x005f7505                           // 0x005f7421    0f84de000000
                         cmp.s              ebp, ebx                                       // 0x005f7427    3beb
                         {disp32} je        _jmp_addr_0x005f7789                           // 0x005f7429    0f845a030000
                         xor.s              eax, eax                                       // 0x005f742f    33c0
                         mov                ecx, 0x000000cb                                // 0x005f7431    b9cb000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000158]              // 0x005f7436    8dbc2458010000
                         rep stosd                                                         // 0x005f743d    f3ab
                         push               esi                                            // 0x005f743f    56
                         {disp32} lea       ecx, dword ptr [esp + 0x0000015c]              // 0x005f7440    8d8c245c010000
                         call               _jmp_addr_0x00714270                           // 0x005f7447    e824ce1100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30b670]         // 0x005f744c    8b0d7016cd00
                         {disp32} lea       eax, dword ptr [esp + 0x00000158]              // 0x005f7452    8d842458010000
                         push               eax                                            // 0x005f7459    50
                         call               _jmp_addr_0x00549930                           // 0x005f745a    e8d124f5ff
                         test               al, al                                         // 0x005f745f    84c0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]         // 0x005f7461    a1ac7cd100
                         {disp8} jne        _jmp_addr_0x005f74bb                           // 0x005f7466    7553
                         cmp                eax, 0x00001a3a                                // 0x005f7468    3d3a1a0000
                         {disp8} ja         _jmp_addr_0x005f7476                           // 0x005f746d    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f746f    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f7482                           // 0x005f7474    eb0c
_jmp_addr_0x005f7476:    {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]         // 0x005f7476    8b0da87cd100
                         {disp32} lea       eax, dword ptr [ecx + 0x00013ab8]              // 0x005f747c    8d81b83a0100
_jmp_addr_0x005f7482:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f7482    8b4008
                         {disp32} lea       edx, dword ptr [esp + 0x00000158]              // 0x005f7485    8d942458010000
                         push               edx                                            // 0x005f748c    52
                         push               eax                                            // 0x005f748d    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000c90]              // 0x005f748e    8d8c24900c0000
                         push               ecx                                            // 0x005f7495    51
                         call               _swprintf                                      // 0x005f7496    e8e4ef1c00
                         {disp32} mov       ecx, dword ptr [esp + 0x000054c4]              // 0x005f749b    8b8c24c4540000
                         add                esp, 0x0c                                      // 0x005f74a2    83c40c
                         push               0x0                                            // 0x005f74a5    6a00
                         push               0x0                                            // 0x005f74a7    6a00
                         {disp32} lea       edx, dword ptr [esp + 0x00000c90]              // 0x005f74a9    8d9424900c0000
                         push               edx                                            // 0x005f74b0    52
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f74b1    e8da9ce1ff
                         {disp32} jmp       _jmp_addr_0x005f7789                           // 0x005f74b6    e9ce020000
_jmp_addr_0x005f74bb:    cmp                eax, 0x00001a3b                                // 0x005f74bb    3d3b1a0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f74c0    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f74cc                           // 0x005f74c5    7605
                         add                eax, 0x00013ac4                                // 0x005f74c7    05c43a0100
_jmp_addr_0x005f74cc:    {disp8} mov        edx, dword ptr [eax + 0x08]                    // 0x005f74cc    8b5008
                         {disp32} lea       ecx, dword ptr [esp + 0x00000158]              // 0x005f74cf    8d8c2458010000
                         push               ecx                                            // 0x005f74d6    51
                         push               edx                                            // 0x005f74d7    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000c90]              // 0x005f74d8    8d8424900c0000
                         push               eax                                            // 0x005f74df    50
                         call               _swprintf                                      // 0x005f74e0    e89aef1c00
                         add                esp, 0x0c                                      // 0x005f74e5    83c40c
                         push               0x0                                            // 0x005f74e8    6a00
                         push               0x0                                            // 0x005f74ea    6a00
                         {disp32} lea       ecx, dword ptr [esp + 0x00000c90]              // 0x005f74ec    8d8c24900c0000
                         push               ecx                                            // 0x005f74f3    51
                         {disp32} mov       ecx, dword ptr [esp + 0x000054c4]              // 0x005f74f4    8b8c24c4540000
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f74fb    e8909ce1ff
                         {disp32} jmp       _jmp_addr_0x005f7789                           // 0x005f7500    e984020000
_jmp_addr_0x005f7505:    xor.s              edi, edi                                       // 0x005f7505    33ff
                         cmp.s              eax, edi                                       // 0x005f7507    3bc7
                         {disp32} je        _jmp_addr_0x005f76e3                           // 0x005f7509    0f84d4010000
                         cmp.s              ebp, ebx                                       // 0x005f750f    3beb
                         {disp32} jne       _jmp_addr_0x005f7789                           // 0x005f7511    0f8572020000
                         push               eax                                            // 0x005f7517    50
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                    // 0x005f7518    8d4c243c
                         {disp8} mov        dword ptr [esp + 0x40], edi                    // 0x005f751c    897c2440
                         {disp8} mov        dword ptr [esp + 0x3c], edi                    // 0x005f7520    897c243c
                         {disp8} mov        byte ptr [esp + 0x44], 0x00                    // 0x005f7524    c644244400
                         {disp8} mov        dword ptr [esp + 0x49], edi                    // 0x005f7529    897c2449
                         call               _jmp_addr_0x00713e00                           // 0x005f752d    e8cec81100
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x005f7532    8b542420
                         push               edx                                            // 0x005f7536    52
                         call               _jmp_addr_0x00713b30                           // 0x005f7537    e8f4c51100
                         mov.s              ebx, eax                                       // 0x005f753c    8bd8
                         add                esp, 0x04                                      // 0x005f753e    83c404
                         test               ebx, ebx                                       // 0x005f7541    85db
                         {disp8} je         _jmp_addr_0x005f75c0                           // 0x005f7543    747b
_jmp_addr_0x005f7545:    mov                eax, dword ptr [ebx]                           // 0x005f7545    8b03
                         test               eax, eax                                       // 0x005f7547    85c0
                         {disp8} je         _jmp_addr_0x005f7563                           // 0x005f7549    7418
                         {disp8} mov        esi, dword ptr [eax + 0x04]                    // 0x005f754b    8b7004
                         push               0x0                                            // 0x005f754e    6a00
                         push               esi                                            // 0x005f7550    56
                         mov.s              ecx, ebx                                       // 0x005f7551    8bcb
                         call               _jmp_addr_0x00549a90                           // 0x005f7553    e83825f5ff
                         push               esi                                            // 0x005f7558    56
                         call               ??3@YAXPAX@Z                                   // 0x005f7559    e83a791b00
                         add                esp, 0x04                                      // 0x005f755e    83c404
                         {disp8} jmp        _jmp_addr_0x005f7545                           // 0x005f7561    ebe2
_jmp_addr_0x005f7563:    {disp8} lea        ecx, dword ptr [esp + 0x38]                    // 0x005f7563    8d4c2438
                         call               _jmp_addr_0x0059ced0                           // 0x005f7567    e86459faff
                         mov.s              ebp, eax                                       // 0x005f756c    8be8
                         test               ebp, ebp                                       // 0x005f756e    85ed
                         {disp8} je         _jmp_addr_0x005f75b4                           // 0x005f7570    7442
_jmp_addr_0x005f7572:    push               0x000000ad                                     // 0x005f7572    68ad000000
                         push               0x00beffa4                                     // 0x005f7577    68a4ffbe00
                         push               0x0000032c                                     // 0x005f757c    682c030000
                         call               ___nw__FUl                                     // 0x005f7581    e80a421e00
                         add                esp, 0x0c                                      // 0x005f7586    83c40c
                         test               eax, eax                                       // 0x005f7589    85c0
                         {disp8} je         _jmp_addr_0x005f759a                           // 0x005f758b    740d
                         mov                ecx, 0x000000cb                                // 0x005f758d    b9cb000000
                         mov.s              esi, ebp                                       // 0x005f7592    8bf5
                         mov.s              edi, eax                                       // 0x005f7594    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f7596    f3a5
                         {disp8} jmp        _jmp_addr_0x005f759c                           // 0x005f7598    eb02
_jmp_addr_0x005f759a:    xor.s              eax, eax                                       // 0x005f759a    33c0
_jmp_addr_0x005f759c:    push               eax                                            // 0x005f759c    50
                         mov.s              ecx, ebx                                       // 0x005f759d    8bcb
                         call               _jmp_addr_0x0059cf20                           // 0x005f759f    e87c59faff
                         push               ebp                                            // 0x005f75a4    55
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                    // 0x005f75a5    8d4c243c
                         call               _jmp_addr_0x0059cee0                           // 0x005f75a9    e83259faff
                         mov.s              ebp, eax                                       // 0x005f75ae    8be8
                         test               ebp, ebp                                       // 0x005f75b0    85ed
                         {disp8} jne        _jmp_addr_0x005f7572                           // 0x005f75b2    75be
_jmp_addr_0x005f75b4:    {disp8} mov        al, byte ptr [esp + 0x40]                      // 0x005f75b4    8a442440
                         {disp8} mov        byte ptr [ebx + 0x08], al                      // 0x005f75b8    884308
                         {disp32} jmp       _jmp_addr_0x005f76ad                           // 0x005f75bb    e9ed000000
_jmp_addr_0x005f75c0:    push               0x00000300                                     // 0x005f75c0    6800030000
                         push               0x00bf3c38                                     // 0x005f75c5    68383cbf00
                         push               0x11                                           // 0x005f75ca    6a11
                         call               ___nw__FUl                                     // 0x005f75cc    e8bf411e00
                         add                esp, 0x0c                                      // 0x005f75d1    83c40c
                         test               eax, eax                                       // 0x005f75d4    85c0
                         {disp8} je         _jmp_addr_0x005f75e9                           // 0x005f75d6    7411
                         xor.s              ecx, ecx                                       // 0x005f75d8    33c9
                         {disp8} mov        dword ptr [eax + 0x04], ecx                    // 0x005f75da    894804
                         mov                dword ptr [eax], ecx                           // 0x005f75dd    8908
                         {disp8} mov        byte ptr [eax + 0x08], cl                      // 0x005f75df    884808
                         {disp8} mov        dword ptr [eax + 0x0d], ecx                    // 0x005f75e2    89480d
                         mov.s              ebx, eax                                       // 0x005f75e5    8bd8
                         {disp8} jmp        _jmp_addr_0x005f75eb                           // 0x005f75e7    eb02
_jmp_addr_0x005f75e9:    xor.s              ebx, ebx                                       // 0x005f75e9    33db
_jmp_addr_0x005f75eb:    {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005f75eb    8b4c2420
                         {disp8} mov        dword ptr [ebx + 0x09], ecx                    // 0x005f75ef    894b09
                         cmp                dword ptr [esp + 0x20], ebp                    // 0x005f75f2    396c2420
                         sete               dl                                             // 0x005f75f6    0f94c2
                         {disp8} mov        byte ptr [ebx + 0x08], dl                      // 0x005f75f9    885308
_jmp_addr_0x005f75fc:    mov                eax, dword ptr [ebx]                           // 0x005f75fc    8b03
                         test               eax, eax                                       // 0x005f75fe    85c0
                         {disp8} je         _jmp_addr_0x005f761a                           // 0x005f7600    7418
                         {disp8} mov        esi, dword ptr [eax + 0x04]                    // 0x005f7602    8b7004
                         push               0x0                                            // 0x005f7605    6a00
                         push               esi                                            // 0x005f7607    56
                         mov.s              ecx, ebx                                       // 0x005f7608    8bcb
                         call               _jmp_addr_0x00549a90                           // 0x005f760a    e88124f5ff
                         push               esi                                            // 0x005f760f    56
                         call               ??3@YAXPAX@Z                                   // 0x005f7610    e883781b00
                         add                esp, 0x04                                      // 0x005f7615    83c404
                         {disp8} jmp        _jmp_addr_0x005f75fc                           // 0x005f7618    ebe2
_jmp_addr_0x005f761a:    {disp8} lea        ecx, dword ptr [esp + 0x38]                    // 0x005f761a    8d4c2438
                         call               _jmp_addr_0x0059ced0                           // 0x005f761e    e8ad58faff
                         mov.s              ebp, eax                                       // 0x005f7623    8be8
                         test               ebp, ebp                                       // 0x005f7625    85ed
                         {disp8} je         _jmp_addr_0x005f766b                           // 0x005f7627    7442
_jmp_addr_0x005f7629:    push               0x000000ad                                     // 0x005f7629    68ad000000
                         push               0x00beffa4                                     // 0x005f762e    68a4ffbe00
                         push               0x0000032c                                     // 0x005f7633    682c030000
                         call               ___nw__FUl                                     // 0x005f7638    e853411e00
                         add                esp, 0x0c                                      // 0x005f763d    83c40c
                         test               eax, eax                                       // 0x005f7640    85c0
                         {disp8} je         _jmp_addr_0x005f7651                           // 0x005f7642    740d
                         mov                ecx, 0x000000cb                                // 0x005f7644    b9cb000000
                         mov.s              esi, ebp                                       // 0x005f7649    8bf5
                         mov.s              edi, eax                                       // 0x005f764b    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f764d    f3a5
                         {disp8} jmp        _jmp_addr_0x005f7653                           // 0x005f764f    eb02
_jmp_addr_0x005f7651:    xor.s              eax, eax                                       // 0x005f7651    33c0
_jmp_addr_0x005f7653:    push               eax                                            // 0x005f7653    50
                         mov.s              ecx, ebx                                       // 0x005f7654    8bcb
                         call               _jmp_addr_0x0059cf20                           // 0x005f7656    e8c558faff
                         push               ebp                                            // 0x005f765b    55
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                    // 0x005f765c    8d4c243c
                         call               _jmp_addr_0x0059cee0                           // 0x005f7660    e87b58faff
                         mov.s              ebp, eax                                       // 0x005f7665    8be8
                         test               ebp, ebp                                       // 0x005f7667    85ed
                         {disp8} jne        _jmp_addr_0x005f7629                           // 0x005f7669    75be
_jmp_addr_0x005f766b:    test               ebx, ebx                                       // 0x005f766b    85db
                         {disp8} mov        al, byte ptr [esp + 0x40]                      // 0x005f766d    8a442440
                         {disp8} mov        byte ptr [ebx + 0x08], al                      // 0x005f7671    884308
                         {disp8} je         _jmp_addr_0x005f76ad                           // 0x005f7674    7437
                         push               0x8                                            // 0x005f7676    6a08
                         call               ??2@YAPAXI@Z                                   // 0x005f7678    e871ee1c00
                         mov.s              esi, eax                                       // 0x005f767d    8bf0
                         add                esp, 0x04                                      // 0x005f767f    83c404
                         test               esi, esi                                       // 0x005f7682    85f6
                         {disp8} je         _jmp_addr_0x005f76ad                           // 0x005f7684    7427
                         mov                ecx, 0x00d99168                                // 0x005f7686    b96891d900
                         {disp8} mov        dword ptr [esi + 0x04], ebx                    // 0x005f768b    895e04
                         mov                dword ptr [esi], 0x00000000                    // 0x005f768e    c70600000000
                         call               _jmp_addr_0x005f8740                           // 0x005f7694    e8a7100000
                         test               eax, eax                                       // 0x005f7699    85c0
                         {disp8} je         _jmp_addr_0x005f76a1                           // 0x005f769b    7404
                         mov                dword ptr [eax], esi                           // 0x005f769d    8930
                         {disp8} jmp        _jmp_addr_0x005f76a7                           // 0x005f769f    eb06
_jmp_addr_0x005f76a1:    {disp32} mov       dword ptr [data_bytes + 0x3d3168], esi         // 0x005f76a1    89356891d900
_jmp_addr_0x005f76a7:    {disp32} inc       dword ptr [data_bytes + 0x3d316c]              // 0x005f76a7    ff056c91d900
_jmp_addr_0x005f76ad:    {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005f76ad    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005f76b1    8b542414
                         push               ecx                                            // 0x005f76b5    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005f76b6    8b4c2414
                         push               edx                                            // 0x005f76ba    52
                         call               _jmp_addr_0x005f8330                           // 0x005f76bb    e8700c0000
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                    // 0x005f76c0    8d4c2438
                         call               _jmp_addr_0x0059cf80                           // 0x005f76c4    e8b758faff
                         {disp8} mov        eax, dword ptr [esp + 0x45]                    // 0x005f76c9    8b442445
                         test               eax, eax                                       // 0x005f76cd    85c0
                         {disp32} je        _jmp_addr_0x005f7789                           // 0x005f76cf    0f84b4000000
                         push               eax                                            // 0x005f76d5    50
                         call               ??3@YAXPAX@Z                                   // 0x005f76d6    e8bd771b00
                         add                esp, 0x04                                      // 0x005f76db    83c404
                         {disp32} jmp       _jmp_addr_0x005f7789                           // 0x005f76de    e9a6000000
_jmp_addr_0x005f76e3:    {disp8} mov        eax, dword ptr [esp + 0x28]                    // 0x005f76e3    8b442428
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005f76e7    8b4c2420
                         push               eax                                            // 0x005f76eb    50
                         add                ecx, 0x00000110                                // 0x005f76ec    81c110010000
                         push               ecx                                            // 0x005f76f2    51
                         {disp32} lea       edx, dword ptr [esp + 0x00001c98]              // 0x005f76f3    8d9424981c0000
                         push               0x009d0400                                     // 0x005f76fa    6800049d00
                         push               edx                                            // 0x005f76ff    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f7700    ff15d8938a00
                         {disp8} mov        edx, dword ptr [esp + 0x5c]                    // 0x005f7706    8b54245c
                         add                esp, 0x10                                      // 0x005f770a    83c410
                         cmp.s              edx, edi                                       // 0x005f770d    3bd7
                         sete               cl                                             // 0x005f770f    0f94c1
                         push               eax                                            // 0x005f7712    50
                         dec                ecx                                            // 0x005f7713    49
                         and                ecx, 0x00000080                                // 0x005f7714    81e180000000
                         cmp.s              edx, edi                                       // 0x005f771a    3bd7
                         sete               dl                                             // 0x005f771c    0f94c2
                         {disp8} mov        byte ptr [esp + 0x28], cl                      // 0x005f771f    884c2428
                         {disp8} mov        byte ptr [esp + 0x18], cl                      // 0x005f7723    884c2418
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005f7727    8b4c2414
                         {disp8} mov        esi, dword ptr [ecx + 0x30]                    // 0x005f772b    8b7130
                         mov.s              ecx, esi                                       // 0x005f772e    8bce
                         dec                edx                                            // 0x005f7730    4a
                         and                edx, 0x000000ff                                // 0x005f7731    81e2ff000000
                         {disp8} mov        byte ptr [esp + 0x34], dl                      // 0x005f7737    88542434
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f773b    8b9650020000
                         push               edx                                            // 0x005f7741    52
                         call               @InsertString__9SetupListFiPw@16               // 0x005f7742    e82937e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f7747    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f774d    8d41ff
                         cmp.s              eax, edi                                       // 0x005f7750    3bc7
                         {disp8} jl         _jmp_addr_0x005f7789                           // 0x005f7752    7c35
                         cmp.s              eax, ecx                                       // 0x005f7754    3bc1
                         {disp8} jge        _jmp_addr_0x005f7789                           // 0x005f7756    7d31
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x005f7758    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x005f775c    8b542430
                         and                ecx, 0x000000ff                                // 0x005f7760    81e1ff000000
                         and                edx, 0x000000ff                                // 0x005f7766    81e2ff000000
                         shl                ecx, 8                                         // 0x005f776c    c1e108
                         add.s              ecx, edx                                       // 0x005f776f    03ca
                         {disp8} mov        edx, dword ptr [esp + 0x24]                    // 0x005f7771    8b542424
                         and                edx, 0x000000ff                                // 0x005f7775    81e2ff000000
                         shl                ecx, 8                                         // 0x005f777b    c1e108
                         add.s              ecx, edx                                       // 0x005f777e    03ca
                         {disp32} mov       edx, dword ptr [esi + 0x00000268]              // 0x005f7780    8b9668020000
                         mov                dword ptr [edx + eax * 0x4], ecx               // 0x005f7786    890c82
_jmp_addr_0x005f7789:    {disp8} lea        ecx, dword ptr [esp + 0x60]                    // 0x005f7789    8d4c2460
                         call               _jmp_addr_0x00735980                           // 0x005f778d    e8eee11300
_jmp_addr_0x005f7792:    {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005f7792    8b442410
                         {disp8} mov        ecx, dword ptr [eax + 0x30]                    // 0x005f7796    8b4830
                         push               0x1                                            // 0x005f7799    6a01
                         call               @AutoScroll__9SetupListFb@9                    // 0x005f779b    e83026e1ff
                         pop                edi                                            // 0x005f77a0    5f
                         pop                esi                                            // 0x005f77a1    5e
                         pop                ebp                                            // 0x005f77a2    5d
                         pop                ebx                                            // 0x005f77a3    5b
                         add                esp, 0x0000549c                                // 0x005f77a4    81c49c540000
                         ret                0x000c                                         // 0x005f77aa    c20c00
_jmp_addr_0x005f77ad:    {disp8} mov        edi, dword ptr [ebx + 0x34]                    // 0x005f77ad    8b7b34
                         xor.s              ebp, ebp                                       // 0x005f77b0    33ed
                         {disp8} mov        dword ptr [esp + 0x34], ebp                    // 0x005f77b2    896c2434
                         {disp8} mov        dword ptr [esp + 0x30], ebp                    // 0x005f77b6    896c2430
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f77ba    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f77c0    3bc5
                         {disp8} jle        _jmp_addr_0x005f77d7                           // 0x005f77c2    7e13
_jmp_addr_0x005f77c4:    dec                eax                                            // 0x005f77c4    48
                         push               eax                                            // 0x005f77c5    50
                         mov.s              ecx, edi                                       // 0x005f77c6    8bcf
                         call               @DeleteString__9SetupListFi@12                 // 0x005f77c8    e89335e1ff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f77cd    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f77d3    3bc5
                         {disp8} jg         _jmp_addr_0x005f77c4                           // 0x005f77d5    7fed
_jmp_addr_0x005f77d7:    {disp32} mov       edx, dword ptr [rdata_bytes + 0x554]           // 0x005f77d7    8b1554958a00
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                    // 0x005f77dd    8d4c2430
                         push               ecx                                            // 0x005f77e1    51
                         push               edx                                            // 0x005f77e2    52
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                    // 0x005f77e3    8d44242c
                         push               eax                                            // 0x005f77e7    50
                         push               0x00000fa3                                     // 0x005f77e8    68a30f0000
                         push               esi                                            // 0x005f77ed    56
                         call               dword ptr [rdata_bytes + 0x64c]                // 0x005f77ee    ff154c968a00
                         {disp8} mov        edi, dword ptr [esp + 0x44]                    // 0x005f77f4    8b7c2444
                         add                esp, 0x14                                      // 0x005f77f8    83c414
                         cmp.s              edi, ebp                                       // 0x005f77fb    3bfd
                         {disp32} je        _jmp_addr_0x005f7cfc                           // 0x005f77fd    0f84f9040000
_jmp_addr_0x005f7803:    {disp8} mov        ecx, dword ptr [edi + 0x04]                    // 0x005f7803    8b4f04
                         {disp8} mov        esi, dword ptr [ebx + 0x34]                    // 0x005f7806    8b7334
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f7809    8b9650020000
                         add                ecx, 0x00000110                                // 0x005f780f    81c110010000
                         push               ecx                                            // 0x005f7815    51
                         push               edx                                            // 0x005f7816    52
                         mov.s              ecx, esi                                       // 0x005f7817    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f7819    e85236e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f781e    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f7824    8d41ff
                         cmp.s              eax, ebp                                       // 0x005f7827    3bc5
                         {disp8} jl         _jmp_addr_0x005f7838                           // 0x005f7829    7c0d
                         cmp.s              eax, ecx                                       // 0x005f782b    3bc1
                         {disp8} jge        _jmp_addr_0x005f7838                           // 0x005f782d    7d09
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f782f    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], ebp               // 0x005f7835    892c81
_jmp_addr_0x005f7838:    {disp8} mov        ecx, dword ptr [ebx + 0x34]                    // 0x005f7838    8b4b34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f783b    8b8150020000
                         dec                eax                                            // 0x005f7841    48
                         {disp8} js         _jmp_addr_0x005f7859                           // 0x005f7842    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7844    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7859                           // 0x005f784a    7d0d
                         {disp32} mov       edx, dword ptr [ecx + 0x00000268]              // 0x005f784c    8b9168020000
                         mov                dword ptr [edx + eax * 0x4], 0x0000ff00        // 0x005f7852    c7048200ff0000
_jmp_addr_0x005f7859:    mov                edi, dword ptr [edi]                           // 0x005f7859    8b3f
                         cmp.s              edi, ebp                                       // 0x005f785b    3bfd
                         {disp8} jne        _jmp_addr_0x005f7803                           // 0x005f785d    75a4
                         pop                edi                                            // 0x005f785f    5f
                         pop                esi                                            // 0x005f7860    5e
                         pop                ebp                                            // 0x005f7861    5d
                         pop                ebx                                            // 0x005f7862    5b
                         add                esp, 0x0000549c                                // 0x005f7863    81c49c540000
                         ret                0x000c                                         // 0x005f7869    c20c00
_jmp_addr_0x005f786c:    {disp8} lea        eax, dword ptr [esp + 0x28]                    // 0x005f786c    8d442428
                         push               eax                                            // 0x005f7870    50
                         {disp8} lea        ecx, dword ptr [esp + 0x70]                    // 0x005f7871    8d4c2470
                         push               ecx                                            // 0x005f7875    51
                         {disp8} lea        edx, dword ptr [esp + 0x70]                    // 0x005f7876    8d542470
                         push               edx                                            // 0x005f787a    52
                         {disp8} lea        eax, dword ptr [esp + 0x64]                    // 0x005f787b    8d442464
                         push               eax                                            // 0x005f787f    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000080]              // 0x005f7880    8d8c2480000000
                         push               ecx                                            // 0x005f7887    51
                         {disp8} lea        edx, dword ptr [esp + 0x40]                    // 0x005f7888    8d542440
                         push               edx                                            // 0x005f788c    52
                         {disp8} lea        eax, dword ptr [esp + 0x6c]                    // 0x005f788d    8d44246c
                         push               eax                                            // 0x005f7891    50
                         push               0x00000fab                                     // 0x005f7892    68ab0f0000
                         push               esi                                            // 0x005f7897    56
                         call               dword ptr [rdata_bytes + 0x64c]                // 0x005f7898    ff154c968a00
                         mov                esi, dword ptr [esi]                           // 0x005f789e    8b36
                         add                ebp, 0x00000094                                // 0x005f78a0    81c594000000
                         add                esi, 0x09                                      // 0x005f78a6    83c609
                         push               ebp                                            // 0x005f78a9    55
                         push               esi                                            // 0x005f78aa    56
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f78ab    ff157c968a00
                         {disp32} mov       edx, dword ptr [esp + 0x000000a0]              // 0x005f78b1    8b9424a0000000
                         add                esp, 0x2c                                      // 0x005f78b8    83c42c
                         sub                edx, 0x02                                      // 0x005f78bb    83ea02
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x005f78be    8944241c
                         {disp32} je        _jmp_addr_0x005f7957                           // 0x005f78c2    0f848f000000
                         sub                edx, 0x02                                      // 0x005f78c8    83ea02
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f78cb    0f852b040000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                    // 0x005f78d1    8b4c242c
                         {disp32} mov       esi, dword ptr [rdata_bytes + 0x558]           // 0x005f78d5    8b3558958a00
                         push               ecx                                            // 0x005f78db    51
                         mov.s              ecx, eax                                       // 0x005f78dc    8bc8
                         call               esi                                            // 0x005f78de    ffd6
                         test               eax, eax                                       // 0x005f78e0    85c0
                         {disp8} je         _jmp_addr_0x005f78f6                           // 0x005f78e2    7412
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x005f78e4    8b54242c
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x005f78e8    8b4c241c
                         push               edx                                            // 0x005f78ec    52
                         call               esi                                            // 0x005f78ed    ffd6
                         add                eax, 0x00000110                                // 0x005f78ef    0510010000
                         {disp8} jmp        _jmp_addr_0x005f790f                           // 0x005f78f4    eb19
_jmp_addr_0x005f78f6:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000dbe  // 0x005f78f6    813dac7cd100be0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f7900    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f790c                           // 0x005f7905    7605
                         add                eax, 0x0000a4e8                                // 0x005f7907    05e8a40000
_jmp_addr_0x005f790c:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f790c    8b4008
_jmp_addr_0x005f790f:    push               eax                                            // 0x005f790f    50
                         call               _jmp_addr_0x0053b4a0                           // 0x005f7910    e88b3bf4ff
                         {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x005f7915    8b4c245c
                         {disp32} mov       edx, dword ptr [esp + 0x00000080]              // 0x005f7919    8b942480000000
                         add                esp, 0x04                                      // 0x005f7920    83c404
                         push               ecx                                            // 0x005f7923    51
                         push               eax                                            // 0x005f7924    50
                         and                edx, 0x0000ffff                                // 0x005f7925    81e2ffff0000
                         push               edx                                            // 0x005f792b    52
                         {disp32} lea       eax, dword ptr [esp + 0x0000008a]              // 0x005f792c    8d84248a000000
                         push               eax                                            // 0x005f7933    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000494]              // 0x005f7934    8d8c2494040000
                         push               0x00bf3c84                                     // 0x005f793b    68843cbf00
                         push               ecx                                            // 0x005f7940    51
                         call               dword ptr [rdata_bytes + 0x390]                // 0x005f7941    ff1590938a00
                         add                esp, 0x18                                      // 0x005f7947    83c418
                         pop                edi                                            // 0x005f794a    5f
                         pop                esi                                            // 0x005f794b    5e
                         pop                ebp                                            // 0x005f794c    5d
                         pop                ebx                                            // 0x005f794d    5b
                         add                esp, 0x0000549c                                // 0x005f794e    81c49c540000
                         ret                0x000c                                         // 0x005f7954    c20c00
_jmp_addr_0x005f7957:    cmp                dword ptr [data_bytes + 0x351cac], 0x00000dbd  // 0x005f7957    813dac7cd100bd0d0000
                         {disp8} ja         _jmp_addr_0x005f796a                           // 0x005f7961    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f7963    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f7976                           // 0x005f7968    eb0c
_jmp_addr_0x005f796a:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]         // 0x005f796a    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a4dc]              // 0x005f7970    8d82dca40000
_jmp_addr_0x005f7976:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f7976    8b4008
                         push               eax                                            // 0x005f7979    50
                         call               _jmp_addr_0x0053b4a0                           // 0x005f797a    e8213bf4ff
                         add                esp, 0x04                                      // 0x005f797f    83c404
                         push               eax                                            // 0x005f7982    50
                         {disp32} lea       eax, dword ptr [esp + 0x00000488]              // 0x005f7983    8d842488040000
                         push               eax                                            // 0x005f798a    50
                         call               dword ptr [rdata_bytes + 0x390]                // 0x005f798b    ff1590938a00
                         add                esp, 0x08                                      // 0x005f7991    83c408
                         pop                edi                                            // 0x005f7994    5f
                         pop                esi                                            // 0x005f7995    5e
                         pop                ebp                                            // 0x005f7996    5d
                         pop                ebx                                            // 0x005f7997    5b
                         add                esp, 0x0000549c                                // 0x005f7998    81c49c540000
                         ret                0x000c                                         // 0x005f799e    c20c00
_jmp_addr_0x005f79a1:    cmp                eax, 0x00001004                                // 0x005f79a1    3d04100000
                         {disp32} jg        _jmp_addr_0x005f7bc0                           // 0x005f79a6    0f8f14020000
                         {disp32} je        _jmp_addr_0x005f7a5b                           // 0x005f79ac    0f84a9000000
                         sub                eax, 0x00000fac                                // 0x005f79b2    2dac0f0000
                         {disp8} je         _jmp_addr_0x005f79d4                           // 0x005f79b7    741b
                         dec                eax                                            // 0x005f79b9    48
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f79ba    0f853c030000
                         mov.s              ecx, ebx                                       // 0x005f79c0    8bcb
                         call               _jmp_addr_0x005f6a70                           // 0x005f79c2    e8a9f0ffff
                         pop                edi                                            // 0x005f79c7    5f
                         pop                esi                                            // 0x005f79c8    5e
                         pop                ebp                                            // 0x005f79c9    5d
                         pop                ebx                                            // 0x005f79ca    5b
                         add                esp, 0x0000549c                                // 0x005f79cb    81c49c540000
                         ret                0x000c                                         // 0x005f79d1    c20c00
_jmp_addr_0x005f79d4:    add                ebp, 0x00000094                                // 0x005f79d4    81c594000000
                         add                ecx, 0x9                                       // 0x005f79da    83c109
                         push               ebp                                            // 0x005f79dd    55
                         push               ecx                                            // 0x005f79de    51
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f79df    ff157c968a00
                         add                esp, 0x08                                      // 0x005f79e5    83c408
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                    // 0x005f79e8    8d4c245c
                         push               ecx                                            // 0x005f79ec    51
                         {disp8} lea        edx, dword ptr [esp + 0x58]                    // 0x005f79ed    8d542458
                         push               edx                                            // 0x005f79f1    52
                         push               0x00000fac                                     // 0x005f79f2    68ac0f0000
                         push               esi                                            // 0x005f79f7    56
                         {disp8} mov        dword ptr [esp + 0x2c], eax                    // 0x005f79f8    8944242c
                         call               dword ptr [rdata_bytes + 0x64c]                // 0x005f79fc    ff154c968a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]         // 0x005f7a02    a1ac7cd100
                         add                esp, 0x10                                      // 0x005f7a07    83c410
                         cmp                eax, 0x00000dbf                                // 0x005f7a0a    3dbf0d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f7a0f    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f7a1b                           // 0x005f7a14    7605
                         add                eax, 0x0000a4f4                                // 0x005f7a16    05f4a40000
_jmp_addr_0x005f7a1b:    {disp8} mov        ecx, dword ptr [esp + 0x5c]                    // 0x005f7a1b    8b4c245c
                         {disp8} mov        esi, dword ptr [eax + 0x08]                    // 0x005f7a1f    8b7008
                         push               ecx                                            // 0x005f7a22    51
                         call               _CHAR2WCHAR__FPc                               // 0x005f7a23    e878862300
                         add                esp, 0x04                                      // 0x005f7a28    83c404
                         push               eax                                            // 0x005f7a2b    50
                         push               esi                                            // 0x005f7a2c    56
                         {disp32} lea       edx, dword ptr [esp + 0x00002ca0]              // 0x005f7a2d    8d9424a02c0000
                         push               0x00bf3c74                                     // 0x005f7a34    68743cbf00
                         push               edx                                            // 0x005f7a39    52
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f7a3a    ff15d8938a00
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                    // 0x005f7a40    8b4b04
                         add                esp, 0x10                                      // 0x005f7a43    83c410
                         push               edi                                            // 0x005f7a46    57
                         push               edi                                            // 0x005f7a47    57
                         push               eax                                            // 0x005f7a48    50
                         call               @MessageBoxA__8SetupBoxFPw11MSGBOXSTYLEUl@20   // 0x005f7a49    e84297e1ff
                         pop                edi                                            // 0x005f7a4e    5f
                         pop                esi                                            // 0x005f7a4f    5e
                         pop                ebp                                            // 0x005f7a50    5d
                         pop                ebx                                            // 0x005f7a51    5b
                         add                esp, 0x0000549c                                // 0x005f7a52    81c49c540000
                         ret                0x000c                                         // 0x005f7a58    c20c00
_jmp_addr_0x005f7a5b:    {disp8} mov        esi, dword ptr [ebx + 0x2c]                    // 0x005f7a5b    8b732c
                         {disp32} mov       eax, dword ptr [esi + 0x00000248]              // 0x005f7a5e    8b8648020000
                         cmp.s              eax, edi                                       // 0x005f7a64    3bc7
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x005f7a66    897c2410
                         {disp8} jl         _jmp_addr_0x005f7a87                           // 0x005f7a6a    7c1b
                         cmp                eax, dword ptr [esi + 0x00000250]              // 0x005f7a6c    3b8650020000
                         {disp8} jge        _jmp_addr_0x005f7a83                           // 0x005f7a72    7d0f
                         {disp32} mov       ecx, dword ptr [esi + 0x00000264]              // 0x005f7a74    8b8e64020000
                         mov                edx, dword ptr [ecx + eax * 0x4]               // 0x005f7a7a    8b1481
                         {disp8} mov        dword ptr [esp + 0x10], edx                    // 0x005f7a7d    89542410
                         {disp8} jmp        _jmp_addr_0x005f7a87                           // 0x005f7a81    eb04
_jmp_addr_0x005f7a83:    {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x005f7a83    897c2410
_jmp_addr_0x005f7a87:    {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f7a87    8b8650020000
                         cmp.s              eax, edi                                       // 0x005f7a8d    3bc7
                         {disp8} jle        _jmp_addr_0x005f7aa4                           // 0x005f7a8f    7e13
_jmp_addr_0x005f7a91:    dec                eax                                            // 0x005f7a91    48
                         push               eax                                            // 0x005f7a92    50
                         mov.s              ecx, esi                                       // 0x005f7a93    8bce
                         call               @DeleteString__9SetupListFi@12                 // 0x005f7a95    e8c632e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f7a9a    8b8650020000
                         cmp.s              eax, edi                                       // 0x005f7aa0    3bc7
                         {disp8} jg         _jmp_addr_0x005f7a91                           // 0x005f7aa2    7fed
_jmp_addr_0x005f7aa4:    push               0x0                                            // 0x005f7aa4    6a00
                         call               dword ptr [rdata_bytes + 0x660]                // 0x005f7aa6    ff1560968a00
                         mov.s              edi, eax                                       // 0x005f7aac    8bf8
                         add                esp, 0x04                                      // 0x005f7aae    83c404
                         test               edi, edi                                       // 0x005f7ab1    85ff
                         {disp32} je        _jmp_addr_0x005f7cfc                           // 0x005f7ab3    0f8443020000
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x3d8]           // 0x005f7ab9    8b2dd8938a00
_jmp_addr_0x005f7abf:    {disp32} mov       eax, dword ptr [edi + 0x00000134]              // 0x005f7abf    8b8734010000
                         test               eax, eax                                       // 0x005f7ac5    85c0
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]         // 0x005f7ac7    8b15ac7cd100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x351ca8]         // 0x005f7acd    8b0da87cd100
                         {disp8} je         _jmp_addr_0x005f7aea                           // 0x005f7ad3    7415
                         cmp                edx, 0x00001901                                // 0x005f7ad5    81fa01190000
                         mov.s              eax, ecx                                       // 0x005f7adb    8bc1
                         {disp8} jbe        _jmp_addr_0x005f7ae5                           // 0x005f7add    7606
                         {disp32} lea       eax, dword ptr [ecx + 0x00012c0c]              // 0x005f7adf    8d810c2c0100
_jmp_addr_0x005f7ae5:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f7ae5    8b4008
                         {disp8} jmp        _jmp_addr_0x005f7aef                           // 0x005f7ae8    eb05
_jmp_addr_0x005f7aea:    mov                eax, 0x00c4cd30                                // 0x005f7aea    b830cdc400
_jmp_addr_0x005f7aef:    cmp                dword ptr [edi + 0x00000140], 0x04             // 0x005f7aef    83bf4001000004
                         {disp8} jne        _jmp_addr_0x005f7b0b                           // 0x005f7af6    7513
                         cmp                edx, 0x00000de3                                // 0x005f7af8    81fae30d0000
                         {disp8} jbe        _jmp_addr_0x005f7b06                           // 0x005f7afe    7606
                         add                ecx, 0x0000a6a4                                // 0x005f7b00    81c1a4a60000
_jmp_addr_0x005f7b06:    {disp8} mov        esi, dword ptr [ecx + 0x08]                    // 0x005f7b06    8b7108
                         {disp8} jmp        _jmp_addr_0x005f7b10                           // 0x005f7b09    eb05
_jmp_addr_0x005f7b0b:    mov                esi, 0x00c4cd30                                // 0x005f7b0b    be30cdc400
_jmp_addr_0x005f7b10:    push               eax                                            // 0x005f7b10    50
                         push               edi                                            // 0x005f7b11    57
                         call               dword ptr [rdata_bytes + 0x664]                // 0x005f7b12    ff1564968a00
                         add                esp, 0x04                                      // 0x005f7b18    83c404
                         push               eax                                            // 0x005f7b1b    50
                         {disp8} lea        eax, dword ptr [edi + 0x04]                    // 0x005f7b1c    8d4704
                         push               esi                                            // 0x005f7b1f    56
                         push               eax                                            // 0x005f7b20    50
                         call               _CHAR2WCHAR__FPc                               // 0x005f7b21    e87a852300
                         add                esp, 0x04                                      // 0x005f7b26    83c404
                         push               eax                                            // 0x005f7b29    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00003cb0]              // 0x005f7b2a    8d8c24b03c0000
                         push               0x00bf3c58                                     // 0x005f7b31    68583cbf00
                         push               ecx                                            // 0x005f7b36    51
                         call               ebp                                            // 0x005f7b37    ffd5
                         {disp8} mov        esi, dword ptr [ebx + 0x2c]                    // 0x005f7b39    8b732c
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f7b3c    8b9650020000
                         add                esp, 0x18                                      // 0x005f7b42    83c418
                         push               eax                                            // 0x005f7b45    50
                         push               edx                                            // 0x005f7b46    52
                         mov.s              ecx, esi                                       // 0x005f7b47    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f7b49    e82233e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f7b4e    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f7b54    8d41ff
                         test               eax, eax                                       // 0x005f7b57    85c0
                         {disp8} jl         _jmp_addr_0x005f7b6c                           // 0x005f7b59    7c11
                         cmp.s              eax, ecx                                       // 0x005f7b5b    3bc1
                         {disp8} jge        _jmp_addr_0x005f7b6c                           // 0x005f7b5d    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f7b5f    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f7b65    c7048100000000
_jmp_addr_0x005f7b6c:    {disp8} mov        ecx, dword ptr [ebx + 0x2c]                    // 0x005f7b6c    8b4b2c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f7b6f    8b8150020000
                         dec                eax                                            // 0x005f7b75    48
                         {disp8} js         _jmp_addr_0x005f7b89                           // 0x005f7b76    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7b78    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7b89                           // 0x005f7b7e    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]              // 0x005f7b80    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], edi               // 0x005f7b86    893c82
_jmp_addr_0x005f7b89:    cmp                edi, dword ptr [esp + 0x10]                    // 0x005f7b89    3b7c2410
                         {disp8} jne        _jmp_addr_0x005f7b9f                           // 0x005f7b8d    7510
                         {disp8} mov        eax, dword ptr [ebx + 0x2c]                    // 0x005f7b8f    8b432c
                         {disp32} mov       ecx, dword ptr [eax + 0x00000250]              // 0x005f7b92    8b8850020000
                         dec                ecx                                            // 0x005f7b98    49
                         {disp32} mov       dword ptr [eax + 0x00000248], ecx              // 0x005f7b99    898848020000
_jmp_addr_0x005f7b9f:    push               edi                                            // 0x005f7b9f    57
                         call               dword ptr [rdata_bytes + 0x660]                // 0x005f7ba0    ff1560968a00
                         mov.s              edi, eax                                       // 0x005f7ba6    8bf8
                         add                esp, 0x04                                      // 0x005f7ba8    83c404
                         test               edi, edi                                       // 0x005f7bab    85ff
                         {disp32} jne       _jmp_addr_0x005f7abf                           // 0x005f7bad    0f850cffffff
                         pop                edi                                            // 0x005f7bb3    5f
                         pop                esi                                            // 0x005f7bb4    5e
                         pop                ebp                                            // 0x005f7bb5    5d
                         pop                ebx                                            // 0x005f7bb6    5b
                         add                esp, 0x0000549c                                // 0x005f7bb7    81c49c540000
                         ret                0x000c                                         // 0x005f7bbd    c20c00
_jmp_addr_0x005f7bc0:    cmp                eax, 0x00001080                                // 0x005f7bc0    3d80100000
                         {disp8} je         _jmp_addr_0x005f7c37                           // 0x005f7bc5    7470
                         cmp                eax, 0x000013ec                                // 0x005f7bc7    3dec130000
                         {disp32} jne       _jmp_addr_0x005f7cfc                           // 0x005f7bcc    0f852a010000
                         {disp32} mov       ebx, dword ptr [rdata_bytes + 0x67c]           // 0x005f7bd2    8b1d7c968a00
                         {disp32} lea       edi, dword ptr [ebp + 0x00000094]              // 0x005f7bd8    8dbd94000000
                         add                ecx, 0x9                                       // 0x005f7bde    83c109
                         push               edi                                            // 0x005f7be1    57
                         push               ecx                                            // 0x005f7be2    51
                         call               ebx                                            // 0x005f7be3    ffd3
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x005f7be5    89442424
                         mov                esi, dword ptr [esi]                           // 0x005f7be9    8b36
                         add                esi, 0x09                                      // 0x005f7beb    83c609
                         push               edi                                            // 0x005f7bee    57
                         push               esi                                            // 0x005f7bef    56
                         call               ebx                                            // 0x005f7bf0    ffd3
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                    // 0x005f7bf2    8b54242c
                         {disp8} mov        ecx, dword ptr [edx + 0x7c]                    // 0x005f7bf6    8b4a7c
                         {disp32} mov       dword ptr [data_bytes + 0x35a4cc], ecx         // 0x005f7bf9    890dcc04d200
                         add                esp, 0x10                                      // 0x005f7bff    83c410
                         mov                ecx, 0x00d204a8                                // 0x005f7c02    b9a804d200
                         {disp32} mov       dword ptr [data_bytes + 0x35a4c8], eax         // 0x005f7c07    a3c804d200
                         {disp32} mov       dword ptr [data_bytes + 0x35a4d0], ebp         // 0x005f7c0c    892dd004d200
                         call               _jmp_addr_0x005ebd20                           // 0x005f7c12    e80941ffff
                         call               _HideAll__13DialogBoxBaseFv@0                  // 0x005f7c17    e8c4baf1ff
                         pop                edi                                            // 0x005f7c1c    5f
                         pop                esi                                            // 0x005f7c1d    5e
                         pop                ebp                                            // 0x005f7c1e    5d
                         {disp32} mov       byte ptr [data_bytes + 0x30a6dc], 0x00         // 0x005f7c1f    c605dc06cd0000
                         {disp32} mov       byte ptr [data_bytes + 0x30a6dd], 0x01         // 0x005f7c26    c605dd06cd0001
                         pop                ebx                                            // 0x005f7c2d    5b
                         add                esp, 0x0000549c                                // 0x005f7c2e    81c49c540000
                         ret                0x000c                                         // 0x005f7c34    c20c00
_jmp_addr_0x005f7c37:    {disp8} lea        edx, dword ptr [esp + 0x24]                    // 0x005f7c37    8d542424
                         push               edx                                            // 0x005f7c3b    52
                         {disp8} lea        eax, dword ptr [esp + 0x34]                    // 0x005f7c3c    8d442434
                         push               eax                                            // 0x005f7c40    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                    // 0x005f7c41    8d4c2418
                         push               ecx                                            // 0x005f7c45    51
                         {disp8} lea        edx, dword ptr [esp + 0x5c]                    // 0x005f7c46    8d54245c
                         push               edx                                            // 0x005f7c4a    52
                         push               0x00001080                                     // 0x005f7c4b    6880100000
                         push               esi                                            // 0x005f7c50    56
                         call               dword ptr [rdata_bytes + 0x64c]                // 0x005f7c51    ff154c968a00
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                    // 0x005f7c57    8b44243c
                         push               eax                                            // 0x005f7c5b    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000174]              // 0x005f7c5c    8d8c2474010000
                         push               ecx                                            // 0x005f7c63    51
                         call               _wcscpy                                        // 0x005f7c64    e84de31c00
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x005f7c69    8b442430
                         add                esp, 0x20                                      // 0x005f7c6d    83c420
                         {disp32} lea       edx, dword ptr [esp + 0x00000158]              // 0x005f7c70    8d942458010000
                         push               edx                                            // 0x005f7c77    52
                         push               eax                                            // 0x005f7c78    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00004cb0]              // 0x005f7c79    8d8c24b04c0000
                         push               0x009d0400                                     // 0x005f7c80    6800049d00
                         push               ecx                                            // 0x005f7c85    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f7c86    ff15d8938a00
                         {disp8} mov        esi, dword ptr [ebx + 0x30]                    // 0x005f7c8c    8b7330
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f7c8f    8b9650020000
                         add                esp, 0x10                                      // 0x005f7c95    83c410
                         push               eax                                            // 0x005f7c98    50
                         push               edx                                            // 0x005f7c99    52
                         mov.s              ecx, esi                                       // 0x005f7c9a    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f7c9c    e8cf31e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f7ca1    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f7ca7    8d41ff
                         cmp.s              eax, edi                                       // 0x005f7caa    3bc7
                         {disp8} jl         _jmp_addr_0x005f7cbf                           // 0x005f7cac    7c11
                         cmp.s              eax, ecx                                       // 0x005f7cae    3bc1
                         {disp8} jge        _jmp_addr_0x005f7cbf                           // 0x005f7cb0    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f7cb2    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x008080ff        // 0x005f7cb8    c70481ff808000
_jmp_addr_0x005f7cbf:    {disp8} mov        ecx, dword ptr [ebx + 0x30]                    // 0x005f7cbf    8b4b30
                         push               0x1                                            // 0x005f7cc2    6a01
                         call               @AutoScroll__9SetupListFb@9                    // 0x005f7cc4    e80721e1ff
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005f7cc9    8b542410
                         push               edx                                            // 0x005f7ccd    52
                         call               _jmp_addr_0x0053b4a0                           // 0x005f7cce    e8cd37f4ff
                         or                 ecx, 0xffffffff                                // 0x005f7cd3    83c9ff
                         mov.s              edi, eax                                       // 0x005f7cd6    8bf8
                         xor.s              eax, eax                                       // 0x005f7cd8    33c0
                         add                esp, 0x04                                      // 0x005f7cda    83c404
                         repne scasb                                                       // 0x005f7cdd    f2ae
                         not                ecx                                            // 0x005f7cdf    f7d1
                         sub.s              edi, ecx                                       // 0x005f7ce1    2bf9
                         mov.s              eax, ecx                                       // 0x005f7ce3    8bc1
                         mov.s              esi, edi                                       // 0x005f7ce5    8bf7
                         shr                ecx, 2                                         // 0x005f7ce7    c1e902
                         {disp32} lea       edx, dword ptr [esp + 0x000000e4]              // 0x005f7cea    8d9424e4000000
                         mov.s              edi, edx                                       // 0x005f7cf1    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f7cf3    f3a5
                         mov.s              ecx, eax                                       // 0x005f7cf5    8bc8
                         and                ecx, 0x03                                      // 0x005f7cf7    83e103
                         rep movsb                                                         // 0x005f7cfa    f3a4
_jmp_addr_0x005f7cfc:    pop                edi                                            // 0x005f7cfc    5f
                         pop                esi                                            // 0x005f7cfd    5e
                         pop                ebp                                            // 0x005f7cfe    5d
                         pop                ebx                                            // 0x005f7cff    5b
                         add                esp, 0x0000549c                                // 0x005f7d00    81c49c540000
                         ret                0x000c                                         // 0x005f7d06    c20c00
                         nop                                                               // 0x005f7d09    90
                         nop                                                               // 0x005f7d0a    90
                         nop                                                               // 0x005f7d0b    90
                         nop                                                               // 0x005f7d0c    90
                         nop                                                               // 0x005f7d0d    90
                         nop                                                               // 0x005f7d0e    90
                         nop                                                               // 0x005f7d0f    90
_jmp_addr_0x005f7d10:    {disp32} mov       eax, dword ptr [data_bytes + 0x35a4d8]         // 0x005f7d10    a1d804d200
                         push               ebx                                            // 0x005f7d15    53
                         push               ebp                                            // 0x005f7d16    55
                         push               esi                                            // 0x005f7d17    56
                         push               edi                                            // 0x005f7d18    57
                         mov.s              edi, ecx                                       // 0x005f7d19    8bf9
                         {disp8} mov        ecx, dword ptr [edi + 0x2c]                    // 0x005f7d1b    8b4f2c
                         cmp                eax, 0x01                                      // 0x005f7d1e    83f801
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]              // 0x005f7d21    8b8148020000
                         {disp32} jne       _jmp_addr_0x005f7dde                           // 0x005f7d27    0f85b1000000
                         xor.s              ebp, ebp                                       // 0x005f7d2d    33ed
                         cmp.s              eax, ebp                                       // 0x005f7d2f    3bc5
                         {disp32} jl        _jmp_addr_0x005f7f65                           // 0x005f7d31    0f8c2e020000
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7d37    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7d4a                           // 0x005f7d3d    7d0b
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]              // 0x005f7d3f    8b8964020000
                         mov                eax, dword ptr [ecx + eax * 0x4]               // 0x005f7d45    8b0481
                         {disp8} jmp        _jmp_addr_0x005f7d4c                           // 0x005f7d48    eb02
_jmp_addr_0x005f7d4a:    xor.s              eax, eax                                       // 0x005f7d4a    33c0
_jmp_addr_0x005f7d4c:    add                eax, 0x04                                      // 0x005f7d4c    83c004
                         push               eax                                            // 0x005f7d4f    50
                         call               _CHAR2WCHAR__FPc                               // 0x005f7d50    e84b832300
                         {disp8} mov        esi, dword ptr [edi + 0x4c]                    // 0x005f7d55    8b774c
                         push               0x000000ff                                     // 0x005f7d58    68ff000000
                         push               eax                                            // 0x005f7d5d    50
                         {disp8} lea        ebx, dword ptr [esi + 0x24]                    // 0x005f7d5e    8d5e24
                         push               ebx                                            // 0x005f7d61    53
                         call               _wcsncpy                                       // 0x005f7d62    e8bee61c00
                         push               ebx                                            // 0x005f7d67    53
                         {disp32} mov       word ptr [esi + 0x00000222], bp                // 0x005f7d68    6689ae22020000
                         call               _wcslen                                        // 0x005f7d6f    e8eee61c00
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax              // 0x005f7d74    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax              // 0x005f7d7a    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax              // 0x005f7d80    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], ebp              // 0x005f7d86    89ae58020000
                         {disp8} mov        edi, dword ptr [edi + 0x2c]                    // 0x005f7d8c    8b7f2c
                         {disp32} mov       eax, dword ptr [edi + 0x00000248]              // 0x005f7d8f    8b8748020000
                         add                esp, 0x14                                      // 0x005f7d95    83c414
                         cmp.s              eax, ebp                                       // 0x005f7d98    3bc5
                         {disp8} jl         _jmp_addr_0x005f7daf                           // 0x005f7d9a    7c13
                         cmp                eax, dword ptr [edi + 0x00000250]              // 0x005f7d9c    3b8750020000
                         {disp8} jge        _jmp_addr_0x005f7daf                           // 0x005f7da2    7d0b
                         {disp32} mov       edx, dword ptr [edi + 0x00000264]              // 0x005f7da4    8b9764020000
                         mov                eax, dword ptr [edx + eax * 0x4]               // 0x005f7daa    8b0482
                         {disp8} jmp        _jmp_addr_0x005f7db1                           // 0x005f7dad    eb02
_jmp_addr_0x005f7daf:    xor.s              eax, eax                                       // 0x005f7daf    33c0
_jmp_addr_0x005f7db1:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f7db1    8b0dd404d200
                         mov                ecx, dword ptr [ecx]                           // 0x005f7db7    8b09
                         add                eax, 0x04                                      // 0x005f7db9    83c004
                         push               eax                                            // 0x005f7dbc    50
                         push               ecx                                            // 0x005f7dbd    51
                         push               0x0000138e                                     // 0x005f7dbe    688e130000
                         call               dword ptr [rdata_bytes + 0x490]                // 0x005f7dc3    ff1590948a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7dc9    8b0dac04d200
                         add                esp, 0x0c                                      // 0x005f7dcf    83c40c
                         push               eax                                            // 0x005f7dd2    50
                         call               dword ptr [rdata_bytes + 0x54c]                // 0x005f7dd3    ff154c958a00
                         pop                edi                                            // 0x005f7dd9    5f
                         pop                esi                                            // 0x005f7dda    5e
                         pop                ebp                                            // 0x005f7ddb    5d
                         pop                ebx                                            // 0x005f7ddc    5b
                         ret                                                               // 0x005f7ddd    c3
_jmp_addr_0x005f7dde:    test               eax, eax                                       // 0x005f7dde    85c0
                         {disp32} jl        _jmp_addr_0x005f7ed0                           // 0x005f7de0    0f8cea000000
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7de6    3b8150020000
                         {disp32} jge       _jmp_addr_0x005f7ed0                           // 0x005f7dec    0f8dde000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]              // 0x005f7df2    8b9164020000
                         cmp                dword ptr [edx + eax * 0x4], 0x00              // 0x005f7df8    833c8200
                         {disp32} je        _jmp_addr_0x005f7ed0                           // 0x005f7dfc    0f84ce000000
                         test               eax, eax                                       // 0x005f7e02    85c0
                         {disp8} jl         _jmp_addr_0x005f7e19                           // 0x005f7e04    7c13
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7e06    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7e19                           // 0x005f7e0c    7d0b
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000264]              // 0x005f7e0e    8b8964020000
                         mov                ebp, dword ptr [ecx + eax * 0x4]               // 0x005f7e14    8b2c81
                         {disp8} jmp        _jmp_addr_0x005f7e1b                           // 0x005f7e17    eb02
_jmp_addr_0x005f7e19:    xor.s              ebp, ebp                                       // 0x005f7e19    33ed
_jmp_addr_0x005f7e1b:    {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f7e1b    8b7734
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f7e1e    8b8650020000
                         test               eax, eax                                       // 0x005f7e24    85c0
                         {disp8} jle        _jmp_addr_0x005f7e3b                           // 0x005f7e26    7e13
_jmp_addr_0x005f7e28:    dec                eax                                            // 0x005f7e28    48
                         push               eax                                            // 0x005f7e29    50
                         mov.s              ecx, esi                                       // 0x005f7e2a    8bce
                         call               @DeleteString__9SetupListFi@12                 // 0x005f7e2c    e82f2fe1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f7e31    8b8650020000
                         test               eax, eax                                       // 0x005f7e37    85c0
                         {disp8} jg         _jmp_addr_0x005f7e28                           // 0x005f7e39    7fed
_jmp_addr_0x005f7e3b:    {disp32} mov       ebp, dword ptr [ebp + 0x00000138]              // 0x005f7e3b    8bad38010000
                         test               ebp, ebp                                       // 0x005f7e41    85ed
                         mov                bl, 0x01                                       // 0x005f7e43    b301
                         {disp32} je        _jmp_addr_0x005f7ed0                           // 0x005f7e45    0f8485000000
_jmp_addr_0x005f7e4b:    {disp8} mov        edx, dword ptr [ebp + 0x04]                    // 0x005f7e4b    8b5504
                         {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f7e4e    8b7734
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f7e51    8b8650020000
                         add                edx, 0x00000110                                // 0x005f7e57    81c210010000
                         push               edx                                            // 0x005f7e5d    52
                         push               eax                                            // 0x005f7e5e    50
                         mov.s              ecx, esi                                       // 0x005f7e5f    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f7e61    e80a30e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f7e66    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f7e6c    8d41ff
                         test               eax, eax                                       // 0x005f7e6f    85c0
                         {disp8} jl         _jmp_addr_0x005f7e84                           // 0x005f7e71    7c11
                         cmp.s              eax, ecx                                       // 0x005f7e73    3bc1
                         {disp8} jge        _jmp_addr_0x005f7e84                           // 0x005f7e75    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f7e77    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f7e7d    c7048100000000
_jmp_addr_0x005f7e84:    test               bl, bl                                         // 0x005f7e84    84db
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                    // 0x005f7e86    8b4f34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f7e89    8b8150020000
                         {disp8} je         _jmp_addr_0x005f7eab                           // 0x005f7e8f    741a
                         dec                eax                                            // 0x005f7e91    48
                         {disp8} js         _jmp_addr_0x005f7ec3                           // 0x005f7e92    782f
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7e94    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7ec3                           // 0x005f7e9a    7d27
                         {disp32} mov       edx, dword ptr [ecx + 0x00000268]              // 0x005f7e9c    8b9168020000
                         mov                dword ptr [edx + eax * 0x4], 0x000000ff        // 0x005f7ea2    c70482ff000000
                         {disp8} jmp        _jmp_addr_0x005f7ec3                           // 0x005f7ea9    eb18
_jmp_addr_0x005f7eab:    dec                eax                                            // 0x005f7eab    48
                         {disp8} js         _jmp_addr_0x005f7ec3                           // 0x005f7eac    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f7eae    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f7ec3                           // 0x005f7eb4    7d0d
                         {disp32} mov       ecx, dword ptr [ecx + 0x00000268]              // 0x005f7eb6    8b8968020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f7ebc    c7048100000000
_jmp_addr_0x005f7ec3:    {disp8} mov        ebp, dword ptr [ebp + 0x00]                    // 0x005f7ec3    8b6d00
                         xor.s              bl, bl                                         // 0x005f7ec6    32db
                         test               ebp, ebp                                       // 0x005f7ec8    85ed
                         {disp32} jne       _jmp_addr_0x005f7e4b                           // 0x005f7eca    0f857bffffff
_jmp_addr_0x005f7ed0:    {disp32} mov       edx, dword ptr [data_bytes + 0x35a4b0]         // 0x005f7ed0    8b15b004d200
                         {disp8} mov        eax, dword ptr [edx + 0x04]                    // 0x005f7ed6    8b4204
                         test               eax, eax                                       // 0x005f7ed9    85c0
                         {disp32} jne       _jmp_addr_0x005f7f65                           // 0x005f7edb    0f8584000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f7ee1    8b0da804d200
                         {disp32} mov       eax, dword ptr [rdata_bytes + 0x678]           // 0x005f7ee7    a178968a00
                         mov                eax, dword ptr [eax]                           // 0x005f7eec    8b00
                         add                ecx, 0x00000094                                // 0x005f7eee    81c194000000
                         push               ecx                                            // 0x005f7ef4    51
                         push               eax                                            // 0x005f7ef5    50
                         call               dword ptr [rdata_bytes + 0x67c]                // 0x005f7ef6    ff157c968a00
                         {disp8} mov        ecx, dword ptr [eax + 0x74]                    // 0x005f7efc    8b4874
                         add                esp, 0x08                                      // 0x005f7eff    83c408
                         cmp                ecx, 0x01                                      // 0x005f7f02    83f901
                         {disp8} ja         _jmp_addr_0x005f7f65                           // 0x005f7f05    775e
                         {disp8} mov        ecx, dword ptr [edi + 0x2c]                    // 0x005f7f07    8b4f2c
                         {disp32} mov       eax, dword ptr [ecx + 0x00000248]              // 0x005f7f0a    8b8148020000
                         test               eax, eax                                       // 0x005f7f10    85c0
                         {disp8} mov        ecx, dword ptr [edi + 0x38]                    // 0x005f7f12    8b4f38
                         {disp8} jl         _jmp_addr_0x005f7f42                           // 0x005f7f15    7c2b
                         mov                edx, dword ptr [ecx]                           // 0x005f7f17    8b11
                         push               0x0                                            // 0x005f7f19    6a00
                         call               dword ptr [edx + 8]                            // 0x005f7f1b    ff5208
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7f1e    a1ac04d200
                         test               eax, eax                                       // 0x005f7f23    85c0
                         {disp8} je         _jmp_addr_0x005f7f2e                           // 0x005f7f25    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005f7f27    8b4804
                         test               ecx, ecx                                       // 0x005f7f2a    85c9
                         {disp8} jne        _jmp_addr_0x005f7f65                           // 0x005f7f2c    7537
_jmp_addr_0x005f7f2e:    {disp8} mov        eax, dword ptr [edi + 0x48]                    // 0x005f7f2e    8b4748
                         {disp8} mov        edx, dword ptr [edi + 0x2c]                    // 0x005f7f31    8b572c
                         {disp8} mov        ecx, dword ptr [eax + 0x0c]                    // 0x005f7f34    8b480c
                         pop                edi                                            // 0x005f7f37    5f
                         pop                esi                                            // 0x005f7f38    5e
                         sub                ecx, 0x0a                                      // 0x005f7f39    83e90a
                         pop                ebp                                            // 0x005f7f3c    5d
                         {disp8} mov        dword ptr [edx + 0x14], ecx                    // 0x005f7f3d    894a14
                         pop                ebx                                            // 0x005f7f40    5b
                         ret                                                               // 0x005f7f41    c3
_jmp_addr_0x005f7f42:    mov                eax, dword ptr [ecx]                           // 0x005f7f42    8b01
                         push               0x1                                            // 0x005f7f44    6a01
                         call               dword ptr [eax + 8]                            // 0x005f7f46    ff5008
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f7f49    a1ac04d200
                         test               eax, eax                                       // 0x005f7f4e    85c0
                         {disp8} je         _jmp_addr_0x005f7f59                           // 0x005f7f50    7407
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x005f7f52    8b4804
                         test               ecx, ecx                                       // 0x005f7f55    85c9
                         {disp8} jne        _jmp_addr_0x005f7f65                           // 0x005f7f57    750c
_jmp_addr_0x005f7f59:    {disp8} mov        ecx, dword ptr [edi + 0x48]                    // 0x005f7f59    8b4f48
                         {disp8} mov        edx, dword ptr [edi + 0x2c]                    // 0x005f7f5c    8b572c
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x005f7f5f    8b4114
                         {disp8} mov        dword ptr [edx + 0x14], eax                    // 0x005f7f62    894214
_jmp_addr_0x005f7f65:    pop                edi                                            // 0x005f7f65    5f
                         pop                esi                                            // 0x005f7f66    5e
                         pop                ebp                                            // 0x005f7f67    5d
                         pop                ebx                                            // 0x005f7f68    5b
                         ret                                                               // 0x005f7f69    c3
                         call               dword ptr [__imp__TrackMouseEvent@4]           // 0x005f7f6a    ff151c908a00
_jmp_addr_0x005f7f70:    push               esi                                            // 0x005f7f70    56
                         mov.s              esi, ecx                                       // 0x005f7f71    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                    // 0x005f7f73    8b4e48
                         mov                eax, 0x00000028                                // 0x005f7f76    b828000000
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x005f7f7b    894108
                         {disp8} mov        edx, dword ptr [esi + 0x30]                    // 0x005f7f7e    8b5630
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x005f7f81    894208
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                    // 0x005f7f84    8b4e70
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                    // 0x005f7f87    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x005f7f8b    894108
                         {disp8} mov        eax, dword ptr [esi + 0x70]                    // 0x005f7f8e    8b4670
                         push               edi                                            // 0x005f7f91    57
                         push               edx                                            // 0x005f7f92    52
                         add                eax, 0x24                                      // 0x005f7f93    83c024
                         push               eax                                            // 0x005f7f96    50
                         call               _wcscpy                                        // 0x005f7f97    e81ae01c00
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x005f7f9c    8b4e40
                         mov                edx, dword ptr [ecx]                           // 0x005f7f9f    8b11
                         add                esp, 0x08                                      // 0x005f7fa1    83c408
                         push               0x1                                            // 0x005f7fa4    6a01
                         call               dword ptr [edx + 8]                            // 0x005f7fa6    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                    // 0x005f7fa9    8b4e2c
                         mov                eax, dword ptr [ecx]                           // 0x005f7fac    8b01
                         push               0x1                                            // 0x005f7fae    6a01
                         call               dword ptr [eax + 8]                            // 0x005f7fb0    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                    // 0x005f7fb3    8b4e38
                         mov                edx, dword ptr [ecx]                           // 0x005f7fb6    8b11
                         push               0x1                                            // 0x005f7fb8    6a01
                         call               dword ptr [edx + 8]                            // 0x005f7fba    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                    // 0x005f7fbd    8b4e3c
                         mov                eax, dword ptr [ecx]                           // 0x005f7fc0    8b01
                         push               0x1                                            // 0x005f7fc2    6a01
                         call               dword ptr [eax + 8]                            // 0x005f7fc4    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                    // 0x005f7fc7    8b4e4c
                         mov                edx, dword ptr [ecx]                           // 0x005f7fca    8b11
                         push               0x1                                            // 0x005f7fcc    6a01
                         call               dword ptr [edx + 8]                            // 0x005f7fce    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                    // 0x005f7fd1    8b4e50
                         mov                eax, dword ptr [ecx]                           // 0x005f7fd4    8b01
                         push               0x1                                            // 0x005f7fd6    6a01
                         call               dword ptr [eax + 8]                            // 0x005f7fd8    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                    // 0x005f7fdb    8b4e64
                         mov                edx, dword ptr [ecx]                           // 0x005f7fde    8b11
                         push               0x1                                            // 0x005f7fe0    6a01
                         call               dword ptr [edx + 8]                            // 0x005f7fe2    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x6c]                    // 0x005f7fe5    8b4e6c
                         mov                eax, dword ptr [ecx]                           // 0x005f7fe8    8b01
                         push               0x1                                            // 0x005f7fea    6a01
                         call               dword ptr [eax + 8]                            // 0x005f7fec    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x58]                    // 0x005f7fef    8b4e58
                         mov                edx, dword ptr [ecx]                           // 0x005f7ff2    8b11
                         push               0x1                                            // 0x005f7ff4    6a01
                         call               dword ptr [edx + 8]                            // 0x005f7ff6    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                    // 0x005f7ff9    8b4e1c
                         mov                eax, dword ptr [ecx]                           // 0x005f7ffc    8b01
                         push               0x1                                            // 0x005f7ffe    6a01
                         call               dword ptr [eax + 8]                            // 0x005f8000    ff5008
                         {disp8} mov        al, byte ptr [esp + 0x0c]                      // 0x005f8003    8a44240c
                         test               al, al                                         // 0x005f8007    84c0
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                    // 0x005f8009    8b4e44
                         {disp8} je         _jmp_addr_0x005f8045                           // 0x005f800c    7437
                         mov                edx, dword ptr [ecx]                           // 0x005f800e    8b11
                         push               0x0                                            // 0x005f8010    6a00
                         call               dword ptr [edx + 8]                            // 0x005f8012    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x58]                    // 0x005f8015    8b4e58
                         mov                eax, dword ptr [ecx]                           // 0x005f8018    8b01
                         push               0x0                                            // 0x005f801a    6a00
                         call               dword ptr [eax + 8]                            // 0x005f801c    ff5008
                         xor.s              eax, eax                                       // 0x005f801f    33c0
                         mov                ecx, 0x000000cb                                // 0x005f8021    b9cb000000
                         mov                edi, 0x00d4f1f0                                // 0x005f8026    bff0f1d400
                         rep stosd                                                         // 0x005f802b    f3ab
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                    // 0x005f802d    8b4e1c
                         mov                edx, dword ptr [ecx]                           // 0x005f8030    8b11
                         push               0x1                                            // 0x005f8032    6a01
                         call               dword ptr [edx + 8]                            // 0x005f8034    ff5208
                         {disp8} mov        eax, dword ptr [esi + 0x30]                    // 0x005f8037    8b4630
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                    // 0x005f803a    8b4e34
                         {disp8} mov        edx, dword ptr [eax + 0x14]                    // 0x005f803d    8b5014
                         {disp8} mov        dword ptr [ecx + 0x14], edx                    // 0x005f8040    895114
                         {disp8} jmp        _jmp_addr_0x005f806c                           // 0x005f8043    eb27
_jmp_addr_0x005f8045:    mov                eax, dword ptr [ecx]                           // 0x005f8045    8b01
                         push               0x1                                            // 0x005f8047    6a01
                         call               dword ptr [eax + 8]                            // 0x005f8049    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x58]                    // 0x005f804c    8b4e58
                         mov                edx, dword ptr [ecx]                           // 0x005f804f    8b11
                         push               0x1                                            // 0x005f8051    6a01
                         call               dword ptr [edx + 8]                            // 0x005f8053    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                    // 0x005f8056    8b4e1c
                         mov                eax, dword ptr [ecx]                           // 0x005f8059    8b01
                         push               0x1                                            // 0x005f805b    6a01
                         call               dword ptr [eax + 8]                            // 0x005f805d    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x78]                    // 0x005f8060    8b4e78
                         {disp8} mov        edx, dword ptr [esi + 0x34]                    // 0x005f8063    8b5634
                         {disp8} mov        eax, dword ptr [ecx + 0x14]                    // 0x005f8066    8b4114
                         {disp8} mov        dword ptr [edx + 0x14], eax                    // 0x005f8069    894214
_jmp_addr_0x005f806c:    {disp8} mov        esi, dword ptr [esi + 0x4c]                    // 0x005f806c    8b764c
                         push               0x000000ff                                     // 0x005f806f    68ff000000
                         {disp8} lea        edi, dword ptr [esi + 0x24]                    // 0x005f8074    8d7e24
                         push               0x00c4cd30                                     // 0x005f8077    6830cdc400
                         push               edi                                            // 0x005f807c    57
                         call               _wcsncpy                                       // 0x005f807d    e8a3e31c00
                         push               edi                                            // 0x005f8082    57
                         {disp32} mov       word ptr [esi + 0x00000222], 0x0000            // 0x005f8083    66c786220200000000
                         call               _wcslen                                        // 0x005f808c    e8d1e31c00
                         add                esp, 0x10                                      // 0x005f8091    83c410
                         pop                edi                                            // 0x005f8094    5f
                         {disp32} mov       dword ptr [esi + 0x0000024c], eax              // 0x005f8095    89864c020000
                         {disp32} mov       dword ptr [esi + 0x00000254], eax              // 0x005f809b    898654020000
                         {disp32} mov       dword ptr [esi + 0x00000250], eax              // 0x005f80a1    898650020000
                         {disp32} mov       dword ptr [esi + 0x00000258], 0x00000000       // 0x005f80a7    c7865802000000000000
                         pop                esi                                            // 0x005f80b1    5e
                         ret                0x0008                                         // 0x005f80b2    c20800
                         nop                                                               // 0x005f80b5    90
                         nop                                                               // 0x005f80b6    90
                         nop                                                               // 0x005f80b7    90
                         nop                                                               // 0x005f80b8    90
                         nop                                                               // 0x005f80b9    90
                         nop                                                               // 0x005f80ba    90
                         nop                                                               // 0x005f80bb    90
                         nop                                                               // 0x005f80bc    90
                         nop                                                               // 0x005f80bd    90
                         nop                                                               // 0x005f80be    90
                         nop                                                               // 0x005f80bf    90
_jmp_addr_0x005f80c0:    push               ebp                                            // 0x005f80c0    55
                         push               esi                                            // 0x005f80c1    56
                         mov.s              esi, ecx                                       // 0x005f80c2    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                    // 0x005f80c4    8b4e48
                         mov                eax, 0x000000fa                                // 0x005f80c7    b8fa000000
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x005f80cc    894108
                         {disp8} mov        edx, dword ptr [esi + 0x30]                    // 0x005f80cf    8b5630
                         {disp8} mov        dword ptr [edx + 0x08], eax                    // 0x005f80d2    894208
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                    // 0x005f80d5    8b4e70
                         {disp8} mov        dword ptr [ecx + 0x08], eax                    // 0x005f80d8    894108
                         cmp                dword ptr [data_bytes + 0x351cac], 0x00000d7a  // 0x005f80db    813dac7cd1007a0d0000
                         {disp8} ja         _jmp_addr_0x005f80ee                           // 0x005f80e5    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f80e7    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f80fa                           // 0x005f80ec    eb0c
_jmp_addr_0x005f80ee:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]         // 0x005f80ee    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a1b8]              // 0x005f80f4    8d82b8a10000
_jmp_addr_0x005f80fa:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f80fa    8b4008
                         {disp8} mov        ecx, dword ptr [esi + 0x54]                    // 0x005f80fd    8b4e54
                         push               eax                                            // 0x005f8100    50
                         add                ecx, 0x24                                      // 0x005f8101    83c124
                         push               ecx                                            // 0x005f8104    51
                         call               _wcscpy                                        // 0x005f8105    e8acde1c00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]         // 0x005f810a    a1ac7cd100
                         add                esp, 0x08                                      // 0x005f810f    83c408
                         cmp                eax, 0x00000dd6                                // 0x005f8112    3dd60d0000
                         {disp8} ja         _jmp_addr_0x005f8120                           // 0x005f8117    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f8119    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f812c                           // 0x005f811e    eb0c
_jmp_addr_0x005f8120:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]         // 0x005f8120    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a608]              // 0x005f8126    8d8208a60000
_jmp_addr_0x005f812c:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f812c    8b4008
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                    // 0x005f812f    8b4e70
                         push               eax                                            // 0x005f8132    50
                         add                ecx, 0x24                                      // 0x005f8133    83c124
                         push               ecx                                            // 0x005f8136    51
                         call               _wcscpy                                        // 0x005f8137    e87ade1c00
                         {disp8} mov        edx, dword ptr [esi + 0x78]                    // 0x005f813c    8b5678
                         {disp8} mov        eax, dword ptr [esi + 0x34]                    // 0x005f813f    8b4634
                         {disp8} mov        ecx, dword ptr [edx + 0x14]                    // 0x005f8142    8b4a14
                         {disp8} mov        dword ptr [eax + 0x14], ecx                    // 0x005f8145    894814
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4ac]         // 0x005f8148    a1ac04d200
                         xor.s              ebp, ebp                                       // 0x005f814d    33ed
                         add                esp, 0x08                                      // 0x005f814f    83c408
                         cmp.s              eax, ebp                                       // 0x005f8152    3bc5
                         {disp8} je         _jmp_addr_0x005f816c                           // 0x005f8154    7416
                         cmp                dword ptr [eax + 0x04], ebp                    // 0x005f8156    396804
                         {disp8} je         _jmp_addr_0x005f816c                           // 0x005f8159    7411
                         {disp8} mov        eax, dword ptr [esi + 0x2c]                    // 0x005f815b    8b462c
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                    // 0x005f815e    8b500c
                         add                edx, 0x00000145                                // 0x005f8161    81c245010000
                         {disp8} mov        dword ptr [eax + 0x14], edx                    // 0x005f8167    895014
                         {disp8} jmp        _jmp_addr_0x005f8178                           // 0x005f816a    eb0c
_jmp_addr_0x005f816c:    {disp8} mov        eax, dword ptr [esi + 0x48]                    // 0x005f816c    8b4648
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                    // 0x005f816f    8b4e2c
                         {disp8} mov        edx, dword ptr [eax + 0x14]                    // 0x005f8172    8b5014
                         {disp8} mov        dword ptr [ecx + 0x14], edx                    // 0x005f8175    895114
_jmp_addr_0x005f8178:    {disp8} mov        ecx, dword ptr [esi + 0x6c]                    // 0x005f8178    8b4e6c
                         mov                eax, dword ptr [ecx]                           // 0x005f817b    8b01
                         push               ebx                                            // 0x005f817d    53
                         push               edi                                            // 0x005f817e    57
                         push               ebp                                            // 0x005f817f    55
                         call               dword ptr [eax + 8]                            // 0x005f8180    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x2c]                    // 0x005f8183    8b4e2c
                         mov                edx, dword ptr [ecx]                           // 0x005f8186    8b11
                         push               ebp                                            // 0x005f8188    55
                         call               dword ptr [edx + 8]                            // 0x005f8189    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                    // 0x005f818c    8b4e44
                         mov                eax, dword ptr [ecx]                           // 0x005f818f    8b01
                         push               0x1                                            // 0x005f8191    6a01
                         call               dword ptr [eax + 8]                            // 0x005f8193    ff5008
                         {disp8} mov        edi, dword ptr [esi + 0x30]                    // 0x005f8196    8b7e30
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f8199    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f819f    3bc5
                         {disp8} jle        _jmp_addr_0x005f81b6                           // 0x005f81a1    7e13
_jmp_addr_0x005f81a3:    dec                eax                                            // 0x005f81a3    48
                         push               eax                                            // 0x005f81a4    50
                         mov.s              ecx, edi                                       // 0x005f81a5    8bcf
                         call               @DeleteString__9SetupListFi@12                 // 0x005f81a7    e8b42be1ff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f81ac    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f81b2    3bc5
                         {disp8} jg         _jmp_addr_0x005f81a3                           // 0x005f81b4    7fed
_jmp_addr_0x005f81b6:    {disp8} mov        edi, dword ptr [esi + 0x34]                    // 0x005f81b6    8b7e34
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f81b9    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f81bf    3bc5
                         {disp8} jle        _jmp_addr_0x005f81d6                           // 0x005f81c1    7e13
_jmp_addr_0x005f81c3:    dec                eax                                            // 0x005f81c3    48
                         push               eax                                            // 0x005f81c4    50
                         mov.s              ecx, edi                                       // 0x005f81c5    8bcf
                         call               @DeleteString__9SetupListFi@12                 // 0x005f81c7    e8942be1ff
                         {disp32} mov       eax, dword ptr [edi + 0x00000250]              // 0x005f81cc    8b8750020000
                         cmp.s              eax, ebp                                       // 0x005f81d2    3bc5
                         {disp8} jg         _jmp_addr_0x005f81c3                           // 0x005f81d4    7fed
_jmp_addr_0x005f81d6:    {disp8} mov        eax, dword ptr [esi + 0x2c]                    // 0x005f81d6    8b462c
                         {disp32} mov       dword ptr [eax + 0x00000248], 0xffffffff       // 0x005f81d9    c78048020000ffffffff
                         {disp8} mov        edi, dword ptr [esi + 0x48]                    // 0x005f81e3    8b7e48
                         push               0x000000ff                                     // 0x005f81e6    68ff000000
                         {disp8} lea        ebx, dword ptr [edi + 0x24]                    // 0x005f81eb    8d5f24
                         push               0x00c4cd30                                     // 0x005f81ee    6830cdc400
                         push               ebx                                            // 0x005f81f3    53
                         call               _wcsncpy                                       // 0x005f81f4    e82ce21c00
                         push               ebx                                            // 0x005f81f9    53
                         {disp32} mov       word ptr [edi + 0x00000222], bp                // 0x005f81fa    6689af22020000
                         call               _wcslen                                        // 0x005f8201    e85ce21c00
                         {disp32} mov       dword ptr [edi + 0x0000024c], eax              // 0x005f8206    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax              // 0x005f820c    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax              // 0x005f8212    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebp              // 0x005f8218    89af58020000
                         {disp8} mov        edi, dword ptr [esi + 0x4c]                    // 0x005f821e    8b7e4c
                         push               0x000000ff                                     // 0x005f8221    68ff000000
                         {disp8} lea        ebx, dword ptr [edi + 0x24]                    // 0x005f8226    8d5f24
                         push               0x00c4cd30                                     // 0x005f8229    6830cdc400
                         push               ebx                                            // 0x005f822e    53
                         call               _wcsncpy                                       // 0x005f822f    e8f1e11c00
                         push               ebx                                            // 0x005f8234    53
                         {disp32} mov       word ptr [edi + 0x00000222], bp                // 0x005f8235    6689af22020000
                         call               _wcslen                                        // 0x005f823c    e821e21c00
                         {disp32} mov       dword ptr [edi + 0x0000024c], eax              // 0x005f8241    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax              // 0x005f8247    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax              // 0x005f824d    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebp              // 0x005f8253    89af58020000
                         {disp8} mov        edi, dword ptr [esi + 0x50]                    // 0x005f8259    8b7e50
                         push               0x000000ff                                     // 0x005f825c    68ff000000
                         {disp8} lea        ebx, dword ptr [edi + 0x24]                    // 0x005f8261    8d5f24
                         push               0x00c4cd30                                     // 0x005f8264    6830cdc400
                         push               ebx                                            // 0x005f8269    53
                         call               _wcsncpy                                       // 0x005f826a    e8b6e11c00
                         push               ebx                                            // 0x005f826f    53
                         {disp32} mov       word ptr [edi + 0x00000222], bp                // 0x005f8270    6689af22020000
                         call               _wcslen                                        // 0x005f8277    e8e6e11c00
                         {disp32} mov       dword ptr [edi + 0x0000024c], eax              // 0x005f827c    89874c020000
                         {disp32} mov       dword ptr [edi + 0x00000254], eax              // 0x005f8282    898754020000
                         {disp32} mov       dword ptr [edi + 0x00000250], eax              // 0x005f8288    898750020000
                         {disp32} mov       dword ptr [edi + 0x00000258], ebp              // 0x005f828e    89af58020000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x005f8294    8b4e40
                         mov                edx, dword ptr [ecx]                           // 0x005f8297    8b11
                         add                esp, 0x30                                      // 0x005f8299    83c430
                         push               0x1                                            // 0x005f829c    6a01
                         call               dword ptr [edx + 8]                            // 0x005f829e    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                    // 0x005f82a1    8b4e38
                         mov                eax, dword ptr [ecx]                           // 0x005f82a4    8b01
                         push               0x1                                            // 0x005f82a6    6a01
                         call               dword ptr [eax + 8]                            // 0x005f82a8    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                    // 0x005f82ab    8b4e3c
                         mov                edx, dword ptr [ecx]                           // 0x005f82ae    8b11
                         push               0x1                                            // 0x005f82b0    6a01
                         call               dword ptr [edx + 8]                            // 0x005f82b2    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                    // 0x005f82b5    8b4e4c
                         mov                eax, dword ptr [ecx]                           // 0x005f82b8    8b01
                         push               0x1                                            // 0x005f82ba    6a01
                         call               dword ptr [eax + 8]                            // 0x005f82bc    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                    // 0x005f82bf    8b4e50
                         mov                edx, dword ptr [ecx]                           // 0x005f82c2    8b11
                         push               0x1                                            // 0x005f82c4    6a01
                         call               dword ptr [edx + 8]                            // 0x005f82c6    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                    // 0x005f82c9    8b4e64
                         mov                eax, dword ptr [ecx]                           // 0x005f82cc    8b01
                         push               0x1                                            // 0x005f82ce    6a01
                         call               dword ptr [eax + 8]                            // 0x005f82d0    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x58]                    // 0x005f82d3    8b4e58
                         mov                edx, dword ptr [ecx]                           // 0x005f82d6    8b11
                         push               0x1                                            // 0x005f82d8    6a01
                         call               dword ptr [edx + 8]                            // 0x005f82da    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x1c]                    // 0x005f82dd    8b4e1c
                         mov                eax, dword ptr [ecx]                           // 0x005f82e0    8b01
                         push               ebp                                            // 0x005f82e2    55
                         call               dword ptr [eax + 8]                            // 0x005f82e3    ff5008
                         cmp                dword ptr [data_bytes + 0x35a4d8], 0x01        // 0x005f82e6    833dd804d20001
                         pop                edi                                            // 0x005f82ed    5f
                         pop                ebx                                            // 0x005f82ee    5b
                         {disp8} jne        _jmp_addr_0x005f831e                           // 0x005f82ef    752d
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                    // 0x005f82f1    8b4e3c
                         mov                edx, dword ptr [ecx]                           // 0x005f82f4    8b11
                         push               ebp                                            // 0x005f82f6    55
                         call               dword ptr [edx + 8]                            // 0x005f82f7    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x4c]                    // 0x005f82fa    8b4e4c
                         mov                eax, dword ptr [ecx]                           // 0x005f82fd    8b01
                         push               ebp                                            // 0x005f82ff    55
                         call               dword ptr [eax + 8]                            // 0x005f8300    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x50]                    // 0x005f8303    8b4e50
                         mov                edx, dword ptr [ecx]                           // 0x005f8306    8b11
                         push               ebp                                            // 0x005f8308    55
                         call               dword ptr [edx + 8]                            // 0x005f8309    ff5208
                         {disp8} mov        ecx, dword ptr [esi + 0x64]                    // 0x005f830c    8b4e64
                         mov                eax, dword ptr [ecx]                           // 0x005f830f    8b01
                         push               ebp                                            // 0x005f8311    55
                         call               dword ptr [eax + 8]                            // 0x005f8312    ff5008
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x005f8315    8b4e40
                         mov                edx, dword ptr [ecx]                           // 0x005f8318    8b11
                         push               ebp                                            // 0x005f831a    55
                         call               dword ptr [edx + 8]                            // 0x005f831b    ff5208
_jmp_addr_0x005f831e:    pop                esi                                            // 0x005f831e    5e
                         pop                ebp                                            // 0x005f831f    5d
                         ret                                                               // 0x005f8320    c3
                         nop                                                               // 0x005f8321    90
                         nop                                                               // 0x005f8322    90
                         nop                                                               // 0x005f8323    90
                         nop                                                               // 0x005f8324    90
                         nop                                                               // 0x005f8325    90
                         nop                                                               // 0x005f8326    90
                         nop                                                               // 0x005f8327    90
                         nop                                                               // 0x005f8328    90
                         nop                                                               // 0x005f8329    90
                         nop                                                               // 0x005f832a    90
                         nop                                                               // 0x005f832b    90
                         nop                                                               // 0x005f832c    90
                         nop                                                               // 0x005f832d    90
                         nop                                                               // 0x005f832e    90
                         nop                                                               // 0x005f832f    90
_jmp_addr_0x005f8330:    sub                esp, 0x00000814                                // 0x005f8330    81ec14080000
                         push               ebx                                            // 0x005f8336    53
                         {disp32} mov       ebx, dword ptr [esp + 0x00000820]              // 0x005f8337    8b9c2420080000
                         push               ebp                                            // 0x005f833e    55
                         push               esi                                            // 0x005f833f    56
                         push               edi                                            // 0x005f8340    57
                         mov.s              edi, ecx                                       // 0x005f8341    8bf9
                         {disp8} lea        ecx, dword ptr [ebx + 0x70]                    // 0x005f8343    8d4b70
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005f8346    894c241c
                         call               _jmp_addr_0x004415e0                           // 0x005f834a    e89192e4ff
                         test               eax, eax                                       // 0x005f834f    85c0
                         {disp8} je         _jmp_addr_0x005f835c                           // 0x005f8351    7409
                         {disp8} mov        eax, dword ptr [eax + 0x04]                    // 0x005f8353    8b4004
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x005f8356    89442410
                         {disp8} jmp        _jmp_addr_0x005f8364                           // 0x005f835a    eb08
_jmp_addr_0x005f835c:    {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x005f835c    c744241000000000
_jmp_addr_0x005f8364:    {disp32} mov       ecx, dword ptr [esp + 0x00000828]              // 0x005f8364    8b8c2428080000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000088]              // 0x005f836b    8b9188000000
                         mov                eax, dword ptr [edx]                           // 0x005f8371    8b02
                         push               eax                                            // 0x005f8373    50
                         mov.s              ecx, ebx                                       // 0x005f8374    8bcb
                         call               dword ptr [rdata_bytes + 0x558]                // 0x005f8376    ff1558958a00
                         {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f837c    8b7734
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x005f837f    89442414
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f8383    8b8650020000
                         test               eax, eax                                       // 0x005f8389    85c0
                         {disp8} jle        _jmp_addr_0x005f83a0                           // 0x005f838b    7e13
_jmp_addr_0x005f838d:    dec                eax                                            // 0x005f838d    48
                         push               eax                                            // 0x005f838e    50
                         mov.s              ecx, esi                                       // 0x005f838f    8bce
                         call               @DeleteString__9SetupListFi@12                 // 0x005f8391    e8ca29e1ff
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f8396    8b8650020000
                         test               eax, eax                                       // 0x005f839c    85c0
                         {disp8} jg         _jmp_addr_0x005f838d                           // 0x005f839e    7fed
_jmp_addr_0x005f83a0:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x005f83a0    8b4c2410
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005f83a4    8b542414
                         {disp32} mov       ebp, dword ptr [rdata_bytes + 0x560]           // 0x005f83a8    8b2d60958a00
                         xor.s              eax, eax                                       // 0x005f83ae    33c0
                         cmp.s              edx, ecx                                       // 0x005f83b0    3bd1
                         sete               al                                             // 0x005f83b2    0f94c0
                         mov                esi, 0x00000001                                // 0x005f83b5    be01000000
                         {disp8} mov        dword ptr [edi + 0x28], eax                    // 0x005f83ba    894728
                         cmp                dword ptr [data_bytes + 0x35a4d8], esi         // 0x005f83bd    3935d804d200
                         {disp8} jne        _jmp_addr_0x005f8409                           // 0x005f83c3    7544
                         test               ebx, ebx                                       // 0x005f83c5    85db
                         {disp8} je         _jmp_addr_0x005f8402                           // 0x005f83c7    7439
                         {disp8} mov        eax, dword ptr [ebx + 0x74]                    // 0x005f83c9    8b4374
                         test               eax, eax                                       // 0x005f83cc    85c0
                         {disp8} je         _jmp_addr_0x005f8402                           // 0x005f83ce    7432
                         cmp.s              eax, esi                                       // 0x005f83d0    3bc6
                         {disp8} jbe        _jmp_addr_0x005f83e9                           // 0x005f83d2    7615
                         {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x005f83d4    8d542418
                         push               edx                                            // 0x005f83d8    52
                         mov.s              ecx, ebx                                       // 0x005f83d9    8bcb
                         call               ebp                                            // 0x005f83db    ffd5
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f83dd    8b0dd404d200
                         mov                eax, dword ptr [eax]                           // 0x005f83e3    8b00
                         cmp                eax, dword ptr [ecx]                           // 0x005f83e5    3b01
                         {disp8} je         _jmp_addr_0x005f83eb                           // 0x005f83e7    7402
_jmp_addr_0x005f83e9:    xor.s              esi, esi                                       // 0x005f83e9    33f6
_jmp_addr_0x005f83eb:    {disp8} lea        edx, dword ptr [ebx + 0x04]                    // 0x005f83eb    8d5304
                         push               edx                                            // 0x005f83ee    52
                         call               _CHAR2WCHAR__FPc                               // 0x005f83ef    e8ac7c2300
                         add                esp, 0x04                                      // 0x005f83f4    83c404
                         push               eax                                            // 0x005f83f7    50
                         push               esi                                            // 0x005f83f8    56
                         mov.s              ecx, edi                                       // 0x005f83f9    8bcf
                         call               _jmp_addr_0x005f7f70                           // 0x005f83fb    e870fbffff
                         {disp8} jmp        _jmp_addr_0x005f8409                           // 0x005f8400    eb07
_jmp_addr_0x005f8402:    mov.s              ecx, edi                                       // 0x005f8402    8bcf
                         call               _jmp_addr_0x005f80c0                           // 0x005f8404    e8b7fcffff
_jmp_addr_0x005f8409:    {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d8]         // 0x005f8409    8b0dd804d200
                         mov                eax, 0x00000002                                // 0x005f840f    b802000000
                         cmp.s              ecx, eax                                       // 0x005f8414    3bc8
                         {disp32} jne       _jmp_addr_0x005f849e                           // 0x005f8416    0f8582000000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000828]              // 0x005f841c    8b8c2428080000
                         cmp                ecx, dword ptr [data_bytes + 0x35a4a8]         // 0x005f8423    3b0da804d200
                         {disp8} jne        _jmp_addr_0x005f846e                           // 0x005f8429    7543
                         cmp                dword ptr [ebx + 0x74], eax                    // 0x005f842b    394374
                         {disp8} jae        _jmp_addr_0x005f8444                           // 0x005f842e    7314
                         mov.s              ecx, edi                                       // 0x005f8430    8bcf
                         call               _jmp_addr_0x005f80c0                           // 0x005f8432    e889fcffff
                         pop                edi                                            // 0x005f8437    5f
                         pop                esi                                            // 0x005f8438    5e
                         pop                ebp                                            // 0x005f8439    5d
                         pop                ebx                                            // 0x005f843a    5b
                         add                esp, 0x00000814                                // 0x005f843b    81c414080000
                         ret                0x0008                                         // 0x005f8441    c20800
_jmp_addr_0x005f8444:    {disp8} lea        edx, dword ptr [esp + 0x18]                    // 0x005f8444    8d542418
                         push               edx                                            // 0x005f8448    52
                         mov.s              ecx, ebx                                       // 0x005f8449    8bcb
                         call               ebp                                            // 0x005f844b    ffd5
                         mov                esi, dword ptr [eax]                           // 0x005f844d    8b30
                         {disp32} mov       ecx, dword ptr [rdata_bytes + 0x55c]           // 0x005f844f    8b0d5c958a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x35a4d4]         // 0x005f8455    a1d404d200
                         mov                ebx, dword ptr [eax]                           // 0x005f845a    8b18
                         push               ecx                                            // 0x005f845c    51
                         call               _CHAR2WCHAR__FPc                               // 0x005f845d    e83e7c2300
                         add                esp, 0x04                                      // 0x005f8462    83c404
                         cmp.s              esi, ebx                                       // 0x005f8465    3bf3
                         sete               dl                                             // 0x005f8467    0f94c2
                         push               eax                                            // 0x005f846a    50
                         push               edx                                            // 0x005f846b    52
                         {disp8} jmp        _jmp_addr_0x005f8497                           // 0x005f846c    eb29
_jmp_addr_0x005f846e:    {disp8} lea        eax, dword ptr [esp + 0x18]                    // 0x005f846e    8d442418
                         push               eax                                            // 0x005f8472    50
                         mov.s              ecx, ebx                                       // 0x005f8473    8bcb
                         call               ebp                                            // 0x005f8475    ffd5
                         {disp32} mov       edx, dword ptr [rdata_bytes + 0x55c]           // 0x005f8477    8b155c958a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x35a4d4]         // 0x005f847d    8b0dd404d200
                         mov                esi, dword ptr [eax]                           // 0x005f8483    8b30
                         mov                ebx, dword ptr [ecx]                           // 0x005f8485    8b19
                         push               edx                                            // 0x005f8487    52
                         call               _CHAR2WCHAR__FPc                               // 0x005f8488    e8137c2300
                         add                esp, 0x04                                      // 0x005f848d    83c404
                         push               eax                                            // 0x005f8490    50
                         cmp.s              esi, ebx                                       // 0x005f8491    3bf3
                         sete               al                                             // 0x005f8493    0f94c0
                         push               eax                                            // 0x005f8496    50
_jmp_addr_0x005f8497:    mov.s              ecx, edi                                       // 0x005f8497    8bcf
                         call               _jmp_addr_0x005f7f70                           // 0x005f8499    e8d2faffff
_jmp_addr_0x005f849e:    {disp8} mov        ebp, dword ptr [esp + 0x1c]                    // 0x005f849e    8b6c241c
                         push               0x0                                            // 0x005f84a2    6a00
                         mov.s              ecx, ebp                                       // 0x005f84a4    8bcd
                         call               _jmp_addr_0x00555cc0                           // 0x005f84a6    e815d8f5ff
                         mov.s              ebx, eax                                       // 0x005f84ab    8bd8
                         test               ebx, ebx                                       // 0x005f84ad    85db
                         {disp32} je        _jmp_addr_0x005f8640                           // 0x005f84af    0f848b010000
_jmp_addr_0x005f84b5:    {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f84b5    8b7734
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f84b8    8b9650020000
                         {disp32} lea       ecx, dword ptr [ebx + 0x00000110]              // 0x005f84be    8d8b10010000
                         push               ecx                                            // 0x005f84c4    51
                         push               edx                                            // 0x005f84c5    52
                         mov.s              ecx, esi                                       // 0x005f84c6    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f84c8    e8a329e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f84cd    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f84d3    8d41ff
                         test               eax, eax                                       // 0x005f84d6    85c0
                         {disp8} jl         _jmp_addr_0x005f84eb                           // 0x005f84d8    7c11
                         cmp.s              eax, ecx                                       // 0x005f84da    3bc1
                         {disp8} jge        _jmp_addr_0x005f84eb                           // 0x005f84dc    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f84de    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f84e4    c7048100000000
_jmp_addr_0x005f84eb:    {disp8} mov        ecx, dword ptr [edi + 0x34]                    // 0x005f84eb    8b4f34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f84ee    8b8150020000
                         dec                eax                                            // 0x005f84f4    48
                         {disp8} js         _jmp_addr_0x005f8508                           // 0x005f84f5    7811
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f84f7    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f8508                           // 0x005f84fd    7d09
                         {disp32} mov       edx, dword ptr [ecx + 0x00000264]              // 0x005f84ff    8b9164020000
                         mov                dword ptr [edx + eax * 0x4], ebx               // 0x005f8505    891c82
_jmp_addr_0x005f8508:    {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f8508    8b7734
                         push               ebx                                            // 0x005f850b    53
                         call               _jmp_addr_0x00713b30                           // 0x005f850c    e81fb61100
                         add                esp, 0x04                                      // 0x005f8511    83c404
                         push               eax                                            // 0x005f8514    50
                         {disp32} mov       eax, dword ptr [esi + 0x00000250]              // 0x005f8515    8b8650020000
                         dec                eax                                            // 0x005f851b    48
                         push               eax                                            // 0x005f851c    50
                         mov.s              ecx, esi                                       // 0x005f851d    8bce
                         call               _jmp_addr_0x0040afe0                           // 0x005f851f    e8bc2ae1ff
                         push               ebx                                            // 0x005f8524    53
                         call               _jmp_addr_0x00713b30                           // 0x005f8525    e806b61100
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                    // 0x005f852a    8b4f28
                         add                esp, 0x04                                      // 0x005f852d    83c404
                         test               ecx, ecx                                       // 0x005f8530    85c9
                         {disp8} jne        _jmp_addr_0x005f8582                           // 0x005f8532    754e
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005f8534    8b442410
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                    // 0x005f8538    8b4f34
                         cmp.s              ebx, eax                                       // 0x005f853b    3bd8
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f853d    8b8150020000
                         {disp8} jne        _jmp_addr_0x005f855d                           // 0x005f8543    7518
                         dec                eax                                            // 0x005f8545    48
                         {disp32} js        _jmp_addr_0x005f862e                           // 0x005f8546    0f88e2000000
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f854c    3b8150020000
                         {disp32} jge       _jmp_addr_0x005f862e                           // 0x005f8552    0f8dd6000000
                         {disp32} jmp       _jmp_addr_0x005f8621                           // 0x005f8558    e9c4000000
_jmp_addr_0x005f855d:    dec                eax                                            // 0x005f855d    48
                         {disp32} js        _jmp_addr_0x005f862e                           // 0x005f855e    0f88ca000000
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f8564    3b8150020000
                         {disp32} jge       _jmp_addr_0x005f862e                           // 0x005f856a    0f8dbe000000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000268]              // 0x005f8570    8b9168020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000        // 0x005f8576    c7048200000000
                         {disp32} jmp       _jmp_addr_0x005f862e                           // 0x005f857d    e9ac000000
_jmp_addr_0x005f8582:    {disp8} mov        esi, dword ptr [edi + 0x34]                    // 0x005f8582    8b7734
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f8585    8b9650020000
                         dec                edx                                            // 0x005f858b    4a
                         {disp8} js         _jmp_addr_0x005f85a3                           // 0x005f858c    7815
                         cmp                edx, dword ptr [esi + 0x00000250]              // 0x005f858e    3b9650020000
                         {disp8} jge        _jmp_addr_0x005f85a3                           // 0x005f8594    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f8596    8b8e68020000
                         mov                dword ptr [ecx + edx * 0x4], 0x0000ff00        // 0x005f859c    c7049100ff0000
_jmp_addr_0x005f85a3:    test               eax, eax                                       // 0x005f85a3    85c0
                         {disp8} je         _jmp_addr_0x005f8600                           // 0x005f85a5    7459
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                    // 0x005f85a7    8b5500
                         test               edx, edx                                       // 0x005f85aa    85d2
                         {disp8} je         _jmp_addr_0x005f85bf                           // 0x005f85ac    7411
_jmp_addr_0x005f85ae:    mov.s              esi, edx                                       // 0x005f85ae    8bf2
                         mov                edx, dword ptr [edx]                           // 0x005f85b0    8b12
                         test               edx, edx                                       // 0x005f85b2    85d2
                         {disp8} jne        _jmp_addr_0x005f85ae                           // 0x005f85b4    75f8
                         test               esi, esi                                       // 0x005f85b6    85f6
                         {disp8} je         _jmp_addr_0x005f85bf                           // 0x005f85b8    7405
                         {disp8} mov        esi, dword ptr [esi + 0x04]                    // 0x005f85ba    8b7604
                         {disp8} jmp        _jmp_addr_0x005f85c1                           // 0x005f85bd    eb02
_jmp_addr_0x005f85bf:    xor.s              esi, esi                                       // 0x005f85bf    33f6
_jmp_addr_0x005f85c1:    cmp.s              ebx, esi                                       // 0x005f85c1    3bde
                         {disp8} je         _jmp_addr_0x005f8600                           // 0x005f85c3    743b
                         {disp32} mov       cl, byte ptr [data_bytes + 0x38951c]           // 0x005f85c5    8a0d1cf5d400
                         test               cl, cl                                         // 0x005f85cb    84c9
                         {disp8} je         _jmp_addr_0x005f8600                           // 0x005f85cd    7431
                         push               0x00d4f1f0                                     // 0x005f85cf    68f0f1d400
                         mov.s              ecx, eax                                       // 0x005f85d4    8bc8
                         call               _jmp_addr_0x00713a80                           // 0x005f85d6    e8a5b41100
                         test               al, al                                         // 0x005f85db    84c0
                         {disp8} jne        _jmp_addr_0x005f8600                           // 0x005f85dd    7521
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                    // 0x005f85df    8b4f34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f85e2    8b8150020000
                         dec                eax                                            // 0x005f85e8    48
                         {disp8} js         _jmp_addr_0x005f8600                           // 0x005f85e9    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f85eb    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f8600                           // 0x005f85f1    7d0d
                         {disp32} mov       edx, dword ptr [ecx + 0x00000268]              // 0x005f85f3    8b9168020000
                         mov                dword ptr [edx + eax * 0x4], 0x00ff0000        // 0x005f85f9    c704820000ff00
_jmp_addr_0x005f8600:    {disp8} mov        eax, dword ptr [edi + 0x28]                    // 0x005f8600    8b4728
                         test               eax, eax                                       // 0x005f8603    85c0
                         {disp8} je         _jmp_addr_0x005f862e                           // 0x005f8605    7427
                         cmp                ebx, dword ptr [esp + 0x14]                    // 0x005f8607    3b5c2414
                         {disp8} jne        _jmp_addr_0x005f862e                           // 0x005f860b    7521
                         {disp8} mov        ecx, dword ptr [edi + 0x34]                    // 0x005f860d    8b4f34
                         {disp32} mov       eax, dword ptr [ecx + 0x00000250]              // 0x005f8610    8b8150020000
                         dec                eax                                            // 0x005f8616    48
                         {disp8} js         _jmp_addr_0x005f862e                           // 0x005f8617    7815
                         cmp                eax, dword ptr [ecx + 0x00000250]              // 0x005f8619    3b8150020000
                         {disp8} jge        _jmp_addr_0x005f862e                           // 0x005f861f    7d0d
_jmp_addr_0x005f8621:    {disp32} mov       ecx, dword ptr [ecx + 0x00000268]              // 0x005f8621    8b8968020000
                         mov                dword ptr [ecx + eax * 0x4], 0x000000ff        // 0x005f8627    c70481ff000000
_jmp_addr_0x005f862e:    push               ebx                                            // 0x005f862e    53
                         mov.s              ecx, ebp                                       // 0x005f862f    8bcd
                         call               _jmp_addr_0x00555cc0                           // 0x005f8631    e88ad6f5ff
                         mov.s              ebx, eax                                       // 0x005f8636    8bd8
                         test               ebx, ebx                                       // 0x005f8638    85db
                         {disp32} jne       _jmp_addr_0x005f84b5                           // 0x005f863a    0f8575feffff
_jmp_addr_0x005f8640:    {disp32} mov       eax, dword ptr [esp + 0x00000828]              // 0x005f8640    8b842428080000
                         test               eax, eax                                       // 0x005f8647    85c0
                         {disp32} je        _jmp_addr_0x005f872b                           // 0x005f8649    0f84dc000000
                         {disp32} mov       edx, dword ptr [eax + 0x00000104]              // 0x005f864f    8b9004010000
                         test               edx, edx                                       // 0x005f8655    85d2
                         {disp32} lea       ecx, dword ptr [eax + 0x000000a0]              // 0x005f8657    8d88a0000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351cac]         // 0x005f865d    a1ac7cd100
                         {disp8} jne        _jmp_addr_0x005f86c8                           // 0x005f8662    7564
                         cmp                eax, 0x00000dc0                                // 0x005f8664    3dc00d0000
                         {disp8} ja         _jmp_addr_0x005f8672                           // 0x005f8669    7707
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f866b    a1a87cd100
                         {disp8} jmp        _jmp_addr_0x005f867e                           // 0x005f8670    eb0c
_jmp_addr_0x005f8672:    {disp32} mov       edx, dword ptr [data_bytes + 0x351ca8]         // 0x005f8672    8b15a87cd100
                         {disp32} lea       eax, dword ptr [edx + 0x0000a500]              // 0x005f8678    8d8200a50000
_jmp_addr_0x005f867e:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f867e    8b4008
                         push               eax                                            // 0x005f8681    50
                         push               ecx                                            // 0x005f8682    51
                         {disp8} lea        eax, dword ptr [esp + 0x28]                    // 0x005f8683    8d442428
                         push               0x00bea62c                                     // 0x005f8687    682ca6be00
                         push               eax                                            // 0x005f868c    50
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f868d    ff15d8938a00
                         {disp8} mov        esi, dword ptr [edi + 0x30]                    // 0x005f8693    8b7730
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f8696    8b8e50020000
                         add                esp, 0x10                                      // 0x005f869c    83c410
                         push               eax                                            // 0x005f869f    50
                         push               ecx                                            // 0x005f86a0    51
                         mov.s              ecx, esi                                       // 0x005f86a1    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f86a3    e8c827e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f86a8    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f86ae    8d41ff
                         test               eax, eax                                       // 0x005f86b1    85c0
                         {disp8} jl         _jmp_addr_0x005f8721                           // 0x005f86b3    7c6c
                         cmp.s              eax, ecx                                       // 0x005f86b5    3bc1
                         {disp8} jge        _jmp_addr_0x005f8721                           // 0x005f86b7    7d68
                         {disp32} mov       edx, dword ptr [esi + 0x00000268]              // 0x005f86b9    8b9668020000
                         mov                dword ptr [edx + eax * 0x4], 0x00000000        // 0x005f86bf    c7048200000000
                         {disp8} jmp        _jmp_addr_0x005f8721                           // 0x005f86c6    eb59
_jmp_addr_0x005f86c8:    cmp                eax, 0x00000dc1                                // 0x005f86c8    3dc10d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]         // 0x005f86cd    a1a87cd100
                         {disp8} jbe        _jmp_addr_0x005f86d9                           // 0x005f86d2    7605
                         add                eax, 0x0000a50c                                // 0x005f86d4    050ca50000
_jmp_addr_0x005f86d9:    {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x005f86d9    8b4008
                         push               eax                                            // 0x005f86dc    50
                         push               ecx                                            // 0x005f86dd    51
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                    // 0x005f86de    8d4c2428
                         push               0x00bea62c                                     // 0x005f86e2    682ca6be00
                         push               ecx                                            // 0x005f86e7    51
                         call               dword ptr [__imp___0LHSPrintfW__QAA_PAGZZ@4]   // 0x005f86e8    ff15d8938a00
                         {disp8} mov        esi, dword ptr [edi + 0x30]                    // 0x005f86ee    8b7730
                         {disp32} mov       edx, dword ptr [esi + 0x00000250]              // 0x005f86f1    8b9650020000
                         add                esp, 0x10                                      // 0x005f86f7    83c410
                         push               eax                                            // 0x005f86fa    50
                         push               edx                                            // 0x005f86fb    52
                         mov.s              ecx, esi                                       // 0x005f86fc    8bce
                         call               @InsertString__9SetupListFiPw@16               // 0x005f86fe    e86d27e1ff
                         {disp32} mov       ecx, dword ptr [esi + 0x00000250]              // 0x005f8703    8b8e50020000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                   // 0x005f8709    8d41ff
                         test               eax, eax                                       // 0x005f870c    85c0
                         {disp8} jl         _jmp_addr_0x005f8721                           // 0x005f870e    7c11
                         cmp.s              eax, ecx                                       // 0x005f8710    3bc1
                         {disp8} jge        _jmp_addr_0x005f8721                           // 0x005f8712    7d0d
                         {disp32} mov       ecx, dword ptr [esi + 0x00000268]              // 0x005f8714    8b8e68020000
                         mov                dword ptr [ecx + eax * 0x4], 0x00000000        // 0x005f871a    c7048100000000
_jmp_addr_0x005f8721:    {disp8} mov        ecx, dword ptr [edi + 0x30]                    // 0x005f8721    8b4f30
                         push               0x1                                            // 0x005f8724    6a01
                         call               @AutoScroll__9SetupListFb@9                    // 0x005f8726    e8a516e1ff
_jmp_addr_0x005f872b:    pop                edi                                            // 0x005f872b    5f
                         pop                esi                                            // 0x005f872c    5e
                         pop                ebp                                            // 0x005f872d    5d
                         pop                ebx                                            // 0x005f872e    5b
                         add                esp, 0x00000814                                // 0x005f872f    81c414080000
                         ret                0x0008                                         // 0x005f8735    c20800
                         nop                                                               // 0x005f8738    90
                         nop                                                               // 0x005f8739    90
                         nop                                                               // 0x005f873a    90
                         nop                                                               // 0x005f873b    90
                         nop                                                               // 0x005f873c    90
                         nop                                                               // 0x005f873d    90
                         nop                                                               // 0x005f873e    90
                         nop                                                               // 0x005f873f    90
_jmp_addr_0x005f8740:    mov                ecx, dword ptr [ecx]                           // 0x005f8740    8b09
                         test               ecx, ecx                                       // 0x005f8742    85c9
                         {disp8} je         _jmp_addr_0x005f874f                           // 0x005f8744    7409
_jmp_addr_0x005f8746:    mov.s              eax, ecx                                       // 0x005f8746    8bc1
                         mov                ecx, dword ptr [ecx]                           // 0x005f8748    8b09
                         test               ecx, ecx                                       // 0x005f874a    85c9
                         {disp8} jne        _jmp_addr_0x005f8746                           // 0x005f874c    75f8
                         ret                                                               // 0x005f874e    c3
_jmp_addr_0x005f874f:    xor.s              eax, eax                                       // 0x005f874f    33c0
                         ret                                                               // 0x005f8751    c3
                         nop                                                               // 0x005f8752    90
                         nop                                                               // 0x005f8753    90
                         nop                                                               // 0x005f8754    90
                         nop                                                               // 0x005f8755    90
                         nop                                                               // 0x005f8756    90
                         nop                                                               // 0x005f8757    90
                         nop                                                               // 0x005f8758    90
                         nop                                                               // 0x005f8759    90
                         nop                                                               // 0x005f875a    90
                         nop                                                               // 0x005f875b    90
                         nop                                                               // 0x005f875c    90
                         nop                                                               // 0x005f875d    90
                         nop                                                               // 0x005f875e    90
                         nop                                                               // 0x005f875f    90
_globl_ct_0x005f8760:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x005f8760    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x005f8766    b001
                         test               al, cl                                         // 0x005f8768    84c8
                         {disp8} jne        _jmp_addr_0x005f8774                           // 0x005f876a    7508
                         or.s               cl, al                                         // 0x005f876c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x005f876e    880d34c9fa00
_jmp_addr_0x005f8774:    {disp32} jmp       _jmp_addr_0x005f8780                           // 0x005f8774    e907000000
                         nop                                                               // 0x005f8779    90
                         nop                                                               // 0x005f877a    90
                         nop                                                               // 0x005f877b    90
                         nop                                                               // 0x005f877c    90
                         nop                                                               // 0x005f877d    90
                         nop                                                               // 0x005f877e    90
                         nop                                                               // 0x005f877f    90
_jmp_addr_0x005f8780:    push               0x00407870                                     // 0x005f8780    6870784000
                         call               _atexit                                        // 0x005f8785    e807d01c00
                         pop                ecx                                            // 0x005f878a    59
                         ret                                                               // 0x005f878b    c3
                         nop                                                               // 0x005f878c    90
                         nop                                                               // 0x005f878d    90
                         nop                                                               // 0x005f878e    90
                         nop                                                               // 0x005f878f    90
?__nw@LocalBase@@SAPAV1@K@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f8790    8b442404
                         push               eax                                            // 0x005f8794    50
                         call               _jmp_addr_0x005f87f0                           // 0x005f8795    e856000000
                         add                esp, 0x04                                      // 0x005f879a    83c404
                         ret                                                               // 0x005f879d    c3
                         nop                                                               // 0x005f879e    90
                         nop                                                               // 0x005f879f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f87a0    8b442404
                         push               eax                                            // 0x005f87a4    50
                         call               _jmp_addr_0x005f8830                           // 0x005f87a5    e886000000
                         add                esp, 0x04                                      // 0x005f87aa    83c404
                         ret                                                               // 0x005f87ad    c3
                         nop                                                               // 0x005f87ae    90
                         nop                                                               // 0x005f87af    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005f87b0    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005f87b4    8b4c2404
                         push               eax                                            // 0x005f87b8    50
                         push               ecx                                            // 0x005f87b9    51
                         call               _jmp_addr_0x005f8810                           // 0x005f87ba    e851000000
                         add                esp, 0x08                                      // 0x005f87bf    83c408
                         ret                                                               // 0x005f87c2    c3
                         nop                                                               // 0x005f87c3    90
                         nop                                                               // 0x005f87c4    90
                         nop                                                               // 0x005f87c5    90
                         nop                                                               // 0x005f87c6    90
                         nop                                                               // 0x005f87c7    90
                         nop                                                               // 0x005f87c8    90
                         nop                                                               // 0x005f87c9    90
                         nop                                                               // 0x005f87ca    90
                         nop                                                               // 0x005f87cb    90
                         nop                                                               // 0x005f87cc    90
                         nop                                                               // 0x005f87cd    90
                         nop                                                               // 0x005f87ce    90
                         nop                                                               // 0x005f87cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005f87d0    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005f87d4    8b4c2404
                         push               eax                                            // 0x005f87d8    50
                         push               ecx                                            // 0x005f87d9    51
                         call               _jmp_addr_0x005f8840                           // 0x005f87da    e861000000
                         add                esp, 0x08                                      // 0x005f87df    83c408
                         ret                                                               // 0x005f87e2    c3
                         nop                                                               // 0x005f87e3    90
                         nop                                                               // 0x005f87e4    90
                         nop                                                               // 0x005f87e5    90
                         nop                                                               // 0x005f87e6    90
                         nop                                                               // 0x005f87e7    90
                         nop                                                               // 0x005f87e8    90
                         nop                                                               // 0x005f87e9    90
                         nop                                                               // 0x005f87ea    90
                         nop                                                               // 0x005f87eb    90
                         nop                                                               // 0x005f87ec    90
                         nop                                                               // 0x005f87ed    90
                         nop                                                               // 0x005f87ee    90
                         nop                                                               // 0x005f87ef    90
_jmp_addr_0x005f87f0:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f87f0    8b442404
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30db14]         // 0x005f87f4    8b0d143bcd00
                         push               eax                                            // 0x005f87fa    50
                         call               ?New@UniqueKeyHeap@@QAEPAXH@Z                  // 0x005f87fb    e830901e00
                         ret                                                               // 0x005f8800    c3
                         nop                                                               // 0x005f8801    90
                         nop                                                               // 0x005f8802    90
                         nop                                                               // 0x005f8803    90
                         nop                                                               // 0x005f8804    90
                         nop                                                               // 0x005f8805    90
                         nop                                                               // 0x005f8806    90
                         nop                                                               // 0x005f8807    90
                         nop                                                               // 0x005f8808    90
                         nop                                                               // 0x005f8809    90
                         nop                                                               // 0x005f880a    90
                         nop                                                               // 0x005f880b    90
                         nop                                                               // 0x005f880c    90
                         nop                                                               // 0x005f880d    90
                         nop                                                               // 0x005f880e    90
                         nop                                                               // 0x005f880f    90
_jmp_addr_0x005f8810:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005f8810    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005f8814    8b4c2404
                         push               eax                                            // 0x005f8818    50
                         push               ecx                                            // 0x005f8819    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30db14]         // 0x005f881a    8b0d143bcd00
                         call               _jmp_addr_0x007e1890                           // 0x005f8820    e86b901e00
                         ret                                                               // 0x005f8825    c3
                         nop                                                               // 0x005f8826    90
                         nop                                                               // 0x005f8827    90
                         nop                                                               // 0x005f8828    90
                         nop                                                               // 0x005f8829    90
                         nop                                                               // 0x005f882a    90
                         nop                                                               // 0x005f882b    90
                         nop                                                               // 0x005f882c    90
                         nop                                                               // 0x005f882d    90
                         nop                                                               // 0x005f882e    90
                         nop                                                               // 0x005f882f    90
_jmp_addr_0x005f8830:    xor.s              eax, eax                                       // 0x005f8830    33c0
                         ret                                                               // 0x005f8832    c3
                         nop                                                               // 0x005f8833    90
                         nop                                                               // 0x005f8834    90
                         nop                                                               // 0x005f8835    90
                         nop                                                               // 0x005f8836    90
                         nop                                                               // 0x005f8837    90
                         nop                                                               // 0x005f8838    90
                         nop                                                               // 0x005f8839    90
                         nop                                                               // 0x005f883a    90
                         nop                                                               // 0x005f883b    90
                         nop                                                               // 0x005f883c    90
                         nop                                                               // 0x005f883d    90
                         nop                                                               // 0x005f883e    90
                         nop                                                               // 0x005f883f    90
_jmp_addr_0x005f8840:    ret                                                               // 0x005f8840    c3
                         nop                                                               // 0x005f8841    90
                         nop                                                               // 0x005f8842    90
                         nop                                                               // 0x005f8843    90
                         nop                                                               // 0x005f8844    90
                         nop                                                               // 0x005f8845    90
                         nop                                                               // 0x005f8846    90
                         nop                                                               // 0x005f8847    90
                         nop                                                               // 0x005f8848    90
                         nop                                                               // 0x005f8849    90
                         nop                                                               // 0x005f884a    90
                         nop                                                               // 0x005f884b    90
                         nop                                                               // 0x005f884c    90
                         nop                                                               // 0x005f884d    90
                         nop                                                               // 0x005f884e    90
                         nop                                                               // 0x005f884f    90
_jmp_addr_0x005f8850:    {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f8850    8b442404
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30db14]         // 0x005f8854    8b0d143bcd00
                         push               eax                                            // 0x005f885a    50
                         call               ?New@UniqueKeyHeap@@QAEPAXH@Z                  // 0x005f885b    e8d08f1e00
                         ret                                                               // 0x005f8860    c3
                         nop                                                               // 0x005f8861    90
                         nop                                                               // 0x005f8862    90
                         nop                                                               // 0x005f8863    90
                         nop                                                               // 0x005f8864    90
                         nop                                                               // 0x005f8865    90
                         nop                                                               // 0x005f8866    90
                         nop                                                               // 0x005f8867    90
                         nop                                                               // 0x005f8868    90
                         nop                                                               // 0x005f8869    90
                         nop                                                               // 0x005f886a    90
                         nop                                                               // 0x005f886b    90
                         nop                                                               // 0x005f886c    90
                         nop                                                               // 0x005f886d    90
                         nop                                                               // 0x005f886e    90
                         nop                                                               // 0x005f886f    90
_jmp_addr_0x005f8870:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x005f8870    8b442408
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x005f8874    8b4c2404
                         push               eax                                            // 0x005f8878    50
                         push               ecx                                            // 0x005f8879    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30db14]         // 0x005f887a    8b0d143bcd00
                         call               _jmp_addr_0x007e1890                           // 0x005f8880    e80b901e00
                         ret                                                               // 0x005f8885    c3
                         nop                                                               // 0x005f8886    90
                         nop                                                               // 0x005f8887    90
                         nop                                                               // 0x005f8888    90
                         nop                                                               // 0x005f8889    90
                         nop                                                               // 0x005f888a    90
                         nop                                                               // 0x005f888b    90
                         nop                                                               // 0x005f888c    90
                         nop                                                               // 0x005f888d    90
                         nop                                                               // 0x005f888e    90
                         nop                                                               // 0x005f888f    90
_globl_ct_0x005f8890:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                   // 0x005f8890    8a0d34c9fa00
                         mov                al, 0x01                                       // 0x005f8896    b001
                         test               al, cl                                         // 0x005f8898    84c8
                         {disp8} jne        _jmp_addr_0x005f88a4                           // 0x005f889a    7508
                         or.s               cl, al                                         // 0x005f889c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                   // 0x005f889e    880d34c9fa00
_jmp_addr_0x005f88a4:    {disp32} jmp       _jmp_addr_0x005f88b0                           // 0x005f88a4    e907000000
                         nop                                                               // 0x005f88a9    90
                         nop                                                               // 0x005f88aa    90
                         nop                                                               // 0x005f88ab    90
                         nop                                                               // 0x005f88ac    90
                         nop                                                               // 0x005f88ad    90
                         nop                                                               // 0x005f88ae    90
                         nop                                                               // 0x005f88af    90
_jmp_addr_0x005f88b0:    push               0x00407870                                     // 0x005f88b0    6870784000
                         call               _atexit                                        // 0x005f88b5    e8d7ce1c00
                         pop                ecx                                            // 0x005f88ba    59
                         ret                                                               // 0x005f88bb    c3
                         nop                                                               // 0x005f88bc    90
                         nop                                                               // 0x005f88bd    90
                         nop                                                               // 0x005f88be    90
                         nop                                                               // 0x005f88bf    90
_globl_ct_0x005f88c0:    call               _jmp_addr_0x005f88d0                           // 0x005f88c0    e80b000000
                         {disp32} jmp       _jmp_addr_0x005f88e0                           // 0x005f88c5    e916000000
                         nop                                                               // 0x005f88ca    90
                         nop                                                               // 0x005f88cb    90
                         nop                                                               // 0x005f88cc    90
                         nop                                                               // 0x005f88cd    90
                         nop                                                               // 0x005f88ce    90
                         nop                                                               // 0x005f88cf    90
_jmp_addr_0x005f88d0:    xor.s              eax, eax                                       // 0x005f88d0    33c0
                         {disp32} mov       dword ptr [data_bytes + 0x371cc4], eax         // 0x005f88d2    a3c47cd300
                         {disp32} mov       dword ptr [data_bytes + 0x371cc0], eax         // 0x005f88d7    a3c07cd300
                         ret                                                               // 0x005f88dc    c3
                         nop                                                               // 0x005f88dd    90
                         nop                                                               // 0x005f88de    90
                         nop                                                               // 0x005f88df    90
_jmp_addr_0x005f88e0:    push               0x005f88f0                                     // 0x005f88e0    68f0885f00
                         call               _atexit                                        // 0x005f88e5    e8a7ce1c00
                         pop                ecx                                            // 0x005f88ea    59
                         ret                                                               // 0x005f88eb    c3
                         nop                                                               // 0x005f88ec    90
                         nop                                                               // 0x005f88ed    90
                         nop                                                               // 0x005f88ee    90
                         nop                                                               // 0x005f88ef    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x371cba]           // 0x005f88f0    8a0dba7cd300
                         mov                al, 0x01                                       // 0x005f88f6    b001
                         test               al, cl                                         // 0x005f88f8    84c8
                         {disp8} jne        _jmp_addr_0x005f8904                           // 0x005f88fa    7508
                         or.s               cl, al                                         // 0x005f88fc    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x371cba], cl           // 0x005f88fe    880dba7cd300
_jmp_addr_0x005f8904:    ret                                                               // 0x005f8904    c3
                         nop                                                               // 0x005f8905    90
                         nop                                                               // 0x005f8906    90
                         nop                                                               // 0x005f8907    90
                         nop                                                               // 0x005f8908    90
                         nop                                                               // 0x005f8909    90
                         nop                                                               // 0x005f890a    90
                         nop                                                               // 0x005f890b    90
                         nop                                                               // 0x005f890c    90
                         nop                                                               // 0x005f890d    90
                         nop                                                               // 0x005f890e    90
                         nop                                                               // 0x005f890f    90
_globl_ct_0x005f8910:    call               _jmp_addr_0x005f8920                           // 0x005f8910    e80b000000
                         {disp32} jmp       _jmp_addr_0x005f8930                           // 0x005f8915    e916000000
                         nop                                                               // 0x005f891a    90
                         nop                                                               // 0x005f891b    90
                         nop                                                               // 0x005f891c    90
                         nop                                                               // 0x005f891d    90
                         nop                                                               // 0x005f891e    90
                         nop                                                               // 0x005f891f    90
_jmp_addr_0x005f8920:    ret                                                               // 0x005f8920    c3
                         nop                                                               // 0x005f8921    90
                         nop                                                               // 0x005f8922    90
                         nop                                                               // 0x005f8923    90
                         nop                                                               // 0x005f8924    90
                         nop                                                               // 0x005f8925    90
                         nop                                                               // 0x005f8926    90
                         nop                                                               // 0x005f8927    90
                         nop                                                               // 0x005f8928    90
                         nop                                                               // 0x005f8929    90
                         nop                                                               // 0x005f892a    90
                         nop                                                               // 0x005f892b    90
                         nop                                                               // 0x005f892c    90
                         nop                                                               // 0x005f892d    90
                         nop                                                               // 0x005f892e    90
                         nop                                                               // 0x005f892f    90
_jmp_addr_0x005f8930:    push               0x005f8940                                     // 0x005f8930    6840895f00
                         call               _atexit                                        // 0x005f8935    e857ce1c00
                         pop                ecx                                            // 0x005f893a    59
                         ret                                                               // 0x005f893b    c3
                         nop                                                               // 0x005f893c    90
                         nop                                                               // 0x005f893d    90
                         nop                                                               // 0x005f893e    90
                         nop                                                               // 0x005f893f    90
                         {disp32} mov       cl, byte ptr [data_bytes + 0x371cba]           // 0x005f8940    8a0dba7cd300
                         mov                al, 0x02                                       // 0x005f8946    b002
                         test               al, cl                                         // 0x005f8948    84c8
                         {disp8} jne        _jmp_addr_0x005f8959                           // 0x005f894a    750d
                         or.s               cl, al                                         // 0x005f894c    0ac8
                         {disp32} mov       byte ptr [data_bytes + 0x371cba], cl           // 0x005f894e    880dba7cd300
                         {disp32} jmp       _jmp_addr_0x005fa680                           // 0x005f8954    e9271d0000
_jmp_addr_0x005f8959:    ret                                                               // 0x005f8959    c3
                         call               dword ptr [__imp__ShellExecuteA@4]             // 0x005f895a    ff15ac978a00
_jmp_addr_0x005f8960:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005f8960    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005f8964    d81d98a38a00
                         fnstsw             ax                                             // 0x005f896a    dfe0
                         test               ah, 0x01                                       // 0x005f896c    f6c401
                         {disp8} je         _jmp_addr_0x005f8978                           // 0x005f896f    7407
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005f8971    d90598a38a00
                         ret                                                               // 0x005f8977    c3
_jmp_addr_0x005f8978:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005f8978    d9442404
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005f897c    d81d90a38a00
                         fnstsw             ax                                             // 0x005f8982    dfe0
                         test               ah, 0x41                                       // 0x005f8984    f6c441
                         {disp8} jne        _jmp_addr_0x005f8990                           // 0x005f8987    7507
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005f8989    d90590a38a00
                         ret                                                               // 0x005f898f    c3
_jmp_addr_0x005f8990:    {disp8} fld        dword ptr [esp + 0x04]                         // 0x005f8990    d9442404
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]              // 0x005f8994    d80da0368c00
                         fcos                                                              // 0x005f899a    d9ff
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x005f899c    d82d90a38a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005f89a2    d80db4a38a00
                         ret                                                               // 0x005f89a8    c3
                         nop                                                               // 0x005f89a9    90
                         nop                                                               // 0x005f89aa    90
                         nop                                                               // 0x005f89ab    90
                         nop                                                               // 0x005f89ac    90
                         nop                                                               // 0x005f89ad    90
                         nop                                                               // 0x005f89ae    90
                         nop                                                               // 0x005f89af    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f89b0    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005f89b4    8b4c2408
                         {disp8} mov        eax, dword ptr [eax + 0x20]                    // 0x005f89b8    8b4020
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                    // 0x005f89bb    8b5120
                         and                eax, 0x000000ff                                // 0x005f89be    25ff000000
                         and                edx, 0x000000ff                                // 0x005f89c3    81e2ff000000
                         sub.s              eax, edx                                       // 0x005f89c9    2bc2
                         ret                                                               // 0x005f89cb    c3
                         nop                                                               // 0x005f89cc    90
                         nop                                                               // 0x005f89cd    90
                         nop                                                               // 0x005f89ce    90
                         nop                                                               // 0x005f89cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005f89d0    8b442404
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x005f89d4    d94008
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                    // 0x005f89d7    8b4c2408
                         {disp8} fsub       dword ptr [ecx + 0x08]                         // 0x005f89db    d86108
                         {disp32} jmp       _jmp_addr_0x007a1400                           // 0x005f89de    e91d8a1a00
                         nop                                                               // 0x005f89e3    90
                         nop                                                               // 0x005f89e4    90
                         nop                                                               // 0x005f89e5    90
                         nop                                                               // 0x005f89e6    90
                         nop                                                               // 0x005f89e7    90
                         nop                                                               // 0x005f89e8    90
                         nop                                                               // 0x005f89e9    90
                         nop                                                               // 0x005f89ea    90
                         nop                                                               // 0x005f89eb    90
                         nop                                                               // 0x005f89ec    90
                         nop                                                               // 0x005f89ed    90
                         nop                                                               // 0x005f89ee    90
                         nop                                                               // 0x005f89ef    90
_jmp_addr_0x005f89f0:    sub                esp, 0x000001a0                                // 0x005f89f0    81eca0010000
                         push               ebx                                            // 0x005f89f6    53
                         push               ebp                                            // 0x005f89f7    55
                         push               esi                                            // 0x005f89f8    56
                         push               edi                                            // 0x005f89f9    57
                         mov                ecx, 0x00e85050                                // 0x005f89fa    b95050e800
                         call               _jmp_addr_0x007ded50                           // 0x005f89ff    e84c631e00
                         test               eax, eax                                       // 0x005f8a04    85c0
                         {disp8} je         _jmp_addr_0x005f8a1a                           // 0x005f8a06    7412
                         pop                edi                                            // 0x005f8a08    5f
                         pop                esi                                            // 0x005f8a09    5e
                         pop                ebp                                            // 0x005f8a0a    5d
                         {disp32} mov       byte ptr [data_bytes + 0x371cc8], 0x01         // 0x005f8a0b    c605c87cd30001
                         pop                ebx                                            // 0x005f8a12    5b
                         add                esp, 0x000001a0                                // 0x005f8a13    81c4a0010000
                         ret                                                               // 0x005f8a19    c3
_jmp_addr_0x005f8a1a:    {disp32} mov       al, byte ptr [data_bytes + 0x371cb8]           // 0x005f8a1a    a0b87cd300
                         test               al, 0x01                                       // 0x005f8a1f    a801
                         {disp32} mov       dword ptr [esp + 0x00000098], 0x00000000       // 0x005f8a21    c784249800000000000000
                         {disp32} mov       dword ptr [esp + 0x0000009c], 0x00000000       // 0x005f8a2c    c784249c00000000000000
                         {disp32} mov       dword ptr [esp + 0x000000a0], 0x42c80000       // 0x005f8a37    c78424a00000000000c842
                         {disp8} jne        _jmp_addr_0x005f8a5c                           // 0x005f8a42    7518
                         mov.s              dl, al                                         // 0x005f8a44    8ad0
                         or                 dl, 1                                          // 0x005f8a46    80ca01
                         push               0x005f9ff0                                     // 0x005f8a49    68f09f5f00
                         {disp32} mov       byte ptr [data_bytes + 0x371cb8], dl           // 0x005f8a4e    8815b87cd300
                         call               _atexit                                        // 0x005f8a54    e838cd1c00
                         add                esp, 0x04                                      // 0x005f8a59    83c404
_jmp_addr_0x005f8a5c:    {disp32} mov       eax, dword ptr [esp + 0x000001b4]              // 0x005f8a5c    8b8424b4010000
                         xor.s              ebp, ebp                                       // 0x005f8a63    33ed
                         cmp.s              eax, ebp                                       // 0x005f8a65    3bc5
                         {disp32} jne       _jmp_addr_0x005f8f19                           // 0x005f8a67    0f85ac040000
                         {disp8} lea        edx, dword ptr [esp + 0x28]                    // 0x005f8a6d    8d542428
                         {disp32} lea       ecx, dword ptr [esp + 0x00000098]              // 0x005f8a71    8d8c2498000000
                         {disp8} mov        dword ptr [esp + 0x28], ebp                    // 0x005f8a78    896c2428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                    // 0x005f8a7c    896c242c
                         {disp8} mov        dword ptr [esp + 0x30], ebp                    // 0x005f8a80    896c2430
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z     // 0x005f8a84    e8970e2200
                         push               ebp                                            // 0x005f8a89    55
                         push               ebp                                            // 0x005f8a8a    55
                         push               0x41                                           // 0x005f8a8b    6a41
                         push               0x00bf3d98                                     // 0x005f8a8d    68983dbf00
                         call               _jmp_addr_0x008379e0                           // 0x005f8a92    e849ef2300
                         push               eax                                            // 0x005f8a97    50
                         push               0x6                                            // 0x005f8a98    6a06
                         {disp32} mov       dword ptr [data_bytes + 0x371ca8], eax         // 0x005f8a9a    a3a87cd300
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                           // 0x005f8a9f    e88c722300
                         {disp32} mov       dword ptr [data_bytes + 0x371ca4], eax         // 0x005f8aa4    a3a47cd300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371ca8]         // 0x005f8aa9    a1a87cd300
                         push               eax                                            // 0x005f8aae    50
                         push               0xd                                            // 0x005f8aaf    6a0d
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                           // 0x005f8ab1    e87a722300
                         push               0x61                                           // 0x005f8ab6    6a61
                         push               0x00bf3d7c                                     // 0x005f8ab8    687c3dbf00
                         push               0x00004000                                     // 0x005f8abd    6800400000
                         {disp32} mov       dword ptr [data_bytes + 0x371ca0], eax         // 0x005f8ac2    a3a07cd300
                         call               ___nw__FUl                                     // 0x005f8ac7    e8c42c1e00
                         add                esp, 0x2c                                      // 0x005f8acc    83c42c
                         {disp32} mov       dword ptr [data_bytes + 0x371c9c], eax         // 0x005f8acf    a39c7cd300
                         {disp32} mov       word ptr [data_bytes + 0x371a9c], bp           // 0x005f8ad4    66892d9c7ad300
                         call               dword ptr [__imp__GetTickCount@4]              // 0x005f8adb    ff15c4918a00
                         mov.s              ecx, eax                                       // 0x005f8ae1    8bc8
                         mov                eax, 0x10624dd3                                // 0x005f8ae3    b8d34d6210
                         mul                ecx                                            // 0x005f8ae8    f7e1
                         shr                edx, 6                                         // 0x005f8aea    c1ea06
                         test               dl, 0x03                                       // 0x005f8aed    f6c203
                         {disp32} jne       _jmp_addr_0x005f8bad                           // 0x005f8af0    0f85b7000000
                         {disp32} lea       edx, dword ptr [esp + 0x000000b0]              // 0x005f8af6    8d9424b0000000
                         push               edx                                            // 0x005f8afd    52
                         push               0x000000ef                                     // 0x005f8afe    68ef000000
                         call               dword ptr [__imp__GetTempPathA@4]              // 0x005f8b03    ff159c918a00
                         or                 ecx, 0xffffffff                                // 0x005f8b09    83c9ff
                         xor.s              eax, eax                                       // 0x005f8b0c    33c0
                         mov                edi, 0x00bf3288                                // 0x005f8b0e    bf8832bf00
                         repne scasb                                                       // 0x005f8b13    f2ae
                         not                ecx                                            // 0x005f8b15    f7d1
                         sub.s              edi, ecx                                       // 0x005f8b17    2bf9
                         mov.s              ebx, ecx                                       // 0x005f8b19    8bd9
                         or                 ecx, 0xffffffff                                // 0x005f8b1b    83c9ff
                         mov.s              esi, edi                                       // 0x005f8b1e    8bf7
                         {disp32} lea       edx, dword ptr [esp + 0x000000b0]              // 0x005f8b20    8d9424b0000000
                         mov.s              edi, edx                                       // 0x005f8b27    8bfa
                         repne scasb                                                       // 0x005f8b29    f2ae
                         mov.s              ecx, ebx                                       // 0x005f8b2b    8bcb
                         shr                ecx, 2                                         // 0x005f8b2d    c1e902
                         dec                edi                                            // 0x005f8b30    4f
                         rep movsd          es:[edi], dword ptr ds:[esi]                   // 0x005f8b31    f3a5
                         mov.s              ecx, ebx                                       // 0x005f8b33    8bcb
                         {disp32} lea       eax, dword ptr [esp + 0x000000b0]              // 0x005f8b35    8d8424b0000000
                         and                ecx, 0x03                                      // 0x005f8b3c    83e103
                         push               0x009ce5d8                                     // 0x005f8b3f    68d8e59c00
                         push               eax                                            // 0x005f8b44    50
                         rep movsb                                                         // 0x005f8b45    f3a4
                         call               _fopen                                         // 0x005f8b47    e8d1e21c00
                         mov.s              ebx, eax                                       // 0x005f8b4c    8bd8
                         add                esp, 0x08                                      // 0x005f8b4e    83c408
                         cmp.s              ebx, ebp                                       // 0x005f8b51    3bdd
                         {disp8} je         _jmp_addr_0x005f8bad                           // 0x005f8b53    7458
                         mov                esi, 0x00d34a9d                                // 0x005f8b55    be9d4ad300
_jmp_addr_0x005f8b5a:    mov                edi, 0x00000040                                // 0x005f8b5a    bf40000000
_jmp_addr_0x005f8b5f:    push               ebx                                            // 0x005f8b5f    53
                         push               0x1                                            // 0x005f8b60    6a01
                         {disp8} lea        ecx, dword ptr [esp + 0x47]                    // 0x005f8b62    8d4c2447
                         push               0x1                                            // 0x005f8b66    6a01
                         push               ecx                                            // 0x005f8b68    51
                         call               _fread                                         // 0x005f8b69    e81de91c00
                         {disp8} mov        al, byte ptr [esp + 0x4f]                      // 0x005f8b6e    8a44244f
                         {disp8} mov        byte ptr [esi + 0x01], al                      // 0x005f8b72    884601
                         mov                byte ptr [esi], al                             // 0x005f8b75    8806
                         {disp8} mov        byte ptr [esi + -0x01], al                     // 0x005f8b77    8846ff
                         add                esp, 0x10                                      // 0x005f8b7a    83c410
                         add                esi, 0x03                                      // 0x005f8b7d    83c603
                         dec                edi                                            // 0x005f8b80    4f
                         {disp8} jne        _jmp_addr_0x005f8b5f                           // 0x005f8b81    75dc
                         cmp                esi, 0x00d37a9d                                // 0x005f8b83    81fe9d7ad300
                         {disp8} jl         _jmp_addr_0x005f8b5a                           // 0x005f8b89    7ccf
                         push               ebx                                            // 0x005f8b8b    53
                         push               0x00000080                                     // 0x005f8b8c    6880000000
                         push               0x2                                            // 0x005f8b91    6a02
                         push               0x00d37a9c                                     // 0x005f8b93    689c7ad300
                         call               _fread                                         // 0x005f8b98    e8eee81c00
                         push               ebx                                            // 0x005f8b9d    53
                         {disp32} mov       word ptr [data_bytes + 0x371b9c], bp           // 0x005f8b9e    66892d9c7bd300
                         call               _fclose                                        // 0x005f8ba5    e886e21c00
                         add                esp, 0x14                                      // 0x005f8baa    83c414
_jmp_addr_0x005f8bad:    cmp                word ptr [data_bytes + 0x371a9c], bp           // 0x005f8bad    66392d9c7ad300
                         {disp8} jne        _jmp_addr_0x005f8be6                           // 0x005f8bb4    7530
                         push               0x00bf3d74                                     // 0x005f8bb6    68743dbf00
                         push               0x00d37a9c                                     // 0x005f8bbb    689c7ad300
                         {disp32} mov       byte ptr [data_bytes + 0x371cd0], 0x01         // 0x005f8bc0    c605d07cd30001
                         call               _wcscpy                                        // 0x005f8bc7    e8ead31c00
                         push               ebp                                            // 0x005f8bcc    55
                         push               0x00003000                                     // 0x005f8bcd    6800300000
                         push               0x00d34a9c                                     // 0x005f8bd2    689c4ad300
                         push               0x00bf3d64                                     // 0x005f8bd7    68643dbf00
                         call               _LHLoadData__FPcPvUlPUl                        // 0x005f8bdc    e80f421c00
                         add                esp, 0x18                                      // 0x005f8be1    83c418
                         {disp8} jmp        _jmp_addr_0x005f8bed                           // 0x005f8be4    eb07
_jmp_addr_0x005f8be6:    {disp32} mov       byte ptr [data_bytes + 0x371cd0], 0x00         // 0x005f8be6    c605d07cd30000
_jmp_addr_0x005f8bed:    mov                edx, 0x00000001                                // 0x005f8bed    ba01000000
                         mov                ecx, 0x00001000                                // 0x005f8bf2    b900100000
                         call               ?Create@LH3DSprite@@SAPAV1@JH@Z                // 0x005f8bf7    e8a4782400
                         push               0x00000087                                     // 0x005f8bfc    6887000000
                         {disp32} mov       dword ptr [data_bytes + 0x36ea98], eax         // 0x005f8c01    a3984ad300
                         xor.s              eax, eax                                       // 0x005f8c06    33c0
                         xor.s              ecx, ecx                                       // 0x005f8c08    33c9
                         push               0x00bf3d7c                                     // 0x005f8c0a    687c3dbf00
                         push               0x0000c000                                     // 0x005f8c0f    6800c00000
                         {disp32} mov       dword ptr [data_bytes + 0x371cb0], eax         // 0x005f8c14    a3b07cd300
                         {disp32} mov       dword ptr [data_bytes + 0x371cb4], ecx         // 0x005f8c19    890db47cd300
                         call               ___nw__FUl                                     // 0x005f8c1f    e86c2b1e00
                         push               0x00000088                                     // 0x005f8c24    6888000000
                         push               0x00bf3d7c                                     // 0x005f8c29    687c3dbf00
                         push               0x0000c000                                     // 0x005f8c2e    6800c00000
                         {disp32} mov       dword ptr [data_bytes + 0x36ea94], eax         // 0x005f8c33    a3944ad300
                         call               ___nw__FUl                                     // 0x005f8c38    e8532b1e00
                         add                esp, 0x18                                      // 0x005f8c3d    83c418
                         {disp32} mov       dword ptr [data_bytes + 0x36ea90], eax         // 0x005f8c40    a3904ad300
                         {disp32} mov       dword ptr [data_bytes + 0x36ea8c], 0x3f800000  // 0x005f8c45    c7058c4ad3000000803f
                         xor.s              ebx, ebx                                       // 0x005f8c4f    33db
                         {disp8} mov        dword ptr [esp + 0x10], ebp                    // 0x005f8c51    896c2410
                         {disp8} mov        dword ptr [esp + 0x18], 0x00d34a9c             // 0x005f8c55    c74424189c4ad300
_jmp_addr_0x005f8c5d:    {disp8} mov        ebp, dword ptr [esp + 0x18]                    // 0x005f8c5d    8b6c2418
                         lea                edx, dword ptr [ebx + ebx * 0x2]               // 0x005f8c61    8d145b
                         lea                esi, dword ptr [ebx + edx * 0x4]               // 0x005f8c64    8d3493
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x005f8c67    c744242000000000
                         shl                esi, 2                                         // 0x005f8c6f    c1e602
_jmp_addr_0x005f8c72:    push               0x43020000                                     // 0x005f8c72    6800000243
                         push               0x428c0000                                     // 0x005f8c77    6800008c42
                         call               _Random__Fff@8                                 // 0x005f8c7c    e8ff442200
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005f8c81    d95c2414
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005f8c85    8b0d5850e800
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x005f8c8b    8b442410
                         add                eax, -0x20                                     // 0x005f8c8f    83c0e0
                         and                ecx, 0x0000ffff                                // 0x005f8c92    81e1ffff0000
                         mov.s              edi, ecx                                       // 0x005f8c98    8bf9
                         imul               edi, eax                                       // 0x005f8c9a    0faff8
                         mov                eax, 0x88888889                                // 0x005f8c9d    b889888888
                         imul               edi                                            // 0x005f8ca2    f7ef
                         add.s              edx, edi                                       // 0x005f8ca4    03d7
                         sar                edx, 7                                         // 0x005f8ca6    c1fa07
                         mov.s              eax, edx                                       // 0x005f8ca9    8bc2
                         shr                eax, 0x1f                                      // 0x005f8cab    c1e81f
                         add.s              edx, eax                                       // 0x005f8cae    03d0
                         mov.s              eax, ecx                                       // 0x005f8cb0    8bc1
                         shr                eax, 1                                         // 0x005f8cb2    d1e8
                         add.s              edx, eax                                       // 0x005f8cb4    03d0
                         {disp8} mov        dword ptr [esp + 0x58], edx                    // 0x005f8cb6    89542458
                         {disp8} mov        edx, dword ptr [esp + 0x20]                    // 0x005f8cba    8b542420
                         {disp8} lea        edi, dword ptr [edx + -0x20]                   // 0x005f8cbe    8d7ae0
                         imul               edi, ecx                                       // 0x005f8cc1    0faff9
                         mov                eax, 0x88888889                                // 0x005f8cc4    b889888888
                         imul               edi                                            // 0x005f8cc9    f7ef
                         add.s              edx, edi                                       // 0x005f8ccb    03d7
                         xor.s              ecx, ecx                                       // 0x005f8ccd    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]           // 0x005f8ccf    668b0d5a50e800
                         sar                edx, 7                                         // 0x005f8cd6    c1fa07
                         mov.s              eax, edx                                       // 0x005f8cd9    8bc2
                         shr                eax, 0x1f                                      // 0x005f8cdb    c1e81f
                         add.s              edx, eax                                       // 0x005f8cde    03d0
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f8ce0    a1984ad300
                         shr                ecx, 1                                         // 0x005f8ce5    d1e9
                         add.s              edx, ecx                                       // 0x005f8ce7    03d1
                         {disp8} mov        dword ptr [esp + 0x5c], edx                    // 0x005f8ce9    8954245c
                         {disp8} mov        edx, dword ptr [esp + 0x14]                    // 0x005f8ced    8b542414
                         push               edx                                            // 0x005f8cf1    52
                         lea                edx, dword ptr [esi + eax * 0x1]               // 0x005f8cf2    8d1406
                         {disp8} lea        ecx, dword ptr [esp + 0x5c]                    // 0x005f8cf5    8d4c245c
                         call               _jmp_addr_0x0081b370                           // 0x005f8cf9    e872262200
                         xor.s              ecx, ecx                                       // 0x005f8cfe    33c9
                         {disp8} mov        cl, byte ptr [ebp + 0x00]                      // 0x005f8d00    8a4d00
                         xor.s              eax, eax                                       // 0x005f8d03    33c0
                         {disp8} mov        al, byte ptr [ebp + 0x01]                      // 0x005f8d05    8a4501
                         xor.s              edx, edx                                       // 0x005f8d08    33d2
                         {disp8} mov        dl, byte ptr [ebp + 0x02]                      // 0x005f8d0a    8a5502
                         add                ecx, 0x0000ff00                                // 0x005f8d0d    81c100ff0000
                         shl                ecx, 8                                         // 0x005f8d13    c1e108
                         add.s              ecx, eax                                       // 0x005f8d16    03c8
                         shl                ecx, 8                                         // 0x005f8d18    c1e108
                         add.s              ecx, edx                                       // 0x005f8d1b    03ca
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8d1d    8b15984ad300
                         {disp8} mov        dword ptr [esi + edx * 0x1 + 0x20], ecx        // 0x005f8d23    894c1620
                         cmp                eax, 0x00000080                                // 0x005f8d27    3d80000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371ca4]         // 0x005f8d2c    a1a47cd300
                         {disp8} jl         _jmp_addr_0x005f8d38                           // 0x005f8d31    7c05
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371ca0]         // 0x005f8d33    a1a07cd300
_jmp_addr_0x005f8d38:    {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8d38    8b0d984ad300
                         {disp8} mov        dword ptr [esi + ecx * 0x1 + 0x2c], eax        // 0x005f8d3e    89440e2c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8d42    8b15984ad300
                         {disp8} mov        ecx, dword ptr [esi + edx * 0x1 + 0x28]        // 0x005f8d48    8b4c1628
                         {disp8} lea        eax, dword ptr [esi + edx * 0x1 + 0x28]        // 0x005f8d4c    8d441628
                         and                ecx, 0xffffffc5                                // 0x005f8d50    83e1c5
                         push               0x40c90fdb                                     // 0x005f8d53    68db0fc940
                         or                 ecx, 5                                         // 0x005f8d58    83c905
                         push               0x0                                            // 0x005f8d5b    6a00
                         mov                dword ptr [eax], ecx                           // 0x005f8d5d    8908
                         call               _Random__Fff@8                                 // 0x005f8d5f    e81c442200
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8d64    8b15984ad300
                         push               0x43a00000                                     // 0x005f8d6a    680000a043
                         {disp8} fstp       dword ptr [esi + edx * 0x1 + 0x14]             // 0x005f8d6f    d95c1614
                         push               0x43480000                                     // 0x005f8d73    6800004843
                         call               _Random__Fff@8                                 // 0x005f8d78    e803442200
                         {disp8} fdivr      dword ptr [esp + 0x14]                         // 0x005f8d7d    d87c2414
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371c9c]         // 0x005f8d81    a19c7cd300
                         fstp               dword ptr [eax + ebx * 0x4]                    // 0x005f8d86    d91c98
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371c9c]         // 0x005f8d89    8b0d9c7cd300
                         fld                dword ptr [ecx + ebx * 0x4]                    // 0x005f8d8f    d90499
                         {disp32} fcom      dword ptr [rdata_bytes + 0x16518]              // 0x005f8d92    d81518f58b00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8d98    8b15984ad300
                         lea                ecx, dword ptr [esi + edx * 0x1]               // 0x005f8d9e    8d0c16
                         fnstsw             ax                                             // 0x005f8da1    dfe0
                         test               ah, 0x01                                       // 0x005f8da3    f6c401
                         {disp8} je         _jmp_addr_0x005f8db0                           // 0x005f8da6    7408
                         fstp               st(0)                                          // 0x005f8da8    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]              // 0x005f8daa    d90518f58b00
_jmp_addr_0x005f8db0:    fld                st(0)                                          // 0x005f8db0    d9c0
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005f8db2    8b442420
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                         // 0x005f8db6    d8710c
                         inc                ebx                                            // 0x005f8db9    43
                         add                esi, 0x34                                      // 0x005f8dba    83c634
                         inc                eax                                            // 0x005f8dbd    40
                         add                ebp, 0x000000c0                                // 0x005f8dbe    81c5c0000000
                         cmp                eax, 0x40                                      // 0x005f8dc4    83f840
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x005f8dc7    89442420
                         fld                st(0)                                          // 0x005f8dcb    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                         // 0x005f8dcd    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                         // 0x005f8dd0    d95918
                         {disp8} fmul       dword ptr [ecx + 0x1c]                         // 0x005f8dd3    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                         // 0x005f8dd6    d9591c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                         // 0x005f8dd9    d9590c
                         {disp32} jl        _jmp_addr_0x005f8c72                           // 0x005f8ddc    0f8c90feffff
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x005f8de2    8b442418
                         {disp8} mov        esi, dword ptr [esp + 0x10]                    // 0x005f8de6    8b742410
                         add                eax, 0x03                                      // 0x005f8dea    83c003
                         inc                esi                                            // 0x005f8ded    46
                         cmp                eax, 0x00d34b5c                                // 0x005f8dee    3d5c4bd300
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x005f8df3    89742410
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x005f8df7    89442418
                         {disp32} jl        _jmp_addr_0x005f8c5d                           // 0x005f8dfb    0f8c5cfeffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f8e01    a1984ad300
                         push               0x005f89b0                                     // 0x005f8e06    68b0895f00
                         push               0x34                                           // 0x005f8e0b    6a34
                         push               0x00001000                                     // 0x005f8e0d    6800100000
                         push               eax                                            // 0x005f8e12    50
                         call               _qsort                                         // 0x005f8e13    e84cf01c00
                         add                esp, 0x10                                      // 0x005f8e18    83c410
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000             // 0x005f8e1b    c744242c00000000
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                    // 0x005f8e23    8b74242c
                         xor.s              edx, edx                                       // 0x005f8e27    33d2
                         xor.s              ecx, ecx                                       // 0x005f8e29    33c9
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000             // 0x005f8e2b    c744242800000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000             // 0x005f8e33    c744243000000000
                         xor.s              eax, eax                                       // 0x005f8e3b    33c0
_jmp_addr_0x005f8e3d:    {disp32} mov       edi, dword ptr [data_bytes + 0x36ea98]         // 0x005f8e3d    8b3d984ad300
                         {disp8} fld        dword ptr [ecx + edi * 0x1 + 0x0c]             // 0x005f8e43    d944390c
                         {disp32} mov       edi, dword ptr [data_bytes + 0x371c9c]         // 0x005f8e47    8b3d9c7cd300
                         fstp               dword ptr [eax + edi * 0x1]                    // 0x005f8e4d    d91c38
                         {disp32} mov       edi, dword ptr [data_bytes + 0x36ea98]         // 0x005f8e50    8b3d984ad300
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x36ea94]         // 0x005f8e56    8b1d944ad300
                         add.s              edi, ecx                                       // 0x005f8e5c    03f9
                         mov                ebp, dword ptr [edi]                           // 0x005f8e5e    8b2f
                         add.s              ebx, edx                                       // 0x005f8e60    03da
                         mov                dword ptr [ebx], ebp                           // 0x005f8e62    892b
                         {disp8} mov        ebp, dword ptr [edi + 0x04]                    // 0x005f8e64    8b6f04
                         {disp8} mov        dword ptr [ebx + 0x04], ebp                    // 0x005f8e67    896b04
                         {disp8} mov        edi, dword ptr [edi + 0x08]                    // 0x005f8e6a    8b7f08
                         {disp8} mov        dword ptr [ebx + 0x08], edi                    // 0x005f8e6d    897b08
                         {disp32} mov       edi, dword ptr [data_bytes + 0x36ea90]         // 0x005f8e70    8b3d904ad300
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                    // 0x005f8e76    8b5c2428
                         add.s              edi, edx                                       // 0x005f8e7a    03fa
                         mov                dword ptr [edi], ebx                           // 0x005f8e7c    891f
                         {disp8} mov        ebx, dword ptr [esp + 0x30]                    // 0x005f8e7e    8b5c2430
                         add                eax, 0x04                                      // 0x005f8e82    83c004
                         {disp8} mov        dword ptr [edi + 0x04], esi                    // 0x005f8e85    897704
                         add                ecx, 0x34                                      // 0x005f8e88    83c134
                         add                edx, 0x0c                                      // 0x005f8e8b    83c20c
                         cmp                eax, 0x00004000                                // 0x005f8e8e    3d00400000
                         {disp8} mov        dword ptr [edi + 0x08], ebx                    // 0x005f8e93    895f08
                         {disp8} jl         _jmp_addr_0x005f8e3d                           // 0x005f8e96    7ca5
                         xor.s              ecx, ecx                                       // 0x005f8e98    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                           // 0x005f8e9a    e831262100
                         xor.s              esi, esi                                       // 0x005f8e9f    33f6
                         push               esi                                            // 0x005f8ea1    56
                         push               esi                                            // 0x005f8ea2    56
                         push               esi                                            // 0x005f8ea3    56
                         {disp32} mov       dword ptr [data_bytes + 0x36ea88], eax         // 0x005f8ea4    a3884ad300
                         mov                edi, dword ptr [eax]                           // 0x005f8ea9    8b38
                         push               0x00bf3d54                                     // 0x005f8eab    68543dbf00
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z         // 0x005f8eb0    e83bd92000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f8eb5    8b0d884ad300
                         add                esp, 0x08                                      // 0x005f8ebb    83c408
                         mov.s              edx, eax                                       // 0x005f8ebe    8bd0
                         call               dword ptr [edi + 0xf4]                         // 0x005f8ec0    ff97f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f8ec6    8b0d884ad300
                         mov                eax, dword ptr [ecx]                           // 0x005f8ecc    8b01
                         xor.s              edx, edx                                       // 0x005f8ece    33d2
                         call               dword ptr [eax + 0x58]                         // 0x005f8ed0    ff5058
                         {disp32} mov       dword ptr [data_bytes + 0x371ccc], esi         // 0x005f8ed3    8935cc7cd300
                         {disp32} mov       byte ptr [data_bytes + 0x371cc8], 0x00         // 0x005f8ed9    c605c87cd30000
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x00         // 0x005f8ee0    c605d086c30000
                         call               ?StartFrame@LH3DRender@@SAXXZ                  // 0x005f8ee7    e8f4612300
                         call               ?FinishFrame@LH3DRender@@QAEXXZ                // 0x005f8eec    e86f652300
                         mov                ecx, 0x00e85204                                // 0x005f8ef1    b90452e800
                         {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x01         // 0x005f8ef6    c605d086c30001
                         call               ?DeltaPos@LHMouse@@QAEXXZ                      // 0x005f8efd    e80eb91e00
                         pop                edi                                            // 0x005f8f02    5f
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e4], esi         // 0x005f8f03    8935e452e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e8], esi         // 0x005f8f09    8935e852e800
                         pop                esi                                            // 0x005f8f0f    5e
                         pop                ebp                                            // 0x005f8f10    5d
                         pop                ebx                                            // 0x005f8f11    5b
                         add                esp, 0x000001a0                                // 0x005f8f12    81c4a0010000
                         ret                                                               // 0x005f8f18    c3
_jmp_addr_0x005f8f19:    cmp                eax, 0x02                                      // 0x005f8f19    83f802
                         {disp32} jne       _jmp_addr_0x005f8fb3                           // 0x005f8f1c    0f8591000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f8f22    8b0d884ad300
                         mov                edx, dword ptr [ecx]                           // 0x005f8f28    8b11
                         call               dword ptr [edx + 4]                            // 0x005f8f2a    ff5204
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371ca4]         // 0x005f8f2d    a1a47cd300
                         {disp32} mov       dword ptr [data_bytes + 0x36ea88], ebp         // 0x005f8f32    892d884ad300
                         {disp8} mov        dword ptr [eax + 0x08], ebp                    // 0x005f8f38    896808
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371ca0]         // 0x005f8f3b    8b0da07cd300
                         {disp32} mov       dword ptr [data_bytes + 0x371ca4], ebp         // 0x005f8f41    892da47cd300
                         {disp8} mov        dword ptr [ecx + 0x08], ebp                    // 0x005f8f47    896908
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371ca8]         // 0x005f8f4a    8b0da87cd300
                         {disp32} mov       dword ptr [data_bytes + 0x371ca0], ebp         // 0x005f8f50    892da07cd300
                         call               ?Release@LH3DTexture@@QAEXXZ                   // 0x005f8f56    e8e5ed2300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea98]         // 0x005f8f5b    8b0d984ad300
                         {disp32} mov       dword ptr [data_bytes + 0x371ca8], ebp         // 0x005f8f61    892da87cd300
                         call               ?Release@LH3DSprite@@QAEXXZ                    // 0x005f8f67    e8b4752400
                         {disp32} mov       edx, dword ptr [data_bytes + 0x371c9c]         // 0x005f8f6c    8b159c7cd300
                         push               edx                                            // 0x005f8f72    52
                         {disp32} mov       dword ptr [data_bytes + 0x36ea98], ebp         // 0x005f8f73    892d984ad300
                         call               ??3@YAXPAX@Z                                   // 0x005f8f79    e81a5f1b00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea94]         // 0x005f8f7e    a1944ad300
                         push               eax                                            // 0x005f8f83    50
                         call               ??3@YAXPAX@Z                                   // 0x005f8f84    e80f5f1b00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea90]         // 0x005f8f89    8b0d904ad300
                         push               ecx                                            // 0x005f8f8f    51
                         call               ??3@YAXPAX@Z                                   // 0x005f8f90    e8035f1b00
                         add                esp, 0x0c                                      // 0x005f8f95    83c40c
                         pop                edi                                            // 0x005f8f98    5f
                         pop                esi                                            // 0x005f8f99    5e
                         {disp32} mov       dword ptr [data_bytes + 0x371c9c], ebp         // 0x005f8f9a    892d9c7cd300
                         pop                ebp                                            // 0x005f8fa0    5d
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], 0x00000001  // 0x005f8fa1    c7051c87c30001000000
                         pop                ebx                                            // 0x005f8fab    5b
                         add                esp, 0x000001a0                                // 0x005f8fac    81c4a0010000
                         ret                                                               // 0x005f8fb2    c3
_jmp_addr_0x005f8fb3:    cmp                eax, 0x01                                      // 0x005f8fb3    83f801
                         {disp32} jne       _jmp_addr_0x005f9fd7                           // 0x005f8fb6    0f851b100000
                         {disp32} mov       al, byte ptr [data_bytes + 0x371cc8]           // 0x005f8fbc    a0c87cd300
                         test               al, al                                         // 0x005f8fc1    84c0
                         {disp8} je         _jmp_addr_0x005f8fdb                           // 0x005f8fc3    7416
                         push               0x000000c8                                     // 0x005f8fc5    68c8000000
                         call               dword ptr [__imp__Sleep@4]                     // 0x005f8fca    ff1530928a00
                         pop                edi                                            // 0x005f8fd0    5f
                         pop                esi                                            // 0x005f8fd1    5e
                         pop                ebp                                            // 0x005f8fd2    5d
                         pop                ebx                                            // 0x005f8fd3    5b
                         add                esp, 0x000001a0                                // 0x005f8fd4    81c4a0010000
                         ret                                                               // 0x005f8fda    c3
_jmp_addr_0x005f8fdb:    {disp32} fld       dword ptr [data_bytes + 0x4dbdd0]              // 0x005f8fdb    d905d01dea00
                         {disp32} mov       dword ptr [_near_clipping], 0x3dcccccd         // 0x005f8fe1    c705e039e800cdcccc3d
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005f8feb    d80db4a38a00
                         {disp32} mov       dword ptr [data_bytes + 0x27271c], 0x00000002  // 0x005f8ff1    c7051c87c30002000000
                         {disp8} mov        dword ptr [esp + 0x64], 0x00000000             // 0x005f8ffb    c744246400000000
                         {disp8} mov        dword ptr [esp + 0x68], 0x00000000             // 0x005f9003    c744246800000000
                         fptan                                                             // 0x005f900b    d9f2
                         {disp8} mov        dword ptr [esp + 0x6c], 0x00000000             // 0x005f900d    c744246c00000000
                         fstp               st(0)                                          // 0x005f9015    ddd8
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005f9017    d80d2cb28a00
                         {disp32} fst       dword ptr [data_bytes + 0x27212c]              // 0x005f901d    d9152c81c300
                         {disp32} fdiv      dword ptr [data_bytes + 0x4bd9ec]              // 0x005f9023    d835ec39e800
                         {disp32} fstp      dword ptr [data_bytes + 0x272130]              // 0x005f9029    d91d3081c300
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f902f    d905cc7cd300
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005f9035    d81d98a38a00
                         fnstsw             ax                                             // 0x005f903b    dfe0
                         test               ah, 0x40                                       // 0x005f903d    f6c440
                         {disp8} je         _jmp_addr_0x005f904e                           // 0x005f9040    740c
                         {disp32} mov       dword ptr [data_bytes + 0x371ccc], 0x3a83126f  // 0x005f9042    c705cc7cd3006f12833a
                         {disp8} jmp        _jmp_addr_0x005f906c                           // 0x005f904c    eb1e
_jmp_addr_0x005f904e:    {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]        // 0x005f904e    db053481c300
                         {disp32} fmul      dword ptr [data_bytes + 0x36ea8c]              // 0x005f9054    d80d8c4ad300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826f8]              // 0x005f905a    d80df8b69200
                         {disp32} fadd      dword ptr [data_bytes + 0x371ccc]              // 0x005f9060    d805cc7cd300
                         {disp32} fstp      dword ptr [data_bytes + 0x371ccc]              // 0x005f9066    d91dcc7cd300
_jmp_addr_0x005f906c:    {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f906c    d905cc7cd300
                         xor.s              ecx, ecx                                       // 0x005f9072    33c9
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x261c0]              // 0x005f9074    d81dc0f18c00
                         fnstsw             ax                                             // 0x005f907a    dfe0
                         test               ah, 0x01                                       // 0x005f907c    f6c401
                         {disp8} je         _jmp_addr_0x005f90a0                           // 0x005f907f    741f
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f9081    d905cc7cd300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e80c]              // 0x005f9087    d80d0c788c00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x005f908d    d80d70b28a00
                         {disp32} fsubr     dword ptr [__real@437f0000]                    // 0x005f9093    d82d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x005f9099    e862831a00
                         mov.s              ecx, eax                                       // 0x005f909e    8bc8
_jmp_addr_0x005f90a0:    {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f90a0    d905cc7cd300
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x826f4]              // 0x005f90a6    d81df4b69200
                         fnstsw             ax                                             // 0x005f90ac    dfe0
                         test               ah, 0x41                                       // 0x005f90ae    f6c441
                         {disp8} jne        _jmp_addr_0x005f90d2                           // 0x005f90b1    751f
                         {disp32} fld       dword ptr [rdata_bytes + 0x826f0]              // 0x005f90b3    d905f0b69200
                         {disp32} fsub      dword ptr [data_bytes + 0x371ccc]              // 0x005f90b9    d825cc7cd300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826ec]              // 0x005f90bf    d80decb69200
                         {disp32} fsubr     dword ptr [__real@437f0000]                    // 0x005f90c5    d82d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x005f90cb    e830831a00
                         mov.s              ecx, eax                                       // 0x005f90d0    8bc8
_jmp_addr_0x005f90d2:    cmp.s              ecx, ebp                                       // 0x005f90d2    3bcd
                         {disp8} jle        _jmp_addr_0x005f90e5                           // 0x005f90d4    7e0f
                         cmp                ecx, 0x000000ff                                // 0x005f90d6    81f9ff000000
                         {disp8} jl         _jmp_addr_0x005f90e7                           // 0x005f90dc    7c09
                         mov                ecx, 0x000000ff                                // 0x005f90de    b9ff000000
                         {disp8} jmp        _jmp_addr_0x005f90e7                           // 0x005f90e3    eb02
_jmp_addr_0x005f90e5:    xor.s              ecx, ecx                                       // 0x005f90e5    33c9
_jmp_addr_0x005f90e7:    {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f90e7    d905cc7cd300
                         {disp8} mov        byte ptr [esp + 0x10], 0x00                    // 0x005f90ed    c644241000
                         {disp32} fsub      dword ptr [rdata_bytes + 0x19c40]              // 0x005f90f2    d825402c8c00
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                    // 0x005f90f8    c644241100
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                    // 0x005f90fd    c644241200
                         {disp8} mov        byte ptr [esp + 0x13], cl                      // 0x005f9102    884c2413
                         {disp8} mov        edx, dword ptr [esp + 0x10]                    // 0x005f9106    8b542410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826e8]              // 0x005f910a    d80de8b69200
                         {disp32} mov       dword ptr [data_bytes + 0x5df1d8], edx         // 0x005f9110    8915d851fa00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x005f9116    d81598a38a00
                         fnstsw             ax                                             // 0x005f911c    dfe0
                         test               ah, 0x41                                       // 0x005f911e    f6c441
                         {disp8} jne        _jmp_addr_0x005f9142                           // 0x005f9121    751f
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x005f9123    d81590a38a00
                         fnstsw             ax                                             // 0x005f9129    dfe0
                         test               ah, 0x01                                       // 0x005f912b    f6c401
                         {disp8} je         _jmp_addr_0x005f9136                           // 0x005f912e    7406
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005f9130    d95c2420
                         {disp8} jmp        _jmp_addr_0x005f914c                           // 0x005f9134    eb16
_jmp_addr_0x005f9136:    fstp               st(0)                                          // 0x005f9136    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], 0x3f800000             // 0x005f9138    c74424200000803f
                         {disp8} jmp        _jmp_addr_0x005f914c                           // 0x005f9140    eb0a
_jmp_addr_0x005f9142:    fstp               st(0)                                          // 0x005f9142    ddd8
                         {disp8} mov        dword ptr [esp + 0x20], 0x00000000             // 0x005f9144    c744242000000000
_jmp_addr_0x005f914c:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x005f914c    8b442420
                         push               eax                                            // 0x005f9150    50
                         call               _jmp_addr_0x005f8960                           // 0x005f9151    e80af8ffff
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005f9156    d95c241c
                         {disp32} fld       dword ptr [rdata_bytes + 0x19c40]              // 0x005f915a    d905402c8c00
                         add                esp, 0x04                                      // 0x005f9160    83c404
                         {disp32} fsub      dword ptr [data_bytes + 0x371ccc]              // 0x005f9163    d825cc7cd300
                         {disp32} fmul      dword ptr [rdata_bytes + 0x20d38]              // 0x005f9169    d80d389d8c00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x005f916f    d81598a38a00
                         fnstsw             ax                                             // 0x005f9175    dfe0
                         test               ah, 0x41                                       // 0x005f9177    f6c441
                         {disp8} jne        _jmp_addr_0x005f9193                           // 0x005f917a    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                    // 0x005f917c    d81590a38a00
                         fnstsw             ax                                             // 0x005f9182    dfe0
                         test               ah, 0x01                                       // 0x005f9184    f6c401
                         {disp8} jne        _jmp_addr_0x005f919b                           // 0x005f9187    7512
                         fstp               st(0)                                          // 0x005f9189    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005f918b    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x005f919b                           // 0x005f9191    eb08
_jmp_addr_0x005f9193:    fstp               st(0)                                          // 0x005f9193    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                    // 0x005f9195    d90598a38a00
_jmp_addr_0x005f919b:    {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]              // 0x005f919b    d80d402c8c00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2414]               // 0x005f91a1    d80514b48a00
                         {disp32} fld       dword ptr [rdata_bytes + 0x241c]               // 0x005f91a7    d9051cb48a00
                         fsub               st, st(1)                                      // 0x005f91ad    d8e1
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x005f91af    d84c2418
                         faddp              st(1), st                                      // 0x005f91b3    dec1
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f91b5    d905cc7cd300
                         {disp32} fmul      qword ptr [rdata_bytes + 0x826e0]              // 0x005f91bb    dc0de0b69200
                         {disp32} fadd      qword ptr [__real@8@40008000000000000000]               // 0x005f91c1    dc0510c48a00
                         fsin                                                              // 0x005f91c7    d9fe
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f91c9    d905cc7cd300
                         {disp32} fmul      qword ptr [rdata_bytes + 0x826d8]              // 0x005f91cf    dc0dd8b69200
                         {disp32} fsubr     qword ptr [rdata_bytes + 0x1ebe8]              // 0x005f91d5    dc2de87b8c00
                         fcos                                                              // 0x005f91db    d9ff
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005f91dd    d95c242c
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f91e1    d905cc7cd300
                         {disp32} fmul      qword ptr [rdata_bytes + 0x826d0]              // 0x005f91e7    dc0dd0b69200
                         {disp32} fadd      qword ptr [rdata_bytes + 0x826c8]              // 0x005f91ed    dc05c8b69200
                         fsin                                                              // 0x005f91f3    d9fe
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005f91f5    d95c2430
                         fmul               st, st(1)                                      // 0x005f91f9    d8c9
                         {disp8} fstp       dword ptr [esp + 0x4c]                         // 0x005f91fb    d95c244c
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005f91ff    d944242c
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                    // 0x005f9203    8b4c244c
                         fmul               st, st(1)                                      // 0x005f9207    d8c9
                         {disp8} mov        dword ptr [esp + 0x40], ecx                    // 0x005f9209    894c2440
                         {disp8} fstp       dword ptr [esp + 0x50]                         // 0x005f920d    d95c2450
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005f9211    d9442430
                         {disp8} mov        edx, dword ptr [esp + 0x50]                    // 0x005f9215    8b542450
                         fmul               st, st(1)                                      // 0x005f9219    d8c9
                         {disp8} mov        dword ptr [esp + 0x44], edx                    // 0x005f921b    89542444
                         {disp8} fstp       dword ptr [esp + 0x54]                         // 0x005f921f    d95c2454
                         {disp8} mov        eax, dword ptr [esp + 0x54]                    // 0x005f9223    8b442454
                         fstp               st(0)                                          // 0x005f9227    ddd8
                         {disp8} mov        dword ptr [esp + 0x48], eax                    // 0x005f9229    89442448
                         {disp32} fld       dword ptr [esp + 0x00000098]                   // 0x005f922d    d9842498000000
                         {disp8} fsub       dword ptr [esp + 0x4c]                         // 0x005f9234    d864244c
                         {disp32} fld       dword ptr [esp + 0x0000009c]                   // 0x005f9238    d984249c000000
                         {disp8} fsub       dword ptr [esp + 0x50]                         // 0x005f923f    d8642450
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005f9243    d95c242c
                         {disp32} fld       dword ptr [esp + 0x000000a0]                   // 0x005f9247    d98424a0000000
                         {disp8} fsub       dword ptr [esp + 0x54]                         // 0x005f924e    d8642454
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005f9252    d95c2430
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x005f9256    d84c2418
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005f925a    d944242c
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x005f925e    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x5c]                         // 0x005f9262    d95c245c
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005f9266    d9442430
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x005f926a    d84c2418
                         {disp8} fstp       dword ptr [esp + 0x60]                         // 0x005f926e    d95c2460
                         {disp8} fadd       dword ptr [esp + 0x4c]                         // 0x005f9272    d844244c
                         {disp8} fld        dword ptr [esp + 0x5c]                         // 0x005f9276    d944245c
                         {disp8} fadd       dword ptr [esp + 0x44]                         // 0x005f927a    d8442444
                         {disp8} fstp       dword ptr [esp + 0x44]                         // 0x005f927e    d95c2444
                         {disp8} fld        dword ptr [esp + 0x60]                         // 0x005f9282    d9442460
                         {disp8} fadd       dword ptr [esp + 0x48]                         // 0x005f9286    d8442448
                         {disp8} fstp       dword ptr [esp + 0x48]                         // 0x005f928a    d95c2448
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f928e    d905cc7cd300
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1651c]              // 0x005f9294    d8251cf58b00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005f929a    d80db4a38a00
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x005f92a0    d82d90a38a00
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005f92a6    d9542414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ece0]              // 0x005f92aa    d81de07c8c00
                         fnstsw             ax                                             // 0x005f92b0    dfe0
                         test               ah, 0x41                                       // 0x005f92b2    f6c441
                         {disp8} jne        _jmp_addr_0x005f92d2                           // 0x005f92b5    751b
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f92b7    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005f92bb    d81d90a38a00
                         fnstsw             ax                                             // 0x005f92c1    dfe0
                         test               ah, 0x01                                       // 0x005f92c3    f6c401
                         {disp8} jne        _jmp_addr_0x005f92da                           // 0x005f92c6    7512
                         {disp8} mov        dword ptr [esp + 0x14], 0x3f800000             // 0x005f92c8    c74424140000803f
                         {disp8} jmp        _jmp_addr_0x005f931e                           // 0x005f92d0    eb4c
_jmp_addr_0x005f92d2:    {disp8} mov        dword ptr [esp + 0x14], 0xc0000000             // 0x005f92d2    c7442414000000c0
_jmp_addr_0x005f92da:    {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005f92da    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x14]                         // 0x005f92e0    d8642414
                         fld                st(1)                                          // 0x005f92e4    d9c1
                         fmul               st, st(1)                                      // 0x005f92e6    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                         // 0x005f92e8    d95c2428
                         {disp8} fld        dword ptr [esp + 0x44]                         // 0x005f92ec    d9442444
                         fmul               st, st(1)                                      // 0x005f92f0    d8c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005f92f2    d95c242c
                         {disp8} fmul       dword ptr [esp + 0x48]                         // 0x005f92f6    d84c2448
                         {disp8} fld        dword ptr [esp + 0x64]                         // 0x005f92fa    d9442464
                         {disp8} fsub       dword ptr [esp + 0x28]                         // 0x005f92fe    d8642428
                         {disp8} fstp       dword ptr [esp + 0x64]                         // 0x005f9302    d95c2464
                         {disp8} fld        dword ptr [esp + 0x68]                         // 0x005f9306    d9442468
                         {disp8} fsub       dword ptr [esp + 0x2c]                         // 0x005f930a    d864242c
                         {disp8} fstp       dword ptr [esp + 0x68]                         // 0x005f930e    d95c2468
                         {disp8} fld        dword ptr [esp + 0x6c]                         // 0x005f9312    d944246c
                         fsub               st, st(1)                                      // 0x005f9316    d8e1
                         {disp8} fstp       dword ptr [esp + 0x6c]                         // 0x005f9318    d95c246c
                         fstp               st(0)                                          // 0x005f931c    ddd8
_jmp_addr_0x005f931e:    {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f931e    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x40]                         // 0x005f9322    d95c2440
                         {disp8} fld        dword ptr [esp + 0x44]                         // 0x005f9326    d9442444
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f932a    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x44]                         // 0x005f932e    d95c2444
                         {disp8} fld        dword ptr [esp + 0x48]                         // 0x005f9332    d9442448
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f9336    d84c2414
                         {disp8} fstp       dword ptr [esp + 0x48]                         // 0x005f933a    d95c2448
                         call               ?StartFrame@LH3DRender@@SAXXZ                  // 0x005f933e    e89d5d2300
                         {disp8} lea        edx, dword ptr [esp + 0x64]                    // 0x005f9343    8d542464
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                    // 0x005f9347    8d4c2440
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z     // 0x005f934b    e8d0052200
                         cmp                dword ptr [data_bytes + 0x272714], ebp         // 0x005f9350    392d1487c300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x371ca4]         // 0x005f9356    8b0da47cd300
                         mov.s              esi, ecx                                       // 0x005f935c    8bf1
                         {disp8} je         _jmp_addr_0x005f93b0                           // 0x005f935e    7450
                         cmp.s              ecx, ebp                                       // 0x005f9360    3bcd
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], ecx         // 0x005f9362    890d4ca6ec00
                         {disp8} je         _jmp_addr_0x005f93b0                           // 0x005f9368    7446
                         mov                eax, dword ptr [ecx]                           // 0x005f936a    8b01
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]         // 0x005f936c    8b3d18a6ec00
                         xor.s              edx, edx                                       // 0x005f9372    33d2
                         call               dword ptr [edi + eax*8]                        // 0x005f9374    ff14c7
                         cmp                dword ptr [data_bytes + 0x504614], ebp         // 0x005f9377    392d14a6ec00
                         {disp8} jne        _jmp_addr_0x005f938d                           // 0x005f937d    750e
                         test               byte ptr [esi + 0x05], 0x04                    // 0x005f937f    f6460504
                         {disp8} jne        _jmp_addr_0x005f938d                           // 0x005f9383    7508
                         push               ebp                                            // 0x005f9385    55
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z           // 0x005f9386    e8c56b2300
                         {disp8} jmp        _jmp_addr_0x005f9393                           // 0x005f938b    eb06
_jmp_addr_0x005f938d:    push               ebp                                            // 0x005f938d    55
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z            // 0x005f938e    e87d6b2300
_jmp_addr_0x005f9393:    xor.s              ecx, ecx                                       // 0x005f9393    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                      // 0x005f9395    8a4e05
                         not                cl                                             // 0x005f9398    f6d1
                         add                esp, 0x04                                      // 0x005f939a    83c404
                         and                ecx, 0x01                                      // 0x005f939d    83e101
                         shl                ecx, 1                                         // 0x005f93a0    d1e1
                         or                 ecx, 1                                         // 0x005f93a2    83c901
                         push               ecx                                            // 0x005f93a5    51
                         push               0x16                                           // 0x005f93a6    6a16
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                           // 0x005f93a8    e89395e1ff
                         add                esp, 0x08                                      // 0x005f93ad    83c408
_jmp_addr_0x005f93b0:    {disp32} mov       edx, dword ptr [data_bytes + 0x4bf058]         // 0x005f93b0    8b155850e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f93b6    8b0d884ad300
                         xor.s              eax, eax                                       // 0x005f93bc    33c0
                         {disp32} mov       ax, word ptr [data_bytes + 0x4bf05a]           // 0x005f93be    66a15a50e800
                         and                edx, 0x0000ffff                                // 0x005f93c4    81e2ffff0000
                         {disp8} mov        dword ptr [esp + 0x38], edx                    // 0x005f93ca    89542438
                         {disp8} fild       dword ptr [esp + 0x38]                         // 0x005f93ce    db442438
                         mov                edx, 0x00000001                                // 0x005f93d2    ba01000000
                         {disp8} fstp       dword ptr [esp + 0x1c]                         // 0x005f93d7    d95c241c
                         {disp8} mov        dword ptr [esp + 0x38], eax                    // 0x005f93db    89442438
                         {disp8} fild       dword ptr [esp + 0x38]                         // 0x005f93df    db442438
                         mov                eax, dword ptr [ecx]                           // 0x005f93e3    8b01
                         {disp8} fstp       dword ptr [esp + 0x38]                         // 0x005f93e5    d95c2438
                         call               dword ptr [eax + 0xa0]                         // 0x005f93e9    ff90a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f93ef    8b0d884ad300
                         mov                eax, dword ptr [ecx]                           // 0x005f93f5    8b01
                         mov                edx, 0x00000001                                // 0x005f93f7    ba01000000
                         call               dword ptr [eax + 0x48]                         // 0x005f93fc    ff5048
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f93ff    d905cc7cd300
                         {disp32} fsub      dword ptr [rdata_bytes + 0x14c90]              // 0x005f9405    d82590dc8b00
                         {disp8} fst        dword ptr [esp + 0x10]                         // 0x005f940b    d9542410
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f940f    d905cc7cd300
                         {disp32} fsub      dword ptr [rdata_bytes + 0x826f0]              // 0x005f9415    d825f0b69200
                         {disp32} fsubr     dword ptr [_rdata_float1p0]                    // 0x005f941b    d82d90a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                         // 0x005f9421    d95c2420
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f9425    d905cc7cd300
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x826f0]              // 0x005f942b    d81df0b69200
                         fnstsw             ax                                             // 0x005f9431    dfe0
                         test               ah, 0x41                                       // 0x005f9433    f6c441
                         {disp8} jne        _jmp_addr_0x005f943e                           // 0x005f9436    7506
                         {disp8} fld        dword ptr [esp + 0x20]                         // 0x005f9438    d9442420
                         {disp8} jmp        _jmp_addr_0x005f9442                           // 0x005f943c    eb04
_jmp_addr_0x005f943e:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f943e    d9442410
_jmp_addr_0x005f9442:    {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x005f9442    d81d98a38a00
                         fnstsw             ax                                             // 0x005f9448    dfe0
                         test               ah, 0x41                                       // 0x005f944a    f6c441
                         {disp8} jne        _jmp_addr_0x005f94a0                           // 0x005f944d    7551
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f944f    d905cc7cd300
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x826f0]              // 0x005f9455    d81df0b69200
                         fnstsw             ax                                             // 0x005f945b    dfe0
                         test               ah, 0x41                                       // 0x005f945d    f6c441
                         {disp8} jne        _jmp_addr_0x005f9468                           // 0x005f9460    7506
                         {disp8} fld        dword ptr [esp + 0x20]                         // 0x005f9462    d9442420
                         {disp8} jmp        _jmp_addr_0x005f946c                           // 0x005f9466    eb04
_jmp_addr_0x005f9468:    {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9468    d9442410
_jmp_addr_0x005f946c:    {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005f946c    d81d90a38a00
                         fnstsw             ax                                             // 0x005f9472    dfe0
                         test               ah, 0x01                                       // 0x005f9474    f6c401
                         {disp8} je         _jmp_addr_0x005f9496                           // 0x005f9477    741d
                         {disp32} fld       dword ptr [data_bytes + 0x371ccc]              // 0x005f9479    d905cc7cd300
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x826f0]              // 0x005f947f    d81df0b69200
                         fnstsw             ax                                             // 0x005f9485    dfe0
                         test               ah, 0x41                                       // 0x005f9487    f6c441
                         {disp8} jne        _jmp_addr_0x005f94a8                           // 0x005f948a    751c
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                    // 0x005f948c    8b4c2420
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x005f9490    894c2410
                         {disp8} jmp        _jmp_addr_0x005f94a8                           // 0x005f9494    eb12
_jmp_addr_0x005f9496:    {disp8} mov        dword ptr [esp + 0x10], 0x3f800000             // 0x005f9496    c74424100000803f
                         {disp8} jmp        _jmp_addr_0x005f94a8                           // 0x005f949e    eb08
_jmp_addr_0x005f94a0:    {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x005f94a0    c744241000000000
_jmp_addr_0x005f94a8:    {disp32} fmul      dword ptr [rdata_bytes + 0x1dca4]              // 0x005f94a8    d80da46c8c00
                         call               _jmp_addr_0x007a1400                           // 0x005f94ae    e84d7f1a00
                         mov.s              edx, eax                                       // 0x005f94b3    8bd0
                         cmp.s              edx, ebp                                       // 0x005f94b5    3bd5
                         {disp8} jle        _jmp_addr_0x005f94c8                           // 0x005f94b7    7e0f
                         cmp                edx, 0x000000be                                // 0x005f94b9    81fabe000000
                         {disp8} jl         _jmp_addr_0x005f94ca                           // 0x005f94bf    7c09
                         mov                edx, 0x000000be                                // 0x005f94c1    babe000000
                         {disp8} jmp        _jmp_addr_0x005f94ca                           // 0x005f94c6    eb02
_jmp_addr_0x005f94c8:    xor.s              edx, edx                                       // 0x005f94c8    33d2
_jmp_addr_0x005f94ca:    mov.s              eax, edx                                       // 0x005f94ca    8bc2
                         shl                eax, 8                                         // 0x005f94cc    c1e008
                         sub.s              eax, edx                                       // 0x005f94cf    2bc2
                         neg                eax                                            // 0x005f94d1    f7d8
                         mov.s              edi, eax                                       // 0x005f94d3    8bf8
                         mov.s              eax, edx                                       // 0x005f94d5    8bc2
                         shl                eax, 8                                         // 0x005f94d7    c1e008
                         sub.s              eax, edx                                       // 0x005f94da    2bc2
                         neg                eax                                            // 0x005f94dc    f7d8
                         shl                eax, 0x10                                      // 0x005f94de    c1e010
                         sar                eax, 8                                         // 0x005f94e1    c1f808
                         sub                eax, 0x00010000                                // 0x005f94e4    2d00000100
                         and                eax, 0x00ff0000                                // 0x005f94e9    250000ff00
                         sar                edi, 8                                         // 0x005f94ee    c1ff08
                         dec                edi                                            // 0x005f94f1    4f
                         and                edi, 0x000000ff                                // 0x005f94f2    81e7ff000000
                         or.s               edi, eax                                       // 0x005f94f8    0bf8
                         mov.s              eax, edx                                       // 0x005f94fa    8bc2
                         shl                eax, 8                                         // 0x005f94fc    c1e008
                         sub.s              eax, edx                                       // 0x005f94ff    2bc2
                         neg                eax                                            // 0x005f9501    f7d8
                         shl                eax, 8                                         // 0x005f9503    c1e008
                         sar                eax, 8                                         // 0x005f9506    c1f808
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f9509    8b0d884ad300
                         sub                eax, 0x00000100                                // 0x005f950f    2d00010000
                         and                eax, 0x0000ff00                                // 0x005f9514    2500ff0000
                         mov                esi, dword ptr [ecx]                           // 0x005f9519    8b31
                         or.s               edi, eax                                       // 0x005f951b    0bf8
                         lea                eax, dword ptr [edx + edx * 0x2]               // 0x005f951d    8d0452
                         shl                eax, 5                                         // 0x005f9520    c1e005
                         sub.s              eax, edx                                       // 0x005f9523    2bc2
                         cdq                                                               // 0x005f9525    99
                         and                edx, 0x000000ff                                // 0x005f9526    81e2ff000000
                         add.s              eax, edx                                       // 0x005f952c    03c2
                         sar                eax, 8                                         // 0x005f952e    c1f808
                         add                eax, 0x000000a0                                // 0x005f9531    05a0000000
                         shl                eax, 0x18                                      // 0x005f9536    c1e018
                         add.s              edi, eax                                       // 0x005f9539    03f8
                         push               ebp                                            // 0x005f953b    55
                         mov.s              edx, edi                                       // 0x005f953c    8bd7
                         call               dword ptr [esi + 0x2c]                         // 0x005f953e    ff562c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f9541    8b0d884ad300
                         mov                edx, dword ptr [ecx]                           // 0x005f9547    8b11
                         push               ebp                                            // 0x005f9549    55
                         push               ebp                                            // 0x005f954a    55
                         push               ebp                                            // 0x005f954b    55
                         call               dword ptr [edx + 0x24]                         // 0x005f954c    ff5224
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea88]         // 0x005f954f    8b0d884ad300
                         mov                eax, dword ptr [ecx]                           // 0x005f9555    8b01
                         call               dword ptr [eax + 0x108]                        // 0x005f9557    ff9008010000
                         push               ebp                                            // 0x005f955d    55
                         push               0x1                                            // 0x005f955e    6a01
                         push               ebp                                            // 0x005f9560    55
                         mov                ecx, 0x00e85204                                // 0x005f9561    b90452e800
                         call               @SetCursor__7LHMouseFPv19LH_MOUSE_IMAGE_TYPEi@20                           // 0x005f9566    e845be1e00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f956b    d9442414
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x005f956f    d80590a38a00
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x005f9575    d80d70b28a00
                         call               _jmp_addr_0x007a1400                           // 0x005f957b    e8807e1a00
                         cmp.s              eax, ebp                                       // 0x005f9580    3bc5
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x005f9582    89442420
                         {disp8} jle        _jmp_addr_0x005f9599                           // 0x005f9586    7e11
                         cmp                eax, 0x000000ff                                // 0x005f9588    3dff000000
                         {disp8} jl         _jmp_addr_0x005f959d                           // 0x005f958d    7c0e
                         {disp8} mov        dword ptr [esp + 0x20], 0x000000ff             // 0x005f958f    c7442420ff000000
                         {disp8} jmp        _jmp_addr_0x005f959d                           // 0x005f9597    eb04
_jmp_addr_0x005f9599:    {disp8} mov        dword ptr [esp + 0x20], ebp                    // 0x005f9599    896c2420
_jmp_addr_0x005f959d:    {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f959d    d9442414
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ece0]              // 0x005f95a1    d81de07c8c00
                         fnstsw             ax                                             // 0x005f95a7    dfe0
                         test               ah, 0x41                                       // 0x005f95a9    f6c441
                         {disp8} je         _jmp_addr_0x005f95b5                           // 0x005f95ac    7407
                         {disp32} mov       byte ptr [data_bytes + 0x371cc8], 0x01         // 0x005f95ae    c605c87cd30001
_jmp_addr_0x005f95b5:    {disp8} fld        dword ptr [esp + 0x18]                         // 0x005f95b5    d9442418
                         mov                ecx, 0x00e85204                                // 0x005f95b9    b90452e800
                         {disp8} fmul       dword ptr [esp + 0x18]                         // 0x005f95be    d84c2418
                         fld                st(0)                                          // 0x005f95c2    d9c0
                         fmulp              st(1), st                                      // 0x005f95c4    dec9
                         fld                st(0)                                          // 0x005f95c6    d9c0
                         fmul               st, st(1)                                      // 0x005f95c8    d8c9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826c4]              // 0x005f95ca    d80dc4b69200
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x005f95d0    d80590a38a00
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005f95d6    d95c2434
                         fstp               st(0)                                          // 0x005f95da    ddd8
                         call               ?DeltaPos@LHMouse@@QAEXXZ                      // 0x005f95dc    e82fb21e00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]         // 0x005f95e1    8b15c452e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2e4]         // 0x005f95e7    a1e452e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c0]         // 0x005f95ec    8b0dc052e800
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4bf300]         // 0x005f95f2    8b3d0053e800
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4bf2e8]         // 0x005f95f8    8b35e852e800
                         {disp8} mov        dword ptr [esp + 0x5c], edx                    // 0x005f95fe    8954245c
                         sub                eax, dword ptr [data_bytes + 0x371cb0]         // 0x005f9602    2b05b07cd300
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x005f9608    89442424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x005f960c    db442424
                         {disp8} mov        dword ptr [esp + 0x58], ecx                    // 0x005f9610    894c2458
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x005f9614    897c2418
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005f9618    d80d2cb28a00
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e4], ebp         // 0x005f961e    892de452e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e8], ebp         // 0x005f9624    892de852e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf300], ebp         // 0x005f962a    892d0053e800
                         {disp32} fiadd     dword ptr [data_bytes + 0x371cb0]              // 0x005f9630    da05b07cd300
                         call               _jmp_addr_0x007a1400                           // 0x005f9636    e8c57d1a00
                         sub                esi, dword ptr [data_bytes + 0x371cb4]         // 0x005f963b    2b35b47cd300
                         {disp8} mov        dword ptr [esp + 0x24], esi                    // 0x005f9641    89742424
                         {disp8} fild       dword ptr [esp + 0x24]                         // 0x005f9645    db442424
                         mov.s              ebx, eax                                       // 0x005f9649    8bd8
                         {disp32} mov       dword ptr [data_bytes + 0x371cb0], ebx         // 0x005f964b    891db07cd300
                         {disp32} fmul      dword ptr [__real@3dcccccd]                    // 0x005f9651    d80d2cb28a00
                         {disp32} fiadd     dword ptr [data_bytes + 0x371cb4]              // 0x005f9657    da05b47cd300
                         call               _jmp_addr_0x007a1400                           // 0x005f965d    e89e7d1a00
                         cmp                edi, 0xffffff10                                // 0x005f9662    81ff10ffffff
                         mov.s              ecx, eax                                       // 0x005f9668    8bc8
                         {disp32} mov       dword ptr [data_bytes + 0x371cb4], ecx         // 0x005f966a    890db47cd300
                         {disp8} jle        _jmp_addr_0x005f9684                           // 0x005f9670    7e12
                         cmp                edi, 0x000000f0                                // 0x005f9672    81fff0000000
                         {disp8} jl         _jmp_addr_0x005f968c                           // 0x005f9678    7c12
                         {disp8} mov        dword ptr [esp + 0x18], 0x000000f0             // 0x005f967a    c7442418f0000000
                         {disp8} jmp        _jmp_addr_0x005f968c                           // 0x005f9682    eb08
_jmp_addr_0x005f9684:    {disp8} mov        dword ptr [esp + 0x18], 0xffffff10             // 0x005f9684    c744241810ffffff
_jmp_addr_0x005f968c:    {disp8} fild       dword ptr [esp + 0x18]                         // 0x005f968c    db442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826c0]              // 0x005f9690    d80dc0b69200
                         fldl2e                                                            // 0x005f9696    d9ea
                         fmulp              st(1), st                                      // 0x005f9698    dec9
                         fld                st(0)                                          // 0x005f969a    d9c0
                         frndint                                                           // 0x005f969c    d9fc
                         fxch               st(1)                                          // 0x005f969e    d9c9
                         fsub               st, st(1)                                      // 0x005f96a0    d8e1
                         f2xm1                                                             // 0x005f96a2    d9f0
                         fld1                                                              // 0x005f96a4    d9e8
                         faddp              st(1), st                                      // 0x005f96a6    dec1
                         fscale                                                            // 0x005f96a8    d9fd
                         fstp               st(1)                                          // 0x005f96aa    ddd9
                         {disp32} fmul      dword ptr [data_bytes + 0x36ea8c]              // 0x005f96ac    d80d8c4ad300
                         {disp32} fst       dword ptr [data_bytes + 0x36ea8c]              // 0x005f96b2    d9158c4ad300
                         {disp32} fcomp     dword ptr [__real@3dcccccd]                    // 0x005f96b8    d81d2cb28a00
                         fnstsw             ax                                             // 0x005f96be    dfe0
                         test               ah, 0x41                                       // 0x005f96c0    f6c441
                         {disp8} jne        _jmp_addr_0x005f96e4                           // 0x005f96c3    751f
                         {disp32} fld       dword ptr [data_bytes + 0x36ea8c]              // 0x005f96c5    d9058c4ad300
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x005f96cb    d81d90a38a00
                         fnstsw             ax                                             // 0x005f96d1    dfe0
                         test               ah, 0x01                                       // 0x005f96d3    f6c401
                         {disp8} jne        _jmp_addr_0x005f96ee                           // 0x005f96d6    7516
                         {disp32} mov       dword ptr [data_bytes + 0x36ea8c], 0x3f800000  // 0x005f96d8    c7058c4ad3000000803f
                         {disp8} jmp        _jmp_addr_0x005f96ee                           // 0x005f96e2    eb0a
_jmp_addr_0x005f96e4:    {disp32} mov       dword ptr [data_bytes + 0x36ea8c], 0x3dcccccd  // 0x005f96e4    c7058c4ad300cdcccc3d
_jmp_addr_0x005f96ee:    cmp.s              ebx, ebp                                       // 0x005f96ee    3bdd
                         {disp32} fild      dword ptr [?g_delta_time@LH3DTech@@2MA]        // 0x005f96f0    db053481c300
                         fld                st(0)                                          // 0x005f96f6    d9c0
                         {disp32} fmul      dword ptr [_rdata_float0p001]                  // 0x005f96f8    d80db0a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x005f96fe    d95c2414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826bc]              // 0x005f9702    d80dbcb69200
                         fldl2e                                                            // 0x005f9708    d9ea
                         fmulp              st(1), st                                      // 0x005f970a    dec9
                         fld                st(0)                                          // 0x005f970c    d9c0
                         frndint                                                           // 0x005f970e    d9fc
                         fxch               st(1)                                          // 0x005f9710    d9c9
                         fsub               st, st(1)                                      // 0x005f9712    d8e1
                         f2xm1                                                             // 0x005f9714    d9f0
                         fld1                                                              // 0x005f9716    d9e8
                         faddp              st(1), st                                      // 0x005f9718    dec1
                         fscale                                                            // 0x005f971a    d9fd
                         fstp               st(1)                                          // 0x005f971c    ddd9
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x005f971e    d95c2418
                         {disp8} jne        _jmp_addr_0x005f972c                           // 0x005f9722    7508
                         cmp.s              ecx, ebp                                       // 0x005f9724    3bcd
                         {disp32} je        _jmp_addr_0x005f994c                           // 0x005f9726    0f8420020000
_jmp_addr_0x005f972c:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005f972c    8b0d5850e800
                         and                ecx, 0x0000ffff                                // 0x005f9732    81e1ffff0000
                         mov                eax, 0x66666667                                // 0x005f9738    b867666666
                         imul               ecx                                            // 0x005f973d    f7e9
                         sar                edx, 2                                         // 0x005f973f    c1fa02
                         mov.s              eax, edx                                       // 0x005f9742    8bc2
                         shr                eax, 0x1f                                      // 0x005f9744    c1e81f
                         add.s              edx, eax                                       // 0x005f9747    03d0
                         mov.s              ebp, edx                                       // 0x005f9749    8bea
                         xor.s              esi, esi                                       // 0x005f974b    33f6
                         {disp32} mov       dword ptr [esp + 0x000000ac], ebp              // 0x005f974d    89ac24ac000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40  // 0x005f9754    c705a09eea00409eea00
                         xor.s              ebx, ebx                                       // 0x005f975e    33db
_jmp_addr_0x005f9760:    {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f9760    a1984ad300
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a4]              // 0x005f9765    8d8c24a4000000
                         push               ecx                                            // 0x005f976c    51
                         {disp8} lea        edx, dword ptr [esp + 0x28]                    // 0x005f976d    8d542428
                         push               edx                                            // 0x005f9771    52
                         {disp8} lea        edx, dword ptr [esp + 0x78]                    // 0x005f9772    8d542478
                         lea                ecx, dword ptr [esi + eax * 0x1]               // 0x005f9776    8d0c06
                         call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z    // 0x005f9779    e812fc2100
                         cmp                eax, 0x02                                      // 0x005f977e    83f802
                         {disp32} jne       _jmp_addr_0x005f993a                           // 0x005f9781    0f85b3010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371cb0]         // 0x005f9787    a1b07cd300
                         mov                ecx, 0xffffffec                                // 0x005f978c    b9ecffffff
                         cmp.s              eax, ecx                                       // 0x005f9791    3bc1
                         {disp8} jle        _jmp_addr_0x005f97a6                           // 0x005f9793    7e11
                         cmp                eax, 0x14                                      // 0x005f9795    83f814
                         {disp8} jl         _jmp_addr_0x005f97ac                           // 0x005f9798    7c12
                         {disp32} mov       dword ptr [data_bytes + 0x371cb0], 0x00000014  // 0x005f979a    c705b07cd30014000000
                         {disp8} jmp        _jmp_addr_0x005f97ac                           // 0x005f97a4    eb06
_jmp_addr_0x005f97a6:    {disp32} mov       dword ptr [data_bytes + 0x371cb0], ecx         // 0x005f97a6    890db07cd300
_jmp_addr_0x005f97ac:    {disp32} mov       eax, dword ptr [data_bytes + 0x371cb4]         // 0x005f97ac    a1b47cd300
                         cmp.s              eax, ecx                                       // 0x005f97b1    3bc1
                         {disp8} jle        _jmp_addr_0x005f97c6                           // 0x005f97b3    7e11
                         cmp                eax, 0x14                                      // 0x005f97b5    83f814
                         {disp8} jl         _jmp_addr_0x005f97cc                           // 0x005f97b8    7c12
                         {disp32} mov       dword ptr [data_bytes + 0x371cb4], 0x00000014  // 0x005f97ba    c705b47cd30014000000
                         {disp8} jmp        _jmp_addr_0x005f97cc                           // 0x005f97c4    eb06
_jmp_addr_0x005f97c6:    {disp32} mov       dword ptr [data_bytes + 0x371cb4], ecx         // 0x005f97c6    890db47cd300
_jmp_addr_0x005f97cc:    {disp8} mov        edx, dword ptr [esp + 0x58]                    // 0x005f97cc    8b542458
                         {disp8} mov        edi, dword ptr [esp + 0x70]                    // 0x005f97d0    8b7c2470
                         sub.s              edi, edx                                       // 0x005f97d4    2bfa
                         mov.s              eax, edi                                       // 0x005f97d6    8bc7
                         cdq                                                               // 0x005f97d8    99
                         xor.s              eax, edx                                       // 0x005f97d9    33c2
                         sub.s              eax, edx                                       // 0x005f97db    2bc2
                         cmp.s              eax, ebp                                       // 0x005f97dd    3bc5
                         {disp32} jge       _jmp_addr_0x005f993a                           // 0x005f97df    0f8d55010000
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                    // 0x005f97e5    8b44245c
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                    // 0x005f97e9    8b4c2424
                         sub.s              ecx, eax                                       // 0x005f97ed    2bc8
                         mov.s              eax, ecx                                       // 0x005f97ef    8bc1
                         cdq                                                               // 0x005f97f1    99
                         xor.s              eax, edx                                       // 0x005f97f2    33c2
                         sub.s              eax, edx                                       // 0x005f97f4    2bc2
                         cmp.s              eax, ebp                                       // 0x005f97f6    3bc5
                         {disp32} jge       _jmp_addr_0x005f993a                           // 0x005f97f8    0f8d3c010000
                         mov.s              edx, ecx                                       // 0x005f97fe    8bd1
                         mov.s              eax, edi                                       // 0x005f9800    8bc7
                         imul               edx, ecx                                       // 0x005f9802    0fafd1
                         imul               eax, edi                                       // 0x005f9805    0fafc7
                         add.s              edx, eax                                       // 0x005f9808    03d0
                         {disp32} mov       dword ptr [esp + 0x000000a8], edx              // 0x005f980a    899424a8000000
                         {disp32} fild      dword ptr [esp + 0x000000a8]                   // 0x005f9811    db8424a8000000
                         fsqrt                                                             // 0x005f9818    d9fa
                         {disp32} fidiv     dword ptr [esp + 0x000000ac]                   // 0x005f981a    dab424ac000000
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]    // 0x005f9821    dc2d80b68a00
                         {disp32} fcom      dword ptr [_rdata_float0p0]                    // 0x005f9827    d81598a38a00
                         fnstsw             ax                                             // 0x005f982d    dfe0
                         test               ah, 0x41                                       // 0x005f982f    f6c441
                         {disp32} jne       _jmp_addr_0x005f9938                           // 0x005f9832    0f8500010000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]               // 0x005f9838    d80d18b48a00
                         {disp32} fild      dword ptr [data_bytes + 0x371cb0]              // 0x005f983e    db05b07cd300
                         fmul               st, st(1)                                      // 0x005f9844    d8c9
                         {disp8} fiadd      dword ptr [esp + 0x70]                         // 0x005f9846    da442470
                         call               _jmp_addr_0x007a1400                           // 0x005f984a    e8b17b1a00
                         {disp32} fild      dword ptr [data_bytes + 0x371cb4]              // 0x005f984f    db05b47cd300
                         {disp8} mov        dword ptr [esp + 0x4c], eax                    // 0x005f9855    8944244c
                         fmul               st, st(1)                                      // 0x005f9859    d8c9
                         {disp8} fiadd      dword ptr [esp + 0x24]                         // 0x005f985b    da442424
                         call               _jmp_addr_0x007a1400                           // 0x005f985f    e89c7b1a00
                         fstp               st(0)                                          // 0x005f9864    ddd8
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a4]              // 0x005f9866    8b8c24a4000000
                         push               ecx                                            // 0x005f986d    51
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                    // 0x005f986e    8d54242c
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                    // 0x005f9872    8d4c2450
                         {disp8} mov        dword ptr [esp + 0x54], eax                    // 0x005f9876    89442454
                         call               _jmp_addr_0x0081b370                           // 0x005f987a    e8f11a2200
                         {disp8} fld        dword ptr [esp + 0x28]                         // 0x005f987f    d9442428
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f9883    a1984ad300
                         fsub               dword ptr [esi + eax * 0x1]                    // 0x005f9888    d82406
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea90]         // 0x005f988b    8b15904ad300
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005f9891    d944242c
                         {disp8} fsub       dword ptr [esi + eax * 0x1 + 0x04]             // 0x005f9895    d8640604
                         {disp32} fstp      dword ptr [esp + 0x00000084]                   // 0x005f9899    d99c2484000000
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005f98a0    d9442430
                         {disp8} fsub       dword ptr [esi + eax * 0x1 + 0x08]             // 0x005f98a4    d8640608
                         lea                eax, dword ptr [ebx + edx * 0x1]               // 0x005f98a8    8d0413
                         {disp32} fstp      dword ptr [esp + 0x00000088]                   // 0x005f98ab    d99c2488000000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f98b2    d84c2414
                         {disp32} fld       dword ptr [esp + 0x00000084]                   // 0x005f98b6    d9842484000000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f98bd    d84c2414
                         {disp32} fstp      dword ptr [esp + 0x00000090]                   // 0x005f98c1    d99c2490000000
                         {disp32} fld       dword ptr [esp + 0x00000088]                   // 0x005f98c8    d9842488000000
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f98cf    d84c2414
                         {disp32} fstp      dword ptr [esp + 0x00000094]                   // 0x005f98d3    d99c2494000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]               // 0x005f98da    d80d1cb48a00
                         {disp32} fld       dword ptr [esp + 0x00000090]                   // 0x005f98e0    d9842490000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]               // 0x005f98e7    d80d1cb48a00
                         {disp8} fstp       dword ptr [esp + 0x78]                         // 0x005f98ed    d95c2478
                         {disp32} fld       dword ptr [esp + 0x00000094]                   // 0x005f98f1    d9842494000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]               // 0x005f98f8    d80d1cb48a00
                         {disp8} fstp       dword ptr [esp + 0x7c]                         // 0x005f98fe    d95c247c
                         fadd               dword ptr [eax]                                // 0x005f9902    d800
                         fstp               dword ptr [eax]                                // 0x005f9904    d918
                         {disp8} fld        dword ptr [esp + 0x78]                         // 0x005f9906    d9442478
                         {disp8} fadd       dword ptr [eax + 0x04]                         // 0x005f990a    d84004
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x005f990d    d95804
                         {disp8} fld        dword ptr [esp + 0x7c]                         // 0x005f9910    d944247c
                         {disp8} fadd       dword ptr [eax + 0x08]                         // 0x005f9914    d84008
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x005f9917    d95808
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f991a    a1984ad300
                         {disp8} mov        edx, dword ptr [esp + 0x28]                    // 0x005f991f    8b542428
                         lea                ecx, dword ptr [esi + eax * 0x1]               // 0x005f9923    8d0c06
                         mov                dword ptr [ecx], edx                           // 0x005f9926    8911
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                    // 0x005f9928    8b44242c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x005f992c    894104
                         {disp8} mov        edx, dword ptr [esp + 0x30]                    // 0x005f992f    8b542430
                         {disp8} mov        dword ptr [ecx + 0x08], edx                    // 0x005f9933    895108
                         {disp8} jmp        _jmp_addr_0x005f993a                           // 0x005f9936    eb02
_jmp_addr_0x005f9938:    fstp               st(0)                                          // 0x005f9938    ddd8
_jmp_addr_0x005f993a:    add                ebx, 0x0c                                      // 0x005f993a    83c30c
                         add                esi, 0x34                                      // 0x005f993d    83c634
                         cmp                ebx, 0x0000c000                                // 0x005f9940    81fb00c00000
                         {disp32} jl        _jmp_addr_0x005f9760                           // 0x005f9946    0f8c14feffff
_jmp_addr_0x005f994c:    {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x005f994c    8b5c2420
                         shl                ebx, 0x18                                      // 0x005f9950    c1e318
                         xor.s              edi, edi                                       // 0x005f9953    33ff
                         xor.s              ebp, ebp                                       // 0x005f9955    33ed
                         xor.s              esi, esi                                       // 0x005f9957    33f6
_jmp_addr_0x005f9959:    {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f9959    a1984ad300
                         fld                dword ptr [edi + eax * 0x1]                    // 0x005f995e    d90407
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea94]         // 0x005f9961    8b0d944ad300
                         fsub               dword ptr [esi + ecx * 0x1]                    // 0x005f9967    d8240e
                         {disp8} fld        dword ptr [edi + eax * 0x1 + 0x04]             // 0x005f996a    d9440704
                         {disp8} fsub       dword ptr [esi + ecx * 0x1 + 0x04]             // 0x005f996e    d8640e04
                         {disp8} fstp       dword ptr [esp + 0x78]                         // 0x005f9972    d95c2478
                         {disp8} fld        dword ptr [edi + eax * 0x1 + 0x08]             // 0x005f9976    d9440708
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea90]         // 0x005f997a    a1904ad300
                         {disp8} fsub       dword ptr [esi + ecx * 0x1 + 0x08]             // 0x005f997f    d8640e08
                         add.s              eax, esi                                       // 0x005f9983    03c6
                         {disp8} fstp       dword ptr [esp + 0x7c]                         // 0x005f9985    d95c247c
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f9989    d84c2414
                         {disp8} fld        dword ptr [esp + 0x78]                         // 0x005f998d    d9442478
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f9991    d84c2414
                         {disp32} fstp      dword ptr [esp + 0x00000090]                   // 0x005f9995    d99c2490000000
                         {disp8} fld        dword ptr [esp + 0x7c]                         // 0x005f999c    d944247c
                         {disp8} fmul       dword ptr [esp + 0x14]                         // 0x005f99a0    d84c2414
                         {disp32} fstp      dword ptr [esp + 0x00000094]                   // 0x005f99a4    d99c2494000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826b8]              // 0x005f99ab    d80db8b69200
                         {disp32} fld       dword ptr [esp + 0x00000090]                   // 0x005f99b1    d9842490000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826b8]              // 0x005f99b8    d80db8b69200
                         {disp32} fstp      dword ptr [esp + 0x00000084]                   // 0x005f99be    d99c2484000000
                         {disp32} fld       dword ptr [esp + 0x00000094]                   // 0x005f99c5    d9842494000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826b8]              // 0x005f99cc    d80db8b69200
                         {disp32} fstp      dword ptr [esp + 0x00000088]                   // 0x005f99d2    d99c2488000000
                         fld                dword ptr [eax]                                // 0x005f99d9    d900
                         fsub               st, st(1)                                      // 0x005f99db    d8e1
                         fstp               dword ptr [eax]                                // 0x005f99dd    d918
                         fstp               st(0)                                          // 0x005f99df    ddd8
                         {disp8} fld        dword ptr [eax + 0x04]                         // 0x005f99e1    d94004
                         {disp32} fsub      dword ptr [esp + 0x00000084]                   // 0x005f99e4    d8a42484000000
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x005f99eb    d95804
                         {disp8} fld        dword ptr [eax + 0x08]                         // 0x005f99ee    d94008
                         {disp32} fsub      dword ptr [esp + 0x00000088]                   // 0x005f99f1    d8a42488000000
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x005f99f8    d95808
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea90]         // 0x005f99fb    8b0d904ad300
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005f9a01    d9442418
                         lea                eax, dword ptr [esi + ecx * 0x1]               // 0x005f9a05    8d040e
                         fmul               dword ptr [eax]                                // 0x005f9a08    d808
                         fstp               dword ptr [eax]                                // 0x005f9a0a    d918
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005f9a0c    d9442418
                         {disp8} fmul       dword ptr [eax + 0x04]                         // 0x005f9a10    d84804
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x005f9a13    d95804
                         {disp8} fld        dword ptr [esp + 0x18]                         // 0x005f9a16    d9442418
                         {disp8} fmul       dword ptr [eax + 0x08]                         // 0x005f9a1a    d84808
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x005f9a1d    d95808
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea90]         // 0x005f9a20    a1904ad300
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9a25    d9442414
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f9a29    8b15984ad300
                         fmul               dword ptr [esi + eax * 0x1]                    // 0x005f9a2f    d80c06
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9a32    d9442414
                         {disp8} fmul       dword ptr [esi + eax * 0x1 + 0x04]             // 0x005f9a36    d84c0604
                         {disp8} fstp       dword ptr [esp + 0x2c]                         // 0x005f9a3a    d95c242c
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9a3e    d9442414
                         {disp8} fmul       dword ptr [esi + eax * 0x1 + 0x08]             // 0x005f9a42    d84c0608
                         lea                eax, dword ptr [edi + edx * 0x1]               // 0x005f9a46    8d0417
                         {disp8} fstp       dword ptr [esp + 0x30]                         // 0x005f9a49    d95c2430
                         fadd               dword ptr [eax]                                // 0x005f9a4d    d800
                         fstp               dword ptr [eax]                                // 0x005f9a4f    d918
                         {disp8} fld        dword ptr [esp + 0x2c]                         // 0x005f9a51    d944242c
                         {disp8} fadd       dword ptr [eax + 0x04]                         // 0x005f9a55    d84004
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x005f9a58    d95804
                         {disp8} fld        dword ptr [esp + 0x30]                         // 0x005f9a5b    d9442430
                         {disp8} fadd       dword ptr [eax + 0x08]                         // 0x005f9a5f    d84008
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x005f9a62    d95808
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f9a65    a1984ad300
                         {disp8} mov        ecx, dword ptr [edi + eax * 0x1 + 0x20]        // 0x005f9a6a    8b4c0720
                         and                ecx, 0x00ffffff                                // 0x005f9a6e    81e1ffffff00
                         {disp8} fld        dword ptr [esp + 0x34]                         // 0x005f9a74    d9442434
                         add.s              ecx, ebx                                       // 0x005f9a78    03cb
                         {disp8} mov        dword ptr [edi + eax * 0x1 + 0x20], ecx        // 0x005f9a7a    894c0720
                         {disp32} mov       edx, dword ptr [data_bytes + 0x371c9c]         // 0x005f9a7e    8b159c7cd300
                         fmul               dword ptr [edx + ebp * 0x1]                    // 0x005f9a84    d80c2a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea98]         // 0x005f9a87    a1984ad300
                         lea                ecx, dword ptr [edi + eax * 0x1]               // 0x005f9a8c    8d0c07
                         {disp32} fcom      dword ptr [rdata_bytes + 0x16518]              // 0x005f9a8f    d81518f58b00
                         fnstsw             ax                                             // 0x005f9a95    dfe0
                         test               ah, 0x01                                       // 0x005f9a97    f6c401
                         {disp8} je         _jmp_addr_0x005f9aa4                           // 0x005f9a9a    7408
                         fstp               st(0)                                          // 0x005f9a9c    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]              // 0x005f9a9e    d90518f58b00
_jmp_addr_0x005f9aa4:    fld                st(0)                                          // 0x005f9aa4    d9c0
                         push               0x40c90fdb                                     // 0x005f9aa6    68db0fc940
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                         // 0x005f9aab    d8710c
                         push               0x0                                            // 0x005f9aae    6a00
                         fld                st(0)                                          // 0x005f9ab0    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                         // 0x005f9ab2    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                         // 0x005f9ab5    d95918
                         {disp8} fmul       dword ptr [ecx + 0x1c]                         // 0x005f9ab8    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                         // 0x005f9abb    d9591c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                         // 0x005f9abe    d9590c
                         call               _Random__Fff@8                                 // 0x005f9ac1    e8ba362200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea98]         // 0x005f9ac6    8b0d984ad300
                         {disp8} fstp       dword ptr [edi + ecx * 0x1 + 0x14]             // 0x005f9acc    d95c0f14
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea98]         // 0x005f9ad0    8b15984ad300
                         lea                ecx, dword ptr [edi + edx * 0x1]               // 0x005f9ad6    8d0c17
                         call               ?Draw@LH3DSprite@@QAEXXZ                       // 0x005f9ad9    e8526a2400
                         add                esi, 0x0c                                      // 0x005f9ade    83c60c
                         add                ebp, 0x04                                      // 0x005f9ae1    83c504
                         add                edi, 0x34                                      // 0x005f9ae4    83c734
                         cmp                esi, 0x0000c000                                // 0x005f9ae7    81fe00c00000
                         {disp32} jl        _jmp_addr_0x005f9959                           // 0x005f9aed    0f8c66feffff
                         {disp32} mov       esi, dword ptr [data_bytes + 0x506d08]         // 0x005f9af3    8b3508cdec00
                         push               0x00d37a9c                                     // 0x005f9af9    689c7ad300
                         call               _wcslen                                        // 0x005f9afe    e85fc91c00
                         {disp8} fld        dword ptr [esp + 0x3c]                         // 0x005f9b03    d944243c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ebd4]              // 0x005f9b07    d80dd47b8c00
                         add                esp, 0x04                                      // 0x005f9b0d    83c404
                         mov.s              ecx, esi                                       // 0x005f9b10    8bce
                         {disp8} fstp       dword ptr [esp + 0x34]                         // 0x005f9b12    d95c2434
                         {disp8} mov        edi, dword ptr [esp + 0x34]                    // 0x005f9b16    8b7c2434
                         push               edi                                            // 0x005f9b1a    57
                         push               eax                                            // 0x005f9b1b    50
                         push               0x00d37a9c                                     // 0x005f9b1c    689c7ad300
                         call               @GetStringWidth__13GatheringTextFPwif@20       // 0x005f9b21    e80a762300
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9b26    d9442410
                         {disp32} fmul      dword ptr [__real@437f0000]                    // 0x005f9b2a    d80d70b28a00
                         {disp8} mov        byte ptr [esp + 0x18], -0x01                   // 0x005f9b30    c6442418ff
                         {disp8} mov        byte ptr [esp + 0x19], -0x01                   // 0x005f9b35    c6442419ff
                         {disp8} mov        byte ptr [esp + 0x1a], -0x01                   // 0x005f9b3a    c644241aff
                         {disp8} fst        dword ptr [esp + 0x24]                         // 0x005f9b3f    d9542424
                         call               _jmp_addr_0x007a1400                           // 0x005f9b43    e8b8781a00
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x005f9b48    d9442438
                         push               0x45800000                                     // 0x005f9b4c    6800008045
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2fbcc]              // 0x005f9b51    d80dcc8b8d00
                         push               0x0                                            // 0x005f9b57    6a00
                         push               0x0                                            // 0x005f9b59    6a00
                         push               0x0                                            // 0x005f9b5b    6a00
                         {disp8} mov        byte ptr [esp + 0x2b], al                      // 0x005f9b5d    8844242b
                         {disp8} lea        eax, dword ptr [esp + 0x28]                    // 0x005f9b61    8d442428
                         push               eax                                            // 0x005f9b65    50
                         push               edi                                            // 0x005f9b66    57
                         push               0x41200000                                     // 0x005f9b67    6800002041
                         push               ecx                                            // 0x005f9b6c    51
                         fstp               dword ptr [esp]                                // 0x005f9b6d    d91c24
                         push               ecx                                            // 0x005f9b70    51
                         {disp8} fld        dword ptr [esp + 0x40]                         // 0x005f9b71    d9442440
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005f9b75    d80db4a38a00
                         fxch               st(1)                                          // 0x005f9b7b    d9c9
                         {disp32} fmul      dword ptr [_rdata_float0p5]                    // 0x005f9b7d    d80db4a38a00
                         fsubp              st(1), st                                      // 0x005f9b83    dee9
                         fstp               dword ptr [esp]                                // 0x005f9b85    d91c24
                         push               0x00d37a9c                                     // 0x005f9b88    689c7ad300
                         call               _wcslen                                        // 0x005f9b8d    e8d0c81c00
                         add                esp, 0x04                                      // 0x005f9b92    83c404
                         push               eax                                            // 0x005f9b95    50
                         push               0x00d37a9c                                     // 0x005f9b96    689c7ad300
                         mov.s              ecx, esi                                       // 0x005f9b9b    8bce
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                           // 0x005f9b9d    e8be902300
                         {disp8} fld        dword ptr [esp + 0x24]                         // 0x005f9ba2    d9442424
                         call               _jmp_addr_0x007a1400                           // 0x005f9ba6    e855781a00
                         test               eax, eax                                       // 0x005f9bab    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x2078], eax           // 0x005f9bad    a378809c00
                         {disp32} jle       _jmp_addr_0x005f9fbf                           // 0x005f9bb2    0f8e07040000
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bda30]           // 0x005f9bb8    a0303ae800
                         test               al, al                                         // 0x005f9bbd    84c0
                         {disp32} je        _jmp_addr_0x005f9da2                           // 0x005f9bbf    0f84dd010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x271c00]         // 0x005f9bc5    a1007cc300
                         test               eax, eax                                       // 0x005f9bca    85c0
                         {disp32} je        _jmp_addr_0x005f9da2                           // 0x005f9bcc    0f84d0010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005f9bd2    8b0d5850e800
                         and                ecx, 0x0000ffff                                // 0x005f9bd8    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005f9bde    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005f9be2    db44241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826b4]              // 0x005f9be6    d80db4b69200
                         {disp8} fst        dword ptr [esp + 0x14]                         // 0x005f9bec    d9542414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e658]              // 0x005f9bf0    d80d58768c00
                         fld                st(0)                                          // 0x005f9bf6    d9c0
                         call               _jmp_addr_0x007a1400                           // 0x005f9bf8    e803781a00
                         xor.s              edx, edx                                       // 0x005f9bfd    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]           // 0x005f9bff    668b155a50e800
                         mov.s              esi, eax                                       // 0x005f9c06    8bf0
                         {disp8} mov        dword ptr [esp + 0x34], esi                    // 0x005f9c08    89742434
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x005f9c0c    8954241c
                         fisubr             dword ptr [esp + 0x1c]                         // 0x005f9c10    da6c241c
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9c14    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826b0]              // 0x005f9c18    d80db0b69200
                         fsubr              st, st(1)                                      // 0x005f9c1e    d8e9
                         call               _jmp_addr_0x007a1400                           // 0x005f9c20    e8db771a00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9c25    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826ac]              // 0x005f9c29    d80dacb69200
                         mov.s              edi, eax                                       // 0x005f9c2f    8bf8
                         {disp8} fiadd      dword ptr [esp + 0x34]                         // 0x005f9c31    da442434
                         call               _jmp_addr_0x007a1400                           // 0x005f9c35    e8c6771a00
                         mov.s              ebp, eax                                       // 0x005f9c3a    8be8
                         call               _jmp_addr_0x007a1400                           // 0x005f9c3c    e8bf771a00
                         push               0x0                                            // 0x005f9c41    6a00
                         push               0x0                                            // 0x005f9c43    6a00
                         push               0x80808080                                     // 0x005f9c45    6880808080
                         push               0x80808080                                     // 0x005f9c4a    6880808080
                         push               0x80808080                                     // 0x005f9c4f    6880808080
                         push               0x80808080                                     // 0x005f9c54    6880808080
                         mov.s              ebx, eax                                       // 0x005f9c59    8bd8
                         push               ebx                                            // 0x005f9c5b    53
                         push               ebp                                            // 0x005f9c5c    55
                         push               edi                                            // 0x005f9c5d    57
                         push               esi                                            // 0x005f9c5e    56
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z           // 0x005f9c5f    e85c96e1ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbaa4]         // 0x005f9c64    8b0da41aea00
                         push               0x42c80000                                     // 0x005f9c6a    680000c842
                         push               0x0                                            // 0x005f9c6f    6a00
                         push               0x0000a000                                     // 0x005f9c71    6800a00000
                         push               0xffff6000                                     // 0x005f9c76    680060ffff
                         push               0x0                                            // 0x005f9c7b    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                    // 0x005f9c7d    8d44244c
                         push               eax                                            // 0x005f9c81    50
                         push               ecx                                            // 0x005f9c82    51
                         push               0x3f800000                                     // 0x005f9c83    680000803f
                         push               0x3f800000                                     // 0x005f9c88    680000803f
                         push               0x0                                            // 0x005f9c8d    6a00
                         push               0x0                                            // 0x005f9c8f    6a00
                         push               ebx                                            // 0x005f9c91    53
                         push               ebp                                            // 0x005f9c92    55
                         push               edi                                            // 0x005f9c93    57
                         push               esi                                            // 0x005f9c94    56
                         {disp8} mov        byte ptr [esp + 0x74], -0x01                   // 0x005f9c95    c6442474ff
                         {disp8} mov        byte ptr [esp + 0x75], -0x01                   // 0x005f9c9a    c6442475ff
                         {disp8} mov        byte ptr [esp + 0x76], -0x01                   // 0x005f9c9f    c6442476ff
                         {disp8} mov        byte ptr [esp + 0x77], -0x01                   // 0x005f9ca4    c6442477ff
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                  // 0x005f9ca9    e8d28ce1ff
                         {disp8} fld        dword ptr [esp + 0x78]                         // 0x005f9cae    d9442478
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826a8]              // 0x005f9cb2    d80da8b69200
                         add                esp, 0x64                                      // 0x005f9cb8    83c464
                         call               _jmp_addr_0x007a1400                           // 0x005f9cbb    e840771a00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9cc0    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826a4]              // 0x005f9cc4    d80da4b69200
                         mov.s              esi, eax                                       // 0x005f9cca    8bf0
                         call               _jmp_addr_0x007a1400                           // 0x005f9ccc    e82f771a00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9cd1    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x826a0]              // 0x005f9cd5    d80da0b69200
                         mov.s              edi, eax                                       // 0x005f9cdb    8bf8
                         call               _jmp_addr_0x007a1400                           // 0x005f9cdd    e81e771a00
                         {disp8} fld        dword ptr [esp + 0x14]                         // 0x005f9ce2    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x8269c]              // 0x005f9ce6    d80d9cb69200
                         mov.s              ebx, eax                                       // 0x005f9cec    8bd8
                         call               _jmp_addr_0x007a1400                           // 0x005f9cee    e80d771a00
                         mov.s              ebp, eax                                       // 0x005f9cf3    8be8
                         {disp8} mov        byte ptr [esp + 0x10], 0x00                    // 0x005f9cf5    c644241000
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                    // 0x005f9cfa    c644241100
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                    // 0x005f9cff    c644241200
                         {disp8} mov        byte ptr [esp + 0x13], -0x01                   // 0x005f9d04    c6442413ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaac]         // 0x005f9d09    a1ac1aea00
                         push               0x42c80000                                     // 0x005f9d0e    680000c842
                         push               0x0                                            // 0x005f9d13    6a00
                         push               0x0000a000                                     // 0x005f9d15    6800a00000
                         push               0xffff6000                                     // 0x005f9d1a    680060ffff
                         push               0x0                                            // 0x005f9d1f    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x24]                    // 0x005f9d21    8d542424
                         push               edx                                            // 0x005f9d25    52
                         push               eax                                            // 0x005f9d26    50
                         push               0x3f800000                                     // 0x005f9d27    680000803f
                         push               0x3f800000                                     // 0x005f9d2c    680000803f
                         push               0x0                                            // 0x005f9d31    6a00
                         push               0x0                                            // 0x005f9d33    6a00
                         {disp8} lea        ecx, dword ptr [ebp + 0x01]                    // 0x005f9d35    8d4d01
                         push               ecx                                            // 0x005f9d38    51
                         {disp8} lea        edx, dword ptr [ebx + 0x01]                    // 0x005f9d39    8d5301
                         push               edx                                            // 0x005f9d3c    52
                         {disp8} lea        eax, dword ptr [edi + 0x01]                    // 0x005f9d3d    8d4701
                         push               eax                                            // 0x005f9d40    50
                         {disp8} lea        ecx, dword ptr [esi + 0x01]                    // 0x005f9d41    8d4e01
                         push               ecx                                            // 0x005f9d44    51
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                  // 0x005f9d45    e8368ce1ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaac]         // 0x005f9d4a    a1ac1aea00
                         push               0x42c80000                                     // 0x005f9d4f    680000c842
                         push               0x0                                            // 0x005f9d54    6a00
                         push               0x0000a000                                     // 0x005f9d56    6800a00000
                         push               0xffff6000                                     // 0x005f9d5b    680060ffff
                         push               0x0                                            // 0x005f9d60    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x60]                    // 0x005f9d62    8d542460
                         push               edx                                            // 0x005f9d66    52
                         push               eax                                            // 0x005f9d67    50
                         push               0x3f800000                                     // 0x005f9d68    680000803f
                         push               0x3f800000                                     // 0x005f9d6d    680000803f
                         push               0x0                                            // 0x005f9d72    6a00
                         push               0x0                                            // 0x005f9d74    6a00
                         push               ebp                                            // 0x005f9d76    55
                         push               ebx                                            // 0x005f9d77    53
                         push               edi                                            // 0x005f9d78    57
                         push               esi                                            // 0x005f9d79    56
                         {disp32} mov       byte ptr [esp + 0x00000088], -0x01             // 0x005f9d7a    c6842488000000ff
                         {disp32} mov       byte ptr [esp + 0x00000089], -0x01             // 0x005f9d82    c6842489000000ff
                         {disp32} mov       byte ptr [esp + 0x0000008a], -0x01             // 0x005f9d8a    c684248a000000ff
                         {disp32} mov       byte ptr [esp + 0x0000008b], -0x01             // 0x005f9d92    c684248b000000ff
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                  // 0x005f9d9a    e8e18be1ff
                         add                esp, 0x78                                      // 0x005f9d9f    83c478
_jmp_addr_0x005f9da2:    {disp32} mov       eax, dword ptr [data_bytes + 0x5132dc]         // 0x005f9da2    a1dc92ed00
                         test               eax, eax                                       // 0x005f9da7    85c0
                         {disp32} je        _jmp_addr_0x005f9f03                           // 0x005f9da9    0f8454010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x352588]         // 0x005f9daf    a18885d100
                         test               eax, eax                                       // 0x005f9db4    85c0
                         {disp32} je        _jmp_addr_0x005f9f03                           // 0x005f9db6    0f8447010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x371cd4]         // 0x005f9dbc    a1d47cd300
                         test               eax, eax                                       // 0x005f9dc1    85c0
                         {disp8} jne        _jmp_addr_0x005f9dde                           // 0x005f9dc3    7519
                         push               0x80000000                                     // 0x005f9dc5    6800000080
                         push               0x10                                           // 0x005f9dca    6a10
                         {disp32} mov       dword ptr [data_bytes + 0x371cd4], 0x00000001  // 0x005f9dcc    c705d47cd30001000000
                         call               _jmp_addr_0x005d89f0                           // 0x005f9dd6    e815ecfdff
                         add                esp, 0x08                                      // 0x005f9ddb    83c408
_jmp_addr_0x005f9dde:    {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005f9dde    8b0d5850e800
                         and                ecx, 0x0000ffff                                // 0x005f9de4    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x005f9dea    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005f9dee    db44241c
                         xor.s              edx, edx                                       // 0x005f9df2    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]           // 0x005f9df4    668b155a50e800
                         fld                st(0)                                          // 0x005f9dfb    d9c0
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82698]              // 0x005f9dfd    d80d98b69200
                         {disp8} fstp       dword ptr [esp + 0x10]                         // 0x005f9e03    d95c2410
                         {disp8} mov        dword ptr [esp + 0x1c], edx                    // 0x005f9e07    8954241c
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005f9e0b    db44241c
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9e0f    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26300]              // 0x005f9e13    d80d00f38c00
                         fsubp              st(1), st                                      // 0x005f9e19    dee9
                         call               _jmp_addr_0x007a1400                           // 0x005f9e1b    e8e0751a00
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9e20    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82694]              // 0x005f9e24    d80d94b69200
                         {disp8} mov        dword ptr [esp + 0x1c], eax                    // 0x005f9e2a    8944241c
                         fsubr              st, st(1)                                      // 0x005f9e2e    d8e9
                         call               _jmp_addr_0x007a1400                           // 0x005f9e30    e8cb751a00
                         fstp               st(0)                                          // 0x005f9e35    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9e37    d9442410
                         {disp8} mov        dword ptr [esp + 0x34], eax                    // 0x005f9e3b    89442434
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26134]              // 0x005f9e3f    d80d34f18c00
                         {disp8} fild       dword ptr [esp + 0x1c]                         // 0x005f9e45    db44241c
                         fld                st(0)                                          // 0x005f9e49    d9c0
                         fadd               st, st(2)                                      // 0x005f9e4b    d8c2
                         call               _jmp_addr_0x007a1400                           // 0x005f9e4d    e8ae751a00
                         {disp8} fld        dword ptr [esp + 0x10]                         // 0x005f9e52    d9442410
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82690]              // 0x005f9e56    d80d90b69200
                         mov.s              esi, eax                                       // 0x005f9e5c    8bf0
                         {disp8} fstp       dword ptr [esp + 0x24]                         // 0x005f9e5e    d95c2424
                         {disp8} fild       dword ptr [esp + 0x34]                         // 0x005f9e62    db442434
                         {disp8} fst        dword ptr [esp + 0x38]                         // 0x005f9e66    d9542438
                         {disp8} fadd       dword ptr [esp + 0x24]                         // 0x005f9e6a    d8442424
                         call               _jmp_addr_0x007a1400                           // 0x005f9e6e    e88d751a00
                         fsub               st, st(1)                                      // 0x005f9e73    d8e1
                         mov.s              edi, eax                                       // 0x005f9e75    8bf8
                         call               _jmp_addr_0x007a1400                           // 0x005f9e77    e884751a00
                         fstp               st(0)                                          // 0x005f9e7c    ddd8
                         {disp8} fld        dword ptr [esp + 0x38]                         // 0x005f9e7e    d9442438
                         mov.s              ebx, eax                                       // 0x005f9e82    8bd8
                         {disp8} fsub       dword ptr [esp + 0x24]                         // 0x005f9e84    d8642424
                         call               _jmp_addr_0x007a1400                           // 0x005f9e88    e873751a00
                         push               0x0                                            // 0x005f9e8d    6a00
                         push               0x0                                            // 0x005f9e8f    6a00
                         push               0x80808080                                     // 0x005f9e91    6880808080
                         push               0x80808080                                     // 0x005f9e96    6880808080
                         push               0x80808080                                     // 0x005f9e9b    6880808080
                         push               0x80808080                                     // 0x005f9ea0    6880808080
                         push               esi                                            // 0x005f9ea5    56
                         push               edi                                            // 0x005f9ea6    57
                         mov.s              ebp, eax                                       // 0x005f9ea7    8be8
                         push               ebx                                            // 0x005f9ea9    53
                         push               ebp                                            // 0x005f9eaa    55
                         call               ?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z           // 0x005f9eab    e81094e1ff
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5132dc]         // 0x005f9eb0    8b0ddc92ed00
                         push               0x42c80000                                     // 0x005f9eb6    680000c842
                         push               0x0                                            // 0x005f9ebb    6a00
                         push               0x0000a000                                     // 0x005f9ebd    6800a00000
                         push               0xffff6000                                     // 0x005f9ec2    680060ffff
                         push               0x0                                            // 0x005f9ec7    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x4c]                    // 0x005f9ec9    8d44244c
                         push               eax                                            // 0x005f9ecd    50
                         push               ecx                                            // 0x005f9ece    51
                         push               0x3f800000                                     // 0x005f9ecf    680000803f
                         push               0x3f800000                                     // 0x005f9ed4    680000803f
                         push               0x3f400000                                     // 0x005f9ed9    680000403f
                         push               0x3e800000                                     // 0x005f9ede    680000803e
                         push               esi                                            // 0x005f9ee3    56
                         push               edi                                            // 0x005f9ee4    57
                         push               ebx                                            // 0x005f9ee5    53
                         push               ebp                                            // 0x005f9ee6    55
                         {disp8} mov        byte ptr [esp + 0x74], -0x01                   // 0x005f9ee7    c6442474ff
                         {disp8} mov        byte ptr [esp + 0x75], -0x01                   // 0x005f9eec    c6442475ff
                         {disp8} mov        byte ptr [esp + 0x76], -0x01                   // 0x005f9ef1    c6442476ff
                         {disp8} mov        byte ptr [esp + 0x77], -0x01                   // 0x005f9ef6    c6442477ff
                         call               ?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z                  // 0x005f9efb    e8808ae1ff
                         add                esp, 0x64                                      // 0x005f9f00    83c464
_jmp_addr_0x005f9f03:    {disp32} mov       al, byte ptr [data_bytes + 0x371cd0]           // 0x005f9f03    a0d07cd300
                         test               al, al                                         // 0x005f9f08    84c0
                         {disp32} je        _jmp_addr_0x005f9fbf                           // 0x005f9f0a    0f84af000000
                         {disp8} mov        dl, byte ptr [esp + 0x20]                      // 0x005f9f10    8a542420
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]         // 0x005f9f14    8b0d5850e800
                         push               0x45800000                                     // 0x005f9f1a    6800008045
                         push               0x0                                            // 0x005f9f1f    6a00
                         mov                al, -0x38                                      // 0x005f9f21    b0c8
                         push               0x0                                            // 0x005f9f23    6a00
                         {disp8} mov        byte ptr [esp + 0x1c], al                      // 0x005f9f25    8844241c
                         {disp8} mov        byte ptr [esp + 0x1d], al                      // 0x005f9f29    8844241d
                         {disp8} mov        byte ptr [esp + 0x1e], al                      // 0x005f9f2d    8844241e
                         {disp8} mov        byte ptr [esp + 0x1f], dl                      // 0x005f9f31    8854241f
                         and                ecx, 0x0000ffff                                // 0x005f9f35    81e1ffff0000
                         push               0x0                                            // 0x005f9f3b    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x20]                    // 0x005f9f3d    8d442420
                         push               eax                                            // 0x005f9f41    50
                         mov                eax, 0xea0ea0eb                                // 0x005f9f42    b8eba00eea
                         imul               ecx                                            // 0x005f9f47    f7e9
                         add.s              edx, ecx                                       // 0x005f9f49    03d1
                         sar                edx, 6                                         // 0x005f9f4b    c1fa06
                         {disp8} mov        dword ptr [esp + 0x48], ecx                    // 0x005f9f4e    894c2448
                         mov.s              ecx, edx                                       // 0x005f9f52    8bca
                         shr                ecx, 0x1f                                      // 0x005f9f54    c1e91f
                         add.s              edx, ecx                                       // 0x005f9f57    03d1
                         {disp8} mov        dword ptr [esp + 0x30], edx                    // 0x005f9f59    89542430
                         xor.s              edx, edx                                       // 0x005f9f5d    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]           // 0x005f9f5f    668b155a50e800
                         {disp8} fild       dword ptr [esp + 0x30]                         // 0x005f9f66    db442430
                         push               ecx                                            // 0x005f9f6a    51
                         fstp               dword ptr [esp]                                // 0x005f9f6b    d91c24
                         push               0x41200000                                     // 0x005f9f6e    6800002041
                         {disp8} mov        dword ptr [esp + 0x38], edx                    // 0x005f9f73    89542438
                         {disp8} fild       dword ptr [esp + 0x38]                         // 0x005f9f77    db442438
                         {disp32} fmul      qword ptr [rdata_bytes + 0x82688]              // 0x005f9f7b    dc0d88b69200
                         call               _jmp_addr_0x007a1400                           // 0x005f9f81    e87a741a00
                         {disp8} mov        dword ptr [esp + 0x38], eax                    // 0x005f9f86    89442438
                         {disp8} fild       dword ptr [esp + 0x38]                         // 0x005f9f8a    db442438
                         push               ecx                                            // 0x005f9f8e    51
                         fstp               dword ptr [esp]                                // 0x005f9f8f    d91c24
                         {disp8} fild       dword ptr [esp + 0x54]                         // 0x005f9f92    db442454
                         {disp32} fmul      qword ptr [rdata_bytes + 0x82680]              // 0x005f9f96    dc0d80b69200
                         call               _jmp_addr_0x007a1400                           // 0x005f9f9c    e85f741a00
                         {disp8} mov        dword ptr [esp + 0x3c], eax                    // 0x005f9fa1    8944243c
                         {disp8} fild       dword ptr [esp + 0x3c]                         // 0x005f9fa5    db44243c
                         push               ecx                                            // 0x005f9fa9    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x506d08]         // 0x005f9faa    8b0d08cdec00
                         fstp               dword ptr [esp]                                // 0x005f9fb0    d91c24
                         push               0x2                                            // 0x005f9fb3    6a02
                         push               0x00bf3d4c                                     // 0x005f9fb5    684c3dbf00
                         call               @DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff@52                           // 0x005f9fba    e8a18c2300
_jmp_addr_0x005f9fbf:    {disp32} mov       byte ptr [data_bytes + 0x2726d0], 0x00         // 0x005f9fbf    c605d086c30000
                         call               ?FinishFrame@LH3DRender@@QAEXXZ                // 0x005f9fc6    e895542300
                         push               0x1                                            // 0x005f9fcb    6a01
                         mov                ecx, 0x00e85050                                // 0x005f9fcd    b95050e800
                         call               _jmp_addr_0x007de090                           // 0x005f9fd2    e8b9401e00
_jmp_addr_0x005f9fd7:    pop                edi                                            // 0x005f9fd7    5f
                         pop                esi                                            // 0x005f9fd8    5e
                         pop                ebp                                            // 0x005f9fd9    5d
                         pop                ebx                                            // 0x005f9fda    5b
                         add                esp, 0x000001a0                                // 0x005f9fdb    81c4a0010000
                         ret                                                               // 0x005f9fe1    c3
                         nop                                                               // 0x005f9fe2    90
                         nop                                                               // 0x005f9fe3    90
                         nop                                                               // 0x005f9fe4    90
                         nop                                                               // 0x005f9fe5    90
                         nop                                                               // 0x005f9fe6    90
                         nop                                                               // 0x005f9fe7    90
                         nop                                                               // 0x005f9fe8    90
                         nop                                                               // 0x005f9fe9    90
                         nop                                                               // 0x005f9fea    90
                         nop                                                               // 0x005f9feb    90
                         nop                                                               // 0x005f9fec    90
                         nop                                                               // 0x005f9fed    90
                         nop                                                               // 0x005f9fee    90
                         nop                                                               // 0x005f9fef    90
                         ret                                                               // 0x005f9ff0    c3
                         nop                                                               // 0x005f9ff1    90
                         nop                                                               // 0x005f9ff2    90
                         nop                                                               // 0x005f9ff3    90
                         nop                                                               // 0x005f9ff4    90
                         nop                                                               // 0x005f9ff5    90
                         nop                                                               // 0x005f9ff6    90
                         nop                                                               // 0x005f9ff7    90
                         nop                                                               // 0x005f9ff8    90
                         nop                                                               // 0x005f9ff9    90
                         nop                                                               // 0x005f9ffa    90
                         nop                                                               // 0x005f9ffb    90
                         nop                                                               // 0x005f9ffc    90
                         nop                                                               // 0x005f9ffd    90
                         nop                                                               // 0x005f9ffe    90
                         nop                                                               // 0x005f9fff    90
_jmp_addr_0x005fa000:    {disp32} mov       cl, byte ptr [data_bytes + 0x4bf350]           // 0x005fa000    8a0d5053e800
                         xor.s              eax, eax                                       // 0x005fa006    33c0
                         and                cl, -0x02                                      // 0x005fa008    80e1fe
                         and                cl, -0x03                                      // 0x005fa00b    80e1fd
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], cl           // 0x005fa00e    880d5053e800
                         xor.s              ecx, ecx                                       // 0x005fa014    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x2988d4], ecx         // 0x005fa016    890dd4e8c500
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x005fa01c    8b0d5c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], eax         // 0x005fa022    a37454e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e4], eax         // 0x005fa027    a3e455e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf5e0], eax         // 0x005fa02c    a3e055e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf300], eax         // 0x005fa031    a30053e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e4], eax         // 0x005fa036    a3e452e800
                         {disp32} mov       dword ptr [data_bytes + 0x4bf2e8], eax         // 0x005fa03b    a3e852e800
                         {disp32} mov       dword ptr [data_bytes + 0x2988d0], eax         // 0x005fa040    a3d0e8c500
                         {disp32} mov       word ptr [ecx + 0x002502b6], ax                // 0x005fa045    668981b6022500
                         {disp32} mov       dword ptr [data_bytes + 0x286d08], eax         // 0x005fa04c    a308cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d04], eax         // 0x005fa051    a304cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d18], eax         // 0x005fa056    a318cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d10], eax         // 0x005fa05b    a310cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d14], eax         // 0x005fa060    a314cdc400
                         {disp32} mov       dword ptr [data_bytes + 0x286d0c], eax         // 0x005fa065    a30ccdc400
                         ret                                                               // 0x005fa06a    c3
                         call               ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z +9                           // 0x005fa06b    e88977e0ff
_jmp_addr_0x005fa070:    push               ebx                                            // 0x005fa070    53
                         push               0x0                                            // 0x005fa071    6a00
                         call               _jmp_addr_0x005f89f0                           // 0x005fa073    e878e9ffff
                         add                esp, 0x04                                      // 0x005fa078    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], 0x00000000  // 0x005fa07b    c7057454e80000000000
                         mov                bl, 0x03                                       // 0x005fa085    b303
_jmp_addr_0x005fa087:    test               byte ptr [data_bytes + 0x4bf304], bl           // 0x005fa087    841d0453e800
                         {disp8} jne        _jmp_addr_0x005fa0ab                           // 0x005fa08d    751c
                         {disp32} mov       al, byte ptr [data_bytes + 0x371cc8]           // 0x005fa08f    a0c87cd300
                         test               al, al                                         // 0x005fa094    84c0
                         {disp8} jne        _jmp_addr_0x005fa0ab                           // 0x005fa096    7513
                         push               0x1                                            // 0x005fa098    6a01
                         call               _jmp_addr_0x005f89f0                           // 0x005fa09a    e851e9ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf474]         // 0x005fa09f    a17454e800
                         add                esp, 0x04                                      // 0x005fa0a4    83c404
                         test               eax, eax                                       // 0x005fa0a7    85c0
                         {disp8} je         _jmp_addr_0x005fa087                           // 0x005fa0a9    74dc
_jmp_addr_0x005fa0ab:    push               0x2                                            // 0x005fa0ab    6a02
                         call               _jmp_addr_0x005f89f0                           // 0x005fa0ad    e83ee9ffff
                         add                esp, 0x04                                      // 0x005fa0b2    83c404
_jmp_addr_0x005fa0b5:    test               byte ptr [data_bytes + 0x4bf304], bl           // 0x005fa0b5    841d0453e800
                         {disp8} je         _jmp_addr_0x005fa0d5                           // 0x005fa0bb    7418
                         call               ?StartFrame@LH3DRender@@SAXXZ                  // 0x005fa0bd    e81e502300
                         call               ?FinishFrame@LH3DRender@@QAEXXZ                // 0x005fa0c2    e899532300
                         push               0x1                                            // 0x005fa0c7    6a01
                         mov                ecx, 0x00e85050                                // 0x005fa0c9    b95050e800
                         call               _jmp_addr_0x007de090                           // 0x005fa0ce    e8bd3f1e00
                         {disp8} jmp        _jmp_addr_0x005fa0b5                           // 0x005fa0d3    ebe0
_jmp_addr_0x005fa0d5:    call               _jmp_addr_0x005fa000                           // 0x005fa0d5    e826ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x22dccc]         // 0x005fa0da    a1cc3cbf00
                         test               eax, eax                                       // 0x005fa0df    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x264150], 0x00000000  // 0x005fa0e1    c70550a1c20000000000
                         {disp32} mov       dword ptr [_DAT_00e06020], 0x00000000          // 0x005fa0eb    c7052060e00000000000
                         {disp32} mov       dword ptr [data_bytes + 0x440024], 0xff000000  // 0x005fa0f5    c7052460e000000000ff
                         {disp32} mov       dword ptr [data_bytes + 0x440028], 0x00000000  // 0x005fa0ff    c7052860e00000000000
                         pop                ebx                                            // 0x005fa109    5b
                         {disp8} jne        _jmp_addr_0x005fa112                           // 0x005fa10a    7506
                         jmp                dword ptr [data_bytes + 0x22dcd4]              // 0x005fa10c    ff25d43cbf00
_jmp_addr_0x005fa112:    ret                                                               // 0x005fa112    c3
                         nop                                                               // 0x005fa113    90
                         nop                                                               // 0x005fa114    90
                         nop                                                               // 0x005fa115    90
                         nop                                                               // 0x005fa116    90
                         nop                                                               // 0x005fa117    90
                         nop                                                               // 0x005fa118    90
                         nop                                                               // 0x005fa119    90
                         nop                                                               // 0x005fa11a    90
                         nop                                                               // 0x005fa11b    90
                         nop                                                               // 0x005fa11c    90
                         nop                                                               // 0x005fa11d    90
                         nop                                                               // 0x005fa11e    90
                         nop                                                               // 0x005fa11f    90
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005fa120    d9442404
                         push               esi                                            // 0x005fa124    56
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c90]              // 0x005fa125    d80d900c9000
                         fsin                                                              // 0x005fa12b    d9fe
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]    // 0x005fa12d    dc0580b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]            // 0x005fa133    dc0d60b28a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x82708]              // 0x005fa139    dc0d08b79200
                         {disp32} fadd      qword ptr [rdata_bytes + 0x82700]              // 0x005fa13f    dc0500b79200
                         call               _jmp_addr_0x007a1400                           // 0x005fa145    e8b6721a00
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005fa14a    d9442408
                         {disp32} fadd      dword ptr [rdata_bytes + 0x57c90]              // 0x005fa14e    d805900c9000
                         movsx              esi, al                                        // 0x005fa154    0fbef0
                         shl                esi, 8                                         // 0x005fa157    c1e608
                         fsin                                                              // 0x005fa15a    d9fe
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]    // 0x005fa15c    dc0580b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]            // 0x005fa162    dc0d60b28a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x82708]              // 0x005fa168    dc0d08b79200
                         {disp32} fadd      qword ptr [rdata_bytes + 0x82700]              // 0x005fa16e    dc0500b79200
                         call               _jmp_addr_0x007a1400                           // 0x005fa174    e887721a00
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x005fa179    d9442408
                         {disp32} fadd      dword ptr [rdata_bytes + 0x826fc]              // 0x005fa17d    d805fcb69200
                         movsx              eax, al                                        // 0x005fa183    0fbec0
                         add.s              esi, eax                                       // 0x005fa186    03f0
                         fsin                                                              // 0x005fa188    d9fe
                         shl                esi, 8                                         // 0x005fa18a    c1e608
                         {disp32} fadd      qword ptr [__real@8@3fff8000000000000000]    // 0x005fa18d    dc0580b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]            // 0x005fa193    dc0d60b28a00
                         {disp32} fmul      qword ptr [rdata_bytes + 0x82708]              // 0x005fa199    dc0d08b79200
                         {disp32} fadd      qword ptr [rdata_bytes + 0x82700]              // 0x005fa19f    dc0500b79200
                         call               _jmp_addr_0x007a1400                           // 0x005fa1a5    e856721a00
                         movsx              ecx, al                                        // 0x005fa1aa    0fbec8
                         add.s              esi, ecx                                       // 0x005fa1ad    03f1
                         mov.s              eax, esi                                       // 0x005fa1af    8bc6
                         pop                esi                                            // 0x005fa1b1    5e
                         ret                                                               // 0x005fa1b2    c3
                         nop                                                               // 0x005fa1b3    90
                         nop                                                               // 0x005fa1b4    90
                         nop                                                               // 0x005fa1b5    90
                         nop                                                               // 0x005fa1b6    90
                         nop                                                               // 0x005fa1b7    90
                         nop                                                               // 0x005fa1b8    90
                         nop                                                               // 0x005fa1b9    90
                         nop                                                               // 0x005fa1ba    90
                         nop                                                               // 0x005fa1bb    90
                         nop                                                               // 0x005fa1bc    90
                         nop                                                               // 0x005fa1bd    90
                         nop                                                               // 0x005fa1be    90
                         nop                                                               // 0x005fa1bf    90
_globl_ct_0x005fa1c0:    {disp32} jmp       _jmp_addr_0x005fa1d0                           // 0x005fa1c0    e90b000000
                         nop                                                               // 0x005fa1c5    90
                         nop                                                               // 0x005fa1c6    90
                         nop                                                               // 0x005fa1c7    90
                         nop                                                               // 0x005fa1c8    90
                         nop                                                               // 0x005fa1c9    90
                         nop                                                               // 0x005fa1ca    90
                         nop                                                               // 0x005fa1cb    90
                         nop                                                               // 0x005fa1cc    90
                         nop                                                               // 0x005fa1cd    90
                         nop                                                               // 0x005fa1ce    90
                         nop                                                               // 0x005fa1cf    90
_jmp_addr_0x005fa1d0:    ret                                                               // 0x005fa1d0    c3
                         nop                                                               // 0x005fa1d1    90
                         nop                                                               // 0x005fa1d2    90
                         nop                                                               // 0x005fa1d3    90
                         nop                                                               // 0x005fa1d4    90
                         nop                                                               // 0x005fa1d5    90
                         nop                                                               // 0x005fa1d6    90
                         nop                                                               // 0x005fa1d7    90
                         nop                                                               // 0x005fa1d8    90
                         nop                                                               // 0x005fa1d9    90
                         nop                                                               // 0x005fa1da    90
                         nop                                                               // 0x005fa1db    90
                         nop                                                               // 0x005fa1dc    90
                         nop                                                               // 0x005fa1dd    90
                         nop                                                               // 0x005fa1de    90
                         nop                                                               // 0x005fa1df    90
_globl_ct_0x005fa1e0:    {disp32} jmp       _jmp_addr_0x005fa1f0                           // 0x005fa1e0    e90b000000
                         nop                                                               // 0x005fa1e5    90
                         nop                                                               // 0x005fa1e6    90
                         nop                                                               // 0x005fa1e7    90
                         nop                                                               // 0x005fa1e8    90
                         nop                                                               // 0x005fa1e9    90
                         nop                                                               // 0x005fa1ea    90
                         nop                                                               // 0x005fa1eb    90
                         nop                                                               // 0x005fa1ec    90
                         nop                                                               // 0x005fa1ed    90
                         nop                                                               // 0x005fa1ee    90
                         nop                                                               // 0x005fa1ef    90
_jmp_addr_0x005fa1f0:    {disp32} mov       dword ptr [data_bytes + 0x36bb80], 0x42c80000  // 0x005fa1f0    c705801bd3000000c842
                         {disp32} mov       dword ptr [data_bytes + 0x36bb84], 0x00000000  // 0x005fa1fa    c705841bd30000000000
                         {disp32} mov       dword ptr [data_bytes + 0x36bb88], 0x00000000  // 0x005fa204    c705881bd30000000000
                         ret                                                               // 0x005fa20e    c3
                         nop                                                               // 0x005fa20f    90
_globl_ct_0x005fa210:    {disp32} jmp       _jmp_addr_0x005fa220                           // 0x005fa210    e90b000000
                         nop                                                               // 0x005fa215    90
                         nop                                                               // 0x005fa216    90
                         nop                                                               // 0x005fa217    90
                         nop                                                               // 0x005fa218    90
                         nop                                                               // 0x005fa219    90
                         nop                                                               // 0x005fa21a    90
                         nop                                                               // 0x005fa21b    90
                         nop                                                               // 0x005fa21c    90
                         nop                                                               // 0x005fa21d    90
                         nop                                                               // 0x005fa21e    90
                         nop                                                               // 0x005fa21f    90
_jmp_addr_0x005fa220:    ret                                                               // 0x005fa220    c3
                         nop                                                               // 0x005fa221    90
                         nop                                                               // 0x005fa222    90
                         nop                                                               // 0x005fa223    90
                         nop                                                               // 0x005fa224    90
                         nop                                                               // 0x005fa225    90
                         nop                                                               // 0x005fa226    90
                         nop                                                               // 0x005fa227    90
                         nop                                                               // 0x005fa228    90
                         nop                                                               // 0x005fa229    90
                         nop                                                               // 0x005fa22a    90
                         nop                                                               // 0x005fa22b    90
                         nop                                                               // 0x005fa22c    90
                         nop                                                               // 0x005fa22d    90
                         nop                                                               // 0x005fa22e    90
                         nop                                                               // 0x005fa22f    90
                         {disp8} fild       dword ptr [esp + 0x0c]                         // 0x005fa230    db44240c
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x005fa234    8b442404
                         {disp32} fdivr     dword ptr [__real@40c90fdb]                    // 0x005fa238    d83d10b28a00
                         {disp8} fild       dword ptr [esp + 0x08]                         // 0x005fa23e    db442408
                         fmulp              st(1), st                                      // 0x005fa242    dec9
                         fld                st(0)                                          // 0x005fa244    d9c0
                         fsin                                                              // 0x005fa246    d9fe
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x005fa248    d84c2410
                         {disp8} fstp       dword ptr [eax + 0x08]                         // 0x005fa24c    d95808
                         fcos                                                              // 0x005fa24f    d9ff
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x005fa251    d84c2410
                         {disp8} fstp       dword ptr [eax + 0x04]                         // 0x005fa255    d95804
                         ret                                                               // 0x005fa258    c3
                         nop                                                               // 0x005fa259    90
                         nop                                                               // 0x005fa25a    90
                         nop                                                               // 0x005fa25b    90
                         nop                                                               // 0x005fa25c    90
                         nop                                                               // 0x005fa25d    90
                         nop                                                               // 0x005fa25e    90
                         nop                                                               // 0x005fa25f    90
                         sub                esp, 0x08                                      // 0x005fa260    83ec08
                         push               esi                                            // 0x005fa263    56
                         mov                edx, 0x00000001                                // 0x005fa264    ba01000000
                         mov                ecx, 0x00000064                                // 0x005fa269    b964000000
                         call               ?Create@LH3DSprite@@SAPAV1@JH@Z                // 0x005fa26e    e82d622400
                         {disp32} mov       dword ptr [data_bytes + 0x36ea70], eax         // 0x005fa273    a3704ad300
                         xor.s              esi, esi                                       // 0x005fa278    33f6
_jmp_addr_0x005fa27a:    push               0x43160000                                     // 0x005fa27a    6800001643
                         push               0x41f00000                                     // 0x005fa27f    680000f041
                         call               _Random__Fff@8                                 // 0x005fa284    e8f72e2200
                         {disp8} fstp       dword ptr [esp + 0x08]                         // 0x005fa289    d95c2408
                         push               0x40c90fdb                                     // 0x005fa28d    68db0fc940
                         push               0x0                                            // 0x005fa292    6a00
                         call               _Random__Fff@8                                 // 0x005fa294    e8e72e2200
                         {disp8} fstp       dword ptr [esp + 0x04]                         // 0x005fa299    d95c2404
                         push               0x0                                            // 0x005fa29d    6a00
                         push               0xc3480000                                     // 0x005fa29f    68000048c3
                         call               _Random__Fff@8                                 // 0x005fa2a4    e8d72e2200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2a9    a1704ad300
                         fstp               dword ptr [esi + eax * 0x1]                    // 0x005fa2ae    d91c06
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2b1    8b0d704ad300
                         {disp8} fld        dword ptr [esp + 0x04]                         // 0x005fa2b7    d9442404
                         push               0x40c90fdb                                     // 0x005fa2bb    68db0fc940
                         fcos                                                              // 0x005fa2c0    d9ff
                         push               0x0                                            // 0x005fa2c2    6a00
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x005fa2c4    d84c2410
                         {disp8} fstp       dword ptr [esi + ecx * 0x1 + 0x04]             // 0x005fa2c8    d95c0e04
                         {disp8} fld        dword ptr [esp + 0x0c]                         // 0x005fa2cc    d944240c
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2d0    8b15704ad300
                         fsin                                                              // 0x005fa2d6    d9fe
                         {disp8} fmul       dword ptr [esp + 0x10]                         // 0x005fa2d8    d84c2410
                         {disp8} fstp       dword ptr [esi + edx * 0x1 + 0x08]             // 0x005fa2dc    d95c1608
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2e0    a1704ad300
                         {disp8} mov        dword ptr [esi + eax * 0x1 + 0x20], 0x7fffffff // 0x005fa2e5    c7440620ffffff7f
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2ed    8b0d704ad300
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36bb68]         // 0x005fa2f3    8b15681bd300
                         {disp8} mov        dword ptr [esi + ecx * 0x1 + 0x2c], edx        // 0x005fa2f9    89540e2c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea70]         // 0x005fa2fd    a1704ad300
                         {disp8} mov        ecx, dword ptr [esi + eax * 0x1 + 0x28]        // 0x005fa302    8b4c0628
                         {disp8} lea        eax, dword ptr [esi + eax * 0x1 + 0x28]        // 0x005fa306    8d440628
                         and                ecx, 0xffffffc7                                // 0x005fa30a    83e1c7
                         or                 ecx, 7                                         // 0x005fa30d    83c907
                         mov                dword ptr [eax], ecx                           // 0x005fa310    8908
                         call               _Random__Fff@8                                 // 0x005fa312    e8692e2200
                         {disp32} mov       edx, dword ptr [data_bytes + 0x36ea70]         // 0x005fa317    8b15704ad300
                         {disp8} fstp       dword ptr [esi + edx * 0x1 + 0x14]             // 0x005fa31d    d95c1614
                         {disp32} mov       eax, dword ptr [data_bytes + 0x36ea70]         // 0x005fa321    a1704ad300
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x005fa326    d90590a38a00
                         add.s              eax, esi                                       // 0x005fa32c    03c6
                         {disp8} fdiv       dword ptr [eax + 0x0c]                         // 0x005fa32e    d8700c
                         add                esi, 0x34                                      // 0x005fa331    83c634
                         cmp                esi, 0x00001450                                // 0x005fa334    81fe50140000
                         {disp8} mov        dword ptr [eax + 0x0c], 0x3f800000             // 0x005fa33a    c7400c0000803f
                         fld                st(0)                                          // 0x005fa341    d9c0
                         {disp8} fmul       dword ptr [eax + 0x18]                         // 0x005fa343    d84818
                         {disp8} fstp       dword ptr [eax + 0x18]                         // 0x005fa346    d95818
                         {disp8} fmul       dword ptr [eax + 0x1c]                         // 0x005fa349    d8481c
                         {disp8} fstp       dword ptr [eax + 0x1c]                         // 0x005fa34c    d9581c
                         {disp32} jl        _jmp_addr_0x005fa27a                           // 0x005fa34f    0f8c25ffffff
                         pop                esi                                            // 0x005fa355    5e
                         add                esp, 0x08                                      // 0x005fa356    83c408
                         ret                                                               // 0x005fa359    c3
                         call               dword ptr [__imp__Disconnect_Dialup__QAEXH_Z@4]// 0x005fa35a    ff159c998a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x36ea70]         // 0x005fa360    8b0d704ad300
                         {disp32} jmp       ?Release@LH3DSprite@@QAEXXZ                    // 0x005fa366    e9b5612400
                         nop                                                               // 0x005fa36b    90
                         nop                                                               // 0x005fa36c    90
                         nop                                                               // 0x005fa36d    90
                         nop                                                               // 0x005fa36e    90
                         nop                                                               // 0x005fa36f    90
                         push               esi                                            // 0x005fa370    56
                         push               edi                                            // 0x005fa371    57
                         xor.s              eax, eax                                       // 0x005fa372    33c0
                         mov                ecx, 0x00000008                                // 0x005fa374    b908000000
                         mov                edi, 0x00d31b44                                // 0x005fa379    bf441bd300
                         rep stosd                                                         // 0x005fa37e    f3ab
                         mov                ecx, 0x00000008                                // 0x005fa380    b908000000
                         mov                edi, 0x00d31b24                                // 0x005fa385    bf241bd300
                         rep stosd                                                         // 0x005fa38a    f3ab
                         mov                esi, 0xffffffe8                                // 0x005fa38c    bee8ffffff
_jmp_addr_0x005fa391:    cmp                esi, -0x10                                     // 0x005fa391    83fef0
                         {disp8} jl         _jmp_addr_0x005fa3e5                           // 0x005fa394    7c4f
                         test               esi, esi                                       // 0x005fa396    85f6
                         {disp8} jge        _jmp_addr_0x005fa3c4                           // 0x005fa398    7d2a
                         push               0x42c80000                                     // 0x005fa39a    680000c842
                         push               0xc2c80000                                     // 0x005fa39f    680000c8c2
                         call               _Random__Fff@8                                 // 0x005fa3a4    e8d72d2200
                         {disp32} fstp      dword ptr [esi + 0x00d31b5c]                   // 0x005fa3a9    d99e5c1bd300
                         push               0x42c80000                                     // 0x005fa3af    680000c842
                         push               0xc2c80000                                     // 0x005fa3b4    680000c8c2
                         call               _Random__Fff@8                                 // 0x005fa3b9    e8c22d2200
                         {disp32} fstp      dword ptr [esi + 0x00d31b3c]                   // 0x005fa3be    d99e3c1bd300
_jmp_addr_0x005fa3c4:    cmp                esi, -0x10                                     // 0x005fa3c4    83fef0
                         {disp8} jl         _jmp_addr_0x005fa3e5                           // 0x005fa3c7    7c1c
                         test               esi, esi                                       // 0x005fa3c9    85f6
                         {disp8} jl         _jmp_addr_0x005fa3e5                           // 0x005fa3cb    7c18
                         {disp32} mov       eax, dword ptr [esi + 0x00d31b44]              // 0x005fa3cd    8b86441bd300
                         {disp32} mov       ecx, dword ptr [esi + 0x00d31b24]              // 0x005fa3d3    8b8e241bd300
                         {disp32} mov       dword ptr [esi + 0x00d31b5c], eax              // 0x005fa3d9    89865c1bd300
                         {disp32} mov       dword ptr [esi + 0x00d31b3c], ecx              // 0x005fa3df    898e3c1bd300
_jmp_addr_0x005fa3e5:    add                esi, 0x04                                      // 0x005fa3e5    83c604
                         cmp                esi, 0x08                                      // 0x005fa3e8    83fe08
                         {disp8} jl         _jmp_addr_0x005fa391                           // 0x005fa3eb    7ca4
                         pop                edi                                            // 0x005fa3ed    5f
                         xor.s              eax, eax                                       // 0x005fa3ee    33c0
                         mov                ecx, 0x3f800000                                // 0x005fa3f0    b90000803f
                         pop                esi                                            // 0x005fa3f5    5e
_jmp_addr_0x005fa3f6:    cmp                eax, 0x07                                      // 0x005fa3f6    83f807
                         {disp8} ja         _jmp_addr_0x005fa44a                           // 0x005fa3f9    774f
                         jmp                dword ptr [eax*4 + 0x5fa458]                   // 0x005fa3fb    ff248558a45f00
                         {disp32} mov       dword ptr [data_bytes + 0x36bb04], 0x3f800000  // 0x005fa402    c705041bd3000000803f
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa40c    eb43
                         {disp32} mov       dword ptr [data_bytes + 0x36bb08], 0x00000000  // 0x005fa40e    c705081bd30000000000
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa418    eb37
                         {disp32} mov       dword ptr [data_bytes + 0x36bb0c], 0x3f400000  // 0x005fa41a    c7050c1bd3000000403f
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa424    eb2b
                         {disp32} mov       dword ptr [data_bytes + 0x36bb18], 0x3eb33333  // 0x005fa426    c705181bd3003333b33e
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa430    eb1f
                         {disp32} mov       dword ptr [data_bytes + 0x36bb1c], 0x00000000  // 0x005fa432    c7051c1bd30000000000
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa43c    eb13
                         {disp32} mov       dword ptr [data_bytes + 0x36bb20], 0x3f800000  // 0x005fa43e    c705201bd3000000803f
                         {disp8} jmp        _jmp_addr_0x005fa451                           // 0x005fa448    eb07
_jmp_addr_0x005fa44a:    {disp32} mov       dword ptr [eax * 0x4 + 0x00d31b04], ecx        // 0x005fa44a    890c85041bd300
_jmp_addr_0x005fa451:    inc                eax                                            // 0x005fa451    40
                         cmp                eax, 0x08                                      // 0x005fa452    83f808
                         {disp8} jl         _jmp_addr_0x005fa3f6                           // 0x005fa455    7c9f
                         ret                                                               // 0x005fa457    c3

// Snippet: jmptbl, [0x005fa458, 0x005fa478)
.byte 0x02, 0xa4, 0x5f, 0x00      // 0x005fa458
.byte 0x0e, 0xa4, 0x5f, 0x00      // 0x005fa45c
.byte 0x1a, 0xa4, 0x5f, 0x00      // 0x005fa460
.byte 0x4a, 0xa4, 0x5f, 0x00      // 0x005fa464
.byte 0x4a, 0xa4, 0x5f, 0x00      // 0x005fa468
.byte 0x26, 0xa4, 0x5f, 0x00      // 0x005fa46c
.byte 0x32, 0xa4, 0x5f, 0x00      // 0x005fa470
.byte 0x3e, 0xa4, 0x5f, 0x00      // 0x005fa474

// Snippet: db, [0x005fa478, 0x005fa480)
.byte 0x90, 0x90, 0x90, 0x90      // 0x005fa478
.byte 0x90, 0x90, 0x90, 0x90      // 0x005fa47c

