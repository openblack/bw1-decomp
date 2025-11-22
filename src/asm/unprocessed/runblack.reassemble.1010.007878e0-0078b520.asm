.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetSizeFootprintData@LH3DMesh@@QAEIXZ
.extern ?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ
.extern @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern @__ct__7LHPointFfff@20
.extern ?SetPointFromPointDistanceHeadingAndPitch@GCamera@@SAXPAULHPoint@@ABU2@MMM@Z
.extern ?GetHeadingAndPitchFromPoints@GCamera@@SAXABULHPoint@@0PAM1@Z
.extern _jmp_addr_0x0044e9f0
.extern _jmp_addr_0x0044ea40
.extern _jmp_addr_0x00470af0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x0047c5f0
.extern _jmp_addr_0x0047f490
.extern _jmp_addr_0x00482c90
.extern _jmp_addr_0x00484360
.extern _jmp_addr_0x004843a0
.extern _jmp_addr_0x0048e260
.extern _jmp_addr_0x004c7ed0
.extern _jmp_addr_0x004dcda0
.extern _jmp_addr_0x004e2890
.extern _jmp_addr_0x004f8ca0
.extern _jmp_addr_0x00513640
.extern _jmp_addr_0x00513770
.extern ?IsMultiplayerGame@GGame@@QBE_NXZ
.extern _jmp_addr_0x0057dbe0
.extern ?LocalRand@GRand@@SAIJ@Z
.extern _jmp_addr_0x006de590
.extern _jmp_addr_0x006f0a80
.extern _jmp_addr_0x007867b0
.extern _jmp_addr_0x0078bda0
.extern _jmp_addr_0x0078c040
.extern _jmp_addr_0x0078c110
.extern _jmp_addr_0x0078c1e0
.extern _jmp_addr_0x0078c2b0
.extern _jmp_addr_0x0078c380
.extern _jmp_addr_0x0078c450
.extern _jmp_addr_0x0078d420
.extern _jmp_addr_0x0078ea20
.extern @__ct__15PictureRoomBaseFPCc@12
.extern _jmp_addr_0x0078f1e0
.extern _jmp_addr_0x0078f1f0
.extern _jmp_addr_0x007949e0
.extern _jmp_addr_0x00794a80
.extern @UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.extern @Init__11InnerCameraFPc@12
.extern ?Close@InnerCamera@@UAEXXZ
.extern _jmp_addr_0x007974c0
.extern ??0InnerCamera@@QAE@XZ
.extern _jmp_addr_0x00798350
.extern _jmp_addr_0x00798430
.extern _jmp_addr_0x007989e0
.extern _jmp_addr_0x00798b30
.extern _jmp_addr_0x007991c0
.extern ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.extern _jmp_addr_0x0079a290
.extern _jmp_addr_0x0079a600
.extern _jmp_addr_0x0079a620
.extern _jmp_addr_0x0079a640
.extern _jmp_addr_0x0079a6a0
.extern _jmp_addr_0x0079a8d0
.extern _jmp_addr_0x0079a910
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern _atexit
.extern _sprintf
.extern _wcscpy
.extern __strcmpi
.extern ___nw__FUl
.extern ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z
.extern _jmp_addr_0x007faa50
.extern _jmp_addr_0x007faaf0
.extern _jmp_addr_0x007fb5c0
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4
.extern ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z
.extern _jmp_addr_0x0081b370
.extern _Random__Fff@8
.extern _jmp_addr_0x0081e1f0
.extern _jmp_addr_0x00828e90
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern _jmp_addr_0x008379e0
.extern ?Create@LH3DSprite@@SAPAV1@JH@Z
.extern ?Draw@LH3DSprite@@QAEXXZ
.extern _jmp_addr_0x0084a4b0
.extern _jmp_addr_0x00868c80
.extern _jmp_addr_0x0086d4e0
.extern _jmp_addr_0x00898450
.extern _jmp_addr_0x008984a0
.extern _jmp_addr_0x008984b0
.extern _jmp_addr_0x00898500
.extern _jmp_addr_0x00898530
.extern _jmp_addr_0x008985b0

.globl _jmp_addr_0x00788a10
.globl _jmp_addr_0x00788c10
.globl _jmp_addr_0x00788d20
.globl _jmp_addr_0x00789070
.globl _jmp_addr_0x007899f0
.globl _jmp_addr_0x00789a70
.globl _jmp_addr_0x00789c10
.globl _jmp_addr_0x0078b0b0

.globl _globl_ct_0x00789d20
.globl _globl_ct_0x00789d50
.globl _globl_ct_0x00789d70
.globl _globl_ct_0x00789f40
.globl _globl_ct_0x00789f70
.globl _globl_ct_0x0078afd0
.globl _globl_ct_0x0078b000
.globl _globl_ct_0x0078b030
.globl _globl_ct_0x0078b060
.globl _globl_ct_0x0078b080
.globl _InitEngine__12CreatureRoomFv
.globl _Reinit__11InnerCameraFv
.globl ?Init@CreatureRoomCamera@@UAEXPAD@Z
.globl ?Close@CreatureRoomCamera@@UAEXXZ
.globl ?Update@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z
.globl ?UpdateState@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z
.globl ?UpdateMain@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z

start_0x007878e0_0x0078b520:
// Snippet: asm, [0x007878e0, 0x0078b501)
_InitEngine__12CreatureRoomFv:
                         sub                esp, 0x40                                     // 0x007878e0    83ec40
                         push               esi                                           // 0x007878e3    56
                         mov.s              esi, ecx                                      // 0x007878e4    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x000000e0]             // 0x007878e6    8b86e0000000
                         push               edi                                           // 0x007878ec    57
                         xor.s              edi, edi                                      // 0x007878ed    33ff
                         cmp.s              eax, edi                                      // 0x007878ef    3bc7
                         {disp32} jne       _jmp_addr_0x007885ea                          // 0x007878f1    0f85f30c0000
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x007878f7    a0e481c300
                         test               al, al                                        // 0x007878fc    84c0
                         mov                eax, 0x00c27710                               // 0x007878fe    b81077c200
                         {disp8} je         _jmp_addr_0x0078790a                          // 0x00787903    7405
                         mov                eax, 0x00c276ec                               // 0x00787905    b8ec76c200
_jmp_addr_0x0078790a:    push               ebx                                           // 0x0078790a    53
                         push               ebp                                           // 0x0078790b    55
                         push               0x00c276c8                                    // 0x0078790c    68c876c200
                         push               0x00c276a4                                    // 0x00787911    68a476c200
                         push               edi                                           // 0x00787916    57
                         push               eax                                           // 0x00787917    50
                         mov.s              ecx, esi                                      // 0x00787918    8bce
                         call               _jmp_addr_0x007989e0                          // 0x0078791a    e8c1100100
                         {disp32} mov       eax, dword ptr [esi + 0x000000c0]             // 0x0078791f    8b86c0000000
                         {disp8} mov        dword ptr [esp + 0x20], 0x42f00000            // 0x00787925    c74424200000f042
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0078792d    8b4c2420
                         mov                dword ptr [eax], ecx                          // 0x00787931    8908
                         {disp8} mov        dword ptr [esp + 0x24], 0x00000000            // 0x00787933    c744242400000000
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0078793b    8b542424
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0078793f    895004
                         {disp8} mov        dword ptr [esp + 0x28], 0xc2f00000            // 0x00787942    c74424280000f0c2
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0078794a    8b4c2428
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0078794e    894808
                         {disp32} mov       edx, dword ptr [esi + 0x000000c0]             // 0x00787951    8b96c0000000
                         {disp8} mov        dword ptr [edx + 0x0c], 0x42340000            // 0x00787957    c7420c00003442
                         mov                edx, 0x00000001                               // 0x0078795e    ba01000000
                         mov                ecx, 0x00000004                               // 0x00787963    b904000000
                         call               ?Create@LH3DSprite@@SAPAV1@JH@Z               // 0x00787968    e8338b0b00
                         push               0x00c229ac                                    // 0x0078796d    68ac29c200
                         {disp32} mov       dword ptr [esi + 0x00000478], eax             // 0x00787972    898678040000
                         call               _jmp_addr_0x0057dbe0                          // 0x00787978    e86362dfff
                         push               eax                                           // 0x0078797d    50
                         push               0xd                                           // 0x0078797e    6a0d
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x00787980    e8ab830a00
                         add                esp, 0x0c                                     // 0x00787985    83c40c
                         {disp32} mov       dword ptr [esi + 0x0000047c], eax             // 0x00787988    89867c040000
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0078798e    897c2414
                         mov                ebp, 0x80ff8040                               // 0x00787992    bd4080ff80
                         mov                bl, 0x08                                      // 0x00787997    b308
_jmp_addr_0x00787999:    {disp32} mov       eax, dword ptr [esi + 0x00000478]             // 0x00787999    8b8678040000
                         {disp32} mov       ecx, dword ptr [esi + 0x0000047c]             // 0x0078799f    8b8e7c040000
                         {disp8} mov        dword ptr [edi + eax * 0x1 + 0x2c], ecx       // 0x007879a5    894c072c
                         {disp32} mov       edx, dword ptr [esi + 0x00000478]             // 0x007879a9    8b9678040000
                         push               0x3f800000                                    // 0x007879af    680000803f
                         push               0xbf800000                                    // 0x007879b4    68000080bf
                         {disp8} mov        dword ptr [edi + edx * 0x1 + 0x20], ebp       // 0x007879b9    896c1720
                         call               _Random__Fff@8                                // 0x007879bd    e8be570900
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007879c2    d95c2418
                         push               0x40000000                                    // 0x007879c6    6800000040
                         push               0x3f800000                                    // 0x007879cb    680000803f
                         call               _Random__Fff@8                                // 0x007879d0    e8ab570900
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007879d5    d95c2410
                         push               0x3f800000                                    // 0x007879d9    680000803f
                         push               0xbf800000                                    // 0x007879de    68000080bf
                         call               _Random__Fff@8                                // 0x007879e3    e898570900
                         {disp32} fld       dword ptr [data_bytes + 0x298454]             // 0x007879e8    d90554e4c500
                         {disp32} mov       ecx, dword ptr [esi + 0x00000478]             // 0x007879ee    8b8e78040000
                         fadd               st, st(1)                                     // 0x007879f4    d8c1
                         mov.s              eax, edi                                      // 0x007879f6    8bc7
                         add.s              eax, ecx                                      // 0x007879f8    03c1
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007879fa    d95c2420
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x007879fe    8b4c2420
                         fstp               st(0)                                         // 0x00787a02    ddd8
                         push               0x3f99999a                                    // 0x00787a04    689a99993f
                         {disp32} fld       dword ptr [data_bytes + 0x298458]             // 0x00787a09    d90558e4c500
                         push               0x3f4ccccd                                    // 0x00787a0f    68cdcc4c3f
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00787a14    d8442418
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00787a18    d95c242c
                         {disp32} fld       dword ptr [data_bytes + 0x29845c]             // 0x00787a1c    d9055ce4c500
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x00787a22    8b54242c
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x00787a26    d8442420
                         mov                dword ptr [eax], ecx                          // 0x00787a2a    8908
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00787a2c    895004
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00787a2f    d95c2430
                         {disp8} mov        ecx, dword ptr [esp + 0x30]                   // 0x00787a33    8b4c2430
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00787a37    894808
                         call               _Random__Fff@8                                // 0x00787a3a    e841570900
                         {disp8} fild       dword ptr [esp + 0x14]                        // 0x00787a3f    db442414
                         {disp32} mov       eax, dword ptr [esi + 0x00000478]             // 0x00787a43    8b8678040000
                         mov.s              ecx, edi                                      // 0x00787a49    8bcf
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00787a4b    d80db4a38a00
                         add.s              ecx, eax                                      // 0x00787a51    03c8
                         faddp              st(1), st                                     // 0x00787a53    dec1
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00787a55    d80578b48a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x16518]             // 0x00787a5b    d81518f58b00
                         fnstsw             ax                                            // 0x00787a61    dfe0
                         test               ah, 0x01                                      // 0x00787a63    f6c401
                         {disp8} je         _jmp_addr_0x00787a70                          // 0x00787a66    7408
                         fstp               st(0)                                         // 0x00787a68    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x00787a6a    d90518f58b00
_jmp_addr_0x00787a70:    fld                st(0)                                         // 0x00787a70    d9c0
                         add                edi, 0x34                                     // 0x00787a72    83c734
                         {disp8} fdiv       dword ptr [ecx + 0x0c]                        // 0x00787a75    d8710c
                         fld                st(0)                                         // 0x00787a78    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x00787a7a    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x00787a7d    d95918
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x00787a80    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x00787a83    d9591c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x00787a86    d9590c
                         {disp32} mov       edx, dword ptr [esi + 0x00000478]             // 0x00787a89    8b9678040000
                         {disp8} mov        byte ptr [edi + edx * 0x1 + -0x04], bl        // 0x00787a8f    885c17fc
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00787a93    8b542414
                         inc                edx                                           // 0x00787a97    42
                         cmp                edi, 0x000000d0                               // 0x00787a98    81ffd0000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00787a9e    89542414
                         {disp32} jl        _jmp_addr_0x00787999                          // 0x00787aa2    0f8cf1feffff
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x00787aa8    a0e481c300
                         test               al, al                                        // 0x00787aad    84c0
                         mov                eax, 0x00c2767c                               // 0x00787aaf    b87c76c200
                         {disp8} je         _jmp_addr_0x00787abb                          // 0x00787ab4    7405
                         mov                eax, 0x00c27654                               // 0x00787ab6    b85476c200
_jmp_addr_0x00787abb:    push               0x0                                           // 0x00787abb    6a00
                         push               eax                                           // 0x00787abd    50
                         call               ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x00787abe    e82ded0700
                         add                esp, 0x08                                     // 0x00787ac3    83c408
                         xor.s              ecx, ecx                                      // 0x00787ac6    33c9
                         {disp32} mov       dword ptr [esi + 0x00000470], eax             // 0x00787ac8    898670040000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00787ace    e8fd390800
                         {disp32} mov       edx, dword ptr [esi + 0x00000470]             // 0x00787ad3    8b9670040000
                         push               0x0                                           // 0x00787ad9    6a00
                         {disp32} mov       dword ptr [esi + 0x00000474], eax             // 0x00787adb    898674040000
                         mov                edi, dword ptr [eax]                          // 0x00787ae1    8b38
                         push               0x0                                           // 0x00787ae3    6a00
                         mov.s              ecx, eax                                      // 0x00787ae5    8bc8
                         call               dword ptr [edi + 0xf4]                        // 0x00787ae7    ff97f4000000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000474]             // 0x00787aed    8b8e74040000
                         mov                eax, dword ptr [ecx]                          // 0x00787af3    8b01
                         mov                edx, 0x00000001                               // 0x00787af5    ba01000000
                         call               dword ptr [eax + 0x58]                        // 0x00787afa    ff5058
                         {disp32} mov       ecx, dword ptr [esi + 0x00000474]             // 0x00787afd    8b8e74040000
                         push               0x3f800000                                    // 0x00787b03    680000803f
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x00787b08    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00787b10    c744243400000000
                         {disp8} mov        dword ptr [esp + 0x38], 0x00000000            // 0x00787b18    c744243800000000
                         mov                eax, dword ptr [ecx]                          // 0x00787b20    8b01
                         push               0x0                                           // 0x00787b22    6a00
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x00787b24    8d542434
                         call               dword ptr [eax + 0x20]                        // 0x00787b28    ff5020
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00787b2b    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00787b31    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00787b33    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00787b39    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00787b3c    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00787b3f    8d0450
                         shl                eax, 5                                        // 0x00787b42    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00787b45    8b8c08640a0000
                         test               ecx, ecx                                      // 0x00787b4c    85c9
                         {disp32} je        _jmp_addr_0x00787f35                          // 0x00787b4e    0f84e1030000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00787b54    e8f7fcceff
                         test               eax, eax                                      // 0x00787b59    85c0
                         {disp32} je        _jmp_addr_0x00787f35                          // 0x00787b5b    0f84d4030000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x3d0270]        // 0x00787b61    a17062d900
                         test               eax, eax                                      // 0x00787b66    85c0
                         {disp32} je        _jmp_addr_0x00787f35                          // 0x00787b68    0f84c7030000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x298424]        // 0x00787b6e    8b1524e4c500
                         {disp32} lea       edi, dword ptr [esi + 0x00000104]             // 0x00787b74    8dbe04010000
                         mov.s              ecx, edi                                      // 0x00787b7a    8bcf
                         mov                dword ptr [ecx], edx                          // 0x00787b7c    8911
                         {disp32} mov       eax, dword ptr [data_bytes + 0x298428]        // 0x00787b7e    a128e4c500
                         push               0x000003ad                                    // 0x00787b83    68ad030000
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00787b88    894104
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29842c]        // 0x00787b8b    8b152ce4c500
                         push               0x00c27630                                    // 0x00787b91    683076c200
                         push               0x000057b8                                    // 0x00787b96    68b8570000
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00787b9b    895108
                         call               ___nw__FUl                                    // 0x00787b9e    e8ed3b0500
                         mov.s              ebx, eax                                      // 0x00787ba3    8bd8
                         add                esp, 0x0c                                     // 0x00787ba5    83c40c
                         test               ebx, ebx                                      // 0x00787ba8    85db
                         {disp8} je         _jmp_addr_0x00787be5                          // 0x00787baa    7439
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00787bac    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00787bb2    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00787bb4    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00787bba    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00787bbd    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00787bc0    8d0450
                         shl                eax, 5                                        // 0x00787bc3    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00787bc6    8b8c08640a0000
                         call               ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ                 // 0x00787bcd    e87efcceff
                         push               0x0                                           // 0x00787bd2    6a00
                         push               edi                                           // 0x00787bd4    57
                         push               eax                                           // 0x00787bd5    50
                         mov.s              ecx, ebx                                      // 0x00787bd6    8bcb
                         call               _jmp_addr_0x0047f490                          // 0x00787bd8    e8b378cfff
                         mov                dword ptr [ebx], 0x0099ebd0                   // 0x00787bdd    c703d0eb9900
                         {disp8} jmp        _jmp_addr_0x00787be7                          // 0x00787be3    eb02
_jmp_addr_0x00787be5:    xor.s              ebx, ebx                                      // 0x00787be5    33db
_jmp_addr_0x00787be7:    {disp32} mov       dword ptr [esi + 0x000000fc], ebx             // 0x00787be7    899efc000000
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00787bed    8b0d5c19d000
                         mov                edx, dword ptr [ebx]                          // 0x00787bf3    8b13
                         xor.s              eax, eax                                      // 0x00787bf5    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00787bf7    8a81595a2000
                         lea                ebp, dword ptr [eax + eax * 0x4]              // 0x00787bfd    8d2c80
                         lea                ebp, dword ptr [eax + ebp * 0x8]              // 0x00787c00    8d2ce8
                         lea                eax, dword ptr [eax + ebp * 0x2]              // 0x00787c03    8d0468
                         shl                eax, 5                                        // 0x00787c06    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00787c09    8b8c08640a0000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000160]             // 0x00787c10    8b8160010000
                         {disp8} mov        ecx, dword ptr [eax + 0x6c]                   // 0x00787c16    8b486c
                         push               ecx                                           // 0x00787c19    51
                         mov.s              ecx, ebx                                      // 0x00787c1a    8bcb
                         call               dword ptr [edx + 8]                           // 0x00787c1c    ff5208
                         push               0x2                                           // 0x00787c1f    6a02
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00787c21    e84a69f5ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787c26    8b8efc000000
                         {disp32} mov       dword ptr [esi + 0x00000100], eax             // 0x00787c2c    898600010000
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x00787c32    d98190000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x26998]             // 0x00787c38    d81d98f98c00
                         add                esp, 0x04                                     // 0x00787c3e    83c404
                         fnstsw             ax                                            // 0x00787c41    dfe0
                         test               ah, 0x01                                      // 0x00787c43    f6c401
                         {disp8} jne        _jmp_addr_0x00787c52                          // 0x00787c46    750a
                         {disp32} mov       dword ptr [esi + 0x00000100], 0x00000000      // 0x00787c48    c7860001000000000000
_jmp_addr_0x00787c52:    {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x00787c52    d98190000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x298488]        // 0x00787c58    a188e4c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x298484]        // 0x00787c5d    8b1584e4c500
                         {disp32} fsubr     dword ptr [rdata_bytes + 0x2478]              // 0x00787c63    d82d78b48a00
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x00787c69    89442424
                         {disp32} mov       eax, dword ptr [esi + 0x00000100]             // 0x00787c6d    8b8600010000
                         test               eax, eax                                      // 0x00787c73    85c0
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x00787c75    89542420
                         {disp32} mov       edx, dword ptr [data_bytes + 0x29848c]        // 0x00787c79    8b158ce4c500
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00787c7f    d80db4a38a00
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x00787c85    89542428
                         {disp8} je         _jmp_addr_0x00787c93                          // 0x00787c89    7408
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00787c8b    d825b4a38a00
                         fadd.s             st(0), st(0)                                  // 0x00787c91    dcc0
_jmp_addr_0x00787c93:    {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x00787c93    d81598a38a00
                         fnstsw             ax                                            // 0x00787c99    dfe0
                         test               ah, 0x41                                      // 0x00787c9b    f6c441
                         {disp8} jne        _jmp_addr_0x00787cb7                          // 0x00787c9e    7517
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00787ca0    d81590a38a00
                         fnstsw             ax                                            // 0x00787ca6    dfe0
                         test               ah, 0x01                                      // 0x00787ca8    f6c401
                         {disp8} jne        _jmp_addr_0x00787cbf                          // 0x00787cab    7512
                         fstp               st(0)                                         // 0x00787cad    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00787caf    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00787cbf                          // 0x00787cb5    eb08
_jmp_addr_0x00787cb7:    fstp               st(0)                                         // 0x00787cb7    ddd8
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00787cb9    d90598a38a00
_jmp_addr_0x00787cbf:    {disp8} fld        dword ptr [esp + 0x20]                        // 0x00787cbf    d9442420
                         push               edi                                           // 0x00787cc3    57
                         fsub               dword ptr [edi]                               // 0x00787cc4    d827
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00787cc6    d9442428
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00787cca    d86704
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00787ccd    d95c2434
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00787cd1    d944242c
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00787cd5    d86708
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00787cd8    d95c2438
                         fmul               st, st(1)                                     // 0x00787cdc    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00787cde    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00787ce2    d9442434
                         fmul               st, st(1)                                     // 0x00787ce6    d8c9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00787ce8    d95c2428
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x00787cec    d84c2438
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x00787cf0    d9442424
                         fadd               dword ptr [edi]                               // 0x00787cf4    d807
                         fstp               dword ptr [edi]                               // 0x00787cf6    d91f
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x00787cf8    d9442428
                         {disp8} fadd       dword ptr [edi + 0x04]                        // 0x00787cfc    d84704
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x00787cff    d95f04
                         {disp8} fadd       dword ptr [edi + 0x08]                        // 0x00787d02    d84708
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x00787d05    d95f08
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d08    8b8efc000000
                         mov                eax, dword ptr [ecx]                          // 0x00787d0e    8b01
                         call               dword ptr [eax + 0x28]                        // 0x00787d10    ff5028
                         {disp32} fstp      dword ptr [esi + 0x00000108]                  // 0x00787d13    d99e08010000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d19    8b8efc000000
                         add                ecx, 0x78                                     // 0x00787d1f    83c178
                         mov.s              edx, edi                                      // 0x00787d22    8bd7
                         mov                eax, dword ptr [edx]                          // 0x00787d24    8b02
                         mov                dword ptr [ecx], eax                          // 0x00787d26    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00787d28    8b4204
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00787d2b    894104
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00787d2e    8b5208
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00787d31    895108
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d34    8b8efc000000
                         mov                eax, dword ptr [ecx]                          // 0x00787d3a    8b01
                         push               0x1                                           // 0x00787d3c    6a01
                         call               dword ptr [eax + 0x14]                        // 0x00787d3e    ff5014
                         {disp32} mov       eax, dword ptr [esi + 0x00000100]             // 0x00787d41    8b8600010000
                         test               eax, eax                                      // 0x00787d47    85c0
                         push               0x2                                           // 0x00787d49    6a02
                         {disp8} je         _jmp_addr_0x00787d6b                          // 0x00787d4b    741e
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00787d4d    e81e68f5ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d52    8b8efc000000
                         add                esp, 0x04                                     // 0x00787d58    83c404
                         neg                eax                                           // 0x00787d5b    f7d8
                         sbb.s              eax, eax                                      // 0x00787d5d    1bc0
                         neg                eax                                           // 0x00787d5f    f7d8
                         push               eax                                           // 0x00787d61    50
                         push               0x1d                                          // 0x00787d62    6a1d
                         call               _jmp_addr_0x004843a0                          // 0x00787d64    e837c6cfff
                         {disp8} jmp        _jmp_addr_0x00787d97                          // 0x00787d69    eb2c
_jmp_addr_0x00787d6b:    call               ?LocalRand@GRand@@SAIJ@Z                      // 0x00787d6b    e80068f5ff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d70    8b8efc000000
                         add                esp, 0x04                                     // 0x00787d76    83c404
                         neg                eax                                           // 0x00787d79    f7d8
                         sbb.s              eax, eax                                      // 0x00787d7b    1bc0
                         neg                eax                                           // 0x00787d7d    f7d8
                         push               eax                                           // 0x00787d7f    50
                         push               0x26                                          // 0x00787d80    6a26
                         call               _jmp_addr_0x004843a0                          // 0x00787d82    e819c6cfff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787d87    8b8efc000000
                         push               0x00c5e454                                    // 0x00787d8d    6854e4c500
                         call               _jmp_addr_0x00482c90                          // 0x00787d92    e8f9aecfff
_jmp_addr_0x00787d97:    {disp32} fld       dword ptr [data_bytes + 0x298454]             // 0x00787d97    d90554e4c500
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00787d9d    8d4c242c
                         fsub               dword ptr [edi]                               // 0x00787da1    d827
                         push               ecx                                           // 0x00787da3    51
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00787da4    d95c2430
                         {disp32} fld       dword ptr [data_bytes + 0x298458]             // 0x00787da8    d90558e4c500
                         {disp8} fsub       dword ptr [edi + 0x04]                        // 0x00787dae    d86704
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00787db1    d95c2434
                         {disp32} fld       dword ptr [data_bytes + 0x29845c]             // 0x00787db5    d9055ce4c500
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x00787dbb    d86708
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00787dbe    d95c2438
                         call               _jmp_addr_0x007faa50                          // 0x00787dc2    e8892c0700
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x00787dc7    d95c241c
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x00787dcb    8b54241c
                         {disp32} mov       edi, dword ptr [esi + 0x000000fc]             // 0x00787dcf    8bbefc000000
                         push               edx                                           // 0x00787dd5    52
                         call               _jmp_addr_0x007faaf0                          // 0x00787dd6    e8152d0700
                         {disp32} fstp      dword ptr [edi + 0x00000084]                  // 0x00787ddb    d99f84000000
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787de1    8b8efc000000
                         mov                eax, dword ptr [ecx]                          // 0x00787de7    8b01
                         add                esp, 0x08                                     // 0x00787de9    83c408
                         push               0x1                                           // 0x00787dec    6a01
                         call               dword ptr [eax + 0x14]                        // 0x00787dee    ff5014
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787df1    8b8efc000000
                         mov                edx, dword ptr [ecx]                          // 0x00787df7    8b11
                         call               dword ptr [edx + 0x10]                        // 0x00787df9    ff5210
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787dfc    8b8efc000000
                         mov                eax, dword ptr [ecx]                          // 0x00787e02    8b01
                         call               dword ptr [eax + 0x18]                        // 0x00787e04    ff5018
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787e07    8b8efc000000
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x00787e0d    d98190000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x00787e13    d80d402c8c00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00787e19    d81590a38a00
                         fnstsw             ax                                            // 0x00787e1f    dfe0
                         test               ah, 0x41                                      // 0x00787e21    f6c441
                         {disp8} jne        _jmp_addr_0x00787e3d                          // 0x00787e24    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1e658]             // 0x00787e26    d81558768c00
                         fnstsw             ax                                            // 0x00787e2c    dfe0
                         test               ah, 0x01                                      // 0x00787e2e    f6c401
                         {disp8} jne        _jmp_addr_0x00787e45                          // 0x00787e31    7512
                         fstp               st(0)                                         // 0x00787e33    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1e658]             // 0x00787e35    d90558768c00
                         {disp8} jmp        _jmp_addr_0x00787e45                          // 0x00787e3b    eb08
_jmp_addr_0x00787e3d:    fstp               st(0)                                         // 0x00787e3d    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00787e3f    d90590a38a00
_jmp_addr_0x00787e45:    {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00787e45    d90598a38a00
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00787e4b    d9542418
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00787e4f    8b542418
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00787e53    d95c242c
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00787e57    89542434
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00787e5b    d80db4a38a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00787e61    d944242c
                         {disp8} fadd       dword ptr [ecx + 0x78]                        // 0x00787e65    d84178
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00787e68    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00787e6c    8b442420
                         {disp8} fadd       dword ptr [ecx + 0x7c]                        // 0x00787e70    d8417c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00787e73    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00787e77    d9442434
                         {disp32} fadd      dword ptr [ecx + 0x00000080]                  // 0x00787e7b    d88180000000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00787e81    8b4c2424
                         {disp32} mov       dword ptr [data_bytes + 0x41af48], eax        // 0x00787e85    a3480fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41af4c], ecx        // 0x00787e8a    890d4c0fde00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00787e90    d95c2428
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00787e94    8b542428
                         {disp32} mov       dword ptr [data_bytes + 0x41af50], edx        // 0x00787e98    8915500fde00
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x00787e9e    8b8efc000000
                         {disp32} fld       dword ptr [ecx + 0x00000090]                  // 0x00787ea4    d98190000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x19c40]             // 0x00787eaa    d80d402c8c00
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x00787eb0    d81590a38a00
                         fnstsw             ax                                            // 0x00787eb6    dfe0
                         test               ah, 0x41                                      // 0x00787eb8    f6c441
                         {disp8} jne        _jmp_addr_0x00787ed4                          // 0x00787ebb    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1e658]             // 0x00787ebd    d81558768c00
                         fnstsw             ax                                            // 0x00787ec3    dfe0
                         test               ah, 0x01                                      // 0x00787ec5    f6c401
                         {disp8} jne        _jmp_addr_0x00787edc                          // 0x00787ec8    7512
                         fstp               st(0)                                         // 0x00787eca    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1e658]             // 0x00787ecc    d90558768c00
                         {disp8} jmp        _jmp_addr_0x00787edc                          // 0x00787ed2    eb08
_jmp_addr_0x00787ed4:    fstp               st(0)                                         // 0x00787ed4    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x00787ed6    d90590a38a00
_jmp_addr_0x00787edc:    fld                st(0)                                         // 0x00787edc    d9c0
                         {disp8} mov        dword ptr [esp + 0x34], 0x00000000            // 0x00787ede    c744243400000000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x57c6c]             // 0x00787ee6    d80d6c0c9000
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x00787eec    d95c242c
                         {disp32} fmul      dword ptr [__real@3f400000]                   // 0x00787ef0    d80d74b28a00
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00787ef6    d944242c
                         {disp8} fadd       dword ptr [ecx + 0x78]                        // 0x00787efa    d84178
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00787efd    d95c2420
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x00787f01    8b442420
                         {disp8} fadd       dword ptr [ecx + 0x7c]                        // 0x00787f05    d8417c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x00787f08    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x00787f0c    d9442434
                         {disp32} fadd      dword ptr [ecx + 0x00000080]                  // 0x00787f10    d88180000000
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00787f16    8b4c2424
                         {disp32} mov       dword ptr [data_bytes + 0x41af58], eax        // 0x00787f1a    a3580fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41af5c], ecx        // 0x00787f1f    890d5c0fde00
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00787f25    d95c2428
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x00787f29    8b542428
                         {disp32} mov       dword ptr [data_bytes + 0x41af60], edx        // 0x00787f2d    8915600fde00
                         {disp8} jmp        _jmp_addr_0x00787f3f                          // 0x00787f33    eb0a
_jmp_addr_0x00787f35:    {disp32} mov       dword ptr [esi + 0x000000fc], 0x00000000      // 0x00787f35    c786fc00000000000000
_jmp_addr_0x00787f3f:    xor.s              ebp, ebp                                      // 0x00787f3f    33ed
                         {disp32} lea       edi, dword ptr [esi + 0x00000480]             // 0x00787f41    8dbe80040000
_jmp_addr_0x00787f47:    push               0x0                                           // 0x00787f47    6a00
                         call               ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z      // 0x00787f49    e8120c0700
                         mov.s              ecx, eax                                      // 0x00787f4e    8bc8
                         mov.s              eax, ebp                                      // 0x00787f50    8bc5
                         cdq                                                              // 0x00787f52    99
                         and                edx, 0x0f                                     // 0x00787f53    83e20f
                         add.s              eax, edx                                      // 0x00787f56    03c2
                         sar                eax, 4                                        // 0x00787f58    c1f804
                         lea                ebx, dword ptr [eax + eax * 0x2]              // 0x00787f5b    8d1c40
                         shl                ebx, 4                                        // 0x00787f5e    c1e304
                         sub.s              ebx, eax                                      // 0x00787f61    2bd8
                         mov.s              edx, eax                                      // 0x00787f63    8bd0
                         shl                edx, 0xc                                      // 0x00787f65    c1e20c
                         sar                edx, 8                                        // 0x00787f68    c1fa08
                         shl                ebx, 0x10                                     // 0x00787f6b    c1e310
                         sub                edx, 0x00001100                               // 0x00787f6e    81ea00110000
                         sar                ebx, 8                                        // 0x00787f74    c1fb08
                         and                edx, 0x0000ff00                               // 0x00787f77    81e200ff0000
                         sub                ebx, 0x00300000                               // 0x00787f7d    81eb00003000
                         and                ebx, 0x00ff0000                               // 0x00787f83    81e30000ff00
                         or.s               edx, ebx                                      // 0x00787f89    0bd3
                         or                 edx, 0xff                                     // 0x00787f8b    81caff000000
                         mov                dword ptr [edi], ecx                          // 0x00787f91    890f
                         push               0x3f800000                                    // 0x00787f93    680000803f
                         {disp32} mov       dword ptr [ecx + 0x0000010c], edx             // 0x00787f98    89910c010000
                         call               _jmp_addr_0x006de590                          // 0x00787f9e    e8ed65f5ff
                         {disp32} fsub      dword ptr [rdata_bytes + 0xf5bc8]             // 0x00787fa3    d825c8eb9900
                         push               0x41900000                                    // 0x00787fa9    6800009041
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00787fae    d825b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00787fb4    d95c2420
                         call               _jmp_addr_0x006de590                          // 0x00787fb8    e8d365f5ff
                         {disp32} fsubr     dword ptr [rdata_bytes + 0xf5bc4]             // 0x00787fbd    d82dc4eb9900
                         push               0x3f800000                                    // 0x00787fc3    680000803f
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00787fc8    d95c2428
                         call               _jmp_addr_0x006de590                          // 0x00787fcc    e8bf65f5ff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x00787fd1    8b442428
                         mov                edx, dword ptr [edi]                          // 0x00787fd5    8b17
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00787fd7    8b4c2424
                         {disp32} fadd      dword ptr [rdata_bytes + 0xf5bc0]             // 0x00787fdb    d805c0eb9900
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x00787fe1    89442434
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x00787fe5    894c2438
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00787fe9    d825b4a38a00
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00787fef    8b4c2434
                         push               0x3f800000                                    // 0x00787ff3    680000803f
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x00787ff8    d95c2434
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x00787ffc    8b442434
                         mov                dword ptr [edx], eax                          // 0x00788000    8902
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x00788002    8b44243c
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00788006    894a04
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00788009    894208
                         call               _jmp_addr_0x006de590                          // 0x0078800c    e87f65f5ff
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x00788011    d825b4a38a00
                         push               0x3f800000                                    // 0x00788017    680000803f
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0078801c    d95c242c
                         call               _jmp_addr_0x006de590                          // 0x00788020    e86b65f5ff
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x00788025    d95c2430
                         push               0x3f800000                                    // 0x00788029    680000803f
                         call               _jmp_addr_0x006de590                          // 0x0078802e    e85d65f5ff
                         mov                eax, dword ptr [edi]                          // 0x00788033    8b07
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00788035    8b4c2434
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x00788039    8b542430
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x0078803d    d825b4a38a00
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x00788043    894c244c
                         add                esp, 0x1c                                     // 0x00788047    83c41c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0078804a    d95c242c
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0078804e    8b4c242c
                         add                eax, 0x000000f8                               // 0x00788052    05f8000000
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x00788057    89542434
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0078805b    8b542430
                         mov                dword ptr [eax], ecx                          // 0x0078805f    8908
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x00788061    8b4c2434
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00788065    895004
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00788068    894808
                         mov                edx, dword ptr [edi]                          // 0x0078806b    8b17
                         {disp32} mov       byte ptr [edx + 0x00000108], 0x01             // 0x0078806d    c6820801000001
                         mov                eax, dword ptr [edi]                          // 0x00788074    8b07
                         {disp32} mov       byte ptr [eax + 0x00000109], 0x01             // 0x00788076    c6800901000001
                         mov                ecx, dword ptr [edi]                          // 0x0078807d    8b0f
                         {disp32} mov       dword ptr [ecx + 0x00000104], 0x40800000      // 0x0078807f    c7810401000000008040
                         mov                edx, dword ptr [edi]                          // 0x00788089    8b17
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbabc]        // 0x0078808b    a1bc1aea00
                         add                ebp, 0x000000ff                               // 0x00788090    81c5ff000000
                         add                edi, 0x04                                     // 0x00788096    83c704
                         cmp                ebp, 0x00000ff0                               // 0x00788099    81fdf00f0000
                         {disp32} mov       dword ptr [edx + 0x000000f4], eax             // 0x0078809f    8982f4000000
                         {disp32} jl        _jmp_addr_0x00787f47                          // 0x007880a5    0f8c9cfeffff
                         {disp32} lea       edi, dword ptr [esi + 0x000004c0]             // 0x007880ab    8dbec0040000
                         mov                ebp, 0x00000002                               // 0x007880b1    bd02000000
                         mov                ebx, 0x40000000                               // 0x007880b6    bb00000040
_jmp_addr_0x007880bb:    push               0x0                                           // 0x007880bb    6a00
                         call               ?Create@LH3DSmoke@@SAPAV1@PBULHPoint@@@Z      // 0x007880bd    e89e0a0700
                         mov                dword ptr [edi], eax                          // 0x007880c2    8907
                         add                esp, 0x04                                     // 0x007880c4    83c404
                         {disp32} mov       dword ptr [eax + 0x0000010c], 0x00404040      // 0x007880c7    c7800c01000040404000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x298454]        // 0x007880d1    8b0d54e4c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x298458]        // 0x007880d7    8b1558e4c500
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29845c]        // 0x007880dd    a15ce4c500
                         push               0x3f800000                                    // 0x007880e2    680000803f
                         push               0xbf800000                                    // 0x007880e7    68000080bf
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x007880ec    894c2434
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x007880f0    89542438
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x007880f4    8944243c
                         call               _Random__Fff@8                                // 0x007880f8    e883500900
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x007880fd    d95c2418
                         push               0x3f800000                                    // 0x00788101    680000803f
                         push               0xbf800000                                    // 0x00788106    68000080bf
                         call               _Random__Fff@8                                // 0x0078810b    e870500900
                         push               0x3f800000                                    // 0x00788110    680000803f
                         {disp8} fstp       dword ptr [esp + 0x4c]                        // 0x00788115    d95c244c
                         push               0xbf800000                                    // 0x00788119    68000080bf
                         call               _Random__Fff@8                                // 0x0078811e    e85d500900
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x00788123    d944242c
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x00788127    d8442418
                         mov                ecx, dword ptr [edi]                          // 0x0078812b    8b0f
                         add                edi, 0x04                                     // 0x0078812d    83c704
                         dec                ebp                                           // 0x00788130    4d
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x00788131    d95c2438
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x00788135    d9442430
                         {disp8} fadd       dword ptr [esp + 0x48]                        // 0x00788139    d8442448
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0078813d    d95c243c
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x00788141    d8442434
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x00788145    d9442438
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x00788149    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0078814d    d944243c
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00788151    8b542420
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2478]              // 0x00788155    d80578b48a00
                         mov                dword ptr [ecx], edx                          // 0x0078815b    8911
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0078815d    d95c2424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x00788161    8b442424
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00788165    894104
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x00788168    d95c2428
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0078816c    8b542428
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00788170    895108
                         {disp8} mov        eax, dword ptr [edi + -0x04]                  // 0x00788173    8b47fc
                         {disp32} mov       byte ptr [eax + 0x00000108], 0x01             // 0x00788176    c6800801000001
                         {disp8} mov        ecx, dword ptr [edi + -0x04]                  // 0x0078817d    8b4ffc
                         {disp32} mov       byte ptr [ecx + 0x00000109], 0x00             // 0x00788180    c6810901000000
                         {disp8} mov        edx, dword ptr [edi + -0x04]                  // 0x00788187    8b57fc
                         {disp32} mov       dword ptr [edx + 0x00000104], ebx             // 0x0078818a    899a04010000
                         {disp8} mov        eax, dword ptr [edi + -0x04]                  // 0x00788190    8b47fc
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbabc]        // 0x00788193    8b0dbc1aea00
                         {disp32} mov       dword ptr [eax + 0x000000f4], ecx             // 0x00788199    8988f4000000
                         {disp32} jne       _jmp_addr_0x007880bb                          // 0x0078819f    0f8516ffffff
                         xor.s              ebp, ebp                                      // 0x007881a5    33ed
                         {disp32} lea       edi, dword ptr [esi + 0x000004c8]             // 0x007881a7    8dbec8040000
                         mov                ebx, 0x204080c0                               // 0x007881ad    bbc0804020
_jmp_addr_0x007881b2:    mov                ecx, 0x00000007                               // 0x007881b2    b907000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x007881b7    e814330800
                         push               0x3f800000                                    // 0x007881bc    680000803f
                         mov                dword ptr [edi], eax                          // 0x007881c1    8907
                         call               _jmp_addr_0x006de590                          // 0x007881c3    e8c863f5ff
                         {disp32} fadd      dword ptr [rdata_bytes + 0x2851c]             // 0x007881c8    d8051c158d00
                         push               0x41000000                                    // 0x007881ce    6800000041
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x007881d3    d825b4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x007881d9    d95c2420
                         call               _jmp_addr_0x006de590                          // 0x007881dd    e8ae63f5ff
                         {disp32} fsubr     dword ptr [rdata_bytes + 0xf5bbc]             // 0x007881e2    d82dbceb9900
                         push               0x3f800000                                    // 0x007881e8    680000803f
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x007881ed    d95c2428
                         call               _jmp_addr_0x006de590                          // 0x007881f1    e89a63f5ff
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x007881f6    8b542424
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x007881fa    8b442428
                         mov                ecx, dword ptr [edi]                          // 0x007881fe    8b0f
                         {disp32} fsub      dword ptr [rdata_bytes + 0x1651c]             // 0x00788200    d8251cf58b00
                         add                esp, 0x0c                                     // 0x00788206    83c40c
                         {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x00788209    89542438
                         {disp32} fsub      dword ptr [_rdata_float0p5]                   // 0x0078820d    d825b4a38a00
                         push               0x3f800000                                    // 0x00788213    680000803f
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00788218    89442440
                         push               0x0                                           // 0x0078821c    6a00
                         {disp8} fstp       dword ptr [esp + 0x48]                        // 0x0078821e    d95c2448
                         mov                eax, dword ptr [ecx]                          // 0x00788222    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x40]                   // 0x00788224    8d542440
                         call               dword ptr [eax + 0x20]                        // 0x00788228    ff5020
                         mov                edx, dword ptr [edi]                          // 0x0078822b    8b17
                         {disp8} lea        ecx, dword ptr [ebp + 0x0a]                   // 0x0078822d    8d4d0a
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x00788230    894c241c
                         {disp8} fild       dword ptr [esp + 0x1c]                        // 0x00788234    db44241c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x00788238    8d442414
                         push               eax                                           // 0x0078823c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                   // 0x0078823d    8d4c2414
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x00788241    d80db4a38a00
                         push               ecx                                           // 0x00788247    51
                         {disp8} fstp       dword ptr [edx + 0x44]                        // 0x00788248    d95a44
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0078824b    895c2418
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0078824f    c744241c00000000
                         call               _jmp_addr_0x007867b0                          // 0x00788257    e854e5ffff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0078825c    8b54241c
                         mov                ecx, dword ptr [edi]                          // 0x00788260    8b0f
                         mov                eax, dword ptr [ecx]                          // 0x00788262    8b01
                         add                esp, 0x08                                     // 0x00788264    83c408
                         push               edx                                           // 0x00788267    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00788268    8b542414
                         call               dword ptr [eax + 0x2c]                        // 0x0078826c    ff502c
                         inc                ebp                                           // 0x0078826f    45
                         add                edi, 0x04                                     // 0x00788270    83c704
                         cmp                ebp, 0x04                                     // 0x00788273    83fd04
                         {disp32} jl        _jmp_addr_0x007881b2                          // 0x00788276    0f8c36ffffff
                         {disp32} fld       qword ptr [rdata_bytes + 0x8d1e8]             // 0x0078827c    dd05e8619300
                         xor.s              eax, eax                                      // 0x00788282    33c0
                         fcos                                                             // 0x00788284    d9ff
                         {disp32} lea       edi, dword ptr [esi + 0x00000110]             // 0x00788286    8dbe10010000
                         mov                ecx, 0x00000035                               // 0x0078828c    b935000000
                         rep stosd                                                        // 0x00788291    f3ab
                         xor.s              ebp, ebp                                      // 0x00788293    33ed
                         {disp32} lea       edi, dword ptr [esi + 0x000001e4]             // 0x00788295    8dbee4010000
                         mov                ebx, 0xff808080                               // 0x0078829b    bb808080ff
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007882a0    d95c2414
                         {disp32} fld       qword ptr [rdata_bytes + 0x8d1e8]             // 0x007882a4    dd05e8619300
                         fsin                                                             // 0x007882aa    d9fe
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x007882ac    d95c2410
_jmp_addr_0x007882b0:    {disp32} mov       dword ptr [edi + 0x000001b0], ebx             // 0x007882b0    899fb0010000
                         xor.s              ecx, ecx                                      // 0x007882b6    33c9
                         {disp32} mov       dword ptr [edi + 0x000000d8], 0x00000000      // 0x007882b8    c787d800000000000000
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x007882c2    e809320800
                         mov                dword ptr [edi], eax                          // 0x007882c7    8907
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x007882c9    8b8ec0000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x18]                   // 0x007882cf    8b4918
                         mov                edx, dword ptr [ecx]                          // 0x007882d2    8b11
                         add                eax, 0x14                                     // 0x007882d4    83c014
                         push               eax                                           // 0x007882d7    50
                         mov.s              eax, edx                                      // 0x007882d8    8bc2
                         mov.s              edx, ebp                                      // 0x007882da    8bd5
                         call               dword ptr [eax + 0x1c8]                       // 0x007882dc    ff90c8010000
                         mov                ecx, dword ptr [edi]                          // 0x007882e2    8b0f
                         add                ecx, 0x14                                     // 0x007882e4    83c114
                         call               _jmp_addr_0x007fb5c0                          // 0x007882e7    e8d4320700
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x007882ec    d9442410
                         mov                eax, dword ptr [edi]                          // 0x007882f0    8b07
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x007882f2    d84820
                         add                eax, 0x14                                     // 0x007882f5    83c014
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x007882f8    d9442414
                         push               0x0                                           // 0x007882fc    6a00
                         {disp8} fmul       dword ptr [eax + 0x0c]                        // 0x007882fe    d8480c
                         push               0x0                                           // 0x00788301    6a00
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00788303    d9442418
                         xor.s              edx, edx                                      // 0x00788307    33d2
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00788309    d84818
                         fsubp              st(1), st                                     // 0x0078830c    dee9
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0078830e    d9580c
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00788311    d944241c
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x00788315    d84818
                         fadd               st, st(1)                                     // 0x00788318    d8c1
                         {disp8} fstp       dword ptr [eax + 0x18]                        // 0x0078831a    d95818
                         fstp               st(0)                                         // 0x0078831d    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078831f    d9442418
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x00788323    d84810
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00788326    d944241c
                         {disp8} fmul       dword ptr [eax + 0x10]                        // 0x0078832a    d84810
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078832d    d9442418
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x00788331    d8481c
                         fsubp              st(1), st                                     // 0x00788334    dee9
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x00788336    d95810
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00788339    d944241c
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0078833d    d8481c
                         fadd               st, st(1)                                     // 0x00788340    d8c1
                         {disp8} fstp       dword ptr [eax + 0x1c]                        // 0x00788342    d9581c
                         fstp               st(0)                                         // 0x00788345    ddd8
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00788347    d9442418
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x0078834b    d84814
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0078834e    d944241c
                         {disp8} fmul       dword ptr [eax + 0x14]                        // 0x00788352    d84814
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00788355    d9442418
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00788359    d84820
                         fsubp              st(1), st                                     // 0x0078835c    dee9
                         {disp8} fstp       dword ptr [eax + 0x14]                        // 0x0078835e    d95814
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00788361    d944241c
                         {disp8} fmul       dword ptr [eax + 0x20]                        // 0x00788365    d84820
                         fadd               st, st(1)                                     // 0x00788368    d8c1
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0078836a    d95820
                         mov                ecx, dword ptr [edi]                          // 0x0078836d    8b0f
                         mov                eax, dword ptr [ecx]                          // 0x0078836f    8b01
                         fstp               st(0)                                         // 0x00788371    ddd8
                         call               dword ptr [eax + 0xf4]                        // 0x00788373    ff90f4000000
                         mov                ecx, dword ptr [edi]                          // 0x00788379    8b0f
                         mov                eax, dword ptr [ecx]                          // 0x0078837b    8b01
                         xor.s              edx, edx                                      // 0x0078837d    33d2
                         call               dword ptr [eax + 0x58]                        // 0x0078837f    ff5058
                         inc                ebp                                           // 0x00788382    45
                         add                edi, 0x04                                     // 0x00788383    83c704
                         cmp                ebp, 0x36                                     // 0x00788386    83fd36
                         {disp32} jl        _jmp_addr_0x007882b0                          // 0x00788389    0f8c21ffffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0078838f    8b8ec4000000
                         mov                edx, dword ptr [ecx]                          // 0x00788395    8b11
                         call               dword ptr [edx + 0x10]                        // 0x00788397    ff5210
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c4]             // 0x0078839a    8b8ec4000000
                         test               ecx, ecx                                      // 0x007883a0    85c9
                         {disp8} je         _jmp_addr_0x007883ab                          // 0x007883a2    7407
                         mov                eax, dword ptr [ecx]                          // 0x007883a4    8b01
                         push               0x1                                           // 0x007883a6    6a01
                         call               dword ptr [eax + 0x2c]                        // 0x007883a8    ff502c
_jmp_addr_0x007883ab:    push               0x0000041e                                    // 0x007883ab    681e040000
                         push               0x00c27630                                    // 0x007883b0    683076c200
                         push               0x000004c4                                    // 0x007883b5    68c4040000
                         call               ___nw__FUl                                    // 0x007883ba    e8d1330500
                         mov.s              edi, eax                                      // 0x007883bf    8bf8
                         add                esp, 0x0c                                     // 0x007883c1    83c40c
                         test               edi, edi                                      // 0x007883c4    85ff
                         {disp8} je         _jmp_addr_0x007883d9                          // 0x007883c6    7411
                         mov.s              ecx, edi                                      // 0x007883c8    8bcf
                         call               ??0InnerCamera@@QAE@XZ                        // 0x007883ca    e821f10000
                         mov                dword ptr [edi], 0x0099eb8c                   // 0x007883cf    c7078ceb9900
                         mov.s              ecx, edi                                      // 0x007883d5    8bcf
                         {disp8} jmp        _jmp_addr_0x007883db                          // 0x007883d7    eb02
_jmp_addr_0x007883d9:    xor.s              ecx, ecx                                      // 0x007883d9    33c9
_jmp_addr_0x007883db:    {disp32} mov       dword ptr [esi + 0x000000c4], ecx             // 0x007883db    898ec4000000
                         mov                edx, dword ptr [ecx]                          // 0x007883e1    8b11
                         push               0x00c276c8                                    // 0x007883e3    68c876c200
                         call               dword ptr [edx + 8]                           // 0x007883e8    ff5208
                         {disp32} mov       eax, dword ptr [esi + 0x000000c0]             // 0x007883eb    8b86c0000000
                         push               0x0                                           // 0x007883f1    6a00
                         push               0x0                                           // 0x007883f3    6a00
                         push               0x44                                          // 0x007883f5    6a44
                         push               0x00c25048                                    // 0x007883f7    684850c200
                         {disp8} mov        byte ptr [eax + 0x10], 0x00                   // 0x007883fc    c6401000
                         call               _jmp_addr_0x008379e0                          // 0x00788400    e8dbf50a00
                         push               eax                                           // 0x00788405    50
                         push               0x5                                           // 0x00788406    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x41afc8], eax        // 0x00788408    a3c80fde00
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x0078840d    e81e790a00
                         push               0x0                                           // 0x00788412    6a00
                         push               0x0                                           // 0x00788414    6a00
                         push               0x44                                          // 0x00788416    6a44
                         push               0x00c25048                                    // 0x00788418    684850c200
                         {disp32} mov       dword ptr [data_bytes + 0x41afcc], eax        // 0x0078841d    a3cc0fde00
                         call               _jmp_addr_0x008379e0                          // 0x00788422    e8b9f50a00
                         push               eax                                           // 0x00788427    50
                         push               0x5                                           // 0x00788428    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x41afd0], eax        // 0x0078842a    a3d00fde00
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x0078842f    e8fc780a00
                         push               0x0                                           // 0x00788434    6a00
                         push               0x0                                           // 0x00788436    6a00
                         push               0x44                                          // 0x00788438    6a44
                         push               0x00c25048                                    // 0x0078843a    684850c200
                         {disp32} mov       dword ptr [data_bytes + 0x41afd4], eax        // 0x0078843f    a3d40fde00
                         call               _jmp_addr_0x008379e0                          // 0x00788444    e897f50a00
                         add                esp, 0x40                                     // 0x00788449    83c440
                         push               eax                                           // 0x0078844c    50
                         push               0x5                                           // 0x0078844d    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x41afd8], eax        // 0x0078844f    a3d80fde00
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x00788454    e8d7780a00
                         push               0x0                                           // 0x00788459    6a00
                         push               0x0                                           // 0x0078845b    6a00
                         push               0x44                                          // 0x0078845d    6a44
                         push               0x00c25048                                    // 0x0078845f    684850c200
                         {disp32} mov       dword ptr [data_bytes + 0x41afdc], eax        // 0x00788464    a3dc0fde00
                         call               _jmp_addr_0x008379e0                          // 0x00788469    e872f50a00
                         push               eax                                           // 0x0078846e    50
                         push               0x5                                           // 0x0078846f    6a05
                         {disp32} mov       dword ptr [data_bytes + 0x41afe0], eax        // 0x00788471    a3e00fde00
                         call               _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x00788476    e8b5780a00
                         {disp32} mov       dword ptr [data_bytes + 0x41afe4], eax        // 0x0078847b    a3e40fde00
                         add                esp, 0x20                                     // 0x00788480    83c420
                         mov                eax, 0x00de0d28                               // 0x00788483    b8280dde00
                         {disp32} lea       ecx, dword ptr [esi + 0x000000ec]             // 0x00788488    8d8eec000000
_jmp_addr_0x0078848e:    mov                dword ptr [eax], 0xffffffff                   // 0x0078848e    c700ffffffff
                         mov                dword ptr [ecx], 0x00000000                   // 0x00788494    c70100000000
                         add                eax, 0x04                                     // 0x0078849a    83c004
                         add                ecx, 0x4                                      // 0x0078849d    83c104
                         cmp                eax, 0x00de0d38                               // 0x007884a0    3d380dde00
                         {disp8} jl         _jmp_addr_0x0078848e                          // 0x007884a5    7ce7
                         {disp32} mov       ecx, dword ptr [esi + 0x000000c0]             // 0x007884a7    8b8ec0000000
                         {disp8} mov        ecx, dword ptr [ecx + 0x14]                   // 0x007884ad    8b4914
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x007884b0    8b4104
                         test               eax, 0x00080000                               // 0x007884b3    a900000800
                         {disp8} jne        _jmp_addr_0x007884be                          // 0x007884b8    7504
                         xor.s              edi, edi                                      // 0x007884ba    33ff
                         {disp8} jmp        _jmp_addr_0x007884fd                          // 0x007884bc    eb3f
_jmp_addr_0x007884be:    mov.s              edi, eax                                      // 0x007884be    8bf8
                         and                edi, 0x00008000                               // 0x007884c0    81e700800000
                         {disp8} je         _jmp_addr_0x007884d0                          // 0x007884c6    7408
                         {disp8} mov        edx, dword ptr [ecx + 0x48]                   // 0x007884c8    8b5148
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                   // 0x007884cb    8b5a08
                         {disp8} jmp        _jmp_addr_0x007884d2                          // 0x007884ce    eb02
_jmp_addr_0x007884d0:    xor.s              ebx, ebx                                      // 0x007884d0    33db
_jmp_addr_0x007884d2:    test               eax, 0x00040000                               // 0x007884d2    a900000400
                         {disp8} je         _jmp_addr_0x007884f4                          // 0x007884d7    741b
                         test               edi, edi                                      // 0x007884d9    85ff
                         {disp8} je         _jmp_addr_0x007884e9                          // 0x007884db    740c
                         {disp8} mov        eax, dword ptr [ecx + 0x48]                   // 0x007884dd    8b4148
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x007884e0    8b5008
                         add.s              eax, edx                                      // 0x007884e3    03c2
                         mov                eax, dword ptr [eax]                          // 0x007884e5    8b00
                         {disp8} jmp        _jmp_addr_0x007884f6                          // 0x007884e7    eb0d
_jmp_addr_0x007884e9:    {disp8} mov        eax, dword ptr [ecx + 0x48]                   // 0x007884e9    8b4148
                         xor.s              edx, edx                                      // 0x007884ec    33d2
                         add.s              eax, edx                                      // 0x007884ee    03c2
                         mov                eax, dword ptr [eax]                          // 0x007884f0    8b00
                         {disp8} jmp        _jmp_addr_0x007884f6                          // 0x007884f2    eb02
_jmp_addr_0x007884f4:    xor.s              eax, eax                                      // 0x007884f4    33c0
_jmp_addr_0x007884f6:    {disp8} mov        edi, dword ptr [ecx + 0x48]                   // 0x007884f6    8b7948
                         add.s              edi, eax                                      // 0x007884f9    03f8
                         add.s              edi, ebx                                      // 0x007884fb    03fb
_jmp_addr_0x007884fd:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x007884fd    8b4704
                         xor.s              ebx, ebx                                      // 0x00788500    33db
                         test               eax, eax                                      // 0x00788502    85c0
                         {disp32} jle       _jmp_addr_0x007885b4                          // 0x00788504    0f8eaa000000
                         xor.s              ebp, ebp                                      // 0x0078850a    33ed
_jmp_addr_0x0078850c:    {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0078850c    8b4708
                         mov.s              edx, ebp                                      // 0x0078850f    8bd5
                         add.s              edx, eax                                      // 0x00788511    03d0
                         push               edx                                           // 0x00788513    52
                         push               0x00c2761c                                    // 0x00788514    681c76c200
                         call               __strcmpi                                     // 0x00788519    e8c2e70300
                         add                esp, 0x08                                     // 0x0078851e    83c408
                         test               eax, eax                                      // 0x00788521    85c0
                         {disp8} jne        _jmp_addr_0x00788531                          // 0x00788523    750c
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x00788525    8b4f08
                         mov.s              eax, ebp                                      // 0x00788528    8bc5
                         add.s              eax, ecx                                      // 0x0078852a    03c1
                         {disp32} mov       dword ptr [data_bytes + 0x41affc], eax        // 0x0078852c    a3fc0fde00
_jmp_addr_0x00788531:    {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x00788531    8b4708
                         mov.s              ecx, ebp                                      // 0x00788534    8bcd
                         add.s              ecx, eax                                      // 0x00788536    03c8
                         push               ecx                                           // 0x00788538    51
                         push               0x00c2760c                                    // 0x00788539    680c76c200
                         call               __strcmpi                                     // 0x0078853e    e89de70300
                         add                esp, 0x08                                     // 0x00788543    83c408
                         test               eax, eax                                      // 0x00788546    85c0
                         {disp8} jne        _jmp_addr_0x00788557                          // 0x00788548    750d
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0078854a    8b4708
                         mov.s              edx, ebp                                      // 0x0078854d    8bd5
                         add.s              edx, eax                                      // 0x0078854f    03d0
                         {disp32} mov       dword ptr [data_bytes + 0x41aff0], edx        // 0x00788551    8915f00fde00
_jmp_addr_0x00788557:    {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x00788557    8b5708
                         mov.s              eax, ebp                                      // 0x0078855a    8bc5
                         add.s              eax, edx                                      // 0x0078855c    03c2
                         push               eax                                           // 0x0078855e    50
                         push               0x00c275fc                                    // 0x0078855f    68fc75c200
                         call               __strcmpi                                     // 0x00788564    e877e70300
                         add                esp, 0x08                                     // 0x00788569    83c408
                         test               eax, eax                                      // 0x0078856c    85c0
                         {disp8} jne        _jmp_addr_0x0078857d                          // 0x0078856e    750d
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x00788570    8b4708
                         mov.s              ecx, ebp                                      // 0x00788573    8bcd
                         add.s              ecx, eax                                      // 0x00788575    03c8
                         {disp32} mov       dword ptr [data_bytes + 0x41aff4], ecx        // 0x00788577    890df40fde00
_jmp_addr_0x0078857d:    {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0078857d    8b4708
                         mov.s              edx, ebp                                      // 0x00788580    8bd5
                         add.s              edx, eax                                      // 0x00788582    03d0
                         push               edx                                           // 0x00788584    52
                         push               0x00c275ec                                    // 0x00788585    68ec75c200
                         call               __strcmpi                                     // 0x0078858a    e851e70300
                         add                esp, 0x08                                     // 0x0078858f    83c408
                         test               eax, eax                                      // 0x00788592    85c0
                         {disp8} jne        _jmp_addr_0x007885a2                          // 0x00788594    750c
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x00788596    8b4f08
                         mov.s              eax, ebp                                      // 0x00788599    8bc5
                         add.s              eax, ecx                                      // 0x0078859b    03c1
                         {disp32} mov       dword ptr [data_bytes + 0x41aff8], eax        // 0x0078859d    a3f80fde00
_jmp_addr_0x007885a2:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x007885a2    8b4704
                         inc                ebx                                           // 0x007885a5    43
                         add                ebp, 0x000000e0                               // 0x007885a6    81c5e0000000
                         cmp.s              ebx, eax                                      // 0x007885ac    3bd8
                         {disp32} jl        _jmp_addr_0x0078850c                          // 0x007885ae    0f8c58ffffff
_jmp_addr_0x007885b4:    push               0x0                                           // 0x007885b4    6a00
                         call               _jmp_addr_0x00788a10                          // 0x007885b6    e855040000
                         push               0x0                                           // 0x007885bb    6a00
                         call               _jmp_addr_0x00788c10                          // 0x007885bd    e84e060000
                         push               0x0                                           // 0x007885c2    6a00
                         call               _jmp_addr_0x00788d20                          // 0x007885c4    e857070000
                         push               0x0                                           // 0x007885c9    6a00
                         call               _jmp_addr_0x00789070                          // 0x007885cb    e8a00a0000
                         mov                edx, dword ptr [esi]                          // 0x007885d0    8b16
                         add                esp, 0x10                                     // 0x007885d2    83c410
                         mov.s              ecx, esi                                      // 0x007885d5    8bce
                         call               dword ptr [edx + 0x44]                        // 0x007885d7    ff5244
                         push               0x4                                           // 0x007885da    6a04
                         push               0x00c2700c                                    // 0x007885dc    680c70c200
                         mov.s              ecx, esi                                      // 0x007885e1    8bce
                         call               _jmp_addr_0x00798350                          // 0x007885e3    e868fd0000
                         pop                ebp                                           // 0x007885e8    5d
                         pop                ebx                                           // 0x007885e9    5b
_jmp_addr_0x007885ea:    pop                edi                                           // 0x007885ea    5f
                         pop                esi                                           // 0x007885eb    5e
                         add                esp, 0x40                                     // 0x007885ec    83c440
                         ret                                                              // 0x007885ef    c3
_Reinit__11InnerCameraFv:
                         {disp32} mov       eax, dword ptr [ecx + 0x0000043c]             // 0x007885f0    8b813c040000
                         test               eax, eax                                      // 0x007885f6    85c0
                         {disp8} jne        _jmp_addr_0x00788605                          // 0x007885f8    750b
                         mov                eax, dword ptr [ecx]                          // 0x007885fa    8b01
                         {disp32} lea       edx, dword ptr [ecx + 0x00000160]             // 0x007885fc    8d9160010000
                         push               edx                                           // 0x00788602    52
                         call               dword ptr [eax]                               // 0x00788603    ff10
_jmp_addr_0x00788605:    ret                                                              // 0x00788605    c3
                         nop                                                              // 0x00788606    90
                         nop                                                              // 0x00788607    90
                         nop                                                              // 0x00788608    90
                         nop                                                              // 0x00788609    90
                         nop                                                              // 0x0078860a    90
                         nop                                                              // 0x0078860b    90
                         nop                                                              // 0x0078860c    90
                         nop                                                              // 0x0078860d    90
                         nop                                                              // 0x0078860e    90
                         nop                                                              // 0x0078860f    90
                         push               esi                                           // 0x00788610    56
                         mov.s              esi, ecx                                      // 0x00788611    8bf1
                         call               _jmp_addr_0x007974c0                          // 0x00788613    e8a8ee0000
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00788618    f644240801
                         {disp8} je         _jmp_addr_0x00788628                          // 0x0078861d    7409
                         push               esi                                           // 0x0078861f    56
                         call               ??3@YAXPAX@Z                                  // 0x00788620    e873680200
                         add                esp, 0x04                                     // 0x00788625    83c404
_jmp_addr_0x00788628:    mov.s              eax, esi                                      // 0x00788628    8bc6
                         pop                esi                                           // 0x0078862a    5e
                         ret                0x0004                                        // 0x0078862b    c20400
                         nop                                                              // 0x0078862e    90
                         nop                                                              // 0x0078862f    90
                         sub                esp, 0x00000194                               // 0x00788630    81ec94010000
                         push               ebx                                           // 0x00788636    53
                         push               esi                                           // 0x00788637    56
                         mov.s              esi, ecx                                      // 0x00788638    8bf1
                         push               edi                                           // 0x0078863a    57
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0078863b    8d4c2438
                         call               dword ptr [rdata_bytes + 0x75c]               // 0x0078863f    ff155c978a00
                         {disp32} fld       dword ptr [data_bytes + 0x298454]             // 0x00788645    d90554e4c500
                         {disp32} mov       edx, dword ptr [data_bytes + 0x298458]        // 0x0078864b    8b1558e4c500
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00788651    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x00788657    8b81ac030000
                         {disp8} fstp       dword ptr [esp + 0x68]                        // 0x0078865d    d95c2468
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x00788661    89542414
                         {disp8} mov        dword ptr [esp + 0x6c], edx                   // 0x00788665    8954246c
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x00788669    8944243c
                         {disp32} mov       eax, dword ptr [data_bytes + 0x29845c]        // 0x0078866d    a15ce4c500
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x00788672    8d542438
                         xor.s              ebx, ebx                                      // 0x00788676    33db
                         mov                edi, 0x00000001                               // 0x00788678    bf01000000
                         push               edx                                           // 0x0078867d    52
                         {disp8} mov        dword ptr [esp + 0x60], 0x000000af            // 0x0078867e    c7442460af000000
                         {disp8} mov        dword ptr [esp + 0x48], ebx                   // 0x00788686    895c2448
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0078868a    8944241c
                         {disp8} mov        dword ptr [esp + 0x74], eax                   // 0x0078868e    89442474
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x00788692    895c245c
                         {disp8} mov        dword ptr [esp + 0x44], edi                   // 0x00788696    897c2444
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x0078869a    e89117caff
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x0078869f    8b0d203bcd00
                         {disp32} mov       eax, dword ptr [ecx + 0x000003ac]             // 0x007886a5    8b81ac030000
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x007886ab    8d542438
                         push               edx                                           // 0x007886af    52
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x007886b0    89442440
                         {disp8} mov        dword ptr [esp + 0x60], 0x000000b1            // 0x007886b4    c7442460b1000000
                         {disp8} mov        dword ptr [esp + 0x48], ebx                   // 0x007886bc    895c2448
                         {disp8} mov        dword ptr [esp + 0x6c], 0x43200000            // 0x007886c0    c744246c00002043
                         {disp8} mov        dword ptr [esp + 0x70], 0xc2340000            // 0x007886c8    c7442470000034c2
                         {disp8} mov        dword ptr [esp + 0x74], 0xc1f00000            // 0x007886d0    c74424740000f0c1
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x007886d8    895c245c
                         {disp8} mov        dword ptr [esp + 0x44], edi                   // 0x007886dc    897c2444
                         call               @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12                          // 0x007886e0    e84b17caff
                         cmp                byte ptr [esp + 0x000001a4], bl               // 0x007886e5    389c24a4010000
                         {disp32} jne       _jmp_addr_0x007889ea                          // 0x007886ec    0f85f8020000
                         {disp32} mov       al, byte ptr [data_bytes + 0x41ad24]          // 0x007886f2    a0240dde00
                         test               al, 0x01                                      // 0x007886f7    a801
                         {disp8} jne        _jmp_addr_0x00788772                          // 0x007886f9    7577
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x007886fb    8b15ac7cd100
                         mov.s              cl, al                                        // 0x00788701    8ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x00788703    a1a87cd100
                         or                 cl, 1                                         // 0x00788708    80c901
                         cmp                edx, 0x00001a1f                               // 0x0078870b    81fa1f1a0000
                         {disp32} mov       byte ptr [data_bytes + 0x41ad24], cl          // 0x00788711    880d240dde00
                         mov.s              ecx, eax                                      // 0x00788717    8bc8
                         {disp8} jbe        _jmp_addr_0x00788721                          // 0x00788719    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013974]             // 0x0078871b    8d8874390100
_jmp_addr_0x00788721:    cmp                edx, 0x00001a1c                               // 0x00788721    81fa1c1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00788727    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x41af90], ecx        // 0x0078872a    890d900fde00
                         mov.s              ecx, eax                                      // 0x00788730    8bc8
                         {disp8} jbe        _jmp_addr_0x0078873a                          // 0x00788732    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013950]             // 0x00788734    8d8850390100
_jmp_addr_0x0078873a:    cmp                edx, 0x00001a1e                               // 0x0078873a    81fa1e1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00788740    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x41af94], ecx        // 0x00788743    890d940fde00
                         mov.s              ecx, eax                                      // 0x00788749    8bc8
                         {disp8} jbe        _jmp_addr_0x00788753                          // 0x0078874b    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013968]             // 0x0078874d    8d8868390100
_jmp_addr_0x00788753:    cmp                edx, 0x00001a1d                               // 0x00788753    81fa1d1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00788759    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x41af98], ecx        // 0x0078875c    890d980fde00
                         {disp8} jbe        _jmp_addr_0x00788769                          // 0x00788762    7605
                         add                eax, 0x0001395c                               // 0x00788764    055c390100
_jmp_addr_0x00788769:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x00788769    8b5008
                         {disp32} mov       dword ptr [data_bytes + 0x41af9c], edx        // 0x0078876c    89159c0fde00
_jmp_addr_0x00788772:    push               ebp                                           // 0x00788772    55
                         push               0x3f800000                                    // 0x00788773    680000803f
                         push               0x3fa66666                                    // 0x00788778    686666a63f
                         push               ebx                                           // 0x0078877d    53
                         push               0x00de0f90                                    // 0x0078877e    68900fde00
                         push               -0x1                                          // 0x00788783    6aff
                         push               0x000003fc                                    // 0x00788785    68fc030000
                         push               0x4                                           // 0x0078878a    6a04
                         mov.s              ecx, esi                                      // 0x0078878c    8bce
                         {disp32} mov       dword ptr [data_bytes + 0x470120], edi        // 0x0078878e    893d2061e300
                         call               _jmp_addr_0x00798430                          // 0x00788794    e897fc0000
                         {disp32} mov       dword ptr [data_bytes + 0x470120], ebx        // 0x00788799    891d2061e300
                         cmp                dword ptr [esi + 0x000000fc], ebx             // 0x0078879f    399efc000000
                         {disp32} je        _jmp_addr_0x0078899b                          // 0x007887a5    0f84f0010000
                         cmp                dword ptr [esi + 0x00000100], ebx             // 0x007887ab    399e00010000
                         {disp8} jne        _jmp_addr_0x007887d5                          // 0x007887b1    7522
                         push               0x000003e8                                    // 0x007887b3    68e8030000
                         call               ?LocalRand@GRand@@SAIJ@Z                      // 0x007887b8    e8b35df5ff
                         add                esp, 0x04                                     // 0x007887bd    83c404
                         cmp                eax, 0x17                                     // 0x007887c0    83f817
                         {disp8} jne        _jmp_addr_0x007887d5                          // 0x007887c3    7510
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x007887c5    8b8efc000000
                         push               0x000000ca                                    // 0x007887cb    68ca000000
                         call               _jmp_addr_0x00484360                          // 0x007887d0    e88bbbcfff
_jmp_addr_0x007887d5:    {disp32} mov       eax, dword ptr [?g_delta_time@LH3DTech@@2MA]  // 0x007887d5    a13481c300
                         cmp                eax, 0x000000c8                               // 0x007887da    3dc8000000
                         {disp8} jle        _jmp_addr_0x007887e6                          // 0x007887df    7e05
                         mov                eax, 0x000000c8                               // 0x007887e1    b8c8000000
_jmp_addr_0x007887e6:    {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x007887e6    8b8efc000000
                         mov                edx, dword ptr [ecx]                          // 0x007887ec    8b11
                         push               eax                                           // 0x007887ee    50
                         call               dword ptr [edx + 0x14]                        // 0x007887ef    ff5214
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x007887f2    8b8efc000000
                         mov                eax, dword ptr [ecx]                          // 0x007887f8    8b01
                         call               dword ptr [eax + 0x18]                        // 0x007887fa    ff5018
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x007887fd    8b8efc000000
                         {disp32} mov       ecx, dword ptr [ecx + 0x0000482c]             // 0x00788803    8b892c480000
                         mov                eax, dword ptr [ecx]                          // 0x00788809    8b01
                         mov.s              edx, edi                                      // 0x0078880b    8bd7
                         call               dword ptr [eax + 0xa0]                        // 0x0078880d    ff90a0000000
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00788813    8d4c2420
                         push               ecx                                           // 0x00788817    51
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x00788818    8d542414
                         push               edx                                           // 0x0078881c    52
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x0078881d    895c2428
                         {disp8} mov        dword ptr [esp + 0x18], 0xffe0e0e0            // 0x00788821    c7442418e0e0e0ff
                         call               _jmp_addr_0x007867b0                          // 0x00788829    e882dfffff
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x0078882e    8b8efc000000
                         {disp8} lea        eax, dword ptr [esp + 0x18]                   // 0x00788834    8d442418
                         push               eax                                           // 0x00788838    50
                         add                ecx, 0x78                                     // 0x00788839    83c178
                         push               ecx                                           // 0x0078883c    51
                         call               _jmp_addr_0x0084a4b0                          // 0x0078883d    e86e1c0c00
                         {disp32} mov       edx, dword ptr [esi + 0x000000fc]             // 0x00788842    8b96fc000000
                         {disp8} mov        dword ptr [esp + 0x30], ebx                   // 0x00788848    895c2430
                         {disp32} mov       ecx, dword ptr [edx + 0x0000482c]             // 0x0078884c    8b8a2c480000
                         mov                eax, dword ptr [ecx]                          // 0x00788852    8b01
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x00788854    8b542420
                         add                esp, 0x10                                     // 0x00788858    83c410
                         push               ebx                                           // 0x0078885b    53
                         call               dword ptr [eax + 0x2c]                        // 0x0078885c    ff502c
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4e3e90]        // 0x0078885f    8b0d909eea00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4e3e94]        // 0x00788865    8b15949eea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4e3e98]        // 0x0078886b    a1989eea00
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x00788870    894c2430
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                   // 0x00788874    8d4c2424
                         push               0x00c5e454                                    // 0x00788878    6854e4c500
                         push               ecx                                           // 0x0078887d    51
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0078887e    8954243c
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x00788882    89442440
                         call               _jmp_addr_0x0081e1f0                          // 0x00788886    e865590900
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0078888b    8b0dc452e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x00788891    a1c052e800
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x00788896    894c2420
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb10], eax        // 0x0078889a    a3101bea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbb14], ecx        // 0x0078889f    890d141bea00
                         {disp32} mov       ecx, dword ptr [esi + 0x000000fc]             // 0x007888a5    8b8efc000000
                         add                esp, 0x08                                     // 0x007888ab    83c408
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x007888ae    89442414
                         call               _jmp_addr_0x0048e260                          // 0x007888b2    e8a959d0ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4dbb10]        // 0x007888b7    8b15101bea00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbb14]        // 0x007888bd    a1141bea00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4dbac8]        // 0x007888c2    8b3dc81aea00
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4dbacc]        // 0x007888c8    8b2dcc1aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbad0], ebx        // 0x007888ce    891dd01aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbac8], edx        // 0x007888d4    8915c81aea00
                         {disp32} mov       dword ptr [data_bytes + 0x4dbacc], eax        // 0x007888da    a3cc1aea00
                         {disp32} mov       eax, dword ptr [esi + 0x000000fc]             // 0x007888df    8b86fc000000
                         {disp32} mov       ecx, dword ptr [eax + 0x0000482c]             // 0x007888e5    8b882c480000
                         {disp32} mov       edx, dword ptr [eax + 0x00000098]             // 0x007888eb    8b9098000000
                         push               ecx                                           // 0x007888f1    51
                         {disp32} mov       ecx, dword ptr [eax + edx * 0x4 + 0x000000b4] // 0x007888f2    8b8c90b4000000
                         add                ecx, 0x14                                     // 0x007888f9    83c114
                         call               _jmp_addr_0x00868c80                          // 0x007888fc    e87f030e00
                         {disp8} lea        eax, dword ptr [esp + 0x30]                   // 0x00788901    8d442430
                         push               eax                                           // 0x00788905    50
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x00788906    8d4c2428
                         {disp32} mov       dword ptr [data_bytes + 0x4dbac8], edi        // 0x0078890a    893dc81aea00
                         {disp32} mov       edi, dword ptr [data_bytes + 0x4dbad0]        // 0x00788910    8b3dd01aea00
                         push               ecx                                           // 0x00788916    51
                         {disp32} mov       dword ptr [data_bytes + 0x4dbacc], ebp        // 0x00788917    892dcc1aea00
                         call               _jmp_addr_0x0081e1f0                          // 0x0078891d    e8ce580900
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf0]        // 0x00788922    a1f01aea00
                         add                esp, 0x08                                     // 0x00788927    83c408
                         cmp.s              eax, ebx                                      // 0x0078892a    3bc3
                         {disp32} mov       byte ptr [data_bytes + 0x41af8c], bl          // 0x0078892c    881d8c0fde00
                         {disp8} je         _jmp_addr_0x0078899b                          // 0x00788932    7467
                         cmp.s              edi, ebx                                      // 0x00788934    3bfb
                         {disp8} je         _jmp_addr_0x0078899b                          // 0x00788936    7463
                         {disp32} mov       edx, dword ptr [esi + 0x000000fc]             // 0x00788938    8b96fc000000
                         {disp32} mov       ecx, dword ptr [edx + 0x0000482c]             // 0x0078893e    8b8a2c480000
                         mov                eax, dword ptr [ecx]                          // 0x00788944    8b01
                         call               dword ptr [eax + 0x1e0]                       // 0x00788946    ff90e0010000
                         test               eax, eax                                      // 0x0078894c    85c0
                         {disp8} je         _jmp_addr_0x0078899b                          // 0x0078894e    744b
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf2c0]        // 0x00788950    8b0dc052e800
                         {disp32} mov       edx, dword ptr [data_bytes + 0x4bf2c4]        // 0x00788956    8b15c452e800
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbaf4]        // 0x0078895c    a1f41aea00
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x00788961    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x00788965    89542418
                         push               eax                                           // 0x00788969    50
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0078896a    8d542428
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0078896e    8d4c2418
                         call               _jmp_addr_0x0081b370                          // 0x00788972    e8f9290900
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x00788977    8b4c2424
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0078897b    8b542428
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0078897f    8b44242c
                         {disp32} mov       byte ptr [data_bytes + 0x41af8c], 0x01        // 0x00788983    c6058c0fde0001
                         {disp32} mov       dword ptr [data_bytes + 0x4700c8], ecx        // 0x0078898a    890dc860e300
                         {disp32} mov       dword ptr [data_bytes + 0x4700cc], edx        // 0x00788990    8915cc60e300
                         {disp32} mov       dword ptr [data_bytes + 0x4700d0], eax        // 0x00788996    a3d060e300
_jmp_addr_0x0078899b:    {disp32} mov       ebx, dword ptr [__imp__GetTickCount@4]        // 0x0078899b    8b1dc4918a00
                         xor.s              ebp, ebp                                      // 0x007889a1    33ed
                         xor.s              edi, edi                                      // 0x007889a3    33ff
_jmp_addr_0x007889a5:    call               ebx                                           // 0x007889a5    ffd3
                         {disp32} mov       edx, dword ptr [esi + 0x00000478]             // 0x007889a7    8b9678040000
                         mov.s              ecx, eax                                      // 0x007889ad    8bc8
                         shr                ecx, 5                                        // 0x007889af    c1e905
                         add.s              ecx, edi                                      // 0x007889b2    03cf
                         and                ecx, 0x1f                                     // 0x007889b4    83e11f
                         mov                eax, 0x0000001f                               // 0x007889b7    b81f000000
                         sub.s              eax, ecx                                      // 0x007889bc    2bc1
                         mov.s              ecx, ebp                                      // 0x007889be    8bcd
                         add.s              ecx, edx                                      // 0x007889c0    03ca
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x007889c2    8b5128
                         xor.s              eax, edx                                      // 0x007889c5    33c2
                         and                eax, 0x3f                                     // 0x007889c7    83e03f
                         xor.s              edx, eax                                      // 0x007889ca    33d0
                         {disp8} mov        dword ptr [ecx + 0x28], edx                   // 0x007889cc    895128
                         {disp32} mov       eax, dword ptr [esi + 0x00000478]             // 0x007889cf    8b8678040000
                         mov.s              ecx, ebp                                      // 0x007889d5    8bcd
                         add.s              ecx, eax                                      // 0x007889d7    03c8
                         call               ?Draw@LH3DSprite@@QAEXXZ                      // 0x007889d9    e8527b0b00
                         add                edi, 0x08                                     // 0x007889de    83c708
                         add                ebp, 0x34                                     // 0x007889e1    83c534
                         cmp                edi, 0x20                                     // 0x007889e4    83ff20
                         {disp8} jl         _jmp_addr_0x007889a5                          // 0x007889e7    7cbc
                         pop                ebp                                           // 0x007889e9    5d
_jmp_addr_0x007889ea:    {disp32} mov       edx, dword ptr [esp + 0x000001a4]             // 0x007889ea    8b9424a4010000
                         push               edx                                           // 0x007889f1    52
                         mov.s              ecx, esi                                      // 0x007889f2    8bce
                         call               ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z     // 0x007889f4    e837180100
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x007889f9    8d4c2438
                         call               dword ptr [rdata_bytes + 0x758]               // 0x007889fd    ff1558978a00
                         pop                edi                                           // 0x00788a03    5f
                         pop                esi                                           // 0x00788a04    5e
                         pop                ebx                                           // 0x00788a05    5b
                         add                esp, 0x00000194                               // 0x00788a06    81c494010000
                         ret                0x0004                                        // 0x00788a0c    c20400
                         nop                                                              // 0x00788a0f    90
_jmp_addr_0x00788a10:    push               0x00ddcd24                                    // 0x00788a10    6824cddd00
                         call               _jmp_addr_0x0079a600                          // 0x00788a15    e8e61b0100
                         push               0x0                                           // 0x00788a1a    6a00
                         push               0x00000486                                    // 0x00788a1c    6886040000
                         push               0x00ddcd24                                    // 0x00788a21    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a26    e8e51e0100
                         push               0x00ddcd24                                    // 0x00788a2b    6824cddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788a30    e80b1c0100
                         push               0x0                                           // 0x00788a35    6a00
                         push               0x00000487                                    // 0x00788a37    6887040000
                         push               0x00ddcd24                                    // 0x00788a3c    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a41    e8ca1e0100
                         push               0x0                                           // 0x00788a46    6a00
                         push               0x00000488                                    // 0x00788a48    6888040000
                         push               0x00ddcd24                                    // 0x00788a4d    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a52    e8b91e0100
                         push               0x00ddcd24                                    // 0x00788a57    6824cddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788a5c    e8df1b0100
                         push               0x0                                           // 0x00788a61    6a00
                         push               0x00000489                                    // 0x00788a63    6889040000
                         push               0x00ddcd24                                    // 0x00788a68    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a6d    e89e1e0100
                         push               0x0                                           // 0x00788a72    6a00
                         push               0x0000048a                                    // 0x00788a74    688a040000
                         push               0x00ddcd24                                    // 0x00788a79    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a7e    e88d1e0100
                         add                esp, 0x48                                     // 0x00788a83    83c448
                         push               0x0                                           // 0x00788a86    6a00
                         push               0x0000048b                                    // 0x00788a88    688b040000
                         push               0x00ddcd24                                    // 0x00788a8d    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788a92    e8791e0100
                         push               0x0                                           // 0x00788a97    6a00
                         push               0x0000048c                                    // 0x00788a99    688c040000
                         push               0x00ddcd24                                    // 0x00788a9e    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788aa3    e8681e0100
                         push               0x0                                           // 0x00788aa8    6a00
                         push               0x0000048d                                    // 0x00788aaa    688d040000
                         push               0x00ddcd24                                    // 0x00788aaf    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ab4    e8571e0100
                         push               0x0                                           // 0x00788ab9    6a00
                         push               0x0000048e                                    // 0x00788abb    688e040000
                         push               0x00ddcd24                                    // 0x00788ac0    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ac5    e8461e0100
                         push               0x0                                           // 0x00788aca    6a00
                         push               0x0000048f                                    // 0x00788acc    688f040000
                         push               0x00ddcd24                                    // 0x00788ad1    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ad6    e8351e0100
                         push               0x0                                           // 0x00788adb    6a00
                         push               0x0000049a                                    // 0x00788add    689a040000
                         push               0x00ddcd24                                    // 0x00788ae2    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ae7    e8241e0100
                         add                esp, 0x48                                     // 0x00788aec    83c448
                         push               0x0                                           // 0x00788aef    6a00
                         push               0x0000049b                                    // 0x00788af1    689b040000
                         push               0x00ddcd24                                    // 0x00788af6    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788afb    e8101e0100
                         push               0x0                                           // 0x00788b00    6a00
                         push               0x0000049c                                    // 0x00788b02    689c040000
                         push               0x00ddcd24                                    // 0x00788b07    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b0c    e8ff1d0100
                         push               0x0                                           // 0x00788b11    6a00
                         push               0x00000491                                    // 0x00788b13    6891040000
                         push               0x00ddcd24                                    // 0x00788b18    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b1d    e8ee1d0100
                         push               0x00ddcd24                                    // 0x00788b22    6824cddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788b27    e8141b0100
                         push               0x0                                           // 0x00788b2c    6a00
                         push               0x00000492                                    // 0x00788b2e    6892040000
                         push               0x00ddcd24                                    // 0x00788b33    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b38    e8d31d0100
                         push               0x0                                           // 0x00788b3d    6a00
                         push               0x00000493                                    // 0x00788b3f    6893040000
                         push               0x00ddcd24                                    // 0x00788b44    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b49    e8c21d0100
                         add                esp, 0x40                                     // 0x00788b4e    83c440
                         push               0x0                                           // 0x00788b51    6a00
                         push               0x00000494                                    // 0x00788b53    6894040000
                         push               0x00ddcd24                                    // 0x00788b58    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b5d    e8ae1d0100
                         push               0x0                                           // 0x00788b62    6a00
                         push               0x00000495                                    // 0x00788b64    6895040000
                         push               0x00ddcd24                                    // 0x00788b69    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b6e    e89d1d0100
                         push               0x0                                           // 0x00788b73    6a00
                         push               0x00000496                                    // 0x00788b75    6896040000
                         push               0x00ddcd24                                    // 0x00788b7a    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b7f    e88c1d0100
                         push               0x0                                           // 0x00788b84    6a00
                         push               0x00000497                                    // 0x00788b86    6897040000
                         push               0x00ddcd24                                    // 0x00788b8b    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788b90    e87b1d0100
                         push               0x0                                           // 0x00788b95    6a00
                         push               0x00000498                                    // 0x00788b97    6898040000
                         push               0x00ddcd24                                    // 0x00788b9c    6824cddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ba1    e86a1d0100
                         push               0x00ddcd24                                    // 0x00788ba6    6824cddd00
                         call               _jmp_addr_0x0079a620                          // 0x00788bab    e8701a0100
                         {disp8} mov        eax, dword ptr [esp + 0x44]                   // 0x00788bb0    8b442444
                         add                esp, 0x40                                     // 0x00788bb4    83c440
                         test               eax, eax                                      // 0x00788bb7    85c0
                         {disp8} je         _jmp_addr_0x00788bc3                          // 0x00788bb9    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41affc]        // 0x00788bbb    a1fc0fde00
                         push               eax                                           // 0x00788bc0    50
                         {disp8} jmp        _jmp_addr_0x00788bc5                          // 0x00788bc1    eb02
_jmp_addr_0x00788bc3:    push               0x0                                           // 0x00788bc3    6a00
_jmp_addr_0x00788bc5:    {disp32} mov       ecx, dword ptr [data_bytes + 0x41afb4]        // 0x00788bc5    8b0db40fde00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x00788bcb    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afc8]        // 0x00788bd1    a1c80fde00
                         push               ecx                                           // 0x00788bd6    51
                         push               0x00ddcd24                                    // 0x00788bd7    6824cddd00
                         push               edx                                           // 0x00788bdc    52
                         push               eax                                           // 0x00788bdd    50
                         call               _jmp_addr_0x007991c0                          // 0x00788bde    e8dd050100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afcc]        // 0x00788be3    8b0dcc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x416d20], eax        // 0x00788be9    a320cddd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00788bee    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x00788bf1    8b4110
                         and                eax, 0x3f                                     // 0x00788bf4    83e03f
                         add                esp, 0x14                                     // 0x00788bf7    83c414
                         cmp                eax, 0x08                                     // 0x00788bfa    83f808
                         {disp8} je         _jmp_addr_0x00788c04                          // 0x00788bfd    7405
                         cmp                eax, 0x04                                     // 0x00788bff    83f804
                         {disp8} jne        _jmp_addr_0x00788c0e                          // 0x00788c02    750a
_jmp_addr_0x00788c04:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00788c04    c7813801000001000000
_jmp_addr_0x00788c0e:    ret                                                              // 0x00788c0e    c3
                         nop                                                              // 0x00788c0f    90
_jmp_addr_0x00788c10:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00788c10    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00788c16    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00788c18    8a81595a2000
                         push               edi                                           // 0x00788c1e    57
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00788c1f    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00788c22    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00788c25    8d0450
                         shl                eax, 5                                        // 0x00788c28    c1e005
                         {disp32} mov       edi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00788c2b    8bbc08640a0000
                         test               edi, edi                                      // 0x00788c32    85ff
                         {disp32} je        _jmp_addr_0x00788d16                          // 0x00788c34    0f84dc000000
                         push               esi                                           // 0x00788c3a    56
                         push               0x00dd8d20                                    // 0x00788c3b    68208ddd00
                         call               _jmp_addr_0x0079a600                          // 0x00788c40    e8bb190100
                         push               0x0                                           // 0x00788c45    6a00
                         push               0x0000049d                                    // 0x00788c47    689d040000
                         push               0x00dd8d20                                    // 0x00788c4c    68208ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788c51    e8ba1c0100
                         push               0x00dd8d20                                    // 0x00788c56    68208ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788c5b    e8e0190100
                         add                esp, 0x14                                     // 0x00788c60    83c414
                         mov                esi, 0x00000001                               // 0x00788c63    be01000000
_jmp_addr_0x00788c68:    {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00788c68    8b8764010000
                         push               esi                                           // 0x00788c6e    56
                         push               0x0                                           // 0x00788c6f    6a00
                         {disp32} lea       ecx, dword ptr [eax + 0x0001a9fc]             // 0x00788c71    8d88fca90100
                         call               _jmp_addr_0x004e2890                          // 0x00788c77    e8149cd5ff
                         test               eax, eax                                      // 0x00788c7c    85c0
                         {disp32} lea       eax, dword ptr [esi + 0x0000036c]             // 0x00788c7e    8d866c030000
                         {disp8} jne        _jmp_addr_0x00788c8c                          // 0x00788c84    7506
                         {disp32} lea       eax, dword ptr [esi + 0x00000378]             // 0x00788c86    8d8678030000
_jmp_addr_0x00788c8c:    push               0x0                                           // 0x00788c8c    6a00
                         push               eax                                           // 0x00788c8e    50
                         push               0x00dd8d20                                    // 0x00788c8f    68208ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788c94    e8771c0100
                         push               0x00dd8d20                                    // 0x00788c99    68208ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788c9e    e89d190100
                         add                esp, 0x10                                     // 0x00788ca3    83c410
                         inc                esi                                           // 0x00788ca6    46
                         cmp                esi, 0x06                                     // 0x00788ca7    83fe06
                         .byte              0x72, 0xbc// {disp8} jb _jmp_addr_0x00788c68  // 0x00788caa    72bc
                         push               0x00dd8d20                                    // 0x00788cac    68208ddd00
                         call               _jmp_addr_0x0079a620                          // 0x00788cb1    e86a190100
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00788cb6    8b442410
                         add                esp, 0x04                                     // 0x00788cba    83c404
                         test               eax, eax                                      // 0x00788cbd    85c0
                         pop                esi                                           // 0x00788cbf    5e
                         {disp8} je         _jmp_addr_0x00788ccb                          // 0x00788cc0    7409
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41aff0]        // 0x00788cc2    8b0df00fde00
                         push               ecx                                           // 0x00788cc8    51
                         {disp8} jmp        _jmp_addr_0x00788ccd                          // 0x00788cc9    eb02
_jmp_addr_0x00788ccb:    push               0x0                                           // 0x00788ccb    6a00
_jmp_addr_0x00788ccd:    {disp32} mov       edx, dword ptr [data_bytes + 0x41afb8]        // 0x00788ccd    8b15b80fde00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x470138]        // 0x00788cd3    a13861e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afd0]        // 0x00788cd8    8b0dd00fde00
                         push               edx                                           // 0x00788cde    52
                         push               0x00dd8d20                                    // 0x00788cdf    68208ddd00
                         push               eax                                           // 0x00788ce4    50
                         push               ecx                                           // 0x00788ce5    51
                         call               _jmp_addr_0x007991c0                          // 0x00788ce6    e8d5040100
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afd4]        // 0x00788ceb    8b15d40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x412d1c], eax        // 0x00788cf1    a31c8ddd00
                         {disp8} mov        ecx, dword ptr [edx + 0x08]                   // 0x00788cf6    8b4a08
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x00788cf9    8b4110
                         and                eax, 0x3f                                     // 0x00788cfc    83e03f
                         add                esp, 0x14                                     // 0x00788cff    83c414
                         cmp                eax, 0x08                                     // 0x00788d02    83f808
                         {disp8} je         _jmp_addr_0x00788d0c                          // 0x00788d05    7405
                         cmp                eax, 0x04                                     // 0x00788d07    83f804
                         {disp8} jne        _jmp_addr_0x00788d16                          // 0x00788d0a    750a
_jmp_addr_0x00788d0c:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00788d0c    c7813801000001000000
_jmp_addr_0x00788d16:    pop                edi                                           // 0x00788d16    5f
                         ret                                                              // 0x00788d17    c3
                         nop                                                              // 0x00788d18    90
                         nop                                                              // 0x00788d19    90
                         nop                                                              // 0x00788d1a    90
                         nop                                                              // 0x00788d1b    90
                         nop                                                              // 0x00788d1c    90
                         nop                                                              // 0x00788d1d    90
                         nop                                                              // 0x00788d1e    90
                         nop                                                              // 0x00788d1f    90
_jmp_addr_0x00788d20:    {disp32} mov       ecx, dword ptr [_game]                        // 0x00788d20    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00788d26    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00788d28    8a81595a2000
                         sub                esp, 0x08                                     // 0x00788d2e    83ec08
                         push               edi                                           // 0x00788d31    57
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00788d32    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00788d35    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00788d38    8d0450
                         shl                eax, 5                                        // 0x00788d3b    c1e005
                         {disp32} mov       edi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00788d3e    8bbc08640a0000
                         test               edi, edi                                      // 0x00788d45    85ff
                         {disp32} je        _jmp_addr_0x00789060                          // 0x00788d47    0f8413030000
                         push               0x00dd4d1c                                    // 0x00788d4d    681c4ddd00
                         call               _jmp_addr_0x0079a600                          // 0x00788d52    e8a9180100
                         push               0x0                                           // 0x00788d57    6a00
                         push               0x0000049f                                    // 0x00788d59    689f040000
                         push               0x00dd4d1c                                    // 0x00788d5e    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788d63    e8a81b0100
                         push               0x00dd4d1c                                    // 0x00788d68    681c4ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788d6d    e8ce180100
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788d72    8b8f64010000
                         add                esp, 0x14                                     // 0x00788d78    83c414
                         push               0x4                                           // 0x00788d7b    6a04
                         add                ecx, 0x8                                      // 0x00788d7d    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788d80    e81b40d5ff
                         test               eax, eax                                      // 0x00788d85    85c0
                         {disp8} je         _jmp_addr_0x00788d9d                          // 0x00788d87    7414
                         push               0x0                                           // 0x00788d89    6a00
                         push               0x000004a3                                    // 0x00788d8b    68a3040000
                         push               0x00dd4d1c                                    // 0x00788d90    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788d95    e8761b0100
                         add                esp, 0x0c                                     // 0x00788d9a    83c40c
_jmp_addr_0x00788d9d:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788d9d    8b8f64010000
                         push               0x8                                           // 0x00788da3    6a08
                         add                ecx, 0x8                                      // 0x00788da5    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788da8    e8f33fd5ff
                         test               eax, eax                                      // 0x00788dad    85c0
                         {disp8} je         _jmp_addr_0x00788dc5                          // 0x00788daf    7414
                         push               0x0                                           // 0x00788db1    6a00
                         push               0x000004a4                                    // 0x00788db3    68a4040000
                         push               0x00dd4d1c                                    // 0x00788db8    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788dbd    e84e1b0100
                         add                esp, 0x0c                                     // 0x00788dc2    83c40c
_jmp_addr_0x00788dc5:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788dc5    8b8f64010000
                         push               0x2                                           // 0x00788dcb    6a02
                         add                ecx, 0x8                                      // 0x00788dcd    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788dd0    e8cb3fd5ff
                         test               eax, eax                                      // 0x00788dd5    85c0
                         {disp8} je         _jmp_addr_0x00788e08                          // 0x00788dd7    742f
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00788dd9    8b8764010000
                         {disp32} fld       dword ptr [eax + 0x00000158]                  // 0x00788ddf    d98058010000
                         {disp32} fld       dword ptr [eax + 0x00000154]                  // 0x00788de5    d98054010000
                         fcompp                                                           // 0x00788deb    ded9
                         fnstsw             ax                                            // 0x00788ded    dfe0
                         test               ah, 0x01                                      // 0x00788def    f6c401
                         {disp8} je         _jmp_addr_0x00788e08                          // 0x00788df2    7414
                         push               0x0                                           // 0x00788df4    6a00
                         push               0x000004a5                                    // 0x00788df6    68a5040000
                         push               0x00dd4d1c                                    // 0x00788dfb    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788e00    e80b1b0100
                         add                esp, 0x0c                                     // 0x00788e05    83c40c
_jmp_addr_0x00788e08:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788e08    8b8f64010000
                         push               0x1                                           // 0x00788e0e    6a01
                         add                ecx, 0x8                                      // 0x00788e10    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788e13    e8883fd5ff
                         test               eax, eax                                      // 0x00788e18    85c0
                         {disp8} je         _jmp_addr_0x00788e4b                          // 0x00788e1a    742f
                         {disp32} mov       eax, dword ptr [edi + 0x00000164]             // 0x00788e1c    8b8764010000
                         {disp32} fld       dword ptr [eax + 0x00000154]                  // 0x00788e22    d98054010000
                         {disp32} fld       dword ptr [eax + 0x00000158]                  // 0x00788e28    d98058010000
                         fcompp                                                           // 0x00788e2e    ded9
                         fnstsw             ax                                            // 0x00788e30    dfe0
                         test               ah, 0x01                                      // 0x00788e32    f6c401
                         {disp8} je         _jmp_addr_0x00788e4b                          // 0x00788e35    7414
                         push               0x0                                           // 0x00788e37    6a00
                         push               0x000004a6                                    // 0x00788e39    68a6040000
                         push               0x00dd4d1c                                    // 0x00788e3e    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788e43    e8c81a0100
                         add                esp, 0x0c                                     // 0x00788e48    83c40c
_jmp_addr_0x00788e4b:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788e4b    8b8f64010000
                         push               0x5                                           // 0x00788e51    6a05
                         add                ecx, 0x8                                      // 0x00788e53    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788e56    e8453fd5ff
                         test               eax, eax                                      // 0x00788e5b    85c0
                         {disp8} je         _jmp_addr_0x00788e73                          // 0x00788e5d    7414
                         push               0x0                                           // 0x00788e5f    6a00
                         push               0x000004a7                                    // 0x00788e61    68a7040000
                         push               0x00dd4d1c                                    // 0x00788e66    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788e6b    e8a01a0100
                         add                esp, 0x0c                                     // 0x00788e70    83c40c
_jmp_addr_0x00788e73:    {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788e73    8b8f64010000
                         push               0x3                                           // 0x00788e79    6a03
                         add                ecx, 0x8                                      // 0x00788e7b    83c108
                         call               _jmp_addr_0x004dcda0                          // 0x00788e7e    e81d3fd5ff
                         test               eax, eax                                      // 0x00788e83    85c0
                         {disp8} je         _jmp_addr_0x00788e9b                          // 0x00788e85    7414
                         push               0x0                                           // 0x00788e87    6a00
                         push               0x000004a8                                    // 0x00788e89    68a8040000
                         push               0x00dd4d1c                                    // 0x00788e8e    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788e93    e8781a0100
                         add                esp, 0x0c                                     // 0x00788e98    83c40c
_jmp_addr_0x00788e9b:    push               0x00dd4d1c                                    // 0x00788e9b    681c4ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788ea0    e89b170100
                         {disp32} mov       ecx, dword ptr [edi + 0x00000160]             // 0x00788ea5    8b8f60010000
                         {disp8} mov        eax, dword ptr [ecx + 0x70]                   // 0x00788eab    8b4170
                         add                esp, 0x04                                     // 0x00788eae    83c404
                         test               eax, eax                                      // 0x00788eb1    85c0
                         {disp8} je         _jmp_addr_0x00788f02                          // 0x00788eb3    744d
                         {disp32} mov       edx, dword ptr [edi + 0x00000164]             // 0x00788eb5    8b9764010000
                         {disp32} mov       ecx, dword ptr [edx + 0x00018c50]             // 0x00788ebb    8b8a508c0100
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x00788ec1    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00788ec5    c744240800000000
                         {disp8} fild       qword ptr [esp + 0x04]                        // 0x00788ecd    df6c2404
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x00788ed1    89442404
                         {disp8} mov        dword ptr [esp + 0x08], 0x00000000            // 0x00788ed5    c744240800000000
                         {disp8} fidiv      dword ptr [esp + 0x04]                        // 0x00788edd    da742404
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00788ee1    d81d98a38a00
                         fnstsw             ax                                            // 0x00788ee7    dfe0
                         test               ah, 0x41                                      // 0x00788ee9    f6c441
                         {disp8} jne        _jmp_addr_0x00788f02                          // 0x00788eec    7514
                         push               0x0                                           // 0x00788eee    6a00
                         push               0x000004a9                                    // 0x00788ef0    68a9040000
                         push               0x00dd4d1c                                    // 0x00788ef5    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788efa    e8111a0100
                         add                esp, 0x0c                                     // 0x00788eff    83c40c
_jmp_addr_0x00788f02:    push               0x0                                           // 0x00788f02    6a00
                         push               0x000004aa                                    // 0x00788f04    68aa040000
                         push               0x00dd4d1c                                    // 0x00788f09    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788f0e    e8fd190100
                         {disp32} mov       ecx, dword ptr [edi + 0x00000164]             // 0x00788f13    8b8f64010000
                         add                esp, 0x0c                                     // 0x00788f19    83c40c
                         push               edi                                           // 0x00788f1c    57
                         add                ecx, 0x00018c80                               // 0x00788f1d    81c1808c0100
                         call               _jmp_addr_0x004c7ed0                          // 0x00788f23    e8a8efd3ff
                         cmp                eax, 0x28                                     // 0x00788f28    83f828
                         {disp8} jge        _jmp_addr_0x00788f41                          // 0x00788f2b    7d14
                         push               0x0                                           // 0x00788f2d    6a00
                         push               0x000004ab                                    // 0x00788f2f    68ab040000
                         push               0x00dd4d1c                                    // 0x00788f34    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788f39    e8d2190100
                         add                esp, 0x0c                                     // 0x00788f3e    83c40c
_jmp_addr_0x00788f41:    push               esi                                           // 0x00788f41    56
                         push               0x00dd4d1c                                    // 0x00788f42    681c4ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788f47    e8f4160100
                         {disp32} mov       edx, dword ptr [edi + 0x00000164]             // 0x00788f4c    8b9764010000
                         {disp32} mov       edi, dword ptr [edx + 0x0001a9f4]             // 0x00788f52    8bbaf4a90100
                         add                esp, 0x04                                     // 0x00788f58    83c404
                         xor.s              esi, esi                                      // 0x00788f5b    33f6
                         test               edi, edi                                      // 0x00788f5d    85ff
                         {disp8} je         _jmp_addr_0x00788fb3                          // 0x00788f5f    7452
                         push               ebx                                           // 0x00788f61    53
_jmp_addr_0x00788f62:    {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x00788f62    8b5f04
                         push               esi                                           // 0x00788f65    56
                         push               0x000004ac                                    // 0x00788f66    68ac040000
                         push               0x00dd4d1c                                    // 0x00788f6b    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788f70    e89b190100
                         push               esi                                           // 0x00788f75    56
                         push               0x000004ad                                    // 0x00788f76    68ad040000
                         push               0x00dd4d1c                                    // 0x00788f7b    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788f80    e88b190100
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x00788f85    d9430c
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00788f88    d81d98a38a00
                         add                esp, 0x18                                     // 0x00788f8e    83c418
                         fnstsw             ax                                            // 0x00788f91    dfe0
                         test               ah, 0x41                                      // 0x00788f93    f6c441
                         {disp8} jne        _jmp_addr_0x00788fab                          // 0x00788f96    7513
                         push               esi                                           // 0x00788f98    56
                         push               0x000004ae                                    // 0x00788f99    68ae040000
                         push               0x00dd4d1c                                    // 0x00788f9e    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788fa3    e868190100
                         add                esp, 0x0c                                     // 0x00788fa8    83c40c
_jmp_addr_0x00788fab:    mov                edi, dword ptr [edi]                          // 0x00788fab    8b3f
                         inc                esi                                           // 0x00788fad    46
                         test               edi, edi                                      // 0x00788fae    85ff
                         {disp8} jne        _jmp_addr_0x00788f62                          // 0x00788fb0    75b0
                         pop                ebx                                           // 0x00788fb2    5b
_jmp_addr_0x00788fb3:    push               0x00dd4d1c                                    // 0x00788fb3    681c4ddd00
                         call               _jmp_addr_0x0079a640                          // 0x00788fb8    e883160100
                         push               0x0                                           // 0x00788fbd    6a00
                         push               0x000004b0                                    // 0x00788fbf    68b0040000
                         push               0x00dd4d1c                                    // 0x00788fc4    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788fc9    e842190100
                         push               0x0                                           // 0x00788fce    6a00
                         push               0x000004b1                                    // 0x00788fd0    68b1040000
                         push               0x00dd4d1c                                    // 0x00788fd5    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788fda    e831190100
                         push               0x0                                           // 0x00788fdf    6a00
                         push               0x000004b2                                    // 0x00788fe1    68b2040000
                         push               0x00dd4d1c                                    // 0x00788fe6    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788feb    e820190100
                         push               0x0                                           // 0x00788ff0    6a00
                         push               0x000004b3                                    // 0x00788ff2    68b3040000
                         push               0x00dd4d1c                                    // 0x00788ff7    681c4ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00788ffc    e80f190100
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x00789001    8b442448
                         add                esp, 0x34                                     // 0x00789005    83c434
                         test               eax, eax                                      // 0x00789008    85c0
                         pop                esi                                           // 0x0078900a    5e
                         {disp8} je         _jmp_addr_0x00789015                          // 0x0078900b    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41aff4]        // 0x0078900d    a1f40fde00
                         push               eax                                           // 0x00789012    50
                         {disp8} jmp        _jmp_addr_0x00789017                          // 0x00789013    eb02
_jmp_addr_0x00789015:    push               0x0                                           // 0x00789015    6a00
_jmp_addr_0x00789017:    {disp32} mov       ecx, dword ptr [data_bytes + 0x41afbc]        // 0x00789017    8b0dbc0fde00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x0078901d    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afd8]        // 0x00789023    a1d80fde00
                         push               ecx                                           // 0x00789028    51
                         push               0x00dd4d1c                                    // 0x00789029    681c4ddd00
                         push               edx                                           // 0x0078902e    52
                         push               eax                                           // 0x0078902f    50
                         call               _jmp_addr_0x007991c0                          // 0x00789030    e88b010100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afdc]        // 0x00789035    8b0ddc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x40ed18], eax        // 0x0078903b    a3184ddd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00789040    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x00789043    8b4110
                         and                eax, 0x3f                                     // 0x00789046    83e03f
                         add                esp, 0x14                                     // 0x00789049    83c414
                         cmp                eax, 0x08                                     // 0x0078904c    83f808
                         {disp8} je         _jmp_addr_0x00789056                          // 0x0078904f    7405
                         cmp                eax, 0x04                                     // 0x00789051    83f804
                         {disp8} jne        _jmp_addr_0x00789060                          // 0x00789054    750a
_jmp_addr_0x00789056:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00789056    c7813801000001000000
_jmp_addr_0x00789060:    pop                edi                                           // 0x00789060    5f
                         add                esp, 0x08                                     // 0x00789061    83c408
                         ret                                                              // 0x00789064    c3
                         nop                                                              // 0x00789065    90
                         nop                                                              // 0x00789066    90
                         nop                                                              // 0x00789067    90
                         nop                                                              // 0x00789068    90
                         nop                                                              // 0x00789069    90
                         nop                                                              // 0x0078906a    90
                         nop                                                              // 0x0078906b    90
                         nop                                                              // 0x0078906c    90
                         nop                                                              // 0x0078906d    90
                         nop                                                              // 0x0078906e    90
                         nop                                                              // 0x0078906f    90
_jmp_addr_0x00789070:    sub                esp, 0x0000082c                               // 0x00789070    81ec2c080000
                         push               ebp                                           // 0x00789076    55
                         push               0x00dd0d18                                    // 0x00789077    68180ddd00
                         {disp32} mov       dword ptr [data_bytes + 0x41afe8], 0x00000000 // 0x0078907c    c705e80fde0000000000
                         call               _jmp_addr_0x0079a600                          // 0x00789086    e875150100
                         xor.s              ebp, ebp                                      // 0x0078908b    33ed
                         push               ebp                                           // 0x0078908d    55
                         push               0x0000049e                                    // 0x0078908e    689e040000
                         push               0x00dd0d18                                    // 0x00789093    68180ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00789098    e873180100
                         push               0x00dd0d18                                    // 0x0078909d    68180ddd00
                         call               _jmp_addr_0x0079a640                          // 0x007890a2    e899150100
                         xor.s              eax, eax                                      // 0x007890a7    33c0
                         or                 ecx, 0xffffffff                               // 0x007890a9    83c9ff
                         {disp32} mov       dword ptr [data_bytes + 0x41ad28], ecx        // 0x007890ac    890d280dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad38], eax        // 0x007890b2    a3380dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad2c], ecx        // 0x007890b7    890d2c0dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad3c], eax        // 0x007890bd    a33c0dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad40], eax        // 0x007890c2    a3400dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad30], ecx        // 0x007890c7    890d300dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad34], ecx        // 0x007890cd    890d340dde00
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x007890d3    8b0d5c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x41ad44], eax        // 0x007890d9    a3440dde00
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x007890de    8a81595a2000
                         add                esp, 0x14                                     // 0x007890e4    83c414
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x007890e7    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x007890ea    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x007890ed    8d0450
                         shl                eax, 5                                        // 0x007890f0    c1e005
                         cmp                dword ptr [eax + ecx * 0x1 + 0x00000a64], ebp // 0x007890f3    39ac08640a0000
                         {disp32} je        _jmp_addr_0x00789332                          // 0x007890fa    0f8432020000
                         push               ebx                                           // 0x00789100    53
                         push               esi                                           // 0x00789101    56
                         push               edi                                           // 0x00789102    57
                         mov                edi, 0x00017d3c                               // 0x00789103    bf3c7d0100
                         mov                eax, 0x00d37d14                               // 0x00789108    b8147dd300
                         sub.s              eax, edi                                      // 0x0078910d    2bc7
                         mov                esi, 0x00000001                               // 0x0078910f    be01000000
                         mov                ebx, 0x00cc6850                               // 0x00789114    bb5068cc00
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x00789119    89442414
                         {disp8} jmp        _jmp_addr_0x00789125                          // 0x0078911d    eb06
_jmp_addr_0x0078911f:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0078911f    8b0d5c19d000
_jmp_addr_0x00789125:    xor.s              eax, eax                                      // 0x00789125    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00789127    8a81595a2000
                         push               esi                                           // 0x0078912d    56
                         push               0x1                                           // 0x0078912e    6a01
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00789130    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00789133    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00789136    8d0450
                         shl                eax, 5                                        // 0x00789139    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0078913c    8b8c08640a0000
                         {disp32} mov       eax, dword ptr [ecx + 0x00000164]             // 0x00789143    8b8164010000
                         {disp32} lea       ecx, dword ptr [eax + 0x0001a9fc]             // 0x00789149    8d88fca90100
                         call               _jmp_addr_0x004e2890                          // 0x0078914f    e83c97d5ff
                         test               eax, eax                                      // 0x00789154    85c0
                         {disp32} je        _jmp_addr_0x00789319                          // 0x00789156    0f84bd010000
                         push               esi                                           // 0x0078915c    56
                         call               _jmp_addr_0x0047c5f0                          // 0x0078915d    e88e34cfff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00789162    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x00789168    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0078916a    8a81595a2000
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x00789170    896c2420
                         add                esp, 0x04                                     // 0x00789174    83c404
                         push               esi                                           // 0x00789177    56
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00789178    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0078917b    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0078917e    8d0450
                         shl                eax, 5                                        // 0x00789181    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00789184    8b8c08640a0000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000164]             // 0x0078918b    8b9164010000
                         mov                eax, dword ptr [edx + edi * 0x1]              // 0x00789191    8b043a
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x00789194    8944241c
                         {disp8} fild       qword ptr [esp + 0x1c]                        // 0x00789198    df6c241c
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0078919c    d95c2414
                         call               _jmp_addr_0x004f8ca0                          // 0x007891a0    e8fbfad6ff
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x007891a5    d87c2410
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x007891a9    d81d90a38a00
                         fnstsw             ax                                            // 0x007891af    dfe0
                         test               ah, 0x41                                      // 0x007891b1    f6c441
                         {disp8} jne        _jmp_addr_0x007891be                          // 0x007891b4    7508
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x007891b6    d90590a38a00
                         {disp8} jmp        _jmp_addr_0x00789202                          // 0x007891bc    eb44
_jmp_addr_0x007891be:    {disp32} mov       ecx, dword ptr [_game]                        // 0x007891be    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x007891c4    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x007891c6    8a81595a2000
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x007891cc    896c2424
                         push               esi                                           // 0x007891d0    56
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x007891d1    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x007891d4    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x007891d7    8d0450
                         shl                eax, 5                                        // 0x007891da    c1e005
                         {disp32} mov       ecx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x007891dd    8b8c08640a0000
                         {disp32} mov       edx, dword ptr [ecx + 0x00000164]             // 0x007891e4    8b9164010000
                         mov                eax, dword ptr [edx + edi * 0x1]              // 0x007891ea    8b043a
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x007891ed    89442424
                         {disp8} fild       qword ptr [esp + 0x24]                        // 0x007891f1    df6c2424
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x007891f5    d95c2414
                         call               _jmp_addr_0x004f8ca0                          // 0x007891f9    e8a2fad6ff
                         {disp8} fdivr      dword ptr [esp + 0x10]                        // 0x007891fe    d87c2410
_jmp_addr_0x00789202:    {disp32} fmul      dword ptr [rdata_bytes + 0x241c]              // 0x00789202    d80d1cb48a00
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x00789208    d9542410
                         call               _jmp_addr_0x007a1400                          // 0x0078920c    e8ef810100
                         push               eax                                           // 0x00789211    50
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x00789212    8d4c242c
                         push               0x00c27740                                    // 0x00789216    684077c200
                         push               ecx                                           // 0x0078921b    51
                         call               dword ptr [rdata_bytes + 0x360]               // 0x0078921c    ff1560938a00
                         mov                eax, dword ptr [ebx]                          // 0x00789222    8b03
                         add                esp, 0x0c                                     // 0x00789224    83c40c
                         cmp.s              eax, ebp                                      // 0x00789227    3bc5
                         {disp32} je        _jmp_addr_0x00789319                          // 0x00789229    0f84ea000000
                         push               ebp                                           // 0x0078922f    55
                         push               eax                                           // 0x00789230    50
                         push               0x00dd0d18                                    // 0x00789231    68180ddd00
                         call               _jmp_addr_0x0079a910                          // 0x00789236    e8d5160100
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0078923b    8d542434
                         push               edx                                           // 0x0078923f    52
                         push               0x00dd0d18                                    // 0x00789240    68180ddd00
                         call               _jmp_addr_0x0079a8d0                          // 0x00789245    e886160100
                         push               0x00dd0d18                                    // 0x0078924a    68180ddd00
                         call               _jmp_addr_0x0079a640                          // 0x0078924f    e8ec130100
                         {disp32} fld       dword ptr [data_bytes + 0x41afe8]             // 0x00789254    d905e80fde00
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0078925a    d8442428
                         add                esp, 0x18                                     // 0x0078925e    83c418
                         {disp32} fstp      dword ptr [data_bytes + 0x41afe8]             // 0x00789261    d91de80fde00
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x00789267    d9442410
                         {disp32} fcomp     dword ptr [data_bytes + 0x41ad44]             // 0x0078926b    d81d440dde00
                         fnstsw             ax                                            // 0x00789271    dfe0
                         test               ah, 0x41                                      // 0x00789273    f6c441
                         {disp32} jne       _jmp_addr_0x00789319                          // 0x00789276    0f859d000000
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0078927c    8b4c2414
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00789280    8b442410
                         mov                edx, dword ptr [ecx + edi * 0x1]              // 0x00789284    8b1439
                         {disp32} mov       dword ptr [data_bytes + 0x41ad44], eax        // 0x00789287    a3440dde00
                         {disp8} mov        eax, dword ptr [edx + 0x28]                   // 0x0078928c    8b4228
                         mov                ecx, 0x00000003                               // 0x0078928f    b903000000
                         {disp32} mov       dword ptr [data_bytes + 0x41ad34], eax        // 0x00789294    a3340dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afa0], ecx        // 0x00789299    890da00fde00
_jmp_addr_0x0078929f:    push               ecx                                           // 0x0078929f    51
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x007892a0    8d4c2440
                         push               0x00c27734                                    // 0x007892a4    683477c200
                         push               ecx                                           // 0x007892a9    51
                         call               _sprintf                                      // 0x007892aa    e823c50300
                         add                esp, 0x0c                                     // 0x007892af    83c40c
                         {disp8} lea        edx, dword ptr [esp + 0x3c]                   // 0x007892b2    8d54243c
                         push               edx                                           // 0x007892b6    52
                         call               dword ptr [__imp__OutputDebugStringA@4]       // 0x007892b7    ff1550918a00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afa0]        // 0x007892bd    8b0da00fde00
                         {disp32} fld       dword ptr [ecx * 0x4 + 0x00de0d38]            // 0x007892c3    d9048d380dde00
                         {disp32} fcomp     dword ptr [ecx * 0x4 + 0x00de0d34]            // 0x007892ca    d81c8d340dde00
                         fnstsw             ax                                            // 0x007892d1    dfe0
                         test               ah, 0x41                                      // 0x007892d3    f6c441
                         {disp8} jne        _jmp_addr_0x00789310                          // 0x007892d6    7538
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00de0d34]       // 0x007892d8    8b148d340dde00
                         {disp32} fld       dword ptr [ecx * 0x4 + 0x00de0d38]            // 0x007892df    d9048d380dde00
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00de0d28]       // 0x007892e6    8b048d280dde00
                         {disp32} mov       dword ptr [ecx * 0x4 + 0x00de0d38], edx       // 0x007892ed    89148d380dde00
                         {disp32} fstp      dword ptr [ecx * 0x4 + 0x00de0d34]            // 0x007892f4    d91c8d340dde00
                         {disp32} mov       edx, dword ptr [ecx * 0x4 + 0x00de0d24]       // 0x007892fb    8b148d240dde00
                         {disp32} mov       dword ptr [ecx * 0x4 + 0x00de0d28], edx       // 0x00789302    89148d280dde00
                         {disp32} mov       dword ptr [ecx * 0x4 + 0x00de0d24], eax       // 0x00789309    89048d240dde00
_jmp_addr_0x00789310:    dec                ecx                                           // 0x00789310    49
                         {disp32} mov       dword ptr [data_bytes + 0x41afa0], ecx        // 0x00789311    890da00fde00
                         {disp8} jne        _jmp_addr_0x0078929f                          // 0x00789317    7586
_jmp_addr_0x00789319:    add                ebx, 0x0000011c                               // 0x00789319    81c31c010000
                         inc                esi                                           // 0x0078931f    46
                         add                edi, 0x04                                     // 0x00789320    83c704
                         cmp                ebx, 0x00cc95cc                               // 0x00789323    81fbcc95cc00
                         {disp32} jl        _jmp_addr_0x0078911f                          // 0x00789329    0f8cf0fdffff
                         pop                edi                                           // 0x0078932f    5f
                         pop                esi                                           // 0x00789330    5e
                         pop                ebx                                           // 0x00789331    5b
_jmp_addr_0x00789332:    push               0x00dd0d18                                    // 0x00789332    68180ddd00
                         call               _jmp_addr_0x0079a620                          // 0x00789337    e8e4120100
                         {disp32} mov       eax, dword ptr [esp + 0x00000838]             // 0x0078933c    8b842438080000
                         add                esp, 0x04                                     // 0x00789343    83c404
                         cmp.s              eax, ebp                                      // 0x00789346    3bc5
                         {disp8} je         _jmp_addr_0x00789352                          // 0x00789348    7408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41aff8]        // 0x0078934a    a1f80fde00
                         push               eax                                           // 0x0078934f    50
                         {disp8} jmp        _jmp_addr_0x00789353                          // 0x00789350    eb01
_jmp_addr_0x00789352:    push               ebp                                           // 0x00789352    55
_jmp_addr_0x00789353:    {disp32} mov       ecx, dword ptr [data_bytes + 0x41afc0]        // 0x00789353    8b0dc00fde00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x470138]        // 0x00789359    8b153861e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afe0]        // 0x0078935f    a1e00fde00
                         push               ecx                                           // 0x00789364    51
                         push               0x00dd0d18                                    // 0x00789365    68180ddd00
                         push               edx                                           // 0x0078936a    52
                         push               eax                                           // 0x0078936b    50
                         call               _jmp_addr_0x007991c0                          // 0x0078936c    e84ffe0000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afe4]        // 0x00789371    8b0de40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x40ad14], eax        // 0x00789377    a3140ddd00
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078937c    8b4908
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0078937f    8b4110
                         add                esp, 0x14                                     // 0x00789382    83c414
                         and                eax, 0x3f                                     // 0x00789385    83e03f
                         cmp                eax, 0x08                                     // 0x00789388    83f808
                         pop                ebp                                           // 0x0078938b    5d
                         {disp8} je         _jmp_addr_0x00789393                          // 0x0078938c    7405
                         cmp                eax, 0x04                                     // 0x0078938e    83f804
                         {disp8} jne        _jmp_addr_0x0078939d                          // 0x00789391    750a
_jmp_addr_0x00789393:    {disp32} mov       dword ptr [ecx + 0x00000138], 0x00000001      // 0x00789393    c7813801000001000000
_jmp_addr_0x0078939d:    {disp32} fld       dword ptr [data_bytes + 0x41afe8]             // 0x0078939d    d905e80fde00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x26334]             // 0x007893a3    d80d34f38c00
                         {disp32} fstp      dword ptr [data_bytes + 0x41afe8]             // 0x007893a9    d91de80fde00
                         add                esp, 0x0000082c                               // 0x007893af    81c42c080000
                         ret                                                              // 0x007893b5    c3
                         nop                                                              // 0x007893b6    90
                         nop                                                              // 0x007893b7    90
                         nop                                                              // 0x007893b8    90
                         nop                                                              // 0x007893b9    90
                         nop                                                              // 0x007893ba    90
                         nop                                                              // 0x007893bb    90
                         nop                                                              // 0x007893bc    90
                         nop                                                              // 0x007893bd    90
                         nop                                                              // 0x007893be    90
                         nop                                                              // 0x007893bf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007893c0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007893c4    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007893c7    8b155c19d000
                         push               0x0                                           // 0x007893cd    6a00
                         push               0x0                                           // 0x007893cf    6a00
                         push               0xc1f00000                                    // 0x007893d1    680000f0c1
                         push               ecx                                           // 0x007893d6    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x007893d7    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x007893dd    e8feb50000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007893e2    a15c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x41b000], 0x00000001 // 0x007893e7    c7050010de0001000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x007893f1    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x007893f7    8b4144
                         test               eax, eax                                      // 0x007893fa    85c0
                         {disp8} jne        _jmp_addr_0x0078940b                          // 0x007893fc    750d
                         push               0x00c2774c                                    // 0x007893fe    684c77c200
                         call               _jmp_addr_0x00794a80                          // 0x00789403    e878b60000
                         add                esp, 0x04                                     // 0x00789408    83c404
_jmp_addr_0x0078940b:    mov                eax, 0x00000001                               // 0x0078940b    b801000000
                         ret                                                              // 0x00789410    c3
                         nop                                                              // 0x00789411    90
                         nop                                                              // 0x00789412    90
                         nop                                                              // 0x00789413    90
                         nop                                                              // 0x00789414    90
                         nop                                                              // 0x00789415    90
                         nop                                                              // 0x00789416    90
                         nop                                                              // 0x00789417    90
                         nop                                                              // 0x00789418    90
                         nop                                                              // 0x00789419    90
                         nop                                                              // 0x0078941a    90
                         nop                                                              // 0x0078941b    90
                         nop                                                              // 0x0078941c    90
                         nop                                                              // 0x0078941d    90
                         nop                                                              // 0x0078941e    90
                         nop                                                              // 0x0078941f    90
                         push               ebx                                           // 0x00789420    53
                         push               ebp                                           // 0x00789421    55
                         push               esi                                           // 0x00789422    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x00789423    8b742410
                         xor.s              ebx, ebx                                      // 0x00789427    33db
                         mov                eax, 0x3f800000                               // 0x00789429    b80000803f
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0078942e    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00789431    894614
                         mov                dword ptr [esi], 0x00000001                   // 0x00789434    c70601000000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x0078943a    895e10
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x0078943d    895e0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00789440    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x00789445    8b88b4590000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x0078944b    8b4620
                         cmp.s              eax, ebx                                      // 0x0078944e    3bc3
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x00789450    8b511c
                         {disp32} mov       ebp, dword ptr [edx + 0x000000c4]             // 0x00789453    8baac4000000
                         push               edi                                           // 0x00789459    57
                         {disp8} je         _jmp_addr_0x007894d4                          // 0x0078945a    7478
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afb4]        // 0x0078945c    8b0db40fde00
                         mov.s              edi, ecx                                      // 0x00789462    8bf9
                         sub.s              ecx, eax                                      // 0x00789464    2bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x416d20]        // 0x00789466    a120cddd00
                         push               ecx                                           // 0x0078946b    51
                         push               eax                                           // 0x0078946c    50
                         {disp32} mov       dword ptr [data_bytes + 0x41afb4], ecx        // 0x0078946d    890db40fde00
                         call               _jmp_addr_0x0079a6a0                          // 0x00789473    e828120100
                         {disp32} mov       dword ptr [data_bytes + 0x41afb4], eax        // 0x00789478    a3b40fde00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b004]        // 0x0078947d    a10410de00
                         add                esp, 0x08                                     // 0x00789482    83c408
                         cmp.s              eax, ebx                                      // 0x00789485    3bc3
                         {disp8} jne        _jmp_addr_0x00789492                          // 0x00789487    7509
                         push               ebx                                           // 0x00789489    53
                         call               _jmp_addr_0x00788a10                          // 0x0078948a    e881f5ffff
                         add                esp, 0x04                                     // 0x0078948f    83c404
_jmp_addr_0x00789492:    cmp                dword ptr [data_bytes + 0x41afb4], edi        // 0x00789492    393db40fde00
                         {disp8} je         _jmp_addr_0x007894d4                          // 0x00789498    743a
                         cmp                dword ptr [data_bytes + 0x41afa4], ebx        // 0x0078949a    391da40fde00
                         {disp8} jne        _jmp_addr_0x007894da                          // 0x007894a0    7538
                         push               0x1                                           // 0x007894a2    6a01
                         push               ebx                                           // 0x007894a4    53
                         push               ebx                                           // 0x007894a5    53
                         push               ebx                                           // 0x007894a6    53
                         push               0x2                                           // 0x007894a7    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x007894a9    ff15c4918a00
                         xor.s              edx, edx                                      // 0x007894af    33d2
                         mov                ecx, 0x00000006                               // 0x007894b1    b906000000
                         div                ecx                                           // 0x007894b6    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x007894b8    8b0d203bcd00
                         add                edx, 0x36                                     // 0x007894be    83c236
                         push               edx                                           // 0x007894c1    52
                         push               ebx                                           // 0x007894c2    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x007894c3    e89808caff
                         {disp32} mov       dword ptr [data_bytes + 0x41afa4], 0x00000001 // 0x007894c8    c705a40fde0001000000
                         {disp8} jmp        _jmp_addr_0x007894da                          // 0x007894d2    eb06
_jmp_addr_0x007894d4:    {disp32} mov       dword ptr [data_bytes + 0x41afa4], ebx        // 0x007894d4    891da40fde00
_jmp_addr_0x007894da:    cmp                dword ptr [esi + 0x08], ebx                   // 0x007894da    395e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afcc]        // 0x007894dd    8b15cc0fde00
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x007894e3    89561c
                         mov                edi, 0x00000001                               // 0x007894e6    bf01000000
                         {disp8} je         _jmp_addr_0x00789503                          // 0x007894eb    7416
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], edi        // 0x007894ed    893dc0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000486 // 0x007894f3    c705c4a1c20086040000
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], edi        // 0x007894fd    893dec0fde00
_jmp_addr_0x00789503:    {disp32} fld       dword ptr [ebp + 0x00000450]                  // 0x00789503    d98550040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x00789509    dc1d80b68a00
                         fnstsw             ax                                            // 0x0078950f    dfe0
                         test               ah, 0x40                                      // 0x00789511    f6c440
                         {disp8} je         _jmp_addr_0x0078951a                          // 0x00789514    7404
                         mov.s              eax, edi                                      // 0x00789516    8bc7
                         {disp8} jmp        _jmp_addr_0x0078951c                          // 0x00789518    eb02
_jmp_addr_0x0078951a:    xor.s              eax, eax                                      // 0x0078951a    33c0
_jmp_addr_0x0078951c:    {disp32} mov       ebp, dword ptr [data_bytes + 0x41b000]        // 0x0078951c    8b2d0010de00
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00789522    8b5608
                         xor.s              ecx, ecx                                      // 0x00789525    33c9
                         cmp.s              ebp, edi                                      // 0x00789527    3bef
                         sete               cl                                            // 0x00789529    0f94c1
                         push               ecx                                           // 0x0078952c    51
                         push               eax                                           // 0x0078952d    50
                         push               edx                                           // 0x0078952e    52
                         call               _jmp_addr_0x00789bb0                          // 0x0078952f    e87c060000
                         add                esp, 0x0c                                     // 0x00789534    83c40c
                         mov.s              eax, edi                                      // 0x00789537    8bc7
                         pop                edi                                           // 0x00789539    5f
                         pop                esi                                           // 0x0078953a    5e
                         pop                ebp                                           // 0x0078953b    5d
                         pop                ebx                                           // 0x0078953c    5b
                         ret                                                              // 0x0078953d    c3
                         nop                                                              // 0x0078953e    90
                         nop                                                              // 0x0078953f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00789540    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00789544    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00789547    8b155c19d000
                         push               0x0                                           // 0x0078954d    6a00
                         push               0x0                                           // 0x0078954f    6a00
                         push               0xc1f00000                                    // 0x00789551    680000f0c1
                         push               ecx                                           // 0x00789556    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x00789557    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078955d    e87eb40000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00789562    a15c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x41b000], 0x00000003 // 0x00789567    c7050010de0003000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x00789571    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00789577    8b4144
                         test               eax, eax                                      // 0x0078957a    85c0
                         {disp8} jne        _jmp_addr_0x0078958b                          // 0x0078957c    750d
                         push               0x00c27770                                    // 0x0078957e    687077c200
                         call               _jmp_addr_0x00794a80                          // 0x00789583    e8f8b40000
                         add                esp, 0x04                                     // 0x00789588    83c404
_jmp_addr_0x0078958b:    mov                eax, 0x00000001                               // 0x0078958b    b801000000
                         ret                                                              // 0x00789590    c3
                         nop                                                              // 0x00789591    90
                         nop                                                              // 0x00789592    90
                         nop                                                              // 0x00789593    90
                         nop                                                              // 0x00789594    90
                         nop                                                              // 0x00789595    90
                         nop                                                              // 0x00789596    90
                         nop                                                              // 0x00789597    90
                         nop                                                              // 0x00789598    90
                         nop                                                              // 0x00789599    90
                         nop                                                              // 0x0078959a    90
                         nop                                                              // 0x0078959b    90
                         nop                                                              // 0x0078959c    90
                         nop                                                              // 0x0078959d    90
                         nop                                                              // 0x0078959e    90
                         nop                                                              // 0x0078959f    90
                         push               ebx                                           // 0x007895a0    53
                         push               ebp                                           // 0x007895a1    55
                         xor.s              ebx, ebx                                      // 0x007895a2    33db
                         mov                eax, 0x3f800000                               // 0x007895a4    b80000803f
                         push               esi                                           // 0x007895a9    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x007895aa    8b742410
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x007895ae    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x007895b1    894614
                         mov                dword ptr [esi], 0x00000001                   // 0x007895b4    c70601000000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x007895ba    895e10
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x007895bd    895e0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007895c0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x007895c5    8b88b4590000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x007895cb    8b4620
                         cmp.s              eax, ebx                                      // 0x007895ce    3bc3
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x007895d0    8b511c
                         {disp32} mov       ebp, dword ptr [edx + 0x000000c4]             // 0x007895d3    8baac4000000
                         {disp8} je         _jmp_addr_0x00789655                          // 0x007895d9    747a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afb8]        // 0x007895db    8b0db80fde00
                         push               edi                                           // 0x007895e1    57
                         mov.s              edi, ecx                                      // 0x007895e2    8bf9
                         sub.s              ecx, eax                                      // 0x007895e4    2bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x412d1c]        // 0x007895e6    a11c8ddd00
                         push               ecx                                           // 0x007895eb    51
                         push               eax                                           // 0x007895ec    50
                         {disp32} mov       dword ptr [data_bytes + 0x41afb8], ecx        // 0x007895ed    890db80fde00
                         call               _jmp_addr_0x0079a6a0                          // 0x007895f3    e8a8100100
                         {disp32} mov       dword ptr [data_bytes + 0x41afb8], eax        // 0x007895f8    a3b80fde00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b004]        // 0x007895fd    a10410de00
                         add                esp, 0x08                                     // 0x00789602    83c408
                         cmp.s              eax, ebx                                      // 0x00789605    3bc3
                         {disp8} jne        _jmp_addr_0x00789612                          // 0x00789607    7509
                         push               ebx                                           // 0x00789609    53
                         call               _jmp_addr_0x00788c10                          // 0x0078960a    e801f6ffff
                         add                esp, 0x04                                     // 0x0078960f    83c404
_jmp_addr_0x00789612:    cmp                dword ptr [data_bytes + 0x41afb8], edi        // 0x00789612    393db80fde00
                         pop                edi                                           // 0x00789618    5f
                         {disp8} je         _jmp_addr_0x00789655                          // 0x00789619    743a
                         cmp                dword ptr [data_bytes + 0x41afa8], ebx        // 0x0078961b    391da80fde00
                         {disp8} jne        _jmp_addr_0x0078965b                          // 0x00789621    7538
                         push               0x1                                           // 0x00789623    6a01
                         push               ebx                                           // 0x00789625    53
                         push               ebx                                           // 0x00789626    53
                         push               ebx                                           // 0x00789627    53
                         push               0x2                                           // 0x00789628    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078962a    ff15c4918a00
                         xor.s              edx, edx                                      // 0x00789630    33d2
                         mov                ecx, 0x00000006                               // 0x00789632    b906000000
                         div                ecx                                           // 0x00789637    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00789639    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078963f    83c236
                         push               edx                                           // 0x00789642    52
                         push               ebx                                           // 0x00789643    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x00789644    e81707caff
                         {disp32} mov       dword ptr [data_bytes + 0x41afa8], 0x00000001 // 0x00789649    c705a80fde0001000000
                         {disp8} jmp        _jmp_addr_0x0078965b                          // 0x00789653    eb06
_jmp_addr_0x00789655:    {disp32} mov       dword ptr [data_bytes + 0x41afa8], ebx        // 0x00789655    891da80fde00
_jmp_addr_0x0078965b:    cmp                dword ptr [esi + 0x08], ebx                   // 0x0078965b    395e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afd4]        // 0x0078965e    8b15d40fde00
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x00789664    89561c
                         {disp8} je         _jmp_addr_0x00789682                          // 0x00789667    7419
                         mov                eax, 0x00000001                               // 0x00789669    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0078966e    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x0000049d // 0x00789673    c705c4a1c2009d040000
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], eax        // 0x0078967d    a3ec0fde00
_jmp_addr_0x00789682:    {disp32} fld       dword ptr [ebp + 0x00000450]                  // 0x00789682    d98550040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x00789688    dc1d80b68a00
                         fnstsw             ax                                            // 0x0078968e    dfe0
                         test               ah, 0x40                                      // 0x00789690    f6c440
                         {disp8} je         _jmp_addr_0x0078969c                          // 0x00789693    7407
                         mov                eax, 0x00000001                               // 0x00789695    b801000000
                         {disp8} jmp        _jmp_addr_0x0078969e                          // 0x0078969a    eb02
_jmp_addr_0x0078969c:    xor.s              eax, eax                                      // 0x0078969c    33c0
_jmp_addr_0x0078969e:    {disp32} mov       ebx, dword ptr [data_bytes + 0x41b000]        // 0x0078969e    8b1d0010de00
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x007896a4    8b5608
                         xor.s              ecx, ecx                                      // 0x007896a7    33c9
                         cmp                ebx, 0x03                                     // 0x007896a9    83fb03
                         sete               cl                                            // 0x007896ac    0f94c1
                         push               ecx                                           // 0x007896af    51
                         push               eax                                           // 0x007896b0    50
                         push               edx                                           // 0x007896b1    52
                         call               _jmp_addr_0x00789bb0                          // 0x007896b2    e8f9040000
                         add                esp, 0x0c                                     // 0x007896b7    83c40c
                         pop                esi                                           // 0x007896ba    5e
                         pop                ebp                                           // 0x007896bb    5d
                         mov                eax, 0x00000001                               // 0x007896bc    b801000000
                         pop                ebx                                           // 0x007896c1    5b
                         ret                                                              // 0x007896c2    c3
                         nop                                                              // 0x007896c3    90
                         nop                                                              // 0x007896c4    90
                         nop                                                              // 0x007896c5    90
                         nop                                                              // 0x007896c6    90
                         nop                                                              // 0x007896c7    90
                         nop                                                              // 0x007896c8    90
                         nop                                                              // 0x007896c9    90
                         nop                                                              // 0x007896ca    90
                         nop                                                              // 0x007896cb    90
                         nop                                                              // 0x007896cc    90
                         nop                                                              // 0x007896cd    90
                         nop                                                              // 0x007896ce    90
                         nop                                                              // 0x007896cf    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x007896d0    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x007896d4    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x007896d7    8b155c19d000
                         push               0x0                                           // 0x007896dd    6a00
                         push               0x0                                           // 0x007896df    6a00
                         push               0xc1f00000                                    // 0x007896e1    680000f0c1
                         push               ecx                                           // 0x007896e6    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x007896e7    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x007896ed    e8eeb20000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007896f2    a15c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x41b000], 0x00000002 // 0x007896f7    c7050010de0002000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x00789701    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00789707    8b4144
                         test               eax, eax                                      // 0x0078970a    85c0
                         {disp8} jne        _jmp_addr_0x0078971b                          // 0x0078970c    750d
                         push               0x00c27798                                    // 0x0078970e    689877c200
                         call               _jmp_addr_0x00794a80                          // 0x00789713    e868b30000
                         add                esp, 0x04                                     // 0x00789718    83c404
_jmp_addr_0x0078971b:    mov                eax, 0x00000001                               // 0x0078971b    b801000000
                         ret                                                              // 0x00789720    c3
                         nop                                                              // 0x00789721    90
                         nop                                                              // 0x00789722    90
                         nop                                                              // 0x00789723    90
                         nop                                                              // 0x00789724    90
                         nop                                                              // 0x00789725    90
                         nop                                                              // 0x00789726    90
                         nop                                                              // 0x00789727    90
                         nop                                                              // 0x00789728    90
                         nop                                                              // 0x00789729    90
                         nop                                                              // 0x0078972a    90
                         nop                                                              // 0x0078972b    90
                         nop                                                              // 0x0078972c    90
                         nop                                                              // 0x0078972d    90
                         nop                                                              // 0x0078972e    90
                         nop                                                              // 0x0078972f    90
                         push               ebx                                           // 0x00789730    53
                         push               ebp                                           // 0x00789731    55
                         xor.s              ebx, ebx                                      // 0x00789732    33db
                         mov                eax, 0x3f800000                               // 0x00789734    b80000803f
                         push               esi                                           // 0x00789739    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0078973a    8b742410
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x0078973e    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x00789741    894614
                         mov                dword ptr [esi], 0x00000001                   // 0x00789744    c70601000000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x0078974a    895e10
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x0078974d    895e0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00789750    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x00789755    8b88b4590000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x0078975b    8b4620
                         cmp.s              eax, ebx                                      // 0x0078975e    3bc3
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x00789760    8b511c
                         {disp32} mov       ebp, dword ptr [edx + 0x000000c4]             // 0x00789763    8baac4000000
                         {disp8} je         _jmp_addr_0x007897e5                          // 0x00789769    747a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afbc]        // 0x0078976b    8b0dbc0fde00
                         push               edi                                           // 0x00789771    57
                         mov.s              edi, ecx                                      // 0x00789772    8bf9
                         sub.s              ecx, eax                                      // 0x00789774    2bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x40ed18]        // 0x00789776    a1184ddd00
                         push               ecx                                           // 0x0078977b    51
                         push               eax                                           // 0x0078977c    50
                         {disp32} mov       dword ptr [data_bytes + 0x41afbc], ecx        // 0x0078977d    890dbc0fde00
                         call               _jmp_addr_0x0079a6a0                          // 0x00789783    e8180f0100
                         {disp32} mov       dword ptr [data_bytes + 0x41afbc], eax        // 0x00789788    a3bc0fde00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b004]        // 0x0078978d    a10410de00
                         add                esp, 0x08                                     // 0x00789792    83c408
                         cmp.s              eax, ebx                                      // 0x00789795    3bc3
                         {disp8} jne        _jmp_addr_0x007897a2                          // 0x00789797    7509
                         push               ebx                                           // 0x00789799    53
                         call               _jmp_addr_0x00788d20                          // 0x0078979a    e881f5ffff
                         add                esp, 0x04                                     // 0x0078979f    83c404
_jmp_addr_0x007897a2:    cmp                dword ptr [data_bytes + 0x41afbc], edi        // 0x007897a2    393dbc0fde00
                         pop                edi                                           // 0x007897a8    5f
                         {disp8} je         _jmp_addr_0x007897e5                          // 0x007897a9    743a
                         cmp                dword ptr [data_bytes + 0x41afac], ebx        // 0x007897ab    391dac0fde00
                         {disp8} jne        _jmp_addr_0x007897eb                          // 0x007897b1    7538
                         push               0x1                                           // 0x007897b3    6a01
                         push               ebx                                           // 0x007897b5    53
                         push               ebx                                           // 0x007897b6    53
                         push               ebx                                           // 0x007897b7    53
                         push               0x2                                           // 0x007897b8    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x007897ba    ff15c4918a00
                         xor.s              edx, edx                                      // 0x007897c0    33d2
                         mov                ecx, 0x00000006                               // 0x007897c2    b906000000
                         div                ecx                                           // 0x007897c7    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x007897c9    8b0d203bcd00
                         add                edx, 0x36                                     // 0x007897cf    83c236
                         push               edx                                           // 0x007897d2    52
                         push               ebx                                           // 0x007897d3    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x007897d4    e88705caff
                         {disp32} mov       dword ptr [data_bytes + 0x41afac], 0x00000001 // 0x007897d9    c705ac0fde0001000000
                         {disp8} jmp        _jmp_addr_0x007897eb                          // 0x007897e3    eb06
_jmp_addr_0x007897e5:    {disp32} mov       dword ptr [data_bytes + 0x41afac], ebx        // 0x007897e5    891dac0fde00
_jmp_addr_0x007897eb:    cmp                dword ptr [esi + 0x08], ebx                   // 0x007897eb    395e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afdc]        // 0x007897ee    8b15dc0fde00
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x007897f4    89561c
                         {disp8} je         _jmp_addr_0x00789812                          // 0x007897f7    7419
                         mov                eax, 0x00000001                               // 0x007897f9    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x007897fe    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x0000049f // 0x00789803    c705c4a1c2009f040000
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], eax        // 0x0078980d    a3ec0fde00
_jmp_addr_0x00789812:    {disp32} fld       dword ptr [ebp + 0x00000450]                  // 0x00789812    d98550040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x00789818    dc1d80b68a00
                         fnstsw             ax                                            // 0x0078981e    dfe0
                         test               ah, 0x40                                      // 0x00789820    f6c440
                         {disp8} je         _jmp_addr_0x0078982c                          // 0x00789823    7407
                         mov                eax, 0x00000001                               // 0x00789825    b801000000
                         {disp8} jmp        _jmp_addr_0x0078982e                          // 0x0078982a    eb02
_jmp_addr_0x0078982c:    xor.s              eax, eax                                      // 0x0078982c    33c0
_jmp_addr_0x0078982e:    {disp32} mov       ebx, dword ptr [data_bytes + 0x41b000]        // 0x0078982e    8b1d0010de00
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x00789834    8b5608
                         xor.s              ecx, ecx                                      // 0x00789837    33c9
                         cmp                ebx, 0x02                                     // 0x00789839    83fb02
                         sete               cl                                            // 0x0078983c    0f94c1
                         push               ecx                                           // 0x0078983f    51
                         push               eax                                           // 0x00789840    50
                         push               edx                                           // 0x00789841    52
                         call               _jmp_addr_0x00789bb0                          // 0x00789842    e869030000
                         add                esp, 0x0c                                     // 0x00789847    83c40c
                         pop                esi                                           // 0x0078984a    5e
                         pop                ebp                                           // 0x0078984b    5d
                         mov                eax, 0x00000001                               // 0x0078984c    b801000000
                         pop                ebx                                           // 0x00789851    5b
                         ret                                                              // 0x00789852    c3
                         nop                                                              // 0x00789853    90
                         nop                                                              // 0x00789854    90
                         nop                                                              // 0x00789855    90
                         nop                                                              // 0x00789856    90
                         nop                                                              // 0x00789857    90
                         nop                                                              // 0x00789858    90
                         nop                                                              // 0x00789859    90
                         nop                                                              // 0x0078985a    90
                         nop                                                              // 0x0078985b    90
                         nop                                                              // 0x0078985c    90
                         nop                                                              // 0x0078985d    90
                         nop                                                              // 0x0078985e    90
                         nop                                                              // 0x0078985f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00789860    8b442404
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x00789864    8b4804
                         {disp32} mov       edx, dword ptr [_game]                        // 0x00789867    8b155c19d000
                         push               0x0                                           // 0x0078986d    6a00
                         push               0x0                                           // 0x0078986f    6a00
                         push               0xc1f00000                                    // 0x00789871    680000f0c1
                         push               ecx                                           // 0x00789876    51
                         {disp32} mov       ecx, dword ptr [edx + 0x000059b4]             // 0x00789877    8b8ab4590000
                         call               _jmp_addr_0x007949e0                          // 0x0078987d    e85eb10000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00789882    a15c19d000
                         {disp32} mov       dword ptr [data_bytes + 0x41b000], 0x00000004 // 0x00789887    c7050010de0004000000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x00789891    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x00789897    8b4144
                         test               eax, eax                                      // 0x0078989a    85c0
                         {disp8} jne        _jmp_addr_0x007898ab                          // 0x0078989c    750d
                         push               0x00c277b8                                    // 0x0078989e    68b877c200
                         call               _jmp_addr_0x00794a80                          // 0x007898a3    e8d8b10000
                         add                esp, 0x04                                     // 0x007898a8    83c404
_jmp_addr_0x007898ab:    mov                eax, 0x00000001                               // 0x007898ab    b801000000
                         ret                                                              // 0x007898b0    c3
                         nop                                                              // 0x007898b1    90
                         nop                                                              // 0x007898b2    90
                         nop                                                              // 0x007898b3    90
                         nop                                                              // 0x007898b4    90
                         nop                                                              // 0x007898b5    90
                         nop                                                              // 0x007898b6    90
                         nop                                                              // 0x007898b7    90
                         nop                                                              // 0x007898b8    90
                         nop                                                              // 0x007898b9    90
                         nop                                                              // 0x007898ba    90
                         nop                                                              // 0x007898bb    90
                         nop                                                              // 0x007898bc    90
                         nop                                                              // 0x007898bd    90
                         nop                                                              // 0x007898be    90
                         nop                                                              // 0x007898bf    90
                         push               ebx                                           // 0x007898c0    53
                         push               ebp                                           // 0x007898c1    55
                         xor.s              ebx, ebx                                      // 0x007898c2    33db
                         mov                eax, 0x3f800000                               // 0x007898c4    b80000803f
                         push               esi                                           // 0x007898c9    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x007898ca    8b742410
                         {disp8} mov        dword ptr [esi + 0x18], eax                   // 0x007898ce    894618
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x007898d1    894614
                         mov                dword ptr [esi], 0x00000001                   // 0x007898d4    c70601000000
                         {disp8} mov        dword ptr [esi + 0x10], ebx                   // 0x007898da    895e10
                         {disp8} mov        dword ptr [esi + 0x0c], ebx                   // 0x007898dd    895e0c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x007898e0    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x007898e5    8b88b4590000
                         {disp8} mov        eax, dword ptr [esi + 0x20]                   // 0x007898eb    8b4620
                         cmp.s              eax, ebx                                      // 0x007898ee    3bc3
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x007898f0    8b511c
                         {disp32} mov       ebp, dword ptr [edx + 0x000000c4]             // 0x007898f3    8baac4000000
                         {disp8} je         _jmp_addr_0x00789975                          // 0x007898f9    747a
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afc0]        // 0x007898fb    8b0dc00fde00
                         push               edi                                           // 0x00789901    57
                         mov.s              edi, ecx                                      // 0x00789902    8bf9
                         sub.s              ecx, eax                                      // 0x00789904    2bc8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x40ad14]        // 0x00789906    a1140ddd00
                         push               ecx                                           // 0x0078990b    51
                         push               eax                                           // 0x0078990c    50
                         {disp32} mov       dword ptr [data_bytes + 0x41afc0], ecx        // 0x0078990d    890dc00fde00
                         call               _jmp_addr_0x0079a6a0                          // 0x00789913    e8880d0100
                         {disp32} mov       dword ptr [data_bytes + 0x41afc0], eax        // 0x00789918    a3c00fde00
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b004]        // 0x0078991d    a10410de00
                         add                esp, 0x08                                     // 0x00789922    83c408
                         cmp.s              eax, ebx                                      // 0x00789925    3bc3
                         {disp8} jne        _jmp_addr_0x00789932                          // 0x00789927    7509
                         push               ebx                                           // 0x00789929    53
                         call               _jmp_addr_0x00789070                          // 0x0078992a    e841f7ffff
                         add                esp, 0x04                                     // 0x0078992f    83c404
_jmp_addr_0x00789932:    cmp                dword ptr [data_bytes + 0x41afc0], edi        // 0x00789932    393dc00fde00
                         pop                edi                                           // 0x00789938    5f
                         {disp8} je         _jmp_addr_0x00789975                          // 0x00789939    743a
                         cmp                dword ptr [data_bytes + 0x41afb0], ebx        // 0x0078993b    391db00fde00
                         {disp8} jne        _jmp_addr_0x0078997b                          // 0x00789941    7538
                         push               0x1                                           // 0x00789943    6a01
                         push               ebx                                           // 0x00789945    53
                         push               ebx                                           // 0x00789946    53
                         push               ebx                                           // 0x00789947    53
                         push               0x2                                           // 0x00789948    6a02
                         call               dword ptr [__imp__GetTickCount@4]             // 0x0078994a    ff15c4918a00
                         xor.s              edx, edx                                      // 0x00789950    33d2
                         mov                ecx, 0x00000006                               // 0x00789952    b906000000
                         div                ecx                                           // 0x00789957    f7f1
                         {disp32} mov       ecx, dword ptr [_global]                      // 0x00789959    8b0d203bcd00
                         add                edx, 0x36                                     // 0x0078995f    83c236
                         push               edx                                           // 0x00789962    52
                         push               ebx                                           // 0x00789963    53
                         call               @PlaySoundEffect__6GAudioFP4BaseUlUlUlii19AUDIO_SFX_BANK_TYPE@36                          // 0x00789964    e8f703caff
                         {disp32} mov       dword ptr [data_bytes + 0x41afb0], 0x00000001 // 0x00789969    c705b00fde0001000000
                         {disp8} jmp        _jmp_addr_0x0078997b                          // 0x00789973    eb06
_jmp_addr_0x00789975:    {disp32} mov       dword ptr [data_bytes + 0x41afb0], ebx        // 0x00789975    891db00fde00
_jmp_addr_0x0078997b:    cmp                dword ptr [esi + 0x08], ebx                   // 0x0078997b    395e08
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41afe4]        // 0x0078997e    8b15e40fde00
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x00789984    89561c
                         {disp8} je         _jmp_addr_0x007899a2                          // 0x00789987    7419
                         mov                eax, 0x00000001                               // 0x00789989    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0078998e    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x0000049e // 0x00789993    c705c4a1c2009e040000
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], eax        // 0x0078999d    a3ec0fde00
_jmp_addr_0x007899a2:    {disp32} fld       dword ptr [ebp + 0x00000450]                  // 0x007899a2    d98550040000
                         {disp32} fcomp     qword ptr [__real@8@3fff8000000000000000]   // 0x007899a8    dc1d80b68a00
                         fnstsw             ax                                            // 0x007899ae    dfe0
                         test               ah, 0x40                                      // 0x007899b0    f6c440
                         {disp8} je         _jmp_addr_0x007899bc                          // 0x007899b3    7407
                         mov                eax, 0x00000001                               // 0x007899b5    b801000000
                         {disp8} jmp        _jmp_addr_0x007899be                          // 0x007899ba    eb02
_jmp_addr_0x007899bc:    xor.s              eax, eax                                      // 0x007899bc    33c0
_jmp_addr_0x007899be:    {disp32} mov       ebx, dword ptr [data_bytes + 0x41b000]        // 0x007899be    8b1d0010de00
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x007899c4    8b5608
                         xor.s              ecx, ecx                                      // 0x007899c7    33c9
                         cmp                ebx, 0x04                                     // 0x007899c9    83fb04
                         sete               cl                                            // 0x007899cc    0f94c1
                         push               ecx                                           // 0x007899cf    51
                         push               eax                                           // 0x007899d0    50
                         push               edx                                           // 0x007899d1    52
                         call               _jmp_addr_0x00789bb0                          // 0x007899d2    e8d9010000
                         add                esp, 0x0c                                     // 0x007899d7    83c40c
                         pop                esi                                           // 0x007899da    5e
                         pop                ebp                                           // 0x007899db    5d
                         mov                eax, 0x00000001                               // 0x007899dc    b801000000
                         pop                ebx                                           // 0x007899e1    5b
                         ret                                                              // 0x007899e2    c3
                         nop                                                              // 0x007899e3    90
                         nop                                                              // 0x007899e4    90
                         nop                                                              // 0x007899e5    90
                         nop                                                              // 0x007899e6    90
                         nop                                                              // 0x007899e7    90
                         nop                                                              // 0x007899e8    90
                         nop                                                              // 0x007899e9    90
                         nop                                                              // 0x007899ea    90
                         nop                                                              // 0x007899eb    90
                         nop                                                              // 0x007899ec    90
                         nop                                                              // 0x007899ed    90
                         nop                                                              // 0x007899ee    90
                         nop                                                              // 0x007899ef    90
_jmp_addr_0x007899f0:    {disp32} mov       eax, dword ptr [data_bytes + 0x4f39ac]        // 0x007899f0    a1ac99eb00
                         sub                esp, 0x00000200                               // 0x007899f5    81ec00020000
                         cmp                eax, 0x01                                     // 0x007899fb    83f801
                         {disp8} jne        _jmp_addr_0x00789a66                          // 0x007899fe    7566
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00789a00    8d4c2400
                         call               _jmp_addr_0x00898450                          // 0x00789a04    e847ea1000
                         push               0x00dd0c10                                    // 0x00789a09    68100cdd00
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00789a0e    8d4c2404
                         call               _jmp_addr_0x008984b0                          // 0x00789a12    e899ea1000
                         push               0x0000012c                                    // 0x00789a17    682c010000
                         push               0x00000190                                    // 0x00789a1c    6890010000
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                   // 0x00789a21    8d4c2408
                         call               _jmp_addr_0x00898500                          // 0x00789a25    e8d6ea1000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afc4]        // 0x00789a2a    a1c40fde00
                         push               eax                                           // 0x00789a2f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x04]                   // 0x00789a30    8d4c2404
                         call               _jmp_addr_0x008985b0                          // 0x00789a34    e877eb1000
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00789a39    8d4c2400
                         call               _jmp_addr_0x00898530                          // 0x00789a3d    e8eeea1000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41afc4]        // 0x00789a42    8b0dc40fde00
                         push               ecx                                           // 0x00789a48    51
                         call               ??3@YAXPAX@Z                                  // 0x00789a49    e84a540200
                         xor.s              eax, eax                                      // 0x00789a4e    33c0
                         add                esp, 0x04                                     // 0x00789a50    83c404
                         {disp8} lea        ecx, dword ptr [esp + 0x00]                   // 0x00789a53    8d4c2400
                         {disp32} mov       dword ptr [data_bytes + 0x41afc4], eax        // 0x00789a57    a3c40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x4f39ac], eax        // 0x00789a5c    a3ac99eb00
                         call               _jmp_addr_0x008984a0                          // 0x00789a61    e83aea1000
_jmp_addr_0x00789a66:    add                esp, 0x00000200                               // 0x00789a66    81c400020000
                         ret                                                              // 0x00789a6c    c3
                         nop                                                              // 0x00789a6d    90
                         nop                                                              // 0x00789a6e    90
                         nop                                                              // 0x00789a6f    90
_jmp_addr_0x00789a70:    sub                esp, 0x0000020c                               // 0x00789a70    81ec0c020000
                         push               ebx                                           // 0x00789a76    53
                         push               esi                                           // 0x00789a77    56
                         push               0x0000072d                                    // 0x00789a78    682d070000
                         push               0x00c27630                                    // 0x00789a7d    683076c200
                         push               0x00057e40                                    // 0x00789a82    68407e0500
                         call               ___nw__FUl                                    // 0x00789a87    e8041d0500
                         {disp32} mov       dword ptr [data_bytes + 0x41afc4], eax        // 0x00789a8c    a3c40fde00
                         xor.s              ebx, ebx                                      // 0x00789a91    33db
                         {disp32} mov       dword ptr [esp + 0x0000021c], eax             // 0x00789a93    8984241c020000
                         {disp32} mov       eax, dword ptr [_game]                        // 0x00789a9a    a15c19d000
                         add                esp, 0x0c                                     // 0x00789a9f    83c40c
                         push               0x00dd0c10                                    // 0x00789aa2    68100cdd00
                         {disp32} lea       ecx, dword ptr [eax + 0x00250310]             // 0x00789aa7    8d8810032500
                         {disp8} mov        byte ptr [esp + 0x0c], bl                     // 0x00789aad    885c240c
                         {disp32} mov       byte ptr [esp + 0x0000010c], bl               // 0x00789ab1    889c240c010000
                         {disp32} mov       dword ptr [esp + 0x0000020c], ebx             // 0x00789ab8    899c240c020000
                         {disp32} mov       dword ptr [esp + 0x00000210], ebx             // 0x00789abf    899c2410020000
                         call               _jmp_addr_0x0078ea20                          // 0x00789ac6    e8554f0000
                         {disp32} mov       esi, dword ptr [esp + 0x00000218]             // 0x00789acb    8bb42418020000
                         and                esi, 0x000000ff                               // 0x00789ad2    81e6ff000000
                         push               esi                                           // 0x00789ad8    56
                         push               0x00dd0c10                                    // 0x00789ad9    68100cdd00
                         push               0x00c277d8                                    // 0x00789ade    68d877c200
                         push               0x00dd0c10                                    // 0x00789ae3    68100cdd00
                         call               _sprintf                                      // 0x00789ae8    e8e5bc0300
                         push               ebx                                           // 0x00789aed    53
                         push               ebx                                           // 0x00789aee    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x00789aef    8d4c2420
                         push               0x1                                           // 0x00789af3    6a01
                         push               ecx                                           // 0x00789af5    51
                         call               _jmp_addr_0x00828e90                          // 0x00789af6    e895f30900
                         {disp32} mov       edx, dword ptr [esp + 0x0000023c]             // 0x00789afb    8b94243c020000
                         lea                eax, dword ptr [esi + esi * 0x4]              // 0x00789b02    8d04b6
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00789b05    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x00789b08    8d0480
                         push               edx                                           // 0x00789b0b    52
                         {disp32} lea       ecx, dword ptr [eax * 0x4 + 0x00de1008]       // 0x00789b0c    8d0c850810de00
                         push               ecx                                           // 0x00789b13    51
                         call               _wcscpy                                       // 0x00789b14    e89dc40300
                         add                esp, 0x28                                     // 0x00789b19    83c428
                         pop                esi                                           // 0x00789b1c    5e
                         pop                ebx                                           // 0x00789b1d    5b
                         add                esp, 0x0000020c                               // 0x00789b1e    81c40c020000
                         ret                                                              // 0x00789b24    c3
                         nop                                                              // 0x00789b25    90
                         nop                                                              // 0x00789b26    90
                         nop                                                              // 0x00789b27    90
                         nop                                                              // 0x00789b28    90
                         nop                                                              // 0x00789b29    90
                         nop                                                              // 0x00789b2a    90
                         nop                                                              // 0x00789b2b    90
                         nop                                                              // 0x00789b2c    90
                         nop                                                              // 0x00789b2d    90
                         nop                                                              // 0x00789b2e    90
                         nop                                                              // 0x00789b2f    90
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00789b30    8b0d5c19d000
                         call               ?IsMultiplayerGame@GGame@@QBE_NXZ             // 0x00789b36    e84594dcff
                         test               eax, eax                                      // 0x00789b3b    85c0
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x00789b3d    8b0d5c19d000
                         {disp8} jne        _jmp_addr_0x00789b4f                          // 0x00789b43    750a
                         {disp32} mov       eax, dword ptr [ecx + 0x00205a0c]             // 0x00789b45    8b810c5a2000
                         test               eax, eax                                      // 0x00789b4b    85c0
                         {disp8} je         _jmp_addr_0x00789b74                          // 0x00789b4d    7425
_jmp_addr_0x00789b4f:    xor.s              eax, eax                                      // 0x00789b4f    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00789b51    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00789b57    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00789b5a    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00789b5d    8d0450
                         shl                eax, 5                                        // 0x00789b60    c1e005
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00789b63    8b9408640a0000
                         test               edx, edx                                      // 0x00789b6a    85d2
                         {disp8} je         _jmp_addr_0x00789b74                          // 0x00789b6c    7406
                         mov                eax, 0x00000001                               // 0x00789b6e    b801000000
                         ret                                                              // 0x00789b73    c3
_jmp_addr_0x00789b74:    xor.s              eax, eax                                      // 0x00789b74    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x00789b76    8a81595a2000
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x00789b7c    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x00789b7f    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x00789b82    8d0450
                         shl                eax, 5                                        // 0x00789b85    c1e005
                         {disp32} mov       edx, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x00789b88    8b9408640a0000
                         test               edx, edx                                      // 0x00789b8f    85d2
                         {disp8} je         _jmp_addr_0x00789ba2                          // 0x00789b91    740f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4741b0]        // 0x00789b93    a1b0a1e300
                         test               eax, eax                                      // 0x00789b98    85c0
                         {disp8} je         _jmp_addr_0x00789ba2                          // 0x00789b9a    7406
                         mov                eax, 0x00000001                               // 0x00789b9c    b801000000
                         ret                                                              // 0x00789ba1    c3
_jmp_addr_0x00789ba2:    xor.s              eax, eax                                      // 0x00789ba2    33c0
                         ret                                                              // 0x00789ba4    c3
                         nop                                                              // 0x00789ba5    90
                         nop                                                              // 0x00789ba6    90
                         nop                                                              // 0x00789ba7    90
                         nop                                                              // 0x00789ba8    90
                         nop                                                              // 0x00789ba9    90
                         nop                                                              // 0x00789baa    90
                         nop                                                              // 0x00789bab    90
                         nop                                                              // 0x00789bac    90
                         nop                                                              // 0x00789bad    90
                         nop                                                              // 0x00789bae    90
                         nop                                                              // 0x00789baf    90
_jmp_addr_0x00789bb0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00789bb0    8b442404
                         test               eax, eax                                      // 0x00789bb4    85c0
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00789bb6    8b442408
                         {disp8} je         _jmp_addr_0x00789bec                          // 0x00789bba    7430
                         test               eax, eax                                      // 0x00789bbc    85c0
                         {disp8} je         _jmp_addr_0x00789c0d                          // 0x00789bbe    744d
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00789bc0    8b44240c
                         test               eax, eax                                      // 0x00789bc4    85c0
                         {disp8} je         _jmp_addr_0x00789c0d                          // 0x00789bc6    7445
                         mov                eax, 0x00000001                               // 0x00789bc8    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x00789bcd    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000ee2 // 0x00789bd2    c705c4a1c200e20e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000300 // 0x00789bdc    c7054061e30000030000
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], eax        // 0x00789be6    a3ec0fde00
                         ret                                                              // 0x00789beb    c3
_jmp_addr_0x00789bec:    test               eax, eax                                      // 0x00789bec    85c0
                         {disp8} je         _jmp_addr_0x00789c0d                          // 0x00789bee    741d
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41afec]        // 0x00789bf0    a1ec0fde00
                         test               eax, eax                                      // 0x00789bf5    85c0
                         {disp8} jne        _jmp_addr_0x00789c0d                          // 0x00789bf7    7514
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], 0x00000001 // 0x00789bf9    c705c0a1c20001000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e8b // 0x00789c03    c705c4a1c2008b0e0000
_jmp_addr_0x00789c0d:    ret                                                              // 0x00789c0d    c3
                         nop                                                              // 0x00789c0e    90
                         nop                                                              // 0x00789c0f    90
_jmp_addr_0x00789c10:    push               edi                                           // 0x00789c10    57
                         xor.s              eax, eax                                      // 0x00789c11    33c0
                         xor.s              edx, edx                                      // 0x00789c13    33d2
                         mov                ecx, 0x00001000                               // 0x00789c15    b900100000
                         mov                edi, 0x00ddcd24                               // 0x00789c1a    bf24cddd00
                         rep stosd                                                        // 0x00789c1f    f3ab
                         mov                ecx, 0x00001000                               // 0x00789c21    b900100000
                         mov                edi, 0x00dd8d20                               // 0x00789c26    bf208ddd00
                         rep stosd                                                        // 0x00789c2b    f3ab
                         mov                ecx, 0x00001000                               // 0x00789c2d    b900100000
                         mov                edi, 0x00dd4d1c                               // 0x00789c32    bf1c4ddd00
                         rep stosd                                                        // 0x00789c37    f3ab
                         mov                ecx, 0x00001000                               // 0x00789c39    b900100000
                         mov                edi, 0x00dd0d18                               // 0x00789c3e    bf180ddd00
                         rep stosd                                                        // 0x00789c43    f3ab
                         mov                ecx, 0x00000041                               // 0x00789c45    b941000000
                         mov                edi, 0x00dd0c10                               // 0x00789c4a    bf100cdd00
                         rep stosd                                                        // 0x00789c4f    f3ab
                         xor.s              ecx, ecx                                      // 0x00789c51    33c9
                         {disp32} mov       dword ptr [data_bytes + 0x41ad28], eax        // 0x00789c53    a3280dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad38], ecx        // 0x00789c58    890d380dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad2c], eax        // 0x00789c5e    a32c0dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad3c], ecx        // 0x00789c63    890d3c0dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad40], ecx        // 0x00789c69    890d400dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad30], eax        // 0x00789c6f    a3300dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afb4], edx        // 0x00789c74    8915b40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afb8], edx        // 0x00789c7a    8915b80fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afbc], edx        // 0x00789c80    8915bc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afc0], edx        // 0x00789c86    8915c00fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afc4], edx        // 0x00789c8c    8915c40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afc8], edx        // 0x00789c92    8915c80fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afcc], edx        // 0x00789c98    8915cc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afd0], edx        // 0x00789c9e    8915d00fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afd4], edx        // 0x00789ca4    8915d40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afd8], edx        // 0x00789caa    8915d80fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afdc], edx        // 0x00789cb0    8915dc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afe0], edx        // 0x00789cb6    8915e00fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afe4], edx        // 0x00789cbc    8915e40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x416d20], edx        // 0x00789cc2    891520cddd00
                         {disp32} mov       dword ptr [data_bytes + 0x40ed18], edx        // 0x00789cc8    8915184ddd00
                         {disp32} mov       dword ptr [data_bytes + 0x412d1c], edx        // 0x00789cce    89151c8ddd00
                         {disp32} mov       dword ptr [data_bytes + 0x40ad14], edx        // 0x00789cd4    8915140ddd00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad34], eax        // 0x00789cda    a3340dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41ad44], ecx        // 0x00789cdf    890d440dde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afe8], ecx        // 0x00789ce5    890de80fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41afec], edx        // 0x00789ceb    8915ec0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41aff0], edx        // 0x00789cf1    8915f00fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41aff4], edx        // 0x00789cf7    8915f40fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41aff8], edx        // 0x00789cfd    8915f80fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41affc], edx        // 0x00789d03    8915fc0fde00
                         {disp32} mov       dword ptr [data_bytes + 0x41b000], edx        // 0x00789d09    89150010de00
                         {disp32} mov       dword ptr [data_bytes + 0x41b004], edx        // 0x00789d0f    89150410de00
                         pop                edi                                           // 0x00789d15    5f
                         ret                                                              // 0x00789d16    c3
                         nop                                                              // 0x00789d17    90
                         nop                                                              // 0x00789d18    90
                         nop                                                              // 0x00789d19    90
                         nop                                                              // 0x00789d1a    90
                         nop                                                              // 0x00789d1b    90
                         nop                                                              // 0x00789d1c    90
                         nop                                                              // 0x00789d1d    90
                         nop                                                              // 0x00789d1e    90
                         nop                                                              // 0x00789d1f    90
_globl_ct_0x00789d20:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x00789d20    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x00789d26    b001
                         test               al, cl                                        // 0x00789d28    84c8
                         {disp8} jne        _jmp_addr_0x00789d34                          // 0x00789d2a    7508
                         or.s               cl, al                                        // 0x00789d2c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x00789d2e    880d34c9fa00
_jmp_addr_0x00789d34:    {disp32} jmp       _jmp_addr_0x00789d40                          // 0x00789d34    e907000000
                         nop                                                              // 0x00789d39    90
                         nop                                                              // 0x00789d3a    90
                         nop                                                              // 0x00789d3b    90
                         nop                                                              // 0x00789d3c    90
                         nop                                                              // 0x00789d3d    90
                         nop                                                              // 0x00789d3e    90
                         nop                                                              // 0x00789d3f    90
_jmp_addr_0x00789d40:    push               0x00407870                                    // 0x00789d40    6870784000
                         call               _atexit                                       // 0x00789d45    e847ba0300
                         pop                ecx                                           // 0x00789d4a    59
                         ret                                                              // 0x00789d4b    c3
                         nop                                                              // 0x00789d4c    90
                         nop                                                              // 0x00789d4d    90
                         nop                                                              // 0x00789d4e    90
                         nop                                                              // 0x00789d4f    90
_globl_ct_0x00789d50:    {disp32} jmp       _jmp_addr_0x00789d60                          // 0x00789d50    e90b000000
                         nop                                                              // 0x00789d55    90
                         nop                                                              // 0x00789d56    90
                         nop                                                              // 0x00789d57    90
                         nop                                                              // 0x00789d58    90
                         nop                                                              // 0x00789d59    90
                         nop                                                              // 0x00789d5a    90
                         nop                                                              // 0x00789d5b    90
                         nop                                                              // 0x00789d5c    90
                         nop                                                              // 0x00789d5d    90
                         nop                                                              // 0x00789d5e    90
                         nop                                                              // 0x00789d5f    90
_jmp_addr_0x00789d60:    {disp32} mov       dword ptr [data_bytes + 0x41ba00], 0xffffffff // 0x00789d60    c705001ade00ffffffff
                         ret                                                              // 0x00789d6a    c3
                         nop                                                              // 0x00789d6b    90
                         nop                                                              // 0x00789d6c    90
                         nop                                                              // 0x00789d6d    90
                         nop                                                              // 0x00789d6e    90
                         nop                                                              // 0x00789d6f    90
_globl_ct_0x00789d70:    {disp32} jmp       _jmp_addr_0x00789d80                          // 0x00789d70    e90b000000
                         nop                                                              // 0x00789d75    90
                         nop                                                              // 0x00789d76    90
                         nop                                                              // 0x00789d77    90
                         nop                                                              // 0x00789d78    90
                         nop                                                              // 0x00789d79    90
                         nop                                                              // 0x00789d7a    90
                         nop                                                              // 0x00789d7b    90
                         nop                                                              // 0x00789d7c    90
                         nop                                                              // 0x00789d7d    90
                         nop                                                              // 0x00789d7e    90
                         nop                                                              // 0x00789d7f    90
_jmp_addr_0x00789d80:    {disp32} fld       dword ptr [rdata_bytes + 0xf5c00]             // 0x00789d80    d90500ec9900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5bfc]             // 0x00789d86    d80dfceb9900
                         {disp32} fstp      dword ptr [data_bytes + 0x41b9fc]             // 0x00789d8c    d91dfc19de00
                         ret                                                              // 0x00789d92    c3
                         nop                                                              // 0x00789d93    90
                         nop                                                              // 0x00789d94    90
                         nop                                                              // 0x00789d95    90
                         nop                                                              // 0x00789d96    90
                         nop                                                              // 0x00789d97    90
                         nop                                                              // 0x00789d98    90
                         nop                                                              // 0x00789d99    90
                         nop                                                              // 0x00789d9a    90
                         nop                                                              // 0x00789d9b    90
                         nop                                                              // 0x00789d9c    90
                         nop                                                              // 0x00789d9d    90
                         nop                                                              // 0x00789d9e    90
                         nop                                                              // 0x00789d9f    90
?Init@CreatureRoomCamera@@UAEXPAD@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00789da0    8b442404
                         push               esi                                           // 0x00789da4    56
                         mov.s              esi, ecx                                      // 0x00789da5    8bf1
                         push               eax                                           // 0x00789da7    50
                         call               @Init__11InnerCameraFPc@12                    // 0x00789da8    e893d30000
                         xor.s              eax, eax                                      // 0x00789dad    33c0
                         or                 ecx, 0xffffffff                               // 0x00789daf    83c9ff
                         {disp32} mov       dword ptr [esi + 0x000004c0], ecx             // 0x00789db2    898ec0040000
                         {disp32} mov       dword ptr [esi + 0x0000044c], ecx             // 0x00789db8    898e4c040000
                         {disp32} mov       dword ptr [esi + 0x00000450], eax             // 0x00789dbe    898650040000
                         {disp32} mov       dword ptr [esi + 0x0000046c], eax             // 0x00789dc4    89866c040000
                         {disp32} mov       dword ptr [esi + 0x00000470], eax             // 0x00789dca    898670040000
                         {disp32} mov       dword ptr [esi + 0x000004ac], ecx             // 0x00789dd0    898eac040000
                         {disp32} mov       dword ptr [esi + 0x00000484], eax             // 0x00789dd6    898684040000
                         {disp32} mov       dword ptr [esi + 0x00000480], eax             // 0x00789ddc    898680040000
                         {disp32} mov       dword ptr [esi + 0x0000048c], eax             // 0x00789de2    89868c040000
                         {disp32} mov       dword ptr [esi + 0x00000488], eax             // 0x00789de8    898688040000
                         pop                esi                                           // 0x00789dee    5e
                         ret                0x0004                                        // 0x00789def    c20400
                         nop                                                              // 0x00789df2    90
                         nop                                                              // 0x00789df3    90
                         nop                                                              // 0x00789df4    90
                         nop                                                              // 0x00789df5    90
                         nop                                                              // 0x00789df6    90
                         nop                                                              // 0x00789df7    90
                         nop                                                              // 0x00789df8    90
                         nop                                                              // 0x00789df9    90
                         nop                                                              // 0x00789dfa    90
                         nop                                                              // 0x00789dfb    90
                         nop                                                              // 0x00789dfc    90
                         nop                                                              // 0x00789dfd    90
                         nop                                                              // 0x00789dfe    90
                         nop                                                              // 0x00789dff    90
?Close@CreatureRoomCamera@@UAEXXZ:
                         {disp32} jmp       ?Close@InnerCamera@@UAEXXZ                    // 0x00789e00    e99bd60000
                         nop                                                              // 0x00789e05    90
                         nop                                                              // 0x00789e06    90
                         nop                                                              // 0x00789e07    90
                         nop                                                              // 0x00789e08    90
                         nop                                                              // 0x00789e09    90
                         nop                                                              // 0x00789e0a    90
                         nop                                                              // 0x00789e0b    90
                         nop                                                              // 0x00789e0c    90
                         nop                                                              // 0x00789e0d    90
                         nop                                                              // 0x00789e0e    90
                         nop                                                              // 0x00789e0f    90
?Update@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x00789e10    8b442418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00789e14    8b542414
                         push               eax                                           // 0x00789e18    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00789e19    8b442414
                         push               edx                                           // 0x00789e1d    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00789e1e    8b542414
                         push               eax                                           // 0x00789e22    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00789e23    8b442414
                         push               edx                                           // 0x00789e27    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00789e28    8b542414
                         push               eax                                           // 0x00789e2c    50
                         push               edx                                           // 0x00789e2d    52
                         call               @Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x00789e2e    e82dcd0000
                         ret                0x0018                                        // 0x00789e33    c21800
                         nop                                                              // 0x00789e36    90
                         nop                                                              // 0x00789e37    90
                         nop                                                              // 0x00789e38    90
                         nop                                                              // 0x00789e39    90
                         nop                                                              // 0x00789e3a    90
                         nop                                                              // 0x00789e3b    90
                         nop                                                              // 0x00789e3c    90
                         nop                                                              // 0x00789e3d    90
                         nop                                                              // 0x00789e3e    90
                         nop                                                              // 0x00789e3f    90
?UpdateState@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z:
                         push               esi                                           // 0x00789e40    56
                         mov.s              esi, ecx                                      // 0x00789e41    8bf1
                         {disp32} mov       eax, dword ptr [esi + 0x00000438]             // 0x00789e43    8b8638040000
                         cmp                eax, dword ptr [esi + 0x00000124]             // 0x00789e49    3b8624010000
                         {disp32} je        _jmp_addr_0x00789f14                          // 0x00789e4f    0f84bf000000
                         dec                eax                                           // 0x00789e55    48
                         {disp8} je         _jmp_addr_0x00789e70                          // 0x00789e56    7418
                         sub                eax, 0x03                                     // 0x00789e58    83e803
                         {disp32} jne       _jmp_addr_0x00789f14                          // 0x00789e5b    0f85b3000000
                         {disp32} mov       dword ptr [esi + 0x00000124], 0x00000004      // 0x00789e61    c7862401000004000000
                         {disp32} jmp       _jmp_addr_0x00789f14                          // 0x00789e6b    e9a4000000
_jmp_addr_0x00789e70:    {disp32} mov       ecx, dword ptr [esi + 0x0000043c]             // 0x00789e70    8b8e3c040000
                         push               ebx                                           // 0x00789e76    53
                         push               ebp                                           // 0x00789e77    55
                         push               edi                                           // 0x00789e78    57
                         {disp32} lea       ebx, dword ptr [esi + 0x00000260]             // 0x00789e79    8d9e60020000
                         push               ebx                                           // 0x00789e7f    53
                         {disp32} mov       dword ptr [esi + 0x0000044c], 0xffffffff      // 0x00789e80    c7864c040000ffffffff
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                   // 0x00789e8a    8b4104
                         {disp32} lea       edi, dword ptr [esi + 0x0000026c]             // 0x00789e8d    8dbe6c020000
                         push               edi                                           // 0x00789e93    57
                         push               eax                                           // 0x00789e94    50
                         xor.s              edx, edx                                      // 0x00789e95    33d2
                         call               _jmp_addr_0x0086d4e0                          // 0x00789e97    e844360e00
                         mov.s              edx, edi                                      // 0x00789e9c    8bd7
                         mov                eax, dword ptr [edx]                          // 0x00789e9e    8b02
                         {disp32} lea       ecx, dword ptr [esi + 0x00000474]             // 0x00789ea0    8d8e74040000
                         mov                dword ptr [ecx], eax                          // 0x00789ea6    8901
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x00789ea8    8b4204
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x00789eab    8b5208
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x00789eae    894104
                         {disp32} lea       ebp, dword ptr [esi + 0x00000484]             // 0x00789eb1    8dae84040000
                         push               ebp                                           // 0x00789eb7    55
                         {disp32} lea       eax, dword ptr [esi + 0x00000480]             // 0x00789eb8    8d8680040000
                         push               eax                                           // 0x00789ebe    50
                         push               ebx                                           // 0x00789ebf    53
                         push               edi                                           // 0x00789ec0    57
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x00789ec1    895108
                         call               ?GetHeadingAndPitchFromPoints@GCamera@@SAXABULHPoint@@0PAM1@Z                             // 0x00789ec4    e8078acbff
                         {disp32} mov       eax, dword ptr [esi + 0x00000480]             // 0x00789ec9    8b8680040000
                         {disp8} mov        ecx, dword ptr [ebp + 0x00]                   // 0x00789ecf    8b4d00
                         {disp32} mov       edx, dword ptr [esi + 0x00000438]             // 0x00789ed2    8b9638040000
                         add                esp, 0x10                                     // 0x00789ed8    83c410
                         pop                edi                                           // 0x00789edb    5f
                         {disp32} mov       dword ptr [esi + 0x00000488], eax             // 0x00789edc    898688040000
                         xor.s              eax, eax                                      // 0x00789ee2    33c0
                         pop                ebp                                           // 0x00789ee4    5d
                         {disp32} mov       dword ptr [esi + 0x0000048c], ecx             // 0x00789ee5    898e8c040000
                         {disp32} mov       dword ptr [esi + 0x00000124], edx             // 0x00789eeb    899624010000
                         {disp32} mov       dword ptr [esi + 0x000004bc], eax             // 0x00789ef1    8986bc040000
                         {disp32} mov       dword ptr [esi + 0x000004b8], eax             // 0x00789ef7    8986b8040000
                         {disp32} mov       dword ptr [esi + 0x0000046c], eax             // 0x00789efd    89866c040000
                         {disp32} mov       dword ptr [esi + 0x00000470], eax             // 0x00789f03    898670040000
                         {disp32} mov       dword ptr [esi + 0x000004ac], 0xffffffff      // 0x00789f09    c786ac040000ffffffff
                         pop                ebx                                           // 0x00789f13    5b
_jmp_addr_0x00789f14:    {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00789f14    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00789f18    8b4c2418
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00789f1c    8b542414
                         push               eax                                           // 0x00789f20    50
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00789f21    8b442414
                         push               ecx                                           // 0x00789f25    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00789f26    8b4c2414
                         push               edx                                           // 0x00789f2a    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x00789f2b    8b542414
                         push               eax                                           // 0x00789f2f    50
                         push               ecx                                           // 0x00789f30    51
                         push               edx                                           // 0x00789f31    52
                         mov.s              ecx, esi                                      // 0x00789f32    8bce
                         call               @UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x00789f34    e8b7c60000
                         pop                esi                                           // 0x00789f39    5e
                         ret                0x0018                                        // 0x00789f3a    c21800
                         nop                                                              // 0x00789f3d    90
                         nop                                                              // 0x00789f3e    90
                         nop                                                              // 0x00789f3f    90
_globl_ct_0x00789f40:    {disp32} jmp       _jmp_addr_0x00789f50                          // 0x00789f40    e90b000000
                         nop                                                              // 0x00789f45    90
                         nop                                                              // 0x00789f46    90
                         nop                                                              // 0x00789f47    90
                         nop                                                              // 0x00789f48    90
                         nop                                                              // 0x00789f49    90
                         nop                                                              // 0x00789f4a    90
                         nop                                                              // 0x00789f4b    90
                         nop                                                              // 0x00789f4c    90
                         nop                                                              // 0x00789f4d    90
                         nop                                                              // 0x00789f4e    90
                         nop                                                              // 0x00789f4f    90
_jmp_addr_0x00789f50:    {disp32} mov       dword ptr [data_bytes + 0x41b9f0], 0x43650000 // 0x00789f50    c705f019de0000006543
                         {disp32} mov       dword ptr [data_bytes + 0x41b9f4], 0x40000000 // 0x00789f5a    c705f419de0000000040
                         {disp32} mov       dword ptr [data_bytes + 0x41b9f8], 0xc2200000 // 0x00789f64    c705f819de00000020c2
                         ret                                                              // 0x00789f6e    c3
                         nop                                                              // 0x00789f6f    90
_globl_ct_0x00789f70:    {disp32} jmp       _jmp_addr_0x00789f80                          // 0x00789f70    e90b000000
                         nop                                                              // 0x00789f75    90
                         nop                                                              // 0x00789f76    90
                         nop                                                              // 0x00789f77    90
                         nop                                                              // 0x00789f78    90
                         nop                                                              // 0x00789f79    90
                         nop                                                              // 0x00789f7a    90
                         nop                                                              // 0x00789f7b    90
                         nop                                                              // 0x00789f7c    90
                         nop                                                              // 0x00789f7d    90
                         nop                                                              // 0x00789f7e    90
                         nop                                                              // 0x00789f7f    90
_jmp_addr_0x00789f80:    {disp32} mov       dword ptr [data_bytes + 0x41b9e0], 0x434f0000 // 0x00789f80    c705e019de0000004f43
                         {disp32} mov       dword ptr [data_bytes + 0x41b9e4], 0x40000000 // 0x00789f8a    c705e419de0000000040
                         {disp32} mov       dword ptr [data_bytes + 0x41b9e8], 0xc1300000 // 0x00789f94    c705e819de00000030c1
                         ret                                                              // 0x00789f9e    c3
                         nop                                                              // 0x00789f9f    90
_jmp_addr_0x00789fa0:    push               esi                                           // 0x00789fa0    56
                         push               edi                                           // 0x00789fa1    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00789fa2    8b7c2410
                         cmp                edi, 0x04                                     // 0x00789fa6    83ff04
                         mov.s              esi, ecx                                      // 0x00789fa9    8bf1
                         {disp32} je        _jmp_addr_0x0078a0b7                          // 0x00789fab    0f8406010000
                         cmp                edi, 0x05                                     // 0x00789fb1    83ff05
                         {disp8} jne        _jmp_addr_0x0078a01e                          // 0x00789fb4    7568
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41b9f0]        // 0x00789fb6    8b0df019de00
                         {disp32} lea       eax, dword ptr [esi + 0x00000490]             // 0x00789fbc    8d8690040000
                         mov                dword ptr [eax], ecx                          // 0x00789fc2    8908
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41b9f4]        // 0x00789fc4    8b15f419de00
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x00789fca    895004
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41b9f8]        // 0x00789fcd    8b0df819de00
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x00789fd3    894808
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b9e0]        // 0x00789fd6    a1e019de00
                         {disp32} lea       edx, dword ptr [esi + 0x0000049c]             // 0x00789fdb    8d969c040000
                         mov                dword ptr [edx], eax                          // 0x00789fe1    8902
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41b9e4]        // 0x00789fe3    8b0de419de00
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x00789fe9    894a04
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b9e8]        // 0x00789fec    a1e819de00
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x00789ff1    894208
                         {disp32} mov       dword ptr [data_bytes + 0x264150], 0x00000000 // 0x00789ff4    c70550a1c20000000000
                         {disp32} mov       dword ptr [_DAT_00e06020], 0x3f800000         // 0x00789ffe    c7052060e0000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x440024], 0xffffffff // 0x0078a008    c7052460e000ffffffff
                         {disp32} mov       dword ptr [data_bytes + 0x440028], 0x00000000 // 0x0078a012    c7052860e00000000000
                         {disp8} jmp        _jmp_addr_0x0078a077                          // 0x0078a01c    eb59
_jmp_addr_0x0078a01e:    push               ebx                                           // 0x0078a01e    53
                         {disp8} mov        ebx, dword ptr [esp + 0x10]                   // 0x0078a01f    8b5c2410
                         push               ebp                                           // 0x0078a023    55
                         {disp8} mov        ebp, dword ptr [ebx + 0x14]                   // 0x0078a024    8b6b14
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0078a027    8b4504
                         test               eax, 0x00100000                               // 0x0078a02a    a900001000
                         {disp8} je         _jmp_addr_0x0078a04b                          // 0x0078a02f    741a
                         test               eax, 0x00080000                               // 0x0078a031    a900000800
                         {disp8} je         _jmp_addr_0x0078a04b                          // 0x0078a036    7413
                         test               ah, -0x80                                     // 0x0078a038    f6c480
                         {disp8} je         _jmp_addr_0x0078a044                          // 0x0078a03b    7407
                         mov.s              ecx, ebp                                      // 0x0078a03d    8bcd
                         call               ?GetSizeFootprintData@LH3DMesh@@QAEIXZ        // 0x0078a03f    e8ec96c7ff
_jmp_addr_0x0078a044:    mov.s              ecx, ebp                                      // 0x0078a044    8bcd
                         call               ?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ         // 0x0078a046    e8659bc7ff
_jmp_addr_0x0078a04b:    {disp8} mov        ecx, dword ptr [ebx + 0x18]                   // 0x0078a04b    8b4b18
                         mov                eax, dword ptr [ecx]                          // 0x0078a04e    8b01
                         {disp32} lea       edx, dword ptr [esi + 0x0000049c]             // 0x0078a050    8d969c040000
                         push               edx                                           // 0x0078a056    52
                         {disp8} lea        edx, dword ptr [edi + 0x2b]                   // 0x0078a057    8d572b
                         call               dword ptr [eax + 0x1cc]                       // 0x0078a05a    ff90cc010000
                         {disp8} mov        ecx, dword ptr [ebx + 0x18]                   // 0x0078a060    8b4b18
                         mov                eax, dword ptr [ecx]                          // 0x0078a063    8b01
                         {disp32} lea       edx, dword ptr [esi + 0x00000490]             // 0x0078a065    8d9690040000
                         push               edx                                           // 0x0078a06b    52
                         {disp8} lea        edx, dword ptr [edi + 0x30]                   // 0x0078a06c    8d5730
                         call               dword ptr [eax + 0x1cc]                       // 0x0078a06f    ff90cc010000
                         pop                ebp                                           // 0x0078a075    5d
                         pop                ebx                                           // 0x0078a076    5b
_jmp_addr_0x0078a077:    {disp32} mov       eax, dword ptr [_game]                        // 0x0078a077    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x000059b4]             // 0x0078a07c    8b88b4590000
                         {disp8} mov        eax, dword ptr [ecx + 0x44]                   // 0x0078a082    8b4144
                         test               eax, eax                                      // 0x0078a085    85c0
                         {disp8} jne        _jmp_addr_0x0078a0a7                          // 0x0078a087    751e
                         cmp                edi, 0x02                                     // 0x0078a089    83ff02
                         {disp8} jne        _jmp_addr_0x0078a095                          // 0x0078a08c    7507
                         push               0x00c27810                                    // 0x0078a08e    681078c200
                         {disp8} jmp        _jmp_addr_0x0078a09f                          // 0x0078a093    eb0a
_jmp_addr_0x0078a095:    cmp                edi, 0x03                                     // 0x0078a095    83ff03
                         {disp8} jne        _jmp_addr_0x0078a0a7                          // 0x0078a098    750d
                         push               0x00c277f0                                    // 0x0078a09a    68f077c200
_jmp_addr_0x0078a09f:    call               _jmp_addr_0x00794a80                          // 0x0078a09f    e8dca90000
                         add                esp, 0x04                                     // 0x0078a0a4    83c404
_jmp_addr_0x0078a0a7:    {disp32} mov       dword ptr [esi + 0x00000470], 0x3f800000      // 0x0078a0a7    c786700400000000803f
                         {disp32} mov       dword ptr [esi + 0x000004ac], edi             // 0x0078a0b1    89beac040000
_jmp_addr_0x0078a0b7:    pop                edi                                           // 0x0078a0b7    5f
                         pop                esi                                           // 0x0078a0b8    5e
                         ret                0x0008                                        // 0x0078a0b9    c20800
                         nop                                                              // 0x0078a0bc    90
                         nop                                                              // 0x0078a0bd    90
                         nop                                                              // 0x0078a0be    90
                         nop                                                              // 0x0078a0bf    90
_jmp_addr_0x0078a0c0:    sub                esp, 0x34                                     // 0x0078a0c0    83ec34
                         push               ebx                                           // 0x0078a0c3    53
                         push               ebp                                           // 0x0078a0c4    55
                         push               esi                                           // 0x0078a0c5    56
                         mov.s              esi, ecx                                      // 0x0078a0c6    8bf1
                         push               edi                                           // 0x0078a0c8    57
                         {disp32} lea       edi, dword ptr [esi + 0x00000474]             // 0x0078a0c9    8dbe74040000
                         mov.s              eax, edi                                      // 0x0078a0cf    8bc7
                         mov                ecx, dword ptr [eax]                          // 0x0078a0d1    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0078a0d3    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0078a0d6    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0078a0d9    894c2414
                         {disp32} mov       ecx, dword ptr [esi + 0x00000484]             // 0x0078a0dd    8b8e84040000
                         push               ecx                                           // 0x0078a0e3    51
                         {disp32} lea       ebx, dword ptr [esi + 0x00000484]             // 0x0078a0e4    8d9e84040000
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0078a0ea    8954241c
                         {disp32} mov       edx, dword ptr [esi + 0x00000480]             // 0x0078a0ee    8b9680040000
                         {disp32} lea       ebp, dword ptr [esi + 0x00000480]             // 0x0078a0f4    8dae80040000
                         push               edx                                           // 0x0078a0fa    52
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0078a0fb    89442424
                         push               0x41a00000                                    // 0x0078a0ff    680000a041
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0078a104    8d442420
                         push               eax                                           // 0x0078a108    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0078a109    8d4c2430
                         push               ecx                                           // 0x0078a10d    51
                         call               ?SetPointFromPointDistanceHeadingAndPitch@GCamera@@SAXPAULHPoint@@ABU2@MMM@Z                        // 0x0078a10e    e8fd86cbff
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0078a113    d9442428
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0078a117    d8642434
                         mov.s              edx, edi                                      // 0x0078a11b    8bd7
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0078a11d    d944242c
                         mov                eax, dword ptr [edx]                          // 0x0078a121    8b02
                         {disp8} fsub       dword ptr [esp + 0x38]                        // 0x0078a123    d8642438
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0078a127    8b4a04
                         {disp8} mov        edx, dword ptr [edx + 0x08]                   // 0x0078a12a    8b5208
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0078a12d    89442434
                         {disp8} fstp       dword ptr [esp + 0x44]                        // 0x0078a131    d95c2444
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0078a135    d9442430
                         add                esp, 0x14                                     // 0x0078a139    83c414
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x0078a13c    d8642428
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0078a140    894c2424
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0078a144    89542428
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0078a148    d95c2434
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0078a14c    d8442414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0078a150    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0078a154    d9442418
                         {disp8} fadd       dword ptr [esp + 0x30]                        // 0x0078a158    d8442430
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0078a15c    d95c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0078a160    d944241c
                         {disp8} fadd       dword ptr [esp + 0x34]                        // 0x0078a164    d8442434
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0078a168    d95c241c
                         {disp32} fld       dword ptr [esi + 0x0000046c]                  // 0x0078a16c    d9866c040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078a172    d81d98a38a00
                         fnstsw             ax                                            // 0x0078a178    dfe0
                         test               ah, 0x40                                      // 0x0078a17a    f6c440
                         {disp32} jne       _jmp_addr_0x0078a26e                          // 0x0078a17d    0f85eb000000
                         {disp32} fld       dword ptr [esi + 0x0000049c]                  // 0x0078a183    d9869c040000
                         {disp32} mov       eax, dword ptr [esi + 0x0000046c]             // 0x0078a189    8b866c040000
                         cmp                eax, 0x3f800000                               // 0x0078a18f    3d0000803f
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0078a194    d8642420
                         {disp32} fld       dword ptr [esi + 0x000004a0]                  // 0x0078a198    d986a0040000
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0078a19e    89442410
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x0078a1a2    d8642424
                         mov.s              ecx, eax                                      // 0x0078a1a6    8bc8
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0078a1a8    d95c2430
                         {disp32} fld       dword ptr [esi + 0x000004a4]                  // 0x0078a1ac    d986a4040000
                         {disp8} fsub       dword ptr [esp + 0x28]                        // 0x0078a1b2    d8642428
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0078a1b6    d95c2434
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a1ba    d84c2410
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0078a1be    d9442430
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a1c2    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0078a1c6    d95c243c
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0078a1ca    d9442434
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a1ce    d84c2410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0078a1d2    894c2410
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0078a1d6    d95c2440
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0078a1da    d8442420
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0078a1de    d95c2420
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0078a1e2    d944243c
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0078a1e6    d8442424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0078a1ea    d95c2424
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0078a1ee    d9442440
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0078a1f2    d8442428
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0078a1f6    d95c2428
                         {disp32} fld       dword ptr [esi + 0x00000490]                  // 0x0078a1fa    d98690040000
                         {disp8} fsub       dword ptr [esp + 0x14]                        // 0x0078a200    d8642414
                         {disp32} fld       dword ptr [esi + 0x00000494]                  // 0x0078a204    d98694040000
                         {disp8} fsub       dword ptr [esp + 0x18]                        // 0x0078a20a    d8642418
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0078a20e    d95c243c
                         {disp32} fld       dword ptr [esi + 0x00000498]                  // 0x0078a212    d98698040000
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0078a218    d864241c
                         {disp8} fstp       dword ptr [esp + 0x40]                        // 0x0078a21c    d95c2440
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a220    d84c2410
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0078a224    d944243c
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a228    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0078a22c    d95c2430
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0078a230    d9442440
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0078a234    d84c2410
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0078a238    d95c2434
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0078a23c    d8442414
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0078a240    d95c2414
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0078a244    d9442430
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0078a248    d8442418
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0078a24c    d95c2418
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0078a250    d9442434
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0078a254    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0078a258    d95c241c
                         {disp8} jne        _jmp_addr_0x0078a26e                          // 0x0078a25c    7510
                         push               ebx                                           // 0x0078a25e    53
                         push               ebp                                           // 0x0078a25f    55
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0078a260    8d54241c
                         push               edx                                           // 0x0078a264    52
                         push               edi                                           // 0x0078a265    57
                         call               ?GetHeadingAndPitchFromPoints@GCamera@@SAXABULHPoint@@0PAM1@Z                             // 0x0078a266    e86586cbff
                         add                esp, 0x10                                     // 0x0078a26b    83c410
_jmp_addr_0x0078a26e:    {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x0078a26e    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078a274    d81d98a38a00
                         fnstsw             ax                                            // 0x0078a27a    dfe0
                         test               ah, 0x41                                      // 0x0078a27c    f6c441
                         {disp32} jne       _jmp_addr_0x0078a396                          // 0x0078a27f    0f8511010000
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x0078a285    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0078a28b    d81d90a38a00
                         fnstsw             ax                                            // 0x0078a291    dfe0
                         test               ah, 0x41                                      // 0x0078a293    f6c441
                         {disp8} jne        _jmp_addr_0x0078a2a2                          // 0x0078a296    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x0078a298    c786500400000000803f
_jmp_addr_0x0078a2a2:    {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x0078a2a2    d98650040000
                         push               ecx                                           // 0x0078a2a8    51
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1a6a0]             // 0x0078a2a9    d80da0368c00
                         fcos                                                             // 0x0078a2af    d9ff
                         {disp32} fsubr     qword ptr [__real@8@3fff8000000000000000]   // 0x0078a2b1    dc2d80b68a00
                         {disp32} fmul      qword ptr [__real@3fe0000000000000]           // 0x0078a2b7    dc0d60b28a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0078a2bd    d95c2414
                         {disp32} fld       dword ptr [esi + 0x0000045c]                  // 0x0078a2c1    d9865c040000
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x0078a2c7    d864242c
                         fstp               dword ptr [esp]                               // 0x0078a2cb    d91c24
                         push               ecx                                           // 0x0078a2ce    51
                         {disp32} fld       dword ptr [esi + 0x00000458]                  // 0x0078a2cf    d98658040000
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x0078a2d5    d864242c
                         fstp               dword ptr [esp]                               // 0x0078a2d9    d91c24
                         push               ecx                                           // 0x0078a2dc    51
                         {disp32} fld       dword ptr [esi + 0x00000454]                  // 0x0078a2dd    d98654040000
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0078a2e3    8d4c2444
                         {disp8} fsub       dword ptr [esp + 0x2c]                        // 0x0078a2e7    d864242c
                         fstp               dword ptr [esp]                               // 0x0078a2eb    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0078a2ee    e80d84cbff
                         {disp8} fld        dword ptr [esp + 0x40]                        // 0x0078a2f3    d9442440
                         push               ecx                                           // 0x0078a2f7    51
                         {disp8} fmul       dword ptr [esp + 0x14]                        // 0x0078a2f8    d84c2414
                         fstp               dword ptr [esp]                               // 0x0078a2fc    d91c24
                         push               ecx                                           // 0x0078a2ff    51
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0078a300    d9442444
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0078a304    d84c2418
                         fstp               dword ptr [esp]                               // 0x0078a308    d91c24
                         push               ecx                                           // 0x0078a30b    51
                         {disp8} fld        dword ptr [esp + 0x44]                        // 0x0078a30c    d9442444
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0078a310    8d4c2438
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0078a314    d84c241c
                         fstp               dword ptr [esp]                               // 0x0078a318    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0078a31b    e8e083cbff
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0078a320    d944242c
                         push               ecx                                           // 0x0078a324    51
                         {disp8} fadd       dword ptr [esp + 0x24]                        // 0x0078a325    d8442424
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0078a329    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0078a32d    d9442434
                         {disp8} fadd       dword ptr [esp + 0x28]                        // 0x0078a331    d8442428
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0078a335    d95c2428
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0078a339    d9442438
                         {disp8} fadd       dword ptr [esp + 0x2c]                        // 0x0078a33d    d844242c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0078a341    d95c242c
                         {disp32} fld       dword ptr [esi + 0x00000468]                  // 0x0078a345    d98668040000
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0078a34b    d8642420
                         fstp               dword ptr [esp]                               // 0x0078a34f    d91c24
                         push               ecx                                           // 0x0078a352    51
                         {disp32} fld       dword ptr [esi + 0x00000464]                  // 0x0078a353    d98664040000
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0078a359    d8642420
                         fstp               dword ptr [esp]                               // 0x0078a35d    d91c24
                         push               ecx                                           // 0x0078a360    51
                         {disp32} fld       dword ptr [esi + 0x00000460]                  // 0x0078a361    d98660040000
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0078a367    8d4c2444
                         {disp8} fsub       dword ptr [esp + 0x20]                        // 0x0078a36b    d8642420
                         fstp               dword ptr [esp]                               // 0x0078a36f    d91c24
                         call               @__ct__7LHPointFfff@20                        // 0x0078a372    e88983cbff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0078a377    8b442410
                         push               eax                                           // 0x0078a37b    50
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0078a37c    8d4c2430
                         push               ecx                                           // 0x0078a380    51
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0078a381    8d4c2440
                         call               _jmp_addr_0x0044e9f0                          // 0x0078a385    e86646ccff
                         push               eax                                           // 0x0078a38a    50
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0078a38b    8d4c2418
                         call               _jmp_addr_0x0044ea40                          // 0x0078a38f    e8ac46ccff
                         {disp8} jmp        _jmp_addr_0x0078a3a0                          // 0x0078a394    eb0a
_jmp_addr_0x0078a396:    {disp32} mov       dword ptr [esi + 0x00000450], 0x00000000      // 0x0078a396    c7865004000000000000
_jmp_addr_0x0078a3a0:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0078a3a0    8b442420
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0078a3a4    8b542448
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0078a3a8    8b4c2424
                         mov                dword ptr [edx], eax                          // 0x0078a3ac    8902
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0078a3ae    8b442428
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0078a3b2    894a04
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0078a3b5    8b4c244c
                         {disp8} mov        dword ptr [edx + 0x08], eax                   // 0x0078a3b9    894208
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0078a3bc    8b542414
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0078a3c0    8b442418
                         pop                edi                                           // 0x0078a3c4    5f
                         mov                dword ptr [ecx], edx                          // 0x0078a3c5    8911
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0078a3c7    8b542418
                         pop                esi                                           // 0x0078a3cb    5e
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0078a3cc    894104
                         pop                ebp                                           // 0x0078a3cf    5d
                         {disp8} mov        dword ptr [ecx + 0x08], edx                   // 0x0078a3d0    895108
                         pop                ebx                                           // 0x0078a3d3    5b
                         add                esp, 0x34                                     // 0x0078a3d4    83c434
                         ret                0x000c                                        // 0x0078a3d7    c20c00
                         nop                                                              // 0x0078a3da    90
                         nop                                                              // 0x0078a3db    90
                         nop                                                              // 0x0078a3dc    90
                         nop                                                              // 0x0078a3dd    90
                         nop                                                              // 0x0078a3de    90
                         nop                                                              // 0x0078a3df    90
?UpdateMain@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z:
                         sub                esp, 0x58                                     // 0x0078a3e0    83ec58
                         {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x0078a3e3    8b44246c
                         push               ebx                                           // 0x0078a3e7    53
                         push               ebp                                           // 0x0078a3e8    55
                         {disp8} mov        ebp, dword ptr [esp + 0x64]                   // 0x0078a3e9    8b6c2464
                         push               esi                                           // 0x0078a3ed    56
                         push               edi                                           // 0x0078a3ee    57
                         push               0x0                                           // 0x0078a3ef    6a00
                         mov.s              esi, ecx                                      // 0x0078a3f1    8bf1
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078a3f3    8b4804
                         mov                eax, dword ptr [eax]                          // 0x0078a3f6    8b00
                         mov                edx, dword ptr [esi]                          // 0x0078a3f8    8b16
                         push               0x429c0000                                    // 0x0078a3fa    6800009c42
                         push               ecx                                           // 0x0078a3ff    51
                         push               eax                                           // 0x0078a400    50
                         push               ebp                                           // 0x0078a401    55
                         mov.s              ecx, esi                                      // 0x0078a402    8bce
                         call               dword ptr [edx + 0x14]                        // 0x0078a404    ff5214
                         {disp32} mov       ecx, dword ptr [esi + 0x0000043c]             // 0x0078a407    8b8e3c040000
                         mov.s              edi, eax                                      // 0x0078a40d    8bf8
                         neg                eax                                           // 0x0078a40f    f7d8
                         sbb.s              eax, eax                                      // 0x0078a411    1bc0
                         {disp32} mov       dword ptr [esi + 0x0000012c], eax             // 0x0078a413    89862c010000
                         {disp32} lea       edx, dword ptr [esi + 0x00000260]             // 0x0078a419    8d9660020000
                         push               edx                                           // 0x0078a41f    52
                         {disp32} lea       eax, dword ptr [esi + 0x0000026c]             // 0x0078a420    8d866c020000
                         {disp32} mov       byte ptr [esi + 0x00000399], 0x01             // 0x0078a426    c6869903000001
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0078a42d    8b5104
                         push               eax                                           // 0x0078a430    50
                         push               edx                                           // 0x0078a431    52
                         xor.s              edx, edx                                      // 0x0078a432    33d2
                         {disp8} mov        dword ptr [esp + 0x1c], edi                   // 0x0078a434    897c241c
                         call               _jmp_addr_0x0086d4e0                          // 0x0078a438    e8a3300e00
                         {disp32} mov       eax, dword ptr [esi + 0x00000124]             // 0x0078a43d    8b8624010000
                         mov                ebx, 0x00000004                               // 0x0078a443    bb04000000
                         cmp.s              eax, ebx                                      // 0x0078a448    3bc3
                         {disp8} je         _jmp_addr_0x0078a496                          // 0x0078a44a    744a
                         {disp32} fld       dword ptr [esi + 0x00000450]                  // 0x0078a44c    d98650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0078a452    d81d90a38a00
                         fnstsw             ax                                            // 0x0078a458    dfe0
                         test               ah, 0x41                                      // 0x0078a45a    f6c441
                         {disp8} jne        _jmp_addr_0x0078a469                          // 0x0078a45d    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x0078a45f    c786500400000000803f
_jmp_addr_0x0078a469:    {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078a469    d9442470
                         {disp32} fmul      dword ptr [__real@3f333333]                   // 0x0078a46d    d80d38b28a00
                         {disp32} fsubr     dword ptr [esi + 0x00000450]                  // 0x0078a473    d8ae50040000
                         {disp32} fst       dword ptr [esi + 0x00000450]                  // 0x0078a479    d99650040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078a47f    d81d98a38a00
                         fnstsw             ax                                            // 0x0078a485    dfe0
                         test               ah, 0x41                                      // 0x0078a487    f6c441
                         {disp8} je         _jmp_addr_0x0078a496                          // 0x0078a48a    740a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x00000000      // 0x0078a48c    c7865004000000000000
_jmp_addr_0x0078a496:    {disp32} mov       al, byte ptr [data_bytes + 0x41b9d8]          // 0x0078a496    a0d819de00
                         test               al, 0x01                                      // 0x0078a49b    a801
                         {disp8} jne        _jmp_addr_0x0078a4b7                          // 0x0078a49d    7518
                         mov.s              dl, al                                        // 0x0078a49f    8ad0
                         or                 dl, 1                                         // 0x0078a4a1    80ca01
                         push               0x0078afc0                                    // 0x0078a4a4    68c0af7800
                         {disp32} mov       byte ptr [data_bytes + 0x41b9d8], dl          // 0x0078a4a9    8815d819de00
                         call               _atexit                                       // 0x0078a4af    e8ddb20300
                         add                esp, 0x04                                     // 0x0078a4b4    83c404
_jmp_addr_0x0078a4b7:    cmp                dword ptr [esi + 0x000004ac], 0x05            // 0x0078a4b7    83beac04000005
                         {disp8} je         _jmp_addr_0x0078a4e6                          // 0x0078a4be    7426
                         {disp32} mov       eax, dword ptr [data_bytes + 0x440028]        // 0x0078a4c0    a12860e000
                         test               eax, eax                                      // 0x0078a4c5    85c0
                         {disp8} jne        _jmp_addr_0x0078a4e6                          // 0x0078a4c7    751d
                         {disp32} fld       dword ptr [_DAT_00e06020]                     // 0x0078a4c9    d9052060e000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0078a4cf    d81d90a38a00
                         fnstsw             ax                                            // 0x0078a4d5    dfe0
                         test               ah, 0x40                                      // 0x0078a4d7    f6c440
                         {disp8} je         _jmp_addr_0x0078a4e6                          // 0x0078a4da    740a
                         {disp32} mov       dword ptr [_DAT_00e06020], 0x00000000         // 0x0078a4dc    c7052060e00000000000
_jmp_addr_0x0078a4e6:    {disp32} mov       eax, dword ptr [esi + 0x00000124]             // 0x0078a4e6    8b8624010000
                         dec                eax                                           // 0x0078a4ec    48
                         {disp32} je        _jmp_addr_0x0078a645                          // 0x0078a4ed    0f8452010000
                         sub                eax, 0x03                                     // 0x0078a4f3    83e803
                         {disp8} je         _jmp_addr_0x0078a521                          // 0x0078a4f6    7429
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]             // 0x0078a4f8    8b842480000000
                         {disp8} mov        ecx, dword ptr [esp + 0x7c]                   // 0x0078a4ff    8b4c247c
                         {disp8} mov        edx, dword ptr [esp + 0x78]                   // 0x0078a503    8b542478
                         push               eax                                           // 0x0078a507    50
                         {disp8} mov        eax, dword ptr [esp + 0x78]                   // 0x0078a508    8b442478
                         push               ecx                                           // 0x0078a50c    51
                         {disp8} mov        ecx, dword ptr [esp + 0x78]                   // 0x0078a50d    8b4c2478
                         push               edx                                           // 0x0078a511    52
                         push               eax                                           // 0x0078a512    50
                         push               ecx                                           // 0x0078a513    51
                         push               ebp                                           // 0x0078a514    55
                         mov.s              ecx, esi                                      // 0x0078a515    8bce
                         call               @UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29                          // 0x0078a517    e8c4b70000
                         {disp32} jmp       _jmp_addr_0x0078af9c                          // 0x0078a51c    e97b0a0000
_jmp_addr_0x0078a521:    {disp32} mov       eax, dword ptr [esi + 0x0000044c]             // 0x0078a521    8b864c040000
                         test               eax, eax                                      // 0x0078a527    85c0
                         {disp8} jge        _jmp_addr_0x0078a535                          // 0x0078a529    7d0a
                         {disp32} mov       dword ptr [esi + 0x00000438], 0x00000001      // 0x0078a52b    c7863804000001000000
_jmp_addr_0x0078a535:    push               ebp                                           // 0x0078a535    55
                         {disp32} lea       edx, dword ptr [esi + 0x000003e0]             // 0x0078a536    8d96e0030000
                         push               edx                                           // 0x0078a53c    52
                         {disp32} lea       eax, dword ptr [esi + 0x000003d4]             // 0x0078a53d    8d86d4030000
                         push               eax                                           // 0x0078a543    50
                         mov.s              ecx, esi                                      // 0x0078a544    8bce
                         call               _jmp_addr_0x0078a0c0                          // 0x0078a546    e875fbffff
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078a54b    d9442470
                         {disp32} fmul      dword ptr [__real@3f400000]                   // 0x0078a54f    d80d74b28a00
                         {disp32} fadd      dword ptr [esi + 0x00000450]                  // 0x0078a555    d88650040000
                         {disp32} fst       dword ptr [esi + 0x00000450]                  // 0x0078a55b    d99650040000
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0078a561    d81d90a38a00
                         fnstsw             ax                                            // 0x0078a567    dfe0
                         test               ah, 0x41                                      // 0x0078a569    f6c441
                         {disp8} jne        _jmp_addr_0x0078a578                          // 0x0078a56c    750a
                         {disp32} mov       dword ptr [esi + 0x00000450], 0x3f800000      // 0x0078a56e    c786500400000000803f
_jmp_addr_0x0078a578:    {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x0078a578    8b442474
                         test               eax, eax                                      // 0x0078a57c    85c0
                         {disp8} jne        _jmp_addr_0x0078a5df                          // 0x0078a57e    755f
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0078a580    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x0078a586    8b8900032500
                         push               0x7                                           // 0x0078a58c    6a07
                         call               _jmp_addr_0x00470af0                          // 0x0078a58e    e85d65ceff
                         test               eax, eax                                      // 0x0078a593    85c0
                         {disp8} jne        _jmp_addr_0x0078a5df                          // 0x0078a595    7548
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078a597    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x0078a59d    8b8a00032500
                         push               0x8                                           // 0x0078a5a3    6a08
                         call               _jmp_addr_0x00470af0                          // 0x0078a5a5    e84665ceff
                         test               eax, eax                                      // 0x0078a5aa    85c0
                         {disp8} jne        _jmp_addr_0x0078a5df                          // 0x0078a5ac    7531
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0078a5ae    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0078a5b3    8b8800032500
                         push               0x9                                           // 0x0078a5b9    6a09
                         call               _jmp_addr_0x00470af0                          // 0x0078a5bb    e83065ceff
                         test               eax, eax                                      // 0x0078a5c0    85c0
                         {disp8} jne        _jmp_addr_0x0078a5df                          // 0x0078a5c2    751b
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0078a5c4    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x0078a5ca    8b8900032500
                         push               0xa                                           // 0x0078a5d0    6a0a
                         call               _jmp_addr_0x00470af0                          // 0x0078a5d2    e81965ceff
                         test               eax, eax                                      // 0x0078a5d7    85c0
                         {disp32} je        _jmp_addr_0x0078af9c                          // 0x0078a5d9    0f84bd090000
_jmp_addr_0x0078a5df:    {disp32} mov       edx, dword ptr [_game]                        // 0x0078a5df    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x0078a5e5    8b8a90002500
                         push               0x00c2774c                                    // 0x0078a5eb    684c77c200
                         call               _jmp_addr_0x006f0a80                          // 0x0078a5f0    e88b64f6ff
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0078a5f5    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250090]             // 0x0078a5fa    8b8890002500
                         push               0x00c27798                                    // 0x0078a600    689877c200
                         call               _jmp_addr_0x006f0a80                          // 0x0078a605    e87664f6ff
                         {disp32} mov       ecx, dword ptr [_game]                        // 0x0078a60a    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250090]             // 0x0078a610    8b8990002500
                         push               0x00c277b8                                    // 0x0078a616    68b877c200
                         call               _jmp_addr_0x006f0a80                          // 0x0078a61b    e86064f6ff
                         {disp32} mov       edx, dword ptr [_game]                        // 0x0078a620    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250090]             // 0x0078a626    8b8a90002500
                         push               0x00c27770                                    // 0x0078a62c    687077c200
                         call               _jmp_addr_0x006f0a80                          // 0x0078a631    e84a64f6ff
                         {disp32} mov       dword ptr [esi + 0x00000438], 0x00000001      // 0x0078a636    c7863804000001000000
                         {disp32} jmp       _jmp_addr_0x0078af9c                          // 0x0078a640    e957090000
_jmp_addr_0x0078a645:    {disp32} mov       eax, dword ptr [esi + 0x0000044c]             // 0x0078a645    8b864c040000
                         xor.s              ebp, ebp                                      // 0x0078a64b    33ed
                         cmp.s              eax, ebp                                      // 0x0078a64d    3bc5
                         {disp8} jl         _jmp_addr_0x0078a657                          // 0x0078a64f    7c06
                         {disp32} mov       dword ptr [esi + 0x00000438], ebx             // 0x0078a651    899e38040000
_jmp_addr_0x0078a657:    {disp32} fld       dword ptr [data_bytes + 0x4700c8]             // 0x0078a657    d905c860e300
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbdbc]        // 0x0078a65d    a1bc1dea00
                         {disp32} fld       dword ptr [data_bytes + 0x4700cc]             // 0x0078a662    d905cc60e300
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbdc0]        // 0x0078a668    8b0dc01dea00
                         {disp32} fld       dword ptr [data_bytes + 0x4700d0]             // 0x0078a66e    d905d060e300
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0078a674    89442430
                         {disp32} fld       dword ptr [data_bytes + 0x4dbdb8]             // 0x0078a678    d905b81dea00
                         {disp8} mov        dword ptr [esp + 0x34], ecx                   // 0x0078a67e    894c2434
                         fld                st(3)                                         // 0x0078a682    d9c3
                         fsubrp             st(1), st                                     // 0x0078a684    dee1
                         fld                st(2)                                         // 0x0078a686    d9c2
                         {disp8} fsub       dword ptr [esp + 0x30]                        // 0x0078a688    d8642430
                         fld                st(2)                                         // 0x0078a68c    d9c2
                         {disp8} fsub       dword ptr [esp + 0x34]                        // 0x0078a68e    d8642434
                         fld                st(0)                                         // 0x0078a692    d9c0
                         fmul               st, st(1)                                     // 0x0078a694    d8c9
                         fld                st(2)                                         // 0x0078a696    d9c2
                         fmul               st, st(3)                                     // 0x0078a698    d8cb
                         faddp              st(1), st                                     // 0x0078a69a    dec1
                         fld                st(3)                                         // 0x0078a69c    d9c3
                         fmul               st, st(4)                                     // 0x0078a69e    d8cc
                         faddp              st(1), st                                     // 0x0078a6a0    dec1
                         fsqrt                                                            // 0x0078a6a2    d9fa
                         {disp32} fstp      dword ptr [esp + 0x00000080]                  // 0x0078a6a4    d99c2480000000
                         fstp               st(0)                                         // 0x0078a6ab    ddd8
                         fstp               st(0)                                         // 0x0078a6ad    ddd8
                         fstp               st(0)                                         // 0x0078a6af    ddd8
                         fld                st(2)                                         // 0x0078a6b1    d9c2
                         fmulp              st(3), st                                     // 0x0078a6b3    decb
                         fld                st(0)                                         // 0x0078a6b5    d9c0
                         fmul               st, st(1)                                     // 0x0078a6b7    d8c9
                         faddp              st(3), st                                     // 0x0078a6b9    dec3
                         fld                st(1)                                         // 0x0078a6bb    d9c1
                         fmul               st, st(2)                                     // 0x0078a6bd    d8ca
                         faddp              st(3), st                                     // 0x0078a6bf    dec3
                         fxch               st(2)                                         // 0x0078a6c1    d9ca
                         fsqrt                                                            // 0x0078a6c3    d9fa
                         fxch               st(2)                                         // 0x0078a6c5    d9ca
                         fstp               st(0)                                         // 0x0078a6c7    ddd8
                         fstp               st(0)                                         // 0x0078a6c9    ddd8
                         {disp32} fcomp     dword ptr [rdata_bytes + 0xf5c30]             // 0x0078a6cb    d81d30ec9900
                         fnstsw             ax                                            // 0x0078a6d1    dfe0
                         test               ah, 0x01                                      // 0x0078a6d3    f6c401
                         {disp8} mov        eax, dword ptr [esp + 0x74]                   // 0x0078a6d6    8b442474
                         {disp32} je        _jmp_addr_0x0078a932                          // 0x0078a6da    0f8452020000
                         cmp                dword ptr [esi + 0x00000134], ebp             // 0x0078a6e0    39ae34010000
                         {disp8} jne        _jmp_addr_0x0078a6f4                          // 0x0078a6e6    750c
                         cmp.s              eax, ebp                                      // 0x0078a6e8    3bc5
                         {disp32} je        _jmp_addr_0x0078a932                          // 0x0078a6ea    0f8442020000
                         cmp.s              edi, ebp                                      // 0x0078a6f0    3bfd
                         {disp8} je         _jmp_addr_0x0078a720                          // 0x0078a6f2    742c
_jmp_addr_0x0078a6f4:    cmp.s              eax, ebp                                      // 0x0078a6f4    3bc5
                         {disp32} je        _jmp_addr_0x0078a932                          // 0x0078a6f6    0f8436020000
                         cmp                edi, dword ptr [esi + 0x000004c0]             // 0x0078a6fc    3bbec0040000
                         {disp32} jne       _jmp_addr_0x0078a932                          // 0x0078a702    0f852a020000
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x0078a708    d9842480000000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ebd0]             // 0x0078a70f    d81dd07b8c00
                         fnstsw             ax                                            // 0x0078a715    dfe0
                         test               ah, 0x01                                      // 0x0078a717    f6c401
                         {disp32} je        _jmp_addr_0x0078a932                          // 0x0078a71a    0f8412020000
_jmp_addr_0x0078a720:    {disp8} fild       dword ptr [esp + 0x10]                        // 0x0078a720    db442410
                         {disp32} lea       eax, dword ptr [esi + 0x000003b4]             // 0x0078a724    8d86b4030000
                         {disp32} mov       dword ptr [esi + 0x000004c0], edi             // 0x0078a72a    89bec0040000
                         {disp8} mov        dword ptr [esp + 0x20], 0x42200000            // 0x0078a730    c744242000002042
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1dc9c]             // 0x0078a738    d80d9c6c8c00
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0078a73e    8b4c2420
                         mov.s              edx, eax                                      // 0x0078a742    8bd0
                         mov                dword ptr [edx], ecx                          // 0x0078a744    890a
                         fld                st(0)                                         // 0x0078a746    d9c0
                         {disp8} mov        dword ptr [esp + 0x24], 0x41800000            // 0x0078a748    c744242400008041
                         fcos                                                             // 0x0078a750    d9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x24]                   // 0x0078a752    8b4c2424
                         {disp8} mov        dword ptr [edx + 0x04], ecx                   // 0x0078a756    894a04
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0078a759    c744242800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0078a761    8b4c2428
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0078a765    894a08
                         {disp32} lea       ecx, dword ptr [esi + 0x000003c0]             // 0x0078a768    8d8ec0030000
                         {disp8} mov        dword ptr [esp + 0x20], 0x41a00000            // 0x0078a76e    c74424200000a041
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x0078a776    8b7c2420
                         mov.s              edx, ecx                                      // 0x0078a77a    8bd1
                         mov                dword ptr [edx], edi                          // 0x0078a77c    893a
                         {disp8} mov        dword ptr [esp + 0x24], 0x41200000            // 0x0078a77e    c744242400002041
                         {disp8} mov        edi, dword ptr [esp + 0x24]                   // 0x0078a786    8b7c2424
                         {disp8} mov        dword ptr [edx + 0x04], edi                   // 0x0078a78a    897a04
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000000            // 0x0078a78d    c744242800000000
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0078a795    8b7c2428
                         {disp8} mov        dword ptr [edx + 0x08], edi                   // 0x0078a799    897a08
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078a79c    8b5008
                         {disp32} mov       dword ptr [esp + 0x00000080], edx             // 0x0078a79f    89942480000000
                         {disp8} mov        dword ptr [esp + 0x78], 0x00000000            // 0x0078a7a6    c744247800000000
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0078a7ae    c744241000000000
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x0078a7b6    d95c2458
                         fsin                                                             // 0x0078a7ba    d9fe
                         fld                st(0)                                         // 0x0078a7bc    d9c0
                         fchs                                                             // 0x0078a7be    d9e0
                         fld                dword ptr [eax]                               // 0x0078a7c0    d900
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0078a7c2    d94004
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0078a7c5    d9442458
                         fmul               st, st(2)                                     // 0x0078a7c9    d8ca
                         fld                st(3)                                         // 0x0078a7cb    d9c3
                         {disp32} fmul      dword ptr [esp + 0x00000080]                  // 0x0078a7cd    d88c2480000000
                         faddp              st(1), st                                     // 0x0078a7d4    dec1
                         {disp8} fadd       dword ptr [esp + 0x78]                        // 0x0078a7d6    d8442478
                         fstp               dword ptr [eax]                               // 0x0078a7da    d918
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0078a7dc    d95804
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0078a7df    d9442458
                         {disp32} fmul      dword ptr [esp + 0x00000080]                  // 0x0078a7e3    d88c2480000000
                         fld                st(3)                                         // 0x0078a7ea    d9c3
                         fmul               st, st(2)                                     // 0x0078a7ec    d8ca
                         faddp              st(1), st                                     // 0x0078a7ee    dec1
                         {disp8} fadd       dword ptr [esp + 0x78]                        // 0x0078a7f0    d8442478
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0078a7f4    d95808
                         mov                edx, dword ptr [ecx]                          // 0x0078a7f7    8b11
                         {disp32} mov       dword ptr [esp + 0x00000080], edx             // 0x0078a7f9    89942480000000
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0078a800    8b5108
                         fstp               st(0)                                         // 0x0078a803    ddd8
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0078a805    d94104
                         {disp8} mov        dword ptr [esp + 0x78], edx                   // 0x0078a808    89542478
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0078a80c    d9442458
                         {disp32} fmul      dword ptr [esp + 0x00000080]                  // 0x0078a810    d88c2480000000
                         fxch               st(2)                                         // 0x0078a817    d9ca
                         {disp8} fmul       dword ptr [esp + 0x78]                        // 0x0078a819    d84c2478
                         faddp              st(2), st                                     // 0x0078a81d    dec2
                         fxch               st(1)                                         // 0x0078a81f    d9c9
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x0078a821    d8442410
                         fstp               dword ptr [ecx]                               // 0x0078a825    d919
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0078a827    d95904
                         {disp32} fmul      dword ptr [esp + 0x00000080]                  // 0x0078a82a    d88c2480000000
                         {disp8} fld        dword ptr [esp + 0x58]                        // 0x0078a831    d9442458
                         {disp8} fmul       dword ptr [esp + 0x78]                        // 0x0078a835    d84c2478
                         faddp              st(1), st                                     // 0x0078a839    dec1
                         {disp8} fadd       dword ptr [esp + 0x10]                        // 0x0078a83b    d8442410
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0078a83f    d95908
                         fld                dword ptr [eax]                               // 0x0078a842    d900
                         {disp32} fadd      dword ptr [esi + 0x000003d4]                  // 0x0078a844    d886d4030000
                         {disp32} fld       dword ptr [esi + 0x000003d8]                  // 0x0078a84a    d986d8030000
                         {disp8} fadd       dword ptr [eax + 0x04]                        // 0x0078a850    d84004
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0078a853    d95c2430
                         {disp32} fld       dword ptr [esi + 0x000003dc]                  // 0x0078a857    d986dc030000
                         {disp8} fadd       dword ptr [eax + 0x08]                        // 0x0078a85d    d84008
                         {disp32} lea       eax, dword ptr [esi + 0x0000039c]             // 0x0078a860    8d869c030000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0078a866    d95c2434
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a86a    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0078a870    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0078a874    d9442430
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0078a878    8b542420
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a87c    d80db4a38a00
                         mov                dword ptr [eax], edx                          // 0x0078a882    8910
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0078a884    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0078a888    d9442434
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0078a88c    8b542424
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a890    d80db4a38a00
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0078a896    895004
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0078a899    d95c2428
                         {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0078a89d    8b542428
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0078a8a1    895008
                         fld                dword ptr [ecx]                               // 0x0078a8a4    d901
                         {disp32} fadd      dword ptr [esi + 0x000003e0]                  // 0x0078a8a6    d886e0030000
                         {disp32} lea       eax, dword ptr [esi + 0x000003a8]             // 0x0078a8ac    8d86a8030000
                         {disp32} fld       dword ptr [esi + 0x000003e4]                  // 0x0078a8b2    d986e4030000
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x0078a8b8    d84104
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0078a8bb    d95c2430
                         {disp32} fld       dword ptr [esi + 0x000003e8]                  // 0x0078a8bf    d986e8030000
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x0078a8c5    d84108
                         {disp32} mov       dword ptr [esi + 0x00000438], 0x00000003      // 0x0078a8c8    c7863804000003000000
                         {disp32} mov       dword ptr [esi + 0x00000130], ebp             // 0x0078a8d2    89ae30010000
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078a8d8    89ae70040000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0078a8de    d95c2434
                         {disp32} mov       dword ptr [esi + 0x000004ac], 0xffffffff      // 0x0078a8e2    c786ac040000ffffffff
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a8ec    d80db4a38a00
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0078a8f2    d95c2420
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0078a8f6    d9442430
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0078a8fa    8b4c2420
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a8fe    d80db4a38a00
                         mov                dword ptr [eax], ecx                          // 0x0078a904    8908
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0078a906    d95c2424
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0078a90a    d9442434
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0078a90e    8b542424
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078a912    d80db4a38a00
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0078a918    895004
                         {disp32} mov       edx, dword ptr [esi + 0x000003b8]             // 0x0078a91b    8b96b8030000
                         {disp32} mov       dword ptr [esi + 0x000003a0], edx             // 0x0078a921    8996a0030000
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0078a927    d95c2428
                         {disp8} mov        ecx, dword ptr [esp + 0x28]                   // 0x0078a92b    8b4c2428
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0078a92f    894808
_jmp_addr_0x0078a932:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0078a932    8b0d5c19d000
                         xor.s              eax, eax                                      // 0x0078a938    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a59]               // 0x0078a93a    8a81595a2000
                         xor.s              ebx, ebx                                      // 0x0078a940    33db
                         {disp8} mov        dword ptr [esp + 0x78], ebx                   // 0x0078a942    895c2478
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0078a946    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]              // 0x0078a949    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]              // 0x0078a94c    8d0450
                         shl                eax, 5                                        // 0x0078a94f    c1e005
                         {disp32} mov       edi, dword ptr [eax + ecx * 0x1 + 0x00000a64] // 0x0078a952    8bbc08640a0000
                         xor.s              edx, edx                                      // 0x0078a959    33d2
                         cmp.s              edi, ebp                                      // 0x0078a95b    3bfd
                         sete               dl                                            // 0x0078a95d    0f94c2
                         add                edx, 0x31                                     // 0x0078a960    83c231
                         mov.s              edi, edx                                      // 0x0078a963    8bfa
                         cmp                edi, 0x35                                     // 0x0078a965    83ff35
                         {disp32} jg        _jmp_addr_0x0078aa5b                          // 0x0078a968    0f8fed000000
_jmp_addr_0x0078a96e:    {disp8} jne        _jmp_addr_0x0078a98f                          // 0x0078a96e    751f
                         {disp32} mov       eax, dword ptr [data_bytes + 0x41b9f0]        // 0x0078a970    a1f019de00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x41b9f4]        // 0x0078a975    8b0df419de00
                         {disp32} mov       edx, dword ptr [data_bytes + 0x41b9f8]        // 0x0078a97b    8b15f819de00
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0078a981    8944242c
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x0078a985    894c2430
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0078a989    89542434
                         {disp8} jmp        _jmp_addr_0x0078a9b7                          // 0x0078a98d    eb28
_jmp_addr_0x0078a98f:    {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x0078a98f    8b44246c
                         {disp8} mov        ecx, dword ptr [eax + 0x18]                   // 0x0078a993    8b4818
                         mov                eax, dword ptr [ecx]                          // 0x0078a996    8b01
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0078a998    8d54242c
                         push               edx                                           // 0x0078a99c    52
                         mov.s              edx, edi                                      // 0x0078a99d    8bd7
                         call               dword ptr [eax + 0x1cc]                       // 0x0078a99f    ff90cc010000
                         cmp                edi, 0x31                                     // 0x0078a9a5    83ff31
                         {disp8} jne        _jmp_addr_0x0078a9b7                          // 0x0078a9a8    750d
                         {disp32} mov       al, byte ptr [data_bytes + 0x41af8c]          // 0x0078a9aa    a08c0fde00
                         test               al, al                                        // 0x0078a9af    84c0
                         {disp32} jne       _jmp_addr_0x0078aa51                          // 0x0078a9b1    0f859a000000
_jmp_addr_0x0078a9b7:    {disp32} mov       eax, dword ptr [data_bytes + 0x4bf2c4]        // 0x0078a9b7    a1c452e800
                         {disp32} mov       ebp, dword ptr [data_bytes + 0x4bf2c0]        // 0x0078a9bc    8b2dc052e800
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0078a9c2    89442424
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0078a9c6    8944241c
                         {disp8} lea        eax, dword ptr [esp + 0x14]                   // 0x0078a9ca    8d442414
                         push               eax                                           // 0x0078a9ce    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000084]             // 0x0078a9cf    8d8c2484000000
                         push               ecx                                           // 0x0078a9d6    51
                         {disp8} lea        edx, dword ptr [esp + 0x18]                   // 0x0078a9d7    8d542418
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0078a9db    8d4c2434
                         {disp8} mov        dword ptr [esp + 0x20], ebp                   // 0x0078a9df    896c2420
                         call               ?ProjectPoint@LH3DTech@@SAIPAULHPoint@@PAH1PAM@Z   // 0x0078a9e3    e8a8e90800
                         test               eax, eax                                      // 0x0078a9e8    85c0
                         {disp8} je         _jmp_addr_0x0078aa3e                          // 0x0078a9ea    7452
                         cmp                edi, 0x31                                     // 0x0078a9ec    83ff31
                         {disp8} jne        _jmp_addr_0x0078a9f9                          // 0x0078a9ef    7508
                         add                dword ptr [esp + 0x00000080], 0x0a            // 0x0078a9f1    838424800000000a
_jmp_addr_0x0078a9f9:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0078a9f9    8b542410
                         {disp32} mov       eax, dword ptr [edi * 0x8 + 0x0099ea7c]       // 0x0078a9fd    8b04fd7cea9900
                         {disp32} mov       ecx, dword ptr [edi * 0x8 + 0x0099ea80]       // 0x0078aa04    8b0cfd80ea9900
                         mov.s              ebx, edx                                      // 0x0078aa0b    8bda
                         sub.s              ebx, eax                                      // 0x0078aa0d    2bd8
                         cmp.s              ebp, ebx                                      // 0x0078aa0f    3beb
                         {disp8} jl         _jmp_addr_0x0078aa3a                          // 0x0078aa11    7c27
                         add.s              eax, edx                                      // 0x0078aa13    03c2
                         cmp.s              ebp, eax                                      // 0x0078aa15    3be8
                         {disp8} jg         _jmp_addr_0x0078aa3a                          // 0x0078aa17    7f21
                         {disp32} mov       eax, dword ptr [esp + 0x00000080]             // 0x0078aa19    8b842480000000
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0078aa20    8b54241c
                         mov.s              ebx, eax                                      // 0x0078aa24    8bd8
                         sub.s              ebx, ecx                                      // 0x0078aa26    2bd9
                         cmp.s              edx, ebx                                      // 0x0078aa28    3bd3
                         {disp8} jl         _jmp_addr_0x0078aa3a                          // 0x0078aa2a    7c0e
                         add.s              ecx, eax                                      // 0x0078aa2c    03c8
                         cmp.s              edx, ecx                                      // 0x0078aa2e    3bd1
                         {disp8} jg         _jmp_addr_0x0078aa3a                          // 0x0078aa30    7f08
                         mov.s              ebx, edi                                      // 0x0078aa32    8bdf
                         {disp8} mov        dword ptr [esp + 0x78], ebx                   // 0x0078aa34    895c2478
                         {disp8} jmp        _jmp_addr_0x0078aa3e                          // 0x0078aa38    eb04
_jmp_addr_0x0078aa3a:    {disp8} mov        ebx, dword ptr [esp + 0x78]                   // 0x0078aa3a    8b5c2478
_jmp_addr_0x0078aa3e:    inc                edi                                           // 0x0078aa3e    47
                         cmp                edi, 0x35                                     // 0x0078aa3f    83ff35
                         {disp32} jle       _jmp_addr_0x0078a96e                          // 0x0078aa42    0f8e26ffffff
                         test               ebx, ebx                                      // 0x0078aa48    85db
                         {disp8} je         _jmp_addr_0x0078aa5b                          // 0x0078aa4a    740f
                         {disp8} lea        eax, dword ptr [ebx + -0x31]                  // 0x0078aa4c    8d43cf
                         {disp8} jmp        _jmp_addr_0x0078aa5e                          // 0x0078aa4f    eb0d
_jmp_addr_0x0078aa51:    mov                ebx, 0x00000031                               // 0x0078aa51    bb31000000
                         {disp8} lea        eax, dword ptr [ebx + -0x31]                  // 0x0078aa56    8d43cf
                         {disp8} jmp        _jmp_addr_0x0078aa5e                          // 0x0078aa59    eb03
_jmp_addr_0x0078aa5b:    or                 eax, -0x1                                     // 0x0078aa5b    83c8ff
_jmp_addr_0x0078aa5e:    xor.s              ebp, ebp                                      // 0x0078aa5e    33ed
                         cmp.s              ebx, ebp                                      // 0x0078aa60    3bdd
                         {disp32} mov       dword ptr [esi + 0x000004b0], eax             // 0x0078aa62    8986b0040000
                         {disp8} je         _jmp_addr_0x0078aa76                          // 0x0078aa68    740c
                         {disp8} lea        edx, dword ptr [ebx + -0x31]                  // 0x0078aa6a    8d53cf
                         {disp32} mov       dword ptr [esp + 0x00000080], edx             // 0x0078aa6d    89942480000000
                         {disp8} jmp        _jmp_addr_0x0078aa81                          // 0x0078aa74    eb0b
_jmp_addr_0x0078aa76:    {disp32} mov       dword ptr [esp + 0x00000080], 0x000003e8      // 0x0078aa76    c7842480000000e8030000
_jmp_addr_0x0078aa81:    {disp32} fild      dword ptr [esp + 0x00000080]                  // 0x0078aa81    db842480000000
                         {disp8} mov        edi, dword ptr [esp + 0x74]                   // 0x0078aa88    8b7c2474
                         cmp.s              edi, ebp                                      // 0x0078aa8c    3bfd
                         {disp32} fstp      dword ptr [esi + 0x000004b4]                  // 0x0078aa8e    d99eb4040000
                         {disp8} je         _jmp_addr_0x0078aad5                          // 0x0078aa94    743f
                         cmp                dword ptr [esi + 0x00000134], ebp             // 0x0078aa96    39ae34010000
                         {disp8} jne        _jmp_addr_0x0078aad5                          // 0x0078aa9c    7537
                         cmp                dword ptr [esi + 0x000004ac], 0x01            // 0x0078aa9e    83beac04000001
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078aaa5    89ae70040000
                         {disp8} je         _jmp_addr_0x0078aab7                          // 0x0078aaab    740a
                         {disp32} mov       dword ptr [esi + 0x000004ac], 0xffffffff      // 0x0078aaad    c786ac040000ffffffff
_jmp_addr_0x0078aab7:    {disp32} mov       eax, dword ptr [esi + 0x00000484]             // 0x0078aab7    8b8684040000
                         {disp32} mov       ecx, dword ptr [esi + 0x00000480]             // 0x0078aabd    8b8e80040000
                         {disp32} mov       dword ptr [esi + 0x0000048c], eax             // 0x0078aac3    89868c040000
                         {disp32} mov       dword ptr [esi + 0x00000488], ecx             // 0x0078aac9    898e88040000
                         {disp32} mov       dword ptr [esi + 0x000004a8], ebp             // 0x0078aacf    89aea8040000
_jmp_addr_0x0078aad5:    cmp                dword ptr [esi + 0x000004ac], 0x01            // 0x0078aad5    83beac04000001
                         {disp8} jne        _jmp_addr_0x0078aaf7                          // 0x0078aadc    7519
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30a654]        // 0x0078aade    8b0d5406cd00
                         call               _jmp_addr_0x00513770                          // 0x0078aae4    e8878cd8ff
                         test               eax, eax                                      // 0x0078aae9    85c0
                         {disp8} jne        _jmp_addr_0x0078aaf7                          // 0x0078aaeb    750a
                         {disp32} mov       dword ptr [esi + 0x000004ac], 0xffffffff      // 0x0078aaed    c786ac040000ffffffff
_jmp_addr_0x0078aaf7:    cmp.s              edi, ebp                                      // 0x0078aaf7    3bfd
                         {disp8} jne        _jmp_addr_0x0078ab05                          // 0x0078aaf9    750a
                         cmp                dword ptr [esi + 0x00000134], ebp             // 0x0078aafb    39ae34010000
                         {disp8} jne        _jmp_addr_0x0078ab0a                          // 0x0078ab01    7507
                         {disp8} jmp        _jmp_addr_0x0078ab51                          // 0x0078ab03    eb4c
_jmp_addr_0x0078ab05:    cmp                edi, 0x02                                     // 0x0078ab05    83ff02
                         {disp8} jne        _jmp_addr_0x0078ab51                          // 0x0078ab08    7547
_jmp_addr_0x0078ab0a:    {disp32} mov       eax, dword ptr [esi + 0x00000480]             // 0x0078ab0a    8b8680040000
                         {disp32} mov       edx, dword ptr [esi + 0x00000484]             // 0x0078ab10    8b9684040000
                         {disp32} mov       dword ptr [esi + 0x00000488], eax             // 0x0078ab16    898688040000
                         cmp                dword ptr [esi + 0x000004a8], ebp             // 0x0078ab1c    39aea8040000
                         {disp32} mov       dword ptr [esi + 0x0000048c], edx             // 0x0078ab22    89968c040000
                         {disp8} jne        _jmp_addr_0x0078ab51                          // 0x0078ab28    7527
                         {disp32} fld       dword ptr [esi + 0x0000046c]                  // 0x0078ab2a    d9866c040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078ab30    d81d98a38a00
                         fnstsw             ax                                            // 0x0078ab36    dfe0
                         test               ah, 0x40                                      // 0x0078ab38    f6c440
                         {disp8} je         _jmp_addr_0x0078ab51                          // 0x0078ab3b    7414
                         cmp.s              ebx, ebp                                      // 0x0078ab3d    3bdd
                         {disp8} je         _jmp_addr_0x0078ab51                          // 0x0078ab3f    7410
                         {disp8} mov        ecx, dword ptr [esp + 0x6c]                   // 0x0078ab41    8b4c246c
                         add                ebx, -0x30                                    // 0x0078ab45    83c3d0
                         push               ebx                                           // 0x0078ab48    53
                         push               ecx                                           // 0x0078ab49    51
                         mov.s              ecx, esi                                      // 0x0078ab4a    8bce
                         call               _jmp_addr_0x00789fa0                          // 0x0078ab4c    e84ff4ffff
_jmp_addr_0x0078ab51:    {disp32} mov       edx, dword ptr [data_bytes + 0x4bf058]        // 0x0078ab51    8b155850e800
                         and                edx, 0x0000ffff                               // 0x0078ab57    81e2ffff0000
                         cmp.s              edi, ebp                                      // 0x0078ab5d    3bfd
                         {disp8} mov        dword ptr [esp + 0x74], edx                   // 0x0078ab5f    89542474
                         {disp32} je        _jmp_addr_0x0078ac1b                          // 0x0078ab63    0f84b2000000
                         {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x0078ab69    8b44247c
                         {disp8} fild       dword ptr [esp + 0x74]                        // 0x0078ab6d    db442474
                         mov                edx, dword ptr [eax]                          // 0x0078ab71    8b10
                         {disp32} mov       ecx, dword ptr [esi + 0x00000158]             // 0x0078ab73    8b8e58010000
                         sub.s              ecx, edx                                      // 0x0078ab79    2bca
                         {disp8} mov        dword ptr [esp + 0x74], ecx                   // 0x0078ab7b    894c2474
                         {disp8} fild       dword ptr [esp + 0x74]                        // 0x0078ab7f    db442474
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0078ab83    8b4804
                         {disp32} mov       edx, dword ptr [esi + 0x0000015c]             // 0x0078ab86    8b965c010000
                         sub.s              edx, ecx                                      // 0x0078ab8c    2bd1
                         fdiv               st, st(1)                                     // 0x0078ab8e    d8f1
                         {disp32} mov       dword ptr [esp + 0x00000080], edx             // 0x0078ab90    89942480000000
                         {disp8} fstp       dword ptr [esp + 0x74]                        // 0x0078ab97    d95c2474
                         {disp32} fild      dword ptr [esp + 0x00000080]                  // 0x0078ab9b    db842480000000
                         fdiv               st, st(1)                                     // 0x0078aba2    d8f1
                         {disp32} fstp      dword ptr [esp + 0x00000080]                  // 0x0078aba4    d99c2480000000
                         {disp32} fdivr     dword ptr [rdata_bytes + 0x19c50]             // 0x0078abab    d83d502c8c00
                         {disp8} fld        dword ptr [esp + 0x74]                        // 0x0078abb1    d9442474
                         fabs                                                             // 0x0078abb5    d9e1
                         fld                st(1)                                         // 0x0078abb7    d9c1
                         fcompp                                                           // 0x0078abb9    ded9
                         fnstsw             ax                                            // 0x0078abbb    dfe0
                         test               ah, 0x01                                      // 0x0078abbd    f6c401
                         {disp8} jne        _jmp_addr_0x0078abd8                          // 0x0078abc0    7516
                         {disp32} fld       dword ptr [esp + 0x00000080]                  // 0x0078abc2    d9842480000000
                         fabs                                                             // 0x0078abc9    d9e1
                         fxch               st(1)                                         // 0x0078abcb    d9c9
                         fcompp                                                           // 0x0078abcd    ded9
                         fnstsw             ax                                            // 0x0078abcf    dfe0
                         test               ah, 0x01                                      // 0x0078abd1    f6c401
                         {disp8} je         _jmp_addr_0x0078abe4                          // 0x0078abd4    740e
                         {disp8} jmp        _jmp_addr_0x0078abda                          // 0x0078abd6    eb02
_jmp_addr_0x0078abd8:    fstp               st(0)                                         // 0x0078abd8    ddd8
_jmp_addr_0x0078abda:    {disp32} mov       dword ptr [esi + 0x000004a8], 0x00000001      // 0x0078abda    c786a804000001000000
_jmp_addr_0x0078abe4:    {disp32} fld       dword ptr [data_bytes + 0x4dbdd0]             // 0x0078abe4    d905d01dea00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0078abea    d80db4a38a00
                         fptan                                                            // 0x0078abf0    d9f2
                         fstp               st(0)                                         // 0x0078abf2    ddd8
                         fadd.s             st(0), st(0)                                  // 0x0078abf4    dcc0
                         fld                st(0)                                         // 0x0078abf6    d9c0
                         {disp8} fmul       dword ptr [esp + 0x74]                        // 0x0078abf8    d84c2474
                         {disp32} fadd      dword ptr [esi + 0x00000488]                  // 0x0078abfc    d88688040000
                         {disp32} fstp      dword ptr [esi + 0x00000480]                  // 0x0078ac02    d99e80040000
                         {disp32} fmul      dword ptr [esp + 0x00000080]                  // 0x0078ac08    d88c2480000000
                         {disp32} fadd      dword ptr [esi + 0x0000048c]                  // 0x0078ac0f    d8868c040000
                         {disp32} fstp      dword ptr [esi + 0x00000484]                  // 0x0078ac15    d99e84040000
_jmp_addr_0x0078ac1b:    {disp32} mov       eax, dword ptr [_game]                        // 0x0078ac1b    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0078ac20    8b8800032500
                         {disp32} mov       edi, dword ptr [esi + 0x000004ac]             // 0x0078ac26    8bbeac040000
                         push               0x7                                           // 0x0078ac2c    6a07
                         call               _jmp_addr_0x00470af0                          // 0x0078ac2e    e8bd5eceff
                         test               eax, eax                                      // 0x0078ac33    85c0
                         {disp8} je         _jmp_addr_0x0078ac56                          // 0x0078ac35    741f
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078ac37    d9442470
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078ac3b    89ae70040000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0078ac41    d80d3cb28a00
                         or                 edi, 0xffffffff                               // 0x0078ac47    83cfff
                         {disp32} fsubr     dword ptr [esi + 0x000004b8]                  // 0x0078ac4a    d8aeb8040000
                         {disp32} fstp      dword ptr [esi + 0x000004b8]                  // 0x0078ac50    d99eb8040000
_jmp_addr_0x0078ac56:    {disp32} mov       ecx, dword ptr [_game]                        // 0x0078ac56    8b0d5c19d000
                         {disp32} mov       ecx, dword ptr [ecx + 0x00250300]             // 0x0078ac5c    8b8900032500
                         push               0x8                                           // 0x0078ac62    6a08
                         call               _jmp_addr_0x00470af0                          // 0x0078ac64    e8875eceff
                         test               eax, eax                                      // 0x0078ac69    85c0
                         {disp8} je         _jmp_addr_0x0078ac8c                          // 0x0078ac6b    741f
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078ac6d    d9442470
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078ac71    89ae70040000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0078ac77    d80d3cb28a00
                         or                 edi, 0xffffffff                               // 0x0078ac7d    83cfff
                         {disp32} fadd      dword ptr [esi + 0x000004b8]                  // 0x0078ac80    d886b8040000
                         {disp32} fstp      dword ptr [esi + 0x000004b8]                  // 0x0078ac86    d99eb8040000
_jmp_addr_0x0078ac8c:    {disp32} mov       edx, dword ptr [_game]                        // 0x0078ac8c    8b155c19d000
                         {disp32} mov       ecx, dword ptr [edx + 0x00250300]             // 0x0078ac92    8b8a00032500
                         push               0x9                                           // 0x0078ac98    6a09
                         call               _jmp_addr_0x00470af0                          // 0x0078ac9a    e8515eceff
                         test               eax, eax                                      // 0x0078ac9f    85c0
                         {disp8} je         _jmp_addr_0x0078acc2                          // 0x0078aca1    741f
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078aca3    d9442470
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078aca7    89ae70040000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0078acad    d80d3cb28a00
                         or                 edi, 0xffffffff                               // 0x0078acb3    83cfff
                         {disp32} fsubr     dword ptr [esi + 0x000004bc]                  // 0x0078acb6    d8aebc040000
                         {disp32} fstp      dword ptr [esi + 0x000004bc]                  // 0x0078acbc    d99ebc040000
_jmp_addr_0x0078acc2:    {disp32} mov       eax, dword ptr [_game]                        // 0x0078acc2    a15c19d000
                         {disp32} mov       ecx, dword ptr [eax + 0x00250300]             // 0x0078acc7    8b8800032500
                         push               0xa                                           // 0x0078accd    6a0a
                         call               _jmp_addr_0x00470af0                          // 0x0078accf    e81c5eceff
                         test               eax, eax                                      // 0x0078acd4    85c0
                         {disp8} je         _jmp_addr_0x0078acf7                          // 0x0078acd6    741f
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078acd8    d9442470
                         {disp32} mov       dword ptr [esi + 0x00000470], ebp             // 0x0078acdc    89ae70040000
                         {disp32} fmul      dword ptr [__real@3e999999]                   // 0x0078ace2    d80d3cb28a00
                         or                 edi, 0xffffffff                               // 0x0078ace8    83cfff
                         {disp32} fadd      dword ptr [esi + 0x000004bc]                  // 0x0078aceb    d886bc040000
                         {disp32} fstp      dword ptr [esi + 0x000004bc]                  // 0x0078acf1    d99ebc040000
_jmp_addr_0x0078acf7:    {disp32} fld       dword ptr [esi + 0x00000480]                  // 0x0078acf7    d98680040000
                         {disp32} mov       dword ptr [esi + 0x000004ac], edi             // 0x0078acfd    89beac040000
                         {disp32} fadd      dword ptr [esi + 0x000004b8]                  // 0x0078ad03    d886b8040000
                         {disp32} fst       dword ptr [esi + 0x00000480]                  // 0x0078ad09    d99680040000
                         {disp32} fld       dword ptr [esi + 0x000004bc]                  // 0x0078ad0f    d986bc040000
                         {disp32} fadd      dword ptr [esi + 0x00000484]                  // 0x0078ad15    d88684040000
                         {disp32} fst       dword ptr [esi + 0x00000484]                  // 0x0078ad1b    d99684040000
                         {disp32} fld       dword ptr [esi + 0x00000488]                  // 0x0078ad21    d98688040000
                         {disp32} fadd      dword ptr [esi + 0x000004b8]                  // 0x0078ad27    d886b8040000
                         {disp32} fst       dword ptr [esi + 0x00000488]                  // 0x0078ad2d    d99688040000
                         {disp32} fld       dword ptr [esi + 0x0000048c]                  // 0x0078ad33    d9868c040000
                         {disp32} fadd      dword ptr [esi + 0x000004bc]                  // 0x0078ad39    d886bc040000
                         {disp32} fcom      dword ptr [rdata_bytes + 0xf5c2c]             // 0x0078ad3f    d8152cec9900
                         {disp32} fst       dword ptr [esi + 0x0000048c]                  // 0x0078ad45    d9968c040000
                         fnstsw             ax                                            // 0x0078ad4b    dfe0
                         test               ah, 0x41                                      // 0x0078ad4d    f6c441
                         {disp8} jne        _jmp_addr_0x0078ad69                          // 0x0078ad50    7517
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1ec9c]             // 0x0078ad52    d8159c7c8c00
                         fnstsw             ax                                            // 0x0078ad58    dfe0
                         test               ah, 0x01                                      // 0x0078ad5a    f6c401
                         {disp8} jne        _jmp_addr_0x0078ad71                          // 0x0078ad5d    7512
                         fstp               st(0)                                         // 0x0078ad5f    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ec9c]             // 0x0078ad61    d9059c7c8c00
                         {disp8} jmp        _jmp_addr_0x0078ad71                          // 0x0078ad67    eb08
_jmp_addr_0x0078ad69:    fstp               st(0)                                         // 0x0078ad69    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0xf5c2c]             // 0x0078ad6b    d9052cec9900
_jmp_addr_0x0078ad71:    {disp32} fstp      dword ptr [esi + 0x0000048c]                  // 0x0078ad71    d99e8c040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078ad77    d81d98a38a00
                         fnstsw             ax                                            // 0x0078ad7d    dfe0
                         test               ah, 0x01                                      // 0x0078ad7f    f6c401
                         {disp8} je         _jmp_addr_0x0078ada3                          // 0x0078ad82    741f
_jmp_addr_0x0078ad84:    {disp32} fld       dword ptr [esi + 0x00000488]                  // 0x0078ad84    d98688040000
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x0078ad8a    d80510b28a00
                         {disp32} fst       dword ptr [esi + 0x00000488]                  // 0x0078ad90    d99688040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078ad96    d81d98a38a00
                         fnstsw             ax                                            // 0x0078ad9c    dfe0
                         test               ah, 0x01                                      // 0x0078ad9e    f6c401
                         {disp8} jne        _jmp_addr_0x0078ad84                          // 0x0078ada1    75e1
_jmp_addr_0x0078ada3:    {disp32} fld       dword ptr [esi + 0x00000488]                  // 0x0078ada3    d98688040000
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0078ada9    d81d10b28a00
                         fnstsw             ax                                            // 0x0078adaf    dfe0
                         test               ah, 0x41                                      // 0x0078adb1    f6c441
                         {disp8} jne        _jmp_addr_0x0078add5                          // 0x0078adb4    751f
_jmp_addr_0x0078adb6:    {disp32} fld       dword ptr [esi + 0x00000488]                  // 0x0078adb6    d98688040000
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x0078adbc    d82510b28a00
                         {disp32} fst       dword ptr [esi + 0x00000488]                  // 0x0078adc2    d99688040000
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0078adc8    d81d10b28a00
                         fnstsw             ax                                            // 0x0078adce    dfe0
                         test               ah, 0x41                                      // 0x0078add0    f6c441
                         {disp8} je         _jmp_addr_0x0078adb6                          // 0x0078add3    74e1
_jmp_addr_0x0078add5:    {disp32} fcomp     dword ptr [rdata_bytes + 0xf5c2c]             // 0x0078add5    d81d2cec9900
                         fnstsw             ax                                            // 0x0078addb    dfe0
                         test               ah, 0x41                                      // 0x0078addd    f6c441
                         {disp8} jne        _jmp_addr_0x0078ae05                          // 0x0078ade0    7523
                         {disp32} fld       dword ptr [esi + 0x00000484]                  // 0x0078ade2    d98684040000
                         {disp32} fcomp     dword ptr [rdata_bytes + 0x1ec9c]             // 0x0078ade8    d81d9c7c8c00
                         fnstsw             ax                                            // 0x0078adee    dfe0
                         test               ah, 0x01                                      // 0x0078adf0    f6c401
                         {disp8} je         _jmp_addr_0x0078adfd                          // 0x0078adf3    7408
                         {disp32} fld       dword ptr [esi + 0x00000484]                  // 0x0078adf5    d98684040000
                         {disp8} jmp        _jmp_addr_0x0078ae0b                          // 0x0078adfb    eb0e
_jmp_addr_0x0078adfd:    {disp32} fld       dword ptr [rdata_bytes + 0x1ec9c]             // 0x0078adfd    d9059c7c8c00
                         {disp8} jmp        _jmp_addr_0x0078ae0b                          // 0x0078ae03    eb06
_jmp_addr_0x0078ae05:    {disp32} fld       dword ptr [rdata_bytes + 0xf5c2c]             // 0x0078ae05    d9052cec9900
_jmp_addr_0x0078ae0b:    {disp32} fstp      dword ptr [esi + 0x00000484]                  // 0x0078ae0b    d99e84040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078ae11    d81d98a38a00
                         fnstsw             ax                                            // 0x0078ae17    dfe0
                         test               ah, 0x01                                      // 0x0078ae19    f6c401
                         {disp8} je         _jmp_addr_0x0078ae3d                          // 0x0078ae1c    741f
_jmp_addr_0x0078ae1e:    {disp32} fld       dword ptr [esi + 0x00000480]                  // 0x0078ae1e    d98680040000
                         {disp32} fadd      dword ptr [__real@40c90fdb]                   // 0x0078ae24    d80510b28a00
                         {disp32} fst       dword ptr [esi + 0x00000480]                  // 0x0078ae2a    d99680040000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0078ae30    d81d98a38a00
                         fnstsw             ax                                            // 0x0078ae36    dfe0
                         test               ah, 0x01                                      // 0x0078ae38    f6c401
                         {disp8} jne        _jmp_addr_0x0078ae1e                          // 0x0078ae3b    75e1
_jmp_addr_0x0078ae3d:    {disp32} fld       dword ptr [esi + 0x00000480]                  // 0x0078ae3d    d98680040000
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0078ae43    d81d10b28a00
                         fnstsw             ax                                            // 0x0078ae49    dfe0
                         test               ah, 0x41                                      // 0x0078ae4b    f6c441
                         {disp8} jne        _jmp_addr_0x0078ae6f                          // 0x0078ae4e    751f
_jmp_addr_0x0078ae50:    {disp32} fld       dword ptr [esi + 0x00000480]                  // 0x0078ae50    d98680040000
                         {disp32} fsub      dword ptr [__real@40c90fdb]                   // 0x0078ae56    d82510b28a00
                         {disp32} fst       dword ptr [esi + 0x00000480]                  // 0x0078ae5c    d99680040000
                         {disp32} fcomp     dword ptr [__real@40c90fdb]                   // 0x0078ae62    d81d10b28a00
                         fnstsw             ax                                            // 0x0078ae68    dfe0
                         test               ah, 0x41                                      // 0x0078ae6a    f6c441
                         {disp8} je         _jmp_addr_0x0078ae50                          // 0x0078ae6d    74e1
_jmp_addr_0x0078ae6f:    {disp32} fld       dword ptr [esi + 0x0000046c]                  // 0x0078ae6f    d9866c040000
                         {disp32} fmul      dword ptr [__real@3dcccccd]                   // 0x0078ae75    d80d2cb28a00
                         {disp32} fadd      dword ptr [rdata_bytes + 0x26110]             // 0x0078ae7b    d80510f18c00
                         {disp32} fst       dword ptr [esi + 0x000003f0]                  // 0x0078ae81    d996f0030000
                         {disp32} fstp      dword ptr [esi + 0x000003ec]                  // 0x0078ae87    d99eec030000
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078ae8d    d9442470
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1e670]             // 0x0078ae91    d80d70768c00
                         fldl2e                                                           // 0x0078ae97    d9ea
                         fmulp              st(1), st                                     // 0x0078ae99    dec9
                         fld                st(0)                                         // 0x0078ae9b    d9c0
                         frndint                                                          // 0x0078ae9d    d9fc
                         fxch               st(1)                                         // 0x0078ae9f    d9c9
                         fsub               st, st(1)                                     // 0x0078aea1    d8e1
                         f2xm1                                                            // 0x0078aea3    d9f0
                         fld1                                                             // 0x0078aea5    d9e8
                         faddp              st(1), st                                     // 0x0078aea7    dec1
                         fscale                                                           // 0x0078aea9    d9fd
                         fstp               st(1)                                         // 0x0078aeab    ddd9
                         fld                st(0)                                         // 0x0078aead    d9c0
                         {disp32} fmul      dword ptr [esi + 0x000004b8]                  // 0x0078aeaf    d88eb8040000
                         {disp32} fstp      dword ptr [esi + 0x000004b8]                  // 0x0078aeb5    d99eb8040000
                         {disp32} fmul      dword ptr [esi + 0x000004bc]                  // 0x0078aebb    d88ebc040000
                         {disp32} fstp      dword ptr [esi + 0x000004bc]                  // 0x0078aec1    d99ebc040000
                         {disp32} fld       dword ptr [esi + 0x0000046c]                  // 0x0078aec7    d9866c040000
                         {disp32} fcomp     dword ptr [esi + 0x00000470]                  // 0x0078aecd    d89e70040000
                         fnstsw             ax                                            // 0x0078aed3    dfe0
                         test               ah, 0x01                                      // 0x0078aed5    f6c401
                         {disp8} je         _jmp_addr_0x0078af44                          // 0x0078aed8    746a
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078aeda    d9442470
                         {disp32} fadd      dword ptr [esi + 0x0000046c]                  // 0x0078aede    d8866c040000
                         {disp32} fst       dword ptr [esi + 0x0000046c]                  // 0x0078aee4    d9966c040000
                         {disp32} fcomp     dword ptr [esi + 0x00000470]                  // 0x0078aeea    d89e70040000
                         fnstsw             ax                                            // 0x0078aef0    dfe0
                         test               ah, 0x41                                      // 0x0078aef2    f6c441
                         {disp8} jne        _jmp_addr_0x0078af03                          // 0x0078aef5    750c
                         {disp32} mov       ecx, dword ptr [esi + 0x00000470]             // 0x0078aef7    8b8e70040000
                         {disp32} mov       dword ptr [esi + 0x0000046c], ecx             // 0x0078aefd    898e6c040000
_jmp_addr_0x0078af03:    cmp                dword ptr [esi + 0x0000046c], 0x3f800000      // 0x0078af03    81be6c0400000000803f
                         {disp8} jne        _jmp_addr_0x0078af82                          // 0x0078af0d    7573
                         cmp                edi, 0x05                                     // 0x0078af0f    83ff05
                         {disp8} jne        _jmp_addr_0x0078af82                          // 0x0078af12    756e
                         {disp32} mov       dword ptr [data_bytes + 0x264150], 0x3f800000 // 0x0078af14    c70550a1c2000000803f
                         {disp32} mov       dword ptr [_DAT_00e06020], 0x00000000         // 0x0078af1e    c7052060e00000000000
                         {disp32} mov       dword ptr [data_bytes + 0x440024], 0xffffffff // 0x0078af28    c7052460e000ffffffff
                         {disp32} mov       dword ptr [data_bytes + 0x440028], ebp        // 0x0078af32    892d2860e000
                         {disp32} mov       dword ptr [data_bytes + 0x44001c], 0x00000001 // 0x0078af38    c7051c60e00001000000
                         {disp8} jmp        _jmp_addr_0x0078af82                          // 0x0078af42    eb3e
_jmp_addr_0x0078af44:    {disp32} fld       dword ptr [esi + 0x0000046c]                  // 0x0078af44    d9866c040000
                         {disp32} fcomp     dword ptr [esi + 0x00000470]                  // 0x0078af4a    d89e70040000
                         fnstsw             ax                                            // 0x0078af50    dfe0
                         test               ah, 0x41                                      // 0x0078af52    f6c441
                         {disp8} jne        _jmp_addr_0x0078af82                          // 0x0078af55    752b
                         {disp8} fld        dword ptr [esp + 0x70]                        // 0x0078af57    d9442470
                         fadd.s             st(0), st(0)                                  // 0x0078af5b    dcc0
                         {disp32} fsubr     dword ptr [esi + 0x0000046c]                  // 0x0078af5d    d8ae6c040000
                         {disp32} fst       dword ptr [esi + 0x0000046c]                  // 0x0078af63    d9966c040000
                         {disp32} fcomp     dword ptr [esi + 0x00000470]                  // 0x0078af69    d89e70040000
                         fnstsw             ax                                            // 0x0078af6f    dfe0
                         test               ah, 0x01                                      // 0x0078af71    f6c401
                         {disp8} je         _jmp_addr_0x0078af82                          // 0x0078af74    740c
                         {disp32} mov       edx, dword ptr [esi + 0x00000470]             // 0x0078af76    8b9670040000
                         {disp32} mov       dword ptr [esi + 0x0000046c], edx             // 0x0078af7c    89966c040000
_jmp_addr_0x0078af82:    {disp8} mov        eax, dword ptr [esp + 0x6c]                   // 0x0078af82    8b44246c
                         push               eax                                           // 0x0078af86    50
                         {disp32} lea       ecx, dword ptr [esi + 0x000003e0]             // 0x0078af87    8d8ee0030000
                         push               ecx                                           // 0x0078af8d    51
                         {disp32} lea       edx, dword ptr [esi + 0x000003d4]             // 0x0078af8e    8d96d4030000
                         push               edx                                           // 0x0078af94    52
                         mov.s              ecx, esi                                      // 0x0078af95    8bce
                         call               _jmp_addr_0x0078a0c0                          // 0x0078af97    e824f1ffff
_jmp_addr_0x0078af9c:    {disp8} mov        eax, dword ptr [esp + 0x7c]                   // 0x0078af9c    8b44247c
                         mov                ecx, dword ptr [eax]                          // 0x0078afa0    8b08
                         pop                edi                                           // 0x0078afa2    5f
                         pop                esi                                           // 0x0078afa3    5e
                         {disp32} mov       dword ptr [data_bytes + 0x41b9d0], ecx        // 0x0078afa4    890dd019de00
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0078afaa    8b5004
                         pop                ebp                                           // 0x0078afad    5d
                         {disp32} mov       dword ptr [data_bytes + 0x41b9d4], edx        // 0x0078afae    8915d419de00
                         pop                ebx                                           // 0x0078afb4    5b
                         add                esp, 0x58                                     // 0x0078afb5    83c458
                         ret                0x0018                                        // 0x0078afb8    c21800
                         nop                                                              // 0x0078afbb    90
                         nop                                                              // 0x0078afbc    90
                         nop                                                              // 0x0078afbd    90
                         nop                                                              // 0x0078afbe    90
                         nop                                                              // 0x0078afbf    90
                         ret                                                              // 0x0078afc0    c3
                         nop                                                              // 0x0078afc1    90
                         nop                                                              // 0x0078afc2    90
                         nop                                                              // 0x0078afc3    90
                         nop                                                              // 0x0078afc4    90
                         nop                                                              // 0x0078afc5    90
                         nop                                                              // 0x0078afc6    90
                         nop                                                              // 0x0078afc7    90
                         nop                                                              // 0x0078afc8    90
                         nop                                                              // 0x0078afc9    90
                         nop                                                              // 0x0078afca    90
                         nop                                                              // 0x0078afcb    90
                         nop                                                              // 0x0078afcc    90
                         nop                                                              // 0x0078afcd    90
                         nop                                                              // 0x0078afce    90
                         nop                                                              // 0x0078afcf    90
_globl_ct_0x0078afd0:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0078afd0    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0078afd6    b001
                         test               al, cl                                        // 0x0078afd8    84c8
                         {disp8} jne        _jmp_addr_0x0078afe4                          // 0x0078afda    7508
                         or.s               cl, al                                        // 0x0078afdc    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0078afde    880d34c9fa00
_jmp_addr_0x0078afe4:    {disp32} jmp       _jmp_addr_0x0078aff0                          // 0x0078afe4    e907000000
                         nop                                                              // 0x0078afe9    90
                         nop                                                              // 0x0078afea    90
                         nop                                                              // 0x0078afeb    90
                         nop                                                              // 0x0078afec    90
                         nop                                                              // 0x0078afed    90
                         nop                                                              // 0x0078afee    90
                         nop                                                              // 0x0078afef    90
_jmp_addr_0x0078aff0:    push               0x00407870                                    // 0x0078aff0    6870784000
                         call               _atexit                                       // 0x0078aff5    e897a70300
                         pop                ecx                                           // 0x0078affa    59
                         ret                                                              // 0x0078affb    c3
                         nop                                                              // 0x0078affc    90
                         nop                                                              // 0x0078affd    90
                         nop                                                              // 0x0078affe    90
                         nop                                                              // 0x0078afff    90
_globl_ct_0x0078b000:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0078b000    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0078b006    b001
                         test               al, cl                                        // 0x0078b008    84c8
                         {disp8} jne        _jmp_addr_0x0078b014                          // 0x0078b00a    7508
                         or.s               cl, al                                        // 0x0078b00c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0078b00e    880d34c9fa00
_jmp_addr_0x0078b014:    {disp32} jmp       _jmp_addr_0x0078b020                          // 0x0078b014    e907000000
                         nop                                                              // 0x0078b019    90
                         nop                                                              // 0x0078b01a    90
                         nop                                                              // 0x0078b01b    90
                         nop                                                              // 0x0078b01c    90
                         nop                                                              // 0x0078b01d    90
                         nop                                                              // 0x0078b01e    90
                         nop                                                              // 0x0078b01f    90
_jmp_addr_0x0078b020:    push               0x00407870                                    // 0x0078b020    6870784000
                         call               _atexit                                       // 0x0078b025    e867a70300
                         pop                ecx                                           // 0x0078b02a    59
                         ret                                                              // 0x0078b02b    c3
                         nop                                                              // 0x0078b02c    90
                         nop                                                              // 0x0078b02d    90
                         nop                                                              // 0x0078b02e    90
                         nop                                                              // 0x0078b02f    90
_globl_ct_0x0078b030:    {disp32} mov       cl, byte ptr [_DAT_00fac934]                  // 0x0078b030    8a0d34c9fa00
                         mov                al, 0x01                                      // 0x0078b036    b001
                         test               al, cl                                        // 0x0078b038    84c8
                         {disp8} jne        _jmp_addr_0x0078b044                          // 0x0078b03a    7508
                         or.s               cl, al                                        // 0x0078b03c    0ac8
                         {disp32} mov       byte ptr [_DAT_00fac934], cl                  // 0x0078b03e    880d34c9fa00
_jmp_addr_0x0078b044:    {disp32} jmp       _jmp_addr_0x0078b050                          // 0x0078b044    e907000000
                         nop                                                              // 0x0078b049    90
                         nop                                                              // 0x0078b04a    90
                         nop                                                              // 0x0078b04b    90
                         nop                                                              // 0x0078b04c    90
                         nop                                                              // 0x0078b04d    90
                         nop                                                              // 0x0078b04e    90
                         nop                                                              // 0x0078b04f    90
_jmp_addr_0x0078b050:    push               0x00407870                                    // 0x0078b050    6870784000
                         call               _atexit                                       // 0x0078b055    e837a70300
                         pop                ecx                                           // 0x0078b05a    59
                         ret                                                              // 0x0078b05b    c3
                         nop                                                              // 0x0078b05c    90
                         nop                                                              // 0x0078b05d    90
                         nop                                                              // 0x0078b05e    90
                         nop                                                              // 0x0078b05f    90
_globl_ct_0x0078b060:    {disp32} jmp       _jmp_addr_0x0078b070                          // 0x0078b060    e90b000000
                         nop                                                              // 0x0078b065    90
                         nop                                                              // 0x0078b066    90
                         nop                                                              // 0x0078b067    90
                         nop                                                              // 0x0078b068    90
                         nop                                                              // 0x0078b069    90
                         nop                                                              // 0x0078b06a    90
                         nop                                                              // 0x0078b06b    90
                         nop                                                              // 0x0078b06c    90
                         nop                                                              // 0x0078b06d    90
                         nop                                                              // 0x0078b06e    90
                         nop                                                              // 0x0078b06f    90
_jmp_addr_0x0078b070:    {disp32} mov       dword ptr [data_bytes + 0x43be04], 0xffffffff // 0x0078b070    c705041ee000ffffffff
                         ret                                                              // 0x0078b07a    c3
                         nop                                                              // 0x0078b07b    90
                         nop                                                              // 0x0078b07c    90
                         nop                                                              // 0x0078b07d    90
                         nop                                                              // 0x0078b07e    90
                         nop                                                              // 0x0078b07f    90
_globl_ct_0x0078b080:    {disp32} jmp       _jmp_addr_0x0078b090                          // 0x0078b080    e90b000000
                         nop                                                              // 0x0078b085    90
                         nop                                                              // 0x0078b086    90
                         nop                                                              // 0x0078b087    90
                         nop                                                              // 0x0078b088    90
                         nop                                                              // 0x0078b089    90
                         nop                                                              // 0x0078b08a    90
                         nop                                                              // 0x0078b08b    90
                         nop                                                              // 0x0078b08c    90
                         nop                                                              // 0x0078b08d    90
                         nop                                                              // 0x0078b08e    90
                         nop                                                              // 0x0078b08f    90
_jmp_addr_0x0078b090:    {disp32} fld       dword ptr [rdata_bytes + 0xf5c38]             // 0x0078b090    d90538ec9900
                         {disp32} fmul      dword ptr [rdata_bytes + 0xf5c34]             // 0x0078b096    d80d34ec9900
                         {disp32} fstp      dword ptr [data_bytes + 0x43be00]             // 0x0078b09c    d91d001ee000
                         ret                                                              // 0x0078b0a2    c3
                         nop                                                              // 0x0078b0a3    90
                         nop                                                              // 0x0078b0a4    90
                         nop                                                              // 0x0078b0a5    90
                         nop                                                              // 0x0078b0a6    90
                         nop                                                              // 0x0078b0a7    90
                         nop                                                              // 0x0078b0a8    90
                         nop                                                              // 0x0078b0a9    90
                         nop                                                              // 0x0078b0aa    90
                         nop                                                              // 0x0078b0ab    90
                         nop                                                              // 0x0078b0ac    90
                         nop                                                              // 0x0078b0ad    90
                         nop                                                              // 0x0078b0ae    90
                         nop                                                              // 0x0078b0af    90
_jmp_addr_0x0078b0b0:    sub                esp, 0x0c                                     // 0x0078b0b0    83ec0c
                         push               ebx                                           // 0x0078b0b3    53
                         push               ebp                                           // 0x0078b0b4    55
                         push               esi                                           // 0x0078b0b5    56
                         push               edi                                           // 0x0078b0b6    57
                         mov.s              ebp, ecx                                      // 0x0078b0b7    8be9
                         push               0x00c27f68                                    // 0x0078b0b9    68687fc200
                         call               @__ct__15PictureRoomBaseFPCc@12               // 0x0078b0be    e84d400000
                         mov.s              ecx, ebp                                      // 0x0078b0c3    8bcd
                         {disp8} mov        dword ptr [ebp + 0x00], 0x0099ec40            // 0x0078b0c5    c7450040ec9900
                         call               _jmp_addr_0x0078d420                          // 0x0078b0cc    e84f230000
                         {disp32} mov       al, byte ptr [data_bytes + 0x2721e4]          // 0x0078b0d1    a0e481c300
                         xor.s              ebx, ebx                                      // 0x0078b0d6    33db
                         cmp.s              al, bl                                        // 0x0078b0d8    3ac3
                         mov                eax, 0x00c27f44                               // 0x0078b0da    b8447fc200
                         {disp8} je         _jmp_addr_0x0078b0e6                          // 0x0078b0df    7405
                         mov                eax, 0x00c27f24                               // 0x0078b0e1    b8247fc200
_jmp_addr_0x0078b0e6:    push               0x00c28100                                    // 0x0078b0e6    680081c200
                         push               0x00c280e4                                    // 0x0078b0eb    68e480c200
                         push               0x00c280c8                                    // 0x0078b0f0    68c880c200
                         push               0x7                                           // 0x0078b0f5    6a07
                         push               eax                                           // 0x0078b0f7    50
                         mov.s              ecx, ebp                                      // 0x0078b0f8    8bcd
                         call               _jmp_addr_0x00798b30                          // 0x0078b0fa    e831da0000
                         {disp8} mov        dword ptr [esp + 0x10], 0xc2f60000            // 0x0078b0ff    c74424100000f6c2
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0078b107    8b4c2410
                         {disp32} lea       eax, dword ptr [ebp + 0x00000104]             // 0x0078b10b    8d8504010000
                         mov                dword ptr [eax], ecx                          // 0x0078b111    8908
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0078b113    c744241400000000
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0078b11b    8b542414
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0078b11f    895004
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0078b122    c744241800000000
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0078b12a    8b4c2418
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0078b12e    894808
                         cmp                byte ptr [data_bytes + 0x2721e4], bl          // 0x0078b131    381de481c300
                         mov                eax, 0x00c27f00                               // 0x0078b137    b8007fc200
                         {disp8} je         _jmp_addr_0x0078b143                          // 0x0078b13c    7405
                         mov                eax, 0x00c27ee0                               // 0x0078b13e    b8e07ec200
_jmp_addr_0x0078b143:    {disp32} mov       dword ptr [ebp + 0x00000114], eax             // 0x0078b143    898514010000
                         {disp32} mov       dword ptr [ebp + 0x00000120], 0x00c27ec0      // 0x0078b149    c78520010000c07ec200
                         {disp32} mov       dword ptr [ebp + 0x00000110], 0x00c27ea0      // 0x0078b153    c78510010000a07ec200
                         {disp32} mov       dword ptr [ebp + 0x00000118], 0x00c27e7c      // 0x0078b15d    c785180100007c7ec200
                         cmp                byte ptr [data_bytes + 0x2721e4], bl          // 0x0078b167    381de481c300
                         mov                eax, 0x00c27e54                               // 0x0078b16d    b8547ec200
                         {disp8} je         _jmp_addr_0x0078b179                          // 0x0078b172    7405
                         mov                eax, 0x00c27e2c                               // 0x0078b174    b82c7ec200
_jmp_addr_0x0078b179:    {disp32} mov       dword ptr [ebp + 0x00000124], eax             // 0x0078b179    898524010000
                         {disp32} mov       dword ptr [ebp + 0x0000011c], ebx             // 0x0078b17f    899d1c010000
                         {disp32} mov       dword ptr [ebp + 0x00000128], 0x00000004      // 0x0078b185    c7852801000004000000
                         {disp32} mov       dword ptr [ebp + 0x00000100], 0x41f00000      // 0x0078b18f    c785000100000000f041
                         or                 ecx, 0xffffffff                               // 0x0078b199    83c9ff
                         xor.s              eax, eax                                      // 0x0078b19c    33c0
                         mov                edi, 0x00c27e14                               // 0x0078b19e    bf147ec200
                         repne scasb                                                      // 0x0078b1a3    f2ae
                         not                ecx                                           // 0x0078b1a5    f7d1
                         sub.s              edi, ecx                                      // 0x0078b1a7    2bf9
                         mov.s              eax, ecx                                      // 0x0078b1a9    8bc1
                         mov.s              esi, edi                                      // 0x0078b1ab    8bf7
                         shr                ecx, 2                                        // 0x0078b1ad    c1e902
                         {disp8} lea        edx, dword ptr [ebp + 0x3c]                   // 0x0078b1b0    8d553c
                         mov.s              edi, edx                                      // 0x0078b1b3    8bfa
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0078b1b5    f3a5
                         mov.s              ecx, eax                                      // 0x0078b1b7    8bc8
                         and                ecx, 0x03                                     // 0x0078b1b9    83e103
                         rep movsb                                                        // 0x0078b1bc    f3a4
                         {disp32} mov       byte ptr [ebp + 0x0000012c], 0x01             // 0x0078b1be    c6852c01000001
                         {disp32} mov       dword ptr [ebp + 0x00000130], ebx             // 0x0078b1c5    899d30010000
                         {disp32} mov       dword ptr [ebp + 0x00000134], 0xbdcccccd      // 0x0078b1cb    c78534010000cdccccbd
                         mov                eax, 0x3dcccccd                               // 0x0078b1d5    b8cdcccc3d
                         {disp32} mov       dword ptr [ebp + 0x00000138], eax             // 0x0078b1da    898538010000
                         {disp32} mov       dword ptr [ebp + 0x00000148], ebx             // 0x0078b1e0    899d48010000
                         {disp32} mov       dword ptr [ebp + 0x0000014c], 0x3f000000      // 0x0078b1e6    c7854c0100000000003f
                         mov                ecx, 0xbf800000                               // 0x0078b1f0    b9000080bf
                         {disp32} mov       dword ptr [ebp + 0x00000150], ecx             // 0x0078b1f5    898d50010000
                         {disp32} mov       dword ptr [ebp + 0x0000013c], ebx             // 0x0078b1fb    899d3c010000
                         {disp32} mov       dword ptr [ebp + 0x00000140], eax             // 0x0078b201    898540010000
                         {disp32} mov       dword ptr [ebp + 0x00000144], eax             // 0x0078b207    898544010000
                         pop                edi                                           // 0x0078b20d    5f
                         pop                esi                                           // 0x0078b20e    5e
                         {disp32} mov       dword ptr [ebp + 0x00000154], ebx             // 0x0078b20f    899d54010000
                         {disp32} mov       dword ptr [ebp + 0x00000158], 0xbf000000      // 0x0078b215    c78558010000000000bf
                         {disp32} mov       dword ptr [ebp + 0x0000015c], ecx             // 0x0078b21f    898d5c010000
                         mov.s              eax, ebp                                      // 0x0078b225    8bc5
                         pop                ebp                                           // 0x0078b227    5d
                         pop                ebx                                           // 0x0078b228    5b
                         add                esp, 0x0c                                     // 0x0078b229    83c40c
                         ret                                                              // 0x0078b22c    c3
                         nop                                                              // 0x0078b22d    90
                         nop                                                              // 0x0078b22e    90
                         nop                                                              // 0x0078b22f    90
                         ret                0x0004                                        // 0x0078b230    c20400
                         nop                                                              // 0x0078b233    90
                         nop                                                              // 0x0078b234    90
                         nop                                                              // 0x0078b235    90
                         nop                                                              // 0x0078b236    90
                         nop                                                              // 0x0078b237    90
                         nop                                                              // 0x0078b238    90
                         nop                                                              // 0x0078b239    90
                         nop                                                              // 0x0078b23a    90
                         nop                                                              // 0x0078b23b    90
                         nop                                                              // 0x0078b23c    90
                         nop                                                              // 0x0078b23d    90
                         nop                                                              // 0x0078b23e    90
                         nop                                                              // 0x0078b23f    90
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0078b240    8b44240c
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0078b244    8b542408
                         push               eax                                           // 0x0078b248    50
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0078b249    8b442408
                         push               edx                                           // 0x0078b24d    52
                         push               eax                                           // 0x0078b24e    50
                         call               _jmp_addr_0x0079a290                          // 0x0078b24f    e83cf00000
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], 0x00000000 // 0x0078b254    c705441ee00000000000
                         ret                0x000c                                        // 0x0078b25e    c20c00
                         nop                                                              // 0x0078b261    90
                         nop                                                              // 0x0078b262    90
                         nop                                                              // 0x0078b263    90
                         nop                                                              // 0x0078b264    90
                         nop                                                              // 0x0078b265    90
                         nop                                                              // 0x0078b266    90
                         nop                                                              // 0x0078b267    90
                         nop                                                              // 0x0078b268    90
                         nop                                                              // 0x0078b269    90
                         nop                                                              // 0x0078b26a    90
                         nop                                                              // 0x0078b26b    90
                         nop                                                              // 0x0078b26c    90
                         nop                                                              // 0x0078b26d    90
                         nop                                                              // 0x0078b26e    90
                         nop                                                              // 0x0078b26f    90
                         mov                dword ptr [ecx], 0x0099ec40                   // 0x0078b270    c70140ec9900
                         {disp32} jmp       _jmp_addr_0x0078f1e0                          // 0x0078b276    e9653f0000
                         nop                                                              // 0x0078b27b    90
                         nop                                                              // 0x0078b27c    90
                         nop                                                              // 0x0078b27d    90
                         nop                                                              // 0x0078b27e    90
                         nop                                                              // 0x0078b27f    90
                         mov                eax, 0x00000001                               // 0x0078b280    b801000000
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0078b285    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e7e // 0x0078b28a    c705c4a1c2007e0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000f00 // 0x0078b294    c7054061e300000f0000
                         {disp32} mov       edx, dword ptr [ecx + 0x000000c4]             // 0x0078b29e    8b91c4000000
                         cmp                dword ptr [edx + 0x0000012c], 0x04            // 0x0078b2a4    83ba2c01000004
                         {disp8} jne        _jmp_addr_0x0078b2cd                          // 0x0078b2ab    7520
                         {disp8} mov        edx, dword ptr [ecx + 0x7c]                   // 0x0078b2ad    8b517c
                         test               edx, edx                                      // 0x0078b2b0    85d2
                         {disp8} jne        _jmp_addr_0x0078b2cd                          // 0x0078b2b2    7519
                         {disp32} mov       dword ptr [data_bytes + 0x2641c0], eax        // 0x0078b2b4    a3c0a1c200
                         {disp32} mov       dword ptr [data_bytes + 0x2641c4], 0x00000e9b // 0x0078b2b9    c705c4a1c2009b0e0000
                         {disp32} mov       dword ptr [data_bytes + 0x470140], 0x00000000 // 0x0078b2c3    c7054061e30000000000
_jmp_addr_0x0078b2cd:    ret                                                              // 0x0078b2cd    c3
                         nop                                                              // 0x0078b2ce    90
                         nop                                                              // 0x0078b2cf    90
                         push               ebx                                           // 0x0078b2d0    53
                         push               edi                                           // 0x0078b2d1    57
                         mov.s              edi, ecx                                      // 0x0078b2d2    8bf9
                         call               _jmp_addr_0x0078f1f0                          // 0x0078b2d4    e8173f0000
                         {disp32} mov       al, byte ptr [data_bytes + 0x43bdfc]          // 0x0078b2d9    a0fc1de000
                         mov                ebx, 0x00000001                               // 0x0078b2de    bb01000000
                         test               bl, al                                        // 0x0078b2e3    84c3
                         {disp32} jne       _jmp_addr_0x0078b3ac                          // 0x0078b2e5    0f85c1000000
                         {disp32} mov       edx, dword ptr [data_bytes + 0x351cac]        // 0x0078b2eb    8b15ac7cd100
                         mov.s              cl, al                                        // 0x0078b2f1    8ac8
                         {disp32} mov       eax, dword ptr [data_bytes + 0x351ca8]        // 0x0078b2f3    a1a87cd100
                         or.s               cl, bl                                        // 0x0078b2f8    0acb
                         cmp                edx, 0x00001a16                               // 0x0078b2fa    81fa161a0000
                         {disp32} mov       byte ptr [data_bytes + 0x43bdfc], cl          // 0x0078b300    880dfc1de000
                         mov.s              ecx, eax                                      // 0x0078b306    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b310                          // 0x0078b308    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013908]             // 0x0078b30a    8d8808390100
_jmp_addr_0x0078b310:    cmp                edx, 0x00001a17                               // 0x0078b310    81fa171a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b316    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be0c], ecx        // 0x0078b319    890d0c1ee000
                         mov.s              ecx, eax                                      // 0x0078b31f    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b329                          // 0x0078b321    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013914]             // 0x0078b323    8d8814390100
_jmp_addr_0x0078b329:    cmp                edx, 0x00001a15                               // 0x0078b329    81fa151a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b32f    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be10], ecx        // 0x0078b332    890d101ee000
                         mov.s              ecx, eax                                      // 0x0078b338    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b342                          // 0x0078b33a    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x000138fc]             // 0x0078b33c    8d88fc380100
_jmp_addr_0x0078b342:    cmp                edx, 0x00001a1a                               // 0x0078b342    81fa1a1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b348    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be14], ecx        // 0x0078b34b    890d141ee000
                         mov.s              ecx, eax                                      // 0x0078b351    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b35b                          // 0x0078b353    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013938]             // 0x0078b355    8d8838390100
_jmp_addr_0x0078b35b:    cmp                edx, 0x00001a1b                               // 0x0078b35b    81fa1b1a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b361    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be18], ecx        // 0x0078b364    890d181ee000
                         mov.s              ecx, eax                                      // 0x0078b36a    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b374                          // 0x0078b36c    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x00013944]             // 0x0078b36e    8d8844390100
_jmp_addr_0x0078b374:    cmp                edx, 0x00001a19                               // 0x0078b374    81fa191a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b37a    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be1c], ecx        // 0x0078b37d    890d1c1ee000
                         mov.s              ecx, eax                                      // 0x0078b383    8bc8
                         {disp8} jbe        _jmp_addr_0x0078b38d                          // 0x0078b385    7606
                         {disp32} lea       ecx, dword ptr [eax + 0x0001392c]             // 0x0078b387    8d882c390100
_jmp_addr_0x0078b38d:    cmp                edx, 0x00001a18                               // 0x0078b38d    81fa181a0000
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0078b393    8b4908
                         {disp32} mov       dword ptr [data_bytes + 0x43be20], ecx        // 0x0078b396    890d201ee000
                         {disp8} jbe        _jmp_addr_0x0078b3a3                          // 0x0078b39c    7605
                         add                eax, 0x00013920                               // 0x0078b39e    0520390100
_jmp_addr_0x0078b3a3:    {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0078b3a3    8b5008
                         {disp32} mov       dword ptr [data_bytes + 0x43be24], edx        // 0x0078b3a6    8915241ee000
_jmp_addr_0x0078b3ac:    push               0x3f800000                                    // 0x0078b3ac    680000803f
                         push               0x3f4ccccd                                    // 0x0078b3b1    68cdcc4c3f
                         push               0x0                                           // 0x0078b3b6    6a00
                         push               0x00e01e0c                                    // 0x0078b3b8    680c1ee000
                         push               -0x1                                          // 0x0078b3bd    6aff
                         push               0x000003fc                                    // 0x0078b3bf    68fc030000
                         push               0x7                                           // 0x0078b3c4    6a07
                         mov.s              ecx, edi                                      // 0x0078b3c6    8bcf
                         {disp32} mov       dword ptr [data_bytes + 0x470120], ebx        // 0x0078b3c8    891d2061e300
                         call               _jmp_addr_0x00798430                          // 0x0078b3ce    e85dd00000
                         {disp32} mov       dword ptr [data_bytes + 0x470120], 0x00000000 // 0x0078b3d3    c7052061e30000000000
                         {disp32} mov       eax, dword ptr [edi + 0x000000c4]             // 0x0078b3dd    8b87c4000000
                         {disp32} fld       dword ptr [eax + 0x00000450]                  // 0x0078b3e3    d98050040000
                         {disp32} fcomp     qword ptr [__real@3fe0000000000000]           // 0x0078b3e9    dc1d60b28a00
                         fnstsw             ax                                            // 0x0078b3ef    dfe0
                         test               ah, 0x41                                      // 0x0078b3f1    f6c441
                         {disp32} jne       _jmp_addr_0x0078b4b2                          // 0x0078b3f4    0f85b8000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x43beb8]        // 0x0078b3fa    8b0db81ee000
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0078b400    8d41ff
                         cmp                eax, 0x06                                     // 0x0078b403    83f806
                         {disp32} mov       dword ptr [data_bytes + 0x43be08], ebx        // 0x0078b406    891d081ee000
                         {disp32} ja        _jmp_addr_0x0078b4fe                          // 0x0078b40c    0f87ec000000
                         jmp                dword ptr [eax*4 + 0x78b504]                  // 0x0078b412    ff248504b57800
                         push               ebx                                           // 0x0078b419    53
                         call               _jmp_addr_0x0078bda0                          // 0x0078b41a    e881090000
                         add                esp, 0x04                                     // 0x0078b41f    83c404
                         pop                edi                                           // 0x0078b422    5f
                         pop                ebx                                           // 0x0078b423    5b
                         ret                                                              // 0x0078b424    c3
                         push               ebx                                           // 0x0078b425    53
                         call               _jmp_addr_0x0078c040                          // 0x0078b426    e8150c0000
                         add                esp, 0x04                                     // 0x0078b42b    83c404
                         pop                edi                                           // 0x0078b42e    5f
                         pop                ebx                                           // 0x0078b42f    5b
                         ret                                                              // 0x0078b430    c3
                         push               ebx                                           // 0x0078b431    53
                         call               _jmp_addr_0x0078c110                          // 0x0078b432    e8d90c0000
                         add                esp, 0x04                                     // 0x0078b437    83c404
                         pop                edi                                           // 0x0078b43a    5f
                         pop                ebx                                           // 0x0078b43b    5b
                         ret                                                              // 0x0078b43c    c3
                         push               ebx                                           // 0x0078b43d    53
                         call               _jmp_addr_0x0078c1e0                          // 0x0078b43e    e89d0d0000
                         add                esp, 0x04                                     // 0x0078b443    83c404
                         pop                edi                                           // 0x0078b446    5f
                         pop                ebx                                           // 0x0078b447    5b
                         ret                                                              // 0x0078b448    c3
                         push               ebx                                           // 0x0078b449    53
                         call               _jmp_addr_0x0078c2b0                          // 0x0078b44a    e8610e0000
                         add                esp, 0x04                                     // 0x0078b44f    83c404
                         pop                edi                                           // 0x0078b452    5f
                         pop                ebx                                           // 0x0078b453    5b
                         ret                                                              // 0x0078b454    c3
                         push               ebx                                           // 0x0078b455    53
                         call               _jmp_addr_0x0078c380                          // 0x0078b456    e8250f0000
                         add                esp, 0x04                                     // 0x0078b45b    83c404
                         pop                edi                                           // 0x0078b45e    5f
                         pop                ebx                                           // 0x0078b45f    5b
                         ret                                                              // 0x0078b460    c3
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x30ab18]        // 0x0078b461    8b0d180bcd00
                         mov                edx, dword ptr [ecx]                          // 0x0078b467    8b11
                         call               dword ptr [edx + 0xc]                         // 0x0078b469    ff520c
                         {disp32} mov       eax, dword ptr [_game]                        // 0x0078b46c    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x0025005c]             // 0x0078b471    8b805c002500
                         test               eax, eax                                      // 0x0078b477    85c0
                         {disp8} je         _jmp_addr_0x0078b483                          // 0x0078b479    7408
                         {disp32} mov       eax, dword ptr [eax + 0x000045c8]             // 0x0078b47b    8b80c8450000
                         {disp8} jmp        _jmp_addr_0x0078b485                          // 0x0078b481    eb02
_jmp_addr_0x0078b483:    xor.s              eax, eax                                      // 0x0078b483    33c0
_jmp_addr_0x0078b485:    {disp32} mov       ecx, dword ptr [data_bytes + 0x43be44]        // 0x0078b485    8b0d441ee000
                         cmp.s              ecx, eax                                      // 0x0078b48b    3bc8
                         {disp8} jl         _jmp_addr_0x0078b498                          // 0x0078b48d    7c09
                         {disp8} lea        ecx, dword ptr [eax + -0x01]                  // 0x0078b48f    8d48ff
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], ecx        // 0x0078b492    890d441ee000
_jmp_addr_0x0078b498:    test               ecx, ecx                                      // 0x0078b498    85c9
                         {disp8} jge        _jmp_addr_0x0078b4a6                          // 0x0078b49a    7d0a
                         {disp32} mov       dword ptr [data_bytes + 0x43be44], 0x00000000 // 0x0078b49c    c705441ee00000000000
_jmp_addr_0x0078b4a6:    push               ebx                                           // 0x0078b4a6    53
                         call               _jmp_addr_0x0078c450                          // 0x0078b4a7    e8a40f0000
                         add                esp, 0x04                                     // 0x0078b4ac    83c404
                         pop                edi                                           // 0x0078b4af    5f
                         pop                ebx                                           // 0x0078b4b0    5b
                         ret                                                              // 0x0078b4b1    c3
_jmp_addr_0x0078b4b2:    {disp32} mov       eax, dword ptr [data_bytes + 0x43be08]        // 0x0078b4b2    a1081ee000
                         test               eax, eax                                      // 0x0078b4b7    85c0
                         {disp8} je         _jmp_addr_0x0078b4fe                          // 0x0078b4b9    7443
                         push               0x0                                           // 0x0078b4bb    6a00
                         call               _jmp_addr_0x0078bda0                          // 0x0078b4bd    e8de080000
                         push               0x0                                           // 0x0078b4c2    6a00
                         call               _jmp_addr_0x0078c040                          // 0x0078b4c4    e8770b0000
                         push               0x0                                           // 0x0078b4c9    6a00
                         call               _jmp_addr_0x0078c110                          // 0x0078b4cb    e8400c0000
                         push               0x0                                           // 0x0078b4d0    6a00
                         call               _jmp_addr_0x0078c1e0                          // 0x0078b4d2    e8090d0000
                         push               0x0                                           // 0x0078b4d7    6a00
                         call               _jmp_addr_0x0078c2b0                          // 0x0078b4d9    e8d20d0000
                         push               0x0                                           // 0x0078b4de    6a00
                         call               _jmp_addr_0x0078c380                          // 0x0078b4e0    e89b0e0000
                         push               0x0                                           // 0x0078b4e5    6a00
                         call               _jmp_addr_0x0078c450                          // 0x0078b4e7    e8640f0000
                         add                esp, 0x1c                                     // 0x0078b4ec    83c41c
                         call               _jmp_addr_0x00513640                          // 0x0078b4ef    e84c81d8ff
                         {disp32} mov       dword ptr [data_bytes + 0x43be08], 0x00000000 // 0x0078b4f4    c705081ee00000000000
_jmp_addr_0x0078b4fe:    pop                edi                                           // 0x0078b4fe    5f
                         pop                ebx                                           // 0x0078b4ff    5b
                         ret                                                              // 0x0078b500    c3

// Snippet: db, [0x0078b501, 0x0078b504)
.byte 0x8d, 0x49, 0x00            // 0x0078b501

// Snippet: jmptbl, [0x0078b504, 0x0078b520)
.byte 0x19, 0xb4, 0x78, 0x00      // 0x0078b504
.byte 0x25, 0xb4, 0x78, 0x00      // 0x0078b508
.byte 0x31, 0xb4, 0x78, 0x00      // 0x0078b50c
.byte 0x3d, 0xb4, 0x78, 0x00      // 0x0078b510
.byte 0x49, 0xb4, 0x78, 0x00      // 0x0078b514
.byte 0x55, 0xb4, 0x78, 0x00      // 0x0078b518
.byte 0x61, 0xb4, 0x78, 0x00      // 0x0078b51c

