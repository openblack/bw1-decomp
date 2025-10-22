.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x0078bda0
.extern _jmp_addr_0x0078c040
.extern _jmp_addr_0x0078c110
.extern _jmp_addr_0x0078c1e0
.extern _jmp_addr_0x0078c2b0
.extern _jmp_addr_0x0078c380
.extern _jmp_addr_0x0078c450
.extern _jmp_addr_0x0078f2d0
.extern _jmp_addr_0x0078f320
.extern _jmp_addr_0x00798350
.extern __strcmpi
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ

.globl _jmp_addr_0x0078cc10

start_0x0078c7d0_0x0078cd20:
// Snippet: asm, [0x0078c7d0, 0x0078cd0a)
                         push             ebx                                    // 0x0078c7d0    53
                         push             ebp                                    // 0x0078c7d1    55
                         mov.s            ebp, ecx                               // 0x0078c7d2    8be9
                         {disp32} mov     eax, dword ptr [ebp + 0x000000e0]      // 0x0078c7d4    8b85e0000000
                         xor.s            ebx, ebx                               // 0x0078c7da    33db
                         cmp.s            eax, ebx                               // 0x0078c7dc    3bc3
                         {disp32} jne     _jmp_addr_0x0078caa7                   // 0x0078c7de    0f85c3020000
                         push             esi                                    // 0x0078c7e4    56
                         push             edi                                    // 0x0078c7e5    57
                         call             _jmp_addr_0x0078f320                   // 0x0078c7e6    e8352b0000
                         push             ebx                                    // 0x0078c7eb    53
                         push             ebx                                    // 0x0078c7ec    53
                         push             0x44                                   // 0x0078c7ed    6a44
                         push             0x00c25048                             // 0x0078c7ef    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x43be44], ebx // 0x0078c7f4    891d441ee000
                         call             _jmp_addr_0x008379e0                   // 0x0078c7fa    e8e1b10a00
                         push             ebx                                    // 0x0078c7ff    53
                         push             ebx                                    // 0x0078c800    53
                         push             0x44                                   // 0x0078c801    6a44
                         push             0x00c25048                             // 0x0078c803    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x437ddc], eax // 0x0078c808    a3dcdddf00
                         call             _jmp_addr_0x008379e0                   // 0x0078c80d    e8ceb10a00
                         push             ebx                                    // 0x0078c812    53
                         push             ebx                                    // 0x0078c813    53
                         push             0x44                                   // 0x0078c814    6a44
                         push             0x00c25048                             // 0x0078c816    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x433d18], eax // 0x0078c81b    a3189ddf00
                         call             _jmp_addr_0x008379e0                   // 0x0078c820    e8bbb10a00
                         push             ebx                                    // 0x0078c825    53
                         push             ebx                                    // 0x0078c826    53
                         push             0x44                                   // 0x0078c827    6a44
                         push             0x00c25048                             // 0x0078c829    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x42fc54], eax // 0x0078c82e    a3545cdf00
                         call             _jmp_addr_0x008379e0                   // 0x0078c833    e8a8b10a00
                         add              esp, 0x40                              // 0x0078c838    83c440
                         push             ebx                                    // 0x0078c83b    53
                         push             ebx                                    // 0x0078c83c    53
                         push             0x44                                   // 0x0078c83d    6a44
                         push             0x00c25048                             // 0x0078c83f    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x41fa04], eax // 0x0078c844    a3045ade00
                         call             _jmp_addr_0x008379e0                   // 0x0078c849    e892b10a00
                         push             ebx                                    // 0x0078c84e    53
                         push             ebx                                    // 0x0078c84f    53
                         push             0x44                                   // 0x0078c850    6a44
                         push             0x00c25048                             // 0x0078c852    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x42bb90], eax // 0x0078c857    a3901bdf00
                         call             _jmp_addr_0x008379e0                   // 0x0078c85c    e87fb10a00
                         push             ebx                                    // 0x0078c861    53
                         push             ebx                                    // 0x0078c862    53
                         push             0x44                                   // 0x0078c863    6a44
                         push             0x00c25048                             // 0x0078c865    684850c200
                         {disp32} mov     dword ptr [data_bytes + 0x427acc], eax // 0x0078c86a    a3ccdade00
                         call             _jmp_addr_0x008379e0                   // 0x0078c86f    e86cb10a00
                         {disp32} mov     dword ptr [data_bytes + 0x423a08], eax // 0x0078c874    a3089ade00
                         {disp32} mov     eax, dword ptr [data_bytes + 0x437ddc] // 0x0078c879    a1dcdddf00
                         push             eax                                    // 0x0078c87e    50
                         push             0x5                                    // 0x0078c87f    6a05
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c881    e8aa340a00
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x433d18] // 0x0078c886    8b0d189ddf00
                         push             ecx                                    // 0x0078c88c    51
                         push             0x5                                    // 0x0078c88d    6a05
                         {disp32} mov     dword ptr [data_bytes + 0x43bdf8], eax // 0x0078c88f    a3f81de000
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c894    e897340a00
                         {disp32} mov     edx, dword ptr [data_bytes + 0x42fc54] // 0x0078c899    8b15545cdf00
                         add              esp, 0x40                              // 0x0078c89f    83c440
                         push             edx                                    // 0x0078c8a2    52
                         push             0x5                                    // 0x0078c8a3    6a05
                         {disp32} mov     dword ptr [data_bytes + 0x43bdf4], eax // 0x0078c8a5    a3f41de000
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c8aa    e881340a00
                         {disp32} mov     dword ptr [data_bytes + 0x43bdf0], eax // 0x0078c8af    a3f01de000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x41fa04] // 0x0078c8b4    a1045ade00
                         push             eax                                    // 0x0078c8b9    50
                         push             0x5                                    // 0x0078c8ba    6a05
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c8bc    e86f340a00
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x42bb90] // 0x0078c8c1    8b0d901bdf00
                         push             ecx                                    // 0x0078c8c7    51
                         push             0x5                                    // 0x0078c8c8    6a05
                         {disp32} mov     dword ptr [data_bytes + 0x43bde0], eax // 0x0078c8ca    a3e01de000
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c8cf    e85c340a00
                         {disp32} mov     edx, dword ptr [data_bytes + 0x427acc] // 0x0078c8d4    8b15ccdade00
                         push             edx                                    // 0x0078c8da    52
                         push             0x5                                    // 0x0078c8db    6a05
                         {disp32} mov     dword ptr [data_bytes + 0x43bdec], eax // 0x0078c8dd    a3ec1de000
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c8e2    e849340a00
                         {disp32} mov     dword ptr [data_bytes + 0x43bde8], eax // 0x0078c8e7    a3e81de000
                         {disp32} mov     eax, dword ptr [data_bytes + 0x423a08] // 0x0078c8ec    a1089ade00
                         push             eax                                    // 0x0078c8f1    50
                         push             0x5                                    // 0x0078c8f2    6a05
                         call             _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                   // 0x0078c8f4    e837340a00
                         {disp32} mov     dword ptr [data_bytes + 0x43bde4], eax // 0x0078c8f9    a3e41de000
                         {disp32} mov     ecx, dword ptr [ebp + 0x000000c0]      // 0x0078c8fe    8b8dc0000000
                         {disp8} mov      eax, dword ptr [ecx + 0x14]            // 0x0078c904    8b4114
                         {disp8} mov      ecx, dword ptr [eax + 0x04]            // 0x0078c907    8b4804
                         add              esp, 0x28                              // 0x0078c90a    83c428
                         test             ecx, 0x00080000                        // 0x0078c90d    f7c100000800
                         {disp8} jne      _jmp_addr_0x0078c919                   // 0x0078c913    7504
                         xor.s            esi, esi                               // 0x0078c915    33f6
                         {disp8} jmp      _jmp_addr_0x0078c959                   // 0x0078c917    eb40
_jmp_addr_0x0078c919:    mov.s            esi, ecx                               // 0x0078c919    8bf1
                         and              esi, 0x00008000                        // 0x0078c91b    81e600800000
                         {disp8} je       _jmp_addr_0x0078c92b                   // 0x0078c921    7408
                         {disp8} mov      edx, dword ptr [eax + 0x48]            // 0x0078c923    8b5048
                         {disp8} mov      edi, dword ptr [edx + 0x08]            // 0x0078c926    8b7a08
                         {disp8} jmp      _jmp_addr_0x0078c92d                   // 0x0078c929    eb02
_jmp_addr_0x0078c92b:    xor.s            edi, edi                               // 0x0078c92b    33ff
_jmp_addr_0x0078c92d:    test             ecx, 0x00040000                        // 0x0078c92d    f7c100000400
                         {disp8} je       _jmp_addr_0x0078c950                   // 0x0078c933    741b
                         cmp.s            esi, ebx                               // 0x0078c935    3bf3
                         {disp8} je       _jmp_addr_0x0078c945                   // 0x0078c937    740c
                         {disp8} mov      ecx, dword ptr [eax + 0x48]            // 0x0078c939    8b4848
                         {disp8} mov      edx, dword ptr [ecx + 0x08]            // 0x0078c93c    8b5108
                         add.s            ecx, edx                               // 0x0078c93f    03ca
                         mov              ecx, dword ptr [ecx]                   // 0x0078c941    8b09
                         {disp8} jmp      _jmp_addr_0x0078c952                   // 0x0078c943    eb0d
_jmp_addr_0x0078c945:    {disp8} mov      ecx, dword ptr [eax + 0x48]            // 0x0078c945    8b4848
                         xor.s            edx, edx                               // 0x0078c948    33d2
                         add.s            ecx, edx                               // 0x0078c94a    03ca
                         mov              ecx, dword ptr [ecx]                   // 0x0078c94c    8b09
                         {disp8} jmp      _jmp_addr_0x0078c952                   // 0x0078c94e    eb02
_jmp_addr_0x0078c950:    xor.s            ecx, ecx                               // 0x0078c950    33c9
_jmp_addr_0x0078c952:    {disp8} mov      esi, dword ptr [eax + 0x48]            // 0x0078c952    8b7048
                         add.s            esi, ecx                               // 0x0078c955    03f1
                         add.s            esi, edi                               // 0x0078c957    03f7
_jmp_addr_0x0078c959:    {disp8} mov      eax, dword ptr [esi + 0x04]            // 0x0078c959    8b4604
                         test             eax, eax                               // 0x0078c95c    85c0
                         {disp32} jbe     _jmp_addr_0x0078ca63                   // 0x0078c95e    0f86ff000000
                         xor.s            edi, edi                               // 0x0078c964    33ff
_jmp_addr_0x0078c966:    {disp8} mov      edx, dword ptr [esi + 0x08]            // 0x0078c966    8b5608
                         add.s            edx, edi                               // 0x0078c969    03d7
                         push             edx                                    // 0x0078c96b    52
                         push             0x00c280b4                             // 0x0078c96c    68b480c200
                         call             __strcmpi                              // 0x0078c971    e86aa30300
                         add              esp, 0x08                              // 0x0078c976    83c408
                         test             eax, eax                               // 0x0078c979    85c0
                         {disp8} jne      _jmp_addr_0x0078c987                   // 0x0078c97b    750a
                         {disp8} mov      eax, dword ptr [esi + 0x08]            // 0x0078c97d    8b4608
                         add.s            eax, edi                               // 0x0078c980    03c7
                         {disp32} mov     dword ptr [data_bytes + 0x43be48], eax // 0x0078c982    a3481ee000
_jmp_addr_0x0078c987:    {disp8} mov      ecx, dword ptr [esi + 0x08]            // 0x0078c987    8b4e08
                         add.s            ecx, edi                               // 0x0078c98a    03cf
                         push             ecx                                    // 0x0078c98c    51
                         push             0x00c280a4                             // 0x0078c98d    68a480c200
                         call             __strcmpi                              // 0x0078c992    e849a30300
                         add              esp, 0x08                              // 0x0078c997    83c408
                         test             eax, eax                               // 0x0078c99a    85c0
                         {disp8} jne      _jmp_addr_0x0078c9a9                   // 0x0078c99c    750b
                         {disp8} mov      edx, dword ptr [esi + 0x08]            // 0x0078c99e    8b5608
                         add.s            edx, edi                               // 0x0078c9a1    03d7
                         {disp32} mov     dword ptr [data_bytes + 0x43be4c], edx // 0x0078c9a3    89154c1ee000
_jmp_addr_0x0078c9a9:    {disp8} mov      eax, dword ptr [esi + 0x08]            // 0x0078c9a9    8b4608
                         add.s            eax, edi                               // 0x0078c9ac    03c7
                         push             eax                                    // 0x0078c9ae    50
                         push             0x00c28094                             // 0x0078c9af    689480c200
                         call             __strcmpi                              // 0x0078c9b4    e827a30300
                         add              esp, 0x08                              // 0x0078c9b9    83c408
                         test             eax, eax                               // 0x0078c9bc    85c0
                         {disp8} jne      _jmp_addr_0x0078c9cb                   // 0x0078c9be    750b
                         {disp8} mov      ecx, dword ptr [esi + 0x08]            // 0x0078c9c0    8b4e08
                         add.s            ecx, edi                               // 0x0078c9c3    03cf
                         {disp32} mov     dword ptr [data_bytes + 0x43be50], ecx // 0x0078c9c5    890d501ee000
_jmp_addr_0x0078c9cb:    {disp8} mov      edx, dword ptr [esi + 0x08]            // 0x0078c9cb    8b5608
                         add.s            edx, edi                               // 0x0078c9ce    03d7
                         push             edx                                    // 0x0078c9d0    52
                         push             0x00c28084                             // 0x0078c9d1    688480c200
                         call             __strcmpi                              // 0x0078c9d6    e805a30300
                         add              esp, 0x08                              // 0x0078c9db    83c408
                         test             eax, eax                               // 0x0078c9de    85c0
                         {disp8} jne      _jmp_addr_0x0078c9ec                   // 0x0078c9e0    750a
                         {disp8} mov      eax, dword ptr [esi + 0x08]            // 0x0078c9e2    8b4608
                         add.s            eax, edi                               // 0x0078c9e5    03c7
                         {disp32} mov     dword ptr [data_bytes + 0x43be54], eax // 0x0078c9e7    a3541ee000
_jmp_addr_0x0078c9ec:    {disp8} mov      ecx, dword ptr [esi + 0x08]            // 0x0078c9ec    8b4e08
                         add.s            ecx, edi                               // 0x0078c9ef    03cf
                         push             ecx                                    // 0x0078c9f1    51
                         push             0x00c28074                             // 0x0078c9f2    687480c200
                         call             __strcmpi                              // 0x0078c9f7    e8e4a20300
                         add              esp, 0x08                              // 0x0078c9fc    83c408
                         test             eax, eax                               // 0x0078c9ff    85c0
                         {disp8} jne      _jmp_addr_0x0078ca0e                   // 0x0078ca01    750b
                         {disp8} mov      edx, dword ptr [esi + 0x08]            // 0x0078ca03    8b5608
                         add.s            edx, edi                               // 0x0078ca06    03d7
                         {disp32} mov     dword ptr [data_bytes + 0x43be58], edx // 0x0078ca08    8915581ee000
_jmp_addr_0x0078ca0e:    {disp8} mov      eax, dword ptr [esi + 0x08]            // 0x0078ca0e    8b4608
                         add.s            eax, edi                               // 0x0078ca11    03c7
                         push             eax                                    // 0x0078ca13    50
                         push             0x00c28064                             // 0x0078ca14    686480c200
                         call             __strcmpi                              // 0x0078ca19    e8c2a20300
                         add              esp, 0x08                              // 0x0078ca1e    83c408
                         test             eax, eax                               // 0x0078ca21    85c0
                         {disp8} jne      _jmp_addr_0x0078ca30                   // 0x0078ca23    750b
                         {disp8} mov      ecx, dword ptr [esi + 0x08]            // 0x0078ca25    8b4e08
                         add.s            ecx, edi                               // 0x0078ca28    03cf
                         {disp32} mov     dword ptr [data_bytes + 0x43be5c], ecx // 0x0078ca2a    890d5c1ee000
_jmp_addr_0x0078ca30:    {disp8} mov      edx, dword ptr [esi + 0x08]            // 0x0078ca30    8b5608
                         add.s            edx, edi                               // 0x0078ca33    03d7
                         push             edx                                    // 0x0078ca35    52
                         push             0x00c28054                             // 0x0078ca36    685480c200
                         call             __strcmpi                              // 0x0078ca3b    e8a0a20300
                         add              esp, 0x08                              // 0x0078ca40    83c408
                         test             eax, eax                               // 0x0078ca43    85c0
                         {disp8} jne      _jmp_addr_0x0078ca51                   // 0x0078ca45    750a
                         {disp8} mov      eax, dword ptr [esi + 0x08]            // 0x0078ca47    8b4608
                         add.s            eax, edi                               // 0x0078ca4a    03c7
                         {disp32} mov     dword ptr [data_bytes + 0x43be60], eax // 0x0078ca4c    a3601ee000
_jmp_addr_0x0078ca51:    {disp8} mov      eax, dword ptr [esi + 0x04]            // 0x0078ca51    8b4604
                         inc              ebx                                    // 0x0078ca54    43
                         add              edi, 0x000000e0                        // 0x0078ca55    81c7e0000000
                         cmp.s            ebx, eax                               // 0x0078ca5b    3bd8
                         {disp32} jb      _jmp_addr_0x0078c966                   // 0x0078ca5d    0f8203ffffff
_jmp_addr_0x0078ca63:    push             0x0                                    // 0x0078ca63    6a00
                         call             _jmp_addr_0x0078bda0                   // 0x0078ca65    e836f3ffff
                         push             0x0                                    // 0x0078ca6a    6a00
                         call             _jmp_addr_0x0078c040                   // 0x0078ca6c    e8cff5ffff
                         push             0x0                                    // 0x0078ca71    6a00
                         call             _jmp_addr_0x0078c110                   // 0x0078ca73    e898f6ffff
                         push             0x0                                    // 0x0078ca78    6a00
                         call             _jmp_addr_0x0078c1e0                   // 0x0078ca7a    e861f7ffff
                         push             0x0                                    // 0x0078ca7f    6a00
                         call             _jmp_addr_0x0078c2b0                   // 0x0078ca81    e82af8ffff
                         push             0x0                                    // 0x0078ca86    6a00
                         call             _jmp_addr_0x0078c380                   // 0x0078ca88    e8f3f8ffff
                         push             0x0                                    // 0x0078ca8d    6a00
                         call             _jmp_addr_0x0078c450                   // 0x0078ca8f    e8bcf9ffff
                         add              esp, 0x1c                              // 0x0078ca94    83c41c
                         push             0x7                                    // 0x0078ca97    6a07
                         push             0x00c27d7c                             // 0x0078ca99    687c7dc200
                         mov.s            ecx, ebp                               // 0x0078ca9e    8bcd
                         call             _jmp_addr_0x00798350                   // 0x0078caa0    e8abb80000
                         pop              edi                                    // 0x0078caa5    5f
                         pop              esi                                    // 0x0078caa6    5e
_jmp_addr_0x0078caa7:    pop              ebp                                    // 0x0078caa7    5d
                         pop              ebx                                    // 0x0078caa8    5b
                         ret                                                     // 0x0078caa9    c3
                         nop                                                     // 0x0078caaa    90
                         nop                                                     // 0x0078caab    90
                         nop                                                     // 0x0078caac    90
                         nop                                                     // 0x0078caad    90
                         nop                                                     // 0x0078caae    90
                         nop                                                     // 0x0078caaf    90
                         {disp32} mov     eax, dword ptr [ecx + 0x000000e0]      // 0x0078cab0    8b81e0000000
                         push             esi                                    // 0x0078cab6    56
                         xor.s            esi, esi                               // 0x0078cab7    33f6
                         cmp.s            eax, esi                               // 0x0078cab9    3bc6
                         {disp32} je      _jmp_addr_0x0078cbd7                   // 0x0078cabb    0f8416010000
                         call             _jmp_addr_0x0078f2d0                   // 0x0078cac1    e80a280000
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x437ddc] // 0x0078cac6    8b0ddcdddf00
                         cmp.s            ecx, esi                               // 0x0078cacc    3bce
                         {disp8} je       _jmp_addr_0x0078cad5                   // 0x0078cace    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cad0    e86bb20a00
_jmp_addr_0x0078cad5:    {disp32} mov     ecx, dword ptr [data_bytes + 0x433d18] // 0x0078cad5    8b0d189ddf00
                         cmp.s            ecx, esi                               // 0x0078cadb    3bce
                         {disp8} je       _jmp_addr_0x0078cae4                   // 0x0078cadd    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cadf    e85cb20a00
_jmp_addr_0x0078cae4:    {disp32} mov     ecx, dword ptr [data_bytes + 0x42fc54] // 0x0078cae4    8b0d545cdf00
                         cmp.s            ecx, esi                               // 0x0078caea    3bce
                         {disp8} je       _jmp_addr_0x0078caf3                   // 0x0078caec    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078caee    e84db20a00
_jmp_addr_0x0078caf3:    {disp32} mov     ecx, dword ptr [data_bytes + 0x41fa04] // 0x0078caf3    8b0d045ade00
                         cmp.s            ecx, esi                               // 0x0078caf9    3bce
                         {disp8} je       _jmp_addr_0x0078cb02                   // 0x0078cafb    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cafd    e83eb20a00
_jmp_addr_0x0078cb02:    {disp32} mov     ecx, dword ptr [data_bytes + 0x42bb90] // 0x0078cb02    8b0d901bdf00
                         cmp.s            ecx, esi                               // 0x0078cb08    3bce
                         {disp8} je       _jmp_addr_0x0078cb11                   // 0x0078cb0a    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cb0c    e82fb20a00
_jmp_addr_0x0078cb11:    {disp32} mov     ecx, dword ptr [data_bytes + 0x427acc] // 0x0078cb11    8b0dccdade00
                         cmp.s            ecx, esi                               // 0x0078cb17    3bce
                         {disp8} je       _jmp_addr_0x0078cb20                   // 0x0078cb19    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cb1b    e820b20a00
_jmp_addr_0x0078cb20:    {disp32} mov     ecx, dword ptr [data_bytes + 0x423a08] // 0x0078cb20    8b0d089ade00
                         cmp.s            ecx, esi                               // 0x0078cb26    3bce
                         {disp8} je       _jmp_addr_0x0078cb2f                   // 0x0078cb28    7405
                         call             ?Release@LH3DTexture@@QAEXXZ           // 0x0078cb2a    e811b20a00
_jmp_addr_0x0078cb2f:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bdf8] // 0x0078cb2f    a1f81de000
                         cmp.s            eax, esi                               // 0x0078cb34    3bc6
                         {disp32} mov     dword ptr [data_bytes + 0x437ddc], esi // 0x0078cb36    8935dcdddf00
                         {disp32} mov     dword ptr [data_bytes + 0x433d18], esi // 0x0078cb3c    8935189ddf00
                         {disp32} mov     dword ptr [data_bytes + 0x42fc54], esi // 0x0078cb42    8935545cdf00
                         {disp32} mov     dword ptr [data_bytes + 0x41fa04], esi // 0x0078cb48    8935045ade00
                         {disp32} mov     dword ptr [data_bytes + 0x42bb90], esi // 0x0078cb4e    8935901bdf00
                         {disp32} mov     dword ptr [data_bytes + 0x427acc], esi // 0x0078cb54    8935ccdade00
                         {disp32} mov     dword ptr [data_bytes + 0x423a08], esi // 0x0078cb5a    8935089ade00
                         {disp8} je       _jmp_addr_0x0078cb65                   // 0x0078cb60    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb62    897008
_jmp_addr_0x0078cb65:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bdf4] // 0x0078cb65    a1f41de000
                         cmp.s            eax, esi                               // 0x0078cb6a    3bc6
                         {disp8} je       _jmp_addr_0x0078cb71                   // 0x0078cb6c    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb6e    897008
_jmp_addr_0x0078cb71:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bdf0] // 0x0078cb71    a1f01de000
                         cmp.s            eax, esi                               // 0x0078cb76    3bc6
                         {disp8} je       _jmp_addr_0x0078cb7d                   // 0x0078cb78    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb7a    897008
_jmp_addr_0x0078cb7d:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bde0] // 0x0078cb7d    a1e01de000
                         cmp.s            eax, esi                               // 0x0078cb82    3bc6
                         {disp8} je       _jmp_addr_0x0078cb89                   // 0x0078cb84    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb86    897008
_jmp_addr_0x0078cb89:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bdec] // 0x0078cb89    a1ec1de000
                         cmp.s            eax, esi                               // 0x0078cb8e    3bc6
                         {disp8} je       _jmp_addr_0x0078cb95                   // 0x0078cb90    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb92    897008
_jmp_addr_0x0078cb95:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bde8] // 0x0078cb95    a1e81de000
                         cmp.s            eax, esi                               // 0x0078cb9a    3bc6
                         {disp8} je       _jmp_addr_0x0078cba1                   // 0x0078cb9c    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cb9e    897008
_jmp_addr_0x0078cba1:    {disp32} mov     eax, dword ptr [data_bytes + 0x43bde4] // 0x0078cba1    a1e41de000
                         cmp.s            eax, esi                               // 0x0078cba6    3bc6
                         {disp8} je       _jmp_addr_0x0078cbad                   // 0x0078cba8    7403
                         {disp8} mov      dword ptr [eax + 0x08], esi            // 0x0078cbaa    897008
_jmp_addr_0x0078cbad:    {disp32} mov     dword ptr [data_bytes + 0x43bdf8], esi // 0x0078cbad    8935f81de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bdf4], esi // 0x0078cbb3    8935f41de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bdf0], esi // 0x0078cbb9    8935f01de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bde0], esi // 0x0078cbbf    8935e01de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bdec], esi // 0x0078cbc5    8935ec1de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bde8], esi // 0x0078cbcb    8935e81de000
                         {disp32} mov     dword ptr [data_bytes + 0x43bde4], esi // 0x0078cbd1    8935e41de000
_jmp_addr_0x0078cbd7:    pop              esi                                    // 0x0078cbd7    5e
                         ret                                                     // 0x0078cbd8    c3
                         nop                                                     // 0x0078cbd9    90
                         nop                                                     // 0x0078cbda    90
                         nop                                                     // 0x0078cbdb    90
                         nop                                                     // 0x0078cbdc    90
                         nop                                                     // 0x0078cbdd    90
                         nop                                                     // 0x0078cbde    90
                         nop                                                     // 0x0078cbdf    90
                         {disp32} mov     ecx, dword ptr [_game]                 // 0x0078cbe0    8b0d5c19d000
                         call             ?IsMultiplayerGame@GGame@@QBE_NXZ      // 0x0078cbe6    e89563dcff
                         test             eax, eax                               // 0x0078cbeb    85c0
                         {disp8} jne      _jmp_addr_0x0078cc03                   // 0x0078cbed    7514
                         {disp32} mov     eax, dword ptr [_game]                 // 0x0078cbef    a15c19d000
                         {disp32} mov     ecx, dword ptr [eax + 0x00205a0c]      // 0x0078cbf4    8b880c5a2000
                         test             ecx, ecx                               // 0x0078cbfa    85c9
                         {disp32} mov     eax, dword ptr [data_bytes + 0x4741b0] // 0x0078cbfc    a1b0a1e300
                         {disp8} je       _jmp_addr_0x0078cc08                   // 0x0078cc01    7405
_jmp_addr_0x0078cc03:    mov              eax, 0x00000001                        // 0x0078cc03    b801000000
_jmp_addr_0x0078cc08:    ret                                                     // 0x0078cc08    c3
                         nop                                                     // 0x0078cc09    90
                         nop                                                     // 0x0078cc0a    90
                         nop                                                     // 0x0078cc0b    90
                         nop                                                     // 0x0078cc0c    90
                         nop                                                     // 0x0078cc0d    90
                         nop                                                     // 0x0078cc0e    90
                         nop                                                     // 0x0078cc0f    90
_jmp_addr_0x0078cc10:    {disp8} mov      eax, dword ptr [esp + 0x08]            // 0x0078cc10    8b442408
                         cmp              eax, 0x04                              // 0x0078cc14    83f804
                         push             esi                                    // 0x0078cc17    56
                         {disp8} ja       _jmp_addr_0x0078cc4b                   // 0x0078cc18    7731
                         jmp              dword ptr [eax*4 + 0x78cd0c]           // 0x0078cc1a    ff24850ccd7800
                         {disp32} mov     edx, dword ptr [data_bytes + 0x43be6c] // 0x0078cc21    8b156c1ee000
                         cmp              edx, 0x30                              // 0x0078cc27    83fa30
                         {disp8} jae      _jmp_addr_0x0078cc4b                   // 0x0078cc2a    731f
                         xor.s            eax, eax                               // 0x0078cc2c    33c0
                         test             edx, edx                               // 0x0078cc2e    85d2
                         {disp8} jbe      _jmp_addr_0x0078cc4b                   // 0x0078cc30    7619
                         {disp8} mov      esi, dword ptr [esp + 0x08]            // 0x0078cc32    8b742408
                         mov              ecx, 0x00df9d1c                        // 0x0078cc36    b91c9ddf00
_jmp_addr_0x0078cc3b:    cmp              dword ptr [ecx], esi                   // 0x0078cc3b    3931
                         {disp32} je      _jmp_addr_0x0078cd03                   // 0x0078cc3d    0f84c0000000
                         inc              eax                                    // 0x0078cc43    40
                         add              ecx, 0x4                               // 0x0078cc44    83c104
                         cmp.s            eax, edx                               // 0x0078cc47    3bc2
                         .byte            0x72, 0xf0// {disp8} jb _jmp_addr_0x0078cc3b // 0x0078cc49    72f0
_jmp_addr_0x0078cc4b:    xor.s            eax, eax                               // 0x0078cc4b    33c0
                         pop              esi                                    // 0x0078cc4d    5e
                         ret                                                     // 0x0078cc4e    c3
                         {disp32} mov     edx, dword ptr [data_bytes + 0x43be70] // 0x0078cc4f    8b15701ee000
                         cmp              edx, 0x30                              // 0x0078cc55    83fa30
                         {disp8} jae      _jmp_addr_0x0078cc4b                   // 0x0078cc58    73f1
                         xor.s            eax, eax                               // 0x0078cc5a    33c0
                         test             edx, edx                               // 0x0078cc5c    85d2
                         {disp8} jbe      _jmp_addr_0x0078cc4b                   // 0x0078cc5e    76eb
                         {disp8} mov      esi, dword ptr [esp + 0x08]            // 0x0078cc60    8b742408
                         mov              ecx, 0x00df5c58                        // 0x0078cc64    b9585cdf00
_jmp_addr_0x0078cc69:    cmp              dword ptr [ecx], esi                   // 0x0078cc69    3931
                         {disp32} je      _jmp_addr_0x0078cd03                   // 0x0078cc6b    0f8492000000
                         inc              eax                                    // 0x0078cc71    40
                         add              ecx, 0x4                               // 0x0078cc72    83c104
                         cmp.s            eax, edx                               // 0x0078cc75    3bc2
                         .byte            0x72, 0xf0// {disp8} jb _jmp_addr_0x0078cc69 // 0x0078cc77    72f0
                         xor.s            eax, eax                               // 0x0078cc79    33c0
                         pop              esi                                    // 0x0078cc7b    5e
                         ret                                                     // 0x0078cc7c    c3
                         {disp32} mov     edx, dword ptr [data_bytes + 0x43be74] // 0x0078cc7d    8b15741ee000
                         cmp              edx, 0x30                              // 0x0078cc83    83fa30
                         {disp8} jae      _jmp_addr_0x0078cc4b                   // 0x0078cc86    73c3
                         xor.s            eax, eax                               // 0x0078cc88    33c0
                         test             edx, edx                               // 0x0078cc8a    85d2
                         {disp8} jbe      _jmp_addr_0x0078cc4b                   // 0x0078cc8c    76bd
                         {disp8} mov      esi, dword ptr [esp + 0x08]            // 0x0078cc8e    8b742408
                         mov              ecx, 0x00df1b94                        // 0x0078cc92    b9941bdf00
_jmp_addr_0x0078cc97:    cmp              dword ptr [ecx], esi                   // 0x0078cc97    3931
                         {disp8} je       _jmp_addr_0x0078cd03                   // 0x0078cc99    7468
                         inc              eax                                    // 0x0078cc9b    40
                         add              ecx, 0x4                               // 0x0078cc9c    83c104
                         cmp.s            eax, edx                               // 0x0078cc9f    3bc2
                         .byte            0x72, 0xf4// {disp8} jb _jmp_addr_0x0078cc97 // 0x0078cca1    72f4
                         xor.s            eax, eax                               // 0x0078cca3    33c0
                         pop              esi                                    // 0x0078cca5    5e
                         ret                                                     // 0x0078cca6    c3
                         {disp32} mov     edx, dword ptr [data_bytes + 0x43be78] // 0x0078cca7    8b15781ee000
                         cmp              edx, 0x30                              // 0x0078ccad    83fa30
                         {disp8} jae      _jmp_addr_0x0078cc4b                   // 0x0078ccb0    7399
                         xor.s            eax, eax                               // 0x0078ccb2    33c0
                         test             edx, edx                               // 0x0078ccb4    85d2
                         {disp8} jbe      _jmp_addr_0x0078cc4b                   // 0x0078ccb6    7693
                         {disp8} mov      esi, dword ptr [esp + 0x08]            // 0x0078ccb8    8b742408
                         mov              ecx, 0x00dedad0                        // 0x0078ccbc    b9d0dade00
_jmp_addr_0x0078ccc1:    cmp              dword ptr [ecx], esi                   // 0x0078ccc1    3931
                         {disp8} je       _jmp_addr_0x0078cd03                   // 0x0078ccc3    743e
                         inc              eax                                    // 0x0078ccc5    40
                         add              ecx, 0x4                               // 0x0078ccc6    83c104
                         cmp.s            eax, edx                               // 0x0078ccc9    3bc2
                         .byte            0x72, 0xf4// {disp8} jb _jmp_addr_0x0078ccc1 // 0x0078cccb    72f4
                         xor.s            eax, eax                               // 0x0078cccd    33c0
                         pop              esi                                    // 0x0078cccf    5e
                         ret                                                     // 0x0078ccd0    c3
                         {disp32} mov     edx, dword ptr [data_bytes + 0x43be7c] // 0x0078ccd1    8b157c1ee000
                         cmp              edx, 0x30                              // 0x0078ccd7    83fa30
                         {disp32} jae     _jmp_addr_0x0078cc4b                   // 0x0078ccda    0f836bffffff
                         xor.s            eax, eax                               // 0x0078cce0    33c0
                         test             edx, edx                               // 0x0078cce2    85d2
                         {disp32} jbe     _jmp_addr_0x0078cc4b                   // 0x0078cce4    0f8661ffffff
                         {disp8} mov      esi, dword ptr [esp + 0x08]            // 0x0078ccea    8b742408
                         mov              ecx, 0x00de9a0c                        // 0x0078ccee    b90c9ade00
_jmp_addr_0x0078ccf3:    cmp              dword ptr [ecx], esi                   // 0x0078ccf3    3931
                         {disp8} je       _jmp_addr_0x0078cd03                   // 0x0078ccf5    740c
                         inc              eax                                    // 0x0078ccf7    40
                         add              ecx, 0x4                               // 0x0078ccf8    83c104
                         cmp.s            eax, edx                               // 0x0078ccfb    3bc2
                         .byte            0x72, 0xf4// {disp8} jb _jmp_addr_0x0078ccf3 // 0x0078ccfd    72f4
                         xor.s            eax, eax                               // 0x0078ccff    33c0
                         pop              esi                                    // 0x0078cd01    5e
                         ret                                                     // 0x0078cd02    c3
_jmp_addr_0x0078cd03:    mov              eax, 0x00000001                        // 0x0078cd03    b801000000
                         pop              esi                                    // 0x0078cd08    5e
                         ret                                                     // 0x0078cd09    c3

// Snippet: db, [0x0078cd0a, 0x0078cd0c)
.byte 0x8b, 0xff                  // 0x0078cd0a

// Snippet: jmptbl, [0x0078cd0c, 0x0078cd20)
.byte 0x21, 0xcc, 0x78, 0x00      // 0x0078cd0c
.byte 0x4f, 0xcc, 0x78, 0x00      // 0x0078cd10
.byte 0x7d, 0xcc, 0x78, 0x00      // 0x0078cd14
.byte 0xa7, 0xcc, 0x78, 0x00      // 0x0078cd18
.byte 0xd1, 0xcc, 0x78, 0x00      // 0x0078cd1c

