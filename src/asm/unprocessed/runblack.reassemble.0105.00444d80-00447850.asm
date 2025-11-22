.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?Reset@CameraHelpAccumulator@@QAEXXZ
.extern _jmp_addr_0x0046c1b0
.extern _jmp_addr_0x0046c2e0
.extern _jmp_addr_0x00555820
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern @SetName__6LHFileFPCc@12
.extern _jmp_addr_0x007bda70
.extern _jmp_addr_0x007bda90
.extern ?Close@LHFile@@QAEIXZ
.extern @GetSegment__6LHFileFPcP9LHSegmenti@20
.extern _atexit
.extern _sprintf
.extern _fprintf
.extern _fopen
.extern _fclose
.extern ___nw__FUl
.extern _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z
.extern _jmp_addr_0x008379e0
.extern _jmp_addr_0x008398a0
.extern _jmp_addr_0x00842030
.extern _jmp_addr_0x00842050
.extern _jmp_addr_0x00842150
.extern _jmp_addr_0x00842bb0
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x00842e70
.extern ?Release@LH3DWay@@QAEXXZ
.extern _jmp_addr_0x00842f30
.extern _jmp_addr_0x00843050
.extern ?Draw@LH3DWay@@QAEXXZ
.extern _jmp_addr_0x008439c0
.extern @__ct__Q27LH3DWay7RunningFP7LH3DWay@12
.extern _jmp_addr_0x00844280
.extern ?AdjustPtr@LH3DWay@@QAEXXZ
.extern _jmp_addr_0x008447b0
.extern _jmp_addr_0x00844a20

.globl _jmp_addr_0x00444d80
.globl _jmp_addr_0x00444db0
.globl ?FinalDraw@GCameraEditor@@SAXXZ
.globl ?CreateSegFile@GCameraEditor@@SAXXZ
.globl _jmp_addr_0x00445660
.globl _jmp_addr_0x004458b0
.globl _jmp_addr_0x00445930
.globl _jmp_addr_0x00445e10
.globl _jmp_addr_0x00445e50
.globl _jmp_addr_0x00445ee0
.globl @Draw__Q213GCameraEditor9InfoTrackFv@4
.globl _jmp_addr_0x00446700
.globl _jmp_addr_0x00446810
.globl _jmp_addr_0x00446ac0
.globl _jmp_addr_0x00446e00
.globl _LoadCameraFromHD__13GCameraEditorFlRQ213GCameraEditor9CameraBin
.globl _jmp_addr_0x00447060
.globl _jmp_addr_0x004471f0
.globl _jmp_addr_0x00447290
.globl _jmp_addr_0x004473f0
.globl _jmp_addr_0x00447430
.globl _jmp_addr_0x00447450

.globl _globl_ct_0x004472e0
.globl _globl_ct_0x00447310
.globl _globl_ct_0x00447330
.globl _globl_ct_0x00447360
.globl _globl_ct_0x00447390
.globl _globl_ct_0x004473c0

start_0x00444d80_0x00447850:
// Snippet: asm, [0x00444d80, 0x00447815)
_jmp_addr_0x00444d80:    push               esi                                           // 0x00444d80    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00444d81    8b742408
                         push               esi                                           // 0x00444d85    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00444d86    e855df3f00
                         mov.s              edx, eax                                      // 0x00444d8b    8bd0
                         add                esp, 0x04                                     // 0x00444d8d    83c404
                         test               edx, edx                                      // 0x00444d90    85d2
                         {disp8} je         _jmp_addr_0x00444dac                          // 0x00444d92    7418
                         push               edi                                           // 0x00444d94    57
                         mov.s              ecx, esi                                      // 0x00444d95    8bce
                         shr                ecx, 2                                        // 0x00444d97    c1e902
                         xor.s              eax, eax                                      // 0x00444d9a    33c0
                         mov.s              edi, edx                                      // 0x00444d9c    8bfa
                         rep stosd                                                        // 0x00444d9e    f3ab
                         mov.s              ecx, esi                                      // 0x00444da0    8bce
                         and                ecx, 0x03                                     // 0x00444da2    83e103
                         rep stosb                                                        // 0x00444da5    f3aa
                         pop                edi                                           // 0x00444da7    5f
                         mov.s              eax, edx                                      // 0x00444da8    8bc2
                         pop                esi                                           // 0x00444daa    5e
                         ret                                                              // 0x00444dab    c3
_jmp_addr_0x00444dac:    mov.s              eax, edx                                      // 0x00444dac    8bc2
                         pop                esi                                           // 0x00444dae    5e
                         ret                                                              // 0x00444daf    c3
_jmp_addr_0x00444db0:    push               ecx                                           // 0x00444db0    51
                         push               ebx                                           // 0x00444db1    53
                         push               ebp                                           // 0x00444db2    55
                         push               esi                                           // 0x00444db3    56
                         mov.s              esi, ecx                                      // 0x00444db4    8bf1
                         {disp32} mov       ebx, dword ptr [esi + 0x000001b8]             // 0x00444db6    8b9eb8010000
                         xor.s              ebp, ebp                                      // 0x00444dbc    33ed
                         cmp.s              ebx, ebp                                      // 0x00444dbe    3bdd
                         push               edi                                           // 0x00444dc0    57
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00444dc1    89742410
                         {disp32} je        _jmp_addr_0x00444e86                          // 0x00444dc5    0f84bb000000
_jmp_addr_0x00444dcb:    {disp8} mov        eax, dword ptr [ebx + 0x48]                   // 0x00444dcb    8b4348
                         {disp32} mov       dword ptr [esi + 0x000001b8], eax             // 0x00444dce    8986b8010000
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x00444dd4    c705189dc50001000000
                         call               _jmp_addr_0x00445930                          // 0x00444dde    e84d0b0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x00444de3    a10c9dc500
                         cmp.s              eax, ebp                                      // 0x00444de8    3bc5
                         {disp8} je         _jmp_addr_0x00444dfb                          // 0x00444dea    740f
                         push               eax                                           // 0x00444dec    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00444ded    e86edf3f00
                         add                esp, 0x04                                     // 0x00444df2    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], ebp        // 0x00444df5    892d0c9dc500
_jmp_addr_0x00444dfb:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00444dfb    a1009dc500
                         cmp.s              eax, ebp                                      // 0x00444e00    3bc5
                         {disp8} je         _jmp_addr_0x00444e5f                          // 0x00444e02    745b
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x00444e04    8b4024
                         mov.s              esi, eax                                      // 0x00444e07    8bf0
                         shl                esi, 5                                        // 0x00444e09    c1e605
                         add.s              esi, eax                                      // 0x00444e0c    03f0
                         push               esi                                           // 0x00444e0e    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00444e0f    e8ccde3f00
                         mov.s              edx, eax                                      // 0x00444e14    8bd0
                         add                esp, 0x04                                     // 0x00444e16    83c404
                         cmp.s              edx, ebp                                      // 0x00444e19    3bd5
                         {disp8} je         _jmp_addr_0x00444e2f                          // 0x00444e1b    7412
                         mov.s              ecx, esi                                      // 0x00444e1d    8bce
                         shr                ecx, 2                                        // 0x00444e1f    c1e902
                         xor.s              eax, eax                                      // 0x00444e22    33c0
                         mov.s              edi, edx                                      // 0x00444e24    8bfa
                         rep stosd                                                        // 0x00444e26    f3ab
                         mov.s              ecx, esi                                      // 0x00444e28    8bce
                         and                ecx, 0x03                                     // 0x00444e2a    83e103
                         rep stosb                                                        // 0x00444e2d    f3aa
_jmp_addr_0x00444e2f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00444e2f    8b0d009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], edx        // 0x00444e35    89150c9dc500
                         {disp32} mov       eax, dword ptr [ecx + 0x000001b8]             // 0x00444e3b    8b81b8010000
                         cmp.s              eax, ebp                                      // 0x00444e41    3bc5
                         {disp8} je         _jmp_addr_0x00444e5b                          // 0x00444e43    7416
_jmp_addr_0x00444e45:    mov.s              esi, eax                                      // 0x00444e45    8bf0
                         mov.s              edi, edx                                      // 0x00444e47    8bfa
                         mov                ecx, 0x00000008                               // 0x00444e49    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00444e4e    f3a5
                         movsb                                                            // 0x00444e50    a4
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x00444e51    8b4048
                         add                edx, 0x21                                     // 0x00444e54    83c221
                         cmp.s              eax, ebp                                      // 0x00444e57    3bc5
                         {disp8} jne        _jmp_addr_0x00444e45                          // 0x00444e59    75ea
_jmp_addr_0x00444e5b:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00444e5b    8b742410
_jmp_addr_0x00444e5f:    {disp8} mov        ecx, dword ptr [ebx + 0x44]                   // 0x00444e5f    8b4b44
                         cmp.s              ecx, ebp                                      // 0x00444e62    3bcd
                         {disp8} je         _jmp_addr_0x00444e6f                          // 0x00444e64    7409
                         push               ebx                                           // 0x00444e66    53
                         call               _jmp_addr_0x00446700                          // 0x00444e67    e894180000
                         {disp8} mov        dword ptr [ebx + 0x44], ebp                   // 0x00444e6c    896b44
_jmp_addr_0x00444e6f:    push               ebx                                           // 0x00444e6f    53
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00444e70    e8ebde3f00
                         {disp32} mov       ebx, dword ptr [esi + 0x000001b8]             // 0x00444e75    8b9eb8010000
                         add                esp, 0x04                                     // 0x00444e7b    83c404
                         cmp.s              ebx, ebp                                      // 0x00444e7e    3bdd
                         {disp32} jne       _jmp_addr_0x00444dcb                          // 0x00444e80    0f8545ffffff
_jmp_addr_0x00444e86:    {disp32} mov       edi, dword ptr [esi + 0x000001bc]             // 0x00444e86    8bbebc010000
                         cmp.s              edi, ebp                                      // 0x00444e8c    3bfd
                         {disp32} mov       dword ptr [esi + 0x000001b8], ebp             // 0x00444e8e    89aeb8010000
                         {disp8} je         _jmp_addr_0x00444eca                          // 0x00444e94    7434
_jmp_addr_0x00444e96:    mov.s              esi, edi                                      // 0x00444e96    8bf7
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00444e98    8b4e30
                         cmp.s              ecx, ebp                                      // 0x00444e9b    3bcd
                         {disp8} mov        edi, dword ptr [edi + 0x10]                   // 0x00444e9d    8b7f10
                         {disp8} je         _jmp_addr_0x00444eaa                          // 0x00444ea0    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x00444ea2    e869e03f00
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x00444ea7    896e30
_jmp_addr_0x00444eaa:    {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x00444eaa    8b4e34
                         cmp.s              ecx, ebp                                      // 0x00444ead    3bcd
                         {disp8} je         _jmp_addr_0x00444eb9                          // 0x00444eaf    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x00444eb1    e85ae03f00
                         {disp8} mov        dword ptr [esi + 0x34], ebp                   // 0x00444eb6    896e34
_jmp_addr_0x00444eb9:    push               esi                                           // 0x00444eb9    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00444eba    e8a1de3f00
                         add                esp, 0x04                                     // 0x00444ebf    83c404
                         cmp.s              edi, ebp                                      // 0x00444ec2    3bfd
                         {disp8} jne        _jmp_addr_0x00444e96                          // 0x00444ec4    75d0
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00444ec6    8b742410
_jmp_addr_0x00444eca:    {disp32} mov       dword ptr [esi + 0x000001bc], ebp             // 0x00444eca    89aebc010000
                         dec                dword ptr [data_bytes + 0x293d10]             // 0x00444ed0    ff0d109dc500
                         call               _jmp_addr_0x004458b0                          // 0x00444ed6    e8d5090000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d08]        // 0x00444edb    a1089dc500
                         cmp.s              eax, ebp                                      // 0x00444ee0    3bc5
                         {disp8} je         _jmp_addr_0x00444ef3                          // 0x00444ee2    740f
                         push               eax                                           // 0x00444ee4    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00444ee5    e876de3f00
                         add                esp, 0x04                                     // 0x00444eea    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], ebp        // 0x00444eed    892d089dc500
_jmp_addr_0x00444ef3:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d10]        // 0x00444ef3    a1109dc500
                         cmp.s              eax, ebp                                      // 0x00444ef8    3bc5
                         {disp8} je         _jmp_addr_0x00444f4c                          // 0x00444efa    7450
                         mov.s              esi, eax                                      // 0x00444efc    8bf0
                         shl                esi, 5                                        // 0x00444efe    c1e605
                         add.s              esi, eax                                      // 0x00444f01    03f0
                         push               esi                                           // 0x00444f03    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00444f04    e8d7dd3f00
                         mov.s              edx, eax                                      // 0x00444f09    8bd0
                         add                esp, 0x04                                     // 0x00444f0b    83c404
                         cmp.s              edx, ebp                                      // 0x00444f0e    3bd5
                         {disp8} je         _jmp_addr_0x00444f24                          // 0x00444f10    7412
                         mov.s              ecx, esi                                      // 0x00444f12    8bce
                         shr                ecx, 2                                        // 0x00444f14    c1e902
                         xor.s              eax, eax                                      // 0x00444f17    33c0
                         mov.s              edi, edx                                      // 0x00444f19    8bfa
                         rep stosd                                                        // 0x00444f1b    f3ab
                         mov.s              ecx, esi                                      // 0x00444f1d    8bce
                         and                ecx, 0x03                                     // 0x00444f1f    83e103
                         rep stosb                                                        // 0x00444f22    f3aa
_jmp_addr_0x00444f24:    {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00444f24    a1fc9cc500
                         cmp.s              eax, ebp                                      // 0x00444f29    3bc5
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], edx        // 0x00444f2b    8915089dc500
                         {disp8} je         _jmp_addr_0x00444f4c                          // 0x00444f31    7419
_jmp_addr_0x00444f33:    mov.s              esi, eax                                      // 0x00444f33    8bf0
                         mov.s              edi, edx                                      // 0x00444f35    8bfa
                         mov                ecx, 0x00000008                               // 0x00444f37    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00444f3c    f3a5
                         movsb                                                            // 0x00444f3e    a4
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x00444f3f    8b80c0010000
                         add                edx, 0x21                                     // 0x00444f45    83c221
                         cmp.s              eax, ebp                                      // 0x00444f48    3bc5
                         {disp8} jne        _jmp_addr_0x00444f33                          // 0x00444f4a    75e7
_jmp_addr_0x00444f4c:    pop                edi                                           // 0x00444f4c    5f
                         pop                esi                                           // 0x00444f4d    5e
                         pop                ebp                                           // 0x00444f4e    5d
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x00444f4f    c705189dc50001000000
                         pop                ebx                                           // 0x00444f59    5b
                         pop                ecx                                           // 0x00444f5a    59
                         ret                                                              // 0x00444f5b    c3
                         nop                                                              // 0x00444f5c    90
                         nop                                                              // 0x00444f5d    90
                         nop                                                              // 0x00444f5e    90
                         nop                                                              // 0x00444f5f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00444f60    a1f89cc500
                         push               edi                                           // 0x00444f65    57
                         xor.s              edi, edi                                      // 0x00444f66    33ff
                         cmp.s              eax, edi                                      // 0x00444f68    3bc7
                         {disp32} jne       _jmp_addr_0x00444fff                          // 0x00444f6a    0f858f000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00444f70    8b0d5c19d000
                         push               esi                                           // 0x00444f76    56
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00444f77    e8d4081100
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x00444f7c    8b88a0030000
                         push               0x1                                           // 0x00444f82    6a01
                         call               _jmp_addr_0x0046c2e0                          // 0x00444f84    e857730200
                         push               0x00000256                                    // 0x00444f89    6856020000
                         push               0x009cdba0                                    // 0x00444f8e    68a0db9c00
                         push               0x28                                          // 0x00444f93    6a28
                         call               ___nw__FUl                                    // 0x00444f95    e8f6673900
                         mov.s              esi, eax                                      // 0x00444f9a    8bf0
                         add                esp, 0x0c                                     // 0x00444f9c    83c40c
                         cmp.s              esi, edi                                      // 0x00444f9f    3bf7
                         {disp8} je         _jmp_addr_0x00444fd2                          // 0x00444fa1    742f
                         mov                dword ptr [esi], 0x008c763c                   // 0x00444fa3    c7063c768c00
                         {disp8} mov        dword ptr [esi + 0x10], 0x00000001            // 0x00444fa9    c7461001000000
                         {disp8} mov        dword ptr [esi + 0x20], edi                   // 0x00444fb0    897e20
                         {disp8} mov        dword ptr [esi + 0x14], edi                   // 0x00444fb3    897e14
                         {disp8} mov        dword ptr [esi + 0x1c], edi                   // 0x00444fb6    897e1c
                         {disp8} mov        dword ptr [esi + 0x18], edi                   // 0x00444fb9    897e18
                         {disp8} mov        dword ptr [esi + 0x24], 0xffffffff            // 0x00444fbc    c74624ffffffff
                         {disp32} mov       dword ptr [data_bytes + 0x293cf8], esi        // 0x00444fc3    8935f89cc500
                         call               _jmp_addr_0x004455f0                          // 0x00444fc9    e822060000
                         mov.s              eax, esi                                      // 0x00444fce    8bc6
                         {disp8} jmp        _jmp_addr_0x00444fd4                          // 0x00444fd0    eb02
_jmp_addr_0x00444fd2:    xor.s              eax, eax                                      // 0x00444fd2    33c0
_jmp_addr_0x00444fd4:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00444fd4    8b4c240c
                         {disp32} mov       dword ptr [data_bytes + 0x293cf8], eax        // 0x00444fd8    a3f89cc500
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x00444fdd    894804
                         {disp8} mov        dword ptr [eax + 0x08], edi                   // 0x00444fe0    897808
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00000001            // 0x00444fe3    c7400c01000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293cf8]        // 0x00444fea    8b15f89cc500
                         push               edx                                           // 0x00444ff0    52
                         call               _jmp_addr_0x00842150                          // 0x00444ff1    e85ad13f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00444ff6    a1f89cc500
                         add                esp, 0x04                                     // 0x00444ffb    83c404
                         pop                esi                                           // 0x00444ffe    5e
_jmp_addr_0x00444fff:    pop                edi                                           // 0x00444fff    5f
                         ret                                                              // 0x00445000    c3
                         nop                                                              // 0x00445001    90
                         nop                                                              // 0x00445002    90
                         nop                                                              // 0x00445003    90
                         nop                                                              // 0x00445004    90
                         nop                                                              // 0x00445005    90
                         nop                                                              // 0x00445006    90
                         nop                                                              // 0x00445007    90
                         nop                                                              // 0x00445008    90
                         nop                                                              // 0x00445009    90
                         nop                                                              // 0x0044500a    90
                         nop                                                              // 0x0044500b    90
                         nop                                                              // 0x0044500c    90
                         nop                                                              // 0x0044500d    90
                         nop                                                              // 0x0044500e    90
                         nop                                                              // 0x0044500f    90
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00445010    a1f89cc500
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00445015    8b4810
                         test               ecx, ecx                                      // 0x00445018    85c9
                         {disp8} je         _jmp_addr_0x00445046                          // 0x0044501a    742a
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf474]        // 0x0044501c    a17454e800
                         test               eax, eax                                      // 0x00445021    85c0
                         {disp8} je         _jmp_addr_0x00445041                          // 0x00445023    741c
                         movzx              cx, byte ptr [data_bytes + 0x4bf478]          // 0x00445025    660fb60d7854e800
                         push               ecx                                           // 0x0044502d    51
                         push               eax                                           // 0x0044502e    50
                         call               _jmp_addr_0x00842030                          // 0x0044502f    e8fccf3f00
                         add                esp, 0x08                                     // 0x00445034    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x4bf474], 0x00000000 // 0x00445037    c7057454e80000000000
_jmp_addr_0x00445041:    {disp32} jmp       _jmp_addr_0x00842050                          // 0x00445041    e90ad03f00
_jmp_addr_0x00445046:    ret                                                              // 0x00445046    c3
                         nop                                                              // 0x00445047    90
                         nop                                                              // 0x00445048    90
                         nop                                                              // 0x00445049    90
                         nop                                                              // 0x0044504a    90
                         nop                                                              // 0x0044504b    90
                         nop                                                              // 0x0044504c    90
                         nop                                                              // 0x0044504d    90
                         nop                                                              // 0x0044504e    90
                         nop                                                              // 0x0044504f    90
?FinalDraw@GCameraEditor@@SAXXZ:
                                  {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00445050    a1f89cc500
                         test               eax, eax                                      // 0x00445055    85c0
                         push               esi                                           // 0x00445057    56
                         push               edi                                           // 0x00445058    57
                         {disp32} je        _jmp_addr_0x00445183                          // 0x00445059    0f8424010000
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x0044505f    8b4810
                         test               ecx, ecx                                      // 0x00445062    85c9
                         {disp32} jne       _jmp_addr_0x00445183                          // 0x00445064    0f8519010000
                         {disp8} mov        eax, dword ptr [eax + 0x14]                   // 0x0044506a    8b4014
                         cmp                eax, 0x05                                     // 0x0044506d    83f805
                         {disp8} je         _jmp_addr_0x004450b5                          // 0x00445070    7443
                         cmp                eax, 0x08                                     // 0x00445072    83f808
                         {disp32} jne       _jmp_addr_0x00445183                          // 0x00445075    0f8508010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x0044507b    a10c9dc500
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00445080    8b0d009dc500
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x00445086    8b5124
                         push               eax                                           // 0x00445089    50
                         push               edx                                           // 0x0044508a    52
                         call               _jmp_addr_0x00445190                          // 0x0044508b    e800010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00445090    a1f89cc500
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x00445095    8b4024
                         add                esp, 0x08                                     // 0x00445098    83c408
                         cmp                eax, -0x01                                    // 0x0044509b    83f8ff
                         {disp32} je        _jmp_addr_0x00445183                          // 0x0044509e    0f84df000000
                         push               eax                                           // 0x004450a4    50
                         call               _jmp_addr_0x00445c70                          // 0x004450a5    e8c60b0000
                         add                esp, 0x04                                     // 0x004450aa    83c404
                         pop                edi                                           // 0x004450ad    5f
                         {disp32} mov       dword ptr [data_bytes + 0x293d04], eax        // 0x004450ae    a3049dc500
                         pop                esi                                           // 0x004450b3    5e
                         ret                                                              // 0x004450b4    c3
_jmp_addr_0x004450b5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d08]        // 0x004450b5    8b0d089dc500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293d10]        // 0x004450bb    8b15109dc500
                         push               ecx                                           // 0x004450c1    51
                         push               edx                                           // 0x004450c2    52
                         call               _jmp_addr_0x00445190                          // 0x004450c3    e8c8000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x004450c8    a1f89cc500
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x004450cd    8b4024
                         add                esp, 0x08                                     // 0x004450d0    83c408
                         cmp                eax, -0x01                                    // 0x004450d3    83f8ff
                         {disp32} je        _jmp_addr_0x00445183                          // 0x004450d6    0f84a7000000
                         {disp32} mov       esi, dword ptr [data_bytes + 0x293d00]        // 0x004450dc    8b35009dc500
                         push               eax                                           // 0x004450e2    50
                         call               _jmp_addr_0x00445c40                          // 0x004450e3    e8580b0000
                         add                esp, 0x04                                     // 0x004450e8    83c404
                         cmp.s              esi, eax                                      // 0x004450eb    3bf0
                         {disp32} mov       dword ptr [data_bytes + 0x293d00], eax        // 0x004450ed    a3009dc500
                         {disp32} je        _jmp_addr_0x00445183                          // 0x004450f2    0f848b000000
                         {disp32} mov       dword ptr [data_bytes + 0x293d04], 0x00000000 // 0x004450f8    c705049dc50000000000
                         call               _jmp_addr_0x00445930                          // 0x00445102    e829080000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x00445107    a10c9dc500
                         test               eax, eax                                      // 0x0044510c    85c0
                         {disp8} je         _jmp_addr_0x00445123                          // 0x0044510e    7413
                         push               eax                                           // 0x00445110    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00445111    e84adc3f00
                         add                esp, 0x04                                     // 0x00445116    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], 0x00000000 // 0x00445119    c7050c9dc50000000000
_jmp_addr_0x00445123:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00445123    a1009dc500
                         test               eax, eax                                      // 0x00445128    85c0
                         {disp8} je         _jmp_addr_0x00445183                          // 0x0044512a    7457
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x0044512c    8b4024
                         mov.s              esi, eax                                      // 0x0044512f    8bf0
                         shl                esi, 5                                        // 0x00445131    c1e605
                         add.s              esi, eax                                      // 0x00445134    03f0
                         push               esi                                           // 0x00445136    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00445137    e8a4db3f00
                         mov.s              edx, eax                                      // 0x0044513c    8bd0
                         add                esp, 0x04                                     // 0x0044513e    83c404
                         test               edx, edx                                      // 0x00445141    85d2
                         {disp8} je         _jmp_addr_0x00445157                          // 0x00445143    7412
                         mov.s              ecx, esi                                      // 0x00445145    8bce
                         shr                ecx, 2                                        // 0x00445147    c1e902
                         xor.s              eax, eax                                      // 0x0044514a    33c0
                         mov.s              edi, edx                                      // 0x0044514c    8bfa
                         rep stosd                                                        // 0x0044514e    f3ab
                         mov.s              ecx, esi                                      // 0x00445150    8bce
                         and                ecx, 0x03                                     // 0x00445152    83e103
                         rep stosb                                                        // 0x00445155    f3aa
_jmp_addr_0x00445157:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00445157    8b0d009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], edx        // 0x0044515d    89150c9dc500
                         {disp32} mov       eax, dword ptr [ecx + 0x000001b8]             // 0x00445163    8b81b8010000
                         test               eax, eax                                      // 0x00445169    85c0
                         {disp8} je         _jmp_addr_0x00445183                          // 0x0044516b    7416
_jmp_addr_0x0044516d:    mov.s              esi, eax                                      // 0x0044516d    8bf0
                         mov.s              edi, edx                                      // 0x0044516f    8bfa
                         mov                ecx, 0x00000008                               // 0x00445171    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445176    f3a5
                         movsb                                                            // 0x00445178    a4
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x00445179    8b4048
                         add                edx, 0x21                                     // 0x0044517c    83c221
                         test               eax, eax                                      // 0x0044517f    85c0
                         {disp8} jne        _jmp_addr_0x0044516d                          // 0x00445181    75ea
_jmp_addr_0x00445183:    pop                edi                                           // 0x00445183    5f
                         pop                esi                                           // 0x00445184    5e
                         ret                                                              // 0x00445185    c3
                         nop                                                              // 0x00445186    90
                         nop                                                              // 0x00445187    90
                         nop                                                              // 0x00445188    90
                         nop                                                              // 0x00445189    90
                         nop                                                              // 0x0044518a    90
                         nop                                                              // 0x0044518b    90
                         nop                                                              // 0x0044518c    90
                         nop                                                              // 0x0044518d    90
                         nop                                                              // 0x0044518e    90
                         nop                                                              // 0x0044518f    90
_jmp_addr_0x00445190:    sub                esp, 0x28                                     // 0x00445190    83ec28
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00445193    a1f89cc500
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x00445198    8b4c242c
                         push               ebx                                           // 0x0044519c    53
                         push               ebp                                           // 0x0044519d    55
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0044519e    89481c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x004451a1    a1f89cc500
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x004451a6    8b481c
                         push               esi                                           // 0x004451a9    56
                         push               edi                                           // 0x004451aa    57
                         xor.s              edi, edi                                      // 0x004451ab    33ff
                         cmp                ecx, 0x3c                                     // 0x004451ad    83f93c
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x004451b0    897c2414
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x004451b4    897c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edi                   // 0x004451b8    897c242c
                         {disp8} jl         _jmp_addr_0x004451c6                          // 0x004451bc    7c08
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000001            // 0x004451be    c744242c01000000
_jmp_addr_0x004451c6:    cmp                dword ptr [eax + 0x18], edi                   // 0x004451c6    397818
                         {disp8} je         _jmp_addr_0x004451d3                          // 0x004451c9    7408
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000001            // 0x004451cb    c744242801000000
_jmp_addr_0x004451d3:    push               0x009cd6b4                                    // 0x004451d3    68b4d69c00
                         mov                ecx, 0x00ef6768                               // 0x004451d8    b96867ef00
                         call               _jmp_addr_0x00844a20                          // 0x004451dd    e83ef83f00
                         lea                esi, dword ptr [eax + eax * 0x2]              // 0x004451e2    8d3440
                         {disp32} mov       eax, dword ptr [data_bytes + 0x53076c]        // 0x004451e5    a16c67ef00
                         push               0x000000ff                                    // 0x004451ea    68ff000000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x004451ef    8d1480
                         push               0x000000ff                                    // 0x004451f2    68ff000000
                         shl                esi, 5                                        // 0x004451f7    c1e605
                         push               0x000000ff                                    // 0x004451fa    68ff000000
                         add                esi, 0x10                                     // 0x004451ff    83c610
                         {disp32} lea       ebx, dword ptr [edx * 0x4 + 0x00000054]       // 0x00445202    8d1c9554000000
                         call               dword ptr [data_bytes + 0x530524]             // 0x00445209    ff152465ef00
                         push               edi                                           // 0x0044520f    57
                         push               edi                                           // 0x00445210    57
                         push               edi                                           // 0x00445211    57
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x00445212    89442448
                         call               dword ptr [data_bytes + 0x530524]             // 0x00445216    ff152465ef00
                         push               eax                                           // 0x0044521c    50
                         {disp8} lea        ebp, dword ptr [ebx + 0x14]                   // 0x0044521d    8d6b14
                         push               ebp                                           // 0x00445220    55
                         {disp8} lea        edi, dword ptr [esi + 0x06]                   // 0x00445221    8d7e06
                         push               edi                                           // 0x00445224    57
                         push               0x14                                          // 0x00445225    6a14
                         push               0x6                                           // 0x00445227    6a06
                         call               _jmp_addr_0x00842bb0                          // 0x00445229    e882d93f00
                         {disp8} mov        eax, dword ptr [esp + 0x5c]                   // 0x0044522e    8b44245c
                         push               eax                                           // 0x00445232    50
                         {disp8} lea        ecx, dword ptr [ebp + -0x01]                  // 0x00445233    8d4dff
                         push               ecx                                           // 0x00445236    51
                         {disp8} lea        edx, dword ptr [edi + -0x01]                  // 0x00445237    8d57ff
                         push               edx                                           // 0x0044523a    52
                         push               0x15                                          // 0x0044523b    6a15
                         push               0x7                                           // 0x0044523d    6a07
                         call               _jmp_addr_0x00842bb0                          // 0x0044523f    e86cd93f00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00445244    a1c052e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00445249    8b0dc452e800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0044524f    8b15c452e800
                         add                esp, 0x40                                     // 0x00445255    83c440
                         cmp                eax, 0x06                                     // 0x00445258    83f806
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x0044525b    894c2434
                         mov.s              ecx, eax                                      // 0x0044525f    8bc8
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x00445261    89442430
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x00445265    89542424
                         {disp8} jge        _jmp_addr_0x00445272                          // 0x00445269    7d07
                         mov                ecx, 0x00000006                               // 0x0044526b    b906000000
                         {disp8} jmp        _jmp_addr_0x00445278                          // 0x00445270    eb06
_jmp_addr_0x00445272:    cmp.s              eax, edi                                      // 0x00445272    3bc7
                         {disp8} jle        _jmp_addr_0x00445278                          // 0x00445274    7e02
                         mov.s              ecx, edi                                      // 0x00445276    8bcf
_jmp_addr_0x00445278:    cmp                edx, 0x14                                     // 0x00445278    83fa14
                         {disp8} jge        _jmp_addr_0x00445287                          // 0x0044527b    7d0a
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000014            // 0x0044527d    c744242414000000
                         {disp8} jmp        _jmp_addr_0x0044528f                          // 0x00445285    eb08
_jmp_addr_0x00445287:    cmp.s              edx, ebp                                      // 0x00445287    3bd5
                         {disp8} jle        _jmp_addr_0x0044528f                          // 0x00445289    7e04
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0044528b    896c2424
_jmp_addr_0x0044528f:    add                ecx, -0x6                                     // 0x0044528f    83c1fa
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00445292    894c2430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x00445296    db442430
                         inc                esi                                           // 0x0044529a    46
                         {disp8} mov        dword ptr [esp + 0x30], esi                   // 0x0044529b    89742430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c50]             // 0x0044529f    d80d502c8c00
                         {disp8} fidiv      dword ptr [esp + 0x30]                        // 0x004452a5    da742430
                         call               _jmp_addr_0x007a1400                          // 0x004452a9    e852c13500
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x004452ae    8b542424
                         add                edx, -0x14                                    // 0x004452b2    83c2ec
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x004452b5    89542430
                         {disp8} fild       dword ptr [esp + 0x30]                        // 0x004452b9    db442430
                         inc                ebx                                           // 0x004452bd    43
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x004452be    895c2430
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e658]             // 0x004452c2    d80d58768c00
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x004452c8    89442420
                         {disp8} fidiv      dword ptr [esp + 0x30]                        // 0x004452cc    da742430
                         call               _jmp_addr_0x007a1400                          // 0x004452d0    e82bc13500
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x004452d5    89442424
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf350]          // 0x004452d9    a05053e800
                         test               al, 0x03                                      // 0x004452de    a803
                         {disp8} je         _jmp_addr_0x004452ff                          // 0x004452e0    741d
                         and                al, -0x03                                     // 0x004452e2    24fd
                         and                al, -0x02                                     // 0x004452e4    24fe
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], al          // 0x004452e6    a25053e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x004452eb    a1f89cc500
                         mov                ecx, 0x00000001                               // 0x004452f0    b901000000
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x004452f5    894820
                         {disp32} mov       al, byte ptr [data_bytes + 0x4bf350]          // 0x004452f8    a05053e800
                         {disp8} jmp        _jmp_addr_0x00445304                          // 0x004452fd    eb05
_jmp_addr_0x004452ff:    mov                ecx, 0x00000001                               // 0x004452ff    b901000000
_jmp_addr_0x00445304:    test               al, 0x08                                      // 0x00445304    a808
                         {disp8} je         _jmp_addr_0x00445315                          // 0x00445306    740d
                         and                al, -0x03                                     // 0x00445308    24fd
                         and                al, -0x09                                     // 0x0044530a    24f7
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0044530c    894c2414
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], al          // 0x00445310    a25053e800
_jmp_addr_0x00445315:    test               al, 0x04                                      // 0x00445315    a804
                         {disp8} je         _jmp_addr_0x00445326                          // 0x00445317    740d
                         and                al, -0x02                                     // 0x00445319    24fe
                         and                al, -0x05                                     // 0x0044531b    24fb
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0044531d    894c2414
                         {disp32} mov       byte ptr [data_bytes + 0x4bf350], al          // 0x00445321    a25053e800
_jmp_addr_0x00445326:    {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x00445326    a1f89cc500
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x0044532b    8b4820
                         xor.s              edi, edi                                      // 0x0044532e    33ff
                         cmp.s              ecx, edi                                      // 0x00445330    3bcf
                         {disp8} jne        _jmp_addr_0x00445338                          // 0x00445332    7504
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00445334    897c2414
_jmp_addr_0x00445338:    {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00445338    8b4818
                         mov                ebx, 0x00000004                               // 0x0044533b    bb04000000
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00445340    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x00445344    897c241c
_jmp_addr_0x00445348:    {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00445348    8b6c2418
                         {disp8} mov        edx, dword ptr [esp + 0x40]                   // 0x0044534c    8b542440
                         shl                ebp, 5                                        // 0x00445350    c1e505
                         add.s              edx, ebp                                      // 0x00445353    03d5
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x00445355    8b6c2418
                         xor.s              ecx, ecx                                      // 0x00445359    33c9
                         mov                esi, 0x00000018                               // 0x0044535b    be18000000
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00445360    894c2430
                         add.s              ebp, edx                                      // 0x00445364    03ea
_jmp_addr_0x00445366:    {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00445366    8b542418
                         cmp                edx, dword ptr [esp + 0x3c]                   // 0x0044536a    3b54243c
                         {disp32} jge       _jmp_addr_0x004454c3                          // 0x0044536e    0f8d4f010000
                         cmp                dword ptr [esp + 0x28], edi                   // 0x00445374    397c2428
                         {disp8} mov        byte ptr [esp + 0x10], 0x00                   // 0x00445378    c644241000
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x0044537d    c644241100
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                   // 0x00445382    c644241200
                         {disp8} mov        byte ptr [esp + 0x13], 0x00                   // 0x00445387    c644241300
                         {disp8} je         _jmp_addr_0x004453f2                          // 0x0044538c    7464
                         cmp                dword ptr [esp + 0x1c], edi                   // 0x0044538e    397c241c
                         {disp8} jne        _jmp_addr_0x004453f2                          // 0x00445392    755e
                         cmp.s              ecx, edi                                      // 0x00445394    3bcf
                         {disp8} jne        _jmp_addr_0x004453f2                          // 0x00445396    755a
                         cmp                dword ptr [esp + 0x24], edi                   // 0x00445398    397c2424
                         {disp8} jne        _jmp_addr_0x004453c8                          // 0x0044539c    752a
                         cmp                dword ptr [esp + 0x20], edi                   // 0x0044539e    397c2420
                         {disp8} jne        _jmp_addr_0x004453c8                          // 0x004453a2    7524
                         cmp                dword ptr [esp + 0x14], edi                   // 0x004453a4    397c2414
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                  // 0x004453a8    c6442410ff
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                   // 0x004453ad    c644241200
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x004453b2    c644241100
                         {disp8} je         _jmp_addr_0x004453d7                          // 0x004453b7    741e
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x004453b9    8b4818
                         add                ecx, -0x14                                    // 0x004453bc    83c1ec
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x004453bf    897c2414
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x004453c3    894818
                         {disp8} jmp        _jmp_addr_0x004453d7                          // 0x004453c6    eb0f
_jmp_addr_0x004453c8:    {disp8} mov        byte ptr [esp + 0x10], 0x00                   // 0x004453c8    c644241000
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x004453cd    c644241100
                         {disp8} mov        byte ptr [esp + 0x12], -0x01                  // 0x004453d2    c6442412ff
_jmp_addr_0x004453d7:    push               -0x1                                          // 0x004453d7    6aff
                         push               0x00ef6504                                    // 0x004453d9    680465ef00
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x004453de    8d442418
                         push               eax                                           // 0x004453e2    50
                         push               esi                                           // 0x004453e3    56
                         {disp8} lea        ecx, dword ptr [ebx + 0x06]                   // 0x004453e4    8d4b06
                         push               ecx                                           // 0x004453e7    51
                         push               0x009cdc5c                                    // 0x004453e8    685cdc9c00
                         {disp32} jmp       _jmp_addr_0x0044549f                          // 0x004453ed    e9ad000000
_jmp_addr_0x004453f2:    cmp                dword ptr [esp + 0x2c], edi                   // 0x004453f2    397c242c
                         {disp8} je         _jmp_addr_0x0044545d                          // 0x004453f6    7465
                         cmp                dword ptr [esp + 0x1c], 0x02                  // 0x004453f8    837c241c02
                         {disp8} jne        _jmp_addr_0x0044545d                          // 0x004453fd    755e
                         cmp                ecx, 0x13                                     // 0x004453ff    83f913
                         {disp8} jne        _jmp_addr_0x0044545d                          // 0x00445402    7559
                         cmp                dword ptr [esp + 0x24], 0x13                  // 0x00445404    837c242413
                         {disp8} jne        _jmp_addr_0x00445436                          // 0x00445409    752b
                         cmp                dword ptr [esp + 0x20], 0x02                  // 0x0044540b    837c242002
                         {disp8} jne        _jmp_addr_0x00445436                          // 0x00445410    7524
                         cmp                dword ptr [esp + 0x14], edi                   // 0x00445412    397c2414
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                  // 0x00445416    c6442410ff
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                   // 0x0044541b    c644241200
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x00445420    c644241100
                         {disp8} je         _jmp_addr_0x00445445                          // 0x00445425    741e
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x00445427    8b4818
                         add                ecx, 0x14                                     // 0x0044542a    83c114
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0044542d    897c2414
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x00445431    894818
                         {disp8} jmp        _jmp_addr_0x00445445                          // 0x00445434    eb0f
_jmp_addr_0x00445436:    {disp8} mov        byte ptr [esp + 0x10], 0x00                   // 0x00445436    c644241000
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x0044543b    c644241100
                         {disp8} mov        byte ptr [esp + 0x12], -0x01                  // 0x00445440    c6442412ff
_jmp_addr_0x00445445:    push               -0x1                                          // 0x00445445    6aff
                         push               0x00ef6504                                    // 0x00445447    680465ef00
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0044544c    8d542418
                         push               edx                                           // 0x00445450    52
                         push               esi                                           // 0x00445451    56
                         {disp8} lea        eax, dword ptr [ebx + 0x06]                   // 0x00445452    8d4306
                         push               eax                                           // 0x00445455    50
                         push               0x009cdc5c                                    // 0x00445456    685cdc9c00
                         {disp8} jmp        _jmp_addr_0x0044549f                          // 0x0044545b    eb42
_jmp_addr_0x0044545d:    cmp                ecx, dword ptr [esp + 0x24]                   // 0x0044545d    3b4c2424
                         {disp8} jne        _jmp_addr_0x0044548d                          // 0x00445461    752a
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x00445463    8b4c2420
                         cmp                dword ptr [esp + 0x1c], ecx                   // 0x00445467    394c241c
                         {disp8} jne        _jmp_addr_0x0044548d                          // 0x0044546b    7520
                         cmp                dword ptr [esp + 0x14], edi                   // 0x0044546d    397c2414
                         {disp8} mov        byte ptr [esp + 0x10], -0x01                  // 0x00445471    c6442410ff
                         {disp8} mov        byte ptr [esp + 0x12], 0x00                   // 0x00445476    c644241200
                         {disp8} mov        byte ptr [esp + 0x11], 0x00                   // 0x0044547b    c644241100
                         {disp8} je         _jmp_addr_0x0044548d                          // 0x00445480    740b
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00445482    897c2414
                         {disp8} mov        dword ptr [eax + 0x10], 0x00000001            // 0x00445486    c7401001000000
_jmp_addr_0x0044548d:    push               -0x1                                          // 0x0044548d    6aff
                         push               0x00ef6504                                    // 0x0044548f    680465ef00
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x00445494    8d542418
                         push               edx                                           // 0x00445498    52
                         push               esi                                           // 0x00445499    56
                         {disp8} lea        eax, dword ptr [ebx + 0x06]                   // 0x0044549a    8d4306
                         push               eax                                           // 0x0044549d    50
                         push               ebp                                           // 0x0044549e    55
_jmp_addr_0x0044549f:    mov                ecx, 0x00ef6768                               // 0x0044549f    b96867ef00
                         call               _jmp_addr_0x008447b0                          // 0x004454a4    e807f33f00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x53076c]        // 0x004454a9    8b0d6c67ef00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x004454af    a1f89cc500
                         {disp8} lea        esi, dword ptr [esi + ecx * 0x1 + 0x04]       // 0x004454b4    8d740e04
                         {disp8} inc        dword ptr [esp + 0x18]                        // 0x004454b8    ff442418
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x004454bc    8b4c2430
                         add                ebp, 0x21                                     // 0x004454c0    83c521
_jmp_addr_0x004454c3:    inc                ecx                                           // 0x004454c3    41
                         cmp                ecx, 0x14                                     // 0x004454c4    83f914
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x004454c7    894c2430
                         {disp32} jl        _jmp_addr_0x00445366                          // 0x004454cb    0f8c95feffff
                         push               0x009cd6b4                                    // 0x004454d1    68b4d69c00
                         mov                ecx, 0x00ef6768                               // 0x004454d6    b96867ef00
                         call               _jmp_addr_0x00844a20                          // 0x004454db    e840f53f00
                         shl                eax, 5                                        // 0x004454e0    c1e005
                         {disp8} lea        ebx, dword ptr [ebx + eax * 0x1 + 0x06]       // 0x004454e3    8d5c0306
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004454e7    8b44241c
                         inc                eax                                           // 0x004454eb    40
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x004454ec    8944241c
                         cmp                eax, 0x03                                     // 0x004454f0    83f803
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cf8]        // 0x004454f3    a1f89cc500
                         {disp32} jl        _jmp_addr_0x00445348                          // 0x004454f8    0f8c4afeffff
                         cmp                dword ptr [eax + 0x10], edi                   // 0x004454fe    397810
                         pop                edi                                           // 0x00445501    5f
                         pop                esi                                           // 0x00445502    5e
                         pop                ebp                                           // 0x00445503    5d
                         pop                ebx                                           // 0x00445504    5b
                         {disp8} je         _jmp_addr_0x0044551f                          // 0x00445505    7418
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00445507    8b4c2410
                         lea                edx, dword ptr [ecx + ecx * 0x4]              // 0x0044550b    8d1489
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0044550e    8b4818
                         lea                edx, dword ptr [ecx + edx * 0x4]              // 0x00445511    8d1491
                         add                edx, dword ptr [esp + 0x14]                   // 0x00445514    03542414
                         {disp8} mov        dword ptr [eax + 0x24], edx                   // 0x00445518    895024
                         add                esp, 0x28                                     // 0x0044551b    83c428
                         ret                                                              // 0x0044551e    c3
_jmp_addr_0x0044551f:    {disp8} mov        dword ptr [eax + 0x24], 0xffffffff            // 0x0044551f    c74024ffffffff
                         add                esp, 0x28                                     // 0x00445526    83c428
                         ret                                                              // 0x00445529    c3
                         call               dword ptr [__imp__TrackMouseEvent@4]          // 0x0044552a    ff151c908a00
?CreateSegFile@GCameraEditor@@SAXXZ:
                                      {disp32} mov       eax, dword ptr [data_bytes + 0x293cf4]        // 0x00445530    a1f49cc500
                         push               ebx                                           // 0x00445535    53
                         xor.s              ebx, ebx                                      // 0x00445536    33db
                         cmp.s              eax, ebx                                      // 0x00445538    3bc3
                         {disp32} jne       _jmp_addr_0x004455e7                          // 0x0044553a    0f85a7000000
                         push               esi                                           // 0x00445540    56
                         push               0x00000347                                    // 0x00445541    6847030000
                         push               0x009cdba0                                    // 0x00445546    68a0db9c00
                         push               0x6c                                          // 0x0044554b    6a6c
                         call               ___nw__FUl                                    // 0x0044554d    e83e623900
                         mov.s              esi, eax                                      // 0x00445552    8bf0
                         add                esp, 0x0c                                     // 0x00445554    83c40c
                         cmp.s              esi, ebx                                      // 0x00445557    3bf3
                         {disp8} je         _jmp_addr_0x004455ae                          // 0x00445559    7453
                         {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x0044555b    895e08
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x0044555e    895e04
                         {disp8} mov        dword ptr [esi + 0x38], ebx                   // 0x00445561    895e38
                         {disp8} mov        dword ptr [esi + 0x3c], ebx                   // 0x00445564    895e3c
                         push               edi                                           // 0x00445567    57
                         {disp8} lea        edi, dword ptr [esi + 0x14]                   // 0x00445568    8d7e14
                         xor.s              eax, eax                                      // 0x0044556b    33c0
                         mov                ecx, 0x00000008                               // 0x0044556d    b908000000
                         rep stosd                                                        // 0x00445572    f3ab
                         stosb                                                            // 0x00445574    aa
                         push               0x009cdc70                                    // 0x00445575    6870dc9c00
                         mov.s              ecx, esi                                      // 0x0044557a    8bce
                         mov                dword ptr [esi], 0x008c4d0c                   // 0x0044557c    c7060c4d8c00
                         {disp8} mov        dword ptr [esi + 0x68], ebx                   // 0x00445582    895e68
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x00445585    895e0c
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x00445588    895e10
                         {disp8} mov        dword ptr [esi + 0x40], ebx                   // 0x0044558b    895e40
                         {disp8} mov        dword ptr [esi + 0x44], ebx                   // 0x0044558e    895e44
                         {disp8} mov        dword ptr [esi + 0x48], ebx                   // 0x00445591    895e48
                         {disp8} mov        dword ptr [esi + 0x54], ebx                   // 0x00445594    895e54
                         {disp8} mov        dword ptr [esi + 0x58], ebx                   // 0x00445597    895e58
                         {disp8} mov        dword ptr [esi + 0x5c], ebx                   // 0x0044559a    895e5c
                         {disp8} mov        dword ptr [esi + 0x60], ebx                   // 0x0044559d    895e60
                         call               @SetName__6LHFileFPCc@12                      // 0x004455a0    e8eb7d3700
                         {disp32} mov       dword ptr [data_bytes + 0x293cf4], esi        // 0x004455a5    8935f49cc500
                         pop                edi                                           // 0x004455ab    5f
                         {disp8} jmp        _jmp_addr_0x004455b4                          // 0x004455ac    eb06
_jmp_addr_0x004455ae:    {disp32} mov       dword ptr [data_bytes + 0x293cf4], ebx        // 0x004455ae    891df49cc500
_jmp_addr_0x004455b4:    push               0x009cdc70                                    // 0x004455b4    6870dc9c00
                         call               dword ptr [__imp__GetFileAttributesA@4]       // 0x004455b9    ff15c0918a00
                         cmp                eax, -0x01                                    // 0x004455bf    83f8ff
                         pop                esi                                           // 0x004455c2    5e
                         {disp8} jne        _jmp_addr_0x004455db                          // 0x004455c3    7516
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x004455c5    8b0df49cc500
                         mov                eax, dword ptr [ecx]                          // 0x004455cb    8b01
                         push               ebx                                           // 0x004455cd    53
                         call               dword ptr [eax]                               // 0x004455ce    ff10
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x004455d0    8b0df49cc500
                         call               ?Close@LHFile@@QAEIXZ                         // 0x004455d6    e8e5853700
_jmp_addr_0x004455db:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x004455db    8b0df49cc500
                         mov                edx, dword ptr [ecx]                          // 0x004455e1    8b11
                         push               0x2                                           // 0x004455e3    6a02
                         call               dword ptr [edx]                               // 0x004455e5    ff12
_jmp_addr_0x004455e7:    pop                ebx                                           // 0x004455e7    5b
                         ret                                                              // 0x004455e8    c3
                         nop                                                              // 0x004455e9    90
                         nop                                                              // 0x004455ea    90
                         nop                                                              // 0x004455eb    90
                         nop                                                              // 0x004455ec    90
                         nop                                                              // 0x004455ed    90
                         nop                                                              // 0x004455ee    90
                         nop                                                              // 0x004455ef    90
_jmp_addr_0x004455f0:    push               esi                                           // 0x004455f0    56
                         call               ?CreateSegFile@GCameraEditor@@SAXXZ           // 0x004455f1    e83affffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d08]        // 0x004455f6    a1089dc500
                         xor.s              esi, esi                                      // 0x004455fb    33f6
                         cmp.s              eax, esi                                      // 0x004455fd    3bc6
                         {disp32} mov       dword ptr [data_bytes + 0x293d00], esi        // 0x004455ff    8935009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d04], esi        // 0x00445605    8935049dc500
                         {disp8} je         _jmp_addr_0x0044561c                          // 0x0044560b    740f
                         push               eax                                           // 0x0044560d    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0044560e    e84dd73f00
                         add                esp, 0x04                                     // 0x00445613    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], esi        // 0x00445616    8935089dc500
_jmp_addr_0x0044561c:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x0044561c    a10c9dc500
                         cmp.s              eax, esi                                      // 0x00445621    3bc6
                         {disp8} je         _jmp_addr_0x00445634                          // 0x00445623    740f
                         push               eax                                           // 0x00445625    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00445626    e835d73f00
                         add                esp, 0x04                                     // 0x0044562b    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], esi        // 0x0044562e    89350c9dc500
_jmp_addr_0x00445634:    call               _jmp_addr_0x00445a20                          // 0x00445634    e8e7030000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ec8], esi        // 0x00445639    8935c89eea00
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], esi        // 0x0044563f    8935189dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d1c], esi        // 0x00445645    89351c9dc500
                         {disp32} mov       dword ptr [data_bytes + 0x7a70], 0x00000001   // 0x0044564b    c70570da9c0001000000
                         pop                esi                                           // 0x00445655    5e
                         ret                                                              // 0x00445656    c3
                         nop                                                              // 0x00445657    90
                         nop                                                              // 0x00445658    90
                         nop                                                              // 0x00445659    90
                         nop                                                              // 0x0044565a    90
                         nop                                                              // 0x0044565b    90
                         nop                                                              // 0x0044565c    90
                         nop                                                              // 0x0044565d    90
                         nop                                                              // 0x0044565e    90
                         nop                                                              // 0x0044565f    90
_jmp_addr_0x00445660:    push               ecx                                           // 0x00445660    51
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00445661    8b0d5c19d000
                         push               ebp                                           // 0x00445667    55
                         xor.s              ebp, ebp                                      // 0x00445668    33ed
                         {disp32} mov       dword ptr [data_bytes + 0x293d00], ebp        // 0x0044566a    892d009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d04], ebp        // 0x00445670    892d049dc500
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00445676    e8d5011100
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x0044567b    8b88a0030000
                         push               ebp                                           // 0x00445681    55
                         call               _jmp_addr_0x0046c2e0                          // 0x00445682    e8596c0200
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00445687    8b0d5c19d000
                         call               ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x0044568d    e8be011100
                         {disp32} mov       ecx, dword ptr [eax + 0x000003a0]             // 0x00445692    8b88a0030000
                         push               0x1                                           // 0x00445698    6a01
                         call               _jmp_addr_0x0046c1b0                          // 0x0044569a    e8116b0200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x0044569f    a1fc9cc500
                         cmp.s              eax, ebp                                      // 0x004456a4    3bc5
                         {disp32} je        _jmp_addr_0x0044587e                          // 0x004456a6    0f84d2010000
                         push               ebx                                           // 0x004456ac    53
                         push               esi                                           // 0x004456ad    56
                         push               edi                                           // 0x004456ae    57
_jmp_addr_0x004456af:    mov.s              esi, eax                                      // 0x004456af    8bf0
                         cmp.s              esi, ebp                                      // 0x004456b1    3bf5
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x004456b3    8b80c0010000
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x004456b9    89742410
                         {disp32} mov       dword ptr [data_bytes + 0x293cfc], eax        // 0x004456bd    a3fc9cc500
                         {disp32} je        _jmp_addr_0x00445873                          // 0x004456c2    0f84ab010000
                         {disp32} mov       ebx, dword ptr [esi + 0x000001b8]             // 0x004456c8    8b9eb8010000
                         cmp.s              ebx, ebp                                      // 0x004456ce    3bdd
                         {disp32} je        _jmp_addr_0x00445791                          // 0x004456d0    0f84bb000000
_jmp_addr_0x004456d6:    {disp8} mov        eax, dword ptr [ebx + 0x48]                   // 0x004456d6    8b4348
                         {disp32} mov       dword ptr [esi + 0x000001b8], eax             // 0x004456d9    8986b8010000
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x004456df    c705189dc50001000000
                         call               _jmp_addr_0x00445930                          // 0x004456e9    e842020000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x004456ee    a10c9dc500
                         cmp.s              eax, ebp                                      // 0x004456f3    3bc5
                         {disp8} je         _jmp_addr_0x00445706                          // 0x004456f5    740f
                         push               eax                                           // 0x004456f7    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x004456f8    e863d63f00
                         add                esp, 0x04                                     // 0x004456fd    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], ebp        // 0x00445700    892d0c9dc500
_jmp_addr_0x00445706:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00445706    a1009dc500
                         cmp.s              eax, ebp                                      // 0x0044570b    3bc5
                         {disp8} je         _jmp_addr_0x0044576a                          // 0x0044570d    745b
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x0044570f    8b4024
                         mov.s              esi, eax                                      // 0x00445712    8bf0
                         shl                esi, 5                                        // 0x00445714    c1e605
                         add.s              esi, eax                                      // 0x00445717    03f0
                         push               esi                                           // 0x00445719    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0044571a    e8c1d53f00
                         mov.s              edx, eax                                      // 0x0044571f    8bd0
                         add                esp, 0x04                                     // 0x00445721    83c404
                         cmp.s              edx, ebp                                      // 0x00445724    3bd5
                         {disp8} je         _jmp_addr_0x0044573a                          // 0x00445726    7412
                         mov.s              ecx, esi                                      // 0x00445728    8bce
                         shr                ecx, 2                                        // 0x0044572a    c1e902
                         xor.s              eax, eax                                      // 0x0044572d    33c0
                         mov.s              edi, edx                                      // 0x0044572f    8bfa
                         rep stosd                                                        // 0x00445731    f3ab
                         mov.s              ecx, esi                                      // 0x00445733    8bce
                         and                ecx, 0x03                                     // 0x00445735    83e103
                         rep stosb                                                        // 0x00445738    f3aa
_jmp_addr_0x0044573a:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x0044573a    8b0d009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], edx        // 0x00445740    89150c9dc500
                         {disp32} mov       eax, dword ptr [ecx + 0x000001b8]             // 0x00445746    8b81b8010000
                         cmp.s              eax, ebp                                      // 0x0044574c    3bc5
                         {disp8} je         _jmp_addr_0x00445766                          // 0x0044574e    7416
_jmp_addr_0x00445750:    mov.s              esi, eax                                      // 0x00445750    8bf0
                         mov.s              edi, edx                                      // 0x00445752    8bfa
                         mov                ecx, 0x00000008                               // 0x00445754    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445759    f3a5
                         movsb                                                            // 0x0044575b    a4
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x0044575c    8b4048
                         add                edx, 0x21                                     // 0x0044575f    83c221
                         cmp.s              eax, ebp                                      // 0x00445762    3bc5
                         {disp8} jne        _jmp_addr_0x00445750                          // 0x00445764    75ea
_jmp_addr_0x00445766:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00445766    8b742410
_jmp_addr_0x0044576a:    {disp8} mov        ecx, dword ptr [ebx + 0x44]                   // 0x0044576a    8b4b44
                         cmp.s              ecx, ebp                                      // 0x0044576d    3bcd
                         {disp8} je         _jmp_addr_0x0044577a                          // 0x0044576f    7409
                         push               ebx                                           // 0x00445771    53
                         call               _jmp_addr_0x00446700                          // 0x00445772    e8890f0000
                         {disp8} mov        dword ptr [ebx + 0x44], ebp                   // 0x00445777    896b44
_jmp_addr_0x0044577a:    push               ebx                                           // 0x0044577a    53
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0044577b    e8e0d53f00
                         {disp32} mov       ebx, dword ptr [esi + 0x000001b8]             // 0x00445780    8b9eb8010000
                         add                esp, 0x04                                     // 0x00445786    83c404
                         cmp.s              ebx, ebp                                      // 0x00445789    3bdd
                         {disp32} jne       _jmp_addr_0x004456d6                          // 0x0044578b    0f8545ffffff
_jmp_addr_0x00445791:    {disp32} mov       edi, dword ptr [esi + 0x000001bc]             // 0x00445791    8bbebc010000
                         cmp.s              edi, ebp                                      // 0x00445797    3bfd
                         {disp32} mov       dword ptr [esi + 0x000001b8], ebp             // 0x00445799    89aeb8010000
                         {disp8} je         _jmp_addr_0x004457d5                          // 0x0044579f    7434
_jmp_addr_0x004457a1:    mov.s              esi, edi                                      // 0x004457a1    8bf7
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004457a3    8b4e30
                         cmp.s              ecx, ebp                                      // 0x004457a6    3bcd
                         {disp8} mov        edi, dword ptr [edi + 0x10]                   // 0x004457a8    8b7f10
                         {disp8} je         _jmp_addr_0x004457b5                          // 0x004457ab    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x004457ad    e85ed73f00
                         {disp8} mov        dword ptr [esi + 0x30], ebp                   // 0x004457b2    896e30
_jmp_addr_0x004457b5:    {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004457b5    8b4e34
                         cmp.s              ecx, ebp                                      // 0x004457b8    3bcd
                         {disp8} je         _jmp_addr_0x004457c4                          // 0x004457ba    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x004457bc    e84fd73f00
                         {disp8} mov        dword ptr [esi + 0x34], ebp                   // 0x004457c1    896e34
_jmp_addr_0x004457c4:    push               esi                                           // 0x004457c4    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x004457c5    e896d53f00
                         add                esp, 0x04                                     // 0x004457ca    83c404
                         cmp.s              edi, ebp                                      // 0x004457cd    3bfd
                         {disp8} jne        _jmp_addr_0x004457a1                          // 0x004457cf    75d0
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004457d1    8b742410
_jmp_addr_0x004457d5:    {disp32} mov       dword ptr [esi + 0x000001bc], ebp             // 0x004457d5    89aebc010000
                         dec                dword ptr [data_bytes + 0x293d10]             // 0x004457db    ff0d109dc500
                         call               _jmp_addr_0x004458b0                          // 0x004457e1    e8ca000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d08]        // 0x004457e6    a1089dc500
                         cmp.s              eax, ebp                                      // 0x004457eb    3bc5
                         {disp8} je         _jmp_addr_0x004457fe                          // 0x004457ed    740f
                         push               eax                                           // 0x004457ef    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x004457f0    e86bd53f00
                         add                esp, 0x04                                     // 0x004457f5    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], ebp        // 0x004457f8    892d089dc500
_jmp_addr_0x004457fe:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d10]        // 0x004457fe    a1109dc500
                         cmp.s              eax, ebp                                      // 0x00445803    3bc5
                         {disp8} je         _jmp_addr_0x0044585b                          // 0x00445805    7454
                         mov.s              esi, eax                                      // 0x00445807    8bf0
                         shl                esi, 5                                        // 0x00445809    c1e605
                         add.s              esi, eax                                      // 0x0044580c    03f0
                         push               esi                                           // 0x0044580e    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0044580f    e8ccd43f00
                         mov.s              edx, eax                                      // 0x00445814    8bd0
                         add                esp, 0x04                                     // 0x00445816    83c404
                         cmp.s              edx, ebp                                      // 0x00445819    3bd5
                         {disp8} je         _jmp_addr_0x0044582f                          // 0x0044581b    7412
                         mov.s              ecx, esi                                      // 0x0044581d    8bce
                         shr                ecx, 2                                        // 0x0044581f    c1e902
                         xor.s              eax, eax                                      // 0x00445822    33c0
                         mov.s              edi, edx                                      // 0x00445824    8bfa
                         rep stosd                                                        // 0x00445826    f3ab
                         mov.s              ecx, esi                                      // 0x00445828    8bce
                         and                ecx, 0x03                                     // 0x0044582a    83e103
                         rep stosb                                                        // 0x0044582d    f3aa
_jmp_addr_0x0044582f:    {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x0044582f    a1fc9cc500
                         cmp.s              eax, ebp                                      // 0x00445834    3bc5
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], edx        // 0x00445836    8915089dc500
                         {disp8} je         _jmp_addr_0x00445857                          // 0x0044583c    7419
_jmp_addr_0x0044583e:    mov.s              esi, eax                                      // 0x0044583e    8bf0
                         mov.s              edi, edx                                      // 0x00445840    8bfa
                         mov                ecx, 0x00000008                               // 0x00445842    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445847    f3a5
                         movsb                                                            // 0x00445849    a4
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x0044584a    8b80c0010000
                         add                edx, 0x21                                     // 0x00445850    83c221
                         cmp.s              eax, ebp                                      // 0x00445853    3bc5
                         {disp8} jne        _jmp_addr_0x0044583e                          // 0x00445855    75e7
_jmp_addr_0x00445857:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00445857    8b742410
_jmp_addr_0x0044585b:    push               esi                                           // 0x0044585b    56
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x0044585c    c705189dc50001000000
                         call               ??3@YAXPAX@Z                                  // 0x00445866    e82d963600
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x0044586b    a1fc9cc500
                         add                esp, 0x04                                     // 0x00445870    83c404
_jmp_addr_0x00445873:    cmp.s              eax, ebp                                      // 0x00445873    3bc5
                         {disp32} jne       _jmp_addr_0x004456af                          // 0x00445875    0f8534feffff
                         pop                edi                                           // 0x0044587b    5f
                         pop                esi                                           // 0x0044587c    5e
                         pop                ebx                                           // 0x0044587d    5b
_jmp_addr_0x0044587e:    {disp32} mov       edx, dword ptr [data_bytes + 0x293cf8]        // 0x0044587e    8b15f89cc500
                         push               edx                                           // 0x00445884    52
                         {disp32} mov       dword ptr [data_bytes + 0x293cfc], ebp        // 0x00445885    892dfc9cc500
                         call               ??3@YAXPAX@Z                                  // 0x0044588b    e808963600
                         push               ebp                                           // 0x00445890    55
                         {disp32} mov       dword ptr [data_bytes + 0x293cf8], ebp        // 0x00445891    892df89cc500
                         call               _jmp_addr_0x00842150                          // 0x00445897    e8b4c83f00
                         add                esp, 0x08                                     // 0x0044589c    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x4e3ec8], ebp        // 0x0044589f    892dc89eea00
                         pop                ebp                                           // 0x004458a5    5d
                         pop                ecx                                           // 0x004458a6    59
                         ret                                                              // 0x004458a7    c3
                         nop                                                              // 0x004458a8    90
                         nop                                                              // 0x004458a9    90
                         nop                                                              // 0x004458aa    90
                         nop                                                              // 0x004458ab    90
                         nop                                                              // 0x004458ac    90
                         nop                                                              // 0x004458ad    90
                         nop                                                              // 0x004458ae    90
                         nop                                                              // 0x004458af    90
_jmp_addr_0x004458b0:    push               ebx                                           // 0x004458b0    53
                         push               esi                                           // 0x004458b1    56
                         push               edi                                           // 0x004458b2    57
_jmp_addr_0x004458b3:    {disp32} mov       esi, dword ptr [data_bytes + 0x293cfc]        // 0x004458b3    8b35fc9cc500
                         xor.s              edi, edi                                      // 0x004458b9    33ff
                         xor.s              ebx, ebx                                      // 0x004458bb    33db
                         test               esi, esi                                      // 0x004458bd    85f6
                         {disp8} je         _jmp_addr_0x00445922                          // 0x004458bf    7461
_jmp_addr_0x004458c1:    {disp32} mov       eax, dword ptr [esi + 0x000001c0]             // 0x004458c1    8b86c0010000
                         push               eax                                           // 0x004458c7    50
                         mov.s              ecx, esi                                      // 0x004458c8    8bce
                         call               _jmp_addr_0x004459b0                          // 0x004458ca    e8e1000000
                         test               eax, eax                                      // 0x004458cf    85c0
                         {disp8} je         _jmp_addr_0x00445912                          // 0x004458d1    743f
                         test               edi, edi                                      // 0x004458d3    85ff
                         mov                ebx, 0x00000001                               // 0x004458d5    bb01000000
                         {disp8} je         _jmp_addr_0x004458ea                          // 0x004458da    740e
                         {disp32} mov       ecx, dword ptr [esi + 0x000001c0]             // 0x004458dc    8b8ec0010000
                         {disp32} mov       dword ptr [edi + 0x000001c0], ecx             // 0x004458e2    898fc0010000
                         {disp8} jmp        _jmp_addr_0x004458f6                          // 0x004458e8    eb0c
_jmp_addr_0x004458ea:    {disp32} mov       edx, dword ptr [esi + 0x000001c0]             // 0x004458ea    8b96c0010000
                         {disp32} mov       dword ptr [data_bytes + 0x293cfc], edx        // 0x004458f0    8915fc9cc500
_jmp_addr_0x004458f6:    {disp32} mov       eax, dword ptr [esi + 0x000001c0]             // 0x004458f6    8b86c0010000
                         {disp32} mov       ecx, dword ptr [eax + 0x000001c0]             // 0x004458fc    8b88c0010000
                         {disp32} mov       dword ptr [eax + 0x000001c0], esi             // 0x00445902    89b0c0010000
                         mov.s              edi, eax                                      // 0x00445908    8bf8
                         {disp32} mov       dword ptr [esi + 0x000001c0], ecx             // 0x0044590a    898ec0010000
                         {disp8} jmp        _jmp_addr_0x0044591a                          // 0x00445910    eb08
_jmp_addr_0x00445912:    mov.s              edi, esi                                      // 0x00445912    8bfe
                         {disp32} mov       esi, dword ptr [esi + 0x000001c0]             // 0x00445914    8bb6c0010000
_jmp_addr_0x0044591a:    test               esi, esi                                      // 0x0044591a    85f6
                         {disp8} jne        _jmp_addr_0x004458c1                          // 0x0044591c    75a3
                         test               ebx, ebx                                      // 0x0044591e    85db
                         {disp8} jne        _jmp_addr_0x004458b3                          // 0x00445920    7591
_jmp_addr_0x00445922:    pop                edi                                           // 0x00445922    5f
                         pop                esi                                           // 0x00445923    5e
                         pop                ebx                                           // 0x00445924    5b
                         ret                                                              // 0x00445925    c3
                         nop                                                              // 0x00445926    90
                         nop                                                              // 0x00445927    90
                         nop                                                              // 0x00445928    90
                         nop                                                              // 0x00445929    90
                         nop                                                              // 0x0044592a    90
                         nop                                                              // 0x0044592b    90
                         nop                                                              // 0x0044592c    90
                         nop                                                              // 0x0044592d    90
                         nop                                                              // 0x0044592e    90
                         nop                                                              // 0x0044592f    90
_jmp_addr_0x00445930:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00445930    a1009dc500
                         test               eax, eax                                      // 0x00445935    85c0
                         push               ebx                                           // 0x00445937    53
                         push               esi                                           // 0x00445938    56
                         push               edi                                           // 0x00445939    57
                         {disp8} je         _jmp_addr_0x004459a9                          // 0x0044593a    746d
_jmp_addr_0x0044593c:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x0044593c    a1009dc500
                         {disp32} mov       esi, dword ptr [eax + 0x000001b8]             // 0x00445941    8bb0b8010000
                         xor.s              edi, edi                                      // 0x00445947    33ff
                         xor.s              ebx, ebx                                      // 0x00445949    33db
                         test               esi, esi                                      // 0x0044594b    85f6
                         {disp8} je         _jmp_addr_0x004459a9                          // 0x0044594d    745a
_jmp_addr_0x0044594f:    {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x0044594f    8b4e48
                         push               ecx                                           // 0x00445952    51
                         mov.s              ecx, esi                                      // 0x00445953    8bce
                         call               _jmp_addr_0x004459d0                          // 0x00445955    e876000000
                         test               eax, eax                                      // 0x0044595a    85c0
                         {disp8} je         _jmp_addr_0x0044599c                          // 0x0044595c    743e
                         test               edi, edi                                      // 0x0044595e    85ff
                         mov                ebx, 0x00000001                               // 0x00445960    bb01000000
                         {disp8} je         _jmp_addr_0x0044597d                          // 0x00445965    7416
                         {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x00445967    8b5648
                         {disp8} mov        dword ptr [edi + 0x48], edx                   // 0x0044596a    895748
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0044596d    8b4648
                         {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x00445970    8b4848
                         {disp8} mov        dword ptr [eax + 0x48], esi                   // 0x00445973    897048
                         mov.s              edi, eax                                      // 0x00445976    8bf8
                         {disp8} mov        dword ptr [esi + 0x48], ecx                   // 0x00445978    894e48
                         {disp8} jmp        _jmp_addr_0x004459a1                          // 0x0044597b    eb24
_jmp_addr_0x0044597d:    {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0044597d    8b4648
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00445980    8b0d009dc500
                         {disp32} mov       dword ptr [ecx + 0x000001b8], eax             // 0x00445986    8981b8010000
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x0044598c    8b4648
                         {disp8} mov        ecx, dword ptr [eax + 0x48]                   // 0x0044598f    8b4848
                         {disp8} mov        dword ptr [eax + 0x48], esi                   // 0x00445992    897048
                         mov.s              edi, eax                                      // 0x00445995    8bf8
                         {disp8} mov        dword ptr [esi + 0x48], ecx                   // 0x00445997    894e48
                         {disp8} jmp        _jmp_addr_0x004459a1                          // 0x0044599a    eb05
_jmp_addr_0x0044599c:    mov.s              edi, esi                                      // 0x0044599c    8bfe
                         {disp8} mov        esi, dword ptr [esi + 0x48]                   // 0x0044599e    8b7648
_jmp_addr_0x004459a1:    test               esi, esi                                      // 0x004459a1    85f6
                         {disp8} jne        _jmp_addr_0x0044594f                          // 0x004459a3    75aa
                         test               ebx, ebx                                      // 0x004459a5    85db
                         {disp8} jne        _jmp_addr_0x0044593c                          // 0x004459a7    7593
_jmp_addr_0x004459a9:    pop                edi                                           // 0x004459a9    5f
                         pop                esi                                           // 0x004459aa    5e
                         pop                ebx                                           // 0x004459ab    5b
                         ret                                                              // 0x004459ac    c3
                         nop                                                              // 0x004459ad    90
                         nop                                                              // 0x004459ae    90
                         nop                                                              // 0x004459af    90
_jmp_addr_0x004459b0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004459b0    8b442404
                         test               eax, eax                                      // 0x004459b4    85c0
                         {disp8} jne        _jmp_addr_0x004459bb                          // 0x004459b6    7503
                         ret                0x0004                                        // 0x004459b8    c20400
_jmp_addr_0x004459bb:    push               eax                                           // 0x004459bb    50
                         call               _jmp_addr_0x004459f0                          // 0x004459bc    e82f000000
                         ret                0x0004                                        // 0x004459c1    c20400
                         nop                                                              // 0x004459c4    90
                         nop                                                              // 0x004459c5    90
                         nop                                                              // 0x004459c6    90
                         nop                                                              // 0x004459c7    90
                         nop                                                              // 0x004459c8    90
                         nop                                                              // 0x004459c9    90
                         nop                                                              // 0x004459ca    90
                         nop                                                              // 0x004459cb    90
                         nop                                                              // 0x004459cc    90
                         nop                                                              // 0x004459cd    90
                         nop                                                              // 0x004459ce    90
                         nop                                                              // 0x004459cf    90
_jmp_addr_0x004459d0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004459d0    8b442404
                         test               eax, eax                                      // 0x004459d4    85c0
                         {disp8} jne        _jmp_addr_0x004459db                          // 0x004459d6    7503
                         ret                0x0004                                        // 0x004459d8    c20400
_jmp_addr_0x004459db:    push               eax                                           // 0x004459db    50
                         call               _jmp_addr_0x004459f0                          // 0x004459dc    e80f000000
                         ret                0x0004                                        // 0x004459e1    c20400
                         nop                                                              // 0x004459e4    90
                         nop                                                              // 0x004459e5    90
                         nop                                                              // 0x004459e6    90
                         nop                                                              // 0x004459e7    90
                         nop                                                              // 0x004459e8    90
                         nop                                                              // 0x004459e9    90
                         nop                                                              // 0x004459ea    90
                         nop                                                              // 0x004459eb    90
                         nop                                                              // 0x004459ec    90
                         nop                                                              // 0x004459ed    90
                         nop                                                              // 0x004459ee    90
                         nop                                                              // 0x004459ef    90
_jmp_addr_0x004459f0:    push               esi                                           // 0x004459f0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x004459f1    8b742408
                         test               esi, esi                                      // 0x004459f5    85f6
                         {disp8} je         _jmp_addr_0x00445a1a                          // 0x004459f7    7421
                         mov.s              edx, ecx                                      // 0x004459f9    8bd1
_jmp_addr_0x004459fb:    mov                al, byte ptr [edx]                            // 0x004459fb    8a02
                         mov                cl, byte ptr [esi]                            // 0x004459fd    8a0e
                         cmp.s              al, cl                                        // 0x004459ff    3ac1
                         {disp8} jg         _jmp_addr_0x00445a11                          // 0x00445a01    7f0e
                         {disp8} jne        _jmp_addr_0x00445a1a                          // 0x00445a03    7515
                         test               al, al                                        // 0x00445a05    84c0
                         {disp8} je         _jmp_addr_0x00445a1a                          // 0x00445a07    7411
                         inc                edx                                           // 0x00445a09    42
                         test               cl, cl                                        // 0x00445a0a    84c9
                         {disp8} je         _jmp_addr_0x00445a11                          // 0x00445a0c    7403
                         inc                esi                                           // 0x00445a0e    46
                         {disp8} jmp        _jmp_addr_0x004459fb                          // 0x00445a0f    ebea
_jmp_addr_0x00445a11:    mov                eax, 0x00000001                               // 0x00445a11    b801000000
                         pop                esi                                           // 0x00445a16    5e
                         ret                0x0004                                        // 0x00445a17    c20400
_jmp_addr_0x00445a1a:    xor.s              eax, eax                                      // 0x00445a1a    33c0
                         pop                esi                                           // 0x00445a1c    5e
                         ret                0x0004                                        // 0x00445a1d    c20400
_jmp_addr_0x00445a20:    sub                esp, 0x3c                                     // 0x00445a20    83ec3c
                         push               esi                                           // 0x00445a23    56
                         push               edi                                           // 0x00445a24    57
                         xor.s              esi, esi                                      // 0x00445a25    33f6
                         xor.s              eax, eax                                      // 0x00445a27    33c0
                         {disp8} mov        dword ptr [esp + 0x3c], esi                   // 0x00445a29    8974243c
                         {disp8} mov        dword ptr [esp + 0x40], esi                   // 0x00445a2d    89742440
                         mov                ecx, 0x00000008                               // 0x00445a31    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x00445a36    8d7c2418
                         rep stosd                                                        // 0x00445a3a    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00445a3c    8b0df49cc500
                         stosb                                                            // 0x00445a42    aa
                         push               0x1                                           // 0x00445a43    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00445a45    8d44241c
                         push               eax                                           // 0x00445a49    50
                         push               0x009cdc84                                    // 0x00445a4a    6884dc9c00
                         call               @GetSegment__6LHFileFPcP9LHSegmenti@20        // 0x00445a4f    e87c833700
                         cmp                eax, 0x02                                     // 0x00445a54    83f802
                         {disp32} je        _jmp_addr_0x00445c3a                          // 0x00445a57    0f84dd010000
                         {disp8} mov        ecx, dword ptr [esp + 0x40]                   // 0x00445a5d    8b4c2440
                         cmp                dword ptr [ecx], 0x02                         // 0x00445a61    833902
                         {disp32} jne       _jmp_addr_0x00445c2f                          // 0x00445a64    0f85c5010000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00445a6a    8b5104
                         {disp8} lea        eax, dword ptr [ecx + 0x08]                   // 0x00445a6d    8d4108
                         add                ecx, 0x4                                      // 0x00445a70    83c104
                         cmp.s              edx, esi                                      // 0x00445a73    3bd6
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x00445a75    89742410
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00445a79    894c2414
                         {disp32} jle       _jmp_addr_0x00445c2f                          // 0x00445a7d    0f8eac010000
                         push               ebx                                           // 0x00445a83    53
                         push               ebp                                           // 0x00445a84    55
                         {disp8} jmp        _jmp_addr_0x00445a8b                          // 0x00445a85    eb04
_jmp_addr_0x00445a87:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00445a87    8b442410
_jmp_addr_0x00445a8b:    push               0x00000442                                    // 0x00445a8b    6842040000
                         mov.s              ebx, eax                                      // 0x00445a90    8bd8
                         add                eax, 0x000001c4                               // 0x00445a92    05c4010000
                         push               0x009cdba0                                    // 0x00445a97    68a0db9c00
                         push               0x000001c4                                    // 0x00445a9c    68c4010000
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00445aa1    8944241c
                         call               ___nw__FUl                                    // 0x00445aa5    e8e65c3900
                         mov.s              ebp, eax                                      // 0x00445aaa    8be8
                         add                esp, 0x0c                                     // 0x00445aac    83c40c
                         test               ebp, ebp                                      // 0x00445aaf    85ed
                         {disp32} je        _jmp_addr_0x00445b90                          // 0x00445ab1    0f84d9000000
                         mov                ecx, 0x00000008                               // 0x00445ab7    b908000000
                         mov.s              esi, ebx                                      // 0x00445abc    8bf3
                         mov.s              edi, ebp                                      // 0x00445abe    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445ac0    f3a5
                         movsb                                                            // 0x00445ac2    a4
                         {disp8} mov        byte ptr [ebp + 0x20], 0x00                   // 0x00445ac3    c6452000
                         xor.s              esi, esi                                      // 0x00445ac7    33f6
                         {disp32} mov       dword ptr [ebp + 0x000001b8], esi             // 0x00445ac9    89b5b8010000
                         {disp32} mov       dword ptr [ebp + 0x000001bc], esi             // 0x00445acf    89b5bc010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cfc]        // 0x00445ad5    8b0dfc9cc500
                         {disp32} mov       dword ptr [ebp + 0x000001c0], ecx             // 0x00445adb    898dc0010000
                         {disp32} mov       dword ptr [data_bytes + 0x293cfc], ebp        // 0x00445ae1    892dfc9cc500
                         {disp8} mov        dword ptr [ebp + 0x24], esi                   // 0x00445ae7    897524
                         {disp32} inc       dword ptr [data_bytes + 0x293d10]             // 0x00445aea    ff05109dc500
                         mov                eax, 0xbf800000                               // 0x00445af0    b8000080bf
                         {disp8} lea        edi, dword ptr [ebp + 0x28]                   // 0x00445af5    8d7d28
                         mov                ecx, 0x00000032                               // 0x00445af8    b932000000
                         rep stosd                                                        // 0x00445afd    f3ab
                         xor.s              eax, eax                                      // 0x00445aff    33c0
                         {disp32} lea       edi, dword ptr [ebp + 0x000000f0]             // 0x00445b01    8dbdf0000000
                         mov                ecx, 0x00000032                               // 0x00445b07    b932000000
                         rep stosd                                                        // 0x00445b0c    f3ab
                         call               _jmp_addr_0x004458b0                          // 0x00445b0e    e89dfdffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d08]        // 0x00445b13    a1089dc500
                         cmp.s              eax, esi                                      // 0x00445b18    3bc6
                         {disp8} je         _jmp_addr_0x00445b2b                          // 0x00445b1a    740f
                         push               eax                                           // 0x00445b1c    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00445b1d    e83ed23f00
                         add                esp, 0x04                                     // 0x00445b22    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], esi        // 0x00445b25    8935089dc500
_jmp_addr_0x00445b2b:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d10]        // 0x00445b2b    a1109dc500
                         cmp.s              eax, esi                                      // 0x00445b30    3bc6
                         {disp8} je         _jmp_addr_0x00445b84                          // 0x00445b32    7450
                         mov.s              esi, eax                                      // 0x00445b34    8bf0
                         shl                esi, 5                                        // 0x00445b36    c1e605
                         add.s              esi, eax                                      // 0x00445b39    03f0
                         push               esi                                           // 0x00445b3b    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00445b3c    e89fd13f00
                         mov.s              edx, eax                                      // 0x00445b41    8bd0
                         add                esp, 0x04                                     // 0x00445b43    83c404
                         test               edx, edx                                      // 0x00445b46    85d2
                         {disp8} je         _jmp_addr_0x00445b5c                          // 0x00445b48    7412
                         mov.s              ecx, esi                                      // 0x00445b4a    8bce
                         shr                ecx, 2                                        // 0x00445b4c    c1e902
                         xor.s              eax, eax                                      // 0x00445b4f    33c0
                         mov.s              edi, edx                                      // 0x00445b51    8bfa
                         rep stosd                                                        // 0x00445b53    f3ab
                         mov.s              ecx, esi                                      // 0x00445b55    8bce
                         and                ecx, 0x03                                     // 0x00445b57    83e103
                         rep stosb                                                        // 0x00445b5a    f3aa
_jmp_addr_0x00445b5c:    {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00445b5c    a1fc9cc500
                         test               eax, eax                                      // 0x00445b61    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x293d08], edx        // 0x00445b63    8915089dc500
                         {disp8} je         _jmp_addr_0x00445b84                          // 0x00445b69    7419
_jmp_addr_0x00445b6b:    mov.s              esi, eax                                      // 0x00445b6b    8bf0
                         mov.s              edi, edx                                      // 0x00445b6d    8bfa
                         mov                ecx, 0x00000008                               // 0x00445b6f    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445b74    f3a5
                         movsb                                                            // 0x00445b76    a4
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x00445b77    8b80c0010000
                         add                edx, 0x21                                     // 0x00445b7d    83c221
                         test               eax, eax                                      // 0x00445b80    85c0
                         {disp8} jne        _jmp_addr_0x00445b6b                          // 0x00445b82    75e7
_jmp_addr_0x00445b84:    {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x00445b84    c705189dc50001000000
                         {disp8} jmp        _jmp_addr_0x00445b92                          // 0x00445b8e    eb02
_jmp_addr_0x00445b90:    xor.s              ebp, ebp                                      // 0x00445b90    33ed
_jmp_addr_0x00445b92:    {disp8} lea        esi, dword ptr [ebx + 0x28]                   // 0x00445b92    8d7328
                         {disp8} lea        edi, dword ptr [ebp + 0x28]                   // 0x00445b95    8d7d28
                         mov                ecx, 0x00000032                               // 0x00445b98    b932000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445b9d    f3a5
                         {disp32} lea       esi, dword ptr [ebx + 0x000000f0]             // 0x00445b9f    8db3f0000000
                         {disp32} lea       edi, dword ptr [ebp + 0x000000f0]             // 0x00445ba5    8dbdf0000000
                         mov                ecx, 0x00000032                               // 0x00445bab    b932000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445bb0    f3a5
                         {disp8} mov        eax, dword ptr [ebx + 0x24]                   // 0x00445bb2    8b4324
                         xor.s              edi, edi                                      // 0x00445bb5    33ff
                         cmp.s              eax, edi                                      // 0x00445bb7    3bc7
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x00445bb9    897c2414
                         {disp8} jle        _jmp_addr_0x00445c16                          // 0x00445bbd    7e57
_jmp_addr_0x00445bbf:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00445bbf    8b4c2410
                         mov.s              eax, ecx                                      // 0x00445bc3    8bc1
                         push               eax                                           // 0x00445bc5    50
                         add                ecx, 0x4c                                     // 0x00445bc6    83c14c
                         push               ebp                                           // 0x00445bc9    55
                         push               eax                                           // 0x00445bca    50
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00445bcb    894c241c
                         {disp32} mov       dword ptr [data_bytes + 0x293d00], ebp        // 0x00445bcf    892d009dc500
                         call               _jmp_addr_0x00445ee0                          // 0x00445bd5    e806030000
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x00445bda    8b4844
                         add                esp, 0x0c                                     // 0x00445bdd    83c40c
                         test               ecx, ecx                                      // 0x00445be0    85c9
                         {disp8} je         _jmp_addr_0x00445c06                          // 0x00445be2    7422
                         mov                edx, dword ptr [ecx]                          // 0x00445be4    8b11
                         {disp8} mov        edx, dword ptr [ebp + edx * 0x4 + 0x28]       // 0x00445be6    8b549528
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x00445bea    89510c
                         {disp8} mov        eax, dword ptr [eax + 0x44]                   // 0x00445bed    8b4044
                         mov                ecx, dword ptr [eax]                          // 0x00445bf0    8b08
                         mov                esi, 0x00000001                               // 0x00445bf2    be01000000
                         shl                esi, cl                                       // 0x00445bf7    d3e6
                         test               edi, esi                                      // 0x00445bf9    85f7
                         {disp8} jne        _jmp_addr_0x00445c06                          // 0x00445bfb    7509
                         mov.s              ecx, eax                                      // 0x00445bfd    8bc8
                         call               _jmp_addr_0x004465e0                          // 0x00445bff    e8dc090000
                         or.s               edi, esi                                      // 0x00445c04    0bfe
_jmp_addr_0x00445c06:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00445c06    8b442414
                         {disp8} mov        ecx, dword ptr [ebx + 0x24]                   // 0x00445c0a    8b4b24
                         inc                eax                                           // 0x00445c0d    40
                         cmp.s              eax, ecx                                      // 0x00445c0e    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00445c10    89442414
                         {disp8} jl         _jmp_addr_0x00445bbf                          // 0x00445c14    7ca9
_jmp_addr_0x00445c16:    {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00445c16    8b442418
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x00445c1a    8b4c241c
                         mov                edx, dword ptr [ecx]                          // 0x00445c1e    8b11
                         inc                eax                                           // 0x00445c20    40
                         cmp.s              eax, edx                                      // 0x00445c21    3bc2
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x00445c23    89442418
                         {disp32} jl        _jmp_addr_0x00445a87                          // 0x00445c27    0f8c5afeffff
                         pop                ebp                                           // 0x00445c2d    5d
                         pop                ebx                                           // 0x00445c2e    5b
_jmp_addr_0x00445c2f:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00445c2f    8b0df49cc500
                         call               _jmp_addr_0x007bda70                          // 0x00445c35    e8367e3700
_jmp_addr_0x00445c3a:    pop                edi                                           // 0x00445c3a    5f
                         pop                esi                                           // 0x00445c3b    5e
                         add                esp, 0x3c                                     // 0x00445c3c    83c43c
                         ret                                                              // 0x00445c3f    c3
_jmp_addr_0x00445c40:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00445c40    8b4c2404
                         test               ecx, ecx                                      // 0x00445c44    85c9
                         {disp8} jl         _jmp_addr_0x00445c63                          // 0x00445c46    7c1b
                         cmp                ecx, dword ptr [data_bytes + 0x293d10]        // 0x00445c48    3b0d109dc500
                         {disp8} jge        _jmp_addr_0x00445c63                          // 0x00445c4e    7d13
                         test               ecx, ecx                                      // 0x00445c50    85c9
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00445c52    a1fc9cc500
                         {disp8} je         _jmp_addr_0x00445c68                          // 0x00445c57    740f
_jmp_addr_0x00445c59:    dec                ecx                                           // 0x00445c59    49
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x00445c5a    8b80c0010000
                         {disp8} jne        _jmp_addr_0x00445c59                          // 0x00445c60    75f7
                         ret                                                              // 0x00445c62    c3
_jmp_addr_0x00445c63:    {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00445c63    a1fc9cc500
_jmp_addr_0x00445c68:    ret                                                              // 0x00445c68    c3
                         nop                                                              // 0x00445c69    90
                         nop                                                              // 0x00445c6a    90
                         nop                                                              // 0x00445c6b    90
                         nop                                                              // 0x00445c6c    90
                         nop                                                              // 0x00445c6d    90
                         nop                                                              // 0x00445c6e    90
                         nop                                                              // 0x00445c6f    90
_jmp_addr_0x00445c70:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00445c70    a1009dc500
                         test               eax, eax                                      // 0x00445c75    85c0
                         {disp8} jne        _jmp_addr_0x00445c7a                          // 0x00445c77    7501
                         ret                                                              // 0x00445c79    c3
_jmp_addr_0x00445c7a:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00445c7a    8b4c2404
                         test               ecx, ecx                                      // 0x00445c7e    85c9
                         {disp8} jl         _jmp_addr_0x00445c98                          // 0x00445c80    7c16
                         cmp                ecx, dword ptr [eax + 0x24]                   // 0x00445c82    3b4824
                         {disp8} jge        _jmp_addr_0x00445c98                          // 0x00445c85    7d11
                         test               ecx, ecx                                      // 0x00445c87    85c9
                         {disp32} mov       eax, dword ptr [eax + 0x000001b8]             // 0x00445c89    8b80b8010000
                         {disp8} je         _jmp_addr_0x00445c9e                          // 0x00445c8f    740d
_jmp_addr_0x00445c91:    dec                ecx                                           // 0x00445c91    49
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x00445c92    8b4048
                         {disp8} jne        _jmp_addr_0x00445c91                          // 0x00445c95    75fa
                         ret                                                              // 0x00445c97    c3
_jmp_addr_0x00445c98:    {disp32} mov       eax, dword ptr [eax + 0x000001b8]             // 0x00445c98    8b80b8010000
_jmp_addr_0x00445c9e:    ret                                                              // 0x00445c9e    c3
                         nop                                                              // 0x00445c9f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00445ca0    8b442404
                         dec                eax                                           // 0x00445ca4    48
                         {disp8} jne        _jmp_addr_0x00445cac                          // 0x00445ca5    7505
                         mov                eax, dword ptr [ecx]                          // 0x00445ca7    8b01
                         call               dword ptr [eax + 8]                           // 0x00445ca9    ff5008
_jmp_addr_0x00445cac:    ret                0x0008                                        // 0x00445cac    c20800
                         nop                                                              // 0x00445caf    90
                         sub                esp, 0x24                                     // 0x00445cb0    83ec24
                         push               ebx                                           // 0x00445cb3    53
                         mov                al, -0x01                                     // 0x00445cb4    b0ff
                         push               esi                                           // 0x00445cb6    56
                         {disp8} mov        esi, dword ptr [esp + 0x30]                   // 0x00445cb7    8b742430
                         {disp8} mov        byte ptr [esp + 0x09], al                     // 0x00445cbb    88442409
                         {disp8} mov        byte ptr [esp + 0x0b], al                     // 0x00445cbf    8844240b
                         {disp8} mov        byte ptr [esp + 0x0c], al                     // 0x00445cc3    8844240c
                         {disp8} mov        byte ptr [esp + 0x0f], al                     // 0x00445cc7    8844240f
                         {disp8} mov        byte ptr [esp + 0x11], al                     // 0x00445ccb    88442411
                         {disp8} mov        byte ptr [esp + 0x12], al                     // 0x00445ccf    88442412
                         {disp8} mov        byte ptr [esp + 0x13], al                     // 0x00445cd3    88442413
                         mov.s              eax, esi                                      // 0x00445cd7    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x00445cd9    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00445cdb    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00445cde    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00445ce1    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00445ce5    89542418
                         mov.s              ecx, esi                                      // 0x00445ce9    8bce
                         mov                edx, dword ptr [ecx]                          // 0x00445ceb    8b11
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00445ced    89542420
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x00445cf1    d9442420
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00445cf5    d80558768c00
                         xor.s              ebx, ebx                                      // 0x00445cfb    33db
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00445cfd    8944241c
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00445d01    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00445d04    8b4908
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00445d07    d95c2420
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00445d0b    d9442414
                         push               ebx                                           // 0x00445d0f    53
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e658]             // 0x00445d10    d82558768c00
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x00445d16    8d54240c
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x00445d1a    89442428
                         push               edx                                           // 0x00445d1e    52
                         {disp8} lea        eax, dword ptr [esp + 0x1c]                   // 0x00445d1f    8d44241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00445d23    d95c241c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00445d27    894c2430
                         push               eax                                           // 0x00445d2b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00445d2c    8d4c242c
                         push               ecx                                           // 0x00445d30    51
                         {disp8} mov        byte ptr [esp + 0x18], bl                     // 0x00445d31    885c2418
                         {disp8} mov        byte ptr [esp + 0x1a], bl                     // 0x00445d35    885c241a
                         {disp8} mov        byte ptr [esp + 0x1d], bl                     // 0x00445d39    885c241d
                         {disp8} mov        byte ptr [esp + 0x1e], bl                     // 0x00445d3d    885c241e
                         {disp8} mov        byte ptr [esp + 0x20], bl                     // 0x00445d41    885c2420
                         call               _jmp_addr_0x008398a0                          // 0x00445d45    e8563b3f00
                         mov.s              edx, esi                                      // 0x00445d4a    8bd6
                         mov                eax, dword ptr [edx]                          // 0x00445d4c    8b02
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x00445d4e    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00445d51    8b5208
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00445d54    89442424
                         {disp8} mov        dword ptr [esp + 0x28], ecx                   // 0x00445d58    894c2428
                         mov.s              eax, esi                                      // 0x00445d5c    8bc6
                         mov                ecx, dword ptr [eax]                          // 0x00445d5e    8b08
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x00445d60    8954242c
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00445d64    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00445d67    8b4008
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00445d6a    89542434
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00445d6e    d9442434
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00445d72    d80558768c00
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00445d78    894c2430
                         push               ebx                                           // 0x00445d7c    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00445d7d    8d4c2420
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00445d81    d95c2438
                         push               ecx                                           // 0x00445d85    51
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00445d86    d9442430
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x00445d8a    8d54242c
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e658]             // 0x00445d8e    d82558768c00
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00445d94    89442440
                         push               edx                                           // 0x00445d98    52
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00445d99    8d44243c
                         push               eax                                           // 0x00445d9d    50
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00445d9e    d95c2438
                         call               _jmp_addr_0x008398a0                          // 0x00445da2    e8f93a3f00
                         mov.s              ecx, esi                                      // 0x00445da7    8bce
                         mov                edx, dword ptr [ecx]                          // 0x00445da9    8b11
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00445dab    8b4104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00445dae    8b4908
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00445db1    89542434
                         mov                edx, dword ptr [esi]                          // 0x00445db5    8b16
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x00445db7    89442438
                         {disp8} mov        dword ptr [esp + 0x3c], ecx                   // 0x00445dbb    894c243c
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x00445dbf    8b4e08
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00445dc2    8b4604
                         {disp8} mov        dword ptr [esp + 0x48], ecx                   // 0x00445dc5    894c2448
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x00445dc9    d9442448
                         {disp32} fadd      dword ptr [rdata_bytes + 0x1e658]             // 0x00445dcd    d80558768c00
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x00445dd3    89542440
                         push               ebx                                           // 0x00445dd7    53
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x00445dd8    8d542434
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00445ddc    d95c244c
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x00445de0    89442448
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x00445de4    d9442440
                         push               edx                                           // 0x00445de8    52
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1e658]             // 0x00445de9    d82558768c00
                         {disp8} lea        eax, dword ptr [esp + 0x3c]                   // 0x00445def    8d44243c
                         push               eax                                           // 0x00445df3    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x00445df4    8d4c244c
                         push               ecx                                           // 0x00445df8    51
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00445df9    d95c244c
                         call               _jmp_addr_0x008398a0                          // 0x00445dfd    e89e3a3f00
                         add                esp, 0x30                                     // 0x00445e02    83c430
                         pop                esi                                           // 0x00445e05    5e
                         pop                ebx                                           // 0x00445e06    5b
                         add                esp, 0x24                                     // 0x00445e07    83c424
                         ret                                                              // 0x00445e0a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x00445e0b    e869bafbff
_jmp_addr_0x00445e10:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00445e10    8b0d009dc500
                         test               ecx, ecx                                      // 0x00445e16    85c9
                         push               esi                                           // 0x00445e18    56
                         {disp8} je         _jmp_addr_0x00445e44                          // 0x00445e19    7429
                         {disp32} mov       eax, dword ptr [ecx + 0x000001b8]             // 0x00445e1b    8b81b8010000
                         test               eax, eax                                      // 0x00445e21    85c0
                         {disp8} je         _jmp_addr_0x00445e2c                          // 0x00445e23    7407
_jmp_addr_0x00445e25:    {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x00445e25    8b4048
                         test               eax, eax                                      // 0x00445e28    85c0
                         {disp8} jne        _jmp_addr_0x00445e25                          // 0x00445e2a    75f9
_jmp_addr_0x00445e2c:    {disp32} mov       esi, dword ptr [ecx + 0x000001bc]             // 0x00445e2c    8bb1bc010000
                         test               esi, esi                                      // 0x00445e32    85f6
                         {disp8} je         _jmp_addr_0x00445e44                          // 0x00445e34    740e
_jmp_addr_0x00445e36:    mov.s              ecx, esi                                      // 0x00445e36    8bce
                         call               @Draw__Q213GCameraEditor9InfoTrackFv@4        // 0x00445e38    e813060000
                         {disp8} mov        esi, dword ptr [esi + 0x10]                   // 0x00445e3d    8b7610
                         test               esi, esi                                      // 0x00445e40    85f6
                         {disp8} jne        _jmp_addr_0x00445e36                          // 0x00445e42    75f2
_jmp_addr_0x00445e44:    pop                esi                                           // 0x00445e44    5e
                         ret                                                              // 0x00445e45    c3
                         nop                                                              // 0x00445e46    90
                         nop                                                              // 0x00445e47    90
                         nop                                                              // 0x00445e48    90
                         nop                                                              // 0x00445e49    90
                         nop                                                              // 0x00445e4a    90
                         nop                                                              // 0x00445e4b    90
                         nop                                                              // 0x00445e4c    90
                         nop                                                              // 0x00445e4d    90
                         nop                                                              // 0x00445e4e    90
                         nop                                                              // 0x00445e4f    90
_jmp_addr_0x00445e50:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d1c]        // 0x00445e50    a11c9dc500
                         test               eax, eax                                      // 0x00445e55    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293d04]        // 0x00445e57    8b0d049dc500
                         {disp8} je         _jmp_addr_0x00445ea2                          // 0x00445e5d    7443
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00445e5f    8b4144
                         test               eax, eax                                      // 0x00445e62    85c0
                         {disp8} je         _jmp_addr_0x00445ea2                          // 0x00445e64    743c
                         add                eax, 0x18                                     // 0x00445e66    83c018
                         mov                edx, dword ptr [eax]                          // 0x00445e69    8b10
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb58], edx        // 0x00445e6b    8915581bea00
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00445e71    8b5004
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb5c], edx        // 0x00445e74    89155c1bea00
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00445e7a    8b4008
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb60], eax        // 0x00445e7d    a3601bea00
                         {disp8} mov        ecx, dword ptr [ecx + 0x44]                   // 0x00445e82    8b4944
                         add                ecx, 0x24                                     // 0x00445e85    83c124
                         mov                edx, dword ptr [ecx]                          // 0x00445e88    8b11
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb68], edx        // 0x00445e8a    8915681bea00
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00445e90    8b4104
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb6c], eax        // 0x00445e93    a36c1bea00
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00445e98    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb70], ecx        // 0x00445e9b    890d701bea00
                         ret                                                              // 0x00445ea1    c3
_jmp_addr_0x00445ea2:    {disp8} lea        edx, dword ptr [ecx + 0x24]                   // 0x00445ea2    8d5124
                         mov                eax, dword ptr [edx]                          // 0x00445ea5    8b02
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb58], eax        // 0x00445ea7    a3581bea00
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00445eac    8b4204
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb5c], eax        // 0x00445eaf    a35c1bea00
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00445eb4    8b5208
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb60], edx        // 0x00445eb7    8915601bea00
                         add                ecx, 0x30                                     // 0x00445ebd    83c130
                         mov                eax, dword ptr [ecx]                          // 0x00445ec0    8b01
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb68], eax        // 0x00445ec2    a3681bea00
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x00445ec7    8b5104
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb6c], edx        // 0x00445eca    89156c1bea00
                         {disp8} mov        eax, dword ptr [ecx + 0x08]                   // 0x00445ed0    8b4108
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb70], eax        // 0x00445ed3    a3701bea00
                         ret                                                              // 0x00445ed8    c3
                         nop                                                              // 0x00445ed9    90
                         nop                                                              // 0x00445eda    90
                         nop                                                              // 0x00445edb    90
                         nop                                                              // 0x00445edc    90
                         nop                                                              // 0x00445edd    90
                         nop                                                              // 0x00445ede    90
                         nop                                                              // 0x00445edf    90
_jmp_addr_0x00445ee0:    sub                esp, 0x00000404                               // 0x00445ee0    81ec04040000
                         push               esi                                           // 0x00445ee6    56
                         {disp32} mov       esi, dword ptr [esp + 0x0000040c]             // 0x00445ee7    8bb4240c040000
                         push               esi                                           // 0x00445eee    56
                         call               _jmp_addr_0x00446880                          // 0x00445eef    e88c090000
                         add                esp, 0x04                                     // 0x00445ef4    83c404
                         test               eax, eax                                      // 0x00445ef7    85c0
                         push               esi                                           // 0x00445ef9    56
                         {disp8} je         _jmp_addr_0x00445f0e                          // 0x00445efa    7412
                         call               _jmp_addr_0x00446920                          // 0x00445efc    e81f0a0000
                         add                esp, 0x04                                     // 0x00445f01    83c404
                         xor.s              eax, eax                                      // 0x00445f04    33c0
                         pop                esi                                           // 0x00445f06    5e
                         add                esp, 0x00000404                               // 0x00445f07    81c404040000
                         ret                                                              // 0x00445f0d    c3
_jmp_addr_0x00445f0e:    call               _jmp_addr_0x004460a0                          // 0x00445f0e    e88d010000
                         mov.s              edx, eax                                      // 0x00445f13    8bd0
                         add                esp, 0x04                                     // 0x00445f15    83c404
                         test               edx, edx                                      // 0x00445f18    85d2
                         {disp8} mov        dword ptr [esp + 0x04], edx                   // 0x00445f1a    89542404
                         {disp8} je         _jmp_addr_0x00445f48                          // 0x00445f1e    7428
                         mov                al, byte ptr [esi]                            // 0x00445f20    8a06
                         test               al, al                                        // 0x00445f22    84c0
                         mov.s              ecx, esi                                      // 0x00445f24    8bce
                         {disp8} je         _jmp_addr_0x00445f38                          // 0x00445f26    7410
_jmp_addr_0x00445f28:    cmp                al, 0x39                                      // 0x00445f28    3c39
                         {disp8} jg         _jmp_addr_0x00445f48                          // 0x00445f2a    7f1c
                         cmp                al, 0x30                                      // 0x00445f2c    3c30
                         {disp8} jl         _jmp_addr_0x00445f48                          // 0x00445f2e    7c18
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x00445f30    8a4101
                         inc                ecx                                           // 0x00445f33    41
                         test               al, al                                        // 0x00445f34    84c0
                         {disp8} jne        _jmp_addr_0x00445f28                          // 0x00445f36    75f0
_jmp_addr_0x00445f38:    {disp8} lea        eax, dword ptr [esp + 0x08]                   // 0x00445f38    8d442408
                         push               eax                                           // 0x00445f3c    50
                         mov.s              ecx, edx                                      // 0x00445f3d    8bca
                         call               _jmp_addr_0x004462c0                          // 0x00445f3f    e87c030000
                         {disp8} lea        esi, dword ptr [esp + 0x08]                   // 0x00445f44    8d742408
_jmp_addr_0x00445f48:    push               ebp                                           // 0x00445f48    55
                         push               edi                                           // 0x00445f49    57
                         push               0x4c                                          // 0x00445f4a    6a4c
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00445f4c    e88fcd3f00
                         mov.s              ebp, eax                                      // 0x00445f51    8be8
                         add                esp, 0x04                                     // 0x00445f53    83c404
                         test               ebp, ebp                                      // 0x00445f56    85ed
                         {disp8} je         _jmp_addr_0x00445f65                          // 0x00445f58    740b
                         mov                ecx, 0x00000013                               // 0x00445f5a    b913000000
                         xor.s              eax, eax                                      // 0x00445f5f    33c0
                         mov.s              edi, ebp                                      // 0x00445f61    8bfd
                         rep stosd                                                        // 0x00445f63    f3ab
_jmp_addr_0x00445f65:    {disp32} mov       eax, dword ptr [esp + 0x00000418]             // 0x00445f65    8b842418040000
                         mov                ecx, 0x00000008                               // 0x00445f6c    b908000000
                         mov.s              edi, ebp                                      // 0x00445f71    8bfd
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445f73    f3a5
                         movsb                                                            // 0x00445f75    a4
                         {disp8} mov        byte ptr [ebp + 0x20], 0x00                   // 0x00445f76    c6452000
                         {disp32} mov       ecx, dword ptr [eax + 0x000001b8]             // 0x00445f7a    8b88b8010000
                         {disp8} mov        dword ptr [ebp + 0x48], ecx                   // 0x00445f80    894d48
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x00445f83    8b5024
                         inc                edx                                           // 0x00445f86    42
                         {disp32} mov       dword ptr [eax + 0x000001b8], ebp             // 0x00445f87    89a8b8010000
                         {disp8} mov        dword ptr [eax + 0x24], edx                   // 0x00445f8d    895024
                         {disp32} mov       eax, dword ptr [esp + 0x0000041c]             // 0x00445f90    8b84241c040000
                         test               eax, eax                                      // 0x00445f97    85c0
                         {disp8} je         _jmp_addr_0x00445faa                          // 0x00445f99    740f
                         {disp8} lea        esi, dword ptr [eax + 0x24]                   // 0x00445f9b    8d7024
                         {disp8} lea        edi, dword ptr [ebp + 0x24]                   // 0x00445f9e    8d7d24
                         mov                ecx, 0x00000008                               // 0x00445fa1    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00445fa6    f3a5
                         {disp8} jmp        _jmp_addr_0x00445fe8                          // 0x00445fa8    eb3e
_jmp_addr_0x00445faa:    {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdb8]        // 0x00445faa    a1b81dea00
                         {disp8} lea        edx, dword ptr [ebp + 0x24]                   // 0x00445faf    8d5524
                         mov                dword ptr [edx], eax                          // 0x00445fb2    8902
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x00445fb4    8b0dbc1dea00
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00445fba    894a04
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc0]        // 0x00445fbd    a1c01dea00
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00445fc2    894208
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdc4]        // 0x00445fc5    8b15c41dea00
                         {disp8} lea        ecx, dword ptr [ebp + 0x30]                   // 0x00445fcb    8d4d30
                         mov                dword ptr [ecx], edx                          // 0x00445fce    8911
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdc8]        // 0x00445fd0    a1c81dea00
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00445fd5    894104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbdcc]        // 0x00445fd8    8b15cc1dea00
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00445fde    895108
                         {disp8} mov        dword ptr [ebp + 0x40], 0xbf800000            // 0x00445fe1    c74540000080bf
_jmp_addr_0x00445fe8:    call               _jmp_addr_0x00445930                          // 0x00445fe8    e843f9ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d0c]        // 0x00445fed    a10c9dc500
                         test               eax, eax                                      // 0x00445ff2    85c0
                         {disp8} je         _jmp_addr_0x00446009                          // 0x00445ff4    7413
                         push               eax                                           // 0x00445ff6    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00445ff7    e864cd3f00
                         add                esp, 0x04                                     // 0x00445ffc    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], 0x00000000 // 0x00445fff    c7050c9dc50000000000
_jmp_addr_0x00446009:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00446009    a1009dc500
                         test               eax, eax                                      // 0x0044600e    85c0
                         {disp8} je         _jmp_addr_0x00446068                          // 0x00446010    7456
                         {disp8} mov        eax, dword ptr [eax + 0x24]                   // 0x00446012    8b4024
                         mov.s              esi, eax                                      // 0x00446015    8bf0
                         shl                esi, 5                                        // 0x00446017    c1e605
                         add.s              esi, eax                                      // 0x0044601a    03f0
                         push               esi                                           // 0x0044601c    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0044601d    e8becc3f00
                         mov.s              edx, eax                                      // 0x00446022    8bd0
                         add                esp, 0x04                                     // 0x00446024    83c404
                         test               edx, edx                                      // 0x00446027    85d2
                         {disp8} je         _jmp_addr_0x0044603d                          // 0x00446029    7412
                         mov.s              ecx, esi                                      // 0x0044602b    8bce
                         shr                ecx, 2                                        // 0x0044602d    c1e902
                         xor.s              eax, eax                                      // 0x00446030    33c0
                         mov.s              edi, edx                                      // 0x00446032    8bfa
                         rep stosd                                                        // 0x00446034    f3ab
                         mov.s              ecx, esi                                      // 0x00446036    8bce
                         and                ecx, 0x03                                     // 0x00446038    83e103
                         rep stosb                                                        // 0x0044603b    f3aa
_jmp_addr_0x0044603d:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x0044603d    a1009dc500
                         {disp32} mov       dword ptr [data_bytes + 0x293d0c], edx        // 0x00446042    89150c9dc500
                         {disp32} mov       eax, dword ptr [eax + 0x000001b8]             // 0x00446048    8b80b8010000
                         test               eax, eax                                      // 0x0044604e    85c0
                         {disp8} je         _jmp_addr_0x00446068                          // 0x00446050    7416
_jmp_addr_0x00446052:    mov.s              esi, eax                                      // 0x00446052    8bf0
                         mov.s              edi, edx                                      // 0x00446054    8bfa
                         mov                ecx, 0x00000008                               // 0x00446056    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0044605b    f3a5
                         movsb                                                            // 0x0044605d    a4
                         {disp8} mov        eax, dword ptr [eax + 0x48]                   // 0x0044605e    8b4048
                         add                edx, 0x21                                     // 0x00446061    83c221
                         test               eax, eax                                      // 0x00446064    85c0
                         {disp8} jne        _jmp_addr_0x00446052                          // 0x00446066    75ea
_jmp_addr_0x00446068:    {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00446068    8b74240c
                         test               esi, esi                                      // 0x0044606c    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x0044606e    c705189dc50001000000
                         {disp8} je         _jmp_addr_0x00446085                          // 0x00446078    740b
                         push               ebp                                           // 0x0044607a    55
                         mov.s              ecx, esi                                      // 0x0044607b    8bce
                         call               _jmp_addr_0x00446350                          // 0x0044607d    e8ce020000
                         {disp8} mov        dword ptr [ebp + 0x44], esi                   // 0x00446082    897544
_jmp_addr_0x00446085:    pop                edi                                           // 0x00446085    5f
                         {disp32} mov       dword ptr [data_bytes + 0x293d04], ebp        // 0x00446086    892d049dc500
                         mov.s              eax, ebp                                      // 0x0044608c    8bc5
                         pop                ebp                                           // 0x0044608e    5d
                         pop                esi                                           // 0x0044608f    5e
                         add                esp, 0x00000404                               // 0x00446090    81c404040000
                         ret                                                              // 0x00446096    c3
                         nop                                                              // 0x00446097    90
                         nop                                                              // 0x00446098    90
                         nop                                                              // 0x00446099    90
                         nop                                                              // 0x0044609a    90
                         nop                                                              // 0x0044609b    90
                         nop                                                              // 0x0044609c    90
                         nop                                                              // 0x0044609d    90
                         nop                                                              // 0x0044609e    90
                         nop                                                              // 0x0044609f    90
_jmp_addr_0x004460a0:    push               esi                                           // 0x004460a0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x004460a1    8b742408
                         mov                cl, byte ptr [esi]                            // 0x004460a5    8a0e
                         test               cl, cl                                        // 0x004460a7    84c9
                         push               edi                                           // 0x004460a9    57
                         mov.s              edx, esi                                      // 0x004460aa    8bd6
                         {disp8} je         _jmp_addr_0x004460c8                          // 0x004460ac    741a
                         mov.s              al, cl                                        // 0x004460ae    8ac1
_jmp_addr_0x004460b0:    cmp                al, 0x39                                      // 0x004460b0    3c39
                         {disp32} jg        _jmp_addr_0x00446156                          // 0x004460b2    0f8f9e000000
                         cmp                al, 0x30                                      // 0x004460b8    3c30
                         {disp32} jl        _jmp_addr_0x00446156                          // 0x004460ba    0f8c96000000
                         {disp8} mov        al, byte ptr [edx + 0x01]                     // 0x004460c0    8a4201
                         inc                edx                                           // 0x004460c3    42
                         test               al, al                                        // 0x004460c4    84c0
                         {disp8} jne        _jmp_addr_0x004460b0                          // 0x004460c6    75e8
_jmp_addr_0x004460c8:    cmp                cl, 0x39                                      // 0x004460c8    80f939
                         {disp8} jg         _jmp_addr_0x004460ff                          // 0x004460cb    7f32
                         cmp                cl, 0x30                                      // 0x004460cd    80f930
                         {disp8} jl         _jmp_addr_0x004460ff                          // 0x004460d0    7c2d
                         cmp                cl, 0x39                                      // 0x004460d2    80f939
                         {disp8} jg         _jmp_addr_0x004460ef                          // 0x004460d5    7f18
                         cmp                cl, 0x30                                      // 0x004460d7    80f930
                         {disp8} jl         _jmp_addr_0x004460ef                          // 0x004460da    7c13
                         movsx              eax, cl                                       // 0x004460dc    0fbec1
                         sub                eax, 0x30                                     // 0x004460df    83e830
                         push               eax                                           // 0x004460e2    50
                         inc                esi                                           // 0x004460e3    46
                         push               esi                                           // 0x004460e4    56
                         call               _jmp_addr_0x00446270                          // 0x004460e5    e886010000
                         add                esp, 0x08                                     // 0x004460ea    83c408
                         {disp8} jmp        _jmp_addr_0x00446102                          // 0x004460ed    eb13
_jmp_addr_0x004460ef:    or                 eax, -0x1                                     // 0x004460ef    83c8ff
                         push               eax                                           // 0x004460f2    50
                         inc                esi                                           // 0x004460f3    46
                         push               esi                                           // 0x004460f4    56
                         call               _jmp_addr_0x00446270                          // 0x004460f5    e876010000
                         add                esp, 0x08                                     // 0x004460fa    83c408
                         {disp8} jmp        _jmp_addr_0x00446102                          // 0x004460fd    eb03
_jmp_addr_0x004460ff:    or                 eax, -0x1                                     // 0x004460ff    83c8ff
_jmp_addr_0x00446102:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00446102    8b0d009dc500
                         {disp32} mov       ecx, dword ptr [ecx + 0x000001bc]             // 0x00446108    8b89bc010000
                         test               ecx, ecx                                      // 0x0044610e    85c9
                         {disp8} je         _jmp_addr_0x00446129                          // 0x00446110    7417
_jmp_addr_0x00446112:    cmp                dword ptr [ecx], eax                          // 0x00446112    3901
                         {disp8} je         _jmp_addr_0x0044611f                          // 0x00446114    7409
                         {disp8} mov        ecx, dword ptr [ecx + 0x10]                   // 0x00446116    8b4910
                         test               ecx, ecx                                      // 0x00446119    85c9
                         {disp8} jne        _jmp_addr_0x00446112                          // 0x0044611b    75f5
                         {disp8} jmp        _jmp_addr_0x00446129                          // 0x0044611d    eb0a
_jmp_addr_0x0044611f:    test               ecx, ecx                                      // 0x0044611f    85c9
                         mov.s              edx, ecx                                      // 0x00446121    8bd1
                         {disp32} jne       _jmp_addr_0x00446261                          // 0x00446123    0f8538010000
_jmp_addr_0x00446129:    test               eax, eax                                      // 0x00446129    85c0
                         mov.s              esi, eax                                      // 0x0044612b    8bf0
                         {disp8} jge        _jmp_addr_0x00446133                          // 0x0044612d    7d04
                         xor.s              esi, esi                                      // 0x0044612f    33f6
                         {disp8} jmp        _jmp_addr_0x0044613d                          // 0x00446131    eb0a
_jmp_addr_0x00446133:    cmp                eax, 0x32                                     // 0x00446133    83f832
                         {disp8} jl         _jmp_addr_0x0044613d                          // 0x00446136    7c05
                         mov                esi, 0x00000031                               // 0x00446138    be31000000
_jmp_addr_0x0044613d:    push               0x40                                          // 0x0044613d    6a40
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0044613f    e89ccb3f00
                         mov.s              edx, eax                                      // 0x00446144    8bd0
                         add                esp, 0x04                                     // 0x00446146    83c404
                         test               edx, edx                                      // 0x00446149    85d2
                         {disp32} je        _jmp_addr_0x0044623a                          // 0x0044614b    0f84e9000000
                         {disp32} jmp       _jmp_addr_0x0044622f                          // 0x00446151    e9d9000000
_jmp_addr_0x00446156:    cmp                cl, 0x54                                      // 0x00446156    80f954
                         {disp8} je         _jmp_addr_0x00446160                          // 0x00446159    7405
                         pop                edi                                           // 0x0044615b    5f
                         xor.s              eax, eax                                      // 0x0044615c    33c0
                         pop                esi                                           // 0x0044615e    5e
                         ret                                                              // 0x0044615f    c3
_jmp_addr_0x00446160:    {disp8} mov        al, byte ptr [esi + 0x01]                     // 0x00446160    8a4601
                         cmp                al, 0x39                                      // 0x00446163    3c39
                         {disp8} jg         _jmp_addr_0x00446192                          // 0x00446165    7f2b
                         cmp                al, 0x30                                      // 0x00446167    3c30
                         {disp8} jl         _jmp_addr_0x00446192                          // 0x00446169    7c27
                         cmp                al, 0x39                                      // 0x0044616b    3c39
                         {disp8} jg         _jmp_addr_0x0044617b                          // 0x0044616d    7f0c
                         cmp                al, 0x30                                      // 0x0044616f    3c30
                         {disp8} jl         _jmp_addr_0x0044617b                          // 0x00446171    7c08
                         movsx              eax, al                                       // 0x00446173    0fbec0
                         sub                eax, 0x30                                     // 0x00446176    83e830
                         {disp8} jmp        _jmp_addr_0x0044617e                          // 0x00446179    eb03
_jmp_addr_0x0044617b:    or                 eax, -0x1                                     // 0x0044617b    83c8ff
_jmp_addr_0x0044617e:    push               eax                                           // 0x0044617e    50
                         {disp8} lea        ecx, dword ptr [esi + 0x02]                   // 0x0044617f    8d4e02
                         push               ecx                                           // 0x00446182    51
                         call               _jmp_addr_0x00446270                          // 0x00446183    e8e8000000
                         mov.s              edi, eax                                      // 0x00446188    8bf8
                         add                esp, 0x08                                     // 0x0044618a    83c408
                         cmp                edi, -0x01                                    // 0x0044618d    83ffff
                         {disp8} jne        _jmp_addr_0x00446197                          // 0x00446190    7505
_jmp_addr_0x00446192:    pop                edi                                           // 0x00446192    5f
                         xor.s              eax, eax                                      // 0x00446193    33c0
                         pop                esi                                           // 0x00446195    5e
                         ret                                                              // 0x00446196    c3
_jmp_addr_0x00446197:    mov                al, byte ptr [esi]                            // 0x00446197    8a06
                         test               al, al                                        // 0x00446199    84c0
                         mov.s              ecx, esi                                      // 0x0044619b    8bce
                         {disp8} je         _jmp_addr_0x004461ab                          // 0x0044619d    740c
_jmp_addr_0x0044619f:    cmp                al, 0x5f                                      // 0x0044619f    3c5f
                         {disp8} je         _jmp_addr_0x004461ab                          // 0x004461a1    7408
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004461a3    8a4101
                         inc                ecx                                           // 0x004461a6    41
                         test               al, al                                        // 0x004461a7    84c0
                         {disp8} jne        _jmp_addr_0x0044619f                          // 0x004461a9    75f4
_jmp_addr_0x004461ab:    cmp                byte ptr [ecx], 0x5f                          // 0x004461ab    80395f
                         {disp8} je         _jmp_addr_0x004461b5                          // 0x004461ae    7405
                         pop                edi                                           // 0x004461b0    5f
                         xor.s              eax, eax                                      // 0x004461b1    33c0
                         pop                esi                                           // 0x004461b3    5e
                         ret                                                              // 0x004461b4    c3
_jmp_addr_0x004461b5:    {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004461b5    8a4101
                         cmp                al, 0x39                                      // 0x004461b8    3c39
                         {disp8} jg         _jmp_addr_0x004461e5                          // 0x004461ba    7f29
                         cmp                al, 0x30                                      // 0x004461bc    3c30
                         {disp8} jl         _jmp_addr_0x004461e5                          // 0x004461be    7c25
                         cmp                al, 0x39                                      // 0x004461c0    3c39
                         {disp8} jg         _jmp_addr_0x004461d0                          // 0x004461c2    7f0c
                         cmp                al, 0x30                                      // 0x004461c4    3c30
                         {disp8} jl         _jmp_addr_0x004461d0                          // 0x004461c6    7c08
                         movsx              eax, al                                       // 0x004461c8    0fbec0
                         sub                eax, 0x30                                     // 0x004461cb    83e830
                         {disp8} jmp        _jmp_addr_0x004461d3                          // 0x004461ce    eb03
_jmp_addr_0x004461d0:    or                 eax, -0x1                                     // 0x004461d0    83c8ff
_jmp_addr_0x004461d3:    push               eax                                           // 0x004461d3    50
                         add                ecx, 0x2                                      // 0x004461d4    83c102
                         push               ecx                                           // 0x004461d7    51
                         call               _jmp_addr_0x00446270                          // 0x004461d8    e893000000
                         add                esp, 0x08                                     // 0x004461dd    83c408
                         cmp                eax, -0x01                                    // 0x004461e0    83f8ff
                         {disp8} jne        _jmp_addr_0x004461ea                          // 0x004461e3    7505
_jmp_addr_0x004461e5:    pop                edi                                           // 0x004461e5    5f
                         xor.s              eax, eax                                      // 0x004461e6    33c0
                         pop                esi                                           // 0x004461e8    5e
                         ret                                                              // 0x004461e9    c3
_jmp_addr_0x004461ea:    {disp32} mov       edx, dword ptr [data_bytes + 0x293d00]        // 0x004461ea    8b15009dc500
                         {disp32} mov       eax, dword ptr [edx + 0x000001bc]             // 0x004461f0    8b82bc010000
                         test               eax, eax                                      // 0x004461f6    85c0
                         {disp8} je         _jmp_addr_0x0044620b                          // 0x004461f8    7411
_jmp_addr_0x004461fa:    cmp                dword ptr [eax], edi                          // 0x004461fa    3938
                         {disp8} je         _jmp_addr_0x00446207                          // 0x004461fc    7409
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x004461fe    8b4010
                         test               eax, eax                                      // 0x00446201    85c0
                         {disp8} jne        _jmp_addr_0x004461fa                          // 0x00446203    75f5
                         {disp8} jmp        _jmp_addr_0x0044620b                          // 0x00446205    eb04
_jmp_addr_0x00446207:    test               eax, eax                                      // 0x00446207    85c0
                         {disp8} jne        _jmp_addr_0x00446263                          // 0x00446209    7558
_jmp_addr_0x0044620b:    test               edi, edi                                      // 0x0044620b    85ff
                         mov.s              esi, edi                                      // 0x0044620d    8bf7
                         {disp8} jge        _jmp_addr_0x00446215                          // 0x0044620f    7d04
                         xor.s              esi, esi                                      // 0x00446211    33f6
                         {disp8} jmp        _jmp_addr_0x0044621f                          // 0x00446213    eb0a
_jmp_addr_0x00446215:    cmp                edi, 0x32                                     // 0x00446215    83ff32
                         {disp8} jl         _jmp_addr_0x0044621f                          // 0x00446218    7c05
                         mov                esi, 0x00000031                               // 0x0044621a    be31000000
_jmp_addr_0x0044621f:    push               0x40                                          // 0x0044621f    6a40
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00446221    e8baca3f00
                         mov.s              edx, eax                                      // 0x00446226    8bd0
                         add                esp, 0x04                                     // 0x00446228    83c404
                         test               edx, edx                                      // 0x0044622b    85d2
                         {disp8} je         _jmp_addr_0x0044623a                          // 0x0044622d    740b
_jmp_addr_0x0044622f:    mov                ecx, 0x00000010                               // 0x0044622f    b910000000
                         xor.s              eax, eax                                      // 0x00446234    33c0
                         mov.s              edi, edx                                      // 0x00446236    8bfa
                         rep stosd                                                        // 0x00446238    f3ab
_jmp_addr_0x0044623a:    mov                dword ptr [edx], esi                          // 0x0044623a    8932
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x0044623c    a1009dc500
                         {disp32} mov       ecx, dword ptr [eax + 0x000001bc]             // 0x00446241    8b88bc010000
                         {disp8} mov        dword ptr [edx + 0x10], ecx                   // 0x00446247    894a10
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x0044624a    a1009dc500
                         {disp8} mov        ecx, dword ptr [eax + esi * 0x4 + 0x28]       // 0x0044624f    8b4cb028
                         {disp8} mov        dword ptr [edx + 0x0c], ecx                   // 0x00446253    894a0c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d00]        // 0x00446256    a1009dc500
                         {disp32} mov       dword ptr [eax + 0x000001bc], edx             // 0x0044625b    8990bc010000
_jmp_addr_0x00446261:    mov.s              eax, edx                                      // 0x00446261    8bc2
_jmp_addr_0x00446263:    pop                edi                                           // 0x00446263    5f
                         pop                esi                                           // 0x00446264    5e
                         ret                                                              // 0x00446265    c3
                         nop                                                              // 0x00446266    90
                         nop                                                              // 0x00446267    90
                         nop                                                              // 0x00446268    90
                         nop                                                              // 0x00446269    90
                         nop                                                              // 0x0044626a    90
                         nop                                                              // 0x0044626b    90
                         nop                                                              // 0x0044626c    90
                         nop                                                              // 0x0044626d    90
                         nop                                                              // 0x0044626e    90
                         nop                                                              // 0x0044626f    90
_jmp_addr_0x00446270:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00446270    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00446274    8b542404
_jmp_addr_0x00446278:    mov                cl, byte ptr [edx]                            // 0x00446278    8a0a
                         cmp                cl, 0x39                                      // 0x0044627a    80f939
                         {disp8} jg         _jmp_addr_0x004462b0                          // 0x0044627d    7f31
                         cmp                cl, 0x30                                      // 0x0044627f    80f930
                         {disp8} jl         _jmp_addr_0x004462b0                          // 0x00446282    7c2c
                         cmp                eax, -0x01                                    // 0x00446284    83f8ff
                         {disp8} jne        _jmp_addr_0x0044628b                          // 0x00446287    7502
                         xor.s              eax, eax                                      // 0x00446289    33c0
_jmp_addr_0x0044628b:    cmp                cl, 0x39                                      // 0x0044628b    80f939
                         {disp8} jg         _jmp_addr_0x004462a4                          // 0x0044628e    7f14
                         cmp                cl, 0x30                                      // 0x00446290    80f930
                         {disp8} jl         _jmp_addr_0x004462a4                          // 0x00446293    7c0f
                         movsx              ecx, cl                                       // 0x00446295    0fbec9
                         sub                ecx, 0x30                                     // 0x00446298    83e930
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0044629b    8d0480
                         lea                eax, dword ptr [ecx + eax * 0x2]              // 0x0044629e    8d0441
                         inc                edx                                           // 0x004462a1    42
                         {disp8} jmp        _jmp_addr_0x00446278                          // 0x004462a2    ebd4
_jmp_addr_0x004462a4:    or                 ecx, 0xffffffff                               // 0x004462a4    83c9ff
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x004462a7    8d0480
                         lea                eax, dword ptr [ecx + eax * 0x2]              // 0x004462aa    8d0441
                         inc                edx                                           // 0x004462ad    42
                         {disp8} jmp        _jmp_addr_0x00446278                          // 0x004462ae    ebc8
_jmp_addr_0x004462b0:    ret                                                              // 0x004462b0    c3
                         nop                                                              // 0x004462b1    90
                         nop                                                              // 0x004462b2    90
                         nop                                                              // 0x004462b3    90
                         nop                                                              // 0x004462b4    90
                         nop                                                              // 0x004462b5    90
                         nop                                                              // 0x004462b6    90
                         nop                                                              // 0x004462b7    90
                         nop                                                              // 0x004462b8    90
                         nop                                                              // 0x004462b9    90
                         nop                                                              // 0x004462ba    90
                         nop                                                              // 0x004462bb    90
                         nop                                                              // 0x004462bc    90
                         nop                                                              // 0x004462bd    90
                         nop                                                              // 0x004462be    90
                         nop                                                              // 0x004462bf    90
_jmp_addr_0x004462c0:    push               ecx                                           // 0x004462c0    51
                         push               esi                                           // 0x004462c1    56
                         mov.s              esi, ecx                                      // 0x004462c2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x004462c4    8b06
                         cmp                eax, 0x09                                     // 0x004462c6    83f809
                         push               eax                                           // 0x004462c9    50
                         {disp8} jle        _jmp_addr_0x004462d8                          // 0x004462ca    7e0c
                         push               0x009cda78                                    // 0x004462cc    6878da9c00
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x004462d1    8d44240c
                         push               eax                                           // 0x004462d5    50
                         {disp8} jmp        _jmp_addr_0x004462e2                          // 0x004462d6    eb0a
_jmp_addr_0x004462d8:    push               0x009cdbec                                    // 0x004462d8    68ecdb9c00
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004462dd    8d4c240c
                         push               ecx                                           // 0x004462e1    51
_jmp_addr_0x004462e2:    call               _sprintf                                      // 0x004462e2    e8ebf43700
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x004462e7    8b4604
                         add                esp, 0x0c                                     // 0x004462ea    83c40c
                         cmp                eax, 0x0a                                     // 0x004462ed    83f80a
                         pop                esi                                           // 0x004462f0    5e
                         {disp8} jge        _jmp_addr_0x0044630f                          // 0x004462f1    7d1c
                         push               eax                                           // 0x004462f3    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x004462f4    8b44240c
                         {disp8} lea        edx, dword ptr [esp + 0x04]                   // 0x004462f8    8d542404
                         push               edx                                           // 0x004462fc    52
                         push               0x009cdbe0                                    // 0x004462fd    68e0db9c00
                         push               eax                                           // 0x00446302    50
                         call               _sprintf                                      // 0x00446303    e8caf43700
                         add                esp, 0x10                                     // 0x00446308    83c410
                         pop                ecx                                           // 0x0044630b    59
                         ret                0x0004                                        // 0x0044630c    c20400
_jmp_addr_0x0044630f:    cmp                eax, 0x64                                     // 0x0044630f    83f864
                         push               eax                                           // 0x00446312    50
                         {disp8} jge        _jmp_addr_0x00446330                          // 0x00446313    7d1b
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x00446315    8b54240c
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00446319    8d4c2404
                         push               ecx                                           // 0x0044631d    51
                         push               0x009cdbd8                                    // 0x0044631e    68d8db9c00
                         push               edx                                           // 0x00446323    52
                         call               _sprintf                                      // 0x00446324    e8a9f43700
                         add                esp, 0x10                                     // 0x00446329    83c410
                         pop                ecx                                           // 0x0044632c    59
                         ret                0x0004                                        // 0x0044632d    c20400
_jmp_addr_0x00446330:    {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x00446330    8b4c240c
                         {disp8} lea        eax, dword ptr [esp + 0x04]                   // 0x00446334    8d442404
                         push               eax                                           // 0x00446338    50
                         push               0x009cdbd0                                    // 0x00446339    68d0db9c00
                         push               ecx                                           // 0x0044633e    51
                         call               _sprintf                                      // 0x0044633f    e88ef43700
                         add                esp, 0x10                                     // 0x00446344    83c410
                         pop                ecx                                           // 0x00446347    59
                         ret                0x0004                                        // 0x00446348    c20400
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0044634b    e829b5fbff
_jmp_addr_0x00446350:    sub                esp, 0x0c                                     // 0x00446350    83ec0c
                         push               esi                                           // 0x00446353    56
                         mov.s              esi, ecx                                      // 0x00446354    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446356    8b4604
                         test               eax, eax                                      // 0x00446359    85c0
                         {disp32} je        _jmp_addr_0x0044641a                          // 0x0044635b    0f84b9000000
                         push               ebx                                           // 0x00446361    53
                         {disp8} mov        ebx, dword ptr [esi + 0x14]                   // 0x00446362    8b5e14
                         push               ebp                                           // 0x00446365    55
                         push               edi                                           // 0x00446366    57
                         {disp32} lea       edi, dword ptr [eax * 0x4 + 0x00000004]       // 0x00446367    8d3c8504000000
                         push               edi                                           // 0x0044636e    57
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0044636f    895c241c
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00446373    e868c93f00
                         mov.s              edx, eax                                      // 0x00446378    8bd0
                         add                esp, 0x04                                     // 0x0044637a    83c404
                         test               edx, edx                                      // 0x0044637d    85d2
                         {disp8} je         _jmp_addr_0x00446395                          // 0x0044637f    7414
                         mov.s              ecx, edi                                      // 0x00446381    8bcf
                         mov.s              ebp, ecx                                      // 0x00446383    8be9
                         shr                ecx, 2                                        // 0x00446385    c1e902
                         xor.s              eax, eax                                      // 0x00446388    33c0
                         mov.s              edi, edx                                      // 0x0044638a    8bfa
                         rep stosd                                                        // 0x0044638c    f3ab
                         mov.s              ecx, ebp                                      // 0x0044638e    8bcd
                         and                ecx, 0x03                                     // 0x00446390    83e103
                         rep stosb                                                        // 0x00446393    f3aa
_jmp_addr_0x00446395:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446395    8b4604
                         xor.s              edi, edi                                      // 0x00446398    33ff
                         cmp.s              eax, edi                                      // 0x0044639a    3bc7
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x0044639c    895614
                         {disp8} mov        dword ptr [esp + 0x10], edi                   // 0x0044639f    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000001            // 0x004463a3    c744241401000000
                         {disp8} jl         _jmp_addr_0x0044640c                          // 0x004463ab    7c5f
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004463ad    8b4c2420
_jmp_addr_0x004463b1:    cmp                dword ptr [esp + 0x10], eax                   // 0x004463b1    39442410
                         {disp8} jne        _jmp_addr_0x004463bf                          // 0x004463b5    7508
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x004463b7    8b4614
                         mov                dword ptr [eax + edi * 0x4], ecx              // 0x004463ba    890cb8
                         {disp8} jmp        _jmp_addr_0x00446400                          // 0x004463bd    eb41
_jmp_addr_0x004463bf:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004463bf    8b442414
                         test               eax, eax                                      // 0x004463c3    85c0
                         {disp8} je         _jmp_addr_0x004463f1                          // 0x004463c5    742a
                         call               _jmp_addr_0x00447290                          // 0x004463c7    e8c40e0000
                         mov                ecx, dword ptr [ebx]                          // 0x004463cc    8b0b
                         mov.s              ebp, eax                                      // 0x004463ce    8be8
                         call               _jmp_addr_0x00447290                          // 0x004463d0    e8bb0e0000
                         cmp.s              eax, ebp                                      // 0x004463d5    3bc5
                         {disp8} jle        _jmp_addr_0x004463ed                          // 0x004463d7    7e14
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x004463d9    8b5614
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004463dc    8b4c2420
                         mov                dword ptr [edx + edi * 0x4], ecx              // 0x004463e0    890cba
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x004463e3    c744241400000000
                         {disp8} jmp        _jmp_addr_0x00446400                          // 0x004463eb    eb13
_jmp_addr_0x004463ed:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x004463ed    8b4c2420
_jmp_addr_0x004463f1:    mov                edx, dword ptr [ebx]                          // 0x004463f1    8b13
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x004463f3    8b4614
                         mov                dword ptr [eax + edi * 0x4], edx              // 0x004463f6    8914b8
                         {disp8} inc        dword ptr [esp + 0x10]                        // 0x004463f9    ff442410
                         add                ebx, 0x04                                     // 0x004463fd    83c304
_jmp_addr_0x00446400:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446400    8b4604
                         inc                edi                                           // 0x00446403    47
                         cmp.s              edi, eax                                      // 0x00446404    3bf8
                         {disp8} jle        _jmp_addr_0x004463b1                          // 0x00446406    7ea9
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00446408    8b5c2418
_jmp_addr_0x0044640c:    push               ebx                                           // 0x0044640c    53
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0044640d    e84ec93f00
                         add                esp, 0x04                                     // 0x00446412    83c404
                         pop                edi                                           // 0x00446415    5f
                         pop                ebp                                           // 0x00446416    5d
                         pop                ebx                                           // 0x00446417    5b
                         {disp8} jmp        _jmp_addr_0x00446437                          // 0x00446418    eb1d
_jmp_addr_0x0044641a:    push               0x4                                           // 0x0044641a    6a04
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0044641c    e8bfc83f00
                         add                esp, 0x04                                     // 0x00446421    83c404
                         test               eax, eax                                      // 0x00446424    85c0
                         {disp8} je         _jmp_addr_0x0044642e                          // 0x00446426    7406
                         mov                dword ptr [eax], 0x00000000                   // 0x00446428    c70000000000
_jmp_addr_0x0044642e:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0044642e    8b4c2414
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00446432    894614
                         mov                dword ptr [eax], ecx                          // 0x00446435    8908
_jmp_addr_0x00446437:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446437    8b4604
                         inc                eax                                           // 0x0044643a    40
                         mov.s              ecx, esi                                      // 0x0044643b    8bce
                         {disp8} mov        dword ptr [esi + 0x04], eax                   // 0x0044643d    894604
                         call               _jmp_addr_0x004465e0                          // 0x00446440    e89b010000
                         pop                esi                                           // 0x00446445    5e
                         add                esp, 0x0c                                     // 0x00446446    83c40c
                         ret                0x0004                                        // 0x00446449    c20400
                         nop                                                              // 0x0044644c    90
                         nop                                                              // 0x0044644d    90
                         nop                                                              // 0x0044644e    90
                         nop                                                              // 0x0044644f    90
@Draw__Q213GCameraEditor9InfoTrackFv@4:    push               ecx                                           // 0x00446450    51
                         push               ebx                                           // 0x00446451    53
                         push               esi                                           // 0x00446452    56
                         mov.s              esi, ecx                                      // 0x00446453    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x00446455    8b4630
                         test               eax, eax                                      // 0x00446458    85c0
                         mov                bl, -0x01                                     // 0x0044645a    b3ff
                         {disp8} je         _jmp_addr_0x0044647f                          // 0x0044645c    7421
                         {disp8} mov        byte ptr [esp + 0x08], bl                     // 0x0044645e    885c2408
                         {disp8} mov        byte ptr [esp + 0x09], bl                     // 0x00446462    885c2409
                         {disp8} mov        byte ptr [esp + 0x0a], bl                     // 0x00446466    885c240a
                         {disp8} mov        byte ptr [esp + 0x0b], bl                     // 0x0044646a    885c240b
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0044646e    8b442408
                         {disp32} mov       dword ptr [data_bytes + 0x530554], eax        // 0x00446472    a35465ef00
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00446477    8b4e30
                         call               ?Draw@LH3DWay@@QAEXXZ                         // 0x0044647a    e881d03f00
_jmp_addr_0x0044647f:    {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x0044647f    8b4634
                         test               eax, eax                                      // 0x00446482    85c0
                         {disp8} je         _jmp_addr_0x004464a9                          // 0x00446484    7423
                         {disp8} mov        byte ptr [esp + 0x08], 0x00                   // 0x00446486    c644240800
                         {disp8} mov        byte ptr [esp + 0x09], bl                     // 0x0044648b    885c2409
                         {disp8} mov        byte ptr [esp + 0x0a], bl                     // 0x0044648f    885c240a
                         {disp8} mov        byte ptr [esp + 0x0b], bl                     // 0x00446493    885c240b
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x00446497    8b4c2408
                         {disp32} mov       dword ptr [data_bytes + 0x530554], ecx        // 0x0044649b    890d5465ef00
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004464a1    8b4e34
                         call               ?Draw@LH3DWay@@QAEXXZ                         // 0x004464a4    e857d03f00
_jmp_addr_0x004464a9:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x004464a9    8b4630
                         test               eax, eax                                      // 0x004464ac    85c0
                         {disp32} je        _jmp_addr_0x004465da                          // 0x004464ae    0f8426010000
                         {disp8} mov        eax, dword ptr [esi + 0x34]                   // 0x004464b4    8b4634
                         test               eax, eax                                      // 0x004464b7    85c0
                         {disp32} je        _jmp_addr_0x004465da                          // 0x004464b9    0f841b010000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293d04]        // 0x004464bf    a1049dc500
                         test               eax, eax                                      // 0x004464c4    85c0
                         push               ebp                                           // 0x004464c6    55
                         {disp32} je        _jmp_addr_0x00446587                          // 0x004464c7    0f84ba000000
                         {disp8} mov        eax, dword ptr [eax + 0x44]                   // 0x004464cd    8b4044
                         test               eax, eax                                      // 0x004464d0    85c0
                         {disp32} je        _jmp_addr_0x00446587                          // 0x004464d2    0f84af000000
                         cmp.s              eax, esi                                      // 0x004464d8    3bc6
                         {disp8} jne        _jmp_addr_0x00446547                          // 0x004464da    756b
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bd9e8]        // 0x004464dc    8b15e839e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c4]        // 0x004464e2    a1c452e800
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c0]        // 0x004464e7    8b0dc052e800
                         add                edx, -0x20                                    // 0x004464ed    83c2e0
                         cmp.s              eax, edx                                      // 0x004464f0    3bc2
                         {disp8} jl         _jmp_addr_0x0044651b                          // 0x004464f2    7c27
                         {disp8} mov        eax, dword ptr [esi + 0x38]                   // 0x004464f4    8b4638
                         {disp32} mov       edx, dword ptr [eax + 0x00000208]             // 0x004464f7    8b9008020000
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x004464fd    8b4210
                         imul               eax, ecx                                      // 0x00446500    0fafc1
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x00446503    8944240c
                         {disp8} fild       dword ptr [esp + 0x0c]                        // 0x00446507    db44240c
                         {disp32} fidiv     dword ptr [_g_info_transform]                 // 0x0044650b    da35e439e800
                         call               _jmp_addr_0x007a1400                          // 0x00446511    e8eaae3500
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x00446516    894608
                         {disp8} jmp        _jmp_addr_0x00446569                          // 0x00446519    eb4e
_jmp_addr_0x0044651b:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0044651b    8b0d5c19d000
                         call               _jmp_addr_0x00555820                          // 0x00446521    e8faf21000
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00446526    8b5608
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x00446529    8b4e38
                         add.s              edx, eax                                      // 0x0044652c    03d0
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0044652e    895608
                         mov.s              eax, edx                                      // 0x00446531    8bc2
                         {disp32} mov       edx, dword ptr [ecx + 0x00000208]             // 0x00446533    8b9108020000
                         cmp                eax, dword ptr [edx + 0x10]                   // 0x00446539    3b4210
                         {disp8} jl         _jmp_addr_0x00446569                          // 0x0044653c    7c2b
                         {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x0044653e    c7460800000000
                         {disp8} jmp        _jmp_addr_0x00446569                          // 0x00446545    eb22
_jmp_addr_0x00446547:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00446547    8b0d009dc500
                         mov                edx, dword ptr [eax]                          // 0x0044654d    8b10
                         {disp32} mov       edx, dword ptr [ecx + edx * 0x4 + 0x000000f0] // 0x0044654f    8b9491f0000000
                         mov                ebx, dword ptr [esi]                          // 0x00446556    8b1e
                         {disp32} mov       ebp, dword ptr [ecx + ebx * 0x4 + 0x000000f0] // 0x00446558    8bac99f0000000
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0044655f    8b4808
                         sub.s              edx, ebp                                      // 0x00446562    2bd5
                         add.s              edx, ecx                                      // 0x00446564    03d1
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x00446566    895608
_jmp_addr_0x00446569:    {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x00446569    8b4e38
                         {disp32} mov       eax, dword ptr [ecx + 0x00000208]             // 0x0044656c    8b8108020000
                         {disp8} mov        eax, dword ptr [eax + 0x10]                   // 0x00446572    8b4010
                         cmp                dword ptr [esi + 0x08], eax                   // 0x00446575    394608
                         {disp8} jl         _jmp_addr_0x0044657e                          // 0x00446578    7c04
                         dec                eax                                           // 0x0044657a    48
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0044657b    894608
_jmp_addr_0x0044657e:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0044657e    8b4608
                         test               eax, eax                                      // 0x00446581    85c0
                         {disp8} jge        _jmp_addr_0x004465b3                          // 0x00446583    7d2e
                         {disp8} jmp        _jmp_addr_0x004465ac                          // 0x00446585    eb25
_jmp_addr_0x00446587:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00446587    8b0d5c19d000
                         call               _jmp_addr_0x00555820                          // 0x0044658d    e88ef21000
                         {disp8} mov        ebp, dword ptr [esi + 0x08]                   // 0x00446592    8b6e08
                         {disp8} mov        ecx, dword ptr [esi + 0x38]                   // 0x00446595    8b4e38
                         add.s              ebp, eax                                      // 0x00446598    03e8
                         {disp8} mov        dword ptr [esi + 0x08], ebp                   // 0x0044659a    896e08
                         {disp32} mov       edx, dword ptr [ecx + 0x00000208]             // 0x0044659d    8b9108020000
                         {disp8} mov        ebx, dword ptr [edx + 0x10]                   // 0x004465a3    8b5a10
                         mov.s              eax, ebp                                      // 0x004465a6    8bc5
                         cmp.s              eax, ebx                                      // 0x004465a8    3bc3
                         {disp8} jl         _jmp_addr_0x004465b3                          // 0x004465aa    7c07
_jmp_addr_0x004465ac:    {disp8} mov        dword ptr [esi + 0x08], 0x00000000            // 0x004465ac    c7460800000000
_jmp_addr_0x004465b3:    {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x004465b3    8b5608
                         {disp8} lea        eax, dword ptr [esi + 0x18]                   // 0x004465b6    8d4618
                         push               eax                                           // 0x004465b9    50
                         push               edx                                           // 0x004465ba    52
                         call               _jmp_addr_0x00844280                          // 0x004465bb    e8c0dc3f00
                         {disp8} mov        eax, dword ptr [esi + 0x38]                   // 0x004465c0    8b4638
                         {disp32} mov       edx, dword ptr [eax + 0x00000204]             // 0x004465c3    8b9004020000
                         mov                eax, dword ptr [eax]                          // 0x004465c9    8b00
                         {disp8} lea        ecx, dword ptr [esi + 0x24]                   // 0x004465cb    8d4e24
                         push               ecx                                           // 0x004465ce    51
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004465cf    8b4e34
                         push               edx                                           // 0x004465d2    52
                         push               eax                                           // 0x004465d3    50
                         call               _jmp_addr_0x008439c0                          // 0x004465d4    e8e7d33f00
                         pop                ebp                                           // 0x004465d9    5d
_jmp_addr_0x004465da:    pop                esi                                           // 0x004465da    5e
                         pop                ebx                                           // 0x004465db    5b
                         pop                ecx                                           // 0x004465dc    59
                         ret                                                              // 0x004465dd    c3
                         nop                                                              // 0x004465de    90
                         nop                                                              // 0x004465df    90
_jmp_addr_0x004465e0:    push               esi                                           // 0x004465e0    56
                         mov.s              esi, ecx                                      // 0x004465e1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x004465e3    8b4e30
                         push               edi                                           // 0x004465e6    57
                         xor.s              edi, edi                                      // 0x004465e7    33ff
                         cmp.s              ecx, edi                                      // 0x004465e9    3bcf
                         {disp8} je         _jmp_addr_0x004465f5                          // 0x004465eb    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x004465ed    e81ec93f00
                         {disp8} mov        dword ptr [esi + 0x30], edi                   // 0x004465f2    897e30
_jmp_addr_0x004465f5:    {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004465f5    8b4e34
                         cmp.s              ecx, edi                                      // 0x004465f8    3bcf
                         {disp8} je         _jmp_addr_0x00446604                          // 0x004465fa    7408
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x004465fc    e80fc93f00
                         {disp8} mov        dword ptr [esi + 0x34], edi                   // 0x00446601    897e34
_jmp_addr_0x00446604:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446604    8b4604
                         cmp                eax, 0x01                                     // 0x00446607    83f801
                         {disp32} jle       _jmp_addr_0x004466f1                          // 0x0044660a    0f8ee1000000
                         push               eax                                           // 0x00446610    50
                         call               _jmp_addr_0x00842e70                          // 0x00446611    e85ac83f00
                         {disp8} mov        dword ptr [esi + 0x30], eax                   // 0x00446616    894630
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446619    8b4604
                         push               eax                                           // 0x0044661c    50
                         call               _jmp_addr_0x00842e70                          // 0x0044661d    e84ec83f00
                         {disp8} mov        dword ptr [esi + 0x34], eax                   // 0x00446622    894634
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446625    8b4604
                         add                esp, 0x08                                     // 0x00446628    83c408
                         cmp.s              eax, edi                                      // 0x0044662b    3bc7
                         {disp8} jle        _jmp_addr_0x00446683                          // 0x0044662d    7e54
                         push               ebx                                           // 0x0044662f    53
                         push               ebp                                           // 0x00446630    55
                         mov                ebp, 0xbf800000                               // 0x00446631    bd000080bf
_jmp_addr_0x00446636:    {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x00446636    8b4e14
                         mov                ebx, dword ptr [ecx + edi * 0x4]              // 0x00446639    8b1cb9
                         {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x0044663c    8b4e30
                         {disp8} lea        edx, dword ptr [ebx + 0x24]                   // 0x0044663f    8d5324
                         push               edx                                           // 0x00446642    52
                         push               edi                                           // 0x00446643    57
                         call               _jmp_addr_0x00842f30                          // 0x00446644    e8e7c83f00
                         cmp                dword ptr [esi + 0x0c], ebp                   // 0x00446649    396e0c
                         {disp8} jne        _jmp_addr_0x00446656                          // 0x0044664c    7508
                         {disp32} fld       dword ptr [rdata_bytes + 0x241c]              // 0x0044664e    d9051cb48a00
                         {disp8} jmp        _jmp_addr_0x00446659                          // 0x00446654    eb03
_jmp_addr_0x00446656:    {disp8} fld        dword ptr [esi + 0x0c]                        // 0x00446656    d9460c
_jmp_addr_0x00446659:    cmp                dword ptr [ebx + 0x40], ebp                   // 0x00446659    396b40
                         {disp8} je         _jmp_addr_0x00446663                          // 0x0044665c    7405
                         fstp               st(0)                                         // 0x0044665e    ddd8
                         {disp8} fld        dword ptr [ebx + 0x40]                        // 0x00446660    d94340
_jmp_addr_0x00446663:    {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x00446663    8b4630
                         {disp8} mov        ecx, dword ptr [eax + 0x20]                   // 0x00446666    8b4820
                         add                ebx, 0x30                                     // 0x00446669    83c330
                         fstp               dword ptr [ecx + edi * 0x4]                   // 0x0044666c    d91cb9
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0044666f    8b4e34
                         push               ebx                                           // 0x00446672    53
                         push               edi                                           // 0x00446673    57
                         call               _jmp_addr_0x00842f30                          // 0x00446674    e8b7c83f00
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x00446679    8b4604
                         inc                edi                                           // 0x0044667c    47
                         cmp.s              edi, eax                                      // 0x0044667d    3bf8
                         {disp8} jl         _jmp_addr_0x00446636                          // 0x0044667f    7cb5
                         pop                ebp                                           // 0x00446681    5d
                         pop                ebx                                           // 0x00446682    5b
_jmp_addr_0x00446683:    {disp8} mov        ecx, dword ptr [esi + 0x30]                   // 0x00446683    8b4e30
                         call               _jmp_addr_0x00843050                          // 0x00446686    e8c5c93f00
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x0044668b    8b4e34
                         call               _jmp_addr_0x00843050                          // 0x0044668e    e8bdc93f00
                         push               0x00000612                                    // 0x00446693    6812060000
                         push               0x009cdba0                                    // 0x00446698    68a0db9c00
                         push               0x0000020c                                    // 0x0044669d    680c020000
                         call               ___nw__FUl                                    // 0x004466a2    e8e9503900
                         add                esp, 0x0c                                     // 0x004466a7    83c40c
                         test               eax, eax                                      // 0x004466aa    85c0
                         {disp8} je         _jmp_addr_0x004466bb                          // 0x004466ac    740d
                         {disp8} mov        edx, dword ptr [esi + 0x30]                   // 0x004466ae    8b5630
                         push               edx                                           // 0x004466b1    52
                         mov.s              ecx, eax                                      // 0x004466b2    8bc8
                         call               @__ct__Q27LH3DWay7RunningFP7LH3DWay@12        // 0x004466b4    e817d83f00
                         {disp8} jmp        _jmp_addr_0x004466bd                          // 0x004466b9    eb02
_jmp_addr_0x004466bb:    xor.s              eax, eax                                      // 0x004466bb    33c0
_jmp_addr_0x004466bd:    push               0x00000613                                    // 0x004466bd    6813060000
                         push               0x009cdba0                                    // 0x004466c2    68a0db9c00
                         push               0x0000020c                                    // 0x004466c7    680c020000
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x004466cc    894638
                         call               ___nw__FUl                                    // 0x004466cf    e8bc503900
                         add                esp, 0x0c                                     // 0x004466d4    83c40c
                         test               eax, eax                                      // 0x004466d7    85c0
                         {disp8} je         _jmp_addr_0x004466ec                          // 0x004466d9    7411
                         {disp8} mov        ecx, dword ptr [esi + 0x34]                   // 0x004466db    8b4e34
                         push               ecx                                           // 0x004466de    51
                         mov.s              ecx, eax                                      // 0x004466df    8bc8
                         call               @__ct__Q27LH3DWay7RunningFP7LH3DWay@12        // 0x004466e1    e8ead73f00
                         pop                edi                                           // 0x004466e6    5f
                         {disp8} mov        dword ptr [esi + 0x3c], eax                   // 0x004466e7    89463c
                         pop                esi                                           // 0x004466ea    5e
                         ret                                                              // 0x004466eb    c3
_jmp_addr_0x004466ec:    xor.s              eax, eax                                      // 0x004466ec    33c0
                         {disp8} mov        dword ptr [esi + 0x3c], eax                   // 0x004466ee    89463c
_jmp_addr_0x004466f1:    pop                edi                                           // 0x004466f1    5f
                         pop                esi                                           // 0x004466f2    5e
                         ret                                                              // 0x004466f3    c3
                         nop                                                              // 0x004466f4    90
                         nop                                                              // 0x004466f5    90
                         nop                                                              // 0x004466f6    90
                         nop                                                              // 0x004466f7    90
                         nop                                                              // 0x004466f8    90
                         nop                                                              // 0x004466f9    90
                         nop                                                              // 0x004466fa    90
                         nop                                                              // 0x004466fb    90
                         nop                                                              // 0x004466fc    90
                         nop                                                              // 0x004466fd    90
                         nop                                                              // 0x004466fe    90
                         nop                                                              // 0x004466ff    90
_jmp_addr_0x00446700:    push               ecx                                           // 0x00446700    51
                         push               ebx                                           // 0x00446701    53
                         push               esi                                           // 0x00446702    56
                         mov.s              ebx, ecx                                      // 0x00446703    8bd9
                         {disp8} mov        esi, dword ptr [ebx + 0x04]                   // 0x00446705    8b7304
                         dec                esi                                           // 0x00446708    4e
                         {disp8} je         _jmp_addr_0x0044676b                          // 0x00446709    7460
                         push               ebp                                           // 0x0044670b    55
                         push               edi                                           // 0x0044670c    57
                         {disp32} lea       edi, dword ptr [esi * 0x4 + 0x00000000]       // 0x0044670d    8d3cb500000000
                         push               edi                                           // 0x00446714    57
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00446715    e8c6c53f00
                         mov.s              ebp, eax                                      // 0x0044671a    8be8
                         add                esp, 0x04                                     // 0x0044671c    83c404
                         test               ebp, ebp                                      // 0x0044671f    85ed
                         {disp8} je         _jmp_addr_0x00446737                          // 0x00446721    7414
                         mov.s              ecx, edi                                      // 0x00446723    8bcf
                         mov.s              edx, ecx                                      // 0x00446725    8bd1
                         shr                ecx, 2                                        // 0x00446727    c1e902
                         xor.s              eax, eax                                      // 0x0044672a    33c0
                         mov.s              edi, ebp                                      // 0x0044672c    8bfd
                         rep stosd                                                        // 0x0044672e    f3ab
                         mov.s              ecx, edx                                      // 0x00446730    8bca
                         and                ecx, 0x03                                     // 0x00446732    83e103
                         rep stosb                                                        // 0x00446735    f3aa
_jmp_addr_0x00446737:    test               esi, esi                                      // 0x00446737    85f6
                         {disp8} mov        eax, dword ptr [ebx + 0x14]                   // 0x00446739    8b4314
                         {disp8} jle        _jmp_addr_0x00446758                          // 0x0044673c    7e1a
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0044673e    8b542418
                         mov.s              ecx, ebp                                      // 0x00446742    8bcd
_jmp_addr_0x00446744:    cmp                edx, dword ptr [eax]                          // 0x00446744    3b10
                         {disp8} jne        _jmp_addr_0x0044674b                          // 0x00446746    7503
                         add                eax, 0x04                                     // 0x00446748    83c004
_jmp_addr_0x0044674b:    mov                edi, dword ptr [eax]                          // 0x0044674b    8b38
                         mov                dword ptr [ecx], edi                          // 0x0044674d    8939
                         add                eax, 0x04                                     // 0x0044674f    83c004
                         add                ecx, 0x4                                      // 0x00446752    83c104
                         dec                esi                                           // 0x00446755    4e
                         {disp8} jne        _jmp_addr_0x00446744                          // 0x00446756    75ec
_jmp_addr_0x00446758:    {disp8} mov        eax, dword ptr [ebx + 0x14]                   // 0x00446758    8b4314
                         push               eax                                           // 0x0044675b    50
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0044675c    e8ffc53f00
                         add                esp, 0x04                                     // 0x00446761    83c404
                         pop                edi                                           // 0x00446764    5f
                         {disp8} mov        dword ptr [ebx + 0x14], ebp                   // 0x00446765    896b14
                         pop                ebp                                           // 0x00446768    5d
                         {disp8} jmp        _jmp_addr_0x0044677e                          // 0x00446769    eb13
_jmp_addr_0x0044676b:    {disp8} mov        ecx, dword ptr [ebx + 0x14]                   // 0x0044676b    8b4b14
                         push               ecx                                           // 0x0044676e    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0044676f    e8ecc53f00
                         add                esp, 0x04                                     // 0x00446774    83c404
                         {disp8} mov        dword ptr [ebx + 0x14], 0x00000000            // 0x00446777    c7431400000000
_jmp_addr_0x0044677e:    {disp8} mov        edx, dword ptr [ebx + 0x04]                   // 0x0044677e    8b5304
                         mov                eax, dword ptr [ebx]                          // 0x00446781    8b03
                         dec                edx                                           // 0x00446783    4a
                         cmp                eax, 0x09                                     // 0x00446784    83f809
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x00446787    895304
                         push               eax                                           // 0x0044678a    50
                         {disp8} jle        _jmp_addr_0x00446799                          // 0x0044678b    7e0c
                         push               0x009cda78                                    // 0x0044678d    6878da9c00
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x00446792    8d542410
                         push               edx                                           // 0x00446796    52
                         {disp8} jmp        _jmp_addr_0x004467a3                          // 0x00446797    eb0a
_jmp_addr_0x00446799:    push               0x009cdbec                                    // 0x00446799    68ecdb9c00
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0044679e    8d442410
                         push               eax                                           // 0x004467a2    50
_jmp_addr_0x004467a3:    call               _sprintf                                      // 0x004467a3    e82af03700
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x004467a8    8b4304
                         add                esp, 0x0c                                     // 0x004467ab    83c40c
                         xor.s              esi, esi                                      // 0x004467ae    33f6
                         test               eax, eax                                      // 0x004467b0    85c0
                         {disp8} jle        _jmp_addr_0x004467f9                          // 0x004467b2    7e45
_jmp_addr_0x004467b4:    cmp                esi, 0x0a                                     // 0x004467b4    83fe0a
                         {disp8} mov        ecx, dword ptr [ebx + 0x14]                   // 0x004467b7    8b4b14
                         mov                eax, dword ptr [ecx + esi * 0x4]              // 0x004467ba    8b04b1
                         {disp8} jge        _jmp_addr_0x004467cc                          // 0x004467bd    7d0d
                         push               esi                                           // 0x004467bf    56
                         {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x004467c0    8d54240c
                         push               edx                                           // 0x004467c4    52
                         push               0x009cdbe0                                    // 0x004467c5    68e0db9c00
                         {disp8} jmp        _jmp_addr_0x004467e8                          // 0x004467ca    eb1c
_jmp_addr_0x004467cc:    cmp                esi, 0x64                                     // 0x004467cc    83fe64
                         push               esi                                           // 0x004467cf    56
                         {disp8} jge        _jmp_addr_0x004467de                          // 0x004467d0    7d0c
                         {disp8} lea        ecx, dword ptr [esp + 0x0c]                   // 0x004467d2    8d4c240c
                         push               ecx                                           // 0x004467d6    51
                         push               0x009cdbd8                                    // 0x004467d7    68d8db9c00
                         {disp8} jmp        _jmp_addr_0x004467e8                          // 0x004467dc    eb0a
_jmp_addr_0x004467de:    {disp8} lea        edx, dword ptr [esp + 0x0c]                   // 0x004467de    8d54240c
                         push               edx                                           // 0x004467e2    52
                         push               0x009cdbd0                                    // 0x004467e3    68d0db9c00
_jmp_addr_0x004467e8:    push               eax                                           // 0x004467e8    50
                         call               _sprintf                                      // 0x004467e9    e8e4ef3700
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x004467ee    8b4304
                         add                esp, 0x10                                     // 0x004467f1    83c410
                         inc                esi                                           // 0x004467f4    46
                         cmp.s              esi, eax                                      // 0x004467f5    3bf0
                         {disp8} jl         _jmp_addr_0x004467b4                          // 0x004467f7    7cbb
_jmp_addr_0x004467f9:    mov.s              ecx, ebx                                      // 0x004467f9    8bcb
                         call               _jmp_addr_0x004465e0                          // 0x004467fb    e8e0fdffff
                         pop                esi                                           // 0x00446800    5e
                         pop                ebx                                           // 0x00446801    5b
                         pop                ecx                                           // 0x00446802    59
                         ret                0x0004                                        // 0x00446803    c20400
                         nop                                                              // 0x00446806    90
                         nop                                                              // 0x00446807    90
                         nop                                                              // 0x00446808    90
                         nop                                                              // 0x00446809    90
                         nop                                                              // 0x0044680a    90
                         nop                                                              // 0x0044680b    90
                         nop                                                              // 0x0044680c    90
                         nop                                                              // 0x0044680d    90
                         nop                                                              // 0x0044680e    90
                         nop                                                              // 0x0044680f    90
_jmp_addr_0x00446810:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d04]        // 0x00446810    a1049dc500
                         test               eax, eax                                      // 0x00446815    85c0
                         {disp8} je         _jmp_addr_0x00446877                          // 0x00446817    745e
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x7a70]          // 0x00446819    8b0d70da9c00
                         test               ecx, ecx                                      // 0x0044681f    85c9
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x00446821    c705189dc50001000000
                         {disp8} je         _jmp_addr_0x00446832                          // 0x0044682b    7405
                         add                eax, 0x30                                     // 0x0044682d    83c030
                         {disp8} jmp        _jmp_addr_0x00446835                          // 0x00446830    eb03
_jmp_addr_0x00446832:    add                eax, 0x24                                     // 0x00446832    83c024
_jmp_addr_0x00446835:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d14]        // 0x00446835    8b0d149dc500
                         sub                ecx, 0x00                                     // 0x0044683b    83e900
                         {disp8} je         _jmp_addr_0x0044685e                          // 0x0044683e    741e
                         dec                ecx                                           // 0x00446840    49
                         {disp8} je         _jmp_addr_0x00446852                          // 0x00446841    740f
                         dec                ecx                                           // 0x00446843    49
                         {disp8} jne        _jmp_addr_0x00446866                          // 0x00446844    7520
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x00446846    d9442404
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x0044684a    d84008
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0044684d    d95808
                         {disp8} jmp        _jmp_addr_0x00446866                          // 0x00446850    eb14
_jmp_addr_0x00446852:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x00446852    d9442404
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x00446856    d84004
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x00446859    d95804
                         {disp8} jmp        _jmp_addr_0x00446866                          // 0x0044685c    eb08
_jmp_addr_0x0044685e:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0044685e    d9442404
                         fadd               dword ptr [eax]                               // 0x00446862    d800
                         fstp               dword ptr [eax]                               // 0x00446864    d918
_jmp_addr_0x00446866:    {disp32} mov       eax, dword ptr [data_bytes + 0x293d04]        // 0x00446866    a1049dc500
                         {disp8} mov        ecx, dword ptr [eax + 0x44]                   // 0x0044686b    8b4844
                         test               ecx, ecx                                      // 0x0044686e    85c9
                         {disp8} je         _jmp_addr_0x00446877                          // 0x00446870    7405
                         {disp32} jmp       _jmp_addr_0x004465e0                          // 0x00446872    e969fdffff
_jmp_addr_0x00446877:    ret                                                              // 0x00446877    c3
                         nop                                                              // 0x00446878    90
                         nop                                                              // 0x00446879    90
                         nop                                                              // 0x0044687a    90
                         nop                                                              // 0x0044687b    90
                         nop                                                              // 0x0044687c    90
                         nop                                                              // 0x0044687d    90
                         nop                                                              // 0x0044687e    90
                         nop                                                              // 0x0044687f    90
_jmp_addr_0x00446880:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00446880    8b442404
                         mov                cl, byte ptr [eax]                            // 0x00446884    8a08
                         cmp                cl, 0x3f                                      // 0x00446886    80f93f
                         {disp8} je         _jmp_addr_0x004468d1                          // 0x00446889    7446
                         cmp                cl, 0x78                                      // 0x0044688b    80f978
                         {disp8} je         _jmp_addr_0x00446893                          // 0x0044688e    7403
_jmp_addr_0x00446890:    xor.s              eax, eax                                      // 0x00446890    33c0
                         ret                                                              // 0x00446892    c3
_jmp_addr_0x00446893:    {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x00446893    8a5001
                         cmp                dl, 0x2d                                      // 0x00446896    80fa2d
                         {disp8} lea        ecx, dword ptr [eax + 0x01]                   // 0x00446899    8d4801
                         {disp8} jne        _jmp_addr_0x004468b9                          // 0x0044689c    751b
                         {disp8} lea        ecx, dword ptr [eax + 0x02]                   // 0x0044689e    8d4802
                         mov                al, byte ptr [ecx]                            // 0x004468a1    8a01
                         test               al, al                                        // 0x004468a3    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468a5    7466
_jmp_addr_0x004468a7:    cmp                al, 0x39                                      // 0x004468a7    3c39
                         {disp8} jg         _jmp_addr_0x00446890                          // 0x004468a9    7fe5
                         cmp                al, 0x30                                      // 0x004468ab    3c30
                         {disp8} jl         _jmp_addr_0x00446890                          // 0x004468ad    7ce1
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004468af    8a4101
                         inc                ecx                                           // 0x004468b2    41
                         test               al, al                                        // 0x004468b3    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468b5    7456
                         {disp8} jmp        _jmp_addr_0x004468a7                          // 0x004468b7    ebee
_jmp_addr_0x004468b9:    mov                al, byte ptr [ecx]                            // 0x004468b9    8a01
                         test               al, al                                        // 0x004468bb    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468bd    744e
_jmp_addr_0x004468bf:    cmp                al, 0x39                                      // 0x004468bf    3c39
                         {disp8} jg         _jmp_addr_0x00446890                          // 0x004468c1    7fcd
                         cmp                al, 0x30                                      // 0x004468c3    3c30
                         {disp8} jl         _jmp_addr_0x00446890                          // 0x004468c5    7cc9
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004468c7    8a4101
                         inc                ecx                                           // 0x004468ca    41
                         test               al, al                                        // 0x004468cb    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468cd    743e
                         {disp8} jmp        _jmp_addr_0x004468bf                          // 0x004468cf    ebee
_jmp_addr_0x004468d1:    {disp8} mov        dl, byte ptr [eax + 0x01]                     // 0x004468d1    8a5001
                         cmp                dl, 0x3f                                      // 0x004468d4    80fa3f
                         {disp8} lea        ecx, dword ptr [eax + 0x01]                   // 0x004468d7    8d4801
                         {disp8} jne        _jmp_addr_0x004468f7                          // 0x004468da    751b
                         {disp8} lea        ecx, dword ptr [eax + 0x02]                   // 0x004468dc    8d4802
                         mov                al, byte ptr [ecx]                            // 0x004468df    8a01
                         test               al, al                                        // 0x004468e1    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468e3    7428
_jmp_addr_0x004468e5:    cmp                al, 0x39                                      // 0x004468e5    3c39
                         {disp8} jg         _jmp_addr_0x00446890                          // 0x004468e7    7fa7
                         cmp                al, 0x30                                      // 0x004468e9    3c30
                         {disp8} jl         _jmp_addr_0x00446890                          // 0x004468eb    7ca3
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004468ed    8a4101
                         inc                ecx                                           // 0x004468f0    41
                         test               al, al                                        // 0x004468f1    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468f3    7418
                         {disp8} jmp        _jmp_addr_0x004468e5                          // 0x004468f5    ebee
_jmp_addr_0x004468f7:    mov                al, byte ptr [ecx]                            // 0x004468f7    8a01
                         test               al, al                                        // 0x004468f9    84c0
                         {disp8} je         _jmp_addr_0x0044690d                          // 0x004468fb    7410
_jmp_addr_0x004468fd:    cmp                al, 0x39                                      // 0x004468fd    3c39
                         {disp8} jg         _jmp_addr_0x00446890                          // 0x004468ff    7f8f
                         cmp                al, 0x30                                      // 0x00446901    3c30
                         {disp8} jl         _jmp_addr_0x00446890                          // 0x00446903    7c8b
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x00446905    8a4101
                         inc                ecx                                           // 0x00446908    41
                         test               al, al                                        // 0x00446909    84c0
                         {disp8} jne        _jmp_addr_0x004468fd                          // 0x0044690b    75f0
_jmp_addr_0x0044690d:    mov                eax, 0x00000001                               // 0x0044690d    b801000000
                         ret                                                              // 0x00446912    c3
                         nop                                                              // 0x00446913    90
                         nop                                                              // 0x00446914    90
                         nop                                                              // 0x00446915    90
                         nop                                                              // 0x00446916    90
                         nop                                                              // 0x00446917    90
                         nop                                                              // 0x00446918    90
                         nop                                                              // 0x00446919    90
                         nop                                                              // 0x0044691a    90
                         nop                                                              // 0x0044691b    90
                         nop                                                              // 0x0044691c    90
                         nop                                                              // 0x0044691d    90
                         nop                                                              // 0x0044691e    90
                         nop                                                              // 0x0044691f    90
_jmp_addr_0x00446920:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x00446920    8b4c2404
                         cmp                byte ptr [ecx], 0x78                          // 0x00446924    803978
                         {disp32} jne       _jmp_addr_0x004469de                          // 0x00446927    0f85b1000000
                         cmp                byte ptr [ecx + 0x01], 0x2d                   // 0x0044692d    8079012d
                         {disp8} jne        _jmp_addr_0x00446978                          // 0x00446931    7545
                         {disp8} mov        al, byte ptr [ecx + 0x02]                     // 0x00446933    8a4102
                         cmp                al, 0x39                                      // 0x00446936    3c39
                         {disp8} jg         _jmp_addr_0x00446971                          // 0x00446938    7f37
                         cmp                al, 0x30                                      // 0x0044693a    3c30
                         {disp8} jl         _jmp_addr_0x00446971                          // 0x0044693c    7c33
                         cmp                al, 0x39                                      // 0x0044693e    3c39
                         {disp8} jg         _jmp_addr_0x0044695d                          // 0x00446940    7f1b
                         cmp                al, 0x30                                      // 0x00446942    3c30
                         {disp8} jl         _jmp_addr_0x0044695d                          // 0x00446944    7c17
                         movsx              eax, al                                       // 0x00446946    0fbec0
                         sub                eax, 0x30                                     // 0x00446949    83e830
                         push               eax                                           // 0x0044694c    50
                         add                ecx, 0x3                                      // 0x0044694d    83c103
                         push               ecx                                           // 0x00446950    51
                         call               _jmp_addr_0x00446270                          // 0x00446951    e81af9ffff
                         add                esp, 0x08                                     // 0x00446956    83c408
                         neg                eax                                           // 0x00446959    f7d8
                         {disp8} jmp        _jmp_addr_0x004469b5                          // 0x0044695b    eb58
_jmp_addr_0x0044695d:    or                 eax, -0x1                                     // 0x0044695d    83c8ff
                         push               eax                                           // 0x00446960    50
                         add                ecx, 0x3                                      // 0x00446961    83c103
                         push               ecx                                           // 0x00446964    51
                         call               _jmp_addr_0x00446270                          // 0x00446965    e806f9ffff
                         add                esp, 0x08                                     // 0x0044696a    83c408
                         neg                eax                                           // 0x0044696d    f7d8
                         {disp8} jmp        _jmp_addr_0x004469b5                          // 0x0044696f    eb44
_jmp_addr_0x00446971:    or                 eax, -0x1                                     // 0x00446971    83c8ff
                         neg                eax                                           // 0x00446974    f7d8
                         {disp8} jmp        _jmp_addr_0x004469b5                          // 0x00446976    eb3d
_jmp_addr_0x00446978:    {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x00446978    8a4101
                         cmp                al, 0x39                                      // 0x0044697b    3c39
                         {disp8} jg         _jmp_addr_0x004469b2                          // 0x0044697d    7f33
                         cmp                al, 0x30                                      // 0x0044697f    3c30
                         {disp8} jl         _jmp_addr_0x004469b2                          // 0x00446981    7c2f
                         cmp                al, 0x39                                      // 0x00446983    3c39
                         {disp8} jg         _jmp_addr_0x004469a0                          // 0x00446985    7f19
                         cmp                al, 0x30                                      // 0x00446987    3c30
                         {disp8} jl         _jmp_addr_0x004469a0                          // 0x00446989    7c15
                         movsx              eax, al                                       // 0x0044698b    0fbec0
                         sub                eax, 0x30                                     // 0x0044698e    83e830
                         push               eax                                           // 0x00446991    50
                         add                ecx, 0x2                                      // 0x00446992    83c102
                         push               ecx                                           // 0x00446995    51
                         call               _jmp_addr_0x00446270                          // 0x00446996    e8d5f8ffff
                         add                esp, 0x08                                     // 0x0044699b    83c408
                         {disp8} jmp        _jmp_addr_0x004469b5                          // 0x0044699e    eb15
_jmp_addr_0x004469a0:    or                 eax, -0x1                                     // 0x004469a0    83c8ff
                         push               eax                                           // 0x004469a3    50
                         add                ecx, 0x2                                      // 0x004469a4    83c102
                         push               ecx                                           // 0x004469a7    51
                         call               _jmp_addr_0x00446270                          // 0x004469a8    e8c3f8ffff
                         add                esp, 0x08                                     // 0x004469ad    83c408
                         {disp8} jmp        _jmp_addr_0x004469b5                          // 0x004469b0    eb03
_jmp_addr_0x004469b2:    or                 eax, -0x1                                     // 0x004469b2    83c8ff
_jmp_addr_0x004469b5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293d04]        // 0x004469b5    8b0d049dc500
                         test               ecx, ecx                                      // 0x004469bb    85c9
                         {disp32} je        _jmp_addr_0x00446abb                          // 0x004469bd    0f84f8000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x44]                   // 0x004469c3    8b4944
                         test               ecx, ecx                                      // 0x004469c6    85c9
                         {disp32} je        _jmp_addr_0x00446abb                          // 0x004469c8    0f84ed000000
                         mov                ecx, dword ptr [ecx]                          // 0x004469ce    8b09
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293d00]        // 0x004469d0    8b15009dc500
                         {disp32} mov       dword ptr [edx + ecx * 0x4 + 0x000000f0], eax // 0x004469d6    89848af0000000
                         ret                                                              // 0x004469dd    c3
_jmp_addr_0x004469de:    {disp32} mov       edx, dword ptr [data_bytes + 0x293d04]        // 0x004469de    8b15049dc500
                         test               edx, edx                                      // 0x004469e4    85d2
                         {disp32} je        _jmp_addr_0x00446abb                          // 0x004469e6    0f84cf000000
                         {disp8} mov        eax, dword ptr [edx + 0x44]                   // 0x004469ec    8b4244
                         test               eax, eax                                      // 0x004469ef    85c0
                         {disp32} je        _jmp_addr_0x00446abb                          // 0x004469f1    0f84c4000000
                         cmp                byte ptr [ecx + 0x01], 0x3f                   // 0x004469f7    8079013f
                         {disp8} jne        _jmp_addr_0x00446a5d                          // 0x004469fb    7560
                         {disp8} mov        al, byte ptr [ecx + 0x02]                     // 0x004469fd    8a4102
                         cmp                al, 0x39                                      // 0x00446a00    3c39
                         {disp8} jg         _jmp_addr_0x00446a34                          // 0x00446a02    7f30
                         cmp                al, 0x30                                      // 0x00446a04    3c30
                         {disp8} jl         _jmp_addr_0x00446a34                          // 0x00446a06    7c2c
                         cmp                al, 0x39                                      // 0x00446a08    3c39
                         {disp8} jg         _jmp_addr_0x00446a18                          // 0x00446a0a    7f0c
                         cmp                al, 0x30                                      // 0x00446a0c    3c30
                         {disp8} jl         _jmp_addr_0x00446a18                          // 0x00446a0e    7c08
                         movsx              eax, al                                       // 0x00446a10    0fbec0
                         sub                eax, 0x30                                     // 0x00446a13    83e830
                         {disp8} jmp        _jmp_addr_0x00446a1b                          // 0x00446a16    eb03
_jmp_addr_0x00446a18:    or                 eax, -0x1                                     // 0x00446a18    83c8ff
_jmp_addr_0x00446a1b:    push               eax                                           // 0x00446a1b    50
                         add                ecx, 0x3                                      // 0x00446a1c    83c103
                         push               ecx                                           // 0x00446a1f    51
                         call               _jmp_addr_0x00446270                          // 0x00446a20    e84bf8ffff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293d04]        // 0x00446a25    8b15049dc500
                         add                esp, 0x08                                     // 0x00446a2b    83c408
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00446a2e    89442404
                         {disp8} jmp        _jmp_addr_0x00446a3c                          // 0x00446a32    eb08
_jmp_addr_0x00446a34:    {disp8} mov        dword ptr [esp + 0x04], 0xffffffff            // 0x00446a34    c7442404ffffffff
_jmp_addr_0x00446a3c:    {disp8} fild       dword ptr [esp + 0x04]                        // 0x00446a3c    db442404
                         {disp8} mov        eax, dword ptr [edx + 0x44]                   // 0x00446a40    8b4244
                         {disp8} fst        dword ptr [eax + 0x0c]                        // 0x00446a43    d9500c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293d04]        // 0x00446a46    8b0d049dc500
                         {disp8} mov        edx, dword ptr [ecx + 0x44]                   // 0x00446a4c    8b5144
                         mov                eax, dword ptr [edx]                          // 0x00446a4f    8b02
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293d00]        // 0x00446a51    8b0d009dc500
                         {disp8} fstp       dword ptr [ecx + eax * 0x4 + 0x28]            // 0x00446a57    d95c8128
                         {disp8} jmp        _jmp_addr_0x00446aa3                          // 0x00446a5b    eb46
_jmp_addr_0x00446a5d:    {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x00446a5d    8a4101
                         cmp                al, 0x39                                      // 0x00446a60    3c39
                         {disp8} jg         _jmp_addr_0x00446a94                          // 0x00446a62    7f30
                         cmp                al, 0x30                                      // 0x00446a64    3c30
                         {disp8} jl         _jmp_addr_0x00446a94                          // 0x00446a66    7c2c
                         cmp                al, 0x39                                      // 0x00446a68    3c39
                         {disp8} jg         _jmp_addr_0x00446a78                          // 0x00446a6a    7f0c
                         cmp                al, 0x30                                      // 0x00446a6c    3c30
                         {disp8} jl         _jmp_addr_0x00446a78                          // 0x00446a6e    7c08
                         movsx              eax, al                                       // 0x00446a70    0fbec0
                         sub                eax, 0x30                                     // 0x00446a73    83e830
                         {disp8} jmp        _jmp_addr_0x00446a7b                          // 0x00446a76    eb03
_jmp_addr_0x00446a78:    or                 eax, -0x1                                     // 0x00446a78    83c8ff
_jmp_addr_0x00446a7b:    push               eax                                           // 0x00446a7b    50
                         add                ecx, 0x2                                      // 0x00446a7c    83c102
                         push               ecx                                           // 0x00446a7f    51
                         call               _jmp_addr_0x00446270                          // 0x00446a80    e8ebf7ffff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x293d04]        // 0x00446a85    8b15049dc500
                         add                esp, 0x08                                     // 0x00446a8b    83c408
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00446a8e    89442404
                         {disp8} jmp        _jmp_addr_0x00446a9c                          // 0x00446a92    eb08
_jmp_addr_0x00446a94:    {disp8} mov        dword ptr [esp + 0x04], 0xffffffff            // 0x00446a94    c7442404ffffffff
_jmp_addr_0x00446a9c:    {disp8} fild       dword ptr [esp + 0x04]                        // 0x00446a9c    db442404
                         {disp8} fstp       dword ptr [edx + 0x40]                        // 0x00446aa0    d95a40
_jmp_addr_0x00446aa3:    {disp32} mov       edx, dword ptr [data_bytes + 0x293d04]        // 0x00446aa3    8b15049dc500
                         {disp8} mov        ecx, dword ptr [edx + 0x44]                   // 0x00446aa9    8b4a44
                         call               _jmp_addr_0x004465e0                          // 0x00446aac    e82ffbffff
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000001 // 0x00446ab1    c705189dc50001000000
_jmp_addr_0x00446abb:    ret                                                              // 0x00446abb    c3
                         nop                                                              // 0x00446abc    90
                         nop                                                              // 0x00446abd    90
                         nop                                                              // 0x00446abe    90
                         nop                                                              // 0x00446abf    90
_jmp_addr_0x00446ac0:    push               ebx                                           // 0x00446ac0    53
                         push               esi                                           // 0x00446ac1    56
                         push               edi                                           // 0x00446ac2    57
                         mov.s              edi, ecx                                      // 0x00446ac3    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x04]                   // 0x00446ac5    8b7704
                         xor.s              ebx, ebx                                      // 0x00446ac8    33db
                         cmp.s              esi, ebx                                      // 0x00446aca    3bf3
                         {disp8} je         _jmp_addr_0x00446aef                          // 0x00446acc    7421
                         {disp32} mov       ecx, dword ptr [esi + 0x00000208]             // 0x00446ace    8b8e08020000
                         cmp.s              ecx, ebx                                      // 0x00446ad4    3bcb
                         {disp8} je         _jmp_addr_0x00446ae3                          // 0x00446ad6    740b
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x00446ad8    e833c43f00
                         {disp32} mov       dword ptr [esi + 0x00000208], ebx             // 0x00446add    899e08020000
_jmp_addr_0x00446ae3:    push               esi                                           // 0x00446ae3    56
                         call               ??3@YAXPAX@Z                                  // 0x00446ae4    e8af833600
                         add                esp, 0x04                                     // 0x00446ae9    83c404
                         {disp8} mov        dword ptr [edi + 0x04], ebx                   // 0x00446aec    895f04
_jmp_addr_0x00446aef:    {disp8} mov        esi, dword ptr [edi + 0x08]                   // 0x00446aef    8b7708
                         cmp.s              esi, ebx                                      // 0x00446af2    3bf3
                         {disp8} je         _jmp_addr_0x00446b17                          // 0x00446af4    7421
                         {disp32} mov       ecx, dword ptr [esi + 0x00000208]             // 0x00446af6    8b8e08020000
                         cmp.s              ecx, ebx                                      // 0x00446afc    3bcb
                         {disp8} je         _jmp_addr_0x00446b0b                          // 0x00446afe    740b
                         call               ?Release@LH3DWay@@QAEXXZ                      // 0x00446b00    e80bc43f00
                         {disp32} mov       dword ptr [esi + 0x00000208], ebx             // 0x00446b05    899e08020000
_jmp_addr_0x00446b0b:    push               esi                                           // 0x00446b0b    56
                         call               ??3@YAXPAX@Z                                  // 0x00446b0c    e887833600
                         add                esp, 0x04                                     // 0x00446b11    83c404
                         {disp8} mov        dword ptr [edi + 0x08], ebx                   // 0x00446b14    895f08
_jmp_addr_0x00446b17:    push               edi                                           // 0x00446b17    57
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00446b18    e843c23f00
                         add                esp, 0x04                                     // 0x00446b1d    83c404
                         pop                edi                                           // 0x00446b20    5f
                         pop                esi                                           // 0x00446b21    5e
                         pop                ebx                                           // 0x00446b22    5b
                         ret                                                              // 0x00446b23    c3
                         nop                                                              // 0x00446b24    90
                         nop                                                              // 0x00446b25    90
                         nop                                                              // 0x00446b26    90
                         nop                                                              // 0x00446b27    90
                         nop                                                              // 0x00446b28    90
                         nop                                                              // 0x00446b29    90
                         nop                                                              // 0x00446b2a    90
                         nop                                                              // 0x00446b2b    90
                         nop                                                              // 0x00446b2c    90
                         nop                                                              // 0x00446b2d    90
                         nop                                                              // 0x00446b2e    90
                         nop                                                              // 0x00446b2f    90
_jmp_addr_0x00446b30:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446b30    8b0df49cc500
                         sub                esp, 0x00000498                               // 0x00446b36    81ec98040000
                         push               ebp                                           // 0x00446b3c    55
                         call               ?Close@LHFile@@QAEIXZ                         // 0x00446b3d    e87e703700
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446b42    8b0df49cc500
                         mov                eax, dword ptr [ecx]                          // 0x00446b48    8b01
                         xor.s              ebp, ebp                                      // 0x00446b4a    33ed
                         push               ebp                                           // 0x00446b4c    55
                         call               dword ptr [eax]                               // 0x00446b4d    ff10
                         test               eax, eax                                      // 0x00446b4f    85c0
                         {disp8} je         _jmp_addr_0x00446b75                          // 0x00446b51    7422
                         push               0x009cdc70                                    // 0x00446b53    6870dc9c00
                         {disp32} lea       ecx, dword ptr [esp + 0x000000a0]             // 0x00446b58    8d8c24a0000000
                         push               0x009cdc9c                                    // 0x00446b5f    689cdc9c00
                         push               ecx                                           // 0x00446b64    51
                         call               _sprintf                                      // 0x00446b65    e868ec3700
                         add                esp, 0x0c                                     // 0x00446b6a    83c40c
                         pop                ebp                                           // 0x00446b6d    5d
                         add                esp, 0x00000498                               // 0x00446b6e    81c498040000
                         ret                                                              // 0x00446b74    c3
_jmp_addr_0x00446b75:    push               ebx                                           // 0x00446b75    53
                         push               esi                                           // 0x00446b76    56
                         push               edi                                           // 0x00446b77    57
                         xor.s              eax, eax                                      // 0x00446b78    33c0
                         mov                ecx, 0x00000008                               // 0x00446b7a    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x7c]                   // 0x00446b7f    8d7c247c
                         rep stosd                                                        // 0x00446b83    f3ab
                         stosb                                                            // 0x00446b85    aa
                         or                 ecx, 0xffffffff                               // 0x00446b86    83c9ff
                         xor.s              eax, eax                                      // 0x00446b89    33c0
                         mov                edi, 0x009cdc84                               // 0x00446b8b    bf84dc9c00
                         repne scasb                                                      // 0x00446b90    f2ae
                         not                ecx                                           // 0x00446b92    f7d1
                         sub.s              edi, ecx                                      // 0x00446b94    2bf9
                         mov.s              eax, ecx                                      // 0x00446b96    8bc1
                         shr                ecx, 2                                        // 0x00446b98    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x7c]                   // 0x00446b9b    8d54247c
                         mov.s              esi, edi                                      // 0x00446b9f    8bf7
                         mov.s              edi, edx                                      // 0x00446ba1    8bfa
                         {disp32} mov       edx, dword ptr [esp + 0x000004ac]             // 0x00446ba3    8b9424ac040000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446baa    f3a5
                         mov.s              ecx, eax                                      // 0x00446bac    8bc8
                         and                ecx, 0x03                                     // 0x00446bae    83e103
                         rep movsb                                                        // 0x00446bb1    f3a4
                         {disp32} mov       ecx, dword ptr [esp + 0x000004b0]             // 0x00446bb3    8b8c24b0040000
                         {disp8} lea        eax, dword ptr [esp + 0x7c]                   // 0x00446bba    8d44247c
                         {disp32} mov       dword ptr [esp + 0x000000a0], ecx             // 0x00446bbe    898c24a0000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446bc5    8b0df49cc500
                         push               eax                                           // 0x00446bcb    50
                         {disp32} mov       dword ptr [esp + 0x000000a8], edx             // 0x00446bcc    899424a8000000
                         call               _jmp_addr_0x007bda90                          // 0x00446bd3    e8b86e3700
                         xor.s              eax, eax                                      // 0x00446bd8    33c0
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x00446bda    896c2448
                         {disp8} mov        dword ptr [esp + 0x4c], ebp                   // 0x00446bde    896c244c
                         mov                ecx, 0x00000008                               // 0x00446be2    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x24]                   // 0x00446be7    8d7c2424
                         rep stosd                                                        // 0x00446beb    f3ab
                         stosb                                                            // 0x00446bed    aa
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00446bee    a1fc9cc500
                         cmp.s              eax, ebp                                      // 0x00446bf3    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00446bf5    89442410
                         {disp32} je        _jmp_addr_0x00446c82                          // 0x00446bf9    0f8483000000
                         {disp8} jmp        _jmp_addr_0x00446c05                          // 0x00446bff    eb04
_jmp_addr_0x00446c01:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00446c01    8b442410
_jmp_addr_0x00446c05:    {disp32} mov       ebx, dword ptr [eax + 0x000001b8]             // 0x00446c05    8b98b8010000
                         test               ebx, ebx                                      // 0x00446c0b    85db
                         {disp8} je         _jmp_addr_0x00446c72                          // 0x00446c0d    7463
_jmp_addr_0x00446c0f:    push               ebp                                           // 0x00446c0f    55
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x00446c10    8d4c241c
                         push               0x009cdc94                                    // 0x00446c14    6894dc9c00
                         push               ecx                                           // 0x00446c19    51
                         call               _sprintf                                      // 0x00446c1a    e8b3eb3700
                         or                 ecx, 0xffffffff                               // 0x00446c1f    83c9ff
                         xor.s              eax, eax                                      // 0x00446c22    33c0
                         add                esp, 0x0c                                     // 0x00446c24    83c40c
                         {disp8} lea        edi, dword ptr [esp + 0x18]                   // 0x00446c27    8d7c2418
                         repne scasb                                                      // 0x00446c2b    f2ae
                         not                ecx                                           // 0x00446c2d    f7d1
                         sub.s              edi, ecx                                      // 0x00446c2f    2bf9
                         mov.s              eax, ecx                                      // 0x00446c31    8bc1
                         shr                ecx, 2                                        // 0x00446c33    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00446c36    8d542424
                         mov.s              esi, edi                                      // 0x00446c3a    8bf7
                         mov.s              edi, edx                                      // 0x00446c3c    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446c3e    f3a5
                         mov.s              ecx, eax                                      // 0x00446c40    8bc8
                         and                ecx, 0x03                                     // 0x00446c42    83e103
                         rep movsb                                                        // 0x00446c45    f3a4
                         {disp8} lea        ecx, dword ptr [ebx + 0x24]                   // 0x00446c47    8d4b24
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x00446c4a    8d542424
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x00446c4e    894c244c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446c52    8b0df49cc500
                         push               edx                                           // 0x00446c58    52
                         {disp8} mov        dword ptr [esp + 0x4c], 0x00000020            // 0x00446c59    c744244c20000000
                         call               _jmp_addr_0x007bda90                          // 0x00446c61    e82a6e3700
                         {disp8} mov        ebx, dword ptr [ebx + 0x48]                   // 0x00446c66    8b5b48
                         inc                ebp                                           // 0x00446c69    45
                         test               ebx, ebx                                      // 0x00446c6a    85db
                         {disp8} jne        _jmp_addr_0x00446c0f                          // 0x00446c6c    75a1
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00446c6e    8b442410
_jmp_addr_0x00446c72:    {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x00446c72    8b80c0010000
                         test               eax, eax                                      // 0x00446c78    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00446c7a    89442410
                         {disp8} jne        _jmp_addr_0x00446c01                          // 0x00446c7e    7581
                         xor.s              ebp, ebp                                      // 0x00446c80    33ed
_jmp_addr_0x00446c82:    xor.s              eax, eax                                      // 0x00446c82    33c0
                         {disp8} mov        dword ptr [esp + 0x74], ebp                   // 0x00446c84    896c2474
                         {disp8} mov        dword ptr [esp + 0x78], ebp                   // 0x00446c88    896c2478
                         mov                ecx, 0x00000008                               // 0x00446c8c    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x50]                   // 0x00446c91    8d7c2450
                         rep stosd                                                        // 0x00446c95    f3ab
                         stosb                                                            // 0x00446c97    aa
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00446c98    a1fc9cc500
                         cmp.s              eax, ebp                                      // 0x00446c9d    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00446c9f    89442410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x00446ca3    896c2414
                         {disp32} je        _jmp_addr_0x00446dde                          // 0x00446ca7    0f8431010000
_jmp_addr_0x00446cad:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00446cad    8b442410
                         {disp32} mov       ebp, dword ptr [eax + 0x000001bc]             // 0x00446cb1    8ba8bc010000
                         test               ebp, ebp                                      // 0x00446cb7    85ed
                         {disp32} je        _jmp_addr_0x00446dc8                          // 0x00446cb9    0f8409010000
_jmp_addr_0x00446cbf:    {disp8} mov        eax, dword ptr [ebp + 0x30]                   // 0x00446cbf    8b4530
                         test               eax, eax                                      // 0x00446cc2    85c0
                         {disp32} je        _jmp_addr_0x00446dbd                          // 0x00446cc4    0f84f3000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00446cca    8b4c2414
                         push               ecx                                           // 0x00446cce    51
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x00446ccf    8d54241c
                         push               0x009cdc8c                                    // 0x00446cd3    688cdc9c00
                         push               edx                                           // 0x00446cd8    52
                         call               _sprintf                                      // 0x00446cd9    e8f4ea3700
                         or                 ecx, 0xffffffff                               // 0x00446cde    83c9ff
                         xor.s              eax, eax                                      // 0x00446ce1    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x24]                   // 0x00446ce3    8d7c2424
                         repne scasb                                                      // 0x00446ce7    f2ae
                         not                ecx                                           // 0x00446ce9    f7d1
                         sub.s              edi, ecx                                      // 0x00446ceb    2bf9
                         mov.s              eax, ecx                                      // 0x00446ced    8bc1
                         shr                ecx, 2                                        // 0x00446cef    c1e902
                         {disp8} lea        edx, dword ptr [esp + 0x5c]                   // 0x00446cf2    8d54245c
                         mov.s              esi, edi                                      // 0x00446cf6    8bf7
                         mov.s              edi, edx                                      // 0x00446cf8    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446cfa    f3a5
                         mov.s              ecx, eax                                      // 0x00446cfc    8bc8
                         and                ecx, 0x03                                     // 0x00446cfe    83e103
                         rep movsb                                                        // 0x00446d01    f3a4
                         {disp8} mov        ecx, dword ptr [ebp + 0x30]                   // 0x00446d03    8b4d30
                         {disp8} mov        byte ptr [ecx + 0x02], 0x63                   // 0x00446d06    c6410263
                         {disp8} mov        edx, dword ptr [ebp + 0x34]                   // 0x00446d0a    8b5534
                         {disp8} mov        byte ptr [edx + 0x02], 0x63                   // 0x00446d0d    c6420263
                         {disp8} mov        eax, dword ptr [ebp + 0x34]                   // 0x00446d11    8b4534
                         {disp8} mov        edx, dword ptr [ebp + 0x30]                   // 0x00446d14    8b5530
                         xor.s              ecx, ecx                                      // 0x00446d17    33c9
                         mov                cx, word ptr [eax]                            // 0x00446d19    668b08
                         xor.s              eax, eax                                      // 0x00446d1c    33c0
                         mov                ax, word ptr [edx]                            // 0x00446d1e    668b02
                         {disp8} lea        esi, dword ptr [ecx + eax * 0x1 + 0x04]       // 0x00446d21    8d740104
                         push               esi                                           // 0x00446d25    56
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00446d26    e8b5bf3f00
                         mov.s              ebx, eax                                      // 0x00446d2b    8bd8
                         add                esp, 0x10                                     // 0x00446d2d    83c410
                         test               ebx, ebx                                      // 0x00446d30    85db
                         {disp8} je         _jmp_addr_0x00446d48                          // 0x00446d32    7414
                         mov.s              ecx, esi                                      // 0x00446d34    8bce
                         mov.s              edx, ecx                                      // 0x00446d36    8bd1
                         shr                ecx, 2                                        // 0x00446d38    c1e902
                         xor.s              eax, eax                                      // 0x00446d3b    33c0
                         mov.s              edi, ebx                                      // 0x00446d3d    8bfb
                         rep stosd                                                        // 0x00446d3f    f3ab
                         mov.s              ecx, edx                                      // 0x00446d41    8bca
                         and                ecx, 0x03                                     // 0x00446d43    83e103
                         rep stosb                                                        // 0x00446d46    f3aa
_jmp_addr_0x00446d48:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00446d48    8b4c2410
                         {disp8} mov        dword ptr [esp + 0x74], esi                   // 0x00446d4c    89742474
                         {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00446d50    8b4500
                         {disp32} mov       edx, dword ptr [ecx + eax * 0x4 + 0x000000f0] // 0x00446d53    8b9481f0000000
                         xor.s              ecx, ecx                                      // 0x00446d5a    33c9
                         mov                dword ptr [ebx], edx                          // 0x00446d5c    8913
                         {disp8} mov        esi, dword ptr [ebp + 0x30]                   // 0x00446d5e    8b7530
                         mov                cx, word ptr [esi]                            // 0x00446d61    668b0e
                         {disp8} lea        edi, dword ptr [ebx + 0x04]                   // 0x00446d64    8d7b04
                         mov.s              eax, ecx                                      // 0x00446d67    8bc1
                         shr                ecx, 2                                        // 0x00446d69    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446d6c    f3a5
                         mov.s              ecx, eax                                      // 0x00446d6e    8bc8
                         and                ecx, 0x03                                     // 0x00446d70    83e103
                         rep movsb                                                        // 0x00446d73    f3a4
                         {disp8} mov        esi, dword ptr [ebp + 0x34]                   // 0x00446d75    8b7534
                         {disp8} mov        edx, dword ptr [ebp + 0x30]                   // 0x00446d78    8b5530
                         xor.s              ecx, ecx                                      // 0x00446d7b    33c9
                         mov                cx, word ptr [esi]                            // 0x00446d7d    668b0e
                         xor.s              eax, eax                                      // 0x00446d80    33c0
                         mov                ax, word ptr [edx]                            // 0x00446d82    668b02
                         mov.s              edx, ecx                                      // 0x00446d85    8bd1
                         shr                ecx, 2                                        // 0x00446d87    c1e902
                         {disp8} lea        edi, dword ptr [eax + ebx * 0x1 + 0x04]       // 0x00446d8a    8d7c1804
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446d8e    f3a5
                         mov.s              ecx, edx                                      // 0x00446d90    8bca
                         and                ecx, 0x03                                     // 0x00446d92    83e103
                         rep movsb                                                        // 0x00446d95    f3a4
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446d97    8b0df49cc500
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x00446d9d    8d442450
                         push               eax                                           // 0x00446da1    50
                         {disp8} mov        dword ptr [esp + 0x7c], ebx                   // 0x00446da2    895c247c
                         call               _jmp_addr_0x007bda90                          // 0x00446da6    e8e56c3700
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00446dab    8b542414
                         inc                edx                                           // 0x00446daf    42
                         push               ebx                                           // 0x00446db0    53
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00446db1    89542418
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00446db5    e8a6bf3f00
                         add                esp, 0x04                                     // 0x00446dba    83c404
_jmp_addr_0x00446dbd:    {disp8} mov        ebp, dword ptr [ebp + 0x10]                   // 0x00446dbd    8b6d10
                         test               ebp, ebp                                      // 0x00446dc0    85ed
                         {disp32} jne       _jmp_addr_0x00446cbf                          // 0x00446dc2    0f85f7feffff
_jmp_addr_0x00446dc8:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00446dc8    8b4c2410
                         {disp32} mov       eax, dword ptr [ecx + 0x000001c0]             // 0x00446dcc    8b81c0010000
                         test               eax, eax                                      // 0x00446dd2    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00446dd4    89442410
                         {disp32} jne       _jmp_addr_0x00446cad                          // 0x00446dd8    0f85cffeffff
_jmp_addr_0x00446dde:    {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446dde    8b0df49cc500
                         call               ?Close@LHFile@@QAEIXZ                         // 0x00446de4    e8d76d3700
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00446de9    8b0df49cc500
                         mov                edx, dword ptr [ecx]                          // 0x00446def    8b11
                         push               0x2                                           // 0x00446df1    6a02
                         call               dword ptr [edx]                               // 0x00446df3    ff12
                         pop                edi                                           // 0x00446df5    5f
                         pop                esi                                           // 0x00446df6    5e
                         pop                ebx                                           // 0x00446df7    5b
                         pop                ebp                                           // 0x00446df8    5d
                         add                esp, 0x00000498                               // 0x00446df9    81c498040000
                         ret                                                              // 0x00446dff    c3
_jmp_addr_0x00446e00:    sub                esp, 0x14                                     // 0x00446e00    83ec14
                         {disp32} mov       eax, dword ptr [data_bytes + 0x293cfc]        // 0x00446e03    a1fc9cc500
                         push               esi                                           // 0x00446e08    56
                         push               edi                                           // 0x00446e09    57
                         mov                edi, 0x00000008                               // 0x00446e0a    bf08000000
                         xor.s              esi, esi                                      // 0x00446e0f    33f6
                         test               eax, eax                                      // 0x00446e11    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x293d18], 0x00000000 // 0x00446e13    c705189dc50000000000
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x00446e1d    897c240c
                         {disp8} je         _jmp_addr_0x00446e44                          // 0x00446e21    7421
_jmp_addr_0x00446e23:    {disp8} mov        ecx, dword ptr [eax + 0x24]                   // 0x00446e23    8b4824
                         {disp32} mov       eax, dword ptr [eax + 0x000001c0]             // 0x00446e26    8b80c0010000
                         lea                edx, dword ptr [ecx + ecx * 0x8]              // 0x00446e2c    8d14c9
                         lea                ecx, dword ptr [ecx + edx * 0x2]              // 0x00446e2f    8d0c51
                         {disp32} lea       edx, dword ptr [edi + ecx * 0x4 + 0x000001c4] // 0x00446e32    8d948fc4010000
                         inc                esi                                           // 0x00446e39    46
                         test               eax, eax                                      // 0x00446e3a    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], edx                   // 0x00446e3c    8954240c
                         mov.s              edi, edx                                      // 0x00446e40    8bfa
                         {disp8} jne        _jmp_addr_0x00446e23                          // 0x00446e42    75df
_jmp_addr_0x00446e44:    push               ebp                                           // 0x00446e44    55
                         push               edi                                           // 0x00446e45    57
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00446e46    e895be3f00
                         mov.s              ebp, eax                                      // 0x00446e4b    8be8
                         add                esp, 0x04                                     // 0x00446e4d    83c404
                         test               ebp, ebp                                      // 0x00446e50    85ed
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x00446e52    896c241c
                         {disp8} je         _jmp_addr_0x00446e6c                          // 0x00446e56    7414
                         mov.s              ecx, edi                                      // 0x00446e58    8bcf
                         mov.s              edx, ecx                                      // 0x00446e5a    8bd1
                         shr                ecx, 2                                        // 0x00446e5c    c1e902
                         xor.s              eax, eax                                      // 0x00446e5f    33c0
                         mov.s              edi, ebp                                      // 0x00446e61    8bfd
                         rep stosd                                                        // 0x00446e63    f3ab
                         mov.s              ecx, edx                                      // 0x00446e65    8bca
                         and                ecx, 0x03                                     // 0x00446e67    83e103
                         rep stosb                                                        // 0x00446e6a    f3aa
_jmp_addr_0x00446e6c:    push               ebx                                           // 0x00446e6c    53
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x293cfc]        // 0x00446e6d    8b1dfc9cc500
                         push               0x009cdd48                                    // 0x00446e73    6848dd9c00
                         {disp8} mov        dword ptr [ebp + 0x00], 0x00000002            // 0x00446e78    c7450002000000
                         {disp8} mov        dword ptr [ebp + 0x04], esi                   // 0x00446e7f    897504
                         push               0x009cdd38                                    // 0x00446e82    6838dd9c00
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x00446e87    895c2418
                         add                ebp, 0x08                                     // 0x00446e8b    83c508
                         call               _fopen                                        // 0x00446e8e    e88aff3700
                         mov.s              esi, eax                                      // 0x00446e93    8bf0
                         add                esp, 0x08                                     // 0x00446e95    83c408
                         test               esi, esi                                      // 0x00446e98    85f6
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x00446e9a    8974241c
                         {disp8} je         _jmp_addr_0x00446eae                          // 0x00446e9e    740e
                         push               0x009cdd0c                                    // 0x00446ea0    680cdd9c00
                         push               esi                                           // 0x00446ea5    56
                         call               _fprintf                                      // 0x00446ea6    e805ff3700
                         add                esp, 0x08                                     // 0x00446eab    83c408
_jmp_addr_0x00446eae:    test               ebx, ebx                                      // 0x00446eae    85db
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x00446eb0    c744241800000000
                         {disp8} je         _jmp_addr_0x00446f2b                          // 0x00446eb8    7471
                         {disp8} jmp        _jmp_addr_0x00446ec0                          // 0x00446eba    eb04
_jmp_addr_0x00446ebc:    {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x00446ebc    8b5c2410
_jmp_addr_0x00446ec0:    mov.s              esi, ebx                                      // 0x00446ec0    8bf3
                         mov.s              edi, ebp                                      // 0x00446ec2    8bfd
                         mov                ecx, 0x00000071                               // 0x00446ec4    b971000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446ec9    f3a5
                         {disp32} mov       ebx, dword ptr [ebx + 0x000001b8]             // 0x00446ecb    8b9bb8010000
                         add                ebp, 0x000001c4                               // 0x00446ed1    81c5c4010000
                         test               ebx, ebx                                      // 0x00446ed7    85db
                         {disp8} je         _jmp_addr_0x00446f15                          // 0x00446ed9    743a
_jmp_addr_0x00446edb:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00446edb    8b44241c
                         test               eax, eax                                      // 0x00446edf    85c0
                         {disp8} je         _jmp_addr_0x00446ef7                          // 0x00446ee1    7414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00446ee3    8b4c2410
                         push               ebx                                           // 0x00446ee7    53
                         push               ecx                                           // 0x00446ee8    51
                         push               0x009cdd00                                    // 0x00446ee9    6800dd9c00
                         push               eax                                           // 0x00446eee    50
                         call               _fprintf                                      // 0x00446eef    e8bcfe3700
                         add                esp, 0x10                                     // 0x00446ef4    83c410
_jmp_addr_0x00446ef7:    mov.s              esi, ebx                                      // 0x00446ef7    8bf3
                         mov.s              edi, ebp                                      // 0x00446ef9    8bfd
                         mov                ecx, 0x00000013                               // 0x00446efb    b913000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00446f00    f3a5
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00446f02    8b4c2418
                         {disp8} mov        ebx, dword ptr [ebx + 0x48]                   // 0x00446f06    8b5b48
                         add                ebp, 0x4c                                     // 0x00446f09    83c54c
                         inc                ecx                                           // 0x00446f0c    41
                         test               ebx, ebx                                      // 0x00446f0d    85db
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00446f0f    894c2418
                         {disp8} jne        _jmp_addr_0x00446edb                          // 0x00446f13    75c6
_jmp_addr_0x00446f15:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x00446f15    8b542410
                         {disp32} mov       eax, dword ptr [edx + 0x000001c0]             // 0x00446f19    8b82c0010000
                         test               eax, eax                                      // 0x00446f1f    85c0
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x00446f21    89442410
                         {disp8} jne        _jmp_addr_0x00446ebc                          // 0x00446f25    7595
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x00446f27    8b74241c
_jmp_addr_0x00446f2b:    test               esi, esi                                      // 0x00446f2b    85f6
                         pop                ebx                                           // 0x00446f2d    5b
                         {disp8} je         _jmp_addr_0x00446f4c                          // 0x00446f2e    741c
                         push               0x009cdcfc                                    // 0x00446f30    68fcdc9c00
                         push               esi                                           // 0x00446f35    56
                         call               _fprintf                                      // 0x00446f36    e875fe3700
                         add                esp, 0x08                                     // 0x00446f3b    83c408
                         push               0x009cdce4                                    // 0x00446f3e    68e4dc9c00
                         push               esi                                           // 0x00446f43    56
                         call               _fprintf                                      // 0x00446f44    e867fe3700
                         add                esp, 0x08                                     // 0x00446f49    83c408
_jmp_addr_0x00446f4c:    {disp32} mov       ebp, dword ptr [data_bytes + 0x293cfc]        // 0x00446f4c    8b2dfc9cc500
                         test               ebp, ebp                                      // 0x00446f52    85ed
                         {disp8} je         _jmp_addr_0x00446f9a                          // 0x00446f54    7444
_jmp_addr_0x00446f56:    {disp32} mov       edi, dword ptr [ebp + 0x000001bc]             // 0x00446f56    8bbdbc010000
                         test               edi, edi                                      // 0x00446f5c    85ff
                         {disp8} je         _jmp_addr_0x00446f90                          // 0x00446f5e    7430
_jmp_addr_0x00446f60:    {disp8} mov        eax, dword ptr [edi + 0x30]                   // 0x00446f60    8b4730
                         test               eax, eax                                      // 0x00446f63    85c0
                         {disp8} je         _jmp_addr_0x00446f89                          // 0x00446f65    7422
                         test               esi, esi                                      // 0x00446f67    85f6
                         {disp8} je         _jmp_addr_0x00446f89                          // 0x00446f69    741e
                         mov                eax, dword ptr [edi]                          // 0x00446f6b    8b07
                         cmp                eax, 0x09                                     // 0x00446f6d    83f809
                         push               eax                                           // 0x00446f70    50
                         push               ebp                                           // 0x00446f71    55
                         {disp8} jle        _jmp_addr_0x00446f7b                          // 0x00446f72    7e07
                         push               0x009cdcd4                                    // 0x00446f74    68d4dc9c00
                         {disp8} jmp        _jmp_addr_0x00446f80                          // 0x00446f79    eb05
_jmp_addr_0x00446f7b:    push               0x009cdcc4                                    // 0x00446f7b    68c4dc9c00
_jmp_addr_0x00446f80:    push               esi                                           // 0x00446f80    56
                         call               _fprintf                                      // 0x00446f81    e82afe3700
                         add                esp, 0x10                                     // 0x00446f86    83c410
_jmp_addr_0x00446f89:    {disp8} mov        edi, dword ptr [edi + 0x10]                   // 0x00446f89    8b7f10
                         test               edi, edi                                      // 0x00446f8c    85ff
                         {disp8} jne        _jmp_addr_0x00446f60                          // 0x00446f8e    75d0
_jmp_addr_0x00446f90:    {disp32} mov       ebp, dword ptr [ebp + 0x000001c0]             // 0x00446f90    8badc0010000
                         test               ebp, ebp                                      // 0x00446f96    85ed
                         {disp8} jne        _jmp_addr_0x00446f56                          // 0x00446f98    75bc
_jmp_addr_0x00446f9a:    test               esi, esi                                      // 0x00446f9a    85f6
                         pop                ebp                                           // 0x00446f9c    5d
                         {disp8} je         _jmp_addr_0x00446fb3                          // 0x00446f9d    7414
                         push               0x009cdcfc                                    // 0x00446f9f    68fcdc9c00
                         push               esi                                           // 0x00446fa4    56
                         call               _fprintf                                      // 0x00446fa5    e806fe3700
                         push               esi                                           // 0x00446faa    56
                         call               _fclose                                       // 0x00446fab    e880fe3700
                         add                esp, 0x0c                                     // 0x00446fb0    83c40c
_jmp_addr_0x00446fb3:    {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00446fb3    8b44240c
                         {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x00446fb7    8b742418
                         push               eax                                           // 0x00446fbb    50
                         push               esi                                           // 0x00446fbc    56
                         call               _jmp_addr_0x00446b30                          // 0x00446fbd    e86efbffff
                         push               esi                                           // 0x00446fc2    56
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x00446fc3    e898bd3f00
                         add                esp, 0x0c                                     // 0x00446fc8    83c40c
                         pop                edi                                           // 0x00446fcb    5f
                         pop                esi                                           // 0x00446fcc    5e
                         add                esp, 0x14                                     // 0x00446fcd    83c414
                         ret                                                              // 0x00446fd0    c3
                         nop                                                              // 0x00446fd1    90
                         nop                                                              // 0x00446fd2    90
                         nop                                                              // 0x00446fd3    90
                         nop                                                              // 0x00446fd4    90
                         nop                                                              // 0x00446fd5    90
                         nop                                                              // 0x00446fd6    90
                         nop                                                              // 0x00446fd7    90
                         nop                                                              // 0x00446fd8    90
                         nop                                                              // 0x00446fd9    90
                         nop                                                              // 0x00446fda    90
                         nop                                                              // 0x00446fdb    90
                         nop                                                              // 0x00446fdc    90
                         nop                                                              // 0x00446fdd    90
                         nop                                                              // 0x00446fde    90
                         nop                                                              // 0x00446fdf    90
_LoadCameraFromHD__13GCameraEditorFlRQ213GCameraEditor9CameraBin:    sub                esp, 0x38                                     // 0x00446fe0    83ec38
                         push               edi                                           // 0x00446fe3    57
                         call               ?CreateSegFile@GCameraEditor@@SAXXZ           // 0x00446fe4    e847e5ffff
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x00446fe9    8b442440
                         push               eax                                           // 0x00446fed    50
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00446fee    8d4c2408
                         push               0x009cdc94                                    // 0x00446ff2    6894dc9c00
                         push               ecx                                           // 0x00446ff7    51
                         call               _sprintf                                      // 0x00446ff8    e8d5e73700
                         xor.s              eax, eax                                      // 0x00446ffd    33c0
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00446fff    89442440
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x00447003    89442444
                         mov                ecx, 0x00000008                               // 0x00447007    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x1c]                   // 0x0044700c    8d7c241c
                         rep stosd                                                        // 0x00447010    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x00447012    8b0df49cc500
                         add                esp, 0x0c                                     // 0x00447018    83c40c
                         push               0x1                                           // 0x0044701b    6a01
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0044701d    8d542414
                         stosb                                                            // 0x00447021    aa
                         push               edx                                           // 0x00447022    52
                         {disp8} lea        eax, dword ptr [esp + 0x0c]                   // 0x00447023    8d44240c
                         push               eax                                           // 0x00447027    50
                         call               @GetSegment__6LHFileFPcP9LHSegmenti@20        // 0x00447028    e8a36d3700
                         cmp                eax, 0x02                                     // 0x0044702d    83f802
                         {disp8} je         _jmp_addr_0x0044704e                          // 0x00447030    741c
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00447032    8b4c2434
                         {disp8} mov        edi, dword ptr [esp + 0x44]                   // 0x00447036    8b7c2444
                         mov.s              edx, ecx                                      // 0x0044703a    8bd1
                         push               esi                                           // 0x0044703c    56
                         {disp8} mov        esi, dword ptr [esp + 0x3c]                   // 0x0044703d    8b74243c
                         shr                ecx, 2                                        // 0x00447041    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00447044    f3a5
                         mov.s              ecx, edx                                      // 0x00447046    8bca
                         and                ecx, 0x03                                     // 0x00447048    83e103
                         rep movsb                                                        // 0x0044704b    f3a4
                         pop                esi                                           // 0x0044704d    5e
_jmp_addr_0x0044704e:    pop                edi                                           // 0x0044704e    5f
                         add                esp, 0x38                                     // 0x0044704f    83c438
                         ret                                                              // 0x00447052    c3
                         nop                                                              // 0x00447053    90
                         nop                                                              // 0x00447054    90
                         nop                                                              // 0x00447055    90
                         nop                                                              // 0x00447056    90
                         nop                                                              // 0x00447057    90
                         nop                                                              // 0x00447058    90
                         nop                                                              // 0x00447059    90
                         nop                                                              // 0x0044705a    90
                         nop                                                              // 0x0044705b    90
                         nop                                                              // 0x0044705c    90
                         nop                                                              // 0x0044705d    90
                         nop                                                              // 0x0044705e    90
                         nop                                                              // 0x0044705f    90
_jmp_addr_0x00447060:    sub                esp, 0x0000013c                               // 0x00447060    81ec3c010000
                         push               ebx                                           // 0x00447066    53
                         push               esi                                           // 0x00447067    56
                         push               edi                                           // 0x00447068    57
                         call               ?CreateSegFile@GCameraEditor@@SAXXZ           // 0x00447069    e8c2e4ffff
                         push               0xc                                           // 0x0044706e    6a0c
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00447070    e86bbc3f00
                         mov.s              esi, eax                                      // 0x00447075    8bf0
                         xor.s              edi, edi                                      // 0x00447077    33ff
                         add                esp, 0x04                                     // 0x00447079    83c404
                         cmp.s              esi, edi                                      // 0x0044707c    3bf7
                         {disp8} mov        dword ptr [esp + 0x0c], esi                   // 0x0044707e    8974240c
                         {disp8} je         _jmp_addr_0x00447090                          // 0x00447082    740c
                         xor.s              eax, eax                                      // 0x00447084    33c0
                         mov.s              ecx, esi                                      // 0x00447086    8bce
                         mov                dword ptr [ecx], eax                          // 0x00447088    8901
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0044708a    894104
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0044708d    894108
_jmp_addr_0x00447090:    {disp32} mov       ebx, dword ptr [esp + 0x0000014c]             // 0x00447090    8b9c244c010000
                         push               ebx                                           // 0x00447097    53
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00447098    8d542414
                         push               0x009cdc8c                                    // 0x0044709c    688cdc9c00
                         push               edx                                           // 0x004470a1    52
                         call               _sprintf                                      // 0x004470a2    e82be73700
                         {disp8} mov        dword ptr [esp + 0x4c], edi                   // 0x004470a7    897c244c
                         {disp8} mov        dword ptr [esp + 0x50], edi                   // 0x004470ab    897c2450
                         xor.s              eax, eax                                      // 0x004470af    33c0
                         mov                ecx, 0x00000008                               // 0x004470b1    b908000000
                         {disp8} lea        edi, dword ptr [esp + 0x28]                   // 0x004470b6    8d7c2428
                         rep stosd                                                        // 0x004470ba    f3ab
                         add                esp, 0x0c                                     // 0x004470bc    83c40c
                         stosb                                                            // 0x004470bf    aa
                         push               0x1                                           // 0x004470c0    6a01
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x004470c2    8d442420
                         push               eax                                           // 0x004470c6    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x004470c7    8d4c2418
                         push               ecx                                           // 0x004470cb    51
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x004470cc    8b0df49cc500
                         call               @GetSegment__6LHFileFPcP9LHSegmenti@20        // 0x004470d2    e8f96c3700
                         cmp                eax, 0x02                                     // 0x004470d7    83f802
                         {disp8} jne        _jmp_addr_0x004470fb                          // 0x004470da    751f
                         push               ebx                                           // 0x004470dc    53
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x004470dd    8d54244c
                         push               0x009cdd4c                                    // 0x004470e1    684cdd9c00
                         push               edx                                           // 0x004470e6    52
                         call               _sprintf                                      // 0x004470e7    e8e6e63700
                         add                esp, 0x0c                                     // 0x004470ec    83c40c
                         pop                edi                                           // 0x004470ef    5f
                         pop                esi                                           // 0x004470f0    5e
                         xor.s              eax, eax                                      // 0x004470f1    33c0
                         pop                ebx                                           // 0x004470f3    5b
                         add                esp, 0x0000013c                               // 0x004470f4    81c43c010000
                         ret                                                              // 0x004470fa    c3
_jmp_addr_0x004470fb:    {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x004470fb    8b442444
                         mov.s              ebx, eax                                      // 0x004470ff    8bd8
                         mov                eax, dword ptr [eax]                          // 0x00447101    8b00
                         xor.s              ecx, ecx                                      // 0x00447103    33c9
                         mov                dword ptr [esi], eax                          // 0x00447105    8906
                         {disp8} mov        cx, word ptr [ebx + 0x04]                     // 0x00447107    668b4b04
                         add                ebx, 0x04                                     // 0x0044710b    83c304
                         push               ebp                                           // 0x0044710e    55
                         push               ecx                                           // 0x0044710f    51
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00447110    e8cbbb3f00
                         xor.s              ecx, ecx                                      // 0x00447115    33c9
                         mov                cx, word ptr [ebx]                            // 0x00447117    668b0b
                         mov.s              ebp, eax                                      // 0x0044711a    8be8
                         mov.s              esi, ebx                                      // 0x0044711c    8bf3
                         mov.s              edi, ebp                                      // 0x0044711e    8bfd
                         add                esp, 0x04                                     // 0x00447120    83c404
                         mov.s              edx, ecx                                      // 0x00447123    8bd1
                         shr                ecx, 2                                        // 0x00447125    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x00447128    f3a5
                         mov.s              ecx, edx                                      // 0x0044712a    8bca
                         and                ecx, 0x03                                     // 0x0044712c    83e103
                         rep movsb                                                        // 0x0044712f    f3a4
                         mov.s              ecx, ebp                                      // 0x00447131    8bcd
                         call               ?AdjustPtr@LH3DWay@@QAEXXZ                    // 0x00447133    e838d43f00
                         push               0x000007aa                                    // 0x00447138    68aa070000
                         push               0x009cdba0                                    // 0x0044713d    68a0db9c00
                         push               0x0000020c                                    // 0x00447142    680c020000
                         call               ___nw__FUl                                    // 0x00447147    e844463900
                         add                esp, 0x0c                                     // 0x0044714c    83c40c
                         test               eax, eax                                      // 0x0044714f    85c0
                         {disp8} je         _jmp_addr_0x0044715d                          // 0x00447151    740a
                         push               ebp                                           // 0x00447153    55
                         mov.s              ecx, eax                                      // 0x00447154    8bc8
                         call               @__ct__Q27LH3DWay7RunningFP7LH3DWay@12        // 0x00447156    e875cd3f00
                         {disp8} jmp        _jmp_addr_0x0044715f                          // 0x0044715b    eb02
_jmp_addr_0x0044715d:    xor.s              eax, eax                                      // 0x0044715d    33c0
_jmp_addr_0x0044715f:    {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0044715f    8b4c2410
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00447163    894104
                         xor.s              edx, edx                                      // 0x00447166    33d2
                         mov                dx, word ptr [ebx]                            // 0x00447168    668b13
                         xor.s              eax, eax                                      // 0x0044716b    33c0
                         mov                ax, word ptr [ebx + edx * 0x1]                // 0x0044716d    668b0413
                         add.s              ebx, edx                                      // 0x00447171    03da
                         push               eax                                           // 0x00447173    50
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00447174    e867bb3f00
                         xor.s              ecx, ecx                                      // 0x00447179    33c9
                         mov                cx, word ptr [ebx]                            // 0x0044717b    668b0b
                         mov.s              ebp, eax                                      // 0x0044717e    8be8
                         mov.s              esi, ebx                                      // 0x00447180    8bf3
                         mov.s              edi, ebp                                      // 0x00447182    8bfd
                         add                esp, 0x04                                     // 0x00447184    83c404
                         mov.s              edx, ecx                                      // 0x00447187    8bd1
                         shr                ecx, 2                                        // 0x00447189    c1e902
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0044718c    f3a5
                         mov.s              ecx, edx                                      // 0x0044718e    8bca
                         and                ecx, 0x03                                     // 0x00447190    83e103
                         rep movsb                                                        // 0x00447193    f3a4
                         mov.s              ecx, ebp                                      // 0x00447195    8bcd
                         call               ?AdjustPtr@LH3DWay@@QAEXXZ                    // 0x00447197    e8d4d33f00
                         push               0x000007b0                                    // 0x0044719c    68b0070000
                         push               0x009cdba0                                    // 0x004471a1    68a0db9c00
                         push               0x0000020c                                    // 0x004471a6    680c020000
                         call               ___nw__FUl                                    // 0x004471ab    e8e0453900
                         add                esp, 0x0c                                     // 0x004471b0    83c40c
                         test               eax, eax                                      // 0x004471b3    85c0
                         {disp8} je         _jmp_addr_0x004471c1                          // 0x004471b5    740a
                         push               ebp                                           // 0x004471b7    55
                         mov.s              ecx, eax                                      // 0x004471b8    8bc8
                         call               @__ct__Q27LH3DWay7RunningFP7LH3DWay@12        // 0x004471ba    e811cd3f00
                         {disp8} jmp        _jmp_addr_0x004471c3                          // 0x004471bf    eb02
_jmp_addr_0x004471c1:    xor.s              eax, eax                                      // 0x004471c1    33c0
_jmp_addr_0x004471c3:    {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x004471c3    8b742410
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x004471c7    894608
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x293cf4]        // 0x004471ca    8b0df49cc500
                         call               _jmp_addr_0x007bda70                          // 0x004471d0    e89b683700
                         pop                ebp                                           // 0x004471d5    5d
                         pop                edi                                           // 0x004471d6    5f
                         mov.s              eax, esi                                      // 0x004471d7    8bc6
                         pop                esi                                           // 0x004471d9    5e
                         pop                ebx                                           // 0x004471da    5b
                         add                esp, 0x0000013c                               // 0x004471db    81c43c010000
                         ret                                                              // 0x004471e1    c3
                         nop                                                              // 0x004471e2    90
                         nop                                                              // 0x004471e3    90
                         nop                                                              // 0x004471e4    90
                         nop                                                              // 0x004471e5    90
                         nop                                                              // 0x004471e6    90
                         nop                                                              // 0x004471e7    90
                         nop                                                              // 0x004471e8    90
                         nop                                                              // 0x004471e9    90
                         nop                                                              // 0x004471ea    90
                         nop                                                              // 0x004471eb    90
                         nop                                                              // 0x004471ec    90
                         nop                                                              // 0x004471ed    90
                         nop                                                              // 0x004471ee    90
                         nop                                                              // 0x004471ef    90
_jmp_addr_0x004471f0:    push               ecx                                           // 0x004471f0    51
                         push               ebx                                           // 0x004471f1    53
                         mov.s              ebx, ecx                                      // 0x004471f2    8bd9
                         mov                eax, dword ptr [ebx]                          // 0x004471f4    8b03
                         cmp                eax, 0x09                                     // 0x004471f6    83f809
                         push               edi                                           // 0x004471f9    57
                         push               eax                                           // 0x004471fa    50
                         {disp8} jle        _jmp_addr_0x00447209                          // 0x004471fb    7e0c
                         push               0x009cda78                                    // 0x004471fd    6878da9c00
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x00447202    8d442410
                         push               eax                                           // 0x00447206    50
                         {disp8} jmp        _jmp_addr_0x00447213                          // 0x00447207    eb0a
_jmp_addr_0x00447209:    push               0x009cdbec                                    // 0x00447209    68ecdb9c00
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0044720e    8d4c2410
                         push               ecx                                           // 0x00447212    51
_jmp_addr_0x00447213:    call               _sprintf                                      // 0x00447213    e8bae53700
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00447218    8b4304
                         add                esp, 0x0c                                     // 0x0044721b    83c40c
                         xor.s              edi, edi                                      // 0x0044721e    33ff
                         test               eax, eax                                      // 0x00447220    85c0
                         {disp8} jle        _jmp_addr_0x0044727d                          // 0x00447222    7e59
                         push               ebp                                           // 0x00447224    55
                         {disp8} mov        ebp, dword ptr [esp + 0x14]                   // 0x00447225    8b6c2414
                         push               esi                                           // 0x00447229    56
_jmp_addr_0x0044722a:    {disp8} mov        edx, dword ptr [ebx + 0x14]                   // 0x0044722a    8b5314
                         mov                esi, dword ptr [edx + edi * 0x4]              // 0x0044722d    8b34ba
                         mov.s              ecx, esi                                      // 0x00447230    8bce
                         call               _jmp_addr_0x00447290                          // 0x00447232    e859000000
                         cmp.s              eax, ebp                                      // 0x00447237    3bc5
                         {disp8} jle        _jmp_addr_0x00447273                          // 0x00447239    7e38
                         inc                eax                                           // 0x0044723b    40
                         cmp                eax, 0x0a                                     // 0x0044723c    83f80a
                         {disp8} jge        _jmp_addr_0x0044724e                          // 0x0044723f    7d0d
                         push               eax                                           // 0x00447241    50
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00447242    8d442414
                         push               eax                                           // 0x00447246    50
                         push               0x009cdbe0                                    // 0x00447247    68e0db9c00
                         {disp8} jmp        _jmp_addr_0x0044726a                          // 0x0044724c    eb1c
_jmp_addr_0x0044724e:    cmp                eax, 0x64                                     // 0x0044724e    83f864
                         push               eax                                           // 0x00447251    50
                         {disp8} jge        _jmp_addr_0x00447260                          // 0x00447252    7d0c
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x00447254    8d4c2414
                         push               ecx                                           // 0x00447258    51
                         push               0x009cdbd8                                    // 0x00447259    68d8db9c00
                         {disp8} jmp        _jmp_addr_0x0044726a                          // 0x0044725e    eb0a
_jmp_addr_0x00447260:    {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00447260    8d542414
                         push               edx                                           // 0x00447264    52
                         push               0x009cdbd0                                    // 0x00447265    68d0db9c00
_jmp_addr_0x0044726a:    push               esi                                           // 0x0044726a    56
                         call               _sprintf                                      // 0x0044726b    e862e53700
                         add                esp, 0x10                                     // 0x00447270    83c410
_jmp_addr_0x00447273:    {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x00447273    8b4304
                         inc                edi                                           // 0x00447276    47
                         cmp.s              edi, eax                                      // 0x00447277    3bf8
                         {disp8} jl         _jmp_addr_0x0044722a                          // 0x00447279    7caf
                         pop                esi                                           // 0x0044727b    5e
                         pop                ebp                                           // 0x0044727c    5d
_jmp_addr_0x0044727d:    pop                edi                                           // 0x0044727d    5f
                         pop                ebx                                           // 0x0044727e    5b
                         pop                ecx                                           // 0x0044727f    59
                         ret                0x0004                                        // 0x00447280    c20400
                         nop                                                              // 0x00447283    90
                         nop                                                              // 0x00447284    90
                         nop                                                              // 0x00447285    90
                         nop                                                              // 0x00447286    90
                         nop                                                              // 0x00447287    90
                         nop                                                              // 0x00447288    90
                         nop                                                              // 0x00447289    90
                         nop                                                              // 0x0044728a    90
                         nop                                                              // 0x0044728b    90
                         nop                                                              // 0x0044728c    90
                         nop                                                              // 0x0044728d    90
                         nop                                                              // 0x0044728e    90
                         nop                                                              // 0x0044728f    90
_jmp_addr_0x00447290:    mov                al, byte ptr [ecx]                            // 0x00447290    8a01
                         test               al, al                                        // 0x00447292    84c0
                         {disp8} je         _jmp_addr_0x004472a2                          // 0x00447294    740c
_jmp_addr_0x00447296:    cmp                al, 0x5f                                      // 0x00447296    3c5f
                         {disp8} je         _jmp_addr_0x004472a2                          // 0x00447298    7408
                         {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x0044729a    8a4101
                         inc                ecx                                           // 0x0044729d    41
                         test               al, al                                        // 0x0044729e    84c0
                         {disp8} jne        _jmp_addr_0x00447296                          // 0x004472a0    75f4
_jmp_addr_0x004472a2:    {disp8} mov        al, byte ptr [ecx + 0x01]                     // 0x004472a2    8a4101
                         inc                ecx                                           // 0x004472a5    41
                         test               al, al                                        // 0x004472a6    84c0
                         {disp8} je         _jmp_addr_0x004472db                          // 0x004472a8    7431
                         cmp                al, 0x39                                      // 0x004472aa    3c39
                         {disp8} jg         _jmp_addr_0x004472db                          // 0x004472ac    7f2d
                         cmp                al, 0x30                                      // 0x004472ae    3c30
                         {disp8} jl         _jmp_addr_0x004472db                          // 0x004472b0    7c29
                         cmp                al, 0x39                                      // 0x004472b2    3c39
                         {disp8} jg         _jmp_addr_0x004472cc                          // 0x004472b4    7f16
                         cmp                al, 0x30                                      // 0x004472b6    3c30
                         {disp8} jl         _jmp_addr_0x004472cc                          // 0x004472b8    7c12
                         movsx              eax, al                                       // 0x004472ba    0fbec0
                         sub                eax, 0x30                                     // 0x004472bd    83e830
                         push               eax                                           // 0x004472c0    50
                         inc                ecx                                           // 0x004472c1    41
                         push               ecx                                           // 0x004472c2    51
                         call               _jmp_addr_0x00446270                          // 0x004472c3    e8a8efffff
                         add                esp, 0x08                                     // 0x004472c8    83c408
                         ret                                                              // 0x004472cb    c3
_jmp_addr_0x004472cc:    or                 eax, -0x1                                     // 0x004472cc    83c8ff
                         push               eax                                           // 0x004472cf    50
                         inc                ecx                                           // 0x004472d0    41
                         push               ecx                                           // 0x004472d1    51
                         call               _jmp_addr_0x00446270                          // 0x004472d2    e899efffff
                         add                esp, 0x08                                     // 0x004472d7    83c408
                         ret                                                              // 0x004472da    c3
_jmp_addr_0x004472db:    or                 eax, -0x1                                     // 0x004472db    83c8ff
                         ret                                                              // 0x004472de    c3
                         nop                                                              // 0x004472df    90
_globl_ct_0x004472e0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x004472e0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x004472e6    b001
                         test               al, cl                                        // 0x004472e8    84c8
                         {disp8} jne        _jmp_addr_0x004472f4                          // 0x004472ea    7508
                         or.s               cl, al                                        // 0x004472ec    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x004472ee    880d34c9fa00
_jmp_addr_0x004472f4:    {disp32} jmp       _jmp_addr_0x00447300                          // 0x004472f4    e907000000
                         nop                                                              // 0x004472f9    90
                         nop                                                              // 0x004472fa    90
                         nop                                                              // 0x004472fb    90
                         nop                                                              // 0x004472fc    90
                         nop                                                              // 0x004472fd    90
                         nop                                                              // 0x004472fe    90
                         nop                                                              // 0x004472ff    90
_jmp_addr_0x00447300:    push               0x00407870                                    // 0x00447300    6870784000
                         call               _atexit                                       // 0x00447305    e887e43700
                         pop                ecx                                           // 0x0044730a    59
                         ret                                                              // 0x0044730b    c3
                         nop                                                              // 0x0044730c    90
                         nop                                                              // 0x0044730d    90
                         nop                                                              // 0x0044730e    90
                         nop                                                              // 0x0044730f    90
_globl_ct_0x00447310:    {disp32} jmp       _jmp_addr_0x00447320                          // 0x00447310    e90b000000
                         nop                                                              // 0x00447315    90
                         nop                                                              // 0x00447316    90
                         nop                                                              // 0x00447317    90
                         nop                                                              // 0x00447318    90
                         nop                                                              // 0x00447319    90
                         nop                                                              // 0x0044731a    90
                         nop                                                              // 0x0044731b    90
                         nop                                                              // 0x0044731c    90
                         nop                                                              // 0x0044731d    90
                         nop                                                              // 0x0044731e    90
                         nop                                                              // 0x0044731f    90
_jmp_addr_0x00447320:    {disp32} mov       dword ptr [data_bytes + 0x294fb8], 0xffffffff // 0x00447320    c705b8afc500ffffffff
                         ret                                                              // 0x0044732a    c3
                         call               ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z + 9                          // 0x0044732b    e849a5fbff
_globl_ct_0x00447330:    {disp32} jmp       _jmp_addr_0x00447340                          // 0x00447330    e90b000000
                         nop                                                              // 0x00447335    90
                         nop                                                              // 0x00447336    90
                         nop                                                              // 0x00447337    90
                         nop                                                              // 0x00447338    90
                         nop                                                              // 0x00447339    90
                         nop                                                              // 0x0044733a    90
                         nop                                                              // 0x0044733b    90
                         nop                                                              // 0x0044733c    90
                         nop                                                              // 0x0044733d    90
                         nop                                                              // 0x0044733e    90
                         nop                                                              // 0x0044733f    90
_jmp_addr_0x00447340:    {disp32} fld       dword ptr [rdata_bytes + 0x1e660]             // 0x00447340    d90560768c00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e65c]             // 0x00447346    d80d5c768c00
                         {disp32} fstp      dword ptr [data_bytes + 0x294fb4]             // 0x0044734c    d91db4afc500
                         ret                                                              // 0x00447352    c3
                         nop                                                              // 0x00447353    90
                         nop                                                              // 0x00447354    90
                         nop                                                              // 0x00447355    90
                         nop                                                              // 0x00447356    90
                         nop                                                              // 0x00447357    90
                         nop                                                              // 0x00447358    90
                         nop                                                              // 0x00447359    90
                         nop                                                              // 0x0044735a    90
                         nop                                                              // 0x0044735b    90
                         nop                                                              // 0x0044735c    90
                         nop                                                              // 0x0044735d    90
                         nop                                                              // 0x0044735e    90
                         nop                                                              // 0x0044735f    90
_globl_ct_0x00447360:    {disp32} jmp       _jmp_addr_0x00447370                          // 0x00447360    e90b000000
                         nop                                                              // 0x00447365    90
                         nop                                                              // 0x00447366    90
                         nop                                                              // 0x00447367    90
                         nop                                                              // 0x00447368    90
                         nop                                                              // 0x00447369    90
                         nop                                                              // 0x0044736a    90
                         nop                                                              // 0x0044736b    90
                         nop                                                              // 0x0044736c    90
                         nop                                                              // 0x0044736d    90
                         nop                                                              // 0x0044736e    90
                         nop                                                              // 0x0044736f    90
_jmp_addr_0x00447370:    push               esi                                           // 0x00447370    56
                         push               edi                                           // 0x00447371    57
                         mov                esi, 0x00c5ac90                               // 0x00447372    be90acc500
                         mov                edi, 0x00000003                               // 0x00447377    bf03000000
_jmp_addr_0x0044737c:    mov.s              ecx, esi                                      // 0x0044737c    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x0044737e    e89d1b0000
                         add                esi, 0x0000010c                               // 0x00447383    81c60c010000
                         dec                edi                                           // 0x00447389    4f
                         {disp8} jne        _jmp_addr_0x0044737c                          // 0x0044738a    75f0
                         pop                edi                                           // 0x0044738c    5f
                         pop                esi                                           // 0x0044738d    5e
                         ret                                                              // 0x0044738e    c3
                         nop                                                              // 0x0044738f    90
_globl_ct_0x00447390:    {disp32} jmp       _jmp_addr_0x004473a0                          // 0x00447390    e90b000000
                         nop                                                              // 0x00447395    90
                         nop                                                              // 0x00447396    90
                         nop                                                              // 0x00447397    90
                         nop                                                              // 0x00447398    90
                         nop                                                              // 0x00447399    90
                         nop                                                              // 0x0044739a    90
                         nop                                                              // 0x0044739b    90
                         nop                                                              // 0x0044739c    90
                         nop                                                              // 0x0044739d    90
                         nop                                                              // 0x0044739e    90
                         nop                                                              // 0x0044739f    90
_jmp_addr_0x004473a0:    push               esi                                           // 0x004473a0    56
                         push               edi                                           // 0x004473a1    57
                         mov                esi, 0x00c5a860                               // 0x004473a2    be60a8c500
                         mov                edi, 0x00000004                               // 0x004473a7    bf04000000
_jmp_addr_0x004473ac:    mov.s              ecx, esi                                      // 0x004473ac    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x004473ae    e86d1b0000
                         add                esi, 0x0000010c                               // 0x004473b3    81c60c010000
                         dec                edi                                           // 0x004473b9    4f
                         {disp8} jne        _jmp_addr_0x004473ac                          // 0x004473ba    75f0
                         pop                edi                                           // 0x004473bc    5f
                         pop                esi                                           // 0x004473bd    5e
                         ret                                                              // 0x004473be    c3
                         nop                                                              // 0x004473bf    90
_globl_ct_0x004473c0:    {disp32} jmp       _jmp_addr_0x004473d0                          // 0x004473c0    e90b000000
                         nop                                                              // 0x004473c5    90
                         nop                                                              // 0x004473c6    90
                         nop                                                              // 0x004473c7    90
                         nop                                                              // 0x004473c8    90
                         nop                                                              // 0x004473c9    90
                         nop                                                              // 0x004473ca    90
                         nop                                                              // 0x004473cb    90
                         nop                                                              // 0x004473cc    90
                         nop                                                              // 0x004473cd    90
                         nop                                                              // 0x004473ce    90
                         nop                                                              // 0x004473cf    90
_jmp_addr_0x004473d0:    push               esi                                           // 0x004473d0    56
                         push               edi                                           // 0x004473d1    57
                         mov                esi, 0x00c5a320                               // 0x004473d2    be20a3c500
                         mov                edi, 0x00000005                               // 0x004473d7    bf05000000
_jmp_addr_0x004473dc:    mov.s              ecx, esi                                      // 0x004473dc    8bce
                         call               ?Reset@CameraHelpAccumulator@@QAEXXZ          // 0x004473de    e83d1b0000
                         add                esi, 0x0000010c                               // 0x004473e3    81c60c010000
                         dec                edi                                           // 0x004473e9    4f
                         {disp8} jne        _jmp_addr_0x004473dc                          // 0x004473ea    75f0
                         pop                edi                                           // 0x004473ec    5f
                         pop                esi                                           // 0x004473ed    5e
                         ret                                                              // 0x004473ee    c3
                         nop                                                              // 0x004473ef    90
_jmp_addr_0x004473f0:    {disp8} mov        al, byte ptr [esp + 0x0c]                     // 0x004473f0    8a44240c
                         mov.s              cl, al                                        // 0x004473f4    8ac8
                         neg                cl                                            // 0x004473f6    f6d9
                         sbb.s              ecx, ecx                                      // 0x004473f8    1bc9
                         and                ecx, 0xffffffc0                               // 0x004473fa    83e1c0
                         add                ecx, 0x40                                     // 0x004473fd    83c140
                         neg                al                                            // 0x00447400    f6d8
                         push               ecx                                           // 0x00447402    51
                         sbb.s              eax, eax                                      // 0x00447403    1bc0
                         and                eax, 0x40                                     // 0x00447405    83e040
                         push               eax                                           // 0x00447408    50
                         call               _jmp_addr_0x00447430                          // 0x00447409    e822000000
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0044740e    8b54240c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00447412    8b442410
                         add                esp, 0x08                                     // 0x00447416    83c408
                         {disp32} mov       dword ptr [data_bytes + 0x7d64], edx          // 0x00447419    891564dd9c00
                         {disp32} mov       dword ptr [data_bytes + 0x7d68], eax          // 0x0044741f    a368dd9c00
                         ret                                                              // 0x00447424    c3
                         nop                                                              // 0x00447425    90
                         nop                                                              // 0x00447426    90
                         nop                                                              // 0x00447427    90
                         nop                                                              // 0x00447428    90
                         nop                                                              // 0x00447429    90
                         nop                                                              // 0x0044742a    90
                         nop                                                              // 0x0044742b    90
                         nop                                                              // 0x0044742c    90
                         nop                                                              // 0x0044742d    90
                         nop                                                              // 0x0044742e    90
                         nop                                                              // 0x0044742f    90
_jmp_addr_0x00447430:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00447430    8b442408
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x7d6c]          // 0x00447434    8b0d6cdd9c00
                         not                eax                                           // 0x0044743a    f7d0
                         and.s              eax, ecx                                      // 0x0044743c    23c1
                         or                 eax, dword ptr [esp + 4]                      // 0x0044743e    0b442404
                         {disp32} mov       dword ptr [data_bytes + 0x7d6c], eax          // 0x00447442    a36cdd9c00
                         ret                                                              // 0x00447447    c3
                         nop                                                              // 0x00447448    90
                         nop                                                              // 0x00447449    90
                         nop                                                              // 0x0044744a    90
                         nop                                                              // 0x0044744b    90
                         nop                                                              // 0x0044744c    90
                         nop                                                              // 0x0044744d    90
                         nop                                                              // 0x0044744e    90
                         nop                                                              // 0x0044744f    90
_jmp_addr_0x00447450:    push               ebx                                           // 0x00447450    53
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                   // 0x00447451    8b5c240c
                         cmp                ebx, 0x03                                     // 0x00447455    83fb03
                         push               ebp                                           // 0x00447458    55
                         push               esi                                           // 0x00447459    56
                         push               edi                                           // 0x0044745a    57
                         {disp32} je        _jmp_addr_0x00447810                          // 0x0044745b    0f84af030000
                         {disp32} mov       esi, dword ptr [__imp__GetTickCount@4]        // 0x00447461    8b35c4918a00
                         xor.s              ebp, ebp                                      // 0x00447467    33ed
                         call               esi                                           // 0x00447469    ffd6
                         mov.s              ecx, eax                                      // 0x0044746b    8bc8
                         mov                eax, 0x51eb851f                               // 0x0044746d    b81f85eb51
                         mul                ecx                                           // 0x00447472    f7e1
                         mov.s              eax, edx                                      // 0x00447474    8bc2
                         shr                eax, 5                                        // 0x00447476    c1e805
                         xor.s              edx, edx                                      // 0x00447479    33d2
                         mov                ecx, 0x00000005                               // 0x0044747b    b905000000
                         div                ecx                                           // 0x00447480    f7f1
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00447482    8b44241c
                         dec                eax                                           // 0x00447486    48
                         mov                edi, 0x00000001                               // 0x00447487    bf01000000
                         {disp8} je         _jmp_addr_0x004474e2                          // 0x0044748c    7454
                         dec                eax                                           // 0x0044748e    48
                         {disp8} je         _jmp_addr_0x004474af                          // 0x0044748f    741e
                         dec                eax                                           // 0x00447491    48
                         {disp8} jne        _jmp_addr_0x004474ec                          // 0x00447492    7558
                         call               esi                                           // 0x00447494    ffd6
                         mov.s              edx, eax                                      // 0x00447496    8bd0
                         mov                eax, 0x51eb851f                               // 0x00447498    b81f85eb51
                         mul                edx                                           // 0x0044749d    f7e2
                         mov.s              eax, edx                                      // 0x0044749f    8bc2
                         shr                eax, 5                                        // 0x004474a1    c1e805
                         xor.s              edx, edx                                      // 0x004474a4    33d2
                         mov                ecx, 0x00000005                               // 0x004474a6    b905000000
                         div                ecx                                           // 0x004474ab    f7f1
                         {disp8} jmp        _jmp_addr_0x004474ec                          // 0x004474ad    eb3d
_jmp_addr_0x004474af:    call               esi                                           // 0x004474af    ffd6
                         mov.s              edx, eax                                      // 0x004474b1    8bd0
                         mov                eax, 0xcccccccd                               // 0x004474b3    b8cdcccccc
                         mul                edx                                           // 0x004474b8    f7e2
                         mov.s              eax, edx                                      // 0x004474ba    8bc2
                         shr                eax, 6                                        // 0x004474bc    c1e806
                         xor.s              edx, edx                                      // 0x004474bf    33d2
                         mov                ecx, 0x0000000c                               // 0x004474c1    b90c000000
                         div                ecx                                           // 0x004474c6    f7f1
                         cmp                edx, 0x02                                     // 0x004474c8    83fa02
                         {disp8} jl         _jmp_addr_0x004474db                          // 0x004474cb    7c0e
                         cmp                edx, 0x04                                     // 0x004474cd    83fa04
                         {disp8} jl         _jmp_addr_0x004474d7                          // 0x004474d0    7c05
                         cmp                edx, 0x06                                     // 0x004474d2    83fa06
                         {disp8} jl         _jmp_addr_0x004474db                          // 0x004474d5    7c04
_jmp_addr_0x004474d7:    xor.s              edi, edi                                      // 0x004474d7    33ff
                         {disp8} jmp        _jmp_addr_0x004474ec                          // 0x004474d9    eb11
_jmp_addr_0x004474db:    mov                edi, 0x00000001                               // 0x004474db    bf01000000
                         {disp8} jmp        _jmp_addr_0x004474ec                          // 0x004474e0    eb0a
_jmp_addr_0x004474e2:    xor.s              eax, eax                                      // 0x004474e2    33c0
                         cmp                edx, 0x02                                     // 0x004474e4    83fa02
                         setl               al                                            // 0x004474e7    0f9cc0
                         mov.s              edi, eax                                      // 0x004474ea    8bf8
_jmp_addr_0x004474ec:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x004474ec    8b442414
                         cmp                eax, 0x10                                     // 0x004474f0    83f810
                         {disp8} ja         _jmp_addr_0x00447553                          // 0x004474f3    775e
                         xor.s              ecx, ecx                                      // 0x004474f5    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x00447838]               // 0x004474f7    8a8838784400
                         jmp                dword ptr [ecx*4 + 0x447818]                  // 0x004474fd    ff248d18784400
                         cmp                edx, 0x03                                     // 0x00447504    83fa03
                         {disp8} jle        _jmp_addr_0x00447510                          // 0x00447507    7e07
                         mov                esi, 0x0000000b                               // 0x00447509    be0b000000
                         {disp8} jmp        _jmp_addr_0x00447571                          // 0x0044750e    eb61
_jmp_addr_0x00447510:    mov                esi, 0x0000000f                               // 0x00447510    be0f000000
                         sub.s              esi, edx                                      // 0x00447515    2bf2
                         {disp8} jmp        _jmp_addr_0x00447571                          // 0x00447517    eb58
                         cmp                edx, 0x03                                     // 0x00447519    83fa03
                         {disp8} jle        _jmp_addr_0x00447525                          // 0x0044751c    7e07
                         mov                esi, 0x0000000b                               // 0x0044751e    be0b000000
                         {disp8} jmp        _jmp_addr_0x00447571                          // 0x00447523    eb4c
_jmp_addr_0x00447525:    {disp8} lea        esi, dword ptr [edx + 0x0c]                   // 0x00447525    8d720c
                         {disp8} jmp        _jmp_addr_0x00447571                          // 0x00447528    eb47
                         xor.s              ebp, ebp                                      // 0x0044752a    33ed
                         test               edi, edi                                      // 0x0044752c    85ff
                         mov                esi, 0x00000001                               // 0x0044752e    be01000000
                         {disp8} jne        _jmp_addr_0x0044756e                          // 0x00447533    7539
                         xor.s              esi, esi                                      // 0x00447535    33f6
                         {disp8} jmp        _jmp_addr_0x0044756e                          // 0x00447537    eb35
                         test               edi, edi                                      // 0x00447539    85ff
                         mov                esi, 0x00000002                               // 0x0044753b    be02000000
                         {disp8} jne        _jmp_addr_0x0044756e                          // 0x00447540    752c
                         xor.s              esi, esi                                      // 0x00447542    33f6
                         {disp8} jmp        _jmp_addr_0x0044756e                          // 0x00447544    eb28
                         test               edi, edi                                      // 0x00447546    85ff
                         mov                esi, 0x00000003                               // 0x00447548    be03000000
                         {disp8} jne        _jmp_addr_0x0044756e                          // 0x0044754d    751f
                         xor.s              esi, esi                                      // 0x0044754f    33f6
                         {disp8} jmp        _jmp_addr_0x0044756e                          // 0x00447551    eb1b
_jmp_addr_0x00447553:    test               edi, edi                                      // 0x00447553    85ff
                         mov                esi, 0x00000001                               // 0x00447555    be01000000
                         mov.s              ebp, esi                                      // 0x0044755a    8bee
                         {disp8} jne        _jmp_addr_0x00447560                          // 0x0044755c    7502
                         xor.s              esi, esi                                      // 0x0044755e    33f6
_jmp_addr_0x00447560:    cmp                eax, 0x08                                     // 0x00447560    83f808
                         {disp8} je         _jmp_addr_0x00447571                          // 0x00447563    740c
                         cmp                eax, 0x10                                     // 0x00447565    83f810
                         {disp8} je         _jmp_addr_0x00447571                          // 0x00447568    7407
                         test               esi, esi                                      // 0x0044756a    85f6
                         {disp8} jl         _jmp_addr_0x00447571                          // 0x0044756c    7c03
_jmp_addr_0x0044756e:    lea                esi, dword ptr [esi + ebx * 0x4]              // 0x0044756e    8d349e
_jmp_addr_0x00447571:    {disp32} mov       edi, dword ptr [data_bytes + 0x294318]        // 0x00447571    8b3d18a3c500
                         test               edi, edi                                      // 0x00447577    85ff
                         {disp8} jne        _jmp_addr_0x004475a9                          // 0x00447579    752e
                         push               edi                                           // 0x0044757b    57
                         push               edi                                           // 0x0044757c    57
                         push               0x41                                          // 0x0044757d    6a41
                         push               0x009cdf8c                                    // 0x0044757f    688cdf9c00
                         call               _jmp_addr_0x008379e0                          // 0x00447584    e857043f00
                         push               eax                                           // 0x00447589    50
                         push               0x5                                           // 0x0044758a    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x294314], eax        // 0x0044758c    a314a3c500
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x00447591    e89a873e00
                         mov.s              edi, eax                                      // 0x00447596    8bf8
                         add                esp, 0x18                                     // 0x00447598    83c418
                         test               edi, edi                                      // 0x0044759b    85ff
                         {disp32} mov       dword ptr [data_bytes + 0x294318], edi        // 0x0044759d    893d18a3c500
                         {disp32} je        _jmp_addr_0x00447810                          // 0x004475a3    0f8467020000
_jmp_addr_0x004475a9:    test               esi, esi                                      // 0x004475a9    85f6
                         {disp32} jl        _jmp_addr_0x00447810                          // 0x004475ab    0f8c5f020000
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x004475b1    8b4c242c
                         test               ecx, ecx                                      // 0x004475b5    85c9
                         {disp32} je        _jmp_addr_0x00447810                          // 0x004475b7    0f8453020000
                         mov.s              edx, esi                                      // 0x004475bd    8bd6
                         and                edx, 0x03                                     // 0x004475bf    83e203
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x004475c2    89542418
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x004475c6    db442418
                         mov.s              eax, esi                                      // 0x004475ca    8bc6
                         cdq                                                              // 0x004475cc    99
                         and                edx, 0x03                                     // 0x004475cd    83e203
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x004475d0    d80dd4b38a00
                         add.s              eax, edx                                      // 0x004475d6    03c2
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x004475d8    8b542420
                         sar                eax, 2                                        // 0x004475dc    c1f802
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x004475df    89442418
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x004475e3    8b442428
                         {disp8} fild       dword ptr [esp + 0x18]                        // 0x004475e7    db442418
                         add.s              edx, eax                                      // 0x004475eb    03d0
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x004475ed    89542414
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x004475f1    8b542424
                         {disp32} fmul      dword ptr [rdata_bytes + 0x23d4]              // 0x004475f5    d80dd4b38a00
                         add.s              edx, eax                                      // 0x004475fb    03d0
                         test               ebp, ebp                                      // 0x004475fd    85ed
                         {disp8} mov        dword ptr [esp + 0x1c], 0x3e800000            // 0x004475ff    c744241c0000803e
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x00447607    d95c2418
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0044760b    8954242c
                         {disp8} je         _jmp_addr_0x0044761f                          // 0x0044760f    740e
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]              // 0x00447611    d805d4b38a00
                         {disp8} mov        dword ptr [esp + 0x1c], 0xbe800000            // 0x00447617    c744241c000080be
_jmp_addr_0x0044761f:    {disp8} fild       dword ptr [esp + 0x20]                        // 0x0044761f    db442420
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00447623    8b442418
                         mov.s              edx, eax                                      // 0x00447627    8bd0
                         {disp32} mov       dword ptr [data_bytes + 0x2731cc], eax        // 0x00447629    a3cc91c300
                         {disp32} fst       dword ptr [data_bytes + 0x2731b0]             // 0x0044762e    d915b091c300
                         {disp32} mov       dword ptr [data_bytes + 0x2731ec], edx        // 0x00447634    8915ec91c300
                         fld                st(1)                                         // 0x0044763a    d9c1
                         {disp32} mov       dword ptr [data_bytes + 0x273220], ecx        // 0x0044763c    890d2092c300
                         {disp32} fstp      dword ptr [data_bytes + 0x2731c8]             // 0x00447642    d91dc891c300
                         {disp32} mov       dword ptr [data_bytes + 0x273200], ecx        // 0x00447648    890d0092c300
                         {disp8} fild       dword ptr [esp + 0x24]                        // 0x0044764e    db442424
                         {disp32} mov       dword ptr [data_bytes + 0x2731e0], ecx        // 0x00447652    890de091c300
                         {disp32} mov       dword ptr [data_bytes + 0x2731c0], ecx        // 0x00447658    890dc091c300
                         mov.s              esi, edi                                      // 0x0044765e    8bf7
                         {disp32} fst       dword ptr [data_bytes + 0x2731b4]             // 0x00447660    d915b491c300
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x00447666    db442414
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x0044766a    d9542420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0044766e    8b442420
                         {disp32} fstp      dword ptr [data_bytes + 0x2731d0]             // 0x00447672    d91dd091c300
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00447678    d944241c
                         {disp32} mov       dword ptr [data_bytes + 0x2731f0], eax        // 0x0044767c    a3f091c300
                         fadd               st, st(3)                                     // 0x00447681    d8c3
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x00447683    d9542424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x00447687    8b542424
                         {disp32} fstp      dword ptr [data_bytes + 0x2731e8]             // 0x0044768b    d91de891c300
                         {disp32} mov       dword ptr [data_bytes + 0x273208], edx        // 0x00447691    89150892c300
                         {disp32} fstp      dword ptr [data_bytes + 0x2731d4]             // 0x00447697    d91dd491c300
                         {disp8} fild       dword ptr [esp + 0x2c]                        // 0x0044769d    db44242c
                         {disp8} fst        dword ptr [esp + 0x20]                        // 0x004476a1    d9542420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004476a5    8b442420
                         {disp32} fstp      dword ptr [data_bytes + 0x2731f4]             // 0x004476a9    d91df491c300
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x004476af    d9442418
                         {disp32} mov       dword ptr [data_bytes + 0x273214], eax        // 0x004476b3    a31492c300
                         {disp32} fadd      dword ptr [rdata_bytes + 0x23d4]              // 0x004476b8    d805d4b38a00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x272714]        // 0x004476be    a11487c300
                         test               eax, eax                                      // 0x004476c3    85c0
                         {disp8} fst        dword ptr [esp + 0x24]                        // 0x004476c5    d9542424
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x004476c9    8b542424
                         {disp32} fstp      dword ptr [data_bytes + 0x27320c]             // 0x004476cd    d91d0c92c300
                         {disp32} mov       dword ptr [data_bytes + 0x27322c], edx        // 0x004476d3    89152c92c300
                         {disp32} fstp      dword ptr [data_bytes + 0x273210]             // 0x004476d9    d91d1092c300
                         {disp32} fstp      dword ptr [data_bytes + 0x273228]             // 0x004476df    d91d2892c300
                         {disp8} je         _jmp_addr_0x0044775e                          // 0x004476e5    7477
                         test               esi, esi                                      // 0x004476e7    85f6
                         {disp32} mov       dword ptr [data_bytes + 0x50464c], esi        // 0x004476e9    89354ca6ec00
                         {disp8} je         _jmp_addr_0x0044775e                          // 0x004476ef    746d
                         mov                eax, dword ptr [esi]                          // 0x004476f1    8b06
                         {disp32} mov       edi, dword ptr [data_bytes + 0x504618]        // 0x004476f3    8b3d18a6ec00
                         xor.s              edx, edx                                      // 0x004476f9    33d2
                         mov.s              ecx, esi                                      // 0x004476fb    8bce
                         call               dword ptr [edi + eax*8]                       // 0x004476fd    ff14c7
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504614]        // 0x00447700    a114a6ec00
                         test               eax, eax                                      // 0x00447705    85c0
                         {disp8} jne        _jmp_addr_0x00447718                          // 0x00447707    750f
                         test               byte ptr [esi + 0x05], 0x04                   // 0x00447709    f6460504
                         {disp8} jne        _jmp_addr_0x00447718                          // 0x0044770d    7509
                         push               0x0                                           // 0x0044770f    6a00
                         call               ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x00447711    e83a883e00
                         {disp8} jmp        _jmp_addr_0x0044771f                          // 0x00447716    eb07
_jmp_addr_0x00447718:    push               0x0                                           // 0x00447718    6a00
                         call               ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x0044771a    e8f1873e00
_jmp_addr_0x0044771f:    {disp32} mov       eax, dword ptr [data_bytes + 0x504248]        // 0x0044771f    a148a2ec00
                         xor.s              ecx, ecx                                      // 0x00447724    33c9
                         {disp8} mov        cl, byte ptr [esi + 0x05]                     // 0x00447726    8a4e05
                         not                cl                                            // 0x00447729    f6d1
                         add                esp, 0x04                                     // 0x0044772b    83c404
                         and                ecx, 0x01                                     // 0x0044772e    83e101
                         shl                ecx, 1                                        // 0x00447731    d1e1
                         or                 ecx, 1                                        // 0x00447733    83c901
                         mov.s              esi, ecx                                      // 0x00447736    8bf1
                         cmp.s              eax, esi                                      // 0x00447738    3bc6
                         {disp8} je         _jmp_addr_0x0044775e                          // 0x0044773a    7422
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0044773c    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00447741    8b10
                         push               esi                                           // 0x00447743    56
                         push               0x16                                          // 0x00447744    6a16
                         push               eax                                           // 0x00447746    50
                         call               dword ptr [edx + 0x50]                        // 0x00447747    ff5250
                         test               eax, eax                                      // 0x0044774a    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504248], 0xffffffff // 0x0044774c    c70548a2ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0044775e                          // 0x00447756    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504248], esi        // 0x00447758    893548a2ec00
_jmp_addr_0x0044775e:    cmp                dword ptr [data_bytes + 0x50424c], 0x08       // 0x0044775e    833d4ca2ec0008
                         {disp8} je         _jmp_addr_0x00447785                          // 0x00447765    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x00447767    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0044776c    8b08
                         push               0x8                                           // 0x0044776e    6a08
                         push               0x17                                          // 0x00447770    6a17
                         push               eax                                           // 0x00447772    50
                         call               dword ptr [ecx + 0x50]                        // 0x00447773    ff5150
                         neg                eax                                           // 0x00447776    f7d8
                         sbb.s              eax, eax                                      // 0x00447778    1bc0
                         and                eax, 0xfffffff7                               // 0x0044777a    83e0f7
                         add                eax, 0x08                                     // 0x0044777d    83c008
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x00447780    a34ca2ec00
_jmp_addr_0x00447785:    {disp32} mov       eax, dword ptr [data_bytes + 0x504228]        // 0x00447785    a128a2ec00
                         test               eax, eax                                      // 0x0044778a    85c0
                         {disp8} je         _jmp_addr_0x004477a6                          // 0x0044778c    7418
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0044778e    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x00447793    8b10
                         push               0x0                                           // 0x00447795    6a00
                         push               0xe                                           // 0x00447797    6a0e
                         push               eax                                           // 0x00447799    50
                         call               dword ptr [edx + 0x50]                        // 0x0044779a    ff5250
                         neg                eax                                           // 0x0044779d    f7d8
                         sbb.s              eax, eax                                      // 0x0044779f    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x004477a1    a328a2ec00
_jmp_addr_0x004477a6:    push               0x6                                           // 0x004477a6    6a06
                         push               0x00c39230                                    // 0x004477a8    683092c300
                         push               0x4                                           // 0x004477ad    6a04
                         push               0x00c391b0                                    // 0x004477af    68b091c300
                         push               0x000001c4                                    // 0x004477b4    68c4010000
                         push               0x4                                           // 0x004477b9    6a04
                         call               _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl                          // 0x004477bb    e8f02d3e00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x004477c0    a14ca2ec00
                         add                esp, 0x18                                     // 0x004477c5    83c418
                         cmp                eax, 0x04                                     // 0x004477c8    83f804
                         {disp8} je         _jmp_addr_0x004477eb                          // 0x004477cb    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004477cd    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x004477d2    8b08
                         push               0x4                                           // 0x004477d4    6a04
                         push               0x17                                          // 0x004477d6    6a17
                         push               eax                                           // 0x004477d8    50
                         call               dword ptr [ecx + 0x50]                        // 0x004477d9    ff5150
                         neg                eax                                           // 0x004477dc    f7d8
                         sbb.s              eax, eax                                      // 0x004477de    1bc0
                         and                eax, 0xfffffffb                               // 0x004477e0    83e0fb
                         add                eax, 0x04                                     // 0x004477e3    83c004
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], eax        // 0x004477e6    a34ca2ec00
_jmp_addr_0x004477eb:    cmp                dword ptr [data_bytes + 0x504228], 0x01       // 0x004477eb    833d28a2ec0001
                         {disp8} je         _jmp_addr_0x00447810                          // 0x004477f2    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x004477f4    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x004477f9    8b10
                         push               0x1                                           // 0x004477fb    6a01
                         push               0xe                                           // 0x004477fd    6a0e
                         push               eax                                           // 0x004477ff    50
                         call               dword ptr [edx + 0x50]                        // 0x00447800    ff5250
                         neg                eax                                           // 0x00447803    f7d8
                         sbb.s              eax, eax                                      // 0x00447805    1bc0
                         and                eax, 0xfffffffe                               // 0x00447807    83e0fe
                         inc                eax                                           // 0x0044780a    40
                         {disp32} mov       dword ptr [data_bytes + 0x504228], eax        // 0x0044780b    a328a2ec00
_jmp_addr_0x00447810:    pop                edi                                           // 0x00447810    5f
                         pop                esi                                           // 0x00447811    5e
                         pop                ebp                                           // 0x00447812    5d
                         pop                ebx                                           // 0x00447813    5b
                         ret                                                              // 0x00447814    c3

// Snippet: db, [0x00447815, 0x00447818)
.byte 0x8d, 0x49, 0x00            // 0x00447815

// Snippet: jmptbl, [0x00447818, 0x00447838)
.byte 0x4f, 0x75, 0x44, 0x00      // 0x00447818
.byte 0x53, 0x75, 0x44, 0x00      // 0x0044781c
.byte 0x2a, 0x75, 0x44, 0x00      // 0x00447820
.byte 0x39, 0x75, 0x44, 0x00      // 0x00447824
.byte 0x46, 0x75, 0x44, 0x00      // 0x00447828
.byte 0x04, 0x75, 0x44, 0x00      // 0x0044782c
.byte 0x19, 0x75, 0x44, 0x00      // 0x00447830
.byte 0x53, 0x75, 0x44, 0x00      // 0x00447834

// Snippet: ijmptbl, [0x00447838, 0x00447849)
.byte 0x00, 0x01, 0x02, 0x03      // 0x00447838
.byte 0x04, 0x07, 0x07, 0x07      // 0x0044783c
.byte 0x05, 0x07, 0x07, 0x07      // 0x00447840
.byte 0x07, 0x07, 0x07, 0x07      // 0x00447844
.byte 0x06                        // 0x00447848

// Snippet: db, [0x00447849, 0x00447850)
.byte 0x90, 0x90, 0x90, 0x90      // 0x00447849
.byte 0x90, 0x90, 0x90            // 0x0044784d

