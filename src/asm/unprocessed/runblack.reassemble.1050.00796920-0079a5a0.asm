.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?GetSizeFootprintData@LH3DMesh@@QAEIXZ
.extern ?GetSizeUV2Data@LH3DMesh@@QAEIXZ
.extern ?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ
.extern @SetDestinationWithSpeedAndTime__6ZoomerFfff@20
.extern ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ
.extern _jmp_addr_0x00418a50
.extern @SetPosition__6ZoomerFf@12
.extern @Update__6ZoomerFf@12
.extern _jmp_addr_0x0046a680
.extern _jmp_addr_0x0046d210
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005760c0
.extern _jmp_addr_0x0078da70
.extern _jmp_addr_0x0078db20
.extern _jmp_addr_0x0078dce0
.extern _jmp_addr_0x0078de70
.extern _jmp_addr_0x0078e000
.extern _jmp_addr_0x0078e080
.extern _jmp_addr_0x0078e200
.extern _jmp_addr_0x0078e3d0
.extern _jmp_addr_0x0078e580
.extern _jmp_addr_0x0078e760
.extern _jmp_addr_0x00794e30
.extern _jmp_addr_0x00794f70
.extern ??0InnerRoom@@QAE@XZ
.extern _jmp_addr_0x00795090
.extern _jmp_addr_0x007950b0
.extern _jmp_addr_0x00795140
.extern _jmp_addr_0x00795210
.extern _jmp_addr_0x007952c0
.extern _jmp_addr_0x00795310
.extern _jmp_addr_0x007954a0
.extern _jmp_addr_0x00795980
.extern _jmp_addr_0x0079a720
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern ??_DLHOSFile@@QAEXXZ
.extern @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16
.extern ?Close@LHOSFile@@QAEIXZ
.extern @Read__8LHOSFileFPvUlPUl@20
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _atexit
.extern _sprintf
.extern _wcsncpy
.extern _wcslen
.extern _swprintf
.extern __strcmpi
.extern _strstr
.extern ___nw__FUl
.extern ?SetInverse@LHMatrix@@QAEXAAU1@@Z
.extern _jmp_addr_0x007fb5c0
.extern ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z
.extern @Release__8LH3DMeshFv@4
.extern _jmp_addr_0x00819490
.extern _ChangeFov__8LH3DTechFf@4
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x0081a760
.extern _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture
.extern ?SetD3DTillingOn@LH3DRender@@SAXH@Z
.extern ?SetD3DTillingOff@LH3DRender@@SAXH@Z
.extern @GetStringWidth__13GatheringTextFPwif@20
.extern _jmp_addr_0x00831df0
.extern _jmp_addr_0x008321c0
.extern _jmp_addr_0x008379e0
.extern ?Release@LH3DTexture@@QAEXXZ
.extern _jmp_addr_0x00838af0
.extern _jmp_addr_0x00838eb0
.extern _jmp_addr_0x00839010
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x0084a430
.extern _jmp_addr_0x0086d4a0
.extern _jmp_addr_0x0086d4d0
.extern _jmp_addr_0x0086d4e0
.extern _jmp_addr_0x00870920
.extern _jmp_addr_0x00870990

.globl @Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29
.globl @Init__11InnerCameraFPc@12
.globl @ReloadCamera__11InnerCameraFPc@12
.globl ?Close@InnerCamera@@UAEXXZ
.globl _jmp_addr_0x007974c0
.globl ??0InnerCamera@@QAE@XZ  
.globl _jmp_addr_0x00797510
.globl _jmp_addr_0x00797530
.globl _jmp_addr_0x00797590
.globl _jmp_addr_0x00797760
.globl _jmp_addr_0x007977a0
.globl _jmp_addr_0x00797f10
.globl _jmp_addr_0x00798350
.globl _jmp_addr_0x00798430
.globl @__ct__10TempleRoomFPCc@12
.globl _jmp_addr_0x007989a0
.globl _jmp_addr_0x007989e0
.globl _jmp_addr_0x00798af0
.globl _jmp_addr_0x00798b30
.globl _jmp_addr_0x00799190
.globl _jmp_addr_0x007991c0
.globl _jmp_addr_0x00799e60
.globl ?PreDraw@GameOptionsRoom@@UAEXXZ
.globl _jmp_addr_0x00799fe0
.globl ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.globl _jmp_addr_0x0079a290
.globl _jmp_addr_0x0079a3a0

.globl _globl_ct_0x00798240
.globl _globl_ct_0x00798270
.globl _globl_ct_0x007982a0
.globl _globl_ct_0x007982c0
.globl _globl_ct_0x007982e0
.globl _globl_ct_0x00798300
.globl _globl_ct_0x00798320
.globl _CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb
.globl _PreDraw__11InnerCameraFv
.globl ??_GInnerCamera@@UAEPAXI@Z
.globl _ReloadCamera__11InnerCameraFPc
.globl _Init__11InnerCameraFPc
.globl _Close__11InnerCameraFv
.globl _Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb
.globl ?DrawHand@GameOptionsRoom@@UAEXXZ

start_0x00796920_0x0079a5a0:
// Snippet: asm, [0x00796920, 0x0079a58c)
_PreDraw__11InnerCameraFv:
                         sub                  esp, 0x0c                                     // 0x00796920    83ec0c
                         push                 esi                                           // 0x00796923    56
                         push                 0x3fc90fdb                                    // 0x00796924    68db0fc93f
                         mov.s                esi, ecx                                      // 0x00796929    8bf1
                         call                 _ChangeFov__8LH3DTechFf@4                     // 0x0079692b    e8802c0800
                         {disp32} fld         dword ptr [data_bytes + 0x4dbdd0]             // 0x00796930    d905d01dea00
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x00796936    d80db4a38a00
                         {disp32} mov         dword ptr [_near_clipping], 0x3e4ccccd        // 0x0079693c    c705e039e800cdcc4c3e
                         {disp32} lea         edx, dword ptr [esi + 0x000003e0]             // 0x00796946    8d96e0030000
                         mov.s                eax, edx                                      // 0x0079694c    8bc2
                         fptan                                                              // 0x0079694e    d9f2
                         fstp                 st(0)                                         // 0x00796950    ddd8
                         {disp32} fmul        dword ptr [__real@3e4ccccd]                   // 0x00796952    d80d44b28a00
                         {disp32} fst         dword ptr [data_bytes + 0x27212c]             // 0x00796958    d9152c81c300
                         {disp32} fdiv        dword ptr [data_bytes + 0x4bd9ec]             // 0x0079695e    d835ec39e800
                         {disp32} fstp        dword ptr [data_bytes + 0x272130]             // 0x00796964    d91d3081c300
                         {disp32} fld         dword ptr [esi + 0x00000094]                  // 0x0079696a    d98694000000
                         {disp8} fstp         dword ptr [esp + 0x04]                        // 0x00796970    d95c2404
                         {disp32} fld         dword ptr [esi + 0x000000c4]                  // 0x00796974    d986c4000000
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                   // 0x0079697a    8b4c2404
                         {disp8} fstp         dword ptr [esp + 0x08]                        // 0x0079697e    d95c2408
                         {disp32} fld         dword ptr [esi + 0x000000f4]                  // 0x00796982    d986f4000000
                         mov                  dword ptr [eax], ecx                          // 0x00796988    8908
                         {disp8} mov          ecx, dword ptr [esp + 0x08]                   // 0x0079698a    8b4c2408
                         {disp8} mov          dword ptr [eax + 0x04], ecx                   // 0x0079698e    894804
                         {disp8} fstp         dword ptr [esp + 0x0c]                        // 0x00796991    d95c240c
                         {disp8} mov          ecx, dword ptr [esp + 0x0c]                   // 0x00796995    8b4c240c
                         {disp8} mov          dword ptr [eax + 0x08], ecx                   // 0x00796999    894808
                         {disp8} fld          dword ptr [esi + 0x04]                        // 0x0079699c    d94604
                         {disp8} fstp         dword ptr [esp + 0x04]                        // 0x0079699f    d95c2404
                         {disp8} fld          dword ptr [esi + 0x34]                        // 0x007969a3    d94634
                         {disp32} lea         ecx, dword ptr [esi + 0x000003d4]             // 0x007969a6    8d8ed4030000
                         {disp8} fstp         dword ptr [esp + 0x08]                        // 0x007969ac    d95c2408
                         {disp8} fld          dword ptr [esi + 0x64]                        // 0x007969b0    d94664
                         {disp8} mov          esi, dword ptr [esp + 0x04]                   // 0x007969b3    8b742404
                         mov.s                eax, ecx                                      // 0x007969b7    8bc1
                         mov                  dword ptr [eax], esi                          // 0x007969b9    8930
                         {disp8} mov          esi, dword ptr [esp + 0x08]                   // 0x007969bb    8b742408
                         {disp8} mov          dword ptr [eax + 0x04], esi                   // 0x007969bf    897004
                         {disp8} fstp         dword ptr [esp + 0x0c]                        // 0x007969c2    d95c240c
                         {disp8} mov          esi, dword ptr [esp + 0x0c]                   // 0x007969c6    8b74240c
                         {disp8} mov          dword ptr [eax + 0x08], esi                   // 0x007969ca    897008
                         call                 ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x007969cd    e84e2f0800
                         pop                  esi                                           // 0x007969d2    5e
                         add                  esp, 0x0c                                     // 0x007969d3    83c40c
                         ret                                                                // 0x007969d6    c3
                         nop                                                                // 0x007969d7    90
                         nop                                                                // 0x007969d8    90
                         nop                                                                // 0x007969d9    90
                         nop                                                                // 0x007969da    90
                         nop                                                                // 0x007969db    90
                         nop                                                                // 0x007969dc    90
                         nop                                                                // 0x007969dd    90
                         nop                                                                // 0x007969de    90
                         nop                                                                // 0x007969df    90
_CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb:
                         sub                  esp, 0x24                                     // 0x007969e0    83ec24
                         push                 ebx                                           // 0x007969e3    53
                         push                 esi                                           // 0x007969e4    56
                         {disp8} mov          esi, dword ptr [esp + 0x30]                   // 0x007969e5    8b742430
                         mov                  eax, dword ptr [esi]                          // 0x007969e9    8b06
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x007969eb    8b5608
                         mov.s                ebx, ecx                                      // 0x007969ee    8bd9
                         {disp8} mov          ecx, dword ptr [esi + 0x04]                   // 0x007969f0    8b4e04
                         {disp8} mov          dword ptr [esp + 0x20], eax                   // 0x007969f3    89442420
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x007969f7    8b460c
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x007969fa    894c2424
                         {disp8} mov          dword ptr [esp + 0x28], edx                   // 0x007969fe    89542428
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x00796a02    89442410
                         {disp8} mov          dword ptr [esp + 0x14], 0x00000000            // 0x00796a06    c744241400000000
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x00796a0e    8b542414
                         mov.s                ecx, esi                                      // 0x00796a12    8bce
                         mov                  dword ptr [ecx], edx                          // 0x00796a14    8911
                         {disp8} mov          dword ptr [esp + 0x18], 0x00000000            // 0x00796a16    c744241800000000
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00796a1e    8b442418
                         {disp8} mov          dword ptr [ecx + 0x04], eax                   // 0x00796a22    894104
                         {disp8} mov          eax, dword ptr [esp + 0x3c]                   // 0x00796a25    8b44243c
                         {disp8} mov          dword ptr [esi + 0x0c], eax                   // 0x00796a29    89460c
                         {disp8} mov          al, byte ptr [esp + 0x40]                     // 0x00796a2c    8a442440
                         push                 edi                                           // 0x00796a30    57
                         {disp8} mov          dword ptr [esp + 0x20], 0x00000000            // 0x00796a31    c744242000000000
                         {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x00796a39    8b542420
                         or                   edi, 0xffffffff                               // 0x00796a3d    83cfff
                         test                 al, al                                        // 0x00796a40    84c0
                         {disp8} mov          dword ptr [ecx + 0x08], edx                   // 0x00796a42    895108
                         {disp8} mov          dword ptr [esp + 0x34], 0x3dcccccd            // 0x00796a45    c7442434cdcccc3d
                         {disp8} jne          _jmp_addr_0x00796a57                          // 0x00796a4d    7508
                         {disp8} mov          dword ptr [esp + 0x34], 0x3e051eb8            // 0x00796a4f    c7442434b81e053e
_jmp_addr_0x00796a57:    cmp                  dword ptr [ebx + 0x00000124], 0x01            // 0x00796a57    83bb2401000001
                         {disp8} jne          _jmp_addr_0x00796a65                          // 0x00796a5e    7505
                         call                 _jmp_addr_0x00794f70                          // 0x00796a60    e80be5ffff
_jmp_addr_0x00796a65:    {disp8} lea          ecx, dword ptr [esp + 0x18]                   // 0x00796a65    8d4c2418
                         push                 ecx                                           // 0x00796a69    51
                         {disp8} lea          edx, dword ptr [esp + 0x48]                   // 0x00796a6a    8d542448
                         push                 edx                                           // 0x00796a6e    52
                         {disp8} lea          eax, dword ptr [esp + 0x48]                   // 0x00796a6f    8d442448
                         push                 eax                                           // 0x00796a73    50
                         {disp8} mov          eax, dword ptr [esp + 0x48]                   // 0x00796a74    8b442448
                         {disp8} lea          ecx, dword ptr [esp + 0x1c]                   // 0x00796a78    8d4c241c
                         push                 ecx                                           // 0x00796a7c    51
                         {disp8} mov          ecx, dword ptr [esp + 0x48]                   // 0x00796a7d    8b4c2448
                         {disp8} lea          edx, dword ptr [esp + 0x1c]                   // 0x00796a81    8d54241c
                         push                 edx                                           // 0x00796a85    52
                         push                 esi                                           // 0x00796a86    56
                         push                 eax                                           // 0x00796a87    50
                         push                 ecx                                           // 0x00796a88    51
                         mov.s                ecx, ebx                                      // 0x00796a89    8bcb
                         call                 _jmp_addr_0x00795980                          // 0x00796a8b    e8f0eeffff
                         test                 al, al                                        // 0x00796a90    84c0
                         {disp32} je          _jmp_addr_0x00796b2e                          // 0x00796a92    0f8496000000
                         {disp8} fld          dword ptr [esp + 0x0c]                        // 0x00796a98    d944240c
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x26e8]              // 0x00796a9c    d81de8b68a00
                         fnstsw               ax                                            // 0x00796aa2    dfe0
                         test                 ah, 0x41                                      // 0x00796aa4    f6c441
                         {disp32} jne         _jmp_addr_0x00796b2e                          // 0x00796aa7    0f8581000000
                         {disp8} mov          al, byte ptr [esp + 0x44]                     // 0x00796aad    8a442444
                         test                 al, al                                        // 0x00796ab1    84c0
                         {disp8} jne          _jmp_addr_0x00796b2e                          // 0x00796ab3    7579
                         {disp8} fld          dword ptr [esp + 0x40]                        // 0x00796ab5    d9442440
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x23750]             // 0x00796ab9    d81d50c78c00
                         fnstsw               ax                                            // 0x00796abf    dfe0
                         test                 ah, 0x41                                      // 0x00796ac1    f6c441
                         {disp8} jne          _jmp_addr_0x00796b2e                          // 0x00796ac4    7568
                         {disp8} fld          dword ptr [esp + 0x40]                        // 0x00796ac6    d9442440
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x17d88]             // 0x00796aca    d81d880d8c00
                         fnstsw               ax                                            // 0x00796ad0    dfe0
                         test                 ah, 0x01                                      // 0x00796ad2    f6c401
                         {disp8} je           _jmp_addr_0x00796b2e                          // 0x00796ad5    7457
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x00796ad7    d9442410
                         xor.s                edi, edi                                      // 0x00796adb    33ff
                         {disp32} fadd        dword ptr [rdata_bytes + 0xf5e68]             // 0x00796add    d80568ee9900
                         {disp32} fcom        dword ptr [rdata_bytes + 0x1dc9c]             // 0x00796ae3    d8159c6c8c00
                         fnstsw               ax                                            // 0x00796ae9    dfe0
                         test                 ah, 0x41                                      // 0x00796aeb    f6c441
                         {disp8} jne          _jmp_addr_0x00796b04                          // 0x00796aee    7514
_jmp_addr_0x00796af0:    {disp32} fsub        dword ptr [rdata_bytes + 0x1dc9c]             // 0x00796af0    d8259c6c8c00
                         inc                  edi                                           // 0x00796af6    47
                         {disp32} fcom        dword ptr [rdata_bytes + 0x1dc9c]             // 0x00796af7    d8159c6c8c00
                         fnstsw               ax                                            // 0x00796afd    dfe0
                         test                 ah, 0x41                                      // 0x00796aff    f6c441
                         {disp8} je           _jmp_addr_0x00796af0                          // 0x00796b02    74ec
_jmp_addr_0x00796b04:    {disp32} fld         dword ptr [rdata_bytes + 0x2d974]             // 0x00796b04    d90574698d00
                         {disp8} fsub         dword ptr [esp + 0x34]                        // 0x00796b0a    d8642434
                         fld                  st(1)                                         // 0x00796b0e    d9c1
                         fcompp                                                             // 0x00796b10    ded9
                         fnstsw               ax                                            // 0x00796b12    dfe0
                         test                 ah, 0x01                                      // 0x00796b14    f6c401
                         {disp8} je           _jmp_addr_0x00796b29                          // 0x00796b17    7410
                         {disp8} fcomp        dword ptr [esp + 0x34]                        // 0x00796b19    d85c2434
                         fnstsw               ax                                            // 0x00796b1d    dfe0
                         test                 ah, 0x41                                      // 0x00796b1f    f6c441
                         {disp8} jne          _jmp_addr_0x00796b2b                          // 0x00796b22    7507
                         and                  edi, 0x07                                     // 0x00796b24    83e707
                         {disp8} jmp          _jmp_addr_0x00796b2e                          // 0x00796b27    eb05
_jmp_addr_0x00796b29:    fstp                 st(0)                                         // 0x00796b29    ddd8
_jmp_addr_0x00796b2b:    or                   edi, 0xffffffff                               // 0x00796b2b    83cfff
_jmp_addr_0x00796b2e:    {disp8} mov          eax, dword ptr [esp + 0x24]                   // 0x00796b2e    8b442424
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x00796b32    8b4c2428
                         mov.s                edx, esi                                      // 0x00796b36    8bd6
                         mov                  dword ptr [edx], eax                          // 0x00796b38    8902
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                   // 0x00796b3a    8b44242c
                         {disp8} mov          dword ptr [edx + 0x04], ecx                   // 0x00796b3e    894a04
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x00796b41    8b4c2414
                         {disp8} mov          dword ptr [edx + 0x08], eax                   // 0x00796b45    894208
                         mov.s                eax, edi                                      // 0x00796b48    8bc7
                         pop                  edi                                           // 0x00796b4a    5f
                         {disp8} mov          dword ptr [esi + 0x0c], ecx                   // 0x00796b4b    894e0c
                         pop                  esi                                           // 0x00796b4e    5e
                         pop                  ebx                                           // 0x00796b4f    5b
                         add                  esp, 0x24                                     // 0x00796b50    83c424
                         ret                  0x0014                                        // 0x00796b53    c21400
                         nop                                                                // 0x00796b56    90
                         nop                                                                // 0x00796b57    90
                         nop                                                                // 0x00796b58    90
                         nop                                                                // 0x00796b59    90
                         nop                                                                // 0x00796b5a    90
                         nop                                                                // 0x00796b5b    90
                         nop                                                                // 0x00796b5c    90
                         nop                                                                // 0x00796b5d    90
                         nop                                                                // 0x00796b5e    90
                         nop                                                                // 0x00796b5f    90
_Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb:
@Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb@29:    xor.s                eax, eax                                      // 0x00796b60    33c0
                         {disp32} mov         al, byte ptr [data_bytes + 0x4bf304]          // 0x00796b62    a00453e800
                         sub                  esp, 0x6c                                     // 0x00796b67    83ec6c
                         push                 ebx                                           // 0x00796b6a    53
                         push                 ebp                                           // 0x00796b6b    55
                         push                 esi                                           // 0x00796b6c    56
                         push                 edi                                           // 0x00796b6d    57
                         mov.s                esi, ecx                                      // 0x00796b6e    8bf1
                         and                  eax, 0x02                                     // 0x00796b70    83e002
                         {disp32} mov         dword ptr [esp + 0x0000008c], eax             // 0x00796b73    8984248c000000
                         {disp32} mov         al, byte ptr [esp + 0x00000094]               // 0x00796b7a    8a842494000000
                         test                 al, al                                        // 0x00796b81    84c0
                         {disp8} je           _jmp_addr_0x00796b98                          // 0x00796b83    7413
                         {disp32} fld         dword ptr [data_bytes + 0x264150]             // 0x00796b85    d90550a1c200
                         {disp32} fcomp       dword ptr [__real@3e4ccccd]                   // 0x00796b8b    d81d44b28a00
                         fnstsw               ax                                            // 0x00796b91    dfe0
                         test                 ah, 0x41                                      // 0x00796b93    f6c441
                         {disp8} jne          _jmp_addr_0x00796bad                          // 0x00796b96    7515
_jmp_addr_0x00796b98:    cmp                  dword ptr [esp + 0x00000088], 0x01            // 0x00796b98    83bc248800000001
                         {disp8} jne          _jmp_addr_0x00796bad                          // 0x00796ba0    750b
                         {disp32} mov         dword ptr [esp + 0x00000088], 0x00000000      // 0x00796ba2    c784248800000000000000
_jmp_addr_0x00796bad:    mov                  edx, dword ptr [esi]                          // 0x00796bad    8b16
                         mov.s                ecx, esi                                      // 0x00796baf    8bce
                         call                 dword ptr [edx + 4]                           // 0x00796bb1    ff5204
                         {disp32} mov         edi, dword ptr [esp + 0x00000090]             // 0x00796bb4    8bbc2490000000
                         {disp32} lea         ebp, dword ptr [esi + 0x00000404]             // 0x00796bbb    8dae04040000
                         push                 ebp                                           // 0x00796bc1    55
                         {disp32} lea         edx, dword ptr [esi + 0x0000041c]             // 0x00796bc2    8d961c040000
                         push                 edx                                           // 0x00796bc8    52
                         {disp32} lea         edx, dword ptr [esi + 0x00000418]             // 0x00796bc9    8d9618040000
                         push                 edx                                           // 0x00796bcf    52
                         {disp32} lea         edx, dword ptr [esi + 0x00000414]             // 0x00796bd0    8d9614040000
                         push                 edx                                           // 0x00796bd6    52
                         {disp32} mov         edx, dword ptr [esp + 0x00000090]             // 0x00796bd7    8b942490000000
                         mov                  eax, 0x3f000000                               // 0x00796bde    b80000003f
                         {disp32} lea         ebx, dword ptr [esi + 0x00000410]             // 0x00796be3    8d9e10040000
                         push                 ebx                                           // 0x00796be9    53
                         {disp32} mov         dword ptr [esi + 0x000003ec], eax             // 0x00796bea    8986ec030000
                         {disp32} mov         dword ptr [esi + 0x000003f0], eax             // 0x00796bf0    8986f0030000
                         {disp32} mov         byte ptr [esi + 0x000003f4], 0x01             // 0x00796bf6    c686f403000001
                         {disp32} mov         dword ptr [esi + 0x000003f8], 0xffffffff      // 0x00796bfd    c786f8030000ffffffff
                         {disp8} mov          eax, dword ptr [edi + 0x04]                   // 0x00796c07    8b4704
                         mov                  ecx, dword ptr [edi]                          // 0x00796c0a    8b0f
                         push                 edx                                           // 0x00796c0c    52
                         push                 eax                                           // 0x00796c0d    50
                         push                 ecx                                           // 0x00796c0e    51
                         mov.s                ecx, esi                                      // 0x00796c0f    8bce
                         call                 _jmp_addr_0x00795980                          // 0x00796c11    e86aedffff
                         test                 al, al                                        // 0x00796c16    84c0
                         {disp8} je           _jmp_addr_0x00796c48                          // 0x00796c18    742e
                         fld                  dword ptr [ebx]                               // 0x00796c1a    d903
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x26e8]              // 0x00796c1c    d81de8b68a00
                         fnstsw               ax                                            // 0x00796c22    dfe0
                         test                 ah, 0x01                                      // 0x00796c24    f6c401
                         {disp8} je           _jmp_addr_0x00796c35                          // 0x00796c27    740c
                         {disp32} mov         dword ptr [esi + 0x000003f8], 0x00000001      // 0x00796c29    c786f803000001000000
                         {disp8} jmp          _jmp_addr_0x00796c48                          // 0x00796c33    eb13
_jmp_addr_0x00796c35:    {disp32} mov         al, byte ptr [esi + 0x0000041c]               // 0x00796c35    8a861c040000
                         neg                  al                                            // 0x00796c3b    f6d8
                         sbb.s                eax, eax                                      // 0x00796c3d    1bc0
                         add                  eax, 0x03                                     // 0x00796c3f    83c003
                         {disp32} mov         dword ptr [esi + 0x000003f8], eax             // 0x00796c42    8986f8030000
_jmp_addr_0x00796c48:    fild                 dword ptr [edi]                               // 0x00796c48    db07
                         xor.s                ecx, ecx                                      // 0x00796c4a    33c9
                         {disp32} mov         cx, word ptr [data_bytes + 0x4bf058]          // 0x00796c4c    668b0d5850e800
                         shr                  cx, 1                                         // 0x00796c53    66d1e9
                         xor.s                edx, edx                                      // 0x00796c56    33d2
                         {disp32} mov         eax, dword ptr [esp + 0x00000088]             // 0x00796c58    8b842488000000
                         and                  ecx, 0x0000ffff                               // 0x00796c5f    81e1ffff0000
                         {disp32} mov         dword ptr [esp + 0x00000090], ecx             // 0x00796c65    898c2490000000
                         {disp32} fidiv       dword ptr [esp + 0x00000090]                  // 0x00796c6c    dab42490000000
                         {disp32} fsub        dword ptr [_rdata_float1p0]                   // 0x00796c73    d82590a38a00
                         {disp32} fstp        dword ptr [esi + 0x000003fc]                  // 0x00796c79    d99efc030000
                         {disp32} mov         dx, word ptr [data_bytes + 0x4bf05a]          // 0x00796c7f    668b155a50e800
                         {disp8} fild         dword ptr [edi + 0x04]                        // 0x00796c86    db4704
                         shr                  dx, 1                                         // 0x00796c89    66d1ea
                         and                  edx, 0x0000ffff                               // 0x00796c8c    81e2ffff0000
                         test                 eax, eax                                      // 0x00796c92    85c0
                         {disp32} mov         dword ptr [esp + 0x00000090], edx             // 0x00796c94    89942490000000
                         {disp32} fidiv       dword ptr [esp + 0x00000090]                  // 0x00796c9b    dab42490000000
                         {disp32} fsub        dword ptr [_rdata_float1p0]                   // 0x00796ca2    d82590a38a00
                         {disp32} fstp        dword ptr [esi + 0x00000400]                  // 0x00796ca8    d99e00040000
                         {disp8} je           _jmp_addr_0x00796d0f                          // 0x00796cae    745f
                         {disp32} mov         eax, dword ptr [esi + 0x00000134]             // 0x00796cb0    8b8634010000
                         test                 eax, eax                                      // 0x00796cb6    85c0
                         {disp8} jne          _jmp_addr_0x00796d0f                          // 0x00796cb8    7555
                         {disp32} mov         eax, dword ptr [esi + 0x000003f8]             // 0x00796cba    8b86f8030000
                         {disp32} mov         edx, dword ptr [esi + 0x00000414]             // 0x00796cc0    8b9614040000
                         mov                  ecx, dword ptr [ebx]                          // 0x00796cc6    8b0b
                         {disp32} mov         dword ptr [esi + 0x0000013c], eax             // 0x00796cc8    89863c010000
                         {disp32} mov         eax, dword ptr [esi + 0x00000418]             // 0x00796cce    8b8618040000
                         {disp32} mov         dword ptr [esi + 0x00000140], edx             // 0x00796cd4    899640010000
                         {disp32} mov         dword ptr [esi + 0x00000144], ecx             // 0x00796cda    898e44010000
                         {disp32} mov         dword ptr [esi + 0x00000148], eax             // 0x00796ce0    898648010000
                         mov.s                edx, ebp                                      // 0x00796ce6    8bd5
                         mov                  eax, dword ptr [edx]                          // 0x00796ce8    8b02
                         {disp32} lea         ecx, dword ptr [esi + 0x0000014c]             // 0x00796cea    8d8e4c010000
                         mov                  dword ptr [ecx], eax                          // 0x00796cf0    8901
                         {disp8} mov          eax, dword ptr [edx + 0x04]                   // 0x00796cf2    8b4204
                         {disp8} mov          edx, dword ptr [edx + 0x08]                   // 0x00796cf5    8b5208
                         {disp8} mov          dword ptr [ecx + 0x04], eax                   // 0x00796cf8    894104
                         {disp8} mov          dword ptr [ecx + 0x08], edx                   // 0x00796cfb    895108
                         mov                  eax, dword ptr [edi]                          // 0x00796cfe    8b07
                         {disp32} mov         dword ptr [esi + 0x00000158], eax             // 0x00796d00    898658010000
                         {disp8} mov          ecx, dword ptr [edi + 0x04]                   // 0x00796d06    8b4f04
                         {disp32} mov         dword ptr [esi + 0x0000015c], ecx             // 0x00796d09    898e5c010000
_jmp_addr_0x00796d0f:    {disp32} mov         eax, dword ptr [esp + 0x0000008c]             // 0x00796d0f    8b84248c000000
                         test                 eax, eax                                      // 0x00796d16    85c0
                         {disp8} je           _jmp_addr_0x00796d82                          // 0x00796d18    7468
                         {disp32} mov         ecx, dword ptr [esi + 0x00000134]             // 0x00796d1a    8b8e34010000
                         test                 ecx, ecx                                      // 0x00796d20    85c9
                         {disp8} jne          _jmp_addr_0x00796d82                          // 0x00796d22    755e
                         {disp32} mov         ecx, dword ptr [esi + 0x00000138]             // 0x00796d24    8b8e38010000
                         test                 ecx, ecx                                      // 0x00796d2a    85c9
                         {disp8} jne          _jmp_addr_0x00796d82                          // 0x00796d2c    7554
                         {disp32} mov         edx, dword ptr [esi + 0x000003f8]             // 0x00796d2e    8b96f8030000
                         mov                  ecx, dword ptr [ebx]                          // 0x00796d34    8b0b
                         {disp32} mov         dword ptr [esi + 0x0000013c], edx             // 0x00796d36    89963c010000
                         {disp32} mov         edx, dword ptr [esi + 0x00000414]             // 0x00796d3c    8b9614040000
                         {disp32} mov         dword ptr [esi + 0x00000144], ecx             // 0x00796d42    898e44010000
                         {disp32} mov         ecx, dword ptr [esi + 0x00000418]             // 0x00796d48    8b8e18040000
                         {disp32} mov         dword ptr [esi + 0x00000140], edx             // 0x00796d4e    899640010000
                         {disp32} mov         dword ptr [esi + 0x00000148], ecx             // 0x00796d54    898e48010000
                         {disp8} mov          ecx, dword ptr [ebp + 0x00]                   // 0x00796d5a    8b4d00
                         {disp32} lea         edx, dword ptr [esi + 0x0000014c]             // 0x00796d5d    8d964c010000
                         mov                  dword ptr [edx], ecx                          // 0x00796d63    890a
                         {disp8} mov          ecx, dword ptr [ebp + 0x04]                   // 0x00796d65    8b4d04
                         {disp8} mov          dword ptr [edx + 0x04], ecx                   // 0x00796d68    894a04
                         {disp8} mov          ecx, dword ptr [ebp + 0x08]                   // 0x00796d6b    8b4d08
                         {disp8} mov          dword ptr [edx + 0x08], ecx                   // 0x00796d6e    894a08
                         mov                  edx, dword ptr [edi]                          // 0x00796d71    8b17
                         {disp32} mov         dword ptr [esi + 0x00000158], edx             // 0x00796d73    899658010000
                         {disp8} mov          ecx, dword ptr [edi + 0x04]                   // 0x00796d79    8b4f04
                         {disp32} mov         dword ptr [esi + 0x0000015c], ecx             // 0x00796d7c    898e5c010000
_jmp_addr_0x00796d82:    {disp32} mov         ecx, dword ptr [esp + 0x00000094]             // 0x00796d82    8b8c2494000000
                         {disp32} mov         ebx, dword ptr [esp + 0x00000084]             // 0x00796d89    8b9c2484000000
                         {disp32} mov         ebp, dword ptr [esp + 0x00000080]             // 0x00796d90    8bac2480000000
                         mov                  edx, dword ptr [esi]                          // 0x00796d97    8b16
                         push                 ecx                                           // 0x00796d99    51
                         push                 edi                                           // 0x00796d9a    57
                         push                 eax                                           // 0x00796d9b    50
                         {disp32} mov         eax, dword ptr [esp + 0x00000094]             // 0x00796d9c    8b842494000000
                         push                 eax                                           // 0x00796da3    50
                         push                 ebx                                           // 0x00796da4    53
                         push                 ebp                                           // 0x00796da5    55
                         mov.s                ecx, esi                                      // 0x00796da6    8bce
                         call                 dword ptr [edx + 0x1c]                        // 0x00796da8    ff521c
                         {disp32} mov         eax, dword ptr [esp + 0x00000094]             // 0x00796dab    8b842494000000
                         {disp32} mov         ecx, dword ptr [esp + 0x0000008c]             // 0x00796db2    8b8c248c000000
                         mov                  edx, dword ptr [esi]                          // 0x00796db9    8b16
                         push                 eax                                           // 0x00796dbb    50
                         {disp32} mov         eax, dword ptr [esp + 0x0000008c]             // 0x00796dbc    8b84248c000000
                         push                 edi                                           // 0x00796dc3    57
                         push                 ecx                                           // 0x00796dc4    51
                         push                 eax                                           // 0x00796dc5    50
                         push                 ebx                                           // 0x00796dc6    53
                         push                 ebp                                           // 0x00796dc7    55
                         mov.s                ecx, esi                                      // 0x00796dc8    8bce
                         call                 dword ptr [edx + 0x20]                        // 0x00796dca    ff5220
                         {disp32} mov         dword ptr [esp + 0x00000090], eax             // 0x00796dcd    89842490000000
                         {disp32} mov         al, byte ptr [esi + 0x000003f4]               // 0x00796dd4    8a86f4030000
                         test                 al, al                                        // 0x00796dda    84c0
                         {disp32} je          _jmp_addr_0x00796f93                          // 0x00796ddc    0f84b1010000
                         {disp32} mov         ecx, dword ptr [esi + 0x000003ec]             // 0x00796de2    8b8eec030000
                         {disp32} fld         dword ptr [esi + 0x000003d4]                  // 0x00796de8    d986d4030000
                         mov.s                ebp, ecx                                      // 0x00796dee    8be9
                         push                 ebp                                           // 0x00796df0    55
                         push                 0x0                                           // 0x00796df1    6a00
                         push                 ecx                                           // 0x00796df3    51
                         {disp32} mov         dword ptr [esp + 0x000000a0], ecx             // 0x00796df4    898c24a0000000
                         {disp8} lea          edi, dword ptr [esi + 0x04]                   // 0x00796dfb    8d7e04
                         fstp                 dword ptr [esp]                               // 0x00796dfe    d91c24
                         mov.s                ecx, edi                                      // 0x00796e01    8bcf
                         call                 @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796e03    e8580fc7ff
                         {disp32} fld         dword ptr [esi + 0x000003d8]                  // 0x00796e08    d986d8030000
                         push                 ebp                                           // 0x00796e0e    55
                         push                 0x0                                           // 0x00796e0f    6a00
                         push                 ecx                                           // 0x00796e11    51
                         fstp                 dword ptr [esp]                               // 0x00796e12    d91c24
                         {disp8} lea          ecx, dword ptr [edi + 0x30]                   // 0x00796e15    8d4f30
                         call                 @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796e18    e8430fc7ff
                         {disp32} fld         dword ptr [esi + 0x000003dc]                  // 0x00796e1d    d986dc030000
                         push                 ebp                                           // 0x00796e23    55
                         push                 0x0                                           // 0x00796e24    6a00
                         push                 ecx                                           // 0x00796e26    51
                         fstp                 dword ptr [esp]                               // 0x00796e27    d91c24
                         {disp8} lea          ecx, dword ptr [edi + 0x60]                   // 0x00796e2a    8d4f60
                         call                 @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796e2d    e82e0fc7ff
                         {disp32} fld         dword ptr [esi + 0x000003e0]                  // 0x00796e32    d986e0030000
                         {disp32} mov         edx, dword ptr [esi + 0x000003f0]             // 0x00796e38    8b96f0030000
                         mov.s                ebp, edx                                      // 0x00796e3e    8bea
                         push                 ebp                                           // 0x00796e40    55
                         push                 0x0                                           // 0x00796e41    6a00
                         push                 ecx                                           // 0x00796e43    51
                         {disp32} lea         edi, dword ptr [esi + 0x00000094]             // 0x00796e44    8dbe94000000
                         fstp                 dword ptr [esp]                               // 0x00796e4a    d91c24
                         mov.s                ecx, edi                                      // 0x00796e4d    8bcf
                         {disp32} mov         dword ptr [esp + 0x000000a0], edx             // 0x00796e4f    899424a0000000
                         call                 @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796e56    e8050fc7ff
                         {disp32} fld         dword ptr [esi + 0x000003e4]                  // 0x00796e5b    d986e4030000
                         push                 ebp                                           // 0x00796e61    55
                         xor.s                ebp, ebp                                      // 0x00796e62    33ed
                         push                 ebp                                           // 0x00796e64    55
                         push                 ecx                                           // 0x00796e65    51
                         fstp                 dword ptr [esp]                               // 0x00796e66    d91c24
                         {disp8} lea          ecx, dword ptr [edi + 0x30]                   // 0x00796e69    8d4f30
                         call                 @SetDestinationWithSpeedAndTime__6ZoomerFfff@20                          // 0x00796e6c    e8ef0ec7ff
                         {disp32} fld         dword ptr [esp + 0x00000094]                  // 0x00796e71    d9842494000000
                         {disp32} fcomp       dword ptr [_rdata_float0p001]                 // 0x00796e78    d81db0a38a00
                         {disp32} mov         eax, dword ptr [esi + 0x000003e8]             // 0x00796e7e    8b86e8030000
                         {disp32} mov         dword ptr [esp + 0x00000080], eax             // 0x00796e84    89842480000000
                         add                  edi, 0x60                                     // 0x00796e8b    83c760
                         fnstsw               ax                                            // 0x00796e8e    dfe0
                         test                 ah, 0x01                                      // 0x00796e90    f6c401
                         {disp8} je           _jmp_addr_0x00796ea9                          // 0x00796e93    7414
                         {disp32} mov         ecx, dword ptr [esp + 0x00000080]             // 0x00796e95    8b8c2480000000
                         push                 ecx                                           // 0x00796e9c    51
                         mov.s                ecx, edi                                      // 0x00796e9d    8bcf
                         call                 @SetPosition__6ZoomerFf@12                    // 0x00796e9f    e81caccaff
                         {disp32} jmp         _jmp_addr_0x00796f95                          // 0x00796ea4    e9ec000000
_jmp_addr_0x00796ea9:    {disp32} fld         dword ptr [esp + 0x00000094]                  // 0x00796ea9    d9842494000000
                         mov                  edx, dword ptr [edi]                          // 0x00796eb0    8b17
                         fld                  st(0)                                         // 0x00796eb2    d9c0
                         fmulp                st(1), st                                     // 0x00796eb4    dec9
                         {disp32} mov         ecx, dword ptr [esp + 0x00000080]             // 0x00796eb6    8b8c2480000000
                         {disp8} mov          eax, dword ptr [edi + 0x0c]                   // 0x00796ebd    8b470c
                         {disp8} mov          dword ptr [edi + 0x1c], edx                   // 0x00796ec0    89571c
                         {disp32} mov         edx, dword ptr [esp + 0x00000094]             // 0x00796ec3    8b942494000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x00796eca    d80db4a38a00
                         {disp8} mov          dword ptr [edi + 0x04], ecx                   // 0x00796ed0    894f04
                         mov.s                ecx, edx                                      // 0x00796ed3    8bca
                         fld                  st(0)                                         // 0x00796ed5    d9c0
                         {disp8} mov          dword ptr [edi + 0x20], eax                   // 0x00796ed7    894720
                         {disp32} fmul        dword ptr [esp + 0x00000094]                  // 0x00796eda    d88c2494000000
                         mov.s                eax, edx                                      // 0x00796ee1    8bc2
                         {disp8} mov          dword ptr [edi + 0x18], edx                   // 0x00796ee3    895718
                         {disp8} mov          dword ptr [esp + 0x38], ecx                   // 0x00796ee6    894c2438
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x00796eea    d80d6cb28a00
                         fld                  st(1)                                         // 0x00796ef0    d9c1
                         {disp8} lea          edx, dword ptr [esp + 0x1c]                   // 0x00796ef2    8d54241c
                         fmul                 st, st(2)                                     // 0x00796ef6    d8ca
                         {disp8} lea          ecx, dword ptr [esp + 0x4c]                   // 0x00796ef8    8d4c244c
                         {disp8} mov          dword ptr [edi + 0x08], ebp                   // 0x00796efc    896f08
                         {disp8} mov          dword ptr [edi + 0x14], ebp                   // 0x00796eff    896f14
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x00796f02    d80d68b28a00
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x00796f08    89442430
                         {disp8} mov          dword ptr [esp + 0x3c], 0x3f800000            // 0x00796f0c    c744243c0000803f
                         {disp8} fstp         dword ptr [esp + 0x1c]                        // 0x00796f14    d95c241c
                         {disp8} mov          dword ptr [esp + 0x48], 0x00000000            // 0x00796f18    c744244800000000
                         {disp8} fst          dword ptr [esp + 0x20]                        // 0x00796f20    d9542420
                         {disp8} mov          dword ptr [esp + 0x44], 0x00000000            // 0x00796f24    c744244400000000
                         fld                  st(1)                                         // 0x00796f2c    d9c1
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000000            // 0x00796f2e    c744244000000000
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x00796f36    d95c2424
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x00796f3a    d95c2428
                         {disp8} fst          dword ptr [esp + 0x2c]                        // 0x00796f3e    d954242c
                         {disp8} fstp         dword ptr [esp + 0x34]                        // 0x00796f42    d95c2434
                         call                 ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x00796f46    e845430600
                         {disp8} fld          dword ptr [edi + 0x04]                        // 0x00796f4b    d94704
                         {disp8} lea          edx, dword ptr [esp + 0x10]                   // 0x00796f4e    8d542410
                         {disp8} fsub         dword ptr [edi + 0x1c]                        // 0x00796f52    d8671c
                         {disp8} lea          ecx, dword ptr [esp + 0x4c]                   // 0x00796f55    8d4c244c
                         {disp8} fld          dword ptr [edi + 0x20]                        // 0x00796f59    d94720
                         {disp8} mov          dword ptr [esp + 0x18], 0x00000000            // 0x00796f5c    c744241800000000
                         {disp8} fmul         dword ptr [edi + 0x18]                        // 0x00796f64    d84f18
                         fsubp                st(1), st                                     // 0x00796f67    dee9
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x00796f69    d95c2410
                         {disp8} fld          dword ptr [edi + 0x08]                        // 0x00796f6d    d94708
                         {disp8} fsub         dword ptr [edi + 0x20]                        // 0x00796f70    d86720
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x00796f73    d95c2414
                         call                 _jmp_addr_0x00418a50                          // 0x00796f77    e8d41ac8ff
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x00796f7c    8b542410
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x00796f80    8b442414
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x00796f84    8b4c2418
                         {disp8} mov          dword ptr [edi + 0x2c], edx                   // 0x00796f88    89572c
                         {disp8} mov          dword ptr [edi + 0x28], eax                   // 0x00796f8b    894728
                         {disp8} mov          dword ptr [edi + 0x24], ecx                   // 0x00796f8e    894f24
                         {disp8} jmp          _jmp_addr_0x00796f95                          // 0x00796f91    eb02
_jmp_addr_0x00796f93:    xor.s                ebp, ebp                                      // 0x00796f93    33ed
_jmp_addr_0x00796f95:    {disp32} fld         dword ptr [esp + 0x00000084]                  // 0x00796f95    d9842484000000
                         {disp8} fadd         dword ptr [esi + 0x18]                        // 0x00796f9c    d84618
                         {disp8} fcom         dword ptr [esi + 0x1c]                        // 0x00796f9f    d8561c
                         {disp8} fst          dword ptr [esi + 0x18]                        // 0x00796fa2    d95618
                         fnstsw               ax                                            // 0x00796fa5    dfe0
                         test                 ah, 0x01                                      // 0x00796fa7    f6c401
                         {disp8} jne          _jmp_addr_0x00796fc5                          // 0x00796faa    7519
                         {disp8} mov          edx, dword ptr [esi + 0x08]                   // 0x00796fac    8b5608
                         fstp                 st(0)                                         // 0x00796faf    ddd8
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00796fb1    8b460c
                         {disp8} mov          ecx, dword ptr [esi + 0x1c]                   // 0x00796fb4    8b4e1c
                         {disp8} mov          dword ptr [esi + 0x04], edx                   // 0x00796fb7    895604
                         {disp8} mov          dword ptr [esi + 0x10], eax                   // 0x00796fba    894610
                         {disp8} mov          dword ptr [esi + 0x14], ebp                   // 0x00796fbd    896e14
                         {disp8} mov          dword ptr [esi + 0x18], ecx                   // 0x00796fc0    894e18
                         {disp8} jmp          _jmp_addr_0x00797018                          // 0x00796fc3    eb53
_jmp_addr_0x00796fc5:    fld                  st(0)                                         // 0x00796fc5    d9c0
                         fld                  st(0)                                         // 0x00796fc7    d9c0
                         fmulp                st(1), st                                     // 0x00796fc9    dec9
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x00796fcb    d80db4a38a00
                         fld                  st(1)                                         // 0x00796fd1    d9c1
                         fmul                 st, st(1)                                     // 0x00796fd3    d8c9
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x00796fd5    d80d6cb28a00
                         fld                  st(2)                                         // 0x00796fdb    d9c2
                         {disp8} fmul         dword ptr [esi + 0x28]                        // 0x00796fdd    d84e28
                         fld                  st(2)                                         // 0x00796fe0    d9c2
                         {disp8} fmul         dword ptr [esi + 0x2c]                        // 0x00796fe2    d84e2c
                         faddp                st(1), st                                     // 0x00796fe5    dec1
                         fld                  st(1)                                         // 0x00796fe7    d9c1
                         {disp8} fmul         dword ptr [esi + 0x30]                        // 0x00796fe9    d84e30
                         faddp                st(1), st                                     // 0x00796fec    dec1
                         {disp8} fadd         dword ptr [esi + 0x24]                        // 0x00796fee    d84624
                         {disp8} fstp         dword ptr [esi + 0x10]                        // 0x00796ff1    d95e10
                         fld                  st(1)                                         // 0x00796ff4    d9c1
                         fmul                 st, st(2)                                     // 0x00796ff6    d8ca
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x00796ff8    d80d68b28a00
                         {disp8} fmul         dword ptr [esi + 0x30]                        // 0x00796ffe    d84e30
                         fxch                 st(3)                                         // 0x00797001    d9cb
                         {disp8} fmul         dword ptr [esi + 0x24]                        // 0x00797003    d84e24
                         faddp                st(3), st                                     // 0x00797006    dec3
                         {disp8} fmul         dword ptr [esi + 0x2c]                        // 0x00797008    d84e2c
                         faddp                st(2), st                                     // 0x0079700b    dec2
                         {disp8} fmul         dword ptr [esi + 0x28]                        // 0x0079700d    d84e28
                         faddp                st(1), st                                     // 0x00797010    dec1
                         {disp8} fadd         dword ptr [esi + 0x20]                        // 0x00797012    d84620
                         {disp8} fstp         dword ptr [esi + 0x04]                        // 0x00797015    d95e04
_jmp_addr_0x00797018:    push                 ebx                                           // 0x00797018    53
                         {disp8} lea          ecx, dword ptr [esi + 0x34]                   // 0x00797019    8d4e34
                         call                 @Update__6ZoomerFf@12                         // 0x0079701c    e8ffb6caff
                         push                 ebx                                           // 0x00797021    53
                         {disp8} lea          ecx, dword ptr [esi + 0x64]                   // 0x00797022    8d4e64
                         call                 @Update__6ZoomerFf@12                         // 0x00797025    e8f6b6caff
                         {disp32} fld         dword ptr [esp + 0x00000084]                  // 0x0079702a    d9842484000000
                         {disp32} fadd        dword ptr [esi + 0x000000a8]                  // 0x00797031    d886a8000000
                         {disp32} fcom        dword ptr [esi + 0x000000ac]                  // 0x00797037    d896ac000000
                         {disp32} fst         dword ptr [esi + 0x000000a8]                  // 0x0079703d    d996a8000000
                         fnstsw               ax                                            // 0x00797043    dfe0
                         test                 ah, 0x01                                      // 0x00797045    f6c401
                         {disp8} jne          _jmp_addr_0x00797078                          // 0x00797048    752e
                         {disp32} mov         edx, dword ptr [esi + 0x00000098]             // 0x0079704a    8b9698000000
                         fstp                 st(0)                                         // 0x00797050    ddd8
                         {disp32} mov         eax, dword ptr [esi + 0x0000009c]             // 0x00797052    8b869c000000
                         {disp32} mov         ecx, dword ptr [esi + 0x000000ac]             // 0x00797058    8b8eac000000
                         {disp32} mov         dword ptr [esi + 0x00000094], edx             // 0x0079705e    899694000000
                         {disp32} mov         dword ptr [esi + 0x000000a0], eax             // 0x00797064    8986a0000000
                         {disp32} mov         dword ptr [esi + 0x000000a4], ebp             // 0x0079706a    89aea4000000
                         {disp32} mov         dword ptr [esi + 0x000000a8], ecx             // 0x00797070    898ea8000000
                         {disp8} jmp          _jmp_addr_0x007970f0                          // 0x00797076    eb78
_jmp_addr_0x00797078:    fld                  st(0)                                         // 0x00797078    d9c0
                         fld                  st(0)                                         // 0x0079707a    d9c0
                         fmulp                st(1), st                                     // 0x0079707c    dec9
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x0079707e    d80db4a38a00
                         fld                  st(1)                                         // 0x00797084    d9c1
                         fmul                 st, st(1)                                     // 0x00797086    d8c9
                         {disp32} fmul        dword ptr [__real@3eaaaaab]                   // 0x00797088    d80d6cb28a00
                         fld                  st(1)                                         // 0x0079708e    d9c1
                         {disp32} fmul        dword ptr [esi + 0x000000bc]                  // 0x00797090    d88ebc000000
                         fld                  st(1)                                         // 0x00797096    d9c1
                         {disp32} fmul        dword ptr [esi + 0x000000c0]                  // 0x00797098    d88ec0000000
                         faddp                st(1), st                                     // 0x0079709e    dec1
                         fld                  st(3)                                         // 0x007970a0    d9c3
                         {disp32} fmul        dword ptr [esi + 0x000000b8]                  // 0x007970a2    d88eb8000000
                         faddp                st(1), st                                     // 0x007970a8    dec1
                         {disp32} fadd        dword ptr [esi + 0x000000b4]                  // 0x007970aa    d886b4000000
                         {disp32} fstp        dword ptr [esi + 0x000000a0]                  // 0x007970b0    d99ea0000000
                         fld                  st(1)                                         // 0x007970b6    d9c1
                         fmul                 st, st(2)                                     // 0x007970b8    d8ca
                         {disp32} fmul        dword ptr [__real@3e2aaaab]                   // 0x007970ba    d80d68b28a00
                         {disp32} fmul        dword ptr [esi + 0x000000c0]                  // 0x007970c0    d88ec0000000
                         fxch                 st(1)                                         // 0x007970c6    d9c9
                         {disp32} fmul        dword ptr [esi + 0x000000bc]                  // 0x007970c8    d88ebc000000
                         faddp                st(1), st                                     // 0x007970ce    dec1
                         fxch                 st(1)                                         // 0x007970d0    d9c9
                         {disp32} fmul        dword ptr [esi + 0x000000b8]                  // 0x007970d2    d88eb8000000
                         faddp                st(1), st                                     // 0x007970d8    dec1
                         fxch                 st(1)                                         // 0x007970da    d9c9
                         {disp32} fmul        dword ptr [esi + 0x000000b4]                  // 0x007970dc    d88eb4000000
                         faddp                st(1), st                                     // 0x007970e2    dec1
                         {disp32} fadd        dword ptr [esi + 0x000000b0]                  // 0x007970e4    d886b0000000
                         {disp32} fstp        dword ptr [esi + 0x00000094]                  // 0x007970ea    d99e94000000
_jmp_addr_0x007970f0:    push                 ebx                                           // 0x007970f0    53
                         {disp32} lea         ecx, dword ptr [esi + 0x000000c4]             // 0x007970f1    8d8ec4000000
                         call                 @Update__6ZoomerFf@12                         // 0x007970f7    e824b6caff
                         push                 ebx                                           // 0x007970fc    53
                         {disp32} lea         ecx, dword ptr [esi + 0x000000f4]             // 0x007970fd    8d8ef4000000
                         call                 @Update__6ZoomerFf@12                         // 0x00797103    e818b6caff
                         {disp32} mov         eax, dword ptr [esp + 0x0000008c]             // 0x00797108    8b84248c000000
                         {disp32} mov         edx, dword ptr [esp + 0x00000088]             // 0x0079710f    8b942488000000
                         pop                  edi                                           // 0x00797116    5f
                         {disp32} mov         dword ptr [esi + 0x00000138], eax             // 0x00797117    898638010000
                         {disp32} mov         eax, dword ptr [esp + 0x0000008c]             // 0x0079711d    8b84248c000000
                         {disp32} mov         dword ptr [esi + 0x00000134], edx             // 0x00797124    899634010000
                         pop                  esi                                           // 0x0079712a    5e
                         pop                  ebp                                           // 0x0079712b    5d
                         pop                  ebx                                           // 0x0079712c    5b
                         add                  esp, 0x6c                                     // 0x0079712d    83c46c
                         ret                  0x0018                                        // 0x00797130    c21800
                         nop                                                                // 0x00797133    90
                         nop                                                                // 0x00797134    90
                         nop                                                                // 0x00797135    90
                         nop                                                                // 0x00797136    90
                         nop                                                                // 0x00797137    90
                         nop                                                                // 0x00797138    90
                         nop                                                                // 0x00797139    90
                         nop                                                                // 0x0079713a    90
                         nop                                                                // 0x0079713b    90
                         nop                                                                // 0x0079713c    90
                         nop                                                                // 0x0079713d    90
                         nop                                                                // 0x0079713e    90
                         nop                                                                // 0x0079713f    90
_Init__11InnerCameraFPc:
@Init__11InnerCameraFPc@12:    sub                  esp, 0x18                                     // 0x00797140    83ec18
                         push                 ebx                                           // 0x00797143    53
                         xor.s                ebx, ebx                                      // 0x00797144    33db
                         push                 ebp                                           // 0x00797146    55
                         mov.s                ebp, ecx                                      // 0x00797147    8be9
                         push                 esi                                           // 0x00797149    56
                         push                 edi                                           // 0x0079714a    57
                         {disp32} lea         eax, dword ptr [ebp + 0x0000042c]             // 0x0079714b    8d852c040000
                         mov.s                edi, eax                                      // 0x00797151    8bf8
                         {disp32} mov         dword ptr [ebp + 0x00000450], ebx             // 0x00797153    899d50040000
                         {disp32} mov         byte ptr [ebp + 0x00000399], bl               // 0x00797159    889d99030000
                         {disp32} mov         byte ptr [ebp + 0x00000398], bl               // 0x0079715f    889d98030000
                         mov.s                eax, ebx                                      // 0x00797165    8bc3
                         mov                  dword ptr [edi], eax                          // 0x00797167    8907
                         {disp32} mov         dword ptr [ebp + 0x000003cc], ebx             // 0x00797169    899dcc030000
                         {disp32} mov         dword ptr [ebp + 0x000003d0], ebx             // 0x0079716f    899dd0030000
                         mov.s                ecx, ebx                                      // 0x00797175    8bcb
                         {disp8} mov          dword ptr [edi + 0x04], ecx                   // 0x00797177    894f04
                         mov.s                edx, ebx                                      // 0x0079717a    8bd3
                         {disp8} mov          dword ptr [edi + 0x08], edx                   // 0x0079717c    895708
                         {disp32} lea         edi, dword ptr [ebp + 0x00000420]             // 0x0079717f    8dbd20040000
                         mov                  dword ptr [edi], eax                          // 0x00797185    8907
                         {disp8} mov          dword ptr [edi + 0x04], ecx                   // 0x00797187    894f04
                         {disp8} mov          dword ptr [edi + 0x08], edx                   // 0x0079718a    895708
                         or                   esi, 0xffffffff                               // 0x0079718d    83ceff
                         {disp32} mov         dword ptr [ebp + 0x0000044c], esi             // 0x00797190    89b54c040000
                         {disp32} mov         dword ptr [ebp + 0x0000012c], esi             // 0x00797196    89b52c010000
                         {disp32} fld         dword ptr [data_bytes + 0x4dbdb8]             // 0x0079719c    d905b81dea00
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4dbdbc]        // 0x007971a2    8b0dbc1dea00
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4dbdc0]        // 0x007971a8    8b15c01dea00
                         {disp8} fst          dword ptr [ebp + 0x08]                        // 0x007971ae    d95508
                         mov.s                eax, ecx                                      // 0x007971b1    8bc1
                         {disp8} fst          dword ptr [ebp + 0x04]                        // 0x007971b3    d95504
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x007971b6    895c2420
                         {disp8} fstp         dword ptr [ebp + 0x20]                        // 0x007971ba    d95d20
                         {disp8} mov          dword ptr [esp + 0x20], ecx                   // 0x007971bd    894c2420
                         {disp8} mov          dword ptr [esp + 0x24], ebx                   // 0x007971c1    895c2424
                         push                 eax                                           // 0x007971c5    50
                         {disp8} lea          ecx, dword ptr [ebp + 0x34]                   // 0x007971c6    8d4d34
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x007971c9    895c2420
                         {disp8} mov          dword ptr [esp + 0x28], edx                   // 0x007971cd    89542428
                         {disp8} mov          dword ptr [ebp + 0x1c], ebx                   // 0x007971d1    895d1c
                         {disp8} mov          dword ptr [ebp + 0x18], ebx                   // 0x007971d4    895d18
                         {disp8} mov          dword ptr [ebp + 0x30], ebx                   // 0x007971d7    895d30
                         {disp8} mov          dword ptr [ebp + 0x2c], ebx                   // 0x007971da    895d2c
                         {disp8} mov          dword ptr [ebp + 0x14], ebx                   // 0x007971dd    895d14
                         {disp8} mov          dword ptr [ebp + 0x28], ebx                   // 0x007971e0    895d28
                         {disp8} mov          dword ptr [ebp + 0x10], ebx                   // 0x007971e3    895d10
                         {disp8} mov          dword ptr [ebp + 0x24], ebx                   // 0x007971e6    895d24
                         {disp8} mov          dword ptr [ebp + 0x0c], ebx                   // 0x007971e9    895d0c
                         call                 @SetPosition__6ZoomerFf@12                    // 0x007971ec    e8cfa8caff
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x007971f1    8b4c2424
                         push                 ecx                                           // 0x007971f5    51
                         {disp8} lea          ecx, dword ptr [ebp + 0x64]                   // 0x007971f6    8d4d64
                         call                 @SetPosition__6ZoomerFf@12                    // 0x007971f9    e8c2a8caff
                         {disp32} fld         dword ptr [data_bytes + 0x4dbdc4]             // 0x007971fe    d905c41dea00
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4dbdc8]        // 0x00797204    8b15c81dea00
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4dbdcc]        // 0x0079720a    a1cc1dea00
                         {disp32} fst         dword ptr [ebp + 0x00000098]                  // 0x0079720f    d99598000000
                         mov.s                ecx, edx                                      // 0x00797215    8bca
                         {disp32} fst         dword ptr [ebp + 0x00000094]                  // 0x00797217    d99594000000
                         push                 ecx                                           // 0x0079721d    51
                         {disp32} fstp        dword ptr [ebp + 0x000000b0]                  // 0x0079721e    d99db0000000
                         {disp32} lea         ecx, dword ptr [ebp + 0x000000c4]             // 0x00797224    8d8dc4000000
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x0079722a    89542424
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0079722e    89442428
                         {disp32} mov         dword ptr [ebp + 0x000000ac], ebx             // 0x00797232    899dac000000
                         {disp32} mov         dword ptr [ebp + 0x000000a8], ebx             // 0x00797238    899da8000000
                         {disp32} mov         dword ptr [ebp + 0x000000c0], ebx             // 0x0079723e    899dc0000000
                         {disp32} mov         dword ptr [ebp + 0x000000bc], ebx             // 0x00797244    899dbc000000
                         {disp32} mov         dword ptr [ebp + 0x000000a4], ebx             // 0x0079724a    899da4000000
                         {disp32} mov         dword ptr [ebp + 0x000000b8], ebx             // 0x00797250    899db8000000
                         {disp32} mov         dword ptr [ebp + 0x000000a0], ebx             // 0x00797256    899da0000000
                         {disp32} mov         dword ptr [ebp + 0x000000b4], ebx             // 0x0079725c    899db4000000
                         {disp32} mov         dword ptr [ebp + 0x0000009c], ebx             // 0x00797262    899d9c000000
                         call                 @SetPosition__6ZoomerFf@12                    // 0x00797268    e853a8caff
                         {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x0079726d    8b542424
                         push                 edx                                           // 0x00797271    52
                         {disp32} lea         ecx, dword ptr [ebp + 0x000000f4]             // 0x00797272    8d8df4000000
                         call                 @SetPosition__6ZoomerFf@12                    // 0x00797278    e843a8caff
                         {disp32} mov         dword ptr [ebp + 0x00000124], 0x00000001      // 0x0079727d    c7852401000001000000
                         {disp32} mov         dword ptr [ebp + 0x00000134], ebx             // 0x00797287    899d34010000
                         {disp8} mov          edx, dword ptr [esp + 0x2c]                   // 0x0079728d    8b54242c
                         cmp.s                edx, ebx                                      // 0x00797291    3bd3
                         {disp32} je          _jmp_addr_0x0079740f                          // 0x00797293    0f8476010000
                         {disp32} lea         eax, dword ptr [ebp + 0x00000160]             // 0x00797299    8d8560010000
                         {disp8} mov          dword ptr [esp + 0x2c], eax                   // 0x0079729f    8944242c
                         mov.s                ecx, esi                                      // 0x007972a3    8bce
                         xor.s                eax, eax                                      // 0x007972a5    33c0
                         mov.s                edi, edx                                      // 0x007972a7    8bfa
                         repne scasb                                                        // 0x007972a9    f2ae
                         not                  ecx                                           // 0x007972ab    f7d1
                         sub.s                edi, ecx                                      // 0x007972ad    2bf9
                         mov.s                eax, ecx                                      // 0x007972af    8bc1
                         shr                  ecx, 2                                        // 0x007972b1    c1e902
                         mov.s                esi, edi                                      // 0x007972b4    8bf7
                         {disp8} mov          edi, dword ptr [esp + 0x2c]                   // 0x007972b6    8b7c242c
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x007972ba    f3a5
                         mov.s                ecx, eax                                      // 0x007972bc    8bc8
                         and                  ecx, 0x03                                     // 0x007972be    83e103
                         rep movsb                                                          // 0x007972c1    f3a4
                         {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x007972c3    8b4500
                         push                 edx                                           // 0x007972c6    52
                         mov.s                ecx, ebp                                      // 0x007972c7    8bcd
                         call                 dword ptr [eax]                               // 0x007972c9    ff10
                         {disp8} lea          ecx, dword ptr [esp + 0x1c]                   // 0x007972cb    8d4c241c
                         {disp32} fld         dword ptr [ebp + 0x000003cc]                  // 0x007972cf    d985cc030000
                         push                 ecx                                           // 0x007972d5    51
                         {disp32} fmul        dword ptr [__real@447a0000]                   // 0x007972d6    d80d28b28a00
                         {disp8} lea          edx, dword ptr [esp + 0x14]                   // 0x007972dc    8d542414
                         {disp32} mov         dword ptr [ebp + 0x00000124], ebx             // 0x007972e0    899d24010000
                         push                 edx                                           // 0x007972e6    52
                         call                 _jmp_addr_0x007a1400                          // 0x007972e7    e814a10000
                         {disp32} mov         ecx, dword ptr [ebp + 0x0000043c]             // 0x007972ec    8b8d3c040000
                         push                 eax                                           // 0x007972f2    50
                         xor.s                edx, edx                                      // 0x007972f3    33d2
                         call                 _jmp_addr_0x0086d4e0                          // 0x007972f5    e8e6610d00
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x007972fa    8b442410
                         {disp8} mov          dword ptr [ebp + 0x08], eax                   // 0x007972fe    894508
                         {disp8} mov          dword ptr [ebp + 0x1c], ebx                   // 0x00797301    895d1c
                         {disp8} mov          dword ptr [ebp + 0x18], ebx                   // 0x00797304    895d18
                         {disp8} mov          dword ptr [ebp + 0x30], ebx                   // 0x00797307    895d30
                         {disp8} mov          dword ptr [ebp + 0x2c], ebx                   // 0x0079730a    895d2c
                         {disp8} mov          dword ptr [ebp + 0x14], ebx                   // 0x0079730d    895d14
                         {disp8} mov          dword ptr [ebp + 0x28], ebx                   // 0x00797310    895d28
                         {disp8} mov          dword ptr [ebp + 0x10], ebx                   // 0x00797313    895d10
                         {disp8} mov          dword ptr [ebp + 0x24], ebx                   // 0x00797316    895d24
                         {disp8} mov          dword ptr [ebp + 0x0c], ebx                   // 0x00797319    895d0c
                         mov.s                ecx, eax                                      // 0x0079731c    8bc8
                         {disp8} mov          dword ptr [ebp + 0x04], ecx                   // 0x0079731e    894d04
                         mov.s                edx, eax                                      // 0x00797321    8bd0
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x00797323    8b442414
                         {disp8} mov          dword ptr [ebp + 0x20], edx                   // 0x00797327    895520
                         mov.s                ecx, eax                                      // 0x0079732a    8bc8
                         mov.s                edx, eax                                      // 0x0079732c    8bd0
                         {disp8} mov          dword ptr [ebp + 0x38], eax                   // 0x0079732e    894538
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00797331    8b442418
                         {disp8} mov          dword ptr [ebp + 0x34], ecx                   // 0x00797335    894d34
                         push                 eax                                           // 0x00797338    50
                         {disp8} lea          ecx, dword ptr [ebp + 0x64]                   // 0x00797339    8d4d64
                         {disp8} mov          dword ptr [ebp + 0x50], edx                   // 0x0079733c    895550
                         {disp8} mov          dword ptr [ebp + 0x4c], ebx                   // 0x0079733f    895d4c
                         {disp8} mov          dword ptr [ebp + 0x48], ebx                   // 0x00797342    895d48
                         {disp8} mov          dword ptr [ebp + 0x60], ebx                   // 0x00797345    895d60
                         {disp8} mov          dword ptr [ebp + 0x5c], ebx                   // 0x00797348    895d5c
                         {disp8} mov          dword ptr [ebp + 0x44], ebx                   // 0x0079734b    895d44
                         {disp8} mov          dword ptr [ebp + 0x58], ebx                   // 0x0079734e    895d58
                         {disp8} mov          dword ptr [ebp + 0x40], ebx                   // 0x00797351    895d40
                         {disp8} mov          dword ptr [ebp + 0x54], ebx                   // 0x00797354    895d54
                         {disp8} mov          dword ptr [ebp + 0x3c], ebx                   // 0x00797357    895d3c
                         call                 @SetPosition__6ZoomerFf@12                    // 0x0079735a    e861a7caff
                         {disp8} mov          ecx, dword ptr [esp + 0x1c]                   // 0x0079735f    8b4c241c
                         mov.s                edx, ecx                                      // 0x00797363    8bd1
                         mov.s                eax, ecx                                      // 0x00797365    8bc1
                         {disp32} mov         dword ptr [ebp + 0x00000098], ecx             // 0x00797367    898d98000000
                         {disp32} mov         dword ptr [ebp + 0x00000094], edx             // 0x0079736d    899594000000
                         {disp32} mov         dword ptr [ebp + 0x000000b0], eax             // 0x00797373    8985b0000000
                         {disp32} mov         dword ptr [ebp + 0x000000ac], ebx             // 0x00797379    899dac000000
                         {disp32} mov         dword ptr [ebp + 0x000000a8], ebx             // 0x0079737f    899da8000000
                         {disp32} mov         dword ptr [ebp + 0x000000c0], ebx             // 0x00797385    899dc0000000
                         {disp32} mov         dword ptr [ebp + 0x000000bc], ebx             // 0x0079738b    899dbc000000
                         {disp32} mov         dword ptr [ebp + 0x000000a4], ebx             // 0x00797391    899da4000000
                         {disp32} mov         dword ptr [ebp + 0x000000b8], ebx             // 0x00797397    899db8000000
                         {disp32} mov         dword ptr [ebp + 0x000000a0], ebx             // 0x0079739d    899da0000000
                         {disp32} mov         dword ptr [ebp + 0x000000b4], ebx             // 0x007973a3    899db4000000
                         {disp32} mov         dword ptr [ebp + 0x0000009c], ebx             // 0x007973a9    899d9c000000
                         {disp8} mov          ecx, dword ptr [esp + 0x20]                   // 0x007973af    8b4c2420
                         mov.s                edx, ecx                                      // 0x007973b3    8bd1
                         mov.s                eax, ecx                                      // 0x007973b5    8bc1
                         {disp32} mov         dword ptr [ebp + 0x000000c8], ecx             // 0x007973b7    898dc8000000
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x007973bd    8b4c2424
                         push                 ecx                                           // 0x007973c1    51
                         {disp32} lea         ecx, dword ptr [ebp + 0x000000f4]             // 0x007973c2    8d8df4000000
                         {disp32} mov         dword ptr [ebp + 0x000000c4], edx             // 0x007973c8    8995c4000000
                         {disp32} mov         dword ptr [ebp + 0x000000e0], eax             // 0x007973ce    8985e0000000
                         {disp32} mov         dword ptr [ebp + 0x000000dc], ebx             // 0x007973d4    899ddc000000
                         {disp32} mov         dword ptr [ebp + 0x000000d8], ebx             // 0x007973da    899dd8000000
                         {disp32} mov         dword ptr [ebp + 0x000000f0], ebx             // 0x007973e0    899df0000000
                         {disp32} mov         dword ptr [ebp + 0x000000ec], ebx             // 0x007973e6    899dec000000
                         {disp32} mov         dword ptr [ebp + 0x000000d4], ebx             // 0x007973ec    899dd4000000
                         {disp32} mov         dword ptr [ebp + 0x000000e8], ebx             // 0x007973f2    899de8000000
                         {disp32} mov         dword ptr [ebp + 0x000000d0], ebx             // 0x007973f8    899dd0000000
                         {disp32} mov         dword ptr [ebp + 0x000000e4], ebx             // 0x007973fe    899de4000000
                         {disp32} mov         dword ptr [ebp + 0x000000cc], ebx             // 0x00797404    899dcc000000
                         call                 @SetPosition__6ZoomerFf@12                    // 0x0079740a    e8b1a6caff
_jmp_addr_0x0079740f:    pop                  edi                                           // 0x0079740f    5f
                         pop                  esi                                           // 0x00797410    5e
                         pop                  ebp                                           // 0x00797411    5d
                         pop                  ebx                                           // 0x00797412    5b
                         add                  esp, 0x18                                     // 0x00797413    83c418
                         ret                  0x0004                                        // 0x00797416    c20400
                         nop                                                                // 0x00797419    90
                         nop                                                                // 0x0079741a    90
                         nop                                                                // 0x0079741b    90
                         nop                                                                // 0x0079741c    90
                         nop                                                                // 0x0079741d    90
                         nop                                                                // 0x0079741e    90
                         nop                                                                // 0x0079741f    90
_ReloadCamera__11InnerCameraFPc:
@ReloadCamera__11InnerCameraFPc@12:    push                 ebx                                           // 0x00797420    53
                         {disp8} mov          ebx, dword ptr [esp + 0x08]                   // 0x00797421    8b5c2408
                         test                 ebx, ebx                                      // 0x00797425    85db
                         push                 edi                                           // 0x00797427    57
                         mov.s                edi, ecx                                      // 0x00797428    8bf9
                         {disp8} jne          _jmp_addr_0x00797432                          // 0x0079742a    7506
                         {disp32} lea         ebx, dword ptr [edi + 0x00000160]             // 0x0079742c    8d9f60010000
_jmp_addr_0x00797432:    cmp                  byte ptr [ebx], 0x00                          // 0x00797432    803b00
                         {disp8} je           _jmp_addr_0x0079748c                          // 0x00797435    7455
                         {disp32} mov         ecx, dword ptr [edi + 0x0000043c]             // 0x00797437    8b8f3c040000
                         test                 ecx, ecx                                      // 0x0079743d    85c9
                         {disp8} je           _jmp_addr_0x00797446                          // 0x0079743f    7405
                         call                 _jmp_addr_0x0086d4d0                          // 0x00797441    e88a600d00
_jmp_addr_0x00797446:    push                 esi                                           // 0x00797446    56
                         {disp8} lea          eax, dword ptr [esp + 0x10]                   // 0x00797447    8d442410
                         push                 eax                                           // 0x0079744b    50
                         push                 ebx                                           // 0x0079744c    53
                         {disp32} mov         dword ptr [edi + 0x0000043c], 0x00000000      // 0x0079744d    c7873c04000000000000
                         call                 _LHFileLength__FPcPUl                         // 0x00797457    e804550200
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x0079745c    8b4c2418
                         push                 ecx                                           // 0x00797460    51
                         call                 ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x00797461    e87ab80a00
                         {disp8} mov          edx, dword ptr [esp + 0x1c]                   // 0x00797466    8b54241c
                         push                 0x0                                           // 0x0079746a    6a00
                         push                 edx                                           // 0x0079746c    52
                         mov.s                esi, eax                                      // 0x0079746d    8bf0
                         push                 esi                                           // 0x0079746f    56
                         push                 ebx                                           // 0x00797470    53
                         call                 _LHLoadData__FPcPvUlPUl                       // 0x00797471    e87a590200
                         push                 esi                                           // 0x00797476    56
                         call                 _jmp_addr_0x0086d4a0                          // 0x00797477    e824600d00
                         push                 esi                                           // 0x0079747c    56
                         {disp32} mov         dword ptr [edi + 0x0000043c], eax             // 0x0079747d    89873c040000
                         call                 ?Free@LH3DMem@@SAXPAX@Z                       // 0x00797483    e8d8b80a00
                         add                  esp, 0x24                                     // 0x00797488    83c424
                         pop                  esi                                           // 0x0079748b    5e
_jmp_addr_0x0079748c:    pop                  edi                                           // 0x0079748c    5f
                         pop                  ebx                                           // 0x0079748d    5b
                         ret                  0x0004                                        // 0x0079748e    c20400
                         nop                                                                // 0x00797491    90
                         nop                                                                // 0x00797492    90
                         nop                                                                // 0x00797493    90
                         nop                                                                // 0x00797494    90
                         nop                                                                // 0x00797495    90
                         nop                                                                // 0x00797496    90
                         nop                                                                // 0x00797497    90
                         nop                                                                // 0x00797498    90
                         nop                                                                // 0x00797499    90
                         nop                                                                // 0x0079749a    90
                         nop                                                                // 0x0079749b    90
                         nop                                                                // 0x0079749c    90
                         nop                                                                // 0x0079749d    90
                         nop                                                                // 0x0079749e    90
                         nop                                                                // 0x0079749f    90
_Close__11InnerCameraFv:
?Close@InnerCamera@@UAEXXZ:
                              push                 esi                                           // 0x007974a0    56
                         mov.s                esi, ecx                                      // 0x007974a1    8bf1
                         {disp32} mov         ecx, dword ptr [esi + 0x0000043c]             // 0x007974a3    8b8e3c040000
                         test                 ecx, ecx                                      // 0x007974a9    85c9
                         {disp8} je           _jmp_addr_0x007974b2                          // 0x007974ab    7405
                         call                 _jmp_addr_0x0086d4d0                          // 0x007974ad    e81e600d00
_jmp_addr_0x007974b2:    {disp32} mov         dword ptr [esi + 0x0000043c], 0x00000000      // 0x007974b2    c7863c04000000000000
                         pop                  esi                                           // 0x007974bc    5e
                         ret                                                                // 0x007974bd    c3
                         nop                                                                // 0x007974be    90
                         nop                                                                // 0x007974bf    90
_jmp_addr_0x007974c0:    mov                  dword ptr [ecx], 0x0099ee70                   // 0x007974c0    c70170ee9900
                         {disp32} jmp         ?Close@InnerCamera@@UAEXXZ                    // 0x007974c6    e9d5ffffff
                         nop                                                                // 0x007974cb    90
                         nop                                                                // 0x007974cc    90
                         nop                                                                // 0x007974cd    90
                         nop                                                                // 0x007974ce    90
                         nop                                                                // 0x007974cf    90
??_GInnerCamera@@UAEPAXI@Z:
                         push                 esi                                           // 0x007974d0    56
                         mov.s                esi, ecx                                      // 0x007974d1    8bf1
                         call                 _jmp_addr_0x007974c0                          // 0x007974d3    e8e8ffffff
                         test                 byte ptr [esp + 0x08], 0x01                   // 0x007974d8    f644240801
                         {disp8} je           _jmp_addr_0x007974e8                          // 0x007974dd    7409
                         push                 esi                                           // 0x007974df    56
                         call                 ??3@YAXPAX@Z                                  // 0x007974e0    e8b3790100
                         add                  esp, 0x04                                     // 0x007974e5    83c404
_jmp_addr_0x007974e8:    mov.s                eax, esi                                      // 0x007974e8    8bc6
                         pop                  esi                                           // 0x007974ea    5e
                         ret                  0x0004                                        // 0x007974eb    c20400
                         nop                                                                // 0x007974ee    90
                         nop                                                                // 0x007974ef    90
??0InnerCamera@@QAE@XZ:mov.s                eax, ecx                                      // 0x007974f0    8bc1
                         xor.s                ecx, ecx                                      // 0x007974f2    33c9
                         mov                  dword ptr [eax], 0x0099ee70                   // 0x007974f4    c70070ee9900
                         {disp32} mov         dword ptr [eax + 0x0000043c], ecx             // 0x007974fa    89883c040000
                         {disp32} mov         byte ptr [eax + 0x00000160], cl               // 0x00797500    888860010000
                         ret                                                                // 0x00797506    c3
                         nop                                                                // 0x00797507    90
                         nop                                                                // 0x00797508    90
                         nop                                                                // 0x00797509    90
                         nop                                                                // 0x0079750a    90
                         nop                                                                // 0x0079750b    90
                         nop                                                                // 0x0079750c    90
                         nop                                                                // 0x0079750d    90
                         nop                                                                // 0x0079750e    90
                         nop                                                                // 0x0079750f    90
_jmp_addr_0x00797510:    {disp8} mov          eax, dword ptr [ecx + 0x0c]                   // 0x00797510    8b410c
                         {disp8} mov          dword ptr [eax + 0x08], 0x00000000            // 0x00797513    c7400800000000
                         {disp8} mov          ecx, dword ptr [ecx + 0x10]                   // 0x0079751a    8b4910
                         {disp32} jmp         ?Release@LH3DTexture@@QAEXXZ                  // 0x0079751d    e91e080a00
                         nop                                                                // 0x00797522    90
                         nop                                                                // 0x00797523    90
                         nop                                                                // 0x00797524    90
                         nop                                                                // 0x00797525    90
                         nop                                                                // 0x00797526    90
                         nop                                                                // 0x00797527    90
                         nop                                                                // 0x00797528    90
                         nop                                                                // 0x00797529    90
                         nop                                                                // 0x0079752a    90
                         nop                                                                // 0x0079752b    90
                         nop                                                                // 0x0079752c    90
                         nop                                                                // 0x0079752d    90
                         nop                                                                // 0x0079752e    90
                         nop                                                                // 0x0079752f    90
_jmp_addr_0x00797530:    push                 ecx                                           // 0x00797530    51
                         push                 esi                                           // 0x00797531    56
                         push                 edi                                           // 0x00797532    57
                         mov.s                esi, ecx                                      // 0x00797533    8bf1
                         xor.s                eax, eax                                      // 0x00797535    33c0
                         mov                  ecx, 0x00003183                               // 0x00797537    b983310000
                         {disp8} lea          edi, dword ptr [esi + 0x14]                   // 0x0079753c    8d7e14
                         rep stosd                                                          // 0x0079753f    f3ab
                         {disp8} mov          dword ptr [esp + 0x08], eax                   // 0x00797541    89442408
                         {disp8} lea          eax, dword ptr [esp + 0x08]                   // 0x00797545    8d442408
                         push                 eax                                           // 0x00797549    50
                         push                 -0x1                                          // 0x0079754a    6aff
                         push                 0x44                                          // 0x0079754c    6a44
                         push                 0x0                                           // 0x0079754e    6a00
                         call                 _jmp_addr_0x008379e0                          // 0x00797550    e88b040a00
                         push                 eax                                           // 0x00797555    50
                         push                 0x5                                           // 0x00797556    6a05
                         {disp8} mov          dword ptr [esi + 0x10], eax                   // 0x00797558    894610
                         call                 _CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture                          // 0x0079755b    e8d0870900
                         {disp8} mov          dword ptr [esi + 0x0c], eax                   // 0x00797560    89460c
                         and                  byte ptr [eax + 0x05], -0x02                  // 0x00797563    806005fe
                         {disp8} mov          eax, dword ptr [esi + 0x0c]                   // 0x00797567    8b460c
                         {disp8} mov          cl, byte ptr [eax + 0x05]                     // 0x0079756a    8a4805
                         add                  esp, 0x18                                     // 0x0079756d    83c418
                         and                  cl, -0x05                                     // 0x00797570    80e1fb
                         {disp8} mov          byte ptr [eax + 0x05], cl                     // 0x00797573    884805
                         mov                  eax, 0x000000ff                               // 0x00797576    b8ff000000
                         pop                  edi                                           // 0x0079757b    5f
                         {disp32} mov         dword ptr [esi + 0x0000c624], eax             // 0x0079757c    898624c60000
                         {disp32} mov         dword ptr [esi + 0x0000c620], eax             // 0x00797582    898620c60000
                         pop                  esi                                           // 0x00797588    5e
                         pop                  ecx                                           // 0x00797589    59
                         ret                                                                // 0x0079758a    c3
                         nop                                                                // 0x0079758b    90
                         nop                                                                // 0x0079758c    90
                         nop                                                                // 0x0079758d    90
                         nop                                                                // 0x0079758e    90
                         nop                                                                // 0x0079758f    90
_jmp_addr_0x00797590:    sub                  esp, 0x18                                     // 0x00797590    83ec18
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x00797593    d9442420
                         push                 ebx                                           // 0x00797597    53
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5ea0]             // 0x00797598    d80da0ee9900
                         push                 esi                                           // 0x0079759e    56
                         mov.s                esi, ecx                                      // 0x0079759f    8bf1
                         push                 edi                                           // 0x007975a1    57
                         {disp8} fstp         dword ptr [esp + 0x2c]                        // 0x007975a2    d95c242c
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x007975a6    d9442430
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5ea0]             // 0x007975aa    d80da0ee9900
                         {disp8} fstp         dword ptr [esp + 0x30]                        // 0x007975b0    d95c2430
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x007975b4    d944242c
                         fmul                 dword ptr [esi]                               // 0x007975b8    d80e
                         {disp8} fild         dword ptr [esi + 0x04]                        // 0x007975ba    db4604
                         fmul                 dword ptr [esi]                               // 0x007975bd    d80e
                         fsubp                st(1), st                                     // 0x007975bf    dee9
                         {disp8} fstp         dword ptr [esp + 0x18]                        // 0x007975c1    d95c2418
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x007975c5    d9442430
                         fmul                 dword ptr [esi]                               // 0x007975c9    d80e
                         {disp8} fild         dword ptr [esi + 0x08]                        // 0x007975cb    db4608
                         fmul                 dword ptr [esi]                               // 0x007975ce    d80e
                         fsubp                st(1), st                                     // 0x007975d0    dee9
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x007975d2    d944242c
                         call                 _jmp_addr_0x007a1400                          // 0x007975d6    e8259e0000
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x007975db    d9442430
                         mov.s                edi, eax                                      // 0x007975df    8bf8
                         {disp8} mov          dword ptr [esp + 0x10], edi                   // 0x007975e1    897c2410
                         call                 _jmp_addr_0x007a1400                          // 0x007975e5    e8169e0000
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x007975ea    db442410
                         {disp8} mov          dword ptr [esp + 0x0c], eax                   // 0x007975ee    8944240c
                         xor.s                ebx, ebx                                      // 0x007975f2    33db
                         cmp.s                edi, ebx                                      // 0x007975f4    3bfb
                         {disp8} fsubr        dword ptr [esp + 0x2c]                        // 0x007975f6    d86c242c
                         {disp8} fild         dword ptr [esp + 0x0c]                        // 0x007975fa    db44240c
                         {disp8} fsubr        dword ptr [esp + 0x30]                        // 0x007975fe    d86c2430
                         {disp8} jl           _jmp_addr_0x0079762c                          // 0x00797602    7c28
                         cmp.s                eax, ebx                                      // 0x00797604    3bc3
                         {disp8} jl           _jmp_addr_0x0079762c                          // 0x00797606    7c24
                         cmp                  edi, 0x40                                     // 0x00797608    83ff40
                         {disp8} jg           _jmp_addr_0x0079762c                          // 0x0079760b    7f1f
                         cmp                  eax, 0x40                                     // 0x0079760d    83f840
                         {disp8} jg           _jmp_addr_0x0079762c                          // 0x00797610    7f1a
                         mov.s                ecx, eax                                      // 0x00797612    8bc8
                         shl                  ecx, 6                                        // 0x00797614    c1e106
                         mov.s                edx, edi                                      // 0x00797617    8bd7
                         add.s                edx, ecx                                      // 0x00797619    03d1
                         mov.s                ecx, eax                                      // 0x0079761b    8bc8
                         add.s                ecx, edx                                      // 0x0079761d    03ca
                         lea                  ecx, dword ptr [ecx + ecx * 0x2]              // 0x0079761f    8d0c49
                         {disp8} mov          dl, byte ptr [esi + ecx * 0x4 + 0x14]         // 0x00797622    8a548e14
                         {disp8} mov          byte ptr [esp + 0x2c], dl                     // 0x00797626    8854242c
                         {disp8} jmp          _jmp_addr_0x00797630                          // 0x0079762a    eb04
_jmp_addr_0x0079762c:    {disp8} mov          byte ptr [esp + 0x2c], bl                     // 0x0079762c    885c242c
_jmp_addr_0x00797630:    {disp8} lea          edx, dword ptr [edi + 0x01]                   // 0x00797630    8d5701
                         cmp.s                edx, ebx                                      // 0x00797633    3bd3
                         {disp8} jl           _jmp_addr_0x00797661                          // 0x00797635    7c2a
                         cmp.s                eax, ebx                                      // 0x00797637    3bc3
                         {disp8} jl           _jmp_addr_0x00797661                          // 0x00797639    7c26
                         cmp                  edx, 0x40                                     // 0x0079763b    83fa40
                         {disp8} jg           _jmp_addr_0x00797661                          // 0x0079763e    7f21
                         cmp                  eax, 0x40                                     // 0x00797640    83f840
                         {disp8} jg           _jmp_addr_0x00797661                          // 0x00797643    7f1c
                         push                 ebp                                           // 0x00797645    55
                         mov.s                ecx, eax                                      // 0x00797646    8bc8
                         shl                  ecx, 6                                        // 0x00797648    c1e106
                         mov.s                ebp, edx                                      // 0x0079764b    8bea
                         add.s                ebp, ecx                                      // 0x0079764d    03e9
                         mov.s                ecx, eax                                      // 0x0079764f    8bc8
                         add.s                ecx, ebp                                      // 0x00797651    03cd
                         lea                  ecx, dword ptr [ecx + ecx * 0x2]              // 0x00797653    8d0c49
                         {disp8} mov          cl, byte ptr [esi + ecx * 0x4 + 0x14]         // 0x00797656    8a4c8e14
                         {disp8} mov          byte ptr [esp + 0x34], cl                     // 0x0079765a    884c2434
                         pop                  ebp                                           // 0x0079765e    5d
                         {disp8} jmp          _jmp_addr_0x00797665                          // 0x0079765f    eb04
_jmp_addr_0x00797661:    {disp8} mov          byte ptr [esp + 0x30], bl                     // 0x00797661    885c2430
_jmp_addr_0x00797665:    inc                  eax                                           // 0x00797665    40
                         cmp.s                edi, ebx                                      // 0x00797666    3bfb
                         {disp8} jl           _jmp_addr_0x00797690                          // 0x00797668    7c26
                         cmp.s                eax, ebx                                      // 0x0079766a    3bc3
                         {disp8} jl           _jmp_addr_0x00797690                          // 0x0079766c    7c22
                         cmp                  edi, 0x40                                     // 0x0079766e    83ff40
                         {disp8} jg           _jmp_addr_0x00797690                          // 0x00797671    7f1d
                         cmp                  eax, 0x40                                     // 0x00797673    83f840
                         {disp8} jg           _jmp_addr_0x00797690                          // 0x00797676    7f18
                         mov.s                ecx, eax                                      // 0x00797678    8bc8
                         shl                  ecx, 6                                        // 0x0079767a    c1e106
                         add.s                edi, ecx                                      // 0x0079767d    03f9
                         mov.s                ecx, eax                                      // 0x0079767f    8bc8
                         add.s                ecx, edi                                      // 0x00797681    03cf
                         lea                  ecx, dword ptr [ecx + ecx * 0x2]              // 0x00797683    8d0c49
                         {disp8} mov          cl, byte ptr [esi + ecx * 0x4 + 0x14]         // 0x00797686    8a4c8e14
                         {disp8} mov          byte ptr [esp + 0x0c], cl                     // 0x0079768a    884c240c
                         {disp8} jmp          _jmp_addr_0x00797694                          // 0x0079768e    eb04
_jmp_addr_0x00797690:    {disp8} mov          byte ptr [esp + 0x0c], bl                     // 0x00797690    885c240c
_jmp_addr_0x00797694:    cmp.s                edx, ebx                                      // 0x00797694    3bd3
                         {disp8} jl           _jmp_addr_0x007976bc                          // 0x00797696    7c24
                         cmp.s                eax, ebx                                      // 0x00797698    3bc3
                         {disp8} jl           _jmp_addr_0x007976bc                          // 0x0079769a    7c20
                         cmp                  edx, 0x40                                     // 0x0079769c    83fa40
                         {disp8} jg           _jmp_addr_0x007976bc                          // 0x0079769f    7f1b
                         cmp                  eax, 0x40                                     // 0x007976a1    83f840
                         {disp8} jg           _jmp_addr_0x007976bc                          // 0x007976a4    7f16
                         mov.s                ecx, eax                                      // 0x007976a6    8bc8
                         shl                  ecx, 6                                        // 0x007976a8    c1e106
                         add.s                edx, ecx                                      // 0x007976ab    03d1
                         add.s                eax, edx                                      // 0x007976ad    03c2
                         lea                  edx, dword ptr [eax + eax * 0x2]              // 0x007976af    8d1440
                         {disp8} mov          al, byte ptr [esi + edx * 0x4 + 0x14]         // 0x007976b2    8a449614
                         {disp8} mov          byte ptr [esp + 0x10], al                     // 0x007976b6    88442410
                         {disp8} jmp          _jmp_addr_0x007976c0                          // 0x007976ba    eb04
_jmp_addr_0x007976bc:    {disp8} mov          byte ptr [esp + 0x10], bl                     // 0x007976bc    885c2410
_jmp_addr_0x007976c0:    {disp8} mov          eax, dword ptr [esp + 0x2c]                   // 0x007976c0    8b44242c
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x007976c4    8b4c2430
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x007976c8    8b542410
                         and                  eax, 0x000000ff                               // 0x007976cc    25ff000000
                         and                  ecx, 0x000000ff                               // 0x007976d1    81e1ff000000
                         sub.s                ecx, eax                                      // 0x007976d7    2bc8
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x007976d9    89442414
                         {disp8} mov          eax, dword ptr [esp + 0x0c]                   // 0x007976dd    8b44240c
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                   // 0x007976e1    894c242c
                         {disp8} fild         dword ptr [esp + 0x2c]                        // 0x007976e5    db44242c
                         and                  eax, 0x000000ff                               // 0x007976e9    25ff000000
                         and                  edx, 0x000000ff                               // 0x007976ee    81e2ff000000
                         sub.s                edx, eax                                      // 0x007976f4    2bd0
                         fmul                 st, st(2)                                     // 0x007976f6    d8ca
                         {disp8} mov          dword ptr [esp + 0x2c], edx                   // 0x007976f8    8954242c
                         {disp8} mov          dword ptr [esp + 0x30], eax                   // 0x007976fc    89442430
                         {disp8} mov          eax, dword ptr [esp + 0x34]                   // 0x00797700    8b442434
                         cmp.s                eax, ebx                                      // 0x00797704    3bc3
                         {disp8} fiadd        dword ptr [esp + 0x14]                        // 0x00797706    da442414
                         {disp8} fild         dword ptr [esp + 0x2c]                        // 0x0079770a    db44242c
                         fmulp                st(3), st                                     // 0x0079770e    decb
                         {disp8} fild         dword ptr [esp + 0x30]                        // 0x00797710    db442430
                         faddp                st(3), st                                     // 0x00797714    dec3
                         fxch                 st(2)                                         // 0x00797716    d9ca
                         fsub                 st, st(2)                                     // 0x00797718    d8e2
                         fmul                 st, st(1)                                     // 0x0079771a    d8c9
                         fadd                 st, st(2)                                     // 0x0079771c    d8c2
                         fxch                 st(2)                                         // 0x0079771e    d9ca
                         fstp                 st(0)                                         // 0x00797720    ddd8
                         fstp                 st(0)                                         // 0x00797722    ddd8
                         {disp8} je           _jmp_addr_0x00797728                          // 0x00797724    7402
                         fst                  dword ptr [eax]                               // 0x00797726    d910
_jmp_addr_0x00797728:    {disp32} fld         dword ptr [data_bytes + 0x27120c]             // 0x00797728    d9050c72c300
                         {disp8} mov          eax, dword ptr [esp + 0x28]                   // 0x0079772e    8b442428
                         fmul                 dword ptr [esi]                               // 0x00797732    d80e
                         pop                  edi                                           // 0x00797734    5f
                         pop                  esi                                           // 0x00797735    5e
                         pop                  ebx                                           // 0x00797736    5b
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5ea0]             // 0x00797737    d80da0ee9900
                         fmulp                st(1), st                                     // 0x0079773d    dec9
                         {disp8} fld          dword ptr [esp + 0x0c]                        // 0x0079773f    d944240c
                         fstp                 dword ptr [eax]                               // 0x00797743    d918
                         {disp8} fstp         dword ptr [eax + 0x04]                        // 0x00797745    d95804
                         {disp8} fstp         dword ptr [eax + 0x08]                        // 0x00797748    d95808
                         add                  esp, 0x18                                     // 0x0079774b    83c418
                         ret                  0x0010                                        // 0x0079774e    c21000
                         nop                                                                // 0x00797751    90
                         nop                                                                // 0x00797752    90
                         nop                                                                // 0x00797753    90
                         nop                                                                // 0x00797754    90
                         nop                                                                // 0x00797755    90
                         nop                                                                // 0x00797756    90
                         nop                                                                // 0x00797757    90
                         nop                                                                // 0x00797758    90
                         nop                                                                // 0x00797759    90
                         nop                                                                // 0x0079775a    90
                         nop                                                                // 0x0079775b    90
                         nop                                                                // 0x0079775c    90
                         nop                                                                // 0x0079775d    90
                         nop                                                                // 0x0079775e    90
                         nop                                                                // 0x0079775f    90
_jmp_addr_0x00797760:    {disp8} fild         dword ptr [ecx + 0x08]                        // 0x00797760    db4108
                         {disp8} mov          eax, dword ptr [esp + 0x04]                   // 0x00797763    8b442404
                         {disp8} mov          edx, dword ptr [esp + 0x08]                   // 0x00797767    8b542408
                         test                 edx, edx                                      // 0x0079776b    85d2
                         fmul                 dword ptr [ecx]                               // 0x0079776d    d809
                         {disp8} fadd         dword ptr [eax + 0x08]                        // 0x0079776f    d84008
                         fdiv                 dword ptr [ecx]                               // 0x00797772    d831
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2760c]             // 0x00797774    d80d0c068d00
                         {disp8} je           _jmp_addr_0x0079778d                          // 0x0079777a    7411
                         {disp8} fild         dword ptr [ecx + 0x04]                        // 0x0079777c    db4104
                         fmul                 dword ptr [ecx]                               // 0x0079777f    d809
                         fadd                 dword ptr [eax]                               // 0x00797781    d800
                         fdiv                 dword ptr [ecx]                               // 0x00797783    d831
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2760c]             // 0x00797785    d80d0c068d00
                         fstp                 dword ptr [edx]                               // 0x0079778b    d91a
_jmp_addr_0x0079778d:    {disp8} mov          eax, dword ptr [esp + 0x0c]                   // 0x0079778d    8b44240c
                         test                 eax, eax                                      // 0x00797791    85c0
                         {disp8} je           _jmp_addr_0x0079779a                          // 0x00797793    7405
                         fstp                 dword ptr [eax]                               // 0x00797795    d918
                         ret                  0x000c                                        // 0x00797797    c20c00
_jmp_addr_0x0079779a:    fstp                 st(0)                                         // 0x0079779a    ddd8
                         ret                  0x000c                                        // 0x0079779c    c20c00
                         nop                                                                // 0x0079779f    90
_jmp_addr_0x007977a0:    sub                  esp, 0x34                                     // 0x007977a0    83ec34
                         {disp32} mov         eax, dword ptr [data_bytes + 0x272714]        // 0x007977a3    a11487c300
                         push                 ebx                                           // 0x007977a8    53
                         push                 ebp                                           // 0x007977a9    55
                         push                 esi                                           // 0x007977aa    56
                         push                 edi                                           // 0x007977ab    57
                         mov.s                edi, ecx                                      // 0x007977ac    8bf9
                         xor.s                ebx, ebx                                      // 0x007977ae    33db
                         cmp.s                eax, ebx                                      // 0x007977b0    3bc3
                         {disp32} mov         dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40 // 0x007977b2    c705a09eea00409eea00
                         {disp8} mov          esi, dword ptr [edi + 0x0c]                   // 0x007977bc    8b770c
                         {disp8} mov          dword ptr [esp + 0x34], edi                   // 0x007977bf    897c2434
                         {disp8} je           _jmp_addr_0x0079783a                          // 0x007977c3    7475
                         cmp.s                esi, ebx                                      // 0x007977c5    3bf3
                         {disp32} mov         dword ptr [data_bytes + 0x50464c], esi        // 0x007977c7    89354ca6ec00
                         {disp8} je           _jmp_addr_0x0079783a                          // 0x007977cd    746b
                         mov                  eax, dword ptr [esi]                          // 0x007977cf    8b06
                         {disp32} mov         ebp, dword ptr [data_bytes + 0x504618]        // 0x007977d1    8b2d18a6ec00
                         xor.s                edx, edx                                      // 0x007977d7    33d2
                         mov.s                ecx, esi                                      // 0x007977d9    8bce
                         call                 dword ptr [ebp + eax*8]                       // 0x007977db    ff54c500
                         cmp                  dword ptr [data_bytes + 0x504614], ebx        // 0x007977df    391d14a6ec00
                         {disp8} jne          _jmp_addr_0x007977f5                          // 0x007977e5    750e
                         test                 byte ptr [esi + 0x05], 0x04                   // 0x007977e7    f6460504
                         {disp8} jne          _jmp_addr_0x007977f5                          // 0x007977eb    7508
                         push                 ebx                                           // 0x007977ed    53
                         call                 ?SetD3DTillingOff@LH3DRender@@SAXH@Z          // 0x007977ee    e85d870900
                         {disp8} jmp          _jmp_addr_0x007977fb                          // 0x007977f3    eb06
_jmp_addr_0x007977f5:    push                 ebx                                           // 0x007977f5    53
                         call                 ?SetD3DTillingOn@LH3DRender@@SAXH@Z           // 0x007977f6    e815870900
_jmp_addr_0x007977fb:    {disp32} mov         eax, dword ptr [data_bytes + 0x504248]        // 0x007977fb    a148a2ec00
                         xor.s                ecx, ecx                                      // 0x00797800    33c9
                         {disp8} mov          cl, byte ptr [esi + 0x05]                     // 0x00797802    8a4e05
                         not                  cl                                            // 0x00797805    f6d1
                         add                  esp, 0x04                                     // 0x00797807    83c404
                         and                  ecx, 0x01                                     // 0x0079780a    83e101
                         shl                  ecx, 1                                        // 0x0079780d    d1e1
                         or                   ecx, 1                                        // 0x0079780f    83c901
                         mov.s                esi, ecx                                      // 0x00797812    8bf1
                         cmp.s                eax, esi                                      // 0x00797814    3bc6
                         {disp8} je           _jmp_addr_0x0079783a                          // 0x00797816    7422
                         {disp32} mov         eax, dword ptr [_Direct3DDevice7]             // 0x00797818    a138a6ec00
                         mov                  edx, dword ptr [eax]                          // 0x0079781d    8b10
                         push                 esi                                           // 0x0079781f    56
                         push                 0x16                                          // 0x00797820    6a16
                         push                 eax                                           // 0x00797822    50
                         call                 dword ptr [edx + 0x50]                        // 0x00797823    ff5250
                         test                 eax, eax                                      // 0x00797826    85c0
                         {disp32} mov         dword ptr [data_bytes + 0x504248], 0xffffffff // 0x00797828    c70548a2ec00ffffffff
                         {disp8} jne          _jmp_addr_0x0079783a                          // 0x00797832    7506
                         {disp32} mov         dword ptr [data_bytes + 0x504248], esi        // 0x00797834    893548a2ec00
_jmp_addr_0x0079783a:    mov                  eax, 0x000000ff                               // 0x0079783a    b8ff000000
                         {disp32} mov         dword ptr [edi + 0x0000c624], eax             // 0x0079783f    898724c60000
                         {disp32} mov         dword ptr [edi + 0x0000c620], eax             // 0x00797845    898720c60000
                         {disp8} lea          eax, dword ptr [esp + 0x38]                   // 0x0079784b    8d442438
                         push                 eax                                           // 0x0079784f    50
                         {disp8} mov          dword ptr [esp + 0x3c], 0x00000000            // 0x00797850    c744243c00000000
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000000            // 0x00797858    c744244000000000
                         {disp8} mov          dword ptr [esp + 0x44], 0x00000000            // 0x00797860    c744244400000000
                         call                 _jmp_addr_0x0084a430                          // 0x00797868    e8c32b0b00
                         {disp32} fsubr       dword ptr [_rdata_float1p0]                   // 0x0079786d    d82d90a38a00
                         {disp32} fild        dword ptr [edi + 0x0000c620]                  // 0x00797873    db8720c60000
                         add                  esp, 0x04                                     // 0x00797879    83c404
                         fmul                 st, st(1)                                     // 0x0079787c    d8c9
                         call                 _jmp_addr_0x007a1400                          // 0x0079787e    e87d9b0000
                         {disp32} fild        dword ptr [edi + 0x0000c624]                  // 0x00797883    db8724c60000
                         {disp32} mov         dword ptr [edi + 0x0000c620], eax             // 0x00797889    898720c60000
                         fmul                 st, st(1)                                     // 0x0079788f    d8c9
                         call                 _jmp_addr_0x007a1400                          // 0x00797891    e86a9b0000
                         fstp                 st(0)                                         // 0x00797896    ddd8
                         {disp32} mov         dword ptr [edi + 0x0000c624], eax             // 0x00797898    898724c60000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x0079789e    8b0da09eea00
                         {disp8} mov          dword ptr [esp + 0x14], ebx                   // 0x007978a4    895c2414
                         {disp8} mov          dword ptr [esp + 0x28], ebx                   // 0x007978a8    895c2428
                         {disp8} jmp          _jmp_addr_0x007978b2                          // 0x007978ac    eb04
_jmp_addr_0x007978ae:    {disp8} mov          ebx, dword ptr [esp + 0x14]                   // 0x007978ae    8b5c2414
_jmp_addr_0x007978b2:    {disp8} fild         dword ptr [esp + 0x14]                        // 0x007978b2    db442414
                         {disp8} lea          eax, dword ptr [ebx + 0x04]                   // 0x007978b6    8d4304
                         cmp.s                ebx, eax                                      // 0x007978b9    3bd8
                         mov                  ebp, 0x00e3b5e0                               // 0x007978bb    bde0b5e300
                         {disp8} fst          dword ptr [esp + 0x24]                        // 0x007978c0    d9542424
                         mov                  esi, 0x00e437e0                               // 0x007978c4    bee037e400
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2fbd0]             // 0x007978c9    d80dd08b8d00
                         {disp8} mov          dword ptr [esp + 0x1c], ebp                   // 0x007978cf    896c241c
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x007978d3    d9442424
                         {disp8} mov          dword ptr [esp + 0x10], ebx                   // 0x007978d7    895c2410
                         fmul                 dword ptr [edi]                               // 0x007978db    d80f
                         {disp8} mov          dword ptr [esp + 0x2c], eax                   // 0x007978dd    8944242c
                         {disp8} fild         dword ptr [edi + 0x08]                        // 0x007978e1    db4708
                         fmul                 dword ptr [edi]                               // 0x007978e4    d80f
                         fsubp                st(1), st                                     // 0x007978e6    dee9
                         {disp32} jg          _jmp_addr_0x00797d19                          // 0x007978e8    0f8f2b040000
                         {disp8} mov          edx, dword ptr [esp + 0x28]                   // 0x007978ee    8b542428
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x007978f2    89542424
_jmp_addr_0x007978f6:    {disp8} fild         dword ptr [edi + 0x04]                        // 0x007978f6    db4704
                         {disp8} mov          ebx, dword ptr [esp + 0x10]                   // 0x007978f9    8b5c2410
                         xor.s                edx, edx                                      // 0x007978fd    33d2
                         sar                  ebx, 1                                        // 0x007978ff    d1fb
                         fmul                 dword ptr [edi]                               // 0x00797901    d80f
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x00797903    89542420
                         {disp8} mov          dword ptr [esp + 0x18], ebx                   // 0x00797907    895c2418
                         fchs                                                               // 0x0079790b    d9e0
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x0079790d    d90598a38a00
_jmp_addr_0x00797913:    mov.s                eax, edx                                      // 0x00797913    8bc2
                         sar                  eax, 1                                        // 0x00797915    d1f8
                         {disp32} js          _jmp_addr_0x00797b89                          // 0x00797917    0f886c020000
                         cmp                  eax, 0x1f                                     // 0x0079791d    83f81f
                         {disp32} jg          _jmp_addr_0x00797b89                          // 0x00797920    0f8f63020000
                         test                 ebx, ebx                                      // 0x00797926    85db
                         {disp32} jl          _jmp_addr_0x00797b89                          // 0x00797928    0f8c5b020000
                         cmp                  ebx, 0x1f                                     // 0x0079792e    83fb1f
                         {disp32} jg          _jmp_addr_0x00797b89                          // 0x00797931    0f8f52020000
                         shl                  eax, 5                                        // 0x00797937    c1e005
                         xor.s                ecx, ecx                                      // 0x0079793a    33c9
                         {disp32} mov         cl, byte ptr [eax + ebx + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x0079793c    8a8c1864c9e900
                         mov.s                eax, ecx                                      // 0x00797943    8bc1
                         test                 eax, eax                                      // 0x00797945    85c0
                         {disp32} je          _jmp_addr_0x00797b83                          // 0x00797947    0f8436020000
                         {disp32} mov         ebx, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x0079794d    8b1c8564c5e900
                         test                 ebx, ebx                                      // 0x00797954    85db
                         {disp32} je          _jmp_addr_0x00797b66                          // 0x00797956    0f840a020000
                         {disp8} mov          ebp, dword ptr [esp + 0x24]                   // 0x0079795c    8b6c2424
                         mov.s                eax, edx                                      // 0x00797960    8bc2
                         and                  eax, 0x01                                     // 0x00797962    83e001
                         mov.s                ecx, eax                                      // 0x00797965    8bc8
                         shl                  ecx, 4                                        // 0x00797967    c1e104
                         add.s                ecx, eax                                      // 0x0079796a    03c8
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0079796c    8b442410
                         and                  eax, 0x01                                     // 0x00797970    83e001
                         add.s                ecx, eax                                      // 0x00797973    03c8
                         lea                  eax, dword ptr [edx + ebp * 0x1]              // 0x00797975    8d042a
                         lea                  eax, dword ptr [eax + eax * 0x2]              // 0x00797978    8d0440
                         lea                  eax, dword ptr [edi + eax * 0x4]              // 0x0079797b    8d0487
                         shl                  ecx, 6                                        // 0x0079797e    c1e106
                         add.s                ecx, ebx                                      // 0x00797981    03cb
                         xor.s                ebx, ebx                                      // 0x00797983    33db
                         {disp8} mov          bl, byte ptr [ecx + 0x04]                     // 0x00797985    8a5904
                         {disp8} mov          byte ptr [eax + 0x14], bl                     // 0x00797988    885814
                         {disp32} fld         dword ptr [data_bytes + 0x27120c]             // 0x0079798b    d9050c72c300
                         {disp8} mov          eax, dword ptr [eax + 0x1c]                   // 0x00797991    8b401c
                         fmul                 dword ptr [edi]                               // 0x00797994    d80f
                         {disp8} mov          dword ptr [esi + 0x14], eax                   // 0x00797996    894614
                         {disp8} lea          eax, dword ptr [edx + ebp * 0x1 + 0x02]       // 0x00797999    8d442a02
                         lea                  edx, dword ptr [eax + eax * 0x2]              // 0x0079799d    8d1440
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5ea0]             // 0x007979a0    d80da0ee9900
                         mov                  edx, dword ptr [edi + edx * 0x4]              // 0x007979a6    8b1497
                         {disp8} mov          dword ptr [esi + 0x10], edx                   // 0x007979a9    895610
                         {disp32} mov         edi, dword ptr [edi + 0x0000c620]             // 0x007979ac    8bbf20c60000
                         mov.s                eax, edx                                      // 0x007979b2    8bc2
                         and                  eax, 0x000000ff                               // 0x007979b4    25ff000000
                         sub                  eax, 0x000000ff                               // 0x007979b9    2dff000000
                         imul                 eax, edi                                      // 0x007979be    0fafc7
                         mov.s                ebp, edx                                      // 0x007979c1    8bea
                         and                  ebp, 0x00ff0000                               // 0x007979c3    81e50000ff00
                         sub                  ebp, 0x00ff0000                               // 0x007979c9    81ed0000ff00
                         imul                 ebp, edi                                      // 0x007979cf    0fafef
                         shr                  ebp, 8                                        // 0x007979d2    c1ed08
                         sub                  ebp, 0x00010000                               // 0x007979d5    81ed00000100
                         and                  ebp, 0x00ff0000                               // 0x007979db    81e50000ff00
                         shr                  eax, 8                                        // 0x007979e1    c1e808
                         dec                  eax                                           // 0x007979e4    48
                         and                  eax, 0x000000ff                               // 0x007979e5    25ff000000
                         or.s                 eax, ebp                                      // 0x007979ea    0bc5
                         mov.s                ebp, edx                                      // 0x007979ec    8bea
                         and                  ebp, 0x0000ff00                               // 0x007979ee    81e500ff0000
                         sub                  ebp, 0x0000ff00                               // 0x007979f4    81ed00ff0000
                         imul                 ebp, edi                                      // 0x007979fa    0fafef
                         shr                  ebp, 8                                        // 0x007979fd    c1ed08
                         sub                  ebp, 0x00000100                               // 0x00797a00    81ed00010000
                         and                  ebp, 0x0000ff00                               // 0x00797a06    81e500ff0000
                         or.s                 eax, ebp                                      // 0x00797a0c    0bc5
                         and                  edx, 0xff000000                               // 0x00797a0e    81e2000000ff
                         or.s                 eax, edx                                      // 0x00797a14    0bc2
                         {disp8} mov          dword ptr [esi + 0x10], eax                   // 0x00797a16    894610
                         xor.s                edx, edx                                      // 0x00797a19    33d2
                         {disp8} mov          dl, byte ptr [ecx + 0x03]                     // 0x00797a1b    8a5103
                         mov.s                edi, eax                                      // 0x00797a1e    8bf8
                         and                  edi, 0x00ff0000                               // 0x00797a20    81e70000ff00
                         mov.s                ebp, eax                                      // 0x00797a26    8be8
                         and                  ebp, 0x0000ff00                               // 0x00797a28    81e500ff0000
                         {disp8} mov          dword ptr [esp + 0x30], ebx                   // 0x00797a2e    895c2430
                         {disp8} fimul        dword ptr [esp + 0x30]                        // 0x00797a32    da4c2430
                         imul                 edi, edx                                      // 0x00797a36    0faffa
                         imul                 ebp, edx                                      // 0x00797a39    0fafea
                         and                  edi, 0xff0000ff                               // 0x00797a3c    81e7ff0000ff
                         and                  ebp, 0x00ff0000                               // 0x00797a42    81e50000ff00
                         or.s                 edi, ebp                                      // 0x00797a48    0bfd
                         mov.s                ebp, eax                                      // 0x00797a4a    8be8
                         and                  ebp, 0x000000ff                               // 0x00797a4c    81e5ff000000
                         imul                 ebp, edx                                      // 0x00797a52    0fafea
                         and                  ebp, 0x0000ff00                               // 0x00797a55    81e500ff0000
                         or.s                 edi, ebp                                      // 0x00797a5b    0bfd
                         and                  eax, 0xff000000                               // 0x00797a5d    25000000ff
                         shr                  edi, 8                                        // 0x00797a62    c1ef08
                         or.s                 edi, eax                                      // 0x00797a65    0bf8
                         xor.s                eax, eax                                      // 0x00797a67    33c0
                         {disp8} mov          dword ptr [esi + 0x10], edi                   // 0x00797a69    897e10
                         {disp8} mov          al, byte ptr [ecx + 0x03]                     // 0x00797a6c    8a4103
                         {disp8} mov          edi, dword ptr [esp + 0x34]                   // 0x00797a6f    8b7c2434
                         imul                 eax, dword ptr [edi + 0x0000c624]             // 0x00797a73    0faf8724c60000
                         sar                  eax, 8                                        // 0x00797a7a    c1f808
                         {disp8} mov          ecx, dword ptr [esi + 0x14]                   // 0x00797a7d    8b4e14
                         mov.s                edx, ecx                                      // 0x00797a80    8bd1
                         and                  edx, 0x00ff0000                               // 0x00797a82    81e20000ff00
                         imul                 edx, eax                                      // 0x00797a88    0fafd0
                         mov.s                ebp, ecx                                      // 0x00797a8b    8be9
                         and                  ebp, 0x0000ff00                               // 0x00797a8d    81e500ff0000
                         imul                 ebp, eax                                      // 0x00797a93    0fafe8
                         and                  ebp, 0x00ff0000                               // 0x00797a96    81e50000ff00
                         and                  edx, 0xff0000ff                               // 0x00797a9c    81e2ff0000ff
                         or.s                 edx, ebp                                      // 0x00797aa2    0bd5
                         mov.s                ebp, ecx                                      // 0x00797aa4    8be9
                         and                  ebp, 0x000000ff                               // 0x00797aa6    81e5ff000000
                         imul                 ebp, eax                                      // 0x00797aac    0fafe8
                         and                  ebp, 0x0000ff00                               // 0x00797aaf    81e500ff0000
                         or.s                 edx, ebp                                      // 0x00797ab5    0bd5
                         shr                  edx, 8                                        // 0x00797ab7    c1ea08
                         and                  ecx, 0xff000000                               // 0x00797aba    81e1000000ff
                         or.s                 edx, ecx                                      // 0x00797ac0    0bd1
                         cmp                  ebx, 0x04                                     // 0x00797ac2    83fb04
                         {disp8} mov          dword ptr [esi + 0x14], edx                   // 0x00797ac5    895614
                         {disp8} jge          _jmp_addr_0x00797ade                          // 0x00797ac8    7d14
                         {disp8} mov          eax, dword ptr [esi + 0x10]                   // 0x00797aca    8b4610
                         {disp32} mov         ecx, dword ptr [ebx * 0x4 + 0x0099ee50]       // 0x00797acd    8b0c9d50ee9900
                         and                  eax, 0x00ffffff                               // 0x00797ad4    25ffffff00
                         add.s                ecx, eax                                      // 0x00797ad9    03c8
                         {disp8} mov          dword ptr [esi + 0x10], ecx                   // 0x00797adb    894e10
_jmp_addr_0x00797ade:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797ade    8b0da09eea00
                         {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x00797ae4    8b542420
                         {disp8} mov          ebp, dword ptr [esp + 0x1c]                   // 0x00797ae8    8b6c241c
                         {disp8} mov          ebx, dword ptr [esp + 0x18]                   // 0x00797aec    8b5c2418
_jmp_addr_0x00797af0:    fld                  st(1)                                         // 0x00797af0    d9c1
                         {disp8} fstp         dword ptr [esi + 0x18]                        // 0x00797af2    d95e18
                         fld                  st(4)                                         // 0x00797af5    d9c4
                         {disp8} fstp         dword ptr [esi + 0x1c]                        // 0x00797af7    d95e1c
                         fld                  st(0)                                         // 0x00797afa    d9c0
                         {disp8} fmul         dword ptr [ecx + 0x0c]                        // 0x00797afc    d8490c
                         fld                  st(4)                                         // 0x00797aff    d9c4
                         {disp8} fmul         dword ptr [ecx + 0x18]                        // 0x00797b01    d84918
                         faddp                st(1), st                                     // 0x00797b04    dec1
                         fld                  st(3)                                         // 0x00797b06    d9c3
                         fmul                 dword ptr [ecx]                               // 0x00797b08    d809
                         faddp                st(1), st                                     // 0x00797b0a    dec1
                         {disp8} fadd         dword ptr [ecx + 0x24]                        // 0x00797b0c    d84124
                         fstp                 dword ptr [esi]                               // 0x00797b0f    d91e
                         fld                  st(0)                                         // 0x00797b11    d9c0
                         {disp8} fmul         dword ptr [ecx + 0x10]                        // 0x00797b13    d84910
                         fld                  st(3)                                         // 0x00797b16    d9c3
                         {disp8} fmul         dword ptr [ecx + 0x04]                        // 0x00797b18    d84904
                         faddp                st(1), st                                     // 0x00797b1b    dec1
                         fld                  st(4)                                         // 0x00797b1d    d9c4
                         {disp8} fmul         dword ptr [ecx + 0x1c]                        // 0x00797b1f    d8491c
                         faddp                st(1), st                                     // 0x00797b22    dec1
                         {disp8} fadd         dword ptr [ecx + 0x28]                        // 0x00797b24    d84128
                         {disp8} fstp         dword ptr [esi + 0x04]                        // 0x00797b27    d95e04
                         {disp8} fmul         dword ptr [ecx + 0x14]                        // 0x00797b2a    d84914
                         fld                  st(2)                                         // 0x00797b2d    d9c2
                         {disp8} fmul         dword ptr [ecx + 0x08]                        // 0x00797b2f    d84908
                         faddp                st(1), st                                     // 0x00797b32    dec1
                         fld                  st(3)                                         // 0x00797b34    d9c3
                         {disp8} fmul         dword ptr [ecx + 0x20]                        // 0x00797b36    d84920
                         faddp                st(1), st                                     // 0x00797b39    dec1
                         {disp8} fadd         dword ptr [ecx + 0x2c]                        // 0x00797b3b    d8412c
                         {disp8} fstp         dword ptr [esi + 0x0c]                        // 0x00797b3e    d95e0c
                         fxch                 st(1)                                         // 0x00797b41    d9c9
                         fadd                 dword ptr [edi]                               // 0x00797b43    d807
                         fxch                 st(1)                                         // 0x00797b45    d9c9
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2fbd0]             // 0x00797b47    d805d08b8d00
                         {disp8} fld          dword ptr [esi + 0x0c]                        // 0x00797b4d    d9460c
                         {disp32} fcomp       dword ptr [_near_clipping]                    // 0x00797b50    d81de039e800
                         fnstsw               ax                                            // 0x00797b56    dfe0
                         test                 ah, 0x01                                      // 0x00797b58    f6c401
                         {disp8} je           _jmp_addr_0x00797b9c                          // 0x00797b5b    743f
                         {disp8} mov          dword ptr [ebp + 0x00], 0x00000020            // 0x00797b5d    c7450020000000
                         {disp8} jmp          _jmp_addr_0x00797ba3                          // 0x00797b64    eb3d
_jmp_addr_0x00797b66:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797b66    8b0da09eea00
                         {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x00797b6c    d90598a38a00
                         {disp8} mov          ebx, dword ptr [esp + 0x18]                   // 0x00797b72    8b5c2418
                         xor.s                eax, eax                                      // 0x00797b76    33c0
                         {disp8} mov          dword ptr [esi + 0x10], eax                   // 0x00797b78    894610
                         {disp8} mov          dword ptr [esi + 0x14], eax                   // 0x00797b7b    894614
                         {disp32} jmp         _jmp_addr_0x00797af0                          // 0x00797b7e    e96dffffff
_jmp_addr_0x00797b83:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797b83    8b0da09eea00
_jmp_addr_0x00797b89:    {disp32} fld         dword ptr [_rdata_float0p0]                   // 0x00797b89    d90598a38a00
                         xor.s                eax, eax                                      // 0x00797b8f    33c0
                         {disp8} mov          dword ptr [esi + 0x10], eax                   // 0x00797b91    894610
                         {disp8} mov          dword ptr [esi + 0x14], eax                   // 0x00797b94    894614
                         {disp32} jmp         _jmp_addr_0x00797af0                          // 0x00797b97    e954ffffff
_jmp_addr_0x00797b9c:    {disp8} mov          dword ptr [ebp + 0x00], 0x00000000            // 0x00797b9c    c7450000000000
_jmp_addr_0x00797ba3:    fld                  dword ptr [esi]                               // 0x00797ba3    d906
                         {disp8} fcomp        dword ptr [esi + 0x0c]                        // 0x00797ba5    d85e0c
                         fnstsw               ax                                            // 0x00797ba8    dfe0
                         test                 ah, 0x41                                      // 0x00797baa    f6c441
                         {disp8} jne          _jmp_addr_0x00797bb7                          // 0x00797bad    7508
                         {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x00797baf    8b4500
                         or                   eax, 0x10                                     // 0x00797bb2    83c810
                         {disp8} jmp          _jmp_addr_0x00797bcb                          // 0x00797bb5    eb14
_jmp_addr_0x00797bb7:    {disp8} fld          dword ptr [esi + 0x0c]                        // 0x00797bb7    d9460c
                         fchs                                                               // 0x00797bba    d9e0
                         fcomp                dword ptr [esi]                               // 0x00797bbc    d81e
                         fnstsw               ax                                            // 0x00797bbe    dfe0
                         test                 ah, 0x41                                      // 0x00797bc0    f6c441
                         {disp8} jne          _jmp_addr_0x00797bce                          // 0x00797bc3    7509
                         {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x00797bc5    8b4500
                         or                   eax, 0x8                                      // 0x00797bc8    83c808
_jmp_addr_0x00797bcb:    {disp8} mov          dword ptr [ebp + 0x00], eax                   // 0x00797bcb    894500
_jmp_addr_0x00797bce:    {disp8} fld          dword ptr [esi + 0x04]                        // 0x00797bce    d94604
                         {disp8} fcomp        dword ptr [esi + 0x0c]                        // 0x00797bd1    d85e0c
                         fnstsw               ax                                            // 0x00797bd4    dfe0
                         test                 ah, 0x41                                      // 0x00797bd6    f6c441
                         {disp8} jne          _jmp_addr_0x00797be3                          // 0x00797bd9    7508
                         {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x00797bdb    8b4500
                         or                   eax, 0x4                                      // 0x00797bde    83c804
                         {disp8} jmp          _jmp_addr_0x00797bf8                          // 0x00797be1    eb15
_jmp_addr_0x00797be3:    {disp8} fld          dword ptr [esi + 0x0c]                        // 0x00797be3    d9460c
                         fchs                                                               // 0x00797be6    d9e0
                         {disp8} fcomp        dword ptr [esi + 0x04]                        // 0x00797be8    d85e04
                         fnstsw               ax                                            // 0x00797beb    dfe0
                         test                 ah, 0x41                                      // 0x00797bed    f6c441
                         {disp8} jne          _jmp_addr_0x00797bfb                          // 0x00797bf0    7509
                         {disp8} mov          eax, dword ptr [ebp + 0x00]                   // 0x00797bf2    8b4500
                         or                   eax, 0x2                                      // 0x00797bf5    83c802
_jmp_addr_0x00797bf8:    {disp8} mov          dword ptr [ebp + 0x00], eax                   // 0x00797bf8    894500
_jmp_addr_0x00797bfb:    cmp                  dword ptr [ebp + 0x00], 0x00                  // 0x00797bfb    837d0000
                         {disp32} jne         _jmp_addr_0x00797ca8                          // 0x00797bff    0f85a3000000
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x00797c05    d90590a38a00
                         {disp8} fdiv         dword ptr [esi + 0x0c]                        // 0x00797c0b    d8760c
                         {disp8} fst          dword ptr [esi + 0x0c]                        // 0x00797c0e    d9560c
                         fmul                 dword ptr [esi]                               // 0x00797c11    d80e
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x00797c13    d80590a38a00
                         {disp32} fmul        dword ptr [data_bytes + 0x4bd9f0]             // 0x00797c19    d80df039e800
                         fst                  dword ptr [esi]                               // 0x00797c1f    d916
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x00797c21    d81d98a38a00
                         fnstsw               ax                                            // 0x00797c27    dfe0
                         test                 ah, 0x01                                      // 0x00797c29    f6c401
                         {disp8} je           _jmp_addr_0x00797c36                          // 0x00797c2c    7408
                         mov                  dword ptr [esi], 0x00000000                   // 0x00797c2e    c70600000000
                         {disp8} jmp          _jmp_addr_0x00797c4c                          // 0x00797c34    eb16
_jmp_addr_0x00797c36:    fld                  dword ptr [esi]                               // 0x00797c36    d906
                         {disp32} fcomp       dword ptr [data_bytes + 0x264b00]             // 0x00797c38    d81d00abc200
                         fnstsw               ax                                            // 0x00797c3e    dfe0
                         test                 ah, 0x41                                      // 0x00797c40    f6c441
                         {disp8} jne          _jmp_addr_0x00797c4c                          // 0x00797c43    7507
                         {disp32} mov         eax, dword ptr [data_bytes + 0x264b00]        // 0x00797c45    a100abc200
                         mov                  dword ptr [esi], eax                          // 0x00797c4a    8906
_jmp_addr_0x00797c4c:    {disp8} fld          dword ptr [esi + 0x0c]                        // 0x00797c4c    d9460c
                         {disp8} fmul         dword ptr [esi + 0x04]                        // 0x00797c4f    d84e04
                         {disp32} fmul        dword ptr [data_bytes + 0x4bd9f4]             // 0x00797c52    d80df439e800
                         {disp32} fsubr       dword ptr [data_bytes + 0x4bd9f4]             // 0x00797c58    d82df439e800
                         {disp8} fst          dword ptr [esi + 0x04]                        // 0x00797c5e    d95604
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x00797c61    d81d98a38a00
                         fnstsw               ax                                            // 0x00797c67    dfe0
                         test                 ah, 0x01                                      // 0x00797c69    f6c401
                         {disp8} je           _jmp_addr_0x00797c77                          // 0x00797c6c    7409
                         {disp8} mov          dword ptr [esi + 0x04], 0x00000000            // 0x00797c6e    c7460400000000
                         {disp8} jmp          _jmp_addr_0x00797c8f                          // 0x00797c75    eb18
_jmp_addr_0x00797c77:    {disp8} fld          dword ptr [esi + 0x04]                        // 0x00797c77    d94604
                         {disp32} fcomp       dword ptr [data_bytes + 0x264b04]             // 0x00797c7a    d81d04abc200
                         fnstsw               ax                                            // 0x00797c80    dfe0
                         test                 ah, 0x41                                      // 0x00797c82    f6c441
                         {disp8} jne          _jmp_addr_0x00797c8f                          // 0x00797c85    7508
                         {disp32} mov         eax, dword ptr [data_bytes + 0x264b04]        // 0x00797c87    a104abc200
                         {disp8} mov          dword ptr [esi + 0x04], eax                   // 0x00797c8c    894604
_jmp_addr_0x00797c8f:    {disp32} fld         dword ptr [_near_clipping]                    // 0x00797c8f    d905e039e800
                         {disp8} fmul         dword ptr [esi + 0x0c]                        // 0x00797c95    d84e0c
                         {disp8} fst          dword ptr [esi + 0x0c]                        // 0x00797c98    d9560c
                         {disp32} fld         dword ptr [_rdata_float1p0]                   // 0x00797c9b    d90590a38a00
                         fsub                 st, st(1)                                     // 0x00797ca1    d8e1
                         {disp8} fstp         dword ptr [esi + 0x08]                        // 0x00797ca3    d95e08
                         fstp                 st(0)                                         // 0x00797ca6    ddd8
_jmp_addr_0x00797ca8:    add                  ebp, 0x04                                     // 0x00797ca8    83c504
                         add                  esi, 0x20                                     // 0x00797cab    83c620
                         inc                  edx                                           // 0x00797cae    42
                         cmp                  edx, 0x40                                     // 0x00797caf    83fa40
                         {disp8} mov          dword ptr [esp + 0x1c], ebp                   // 0x00797cb2    896c241c
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x00797cb6    89542420
                         {disp32} jle         _jmp_addr_0x00797913                          // 0x00797cba    0f8e53fcffff
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x00797cc0    8b442410
                         fstp                 st(0)                                         // 0x00797cc4    ddd8
                         {disp8} mov          ebx, dword ptr [esp + 0x24]                   // 0x00797cc6    8b5c2424
                         fstp                 st(0)                                         // 0x00797cca    ddd8
                         fadd                 dword ptr [edi]                               // 0x00797ccc    d807
                         {disp8} mov          edx, dword ptr [esp + 0x2c]                   // 0x00797cce    8b54242c
                         inc                  eax                                           // 0x00797cd2    40
                         fxch                 st(1)                                         // 0x00797cd3    d9c9
                         {disp32} fadd        dword ptr [rdata_bytes + 0x2fbd0]             // 0x00797cd5    d805d08b8d00
                         add                  ebx, 0x41                                     // 0x00797cdb    83c341
                         cmp.s                eax, edx                                      // 0x00797cde    3bc2
                         fxch                 st(1)                                         // 0x00797ce0    d9c9
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x00797ce2    89442410
                         {disp8} mov          dword ptr [esp + 0x24], ebx                   // 0x00797ce6    895c2424
                         {disp32} jle         _jmp_addr_0x007978f6                          // 0x00797cea    0f8e06fcffff
                         {disp8} mov          ebx, dword ptr [esp + 0x14]                   // 0x00797cf0    8b5c2414
                         fstp                 st(0)                                         // 0x00797cf4    ddd8
                         fstp                 st(0)                                         // 0x00797cf6    ddd8
_jmp_addr_0x00797cf8:    xor.s                eax, eax                                      // 0x00797cf8    33c0
                         xor.s                ebp, ebp                                      // 0x00797cfa    33ed
                         {disp32} mov         dword ptr [data_bytes + 0x4e3ea4], eax        // 0x00797cfc    a3a49eea00
                         {disp32} mov         word ptr [data_bytes + 0x4e3ea8], 0x0145      // 0x00797d01    66c705a89eea004501
                         {disp32} mov         dword ptr [data_bytes + 0x4e3eb8], eax        // 0x00797d0a    a3b89eea00
                         {disp8} mov          dword ptr [esp + 0x10], eax                   // 0x00797d0f    89442410
                         {disp8} mov          dword ptr [esp + 0x20], ebp                   // 0x00797d13    896c2420
                         {disp8} jmp          _jmp_addr_0x00797d23                          // 0x00797d17    eb0a
_jmp_addr_0x00797d19:    fstp                 st(0)                                         // 0x00797d19    ddd8
                         fstp                 st(0)                                         // 0x00797d1b    ddd8
                         {disp8} jmp          _jmp_addr_0x00797cf8                          // 0x00797d1d    ebd9
_jmp_addr_0x00797d1f:    {disp8} mov          ebx, dword ptr [esp + 0x14]                   // 0x00797d1f    8b5c2414
_jmp_addr_0x00797d23:    {disp8} mov          esi, dword ptr [esp + 0x10]                   // 0x00797d23    8b742410
                         xor.s                edx, edx                                      // 0x00797d27    33d2
                         add.s                ebx, esi                                      // 0x00797d29    03de
                         sar                  ebx, 1                                        // 0x00797d2b    d1fb
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x00797d2d    89542424
                         {disp8} mov          dword ptr [esp + 0x30], ebx                   // 0x00797d31    895c2430
_jmp_addr_0x00797d35:    mov.s                esi, edx                                      // 0x00797d35    8bf2
                         sar                  esi, 1                                        // 0x00797d37    d1fe
                         {disp32} js          _jmp_addr_0x00797e8c                          // 0x00797d39    0f884d010000
                         cmp                  esi, 0x1f                                     // 0x00797d3f    83fe1f
                         {disp32} jg          _jmp_addr_0x00797e8c                          // 0x00797d42    0f8f44010000
                         test                 ebx, ebx                                      // 0x00797d48    85db
                         {disp32} jl          _jmp_addr_0x00797e8c                          // 0x00797d4a    0f8c3c010000
                         cmp                  ebx, 0x1f                                     // 0x00797d50    83fb1f
                         {disp32} jg          _jmp_addr_0x00797e8c                          // 0x00797d53    0f8f33010000
                         shl                  esi, 5                                        // 0x00797d59    c1e605
                         xor.s                ecx, ecx                                      // 0x00797d5c    33c9
                         {disp32} mov         cl, byte ptr [esi + ebx + ?g_index_block@LH3DIsland@@3PAY0CA@EA]   // 0x00797d5e    8a8c1e64c9e900
                         test                 ecx, ecx                                      // 0x00797d65    85c9
                         {disp32} je          _jmp_addr_0x00797e86                          // 0x00797d67    0f8419010000
                         {disp32} mov         esi, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x00797d6d    8b348d64c5e900
                         test                 esi, esi                                      // 0x00797d74    85f6
                         {disp32} je          _jmp_addr_0x00797e86                          // 0x00797d76    0f840a010000
                         xor.s                esi, esi                                      // 0x00797d7c    33f6
                         {disp8} mov          dword ptr [esp + 0x1c], esi                   // 0x00797d7e    8974241c
                         {disp8} jmp          _jmp_addr_0x00797d88                          // 0x00797d82    eb04
_jmp_addr_0x00797d84:    {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x00797d84    8b542424
_jmp_addr_0x00797d88:    test                 esi, esi                                      // 0x00797d88    85f6
                         {disp8} je           _jmp_addr_0x00797d97                          // 0x00797d8a    740b
                         lea                  ecx, dword ptr [edx + ebp * 0x1]              // 0x00797d8c    8d0c2a
                         {disp8} lea          esi, dword ptr [ecx + 0x01]                   // 0x00797d8f    8d7101
                         {disp8} lea          edx, dword ptr [ecx + 0x42]                   // 0x00797d92    8d5142
                         {disp8} jmp          _jmp_addr_0x00797da1                          // 0x00797d95    eb0a
_jmp_addr_0x00797d97:    {disp8} lea          ecx, dword ptr [edx + ebp * 0x1 + 0x42]       // 0x00797d97    8d4c2a42
                         {disp8} lea          esi, dword ptr [ecx + -0x01]                  // 0x00797d9b    8d71ff
                         {disp8} lea          edx, dword ptr [esi + -0x41]                  // 0x00797d9e    8d56bf
_jmp_addr_0x00797da1:    {disp32} mov         eax, dword ptr [ecx * 0x4 + 0x00e3b5e0]       // 0x00797da1    8b048de0b5e300
                         {disp32} mov         ebx, dword ptr [esi * 0x4 + 0x00e3b5e0]       // 0x00797da8    8b1cb5e0b5e300
                         mov.s                ebp, eax                                      // 0x00797daf    8be8
                         or.s                 ebp, ebx                                      // 0x00797db1    0beb
                         {disp32} mov         ebx, dword ptr [edx * 0x4 + 0x00e3b5e0]       // 0x00797db3    8b1c95e0b5e300
                         or.s                 ebp, ebx                                      // 0x00797dba    0beb
                         {disp8} je           _jmp_addr_0x00797de5                          // 0x00797dbc    7427
                         and                  eax, dword ptr [esi * 0x4 + 0x00e3b5e0]       // 0x00797dbe    2304b5e0b5e300
                         test                 ebx, eax                                      // 0x00797dc5    85c3
                         {disp32} jne         _jmp_addr_0x00797e5b                          // 0x00797dc7    0f858e000000
                         push                 0x20                                          // 0x00797dcd    6a20
                         push                 esi                                           // 0x00797dcf    56
                         call                 _jmp_addr_0x0081a760                          // 0x00797dd0    e88b290800
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797dd5    8b0da09eea00
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x00797ddb    a1a49eea00
                         {disp32} jmp         _jmp_addr_0x00797e66                          // 0x00797de0    e981000000
_jmp_addr_0x00797de5:    mov.s                eax, edx                                      // 0x00797de5    8bc2
                         shl                  eax, 5                                        // 0x00797de7    c1e005
                         {disp32} lea         ebx, dword ptr [eax + 0x00e437e0]             // 0x00797dea    8d98e037e400
                         mov.s                ebp, esi                                      // 0x00797df0    8bee
                         shl                  ebp, 5                                        // 0x00797df2    c1e505
                         {disp32} fld         dword ptr [ebp + 0x00e437e4]                  // 0x00797df5    d985e437e400
                         mov.s                eax, ecx                                      // 0x00797dfb    8bc1
                         shl                  eax, 5                                        // 0x00797dfd    c1e005
                         {disp32} fsub        dword ptr [eax + 0x00e437e4]                  // 0x00797e00    d8a0e437e400
                         {disp32} lea         eax, dword ptr [eax + 0x00e437e0]             // 0x00797e06    8d80e037e400
                         fld                  dword ptr [ebx]                               // 0x00797e0c    d903
                         {disp32} lea         ebp, dword ptr [ebp + 0x00e437e0]             // 0x00797e0e    8dade037e400
                         fsub                 dword ptr [eax]                               // 0x00797e14    d820
                         fmulp                st(1), st                                     // 0x00797e16    dec9
                         {disp8} fld          dword ptr [ebx + 0x04]                        // 0x00797e18    d94304
                         {disp8} fsub         dword ptr [eax + 0x04]                        // 0x00797e1b    d86004
                         {disp8} fld          dword ptr [ebp + 0x00]                        // 0x00797e1e    d94500
                         fsub                 dword ptr [eax]                               // 0x00797e21    d820
                         fmulp                st(1), st                                     // 0x00797e23    dec9
                         fsubp                st(1), st                                     // 0x00797e25    dee9
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x00797e27    d81d98a38a00
                         fnstsw               ax                                            // 0x00797e2d    dfe0
                         test                 ah, 0x41                                      // 0x00797e2f    f6c441
                         {disp8} jne          _jmp_addr_0x00797e5b                          // 0x00797e32    7527
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x00797e34    a1a49eea00
                         {disp32} mov         word ptr [eax * 0x2 + 0x00ea5de0], cx         // 0x00797e39    66890c45e05dea00
                         inc                  eax                                           // 0x00797e41    40
                         {disp32} mov         word ptr [eax * 0x2 + 0x00ea5de0], dx         // 0x00797e42    66891445e05dea00
                         inc                  eax                                           // 0x00797e4a    40
                         {disp32} mov         word ptr [eax * 0x2 + 0x00ea5de0], si         // 0x00797e4b    66893445e05dea00
                         inc                  eax                                           // 0x00797e53    40
                         {disp32} mov         dword ptr [data_bytes + 0x4e3ea4], eax        // 0x00797e54    a3a49eea00
                         {disp8} jmp          _jmp_addr_0x00797e60                          // 0x00797e59    eb05
_jmp_addr_0x00797e5b:    {disp32} mov         eax, dword ptr [data_bytes + 0x4e3ea4]        // 0x00797e5b    a1a49eea00
_jmp_addr_0x00797e60:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797e60    8b0da09eea00
_jmp_addr_0x00797e66:    {disp8} mov          esi, dword ptr [esp + 0x1c]                   // 0x00797e66    8b74241c
                         {disp8} mov          ebp, dword ptr [esp + 0x20]                   // 0x00797e6a    8b6c2420
                         inc                  esi                                           // 0x00797e6e    46
                         cmp                  esi, 0x02                                     // 0x00797e6f    83fe02
                         {disp8} mov          dword ptr [esp + 0x1c], esi                   // 0x00797e72    8974241c
                         {disp32} jl          _jmp_addr_0x00797d84                          // 0x00797e76    0f8c08ffffff
                         {disp8} mov          ebx, dword ptr [esp + 0x30]                   // 0x00797e7c    8b5c2430
                         {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x00797e80    8b542424
                         {disp8} jmp          _jmp_addr_0x00797e8c                          // 0x00797e84    eb06
_jmp_addr_0x00797e86:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797e86    8b0da09eea00
_jmp_addr_0x00797e8c:    inc                  edx                                           // 0x00797e8c    42
                         cmp                  edx, 0x40                                     // 0x00797e8d    83fa40
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x00797e90    89542424
                         {disp32} jl          _jmp_addr_0x00797d35                          // 0x00797e94    0f8c9bfeffff
                         {disp8} mov          ebx, dword ptr [esp + 0x10]                   // 0x00797e9a    8b5c2410
                         add                  ebp, 0x41                                     // 0x00797e9e    83c541
                         inc                  ebx                                           // 0x00797ea1    43
                         cmp                  ebp, 0x00000104                               // 0x00797ea2    81fd04010000
                         {disp8} mov          dword ptr [esp + 0x10], ebx                   // 0x00797ea8    895c2410
                         {disp8} mov          dword ptr [esp + 0x20], ebp                   // 0x00797eac    896c2420
                         {disp32} jl          _jmp_addr_0x00797d1f                          // 0x00797eb0    0f8c69feffff
                         test                 eax, eax                                      // 0x00797eb6    85c0
                         {disp8} je           _jmp_addr_0x00797eda                          // 0x00797eb8    7420
                         xor.s                edx, edx                                      // 0x00797eba    33d2
                         {disp32} mov         dx, word ptr [data_bytes + 0x4e3ea8]          // 0x00797ebc    668b15a89eea00
                         push                 eax                                           // 0x00797ec3    50
                         push                 0x00ea5de0                                    // 0x00797ec4    68e05dea00
                         mov                  ecx, 0x00e437e0                               // 0x00797ec9    b9e037e400
                         call                 dword ptr [data_bytes + 0x2726ec]             // 0x00797ece    ff15ec86c300
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4e3ea0]        // 0x00797ed4    8b0da09eea00
_jmp_addr_0x00797eda:    {disp8} mov          eax, dword ptr [esp + 0x28]                   // 0x00797eda    8b442428
                         {disp8} mov          edx, dword ptr [esp + 0x2c]                   // 0x00797ede    8b54242c
                         add                  eax, 0x00000104                               // 0x00797ee2    0504010000
                         cmp                  eax, 0x00001040                               // 0x00797ee7    3d40100000
                         {disp8} mov          dword ptr [esp + 0x14], edx                   // 0x00797eec    89542414
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x00797ef0    89442428
                         {disp32} jl          _jmp_addr_0x007978ae                          // 0x00797ef4    0f8cb4f9ffff
                         pop                  edi                                           // 0x00797efa    5f
                         pop                  esi                                           // 0x00797efb    5e
                         pop                  ebp                                           // 0x00797efc    5d
                         pop                  ebx                                           // 0x00797efd    5b
                         add                  esp, 0x34                                     // 0x00797efe    83c434
                         ret                                                                // 0x00797f01    c3
                         nop                                                                // 0x00797f02    90
                         nop                                                                // 0x00797f03    90
                         nop                                                                // 0x00797f04    90
                         nop                                                                // 0x00797f05    90
                         nop                                                                // 0x00797f06    90
                         nop                                                                // 0x00797f07    90
                         nop                                                                // 0x00797f08    90
                         nop                                                                // 0x00797f09    90
                         nop                                                                // 0x00797f0a    90
                         nop                                                                // 0x00797f0b    90
                         nop                                                                // 0x00797f0c    90
                         nop                                                                // 0x00797f0d    90
                         nop                                                                // 0x00797f0e    90
                         nop                                                                // 0x00797f0f    90
_jmp_addr_0x00797f10:    sub                  esp, 0x6c                                     // 0x00797f10    83ec6c
                         push                 ebx                                           // 0x00797f13    53
                         push                 ebp                                           // 0x00797f14    55
                         push                 esi                                           // 0x00797f15    56
                         push                 edi                                           // 0x00797f16    57
                         {disp8} lea          eax, dword ptr [esp + 0x6c]                   // 0x00797f17    8d44246c
                         {disp8} mov          dword ptr [esp + 0x58], ecx                   // 0x00797f1b    894c2458
                         {disp8} mov          ecx, dword ptr [ecx + 0x10]                   // 0x00797f1f    8b4910
                         push                 eax                                           // 0x00797f22    50
                         call                 _jmp_addr_0x00838af0                          // 0x00797f23    e8c80b0a00
                         {disp8} mov          eax, dword ptr [esp + 0x70]                   // 0x00797f28    8b442470
                         cdq                                                                // 0x00797f2c    99
                         sub.s                eax, edx                                      // 0x00797f2d    2bc2
                         mov.s                ecx, eax                                      // 0x00797f2f    8bc8
                         {disp8} mov          eax, dword ptr [esp + 0x74]                   // 0x00797f31    8b442474
                         cdq                                                                // 0x00797f35    99
                         and                  edx, 0x1f                                     // 0x00797f36    83e21f
                         add.s                eax, edx                                      // 0x00797f39    03c2
                         mov.s                esi, eax                                      // 0x00797f3b    8bf0
                         mov                  eax, 0x00000100                               // 0x00797f3d    b800010000
                         sar                  ecx, 1                                        // 0x00797f42    d1f9
                         sar                  esi, 5                                        // 0x00797f44    c1fe05
                         {disp8} mov          dword ptr [esp + 0x2c], eax                   // 0x00797f47    8944242c
                         {disp8} mov          dword ptr [esp + 0x34], eax                   // 0x00797f4b    89442434
                         mov.s                eax, esi                                      // 0x00797f4f    8bc6
                         imul                 eax, ecx                                      // 0x00797f51    0fafc1
                         xor.s                edi, edi                                      // 0x00797f54    33ff
                         xor.s                edx, edx                                      // 0x00797f56    33d2
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x00797f58    894c2418
                         {disp8} mov          ecx, dword ptr [esp + 0x6c]                   // 0x00797f5c    8b4c246c
                         shl                  eax, 1                                        // 0x00797f60    d1e0
                         {disp8} mov          dword ptr [esp + 0x28], edi                   // 0x00797f62    897c2428
                         {disp8} mov          dword ptr [esp + 0x30], edi                   // 0x00797f66    897c2430
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x00797f6a    89542424
                         {disp8} mov          dword ptr [esp + 0x54], eax                   // 0x00797f6e    89442454
                         {disp8} mov          dword ptr [esp + 0x44], ecx                   // 0x00797f72    894c2444
_jmp_addr_0x00797f76:    xor.s                eax, eax                                      // 0x00797f76    33c0
                         {disp32} lea         ebx, dword ptr [edx + ?g_index_block@LH3DIsland@@3PAY0CA@EA]             // 0x00797f78    8d9a64c9e900
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x00797f7e    8944241c
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x00797f82    895c2420
                         {disp8} mov          dword ptr [esp + 0x10], ecx                   // 0x00797f86    894c2410
_jmp_addr_0x00797f8a:    cmp.s                eax, edi                                      // 0x00797f8a    3bc7
                         {disp8} jl           _jmp_addr_0x00797fb5                          // 0x00797f8c    7c27
                         cmp                  eax, 0x1f                                     // 0x00797f8e    83f81f
                         {disp8} jg           _jmp_addr_0x00797fb5                          // 0x00797f91    7f22
                         cmp.s                edx, edi                                      // 0x00797f93    3bd7
                         {disp8} jl           _jmp_addr_0x00797fb5                          // 0x00797f95    7c1e
                         cmp                  edx, 0x1f                                     // 0x00797f97    83fa1f
                         {disp8} jg           _jmp_addr_0x00797fb5                          // 0x00797f9a    7f19
                         {disp8} mov          ebx, dword ptr [esp + 0x20]                   // 0x00797f9c    8b5c2420
                         xor.s                ecx, ecx                                      // 0x00797fa0    33c9
                         mov                  cl, byte ptr [ebx]                            // 0x00797fa2    8a0b
                         cmp.s                ecx, edi                                      // 0x00797fa4    3bcf
                         {disp8} je           _jmp_addr_0x00797fb5                          // 0x00797fa6    740d
                         {disp32} mov         ecx, dword ptr [ecx * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x00797fa8    8b0c8d64c5e900
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x00797faf    894c2414
                         {disp8} jmp          _jmp_addr_0x00797fbb                          // 0x00797fb3    eb06
_jmp_addr_0x00797fb5:    {disp8} mov          dword ptr [esp + 0x14], edi                   // 0x00797fb5    897c2414
                         mov.s                ecx, edi                                      // 0x00797fb9    8bcf
_jmp_addr_0x00797fbb:    cmp.s                ecx, edi                                      // 0x00797fbb    3bcf
                         {disp8} mov          dword ptr [esp + 0x40], edi                   // 0x00797fbd    897c2440
                         {disp32} je          _jmp_addr_0x00798151                          // 0x00797fc1    0f848a010000
                         cmp                  eax, dword ptr [esp + 0x2c]                   // 0x00797fc7    3b44242c
                         {disp8} jge          _jmp_addr_0x00797fd1                          // 0x00797fcb    7d04
                         {disp8} mov          dword ptr [esp + 0x2c], eax                   // 0x00797fcd    8944242c
_jmp_addr_0x00797fd1:    cmp                  eax, dword ptr [esp + 0x28]                   // 0x00797fd1    3b442428
                         {disp8} jle          _jmp_addr_0x00797fdb                          // 0x00797fd5    7e04
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x00797fd7    89442428
_jmp_addr_0x00797fdb:    cmp                  edx, dword ptr [esp + 0x34]                   // 0x00797fdb    3b542434
                         {disp8} jge          _jmp_addr_0x00797fe5                          // 0x00797fdf    7d04
                         {disp8} mov          dword ptr [esp + 0x34], edx                   // 0x00797fe1    89542434
_jmp_addr_0x00797fe5:    cmp                  edx, dword ptr [esp + 0x30]                   // 0x00797fe5    3b542430
                         {disp8} jle          _jmp_addr_0x00797fef                          // 0x00797fe9    7e04
                         {disp8} mov          dword ptr [esp + 0x30], edx                   // 0x00797feb    89542430
_jmp_addr_0x00797fef:    {disp32} mov         ecx, dword ptr [ecx + 0x000009c0]             // 0x00797fef    8b89c0090000
                         cmp.s                ecx, edi                                      // 0x00797ff5    3bcf
                         {disp32} je          _jmp_addr_0x00798151                          // 0x00797ff7    0f8454010000
                         mov                  ecx, dword ptr [ecx]                          // 0x00797ffd    8b09
                         cmp.s                ecx, edi                                      // 0x00797fff    3bcf
                         {disp8} mov          dword ptr [esp + 0x50], ecx                   // 0x00798001    894c2450
                         {disp32} je          _jmp_addr_0x00798151                          // 0x00798005    0f8446010000
                         {disp8} lea          edx, dword ptr [esp + 0x5c]                   // 0x0079800b    8d54245c
                         push                 edx                                           // 0x0079800f    52
                         call                 _jmp_addr_0x00838af0                          // 0x00798010    e8db0a0a00
                         {disp8} mov          edi, dword ptr [esp + 0x64]                   // 0x00798015    8b7c2464
                         xor.s                eax, eax                                      // 0x00798019    33c0
                         cmp                  edi, 0x00000100                               // 0x0079801b    81ff00010000
                         sete                 al                                            // 0x00798021    0f94c0
                         add                  eax, 0x07                                     // 0x00798024    83c007
                         mov.s                ebp, eax                                      // 0x00798027    8be8
                         {disp8} mov          eax, dword ptr [esp + 0x5c]                   // 0x00798029    8b44245c
                         test                 eax, eax                                      // 0x0079802d    85c0
                         {disp32} je          _jmp_addr_0x0079810e                          // 0x0079802f    0f84d9000000
                         mov.s                eax, edi                                      // 0x00798035    8bc7
                         cdq                                                                // 0x00798037    99
                         {disp32} lea         ebx, dword ptr [esi * 0x4 + 0x00000000]       // 0x00798038    8d1cb500000000
                         idiv                 ebx                                           // 0x0079803f    f7fb
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798041    8b4c2468
                         {disp8} mov          dword ptr [esp + 0x48], eax                   // 0x00798045    89442448
                         mov.s                eax, ecx                                      // 0x00798049    8bc1
                         cdq                                                                // 0x0079804b    99
                         idiv                 ebx                                           // 0x0079804c    f7fb
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x0079804e    8b542414
                         mov.s                ebx, eax                                      // 0x00798052    8bd8
                         {disp32} mov         eax, dword ptr [edx + 0x000009d0]             // 0x00798054    8b82d0090000
                         imul                 eax, ecx                                      // 0x0079805a    0fafc1
                         cdq                                                                // 0x0079805d    99
                         and                  edx, 0x000000ff                               // 0x0079805e    81e2ff000000
                         add.s                edx, eax                                      // 0x00798064    03d0
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x00798066    8b442414
                         {disp32} mov         eax, dword ptr [eax + 0x000009cc]             // 0x0079806a    8b80cc090000
                         sar                  edx, 8                                        // 0x00798070    c1fa08
                         imul                 eax, edi                                      // 0x00798073    0fafc7
                         imul                 edx, ecx                                      // 0x00798076    0fafd1
                         mov.s                ecx, ebp                                      // 0x00798079    8bcd
                         sar                  edx, cl                                       // 0x0079807b    d3fa
                         imul                 edx, edi                                      // 0x0079807d    0fafd7
                         {disp8} mov          dword ptr [esp + 0x40], edx                   // 0x00798080    89542440
                         cdq                                                                // 0x00798084    99
                         and                  edx, 0x000000ff                               // 0x00798085    81e2ff000000
                         add.s                eax, edx                                      // 0x0079808b    03c2
                         {disp8} mov          edx, dword ptr [esp + 0x5c]                   // 0x0079808d    8b54245c
                         sar                  eax, 8                                        // 0x00798091    c1f808
                         imul                 eax, edi                                      // 0x00798094    0fafc7
                         sar                  eax, cl                                       // 0x00798097    d3f8
                         {disp8} mov          ecx, dword ptr [esp + 0x40]                   // 0x00798099    8b4c2440
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000001            // 0x0079809d    c744244001000000
                         add.s                ecx, eax                                      // 0x007980a5    03c8
                         test                 esi, esi                                      // 0x007980a7    85f6
                         lea                  edx, dword ptr [edx + ecx * 0x2]              // 0x007980a9    8d144a
                         {disp32} jle         _jmp_addr_0x00798136                          // 0x007980ac    0f8e84000000
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x007980b2    8b4c2410
                         lea                  eax, dword ptr [ebx + ebx * 0x1]              // 0x007980b6    8d041b
                         {disp8} mov          dword ptr [esp + 0x4c], eax                   // 0x007980b9    8944244c
                         {disp8} mov          dword ptr [esp + 0x38], edx                   // 0x007980bd    89542438
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x007980c1    894c2414
                         {disp8} mov          dword ptr [esp + 0x3c], esi                   // 0x007980c5    8974243c
_jmp_addr_0x007980c9:    {disp8} mov          eax, dword ptr [esp + 0x48]                   // 0x007980c9    8b442448
                         imul                 eax, edi                                      // 0x007980cd    0fafc7
                         shl                  eax, 1                                        // 0x007980d0    d1e0
                         mov.s                ebx, esi                                      // 0x007980d2    8bde
_jmp_addr_0x007980d4:    mov                  bp, word ptr [edx]                            // 0x007980d4    668b2a
                         mov                  word ptr [ecx], bp                            // 0x007980d7    668929
                         add                  ecx, 0x2                                      // 0x007980da    83c102
                         add.s                edx, eax                                      // 0x007980dd    03d0
                         dec                  ebx                                           // 0x007980df    4b
                         {disp8} jne          _jmp_addr_0x007980d4                          // 0x007980e0    75f2
                         {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x007980e2    8b4c2418
                         {disp8} mov          edx, dword ptr [esp + 0x38]                   // 0x007980e6    8b542438
                         {disp8} mov          ebx, dword ptr [esp + 0x4c]                   // 0x007980ea    8b5c244c
                         lea                  eax, dword ptr [ecx + ecx * 0x1]              // 0x007980ee    8d0409
                         {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x007980f1    8b4c2414
                         add.s                ecx, eax                                      // 0x007980f5    03c8
                         {disp8} mov          eax, dword ptr [esp + 0x3c]                   // 0x007980f7    8b44243c
                         add.s                edx, ebx                                      // 0x007980fb    03d3
                         dec                  eax                                           // 0x007980fd    48
                         {disp8} mov          dword ptr [esp + 0x14], ecx                   // 0x007980fe    894c2414
                         {disp8} mov          dword ptr [esp + 0x38], edx                   // 0x00798102    89542438
                         {disp8} mov          dword ptr [esp + 0x3c], eax                   // 0x00798106    8944243c
                         {disp8} jne          _jmp_addr_0x007980c9                          // 0x0079810a    75bd
                         {disp8} jmp          _jmp_addr_0x00798136                          // 0x0079810c    eb28
_jmp_addr_0x0079810e:    test                 esi, esi                                      // 0x0079810e    85f6
                         {disp8} jle          _jmp_addr_0x00798136                          // 0x00798110    7e24
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x00798112    8b542418
                         lea                  ebx, dword ptr [edx + edx * 0x1]              // 0x00798116    8d1c12
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x00798119    8b542410
                         mov.s                ebp, esi                                      // 0x0079811d    8bee
_jmp_addr_0x0079811f:    mov.s                ecx, esi                                      // 0x0079811f    8bce
                         shr                  ecx, 1                                        // 0x00798121    d1e9
                         mov.s                edi, edx                                      // 0x00798123    8bfa
                         mov                  eax, 0xf0c0f0c0                               // 0x00798125    b8c0f0c0f0
                         rep stosd                                                          // 0x0079812a    f3ab
                         adc.s                ecx, ecx                                      // 0x0079812c    13c9
                         add.s                edx, ebx                                      // 0x0079812e    03d3
                         dec                  ebp                                           // 0x00798130    4d
                         data16 rep stosd                                                   // 0x00798131    66f3ab
                         {disp8} jne          _jmp_addr_0x0079811f                          // 0x00798134    75e9
_jmp_addr_0x00798136:    {disp8} mov          ecx, dword ptr [esp + 0x50]                   // 0x00798136    8b4c2450
                         call                 _jmp_addr_0x00838eb0                          // 0x0079813a    e8710d0a00
                         {disp8} mov          eax, dword ptr [esp + 0x40]                   // 0x0079813f    8b442440
                         test                 eax, eax                                      // 0x00798143    85c0
                         {disp8} jne          _jmp_addr_0x00798176                          // 0x00798145    752f
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x00798147    8b44241c
                         {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x0079814b    8b542424
                         xor.s                edi, edi                                      // 0x0079814f    33ff
_jmp_addr_0x00798151:    cmp.s                esi, edi                                      // 0x00798151    3bf7
                         {disp8} jle          _jmp_addr_0x00798180                          // 0x00798153    7e2b
                         {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00798155    8b442418
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x00798159    8b542410
                         lea                  ebx, dword ptr [eax + eax * 0x1]              // 0x0079815d    8d1c00
                         mov.s                ebp, esi                                      // 0x00798160    8bee
_jmp_addr_0x00798162:    xor.s                eax, eax                                      // 0x00798162    33c0
                         mov.s                ecx, esi                                      // 0x00798164    8bce
                         shr                  ecx, 1                                        // 0x00798166    d1e9
                         mov.s                edi, edx                                      // 0x00798168    8bfa
                         rep stosd                                                          // 0x0079816a    f3ab
                         adc.s                ecx, ecx                                      // 0x0079816c    13c9
                         add.s                edx, ebx                                      // 0x0079816e    03d3
                         dec                  ebp                                           // 0x00798170    4d
                         data16 rep stosd                                                   // 0x00798171    66f3ab
                         {disp8} jne          _jmp_addr_0x00798162                          // 0x00798174    75ec
_jmp_addr_0x00798176:    {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x00798176    8b44241c
                         {disp8} mov          edx, dword ptr [esp + 0x24]                   // 0x0079817a    8b542424
                         xor.s                edi, edi                                      // 0x0079817e    33ff
_jmp_addr_0x00798180:    {disp8} mov          ebp, dword ptr [esp + 0x10]                   // 0x00798180    8b6c2410
                         {disp8} mov          ebx, dword ptr [esp + 0x20]                   // 0x00798184    8b5c2420
                         inc                  eax                                           // 0x00798188    40
                         lea                  ecx, dword ptr [esi + esi * 0x1]              // 0x00798189    8d0c36
                         add.s                ebp, ecx                                      // 0x0079818c    03e9
                         add                  ebx, 0x20                                     // 0x0079818e    83c320
                         cmp                  eax, 0x20                                     // 0x00798191    83f820
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x00798194    8944241c
                         {disp8} mov          dword ptr [esp + 0x10], ebp                   // 0x00798198    896c2410
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x0079819c    895c2420
                         {disp32} jl          _jmp_addr_0x00797f8a                          // 0x007981a0    0f8ce4fdffff
                         {disp8} mov          ecx, dword ptr [esp + 0x44]                   // 0x007981a6    8b4c2444
                         {disp8} mov          ebx, dword ptr [esp + 0x54]                   // 0x007981aa    8b5c2454
                         inc                  edx                                           // 0x007981ae    42
                         add.s                ecx, ebx                                      // 0x007981af    03cb
                         cmp                  edx, 0x20                                     // 0x007981b1    83fa20
                         {disp8} mov          dword ptr [esp + 0x24], edx                   // 0x007981b4    89542424
                         {disp8} mov          dword ptr [esp + 0x44], ecx                   // 0x007981b8    894c2444
                         {disp32} jl          _jmp_addr_0x00797f76                          // 0x007981bc    0f8cb4fdffff
                         {disp8} mov          edx, dword ptr [esp + 0x30]                   // 0x007981c2    8b542430
                         {disp8} mov          edi, dword ptr [esp + 0x34]                   // 0x007981c6    8b7c2434
                         {disp8} mov          ebx, dword ptr [esp + 0x28]                   // 0x007981ca    8b5c2428
                         {disp8} mov          ebp, dword ptr [esp + 0x2c]                   // 0x007981ce    8b6c242c
                         mov.s                ecx, edx                                      // 0x007981d2    8bca
                         sub.s                ecx, edi                                      // 0x007981d4    2bcf
                         mov.s                esi, ecx                                      // 0x007981d6    8bf1
                         imul                 esi, ecx                                      // 0x007981d8    0faff1
                         mov.s                eax, ebx                                      // 0x007981db    8bc3
                         sub.s                eax, ebp                                      // 0x007981dd    2bc5
                         mov.s                ecx, eax                                      // 0x007981df    8bc8
                         imul                 ecx, eax                                      // 0x007981e1    0fafc8
                         add.s                esi, ecx                                      // 0x007981e4    03f1
                         {disp8} mov          dword ptr [esp + 0x54], esi                   // 0x007981e6    89742454
                         {disp8} mov          esi, dword ptr [esp + 0x58]                   // 0x007981ea    8b742458
                         {disp8} lea          ecx, dword ptr [edx + edi * 0x1 + 0x01]       // 0x007981ee    8d4c3a01
                         {disp8} fild         dword ptr [esp + 0x54]                        // 0x007981f2    db442454
                         {disp8} lea          eax, dword ptr [ebx + ebp * 0x1 + 0x01]       // 0x007981f6    8d442b01
                         {disp8} mov          dword ptr [esi + 0x08], ecx                   // 0x007981fa    894e08
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x007981fd    8b4e10
                         fsqrt                                                              // 0x00798200    d9fa
                         {disp8} mov          dword ptr [esi + 0x04], eax                   // 0x00798202    894604
                         {disp32} fdivr       dword ptr [rdata_bytes + 0x826a8]             // 0x00798205    d83da8b69200
                         fstp                 dword ptr [esi]                               // 0x0079820b    d91e
                         call                 _jmp_addr_0x00838eb0                          // 0x0079820d    e89e0c0a00
                         {disp8} mov          ecx, dword ptr [esi + 0x10]                   // 0x00798212    8b4e10
                         {disp8} mov          eax, dword ptr [ecx + 0x10]                   // 0x00798215    8b4110
                         pop                  edi                                           // 0x00798218    5f
                         pop                  esi                                           // 0x00798219    5e
                         and                  eax, 0x3f                                     // 0x0079821a    83e03f
                         cmp                  eax, 0x08                                     // 0x0079821d    83f808
                         pop                  ebp                                           // 0x00798220    5d
                         pop                  ebx                                           // 0x00798221    5b
                         {disp8} je           _jmp_addr_0x00798229                          // 0x00798222    7405
                         cmp                  eax, 0x04                                     // 0x00798224    83f804
                         {disp8} jne          _jmp_addr_0x00798233                          // 0x00798227    750a
_jmp_addr_0x00798229:    {disp32} mov         dword ptr [ecx + 0x00000138], 0x00000001      // 0x00798229    c7813801000001000000
_jmp_addr_0x00798233:    add                  esp, 0x6c                                     // 0x00798233    83c46c
                         ret                                                                // 0x00798236    c3
                         nop                                                                // 0x00798237    90
                         nop                                                                // 0x00798238    90
                         nop                                                                // 0x00798239    90
                         nop                                                                // 0x0079823a    90
                         nop                                                                // 0x0079823b    90
                         nop                                                                // 0x0079823c    90
                         nop                                                                // 0x0079823d    90
                         nop                                                                // 0x0079823e    90
                         nop                                                                // 0x0079823f    90
_globl_ct_0x00798240:    {disp32} mov         cl, byte ptr [_DAT_00fac934]                  // 0x00798240    8a0d34c9fa00
                         mov                  al, 0x01                                      // 0x00798246    b001
                         test                 al, cl                                        // 0x00798248    84c8
                         {disp8} jne          _jmp_addr_0x00798254                          // 0x0079824a    7508
                         or.s                 cl, al                                        // 0x0079824c    0ac8
                         {disp32} mov         byte ptr [_DAT_00fac934], cl                  // 0x0079824e    880d34c9fa00
_jmp_addr_0x00798254:    {disp32} jmp         _jmp_addr_0x00798260                          // 0x00798254    e907000000
                         nop                                                                // 0x00798259    90
                         nop                                                                // 0x0079825a    90
                         nop                                                                // 0x0079825b    90
                         nop                                                                // 0x0079825c    90
                         nop                                                                // 0x0079825d    90
                         nop                                                                // 0x0079825e    90
                         nop                                                                // 0x0079825f    90
_jmp_addr_0x00798260:    push                 0x00407870                                    // 0x00798260    6870784000
                         call                 _atexit                                       // 0x00798265    e827d50200
                         pop                  ecx                                           // 0x0079826a    59
                         ret                                                                // 0x0079826b    c3
                         nop                                                                // 0x0079826c    90
                         nop                                                                // 0x0079826d    90
                         nop                                                                // 0x0079826e    90
                         nop                                                                // 0x0079826f    90
_globl_ct_0x00798270:    {disp32} jmp         _jmp_addr_0x00798280                          // 0x00798270    e90b000000
                         nop                                                                // 0x00798275    90
                         nop                                                                // 0x00798276    90
                         nop                                                                // 0x00798277    90
                         nop                                                                // 0x00798278    90
                         nop                                                                // 0x00798279    90
                         nop                                                                // 0x0079827a    90
                         nop                                                                // 0x0079827b    90
                         nop                                                                // 0x0079827c    90
                         nop                                                                // 0x0079827d    90
                         nop                                                                // 0x0079827e    90
                         nop                                                                // 0x0079827f    90
_jmp_addr_0x00798280:    {disp32} fld         dword ptr [rdata_bytes + 0xf5ea8]             // 0x00798280    d905a8ee9900
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5ea4]             // 0x00798286    d80da4ee9900
                         {disp32} fstp        dword ptr [data_bytes + 0x4700f4]             // 0x0079828c    d91df460e300
                         ret                                                                // 0x00798292    c3
                         nop                                                                // 0x00798293    90
                         nop                                                                // 0x00798294    90
                         nop                                                                // 0x00798295    90
                         nop                                                                // 0x00798296    90
                         nop                                                                // 0x00798297    90
                         nop                                                                // 0x00798298    90
                         nop                                                                // 0x00798299    90
                         nop                                                                // 0x0079829a    90
                         nop                                                                // 0x0079829b    90
                         nop                                                                // 0x0079829c    90
                         nop                                                                // 0x0079829d    90
                         nop                                                                // 0x0079829e    90
                         nop                                                                // 0x0079829f    90
_globl_ct_0x007982a0:    {disp32} jmp         _jmp_addr_0x007982b0                          // 0x007982a0    e90b000000
                         nop                                                                // 0x007982a5    90
                         nop                                                                // 0x007982a6    90
                         nop                                                                // 0x007982a7    90
                         nop                                                                // 0x007982a8    90
                         nop                                                                // 0x007982a9    90
                         nop                                                                // 0x007982aa    90
                         nop                                                                // 0x007982ab    90
                         nop                                                                // 0x007982ac    90
                         nop                                                                // 0x007982ad    90
                         nop                                                                // 0x007982ae    90
                         nop                                                                // 0x007982af    90
_jmp_addr_0x007982b0:    {disp32} mov         dword ptr [data_bytes + 0x4700f0], 0xffffffff // 0x007982b0    c705f060e300ffffffff
                         ret                                                                // 0x007982ba    c3
                         nop                                                                // 0x007982bb    90
                         nop                                                                // 0x007982bc    90
                         nop                                                                // 0x007982bd    90
                         nop                                                                // 0x007982be    90
                         nop                                                                // 0x007982bf    90
_globl_ct_0x007982c0:    {disp32} jmp         _jmp_addr_0x007982d0                          // 0x007982c0    e90b000000
                         nop                                                                // 0x007982c5    90
                         nop                                                                // 0x007982c6    90
                         nop                                                                // 0x007982c7    90
                         nop                                                                // 0x007982c8    90
                         nop                                                                // 0x007982c9    90
                         nop                                                                // 0x007982ca    90
                         nop                                                                // 0x007982cb    90
                         nop                                                                // 0x007982cc    90
                         nop                                                                // 0x007982cd    90
                         nop                                                                // 0x007982ce    90
                         nop                                                                // 0x007982cf    90
_jmp_addr_0x007982d0:    ret                                                                // 0x007982d0    c3
                         nop                                                                // 0x007982d1    90
                         nop                                                                // 0x007982d2    90
                         nop                                                                // 0x007982d3    90
                         nop                                                                // 0x007982d4    90
                         nop                                                                // 0x007982d5    90
                         nop                                                                // 0x007982d6    90
                         nop                                                                // 0x007982d7    90
                         nop                                                                // 0x007982d8    90
                         nop                                                                // 0x007982d9    90
                         nop                                                                // 0x007982da    90
                         nop                                                                // 0x007982db    90
                         nop                                                                // 0x007982dc    90
                         nop                                                                // 0x007982dd    90
                         nop                                                                // 0x007982de    90
                         nop                                                                // 0x007982df    90
_globl_ct_0x007982e0:    {disp32} jmp         _jmp_addr_0x007982f0                          // 0x007982e0    e90b000000
                         nop                                                                // 0x007982e5    90
                         nop                                                                // 0x007982e6    90
                         nop                                                                // 0x007982e7    90
                         nop                                                                // 0x007982e8    90
                         nop                                                                // 0x007982e9    90
                         nop                                                                // 0x007982ea    90
                         nop                                                                // 0x007982eb    90
                         nop                                                                // 0x007982ec    90
                         nop                                                                // 0x007982ed    90
                         nop                                                                // 0x007982ee    90
                         nop                                                                // 0x007982ef    90
_jmp_addr_0x007982f0:    ret                                                                // 0x007982f0    c3
                         nop                                                                // 0x007982f1    90
                         nop                                                                // 0x007982f2    90
                         nop                                                                // 0x007982f3    90
                         nop                                                                // 0x007982f4    90
                         nop                                                                // 0x007982f5    90
                         nop                                                                // 0x007982f6    90
                         nop                                                                // 0x007982f7    90
                         nop                                                                // 0x007982f8    90
                         nop                                                                // 0x007982f9    90
                         nop                                                                // 0x007982fa    90
                         nop                                                                // 0x007982fb    90
                         nop                                                                // 0x007982fc    90
                         nop                                                                // 0x007982fd    90
                         nop                                                                // 0x007982fe    90
                         nop                                                                // 0x007982ff    90
_globl_ct_0x00798300:    {disp32} jmp         _jmp_addr_0x00798310                          // 0x00798300    e90b000000
                         nop                                                                // 0x00798305    90
                         nop                                                                // 0x00798306    90
                         nop                                                                // 0x00798307    90
                         nop                                                                // 0x00798308    90
                         nop                                                                // 0x00798309    90
                         nop                                                                // 0x0079830a    90
                         nop                                                                // 0x0079830b    90
                         nop                                                                // 0x0079830c    90
                         nop                                                                // 0x0079830d    90
                         nop                                                                // 0x0079830e    90
                         nop                                                                // 0x0079830f    90
_jmp_addr_0x00798310:    ret                                                                // 0x00798310    c3
                         nop                                                                // 0x00798311    90
                         nop                                                                // 0x00798312    90
                         nop                                                                // 0x00798313    90
                         nop                                                                // 0x00798314    90
                         nop                                                                // 0x00798315    90
                         nop                                                                // 0x00798316    90
                         nop                                                                // 0x00798317    90
                         nop                                                                // 0x00798318    90
                         nop                                                                // 0x00798319    90
                         nop                                                                // 0x0079831a    90
                         nop                                                                // 0x0079831b    90
                         nop                                                                // 0x0079831c    90
                         nop                                                                // 0x0079831d    90
                         nop                                                                // 0x0079831e    90
                         nop                                                                // 0x0079831f    90
_globl_ct_0x00798320:    {disp32} jmp         _jmp_addr_0x00798330                          // 0x00798320    e90b000000
                         nop                                                                // 0x00798325    90
                         nop                                                                // 0x00798326    90
                         nop                                                                // 0x00798327    90
                         nop                                                                // 0x00798328    90
                         nop                                                                // 0x00798329    90
                         nop                                                                // 0x0079832a    90
                         nop                                                                // 0x0079832b    90
                         nop                                                                // 0x0079832c    90
                         nop                                                                // 0x0079832d    90
                         nop                                                                // 0x0079832e    90
                         nop                                                                // 0x0079832f    90
_jmp_addr_0x00798330:    {disp32} mov         dword ptr [data_bytes + 0x4700b8], 0x00000000 // 0x00798330    c705b860e30000000000
                         {disp32} mov         dword ptr [data_bytes + 0x4700bc], 0x3f800000 // 0x0079833a    c705bc60e3000000803f
                         {disp32} mov         dword ptr [data_bytes + 0x4700c0], 0x00000000 // 0x00798344    c705c060e30000000000
                         ret                                                                // 0x0079834e    c3
                         nop                                                                // 0x0079834f    90
_jmp_addr_0x00798350:    {disp32} mov         eax, dword ptr [ecx + 0x000000c0]             // 0x00798350    8b81c0000000
                         {disp8} mov          edx, dword ptr [eax + 0x14]                   // 0x00798356    8b5014
                         {disp8} mov          eax, dword ptr [edx + 0x04]                   // 0x00798359    8b4204
                         test                 eax, 0x00080000                               // 0x0079835c    a900000800
                         push                 ebx                                           // 0x00798361    53
                         push                 esi                                           // 0x00798362    56
                         push                 edi                                           // 0x00798363    57
                         {disp8} jne          _jmp_addr_0x0079836a                          // 0x00798364    7504
                         xor.s                esi, esi                                      // 0x00798366    33f6
                         {disp8} jmp          _jmp_addr_0x007983a9                          // 0x00798368    eb3f
_jmp_addr_0x0079836a:    mov.s                edi, eax                                      // 0x0079836a    8bf8
                         and                  edi, 0x00008000                               // 0x0079836c    81e700800000
                         {disp8} je           _jmp_addr_0x0079837c                          // 0x00798372    7408
                         {disp8} mov          esi, dword ptr [edx + 0x48]                   // 0x00798374    8b7248
                         {disp8} mov          ebx, dword ptr [esi + 0x08]                   // 0x00798377    8b5e08
                         {disp8} jmp          _jmp_addr_0x0079837e                          // 0x0079837a    eb02
_jmp_addr_0x0079837c:    xor.s                ebx, ebx                                      // 0x0079837c    33db
_jmp_addr_0x0079837e:    test                 eax, 0x00040000                               // 0x0079837e    a900000400
                         {disp8} je           _jmp_addr_0x007983a0                          // 0x00798383    741b
                         test                 edi, edi                                      // 0x00798385    85ff
                         {disp8} je           _jmp_addr_0x00798395                          // 0x00798387    740c
                         {disp8} mov          eax, dword ptr [edx + 0x48]                   // 0x00798389    8b4248
                         {disp8} mov          esi, dword ptr [eax + 0x08]                   // 0x0079838c    8b7008
                         add.s                eax, esi                                      // 0x0079838f    03c6
                         mov                  eax, dword ptr [eax]                          // 0x00798391    8b00
                         {disp8} jmp          _jmp_addr_0x007983a2                          // 0x00798393    eb0d
_jmp_addr_0x00798395:    {disp8} mov          eax, dword ptr [edx + 0x48]                   // 0x00798395    8b4248
                         xor.s                esi, esi                                      // 0x00798398    33f6
                         add.s                eax, esi                                      // 0x0079839a    03c6
                         mov                  eax, dword ptr [eax]                          // 0x0079839c    8b00
                         {disp8} jmp          _jmp_addr_0x007983a2                          // 0x0079839e    eb02
_jmp_addr_0x007983a0:    xor.s                eax, eax                                      // 0x007983a0    33c0
_jmp_addr_0x007983a2:    {disp8} mov          esi, dword ptr [edx + 0x48]                   // 0x007983a2    8b7248
                         add.s                esi, eax                                      // 0x007983a5    03f0
                         add.s                esi, ebx                                      // 0x007983a7    03f3
_jmp_addr_0x007983a9:    {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x007983a9    8b442414
                         test                 eax, eax                                      // 0x007983ad    85c0
                         {disp8} jle          _jmp_addr_0x00798421                          // 0x007983af    7e70
                         push                 ebp                                           // 0x007983b1    55
                         {disp8} mov          ebp, dword ptr [esp + 0x14]                   // 0x007983b2    8b6c2414
                         add                  ecx, 0x00000080                               // 0x007983b6    81c180000000
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x007983bc    894c2418
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x007983c0    89442414
_jmp_addr_0x007983c4:    test                 esi, esi                                      // 0x007983c4    85f6
                         mov                  dword ptr [ecx], 0xffffffff                   // 0x007983c6    c701ffffffff
                         {disp8} je           _jmp_addr_0x00798407                          // 0x007983cc    7439
                         {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x007983ce    8b4604
                         xor.s                edi, edi                                      // 0x007983d1    33ff
                         test                 eax, eax                                      // 0x007983d3    85c0
                         {disp8} jle          _jmp_addr_0x00798407                          // 0x007983d5    7e30
                         xor.s                ebx, ebx                                      // 0x007983d7    33db
_jmp_addr_0x007983d9:    {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x007983d9    8b4608
                         {disp8} mov          edx, dword ptr [ebp + 0x00]                   // 0x007983dc    8b5500
                         mov.s                ecx, ebx                                      // 0x007983df    8bcb
                         add.s                ecx, eax                                      // 0x007983e1    03c8
                         push                 ecx                                           // 0x007983e3    51
                         push                 edx                                           // 0x007983e4    52
                         call                 __strcmpi                                     // 0x007983e5    e8f6e80200
                         add                  esp, 0x08                                     // 0x007983ea    83c408
                         test                 eax, eax                                      // 0x007983ed    85c0
                         {disp8} je           _jmp_addr_0x00798401                          // 0x007983ef    7410
                         {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x007983f1    8b4604
                         inc                  edi                                           // 0x007983f4    47
                         add                  ebx, 0x000000e0                               // 0x007983f5    81c3e0000000
                         cmp.s                edi, eax                                      // 0x007983fb    3bf8
                         {disp8} jl           _jmp_addr_0x007983d9                          // 0x007983fd    7cda
                         {disp8} jmp          _jmp_addr_0x00798407                          // 0x007983ff    eb06
_jmp_addr_0x00798401:    {disp8} mov          eax, dword ptr [esp + 0x18]                   // 0x00798401    8b442418
                         mov                  dword ptr [eax], edi                          // 0x00798405    8938
_jmp_addr_0x00798407:    {disp8} mov          ecx, dword ptr [esp + 0x18]                   // 0x00798407    8b4c2418
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0079840b    8b442414
                         add                  ecx, 0x4                                      // 0x0079840f    83c104
                         add                  ebp, 0x04                                     // 0x00798412    83c504
                         dec                  eax                                           // 0x00798415    48
                         {disp8} mov          dword ptr [esp + 0x18], ecx                   // 0x00798416    894c2418
                         {disp8} mov          dword ptr [esp + 0x14], eax                   // 0x0079841a    89442414
                         {disp8} jne          _jmp_addr_0x007983c4                          // 0x0079841e    75a4
                         pop                  ebp                                           // 0x00798420    5d
_jmp_addr_0x00798421:    pop                  edi                                           // 0x00798421    5f
                         pop                  esi                                           // 0x00798422    5e
                         pop                  ebx                                           // 0x00798423    5b
                         ret                  0x0008                                        // 0x00798424    c20800
                         nop                                                                // 0x00798427    90
                         nop                                                                // 0x00798428    90
                         nop                                                                // 0x00798429    90
                         nop                                                                // 0x0079842a    90
                         nop                                                                // 0x0079842b    90
                         nop                                                                // 0x0079842c    90
                         nop                                                                // 0x0079842d    90
                         nop                                                                // 0x0079842e    90
                         nop                                                                // 0x0079842f    90
_jmp_addr_0x00798430:    sub                  esp, 0x00000090                               // 0x00798430    81ec90000000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x506d08]        // 0x00798436    a108cdec00
                         push                 ebx                                           // 0x0079843b    53
                         push                 ebp                                           // 0x0079843c    55
                         mov.s                ebp, ecx                                      // 0x0079843d    8be9
                         {disp32} mov         ecx, dword ptr [ebp + 0x000000c0]             // 0x0079843f    8b8dc0000000
                         push                 esi                                           // 0x00798445    56
                         {disp8} mov          esi, dword ptr [ecx + 0x14]                   // 0x00798446    8b7114
                         {disp8} mov          dword ptr [esp + 0x34], eax                   // 0x00798449    89442434
                         {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x0079844d    8b4604
                         test                 eax, 0x00080000                               // 0x00798450    a900000800
                         push                 edi                                           // 0x00798455    57
                         {disp8} jne          _jmp_addr_0x00798462                          // 0x00798456    750a
                         {disp8} mov          dword ptr [esp + 0x44], 0x00000000            // 0x00798458    c744244400000000
                         {disp8} jmp          _jmp_addr_0x00798496                          // 0x00798460    eb34
_jmp_addr_0x00798462:    test                 ah, -0x80                                     // 0x00798462    f6c480
                         {disp8} je           _jmp_addr_0x00798473                          // 0x00798465    740c
                         mov.s                ecx, esi                                      // 0x00798467    8bce
                         call                 ?GetSizeFootprintData@LH3DMesh@@QAEIXZ        // 0x00798469    e8c2b2c6ff
                         {disp8} mov          edi, dword ptr [eax + 0x08]                   // 0x0079846e    8b7808
                         {disp8} jmp          _jmp_addr_0x00798475                          // 0x00798471    eb02
_jmp_addr_0x00798473:    xor.s                edi, edi                                      // 0x00798473    33ff
_jmp_addr_0x00798475:    test                 dword ptr [esi + 0x04], 0x00040000            // 0x00798475    f7460400000400
                         {disp8} je           _jmp_addr_0x00798489                          // 0x0079847c    740b
                         mov.s                ecx, esi                                      // 0x0079847e    8bce
                         call                 ?GetSizeUV2Data@LH3DMesh@@QAEIXZ              // 0x00798480    e8bbb2c6ff
                         mov                  eax, dword ptr [eax]                          // 0x00798485    8b00
                         {disp8} jmp          _jmp_addr_0x0079848b                          // 0x00798487    eb02
_jmp_addr_0x00798489:    xor.s                eax, eax                                      // 0x00798489    33c0
_jmp_addr_0x0079848b:    {disp8} mov          ecx, dword ptr [esi + 0x48]                   // 0x0079848b    8b4e48
                         add.s                ecx, eax                                      // 0x0079848e    03c8
                         add.s                ecx, edi                                      // 0x00798490    03cf
                         {disp8} mov          dword ptr [esp + 0x44], ecx                   // 0x00798492    894c2444
_jmp_addr_0x00798496:    {disp32} mov         dword ptr [data_bytes + 0x504618], 0x00c387c8 // 0x00798496    c70518a6ec00c887c300
                         call                 dword ptr [__imp__GetTickCount@4]             // 0x007984a0    ff15c4918a00
                         and                  eax, 0x000003ff                               // 0x007984a6    25ff030000
                         {disp8} mov          dword ptr [esp + 0x54], eax                   // 0x007984ab    89442454
                         {disp8} mov          dword ptr [esp + 0x58], 0x00000000            // 0x007984af    c744245800000000
                         {disp8} fild         qword ptr [esp + 0x54]                        // 0x007984b7    df6c2454
                         {disp32} fmul        dword ptr [rdata_bytes + 0x91af8]             // 0x007984bb    d80df8aa9300
                         fsin                                                               // 0x007984c1    d9fe
                         {disp32} fmul        qword ptr [rdata_bytes + 0xf5eb8]             // 0x007984c3    dc0db8ee9900
                         {disp32} fadd        qword ptr [rdata_bytes + 0xf5eb0]             // 0x007984c9    dc05b0ee9900
                         call                 _jmp_addr_0x007a1400                          // 0x007984cf    e82c8f0000
                         {disp8} mov          dword ptr [esp + 0x54], eax                   // 0x007984d4    89442454
                         {disp32} mov         eax, dword ptr [esp + 0x000000a8]             // 0x007984d8    8b8424a8000000
                         test                 eax, eax                                      // 0x007984df    85c0
                         {disp32} je          _jmp_addr_0x00798853                          // 0x007984e1    0f846c030000
                         {disp32} mov         ecx, dword ptr [esp + 0x000000a4]             // 0x007984e7    8b8c24a4000000
                         cdq                                                                // 0x007984ee    99
                         and                  edx, 0x03                                     // 0x007984ef    83e203
                         add.s                eax, edx                                      // 0x007984f2    03c2
                         mov.s                ebx, eax                                      // 0x007984f4    8bd8
                         sar                  ebx, 2                                        // 0x007984f6    c1fb02
                         xor.s                eax, eax                                      // 0x007984f9    33c0
                         test                 ecx, ecx                                      // 0x007984fb    85c9
                         {disp8} mov          dword ptr [esp + 0x18], ebx                   // 0x007984fd    895c2418
                         {disp8} mov          dword ptr [esp + 0x48], eax                   // 0x00798501    89442448
                         {disp32} jle         _jmp_addr_0x00798853                          // 0x00798505    0f8e48030000
                         {disp32} mov         ecx, dword ptr [esp + 0x000000b4]             // 0x0079850b    8b8c24b4000000
                         {disp32} mov         edx, dword ptr [esp + 0x000000b0]             // 0x00798512    8b9424b0000000
                         add                  ecx, 0x4                                      // 0x00798519    83c104
                         add                  ebp, 0x00000080                               // 0x0079851c    81c580000000
                         {disp8} mov          dword ptr [esp + 0x3c], edx                   // 0x00798522    8954243c
                         {disp8} mov          dword ptr [esp + 0x40], ecx                   // 0x00798526    894c2440
                         {disp8} mov          dword ptr [esp + 0x4c], ebp                   // 0x0079852a    896c244c
_jmp_addr_0x0079852e:    {disp32} mov         esi, dword ptr [esp + 0x000000ac]             // 0x0079852e    8bb424ac000000
                         {disp8} mov          ecx, dword ptr [ebp + 0x00]                   // 0x00798535    8b4d00
                         cmp.s                esi, eax                                      // 0x00798538    3bf0
                         sete                 byte ptr [esp + 0x17]                         // 0x0079853a    0f94442417
                         test                 ecx, ecx                                      // 0x0079853f    85c9
                         {disp32} jl          _jmp_addr_0x0079881e                          // 0x00798541    0f8cd7020000
                         {disp8} mov          edx, dword ptr [esp + 0x44]                   // 0x00798547    8b542444
                         {disp32} lea         eax, dword ptr [ecx * 0x8 + 0x00000000]       // 0x0079854b    8d04cd00000000
                         sub.s                eax, ecx                                      // 0x00798552    2bc1
                         {disp8} mov          ecx, dword ptr [edx + 0x08]                   // 0x00798554    8b4a08
                         shl                  eax, 5                                        // 0x00798557    c1e005
                         add.s                eax, ecx                                      // 0x0079855a    03c1
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x0079855c    8b4c243c
                         mov                  ebp, dword ptr [ecx]                          // 0x00798560    8b29
                         {disp8} lea          esi, dword ptr [eax + 0x68]                   // 0x00798562    8d7068
                         mov                  ecx, 0x0000000c                               // 0x00798565    b90c000000
                         {disp8} lea          edi, dword ptr [esp + 0x5c]                   // 0x0079856a    8d7c245c
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x0079856e    f3a5
                         {disp32} fld         dword ptr [eax + 0x000000c8]                  // 0x00798570    d980c8000000
                         {disp32} fadd        dword ptr [eax + 0x000000d4]                  // 0x00798576    d880d4000000
                         {disp32} fld         dword ptr [eax + 0x000000cc]                  // 0x0079857c    d980cc000000
                         {disp32} fadd        dword ptr [eax + 0x000000d8]                  // 0x00798582    d880d8000000
                         {disp8} lea          ecx, dword ptr [esp + 0x5c]                   // 0x00798588    8d4c245c
                         {disp32} fstp        dword ptr [esp + 0x00000098]                  // 0x0079858c    d99c2498000000
                         {disp32} fld         dword ptr [eax + 0x000000d0]                  // 0x00798593    d980d0000000
                         {disp32} fadd        dword ptr [eax + 0x000000dc]                  // 0x00798599    d880dc000000
                         {disp32} fstp        dword ptr [esp + 0x0000009c]                  // 0x0079859f    d99c249c000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x007985a6    d80db4a38a00
                         {disp32} fld         dword ptr [esp + 0x00000098]                  // 0x007985ac    d9842498000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x007985b3    d80db4a38a00
                         {disp8} fstp         dword ptr [esp + 0x30]                        // 0x007985b9    d95c2430
                         {disp32} fld         dword ptr [esp + 0x0000009c]                  // 0x007985bd    d984249c000000
                         {disp8} mov          edx, dword ptr [esp + 0x30]                   // 0x007985c4    8b542430
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x007985c8    d80db4a38a00
                         {disp32} mov         dword ptr [esp + 0x00000090], edx             // 0x007985ce    89942490000000
                         {disp8} fstp         dword ptr [esp + 0x34]                        // 0x007985d5    d95c2434
                         {disp8} fst          dword ptr [esp + 0x10]                        // 0x007985d9    d9542410
                         {disp8} fld          dword ptr [esp + 0x74]                        // 0x007985dd    d9442474
                         {disp8} fmul         dword ptr [esp + 0x34]                        // 0x007985e1    d84c2434
                         {disp8} fld          dword ptr [esp + 0x5c]                        // 0x007985e5    d944245c
                         fmul                 st, st(2)                                     // 0x007985e9    d8ca
                         faddp                st(1), st                                     // 0x007985eb    dec1
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x007985ed    d9442430
                         {disp8} fmul         dword ptr [esp + 0x68]                        // 0x007985f1    d84c2468
                         faddp                st(1), st                                     // 0x007985f5    dec1
                         {disp32} fadd        dword ptr [esp + 0x00000080]                  // 0x007985f7    d8842480000000
                         {disp8} fstp         dword ptr [esp + 0x2c]                        // 0x007985fe    d95c242c
                         fstp                 st(0)                                         // 0x00798602    ddd8
                         {disp8} fld          dword ptr [esp + 0x60]                        // 0x00798604    d9442460
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x00798608    d84c2410
                         {disp8} fld          dword ptr [esp + 0x78]                        // 0x0079860c    d9442478
                         {disp8} fmul         dword ptr [esp + 0x34]                        // 0x00798610    d84c2434
                         faddp                st(1), st                                     // 0x00798614    dec1
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x00798616    d9442430
                         {disp8} fmul         dword ptr [esp + 0x6c]                        // 0x0079861a    d84c246c
                         faddp                st(1), st                                     // 0x0079861e    dec1
                         {disp32} fadd        dword ptr [esp + 0x00000084]                  // 0x00798620    d8842484000000
                         {disp8} fstp         dword ptr [esp + 0x30]                        // 0x00798627    d95c2430
                         {disp8} fld          dword ptr [esp + 0x64]                        // 0x0079862b    d9442464
                         {disp8} fmul         dword ptr [esp + 0x10]                        // 0x0079862f    d84c2410
                         {disp8} fld          dword ptr [esp + 0x7c]                        // 0x00798633    d944247c
                         {disp8} fmul         dword ptr [esp + 0x34]                        // 0x00798637    d84c2434
                         faddp                st(1), st                                     // 0x0079863b    dec1
                         {disp32} fld         dword ptr [esp + 0x00000090]                  // 0x0079863d    d9842490000000
                         {disp8} fmul         dword ptr [esp + 0x70]                        // 0x00798644    d84c2470
                         faddp                st(1), st                                     // 0x00798648    dec1
                         {disp32} fadd        dword ptr [esp + 0x00000088]                  // 0x0079864a    d8842488000000
                         {disp8} fstp         dword ptr [esp + 0x34]                        // 0x00798651    d95c2434
                         call                 _jmp_addr_0x007fb5c0                          // 0x00798655    e8662f0600
                         {disp8} fld          dword ptr [esp + 0x68]                        // 0x0079865a    d9442468
                         {disp8} mov          eax, dword ptr [esp + 0x2c]                   // 0x0079865e    8b44242c
                         {disp8} mov          ecx, dword ptr [esp + 0x30]                   // 0x00798662    8b4c2430
                         fchs                                                               // 0x00798666    d9e0
                         {disp8} fstp         dword ptr [esp + 0x68]                        // 0x00798668    d95c2468
                         {disp32} mov         dword ptr [esp + 0x00000080], eax             // 0x0079866c    89842480000000
                         {disp8} fld          dword ptr [esp + 0x6c]                        // 0x00798673    d944246c
                         fchs                                                               // 0x00798677    d9e0
                         {disp8} fstp         dword ptr [esp + 0x6c]                        // 0x00798679    d95c246c
                         {disp8} fld          dword ptr [esp + 0x70]                        // 0x0079867d    d9442470
                         fchs                                                               // 0x00798681    d9e0
                         {disp8} fstp         dword ptr [esp + 0x70]                        // 0x00798683    d95c2470
                         {disp8} mov          edx, dword ptr [esp + 0x34]                   // 0x00798687    8b542434
                         push                 ebp                                           // 0x0079868b    55
                         {disp32} mov         dword ptr [esp + 0x00000088], ecx             // 0x0079868c    898c2488000000
                         {disp32} mov         dword ptr [esp + 0x0000008c], edx             // 0x00798693    8994248c000000
                         call                 _wcslen                                       // 0x0079869a    e8c3dd0200
                         {disp32} fld         dword ptr [esp + 0x000000bc]                  // 0x0079869f    d98424bc000000
                         {disp32} fmul        dword ptr [rdata_bytes + 0x262e8]             // 0x007986a6    d80de8f28c00
                         {disp8} mov          ecx, dword ptr [esp + 0x3c]                   // 0x007986ac    8b4c243c
                         add                  esp, 0x04                                     // 0x007986b0    83c404
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x007986b3    d95c2410
                         {disp8} mov          edi, dword ptr [esp + 0x10]                   // 0x007986b7    8b7c2410
                         push                 edi                                           // 0x007986bb    57
                         push                 eax                                           // 0x007986bc    50
                         push                 ebp                                           // 0x007986bd    55
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x007986be    e86d8a0900
                         {disp32} fmul        dword ptr [esp + 0x000000bc]                  // 0x007986c3    d88c24bc000000
                         {disp32} mov         eax, dword ptr [data_bytes + 0x470120]        // 0x007986ca    a12061e300
                         test                 eax, eax                                      // 0x007986cf    85c0
                         {disp32} fmul        dword ptr [rdata_bytes + 0x1ba04]             // 0x007986d1    d80d044a8c00
                         mov                  esi, 0x00000001                               // 0x007986d7    be01000000
                         {disp8} je           _jmp_addr_0x007986e0                          // 0x007986dc    7402
                         xor.s                esi, esi                                      // 0x007986de    33f6
_jmp_addr_0x007986e0:    {disp32} fld         dword ptr [esp + 0x000000bc]                  // 0x007986e0    d98424bc000000
                         push                 0x0                                           // 0x007986e7    6a00
                         {disp32} fmul        dword ptr [rdata_bytes + 0x1ba04]             // 0x007986e9    d80d044a8c00
                         push                 0x1                                           // 0x007986ef    6a01
                         {disp8} lea          eax, dword ptr [esp + 0x2c]                   // 0x007986f1    8d44242c
                         push                 eax                                           // 0x007986f5    50
                         {disp32} fstp        dword ptr [esp + 0x00000098]                  // 0x007986f6    d99c2498000000
                         {disp8} mov          byte ptr [esp + 0x33], bl                     // 0x007986fd    885c2433
                         {disp8} fld          dword ptr [esp + 0x1c]                        // 0x00798701    d944241c
                         {disp32} mov         ebx, dword ptr [esp + 0x00000098]             // 0x00798705    8b9c2498000000
                         {disp32} fmul        dword ptr [rdata_bytes + 0x25fcc]             // 0x0079870c    d80dccef8c00
                         push                 ebx                                           // 0x00798712    53
                         push                 edi                                           // 0x00798713    57
                         push                 0xbecccccd                                    // 0x00798714    68cdccccbe
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x00798719    d95c2428
                         push                 ecx                                           // 0x0079871d    51
                         {disp8} mov          byte ptr [esp + 0x40], 0x00                   // 0x0079871e    c644244000
                         {disp32} fmul        dword ptr [rdata_bytes + 0x25fcc]             // 0x00798723    d80dccef8c00
                         {disp8} mov          byte ptr [esp + 0x41], 0x00                   // 0x00798729    c644244100
                         {disp8} mov          byte ptr [esp + 0x42], 0x00                   // 0x0079872e    c644244200
                         {disp8} fstp         dword ptr [esp + 0x6c]                        // 0x00798733    d95c246c
                         {disp32} fld         dword ptr [esp + 0x000000d4]                  // 0x00798737    d98424d4000000
                         {disp8} mov          ecx, dword ptr [esp + 0x6c]                   // 0x0079873e    8b4c246c
                         {disp32} fmul        dword ptr [rdata_bytes + 0xf5eac]             // 0x00798742    d80dacee9900
                         {disp8} fsubr        dword ptr [esp + 0x2c]                        // 0x00798748    d86c242c
                         fstp                 dword ptr [esp]                               // 0x0079874c    d91c24
                         push                 ecx                                           // 0x0079874f    51
                         push                 ebp                                           // 0x00798750    55
                         call                 _wcslen                                       // 0x00798751    e80cdd0200
                         {disp8} mov          ecx, dword ptr [esp + 0x5c]                   // 0x00798756    8b4c245c
                         add                  esp, 0x04                                     // 0x0079875a    83c404
                         push                 eax                                           // 0x0079875d    50
                         push                 ebp                                           // 0x0079875e    55
                         push                 0x2                                           // 0x0079875f    6a02
                         push                 esi                                           // 0x00798761    56
                         {disp32} lea         edx, dword ptr [esp + 0x0000008c]             // 0x00798762    8d94248c000000
                         push                 edx                                           // 0x00798769    52
                         call                 _jmp_addr_0x008321c0                          // 0x0079876a    e8519a0900
                         {disp8} mov          al, byte ptr [esp + 0x17]                     // 0x0079876f    8a442417
                         test                 al, al                                        // 0x00798773    84c0
                         {disp8} je           _jmp_addr_0x00798795                          // 0x00798775    741e
                         {disp8} mov          al, byte ptr [esp + 0x54]                     // 0x00798777    8a442454
                         {disp8} mov          byte ptr [esp + 0x20], al                     // 0x0079877b    88442420
                         {disp8} mov          byte ptr [esp + 0x21], al                     // 0x0079877f    88442421
                         {disp8} mov          byte ptr [esp + 0x22], al                     // 0x00798783    88442422
                         {disp8} mov          al, byte ptr [esp + 0x18]                     // 0x00798787    8a442418
                         {disp8} mov          byte ptr [esp + 0x23], al                     // 0x0079878b    88442423
                         {disp8} lea          eax, dword ptr [esp + 0x20]                   // 0x0079878f    8d442420
                         {disp8} jmp          _jmp_addr_0x007987e1                          // 0x00798793    eb4c
_jmp_addr_0x00798795:    {disp32} mov         eax, dword ptr [esp + 0x000000b4]             // 0x00798795    8b8424b4000000
                         test                 eax, eax                                      // 0x0079879c    85c0
                         {disp8} je           _jmp_addr_0x007987c6                          // 0x0079879e    7426
                         {disp8} mov          eax, dword ptr [esp + 0x40]                   // 0x007987a0    8b442440
                         {disp8} mov          cl, byte ptr [eax + 0x04]                     // 0x007987a4    8a4804
                         mov                  dl, byte ptr [eax]                            // 0x007987a7    8a10
                         {disp8} mov          al, byte ptr [eax + -0x04]                    // 0x007987a9    8a40fc
                         {disp8} mov          byte ptr [esp + 0x28], cl                     // 0x007987ac    884c2428
                         {disp8} mov          cl, byte ptr [esp + 0x18]                     // 0x007987b0    8a4c2418
                         {disp8} mov          byte ptr [esp + 0x2a], al                     // 0x007987b4    8844242a
                         {disp8} mov          byte ptr [esp + 0x29], dl                     // 0x007987b8    88542429
                         {disp8} mov          byte ptr [esp + 0x2b], cl                     // 0x007987bc    884c242b
                         {disp8} lea          eax, dword ptr [esp + 0x28]                   // 0x007987c0    8d442428
                         {disp8} jmp          _jmp_addr_0x007987e1                          // 0x007987c4    eb1b
_jmp_addr_0x007987c6:    {disp8} mov          dl, byte ptr [esp + 0x18]                     // 0x007987c6    8a542418
                         {disp8} mov          byte ptr [esp + 0x1c], 0x32                   // 0x007987ca    c644241c32
                         {disp8} mov          byte ptr [esp + 0x1d], -0x38                  // 0x007987cf    c644241dc8
                         {disp8} mov          byte ptr [esp + 0x1e], -0x38                  // 0x007987d4    c644241ec8
                         {disp8} mov          byte ptr [esp + 0x1f], dl                     // 0x007987d9    8854241f
                         {disp8} lea          eax, dword ptr [esp + 0x1c]                   // 0x007987dd    8d44241c
_jmp_addr_0x007987e1:    {disp8} mov          ecx, dword ptr [esp + 0x50]                   // 0x007987e1    8b4c2450
                         push                 0x0                                           // 0x007987e5    6a00
                         push                 0x1                                           // 0x007987e7    6a01
                         push                 eax                                           // 0x007987e9    50
                         {disp8} mov          eax, dword ptr [esp + 0x1c]                   // 0x007987ea    8b44241c
                         push                 ebx                                           // 0x007987ee    53
                         push                 edi                                           // 0x007987ef    57
                         push                 0xbf19999a                                    // 0x007987f0    689a9919bf
                         push                 eax                                           // 0x007987f5    50
                         push                 ecx                                           // 0x007987f6    51
                         push                 ebp                                           // 0x007987f7    55
                         call                 _wcslen                                       // 0x007987f8    e865dc0200
                         {disp8} mov          ecx, dword ptr [esp + 0x5c]                   // 0x007987fd    8b4c245c
                         add                  esp, 0x04                                     // 0x00798801    83c404
                         push                 eax                                           // 0x00798804    50
                         push                 ebp                                           // 0x00798805    55
                         push                 0x2                                           // 0x00798806    6a02
                         push                 esi                                           // 0x00798808    56
                         {disp32} lea         edx, dword ptr [esp + 0x0000008c]             // 0x00798809    8d94248c000000
                         push                 edx                                           // 0x00798810    52
                         call                 _jmp_addr_0x008321c0                          // 0x00798811    e8aa990900
                         {disp8} mov          eax, dword ptr [esp + 0x48]                   // 0x00798816    8b442448
                         {disp8} mov          ebx, dword ptr [esp + 0x18]                   // 0x0079881a    8b5c2418
_jmp_addr_0x0079881e:    {disp8} mov          ebp, dword ptr [esp + 0x4c]                   // 0x0079881e    8b6c244c
                         {disp8} mov          esi, dword ptr [esp + 0x3c]                   // 0x00798822    8b74243c
                         {disp8} mov          edx, dword ptr [esp + 0x40]                   // 0x00798826    8b542440
                         {disp32} mov         ecx, dword ptr [esp + 0x000000a4]             // 0x0079882a    8b8c24a4000000
                         inc                  eax                                           // 0x00798831    40
                         add                  ebp, 0x04                                     // 0x00798832    83c504
                         add                  esi, 0x04                                     // 0x00798835    83c604
                         add                  edx, 0x0c                                     // 0x00798838    83c20c
                         cmp.s                eax, ecx                                      // 0x0079883b    3bc1
                         {disp8} mov          dword ptr [esp + 0x48], eax                   // 0x0079883d    89442448
                         {disp8} mov          dword ptr [esp + 0x4c], ebp                   // 0x00798841    896c244c
                         {disp8} mov          dword ptr [esp + 0x3c], esi                   // 0x00798845    8974243c
                         {disp8} mov          dword ptr [esp + 0x40], edx                   // 0x00798849    89542440
                         {disp32} jl          _jmp_addr_0x0079852e                          // 0x0079884d    0f8cdbfcffff
_jmp_addr_0x00798853:    pop                  edi                                           // 0x00798853    5f
                         pop                  esi                                           // 0x00798854    5e
                         pop                  ebp                                           // 0x00798855    5d
                         {disp32} mov         dword ptr [data_bytes + 0x504618], 0x00c38728 // 0x00798856    c70518a6ec002887c300
                         pop                  ebx                                           // 0x00798860    5b
                         add                  esp, 0x00000090                               // 0x00798861    81c490000000
                         ret                  0x001c                                        // 0x00798867    c21c00
                         nop                                                                // 0x0079886a    90
                         nop                                                                // 0x0079886b    90
                         nop                                                                // 0x0079886c    90
                         nop                                                                // 0x0079886d    90
                         nop                                                                // 0x0079886e    90
                         nop                                                                // 0x0079886f    90
@__ct__10TempleRoomFPCc@12:    sub                  esp, 0x0c                                     // 0x00798870    83ec0c
                         push                 ebx                                           // 0x00798873    53
                         push                 ebp                                           // 0x00798874    55
                         push                 esi                                           // 0x00798875    56
                         mov.s                ebx, ecx                                      // 0x00798876    8bd9
                         push                 edi                                           // 0x00798878    57
                         mov                  dword ptr [ebx], 0x0099eec4                   // 0x00798879    c703c4ee9900
                         call                 _jmp_addr_0x0079a720                          // 0x0079887f    e89c1e0000
                         push                 0x76                                          // 0x00798884    6a76
                         push                 0x00c2a1c8                                    // 0x00798886    68c8a1c200
                         push                 0x2c                                          // 0x0079888b    6a2c
                         call                 ___nw__FUl                                    // 0x0079888d    e8fe2e0400
                         xor.s                ebp, ebp                                      // 0x00798892    33ed
                         add                  esp, 0x0c                                     // 0x00798894    83c40c
                         cmp.s                eax, ebp                                      // 0x00798897    3bc5
                         {disp8} je           _jmp_addr_0x007988a4                          // 0x00798899    7409
                         mov.s                ecx, eax                                      // 0x0079889b    8bc8
                         call                 ??0InnerRoom@@QAE@XZ                          // 0x0079889d    e88ec7ffff
                         {disp8} jmp          _jmp_addr_0x007988a6                          // 0x007988a2    eb02
_jmp_addr_0x007988a4:    xor.s                eax, eax                                      // 0x007988a4    33c0
_jmp_addr_0x007988a6:    push                 0x77                                          // 0x007988a6    6a77
                         push                 0x00c2a1c8                                    // 0x007988a8    68c8a1c200
                         push                 0x0000046c                                    // 0x007988ad    686c040000
                         {disp32} mov         dword ptr [ebx + 0x000000c0], eax             // 0x007988b2    8983c0000000
                         call                 ___nw__FUl                                    // 0x007988b8    e8d32e0400
                         add                  esp, 0x0c                                     // 0x007988bd    83c40c
                         cmp.s                eax, ebp                                      // 0x007988c0    3bc5
                         {disp8} je           _jmp_addr_0x007988cd                          // 0x007988c2    7409
                         mov.s                ecx, eax                                      // 0x007988c4    8bc8
                         call                 ??0InnerCamera@@QAE@XZ                        // 0x007988c6    e825ecffff
                         {disp8} jmp          _jmp_addr_0x007988cf                          // 0x007988cb    eb02
_jmp_addr_0x007988cd:    xor.s                eax, eax                                      // 0x007988cd    33c0
_jmp_addr_0x007988cf:    {disp8} mov          edi, dword ptr [esp + 0x20]                   // 0x007988cf    8b7c2420
                         {disp32} mov         dword ptr [ebx + 0x000000c4], eax             // 0x007988d3    8983c4000000
                         or                   edx, 0xffffffff                               // 0x007988d9    83caff
                         xor.s                eax, eax                                      // 0x007988dc    33c0
                         mov.s                ecx, edx                                      // 0x007988de    8bca
                         repne scasb                                                        // 0x007988e0    f2ae
                         not                  ecx                                           // 0x007988e2    f7d1
                         sub.s                edi, ecx                                      // 0x007988e4    2bf9
                         mov.s                eax, ecx                                      // 0x007988e6    8bc1
                         {disp8} lea          esi, dword ptr [ebx + 0x04]                   // 0x007988e8    8d7304
                         {disp8} mov          dword ptr [esp + 0x20], esi                   // 0x007988eb    89742420
                         shr                  ecx, 2                                        // 0x007988ef    c1e902
                         mov.s                esi, edi                                      // 0x007988f2    8bf7
                         {disp8} mov          edi, dword ptr [esp + 0x20]                   // 0x007988f4    8b7c2420
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x007988f8    f3a5
                         mov.s                ecx, eax                                      // 0x007988fa    8bc8
                         and                  ecx, 0x03                                     // 0x007988fc    83e103
                         rep movsb                                                          // 0x007988ff    f3a4
                         {disp8} mov          dword ptr [ebx + 0x34], edx                   // 0x00798901    895334
                         {disp32} mov         dword ptr [ebx + 0x000000c8], edx             // 0x00798904    8993c8000000
                         {disp32} lea         ecx, dword ptr [ebx + 0x000000d0]             // 0x0079890a    8d8bd0000000
                         {disp8} mov          dword ptr [esp + 0x10], 0x00000000            // 0x00798910    c744241000000000
                         {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x00798918    8b542410
                         mov                  dword ptr [ecx], edx                          // 0x0079891c    8911
                         {disp8} mov          dword ptr [esp + 0x14], 0x00000000            // 0x0079891e    c744241400000000
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x00798926    8b442414
                         {disp8} mov          dword ptr [ecx + 0x04], eax                   // 0x0079892a    894104
                         {disp32} mov         eax, dword ptr [ebx + 0x000000c4]             // 0x0079892d    8b83c4000000
                         {disp8} mov          dword ptr [esp + 0x18], 0x00000000            // 0x00798933    c744241800000000
                         {disp8} mov          edx, dword ptr [esp + 0x18]                   // 0x0079893b    8b542418
                         pop                  edi                                           // 0x0079893f    5f
                         {disp8} mov          dword ptr [ebx + 0x24], ebp                   // 0x00798940    896b24
                         {disp8} mov          dword ptr [ebx + 0x2c], ebp                   // 0x00798943    896b2c
                         {disp8} mov          dword ptr [ebx + 0x30], ebp                   // 0x00798946    896b30
                         {disp32} mov         dword ptr [ebx + 0x000000e0], ebp             // 0x00798949    89abe0000000
                         {disp32} mov         dword ptr [ebx + 0x000000dc], ebp             // 0x0079894f    89abdc000000
                         {disp8} mov          dword ptr [ebx + 0x28], ebp                   // 0x00798955    896b28
                         {disp8} mov          dword ptr [ebx + 0x38], 0x00000001            // 0x00798958    c7433801000000
                         {disp8} mov          dword ptr [ecx + 0x08], edx                   // 0x0079895f    895108
                         {disp32} mov         dword ptr [eax + 0x00000124], 0x00000002      // 0x00798962    c7802401000002000000
                         pop                  esi                                           // 0x0079896c    5e
                         {disp8} mov          dword ptr [ebx + 0x7c], ebp                   // 0x0079896d    896b7c
                         pop                  ebp                                           // 0x00798970    5d
                         {disp32} mov         dword ptr [ebx + 0x000000e4], 0x42700000      // 0x00798971    c783e400000000007042
                         {disp32} mov         dword ptr [ebx + 0x000000e8], 0x43480000      // 0x0079897b    c783e800000000004843
                         mov.s                eax, ebx                                      // 0x00798985    8bc3
                         pop                  ebx                                           // 0x00798987    5b
                         add                  esp, 0x0c                                     // 0x00798988    83c40c
                         ret                  0x0004                                        // 0x0079898b    c20400
                         nop                                                                // 0x0079898e    90
                         nop                                                                // 0x0079898f    90
                         ret                                                                // 0x00798990    c3
                         nop                                                                // 0x00798991    90
                         nop                                                                // 0x00798992    90
                         nop                                                                // 0x00798993    90
                         nop                                                                // 0x00798994    90
                         nop                                                                // 0x00798995    90
                         nop                                                                // 0x00798996    90
                         nop                                                                // 0x00798997    90
                         nop                                                                // 0x00798998    90
                         nop                                                                // 0x00798999    90
                         nop                                                                // 0x0079899a    90
                         nop                                                                // 0x0079899b    90
                         nop                                                                // 0x0079899c    90
                         nop                                                                // 0x0079899d    90
                         nop                                                                // 0x0079899e    90
                         nop                                                                // 0x0079899f    90
_jmp_addr_0x007989a0:    push                 esi                                           // 0x007989a0    56
                         mov.s                esi, ecx                                      // 0x007989a1    8bf1
                         push                 edi                                           // 0x007989a3    57
                         {disp32} mov         edi, dword ptr [esi + 0x000000c0]             // 0x007989a4    8bbec0000000
                         test                 edi, edi                                      // 0x007989aa    85ff
                         mov                  dword ptr [esi], 0x0099eec4                   // 0x007989ac    c706c4ee9900
                         {disp8} je           _jmp_addr_0x007989c4                          // 0x007989b2    7410
                         mov.s                ecx, edi                                      // 0x007989b4    8bcf
                         call                 _jmp_addr_0x00795090                          // 0x007989b6    e8d5c6ffff
                         push                 edi                                           // 0x007989bb    57
                         call                 ??3@YAXPAX@Z                                  // 0x007989bc    e8d7640100
                         add                  esp, 0x04                                     // 0x007989c1    83c404
_jmp_addr_0x007989c4:    {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x007989c4    8b8ec4000000
                         test                 ecx, ecx                                      // 0x007989ca    85c9
                         {disp8} je           _jmp_addr_0x007989d5                          // 0x007989cc    7407
                         mov                  eax, dword ptr [ecx]                          // 0x007989ce    8b01
                         push                 0x1                                           // 0x007989d0    6a01
                         call                 dword ptr [eax + 0x2c]                        // 0x007989d2    ff502c
_jmp_addr_0x007989d5:    mov.s                ecx, esi                                      // 0x007989d5    8bce
                         call                 _jmp_addr_0x007990c0                          // 0x007989d7    e8e4060000
                         pop                  edi                                           // 0x007989dc    5f
                         pop                  esi                                           // 0x007989dd    5e
                         ret                                                                // 0x007989de    c3
                         nop                                                                // 0x007989df    90
_jmp_addr_0x007989e0:    sub                  esp, 0x00000118                               // 0x007989e0    81ec18010000
                         push                 esi                                           // 0x007989e6    56
                         mov.s                esi, ecx                                      // 0x007989e7    8bf1
                         {disp8} lea          ecx, dword ptr [esp + 0x10]                   // 0x007989e9    8d4c2410
                         call                 ??0LHOSFile@@QAE@XZ                           // 0x007989ed    e85e3c0200
                         {disp32} mov         eax, dword ptr [esi + 0x000000e0]             // 0x007989f2    8b86e0000000
                         test                 eax, eax                                      // 0x007989f8    85c0
                         {disp8} mov          dword ptr [esp + 0x10], 0x008c4d00            // 0x007989fa    c7442410004d8c00
                         {disp32} jne         _jmp_addr_0x00798acf                          // 0x00798a02    0f85c7000000
                         {disp32} mov         eax, dword ptr [esp + 0x00000124]             // 0x00798a08    8b842424010000
                         {disp32} mov         ecx, dword ptr [esp + 0x00000120]             // 0x00798a0f    8b8c2420010000
                         push                 eax                                           // 0x00798a16    50
                         push                 ecx                                           // 0x00798a17    51
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x00798a18    8b8ec0000000
                         {disp8} lea          edx, dword ptr [esp + 0x0c]                   // 0x00798a1e    8d54240c
                         push                 edx                                           // 0x00798a22    52
                         {disp32} mov         dword ptr [esi + 0x000000e0], 0x00000001      // 0x00798a23    c786e000000001000000
                         {disp8} mov          dword ptr [esp + 0x10], 0x00000000            // 0x00798a2d    c744241000000000
                         {disp8} mov          dword ptr [esp + 0x14], 0x00000000            // 0x00798a35    c744241400000000
                         {disp8} mov          dword ptr [esp + 0x18], 0x00000000            // 0x00798a3d    c744241800000000
                         call                 _jmp_addr_0x00795210                          // 0x00798a45    e8c6c7ffff
                         {disp32} mov         eax, dword ptr [esp + 0x00000128]             // 0x00798a4a    8b842428010000
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x00798a51    8b8ec0000000
                         push                 eax                                           // 0x00798a57    50
                         call                 _jmp_addr_0x007950b0                          // 0x00798a58    e853c6ffff
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x00798a5d    8b8ec4000000
                         {disp32} mov         eax, dword ptr [esp + 0x0000012c]             // 0x00798a63    8b84242c010000
                         mov                  edx, dword ptr [ecx]                          // 0x00798a6a    8b11
                         push                 eax                                           // 0x00798a6c    50
                         call                 dword ptr [edx + 8]                           // 0x00798a6d    ff5208
                         {disp32} mov         eax, dword ptr [data_bytes + 0x470124]        // 0x00798a70    a12461e300
                         test                 eax, eax                                      // 0x00798a75    85c0
                         {disp8} jne          _jmp_addr_0x00798ab1                          // 0x00798a77    7538
                         push                 0x2                                           // 0x00798a79    6a02
                         push                 0x00c25048                                    // 0x00798a7b    684850c200
                         {disp8} lea          ecx, dword ptr [esp + 0x18]                   // 0x00798a80    8d4c2418
                         call                 @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16 // 0x00798a84    e8573d0200
                         push                 0x0                                           // 0x00798a89    6a00
                         push                 0x00030000                                    // 0x00798a8b    6800000300
                         push                 0x00e060b8                                    // 0x00798a90    68b860e000
                         {disp8} lea          ecx, dword ptr [esp + 0x1c]                   // 0x00798a95    8d4c241c
                         call                 @Read__8LHOSFileFPvUlPUl@20                   // 0x00798a99    e8423e0200
                         {disp8} lea          ecx, dword ptr [esp + 0x10]                   // 0x00798a9e    8d4c2410
                         call                 ?Close@LHOSFile@@QAEIXZ                       // 0x00798aa2    e8b93d0200
                         {disp32} mov         dword ptr [data_bytes + 0x470124], 0x00000001 // 0x00798aa7    c7052461e30001000000
_jmp_addr_0x00798ab1:    {disp32} mov         dword ptr [data_bytes + 0x47010c], 0x00000000 // 0x00798ab1    c7050c61e30000000000
                         {disp32} mov         dword ptr [data_bytes + 0x470110], 0x00000000 // 0x00798abb    c7051061e30000000000
                         {disp32} mov         dword ptr [data_bytes + 0x470114], 0x00000000 // 0x00798ac5    c7051461e30000000000
_jmp_addr_0x00798acf:    {disp8} lea          ecx, dword ptr [esp + 0x10]                   // 0x00798acf    8d4c2410
                         call                 ??_DLHOSFile@@QAEXXZ                          // 0x00798ad3    e8a83b0200
                         pop                  esi                                           // 0x00798ad8    5e
                         add                  esp, 0x00000118                               // 0x00798ad9    81c418010000
                         ret                  0x0010                                        // 0x00798adf    c21000
                         nop                                                                // 0x00798ae2    90
                         nop                                                                // 0x00798ae3    90
                         nop                                                                // 0x00798ae4    90
                         nop                                                                // 0x00798ae5    90
                         nop                                                                // 0x00798ae6    90
                         nop                                                                // 0x00798ae7    90
                         nop                                                                // 0x00798ae8    90
                         nop                                                                // 0x00798ae9    90
                         nop                                                                // 0x00798aea    90
                         nop                                                                // 0x00798aeb    90
                         nop                                                                // 0x00798aec    90
                         nop                                                                // 0x00798aed    90
                         nop                                                                // 0x00798aee    90
                         nop                                                                // 0x00798aef    90
_jmp_addr_0x00798af0:    push                 esi                                           // 0x00798af0    56
                         mov.s                esi, ecx                                      // 0x00798af1    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x000000e0]             // 0x00798af3    8b86e0000000
                         test                 eax, eax                                      // 0x00798af9    85c0
                         {disp8} je           _jmp_addr_0x00798b28                          // 0x00798afb    742b
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x00798afd    8b8ec0000000
                         {disp32} mov         dword ptr [esi + 0x000000e0], 0x00000000      // 0x00798b03    c786e000000000000000
                         call                 _jmp_addr_0x00795140                          // 0x00798b0d    e82ec6ffff
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x00798b12    8b8ec0000000
                         call                 _jmp_addr_0x007952c0                          // 0x00798b18    e8a3c7ffff
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x00798b1d    8b8ec4000000
                         mov                  eax, dword ptr [ecx]                          // 0x00798b23    8b01
                         call                 dword ptr [eax + 0x10]                        // 0x00798b25    ff5010
_jmp_addr_0x00798b28:    pop                  esi                                           // 0x00798b28    5e
                         ret                                                                // 0x00798b29    c3
                         nop                                                                // 0x00798b2a    90
                         nop                                                                // 0x00798b2b    90
                         nop                                                                // 0x00798b2c    90
                         nop                                                                // 0x00798b2d    90
                         nop                                                                // 0x00798b2e    90
                         nop                                                                // 0x00798b2f    90
_jmp_addr_0x00798b30:    sub                  esp, 0x48                                     // 0x00798b30    83ec48
                         {disp8} mov          eax, dword ptr [esp + 0x4c]                   // 0x00798b33    8b44244c
                         push                 ebx                                           // 0x00798b37    53
                         push                 ebp                                           // 0x00798b38    55
                         push                 esi                                           // 0x00798b39    56
                         push                 edi                                           // 0x00798b3a    57
                         push                 0x0                                           // 0x00798b3b    6a00
                         push                 eax                                           // 0x00798b3d    50
                         mov.s                ebx, ecx                                      // 0x00798b3e    8bd9
                         call                 ?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z        // 0x00798b40    e8abdc0600
                         mov.s                edi, eax                                      // 0x00798b45    8bf8
                         {disp8} mov          eax, dword ptr [edi + 0x04]                   // 0x00798b47    8b4704
                         add                  esp, 0x08                                     // 0x00798b4a    83c408
                         test                 eax, 0x00080000                               // 0x00798b4d    a900000800
                         {disp8} mov          dword ptr [esp + 0x10], edi                   // 0x00798b52    897c2410
                         {disp8} jne          _jmp_addr_0x00798b60                          // 0x00798b56    7508
                         xor.s                ebp, ebp                                      // 0x00798b58    33ed
                         {disp8} mov          dword ptr [esp + 0x5c], ebp                   // 0x00798b5a    896c245c
                         {disp8} jmp          _jmp_addr_0x00798ba5                          // 0x00798b5e    eb45
_jmp_addr_0x00798b60:    mov.s                edx, eax                                      // 0x00798b60    8bd0
                         and                  edx, 0x00008000                               // 0x00798b62    81e200800000
                         {disp8} je           _jmp_addr_0x00798b72                          // 0x00798b68    7408
                         {disp8} mov          ecx, dword ptr [edi + 0x48]                   // 0x00798b6a    8b4f48
                         {disp8} mov          esi, dword ptr [ecx + 0x08]                   // 0x00798b6d    8b7108
                         {disp8} jmp          _jmp_addr_0x00798b74                          // 0x00798b70    eb02
_jmp_addr_0x00798b72:    xor.s                esi, esi                                      // 0x00798b72    33f6
_jmp_addr_0x00798b74:    test                 eax, 0x00040000                               // 0x00798b74    a900000400
                         {disp8} je           _jmp_addr_0x00798b96                          // 0x00798b79    741b
                         test                 edx, edx                                      // 0x00798b7b    85d2
                         {disp8} je           _jmp_addr_0x00798b8b                          // 0x00798b7d    740c
                         {disp8} mov          eax, dword ptr [edi + 0x48]                   // 0x00798b7f    8b4748
                         {disp8} mov          ecx, dword ptr [eax + 0x08]                   // 0x00798b82    8b4808
                         add.s                eax, ecx                                      // 0x00798b85    03c1
                         mov                  ecx, dword ptr [eax]                          // 0x00798b87    8b08
                         {disp8} jmp          _jmp_addr_0x00798b98                          // 0x00798b89    eb0d
_jmp_addr_0x00798b8b:    {disp8} mov          eax, dword ptr [edi + 0x48]                   // 0x00798b8b    8b4748
                         xor.s                ecx, ecx                                      // 0x00798b8e    33c9
                         add.s                eax, ecx                                      // 0x00798b90    03c1
                         mov                  ecx, dword ptr [eax]                          // 0x00798b92    8b08
                         {disp8} jmp          _jmp_addr_0x00798b98                          // 0x00798b94    eb02
_jmp_addr_0x00798b96:    xor.s                ecx, ecx                                      // 0x00798b96    33c9
_jmp_addr_0x00798b98:    {disp8} mov          eax, dword ptr [edi + 0x48]                   // 0x00798b98    8b4748
                         add.s                eax, ecx                                      // 0x00798b9b    03c1
                         add.s                eax, esi                                      // 0x00798b9d    03c6
                         {disp8} mov          dword ptr [esp + 0x5c], eax                   // 0x00798b9f    8944245c
                         mov.s                ebp, eax                                      // 0x00798ba3    8be8
_jmp_addr_0x00798ba5:    {disp8} mov          esi, dword ptr [esp + 0x60]                   // 0x00798ba5    8b742460
                         push                 0x000000de                                    // 0x00798ba9    68de000000
                         {disp32} lea         ecx, dword ptr [esi * 0x4 + 0x00000000]       // 0x00798bae    8d0cb500000000
                         push                 0x00c2a1c8                                    // 0x00798bb5    68c8a1c200
                         push                 ecx                                           // 0x00798bba    51
                         call                 ___nw__FUl                                    // 0x00798bbb    e8d02b0400
                         add                  esp, 0x0c                                     // 0x00798bc0    83c40c
                         test                 esi, esi                                      // 0x00798bc3    85f6
                         {disp8} mov          dword ptr [ebx + 0x24], eax                   // 0x00798bc5    894324
                         {disp32} jbe         _jmp_addr_0x00799033                          // 0x00798bc8    0f8665040000
                         {disp8} mov          edx, dword ptr [esp + 0x60]                   // 0x00798bce    8b542460
                         {disp8} mov          edi, dword ptr [esp + 0x6c]                   // 0x00798bd2    8b7c246c
                         xor.s                esi, esi                                      // 0x00798bd6    33f6
                         {disp8} mov          dword ptr [esp + 0x14], edx                   // 0x00798bd8    89542414
_jmp_addr_0x00798bdc:    push                 0x00c2a290                                    // 0x00798bdc    6890a2c200
                         push                 edi                                           // 0x00798be1    57
                         call                 _strstr                                       // 0x00798be2    e879090300
                         add                  esp, 0x08                                     // 0x00798be7    83c408
                         test                 eax, eax                                      // 0x00798bea    85c0
                         {disp32} jne         _jmp_addr_0x00798fd2                          // 0x00798bec    0f85e0030000
                         push                 0x00c2a284                                    // 0x00798bf2    6884a2c200
                         push                 edi                                           // 0x00798bf7    57
                         call                 _strstr                                       // 0x00798bf8    e863090300
                         add                  esp, 0x08                                     // 0x00798bfd    83c408
                         test                 eax, eax                                      // 0x00798c00    85c0
                         {disp32} jne         _jmp_addr_0x00798fd2                          // 0x00798c02    0f85ca030000
                         push                 0x00c2a278                                    // 0x00798c08    6878a2c200
                         push                 edi                                           // 0x00798c0d    57
                         call                 _strstr                                       // 0x00798c0e    e84d090300
                         add                  esp, 0x08                                     // 0x00798c13    83c408
                         test                 eax, eax                                      // 0x00798c16    85c0
                         {disp32} jne         _jmp_addr_0x00798fd2                          // 0x00798c18    0f85b4030000
                         push                 0x00c2a26c                                    // 0x00798c1e    686ca2c200
                         push                 edi                                           // 0x00798c23    57
                         call                 _strstr                                       // 0x00798c24    e837090300
                         add                  esp, 0x08                                     // 0x00798c29    83c408
                         test                 eax, eax                                      // 0x00798c2c    85c0
                         {disp32} je          _jmp_addr_0x00798d06                          // 0x00798c2e    0f84d2000000
                         push                 edi                                           // 0x00798c34    57
                         push                 ebp                                           // 0x00798c35    55
                         mov.s                ecx, ebx                                      // 0x00798c36    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798c38    e8d3040000
                         push                 0x00c2a260                                    // 0x00798c3d    6860a2c200
                         push                 edi                                           // 0x00798c42    57
                         {disp8} mov          dword ptr [esp + 0x74], eax                   // 0x00798c43    89442474
                         call                 _strstr                                       // 0x00798c47    e814090300
                         add                  esp, 0x08                                     // 0x00798c4c    83c408
                         test                 eax, eax                                      // 0x00798c4f    85c0
                         {disp8} je           _jmp_addr_0x00798c9c                          // 0x00798c51    7449
                         push                 0x000000f4                                    // 0x00798c53    68f4000000
                         push                 0x00c2a1c8                                    // 0x00798c58    68c8a1c200
                         push                 0x1c                                          // 0x00798c5d    6a1c
                         call                 ___nw__FUl                                    // 0x00798c5f    e82c2b0400
                         add                  esp, 0x0c                                     // 0x00798c64    83c40c
                         test                 eax, eax                                      // 0x00798c67    85c0
                         {disp32} je          _jmp_addr_0x00798cf3                          // 0x00798c69    0f8484000000
                         {disp8} mov          ecx, dword ptr [esp + 0x6c]                   // 0x00798c6f    8b4c246c
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798c73    8b542468
                         push                 ecx                                           // 0x00798c77    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798c78    8b0c16
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798c7b    8b542468
                         push                 ecx                                           // 0x00798c7f    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798c80    8b0c16
                         push                 ecx                                           // 0x00798c83    51
                         mov.s                ecx, eax                                      // 0x00798c84    8bc8
                         call                 _jmp_addr_0x0078dce0                          // 0x00798c86    e85550ffff
                         {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798c8b    8b5324
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798c8e    890416
                         add                  edi, 0x40                                     // 0x00798c91    83c740
                         add                  esi, 0x04                                     // 0x00798c94    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798c97    e985030000
_jmp_addr_0x00798c9c:    push                 0x00c2a254                                    // 0x00798c9c    6854a2c200
                         push                 edi                                           // 0x00798ca1    57
                         call                 _strstr                                       // 0x00798ca2    e8b9080300
                         add                  esp, 0x08                                     // 0x00798ca7    83c408
                         test                 eax, eax                                      // 0x00798caa    85c0
                         {disp8} je           _jmp_addr_0x00798cfb                          // 0x00798cac    744d
                         push                 0x000000f8                                    // 0x00798cae    68f8000000
                         push                 0x00c2a1c8                                    // 0x00798cb3    68c8a1c200
                         push                 0x1c                                          // 0x00798cb8    6a1c
                         call                 ___nw__FUl                                    // 0x00798cba    e8d12a0400
                         add                  esp, 0x0c                                     // 0x00798cbf    83c40c
                         test                 eax, eax                                      // 0x00798cc2    85c0
                         {disp8} je           _jmp_addr_0x00798cf3                          // 0x00798cc4    742d
                         {disp8} mov          ecx, dword ptr [esp + 0x6c]                   // 0x00798cc6    8b4c246c
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798cca    8b542468
                         push                 ecx                                           // 0x00798cce    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798ccf    8b0c16
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798cd2    8b542468
                         push                 ecx                                           // 0x00798cd6    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798cd7    8b0c16
                         push                 ecx                                           // 0x00798cda    51
                         mov.s                ecx, eax                                      // 0x00798cdb    8bc8
                         call                 _jmp_addr_0x0078de70                          // 0x00798cdd    e88e51ffff
                         {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798ce2    8b5324
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798ce5    890416
                         add                  edi, 0x40                                     // 0x00798ce8    83c740
                         add                  esi, 0x04                                     // 0x00798ceb    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798cee    e92e030000
_jmp_addr_0x00798cf3:    {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798cf3    8b5324
                         xor.s                eax, eax                                      // 0x00798cf6    33c0
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798cf8    890416
_jmp_addr_0x00798cfb:    add                  edi, 0x40                                     // 0x00798cfb    83c740
                         add                  esi, 0x04                                     // 0x00798cfe    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798d01    e91b030000
_jmp_addr_0x00798d06:    push                 0x00c2a248                                    // 0x00798d06    6848a2c200
                         push                 edi                                           // 0x00798d0b    57
                         call                 _strstr                                       // 0x00798d0c    e84f080300
                         add                  esp, 0x08                                     // 0x00798d11    83c408
                         test                 eax, eax                                      // 0x00798d14    85c0
                         {disp32} je          _jmp_addr_0x00798dae                          // 0x00798d16    0f8492000000
                         push                 0x00c2a240                                    // 0x00798d1c    6840a2c200
                         push                 edi                                           // 0x00798d21    57
                         {disp8} lea          eax, dword ptr [esp + 0x20]                   // 0x00798d22    8d442420
                         push                 0x00bfd850                                    // 0x00798d26    6850d8bf00
                         push                 eax                                           // 0x00798d2b    50
                         call                 _sprintf                                      // 0x00798d2c    e8a1ca0200
                         add                  esp, 0x10                                     // 0x00798d31    83c410
                         {disp8} lea          ecx, dword ptr [esp + 0x18]                   // 0x00798d34    8d4c2418
                         push                 ecx                                           // 0x00798d38    51
                         push                 ebp                                           // 0x00798d39    55
                         mov.s                ecx, ebx                                      // 0x00798d3a    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798d3c    e8cf030000
                         push                 0x00c2a238                                    // 0x00798d41    6838a2c200
                         push                 edi                                           // 0x00798d46    57
                         {disp8} lea          edx, dword ptr [esp + 0x20]                   // 0x00798d47    8d542420
                         push                 0x00bfd850                                    // 0x00798d4b    6850d8bf00
                         push                 edx                                           // 0x00798d50    52
                         mov.s                ebp, eax                                      // 0x00798d51    8be8
                         call                 _sprintf                                      // 0x00798d53    e87aca0200
                         {disp8} mov          ecx, dword ptr [esp + 0x6c]                   // 0x00798d58    8b4c246c
                         add                  esp, 0x10                                     // 0x00798d5c    83c410
                         {disp8} lea          eax, dword ptr [esp + 0x18]                   // 0x00798d5f    8d442418
                         push                 eax                                           // 0x00798d63    50
                         push                 ecx                                           // 0x00798d64    51
                         mov.s                ecx, ebx                                      // 0x00798d65    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798d67    e8a4030000
                         push                 0x0000010c                                    // 0x00798d6c    680c010000
                         push                 0x00c2a1c8                                    // 0x00798d71    68c8a1c200
                         push                 0x1c                                          // 0x00798d76    6a1c
                         {disp8} mov          dword ptr [esp + 0x78], eax                   // 0x00798d78    89442478
                         call                 ___nw__FUl                                    // 0x00798d7c    e80f2a0400
                         add                  esp, 0x0c                                     // 0x00798d81    83c40c
                         test                 eax, eax                                      // 0x00798d84    85c0
                         {disp32} je          _jmp_addr_0x0079900f                          // 0x00798d86    0f8483020000
                         {disp8} mov          edx, dword ptr [esp + 0x6c]                   // 0x00798d8c    8b54246c
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798d90    8b4c2468
                         push                 edx                                           // 0x00798d94    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798d95    8b140e
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798d98    8b4c2468
                         push                 ebp                                           // 0x00798d9c    55
                         push                 edx                                           // 0x00798d9d    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798d9e    8b140e
                         push                 edx                                           // 0x00798da1    52
                         mov.s                ecx, eax                                      // 0x00798da2    8bc8
                         call                 _jmp_addr_0x0078e000                          // 0x00798da4    e85752ffff
                         {disp32} jmp         _jmp_addr_0x00799011                          // 0x00798da9    e963020000
_jmp_addr_0x00798dae:    push                 0x00c2a22c                                    // 0x00798dae    682ca2c200
                         push                 edi                                           // 0x00798db3    57
                         call                 _strstr                                       // 0x00798db4    e8a7070300
                         add                  esp, 0x08                                     // 0x00798db9    83c408
                         test                 eax, eax                                      // 0x00798dbc    85c0
                         {disp32} jne         _jmp_addr_0x00798f85                          // 0x00798dbe    0f85c1010000
                         push                 0x00c2a220                                    // 0x00798dc4    6820a2c200
                         push                 edi                                           // 0x00798dc9    57
                         call                 _strstr                                       // 0x00798dca    e891070300
                         add                  esp, 0x08                                     // 0x00798dcf    83c408
                         test                 eax, eax                                      // 0x00798dd2    85c0
                         {disp32} jne         _jmp_addr_0x00798f85                          // 0x00798dd4    0f85ab010000
                         push                 0x00c2a214                                    // 0x00798dda    6814a2c200
                         push                 edi                                           // 0x00798ddf    57
                         call                 _strstr                                       // 0x00798de0    e87b070300
                         add                  esp, 0x08                                     // 0x00798de5    83c408
                         test                 eax, eax                                      // 0x00798de8    85c0
                         {disp32} jne         _jmp_addr_0x00798f41                          // 0x00798dea    0f8551010000
                         push                 0x00c2a208                                    // 0x00798df0    6808a2c200
                         push                 edi                                           // 0x00798df5    57
                         call                 _strstr                                       // 0x00798df6    e865070300
                         add                  esp, 0x08                                     // 0x00798dfb    83c408
                         test                 eax, eax                                      // 0x00798dfe    85c0
                         {disp32} jne         _jmp_addr_0x00798f41                          // 0x00798e00    0f853b010000
                         push                 0x00c2a200                                    // 0x00798e06    6800a2c200
                         push                 edi                                           // 0x00798e0b    57
                         call                 _strstr                                       // 0x00798e0c    e84f070300
                         add                  esp, 0x08                                     // 0x00798e11    83c408
                         test                 eax, eax                                      // 0x00798e14    85c0
                         {disp8} je           _jmp_addr_0x00798e7d                          // 0x00798e16    7465
                         push                 edi                                           // 0x00798e18    57
                         push                 ebp                                           // 0x00798e19    55
                         mov.s                ecx, ebx                                      // 0x00798e1a    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798e1c    e8ef020000
                         push                 0x00000124                                    // 0x00798e21    6824010000
                         push                 0x00c2a1c8                                    // 0x00798e26    68c8a1c200
                         push                 0x18                                          // 0x00798e2b    6a18
                         {disp8} mov          dword ptr [esp + 0x78], eax                   // 0x00798e2d    89442478
                         call                 ___nw__FUl                                    // 0x00798e31    e85a290400
                         add                  esp, 0x0c                                     // 0x00798e36    83c40c
                         test                 eax, eax                                      // 0x00798e39    85c0
                         {disp8} je           _jmp_addr_0x00798e6a                          // 0x00798e3b    742d
                         {disp8} mov          edx, dword ptr [esp + 0x6c]                   // 0x00798e3d    8b54246c
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798e41    8b4c2468
                         push                 edx                                           // 0x00798e45    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798e46    8b140e
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798e49    8b4c2468
                         push                 edx                                           // 0x00798e4d    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798e4e    8b140e
                         push                 edx                                           // 0x00798e51    52
                         mov.s                ecx, eax                                      // 0x00798e52    8bc8
                         call                 _jmp_addr_0x0078e3d0                          // 0x00798e54    e87755ffff
                         {disp8} mov          ecx, dword ptr [ebx + 0x24]                   // 0x00798e59    8b4b24
                         mov                  dword ptr [esi + ecx * 0x1], eax              // 0x00798e5c    89040e
                         add                  edi, 0x40                                     // 0x00798e5f    83c740
                         add                  esi, 0x04                                     // 0x00798e62    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798e65    e9b7010000
_jmp_addr_0x00798e6a:    {disp8} mov          ecx, dword ptr [ebx + 0x24]                   // 0x00798e6a    8b4b24
                         xor.s                eax, eax                                      // 0x00798e6d    33c0
                         mov                  dword ptr [esi + ecx * 0x1], eax              // 0x00798e6f    89040e
                         add                  edi, 0x40                                     // 0x00798e72    83c740
                         add                  esi, 0x04                                     // 0x00798e75    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798e78    e9a4010000
_jmp_addr_0x00798e7d:    push                 0x00c2a1f4                                    // 0x00798e7d    68f4a1c200
                         push                 edi                                           // 0x00798e82    57
                         call                 _strstr                                       // 0x00798e83    e8d8060300
                         add                  esp, 0x08                                     // 0x00798e88    83c408
                         test                 eax, eax                                      // 0x00798e8b    85c0
                         {disp8} je           _jmp_addr_0x00798ee1                          // 0x00798e8d    7452
                         push                 edi                                           // 0x00798e8f    57
                         push                 ebp                                           // 0x00798e90    55
                         mov.s                ecx, ebx                                      // 0x00798e91    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798e93    e878020000
                         push                 0x0000012c                                    // 0x00798e98    682c010000
                         push                 0x00c2a1c8                                    // 0x00798e9d    68c8a1c200
                         push                 0x24                                          // 0x00798ea2    6a24
                         {disp8} mov          dword ptr [esp + 0x78], eax                   // 0x00798ea4    89442478
                         call                 ___nw__FUl                                    // 0x00798ea8    e8e3280400
                         add                  esp, 0x0c                                     // 0x00798ead    83c40c
                         test                 eax, eax                                      // 0x00798eb0    85c0
                         {disp8} je           _jmp_addr_0x00798e6a                          // 0x00798eb2    74b6
                         {disp8} mov          edx, dword ptr [esp + 0x6c]                   // 0x00798eb4    8b54246c
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798eb8    8b4c2468
                         push                 edx                                           // 0x00798ebc    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798ebd    8b140e
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798ec0    8b4c2468
                         push                 edx                                           // 0x00798ec4    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798ec5    8b140e
                         push                 edx                                           // 0x00798ec8    52
                         mov.s                ecx, eax                                      // 0x00798ec9    8bc8
                         call                 _jmp_addr_0x0078e580                          // 0x00798ecb    e8b056ffff
                         {disp8} mov          ecx, dword ptr [ebx + 0x24]                   // 0x00798ed0    8b4b24
                         mov                  dword ptr [esi + ecx * 0x1], eax              // 0x00798ed3    89040e
                         add                  edi, 0x40                                     // 0x00798ed6    83c740
                         add                  esi, 0x04                                     // 0x00798ed9    83c604
                         {disp32} jmp         _jmp_addr_0x00799021                          // 0x00798edc    e940010000
_jmp_addr_0x00798ee1:    push                 0x00c2a1e8                                    // 0x00798ee1    68e8a1c200
                         push                 edi                                           // 0x00798ee6    57
                         call                 _strstr                                       // 0x00798ee7    e874060300
                         add                  esp, 0x08                                     // 0x00798eec    83c408
                         test                 eax, eax                                      // 0x00798eef    85c0
                         {disp32} je          _jmp_addr_0x00799021                          // 0x00798ef1    0f842a010000
                         push                 edi                                           // 0x00798ef7    57
                         push                 ebp                                           // 0x00798ef8    55
                         mov.s                ecx, ebx                                      // 0x00798ef9    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798efb    e810020000
                         push                 0x00000134                                    // 0x00798f00    6834010000
                         push                 0x00c2a1c8                                    // 0x00798f05    68c8a1c200
                         push                 0x18                                          // 0x00798f0a    6a18
                         mov.s                ebp, eax                                      // 0x00798f0c    8be8
                         call                 ___nw__FUl                                    // 0x00798f0e    e87d280400
                         add                  esp, 0x0c                                     // 0x00798f13    83c40c
                         test                 eax, eax                                      // 0x00798f16    85c0
                         {disp32} je          _jmp_addr_0x00798fc8                          // 0x00798f18    0f84aa000000
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798f1e    8b542468
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798f22    8b0c16
                         {disp8} mov          edx, dword ptr [esp + 0x64]                   // 0x00798f25    8b542464
                         push                 ebp                                           // 0x00798f29    55
                         push                 ecx                                           // 0x00798f2a    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798f2b    8b0c16
                         push                 ecx                                           // 0x00798f2e    51
                         mov.s                ecx, eax                                      // 0x00798f2f    8bc8
                         call                 _jmp_addr_0x0078e760                          // 0x00798f31    e82a58ffff
                         {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798f36    8b5324
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798f39    890416
                         {disp32} jmp         _jmp_addr_0x00799017                          // 0x00798f3c    e9d6000000
_jmp_addr_0x00798f41:    push                 edi                                           // 0x00798f41    57
                         push                 ebp                                           // 0x00798f42    55
                         mov.s                ecx, ebx                                      // 0x00798f43    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798f45    e8c6010000
                         push                 0x0000011c                                    // 0x00798f4a    681c010000
                         push                 0x00c2a1c8                                    // 0x00798f4f    68c8a1c200
                         push                 0x24                                          // 0x00798f54    6a24
                         mov.s                ebp, eax                                      // 0x00798f56    8be8
                         call                 ___nw__FUl                                    // 0x00798f58    e833280400
                         add                  esp, 0x0c                                     // 0x00798f5d    83c40c
                         test                 eax, eax                                      // 0x00798f60    85c0
                         {disp32} je          _jmp_addr_0x0079900f                          // 0x00798f62    0f84a7000000
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798f68    8b4c2468
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798f6c    8b140e
                         {disp8} mov          ecx, dword ptr [esp + 0x64]                   // 0x00798f6f    8b4c2464
                         push                 ebp                                           // 0x00798f73    55
                         push                 edx                                           // 0x00798f74    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798f75    8b140e
                         push                 edx                                           // 0x00798f78    52
                         mov.s                ecx, eax                                      // 0x00798f79    8bc8
                         call                 _jmp_addr_0x0078e200                          // 0x00798f7b    e88052ffff
                         {disp32} jmp         _jmp_addr_0x00799011                          // 0x00798f80    e98c000000
_jmp_addr_0x00798f85:    push                 edi                                           // 0x00798f85    57
                         push                 ebp                                           // 0x00798f86    55
                         mov.s                ecx, ebx                                      // 0x00798f87    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798f89    e882010000
                         push                 0x00000114                                    // 0x00798f8e    6814010000
                         push                 0x00c2a1c8                                    // 0x00798f93    68c8a1c200
                         push                 0x18                                          // 0x00798f98    6a18
                         mov.s                ebp, eax                                      // 0x00798f9a    8be8
                         call                 ___nw__FUl                                    // 0x00798f9c    e8ef270400
                         add                  esp, 0x0c                                     // 0x00798fa1    83c40c
                         test                 eax, eax                                      // 0x00798fa4    85c0
                         {disp8} je           _jmp_addr_0x00798fc8                          // 0x00798fa6    7420
                         {disp8} mov          edx, dword ptr [esp + 0x68]                   // 0x00798fa8    8b542468
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798fac    8b0c16
                         {disp8} mov          edx, dword ptr [esp + 0x64]                   // 0x00798faf    8b542464
                         push                 ebp                                           // 0x00798fb3    55
                         push                 ecx                                           // 0x00798fb4    51
                         mov                  ecx, dword ptr [esi + edx * 0x1]              // 0x00798fb5    8b0c16
                         push                 ecx                                           // 0x00798fb8    51
                         mov.s                ecx, eax                                      // 0x00798fb9    8bc8
                         call                 _jmp_addr_0x0078e080                          // 0x00798fbb    e8c050ffff
                         {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798fc0    8b5324
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798fc3    890416
                         {disp8} jmp          _jmp_addr_0x00799017                          // 0x00798fc6    eb4f
_jmp_addr_0x00798fc8:    {disp8} mov          edx, dword ptr [ebx + 0x24]                   // 0x00798fc8    8b5324
                         xor.s                eax, eax                                      // 0x00798fcb    33c0
                         mov                  dword ptr [esi + edx * 0x1], eax              // 0x00798fcd    890416
                         {disp8} jmp          _jmp_addr_0x00799017                          // 0x00798fd0    eb45
_jmp_addr_0x00798fd2:    push                 edi                                           // 0x00798fd2    57
                         push                 ebp                                           // 0x00798fd3    55
                         mov.s                ecx, ebx                                      // 0x00798fd4    8bcb
                         call                 _jmp_addr_0x00799110                          // 0x00798fd6    e835010000
                         push                 0x000000e8                                    // 0x00798fdb    68e8000000
                         push                 0x00c2a1c8                                    // 0x00798fe0    68c8a1c200
                         push                 0x1c                                          // 0x00798fe5    6a1c
                         mov.s                ebp, eax                                      // 0x00798fe7    8be8
                         call                 ___nw__FUl                                    // 0x00798fe9    e8a2270400
                         add                  esp, 0x0c                                     // 0x00798fee    83c40c
                         test                 eax, eax                                      // 0x00798ff1    85c0
                         {disp8} je           _jmp_addr_0x0079900f                          // 0x00798ff3    741a
                         {disp8} mov          ecx, dword ptr [esp + 0x68]                   // 0x00798ff5    8b4c2468
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00798ff9    8b140e
                         {disp8} mov          ecx, dword ptr [esp + 0x64]                   // 0x00798ffc    8b4c2464
                         push                 ebp                                           // 0x00799000    55
                         push                 edx                                           // 0x00799001    52
                         mov                  edx, dword ptr [esi + ecx * 0x1]              // 0x00799002    8b140e
                         push                 edx                                           // 0x00799005    52
                         mov.s                ecx, eax                                      // 0x00799006    8bc8
                         call                 _jmp_addr_0x0078db20                          // 0x00799008    e8134bffff
                         {disp8} jmp          _jmp_addr_0x00799011                          // 0x0079900d    eb02
_jmp_addr_0x0079900f:    xor.s                eax, eax                                      // 0x0079900f    33c0
_jmp_addr_0x00799011:    {disp8} mov          ecx, dword ptr [ebx + 0x24]                   // 0x00799011    8b4b24
                         mov                  dword ptr [esi + ecx * 0x1], eax              // 0x00799014    89040e
_jmp_addr_0x00799017:    {disp8} mov          ebp, dword ptr [esp + 0x5c]                   // 0x00799017    8b6c245c
                         add                  edi, 0x40                                     // 0x0079901b    83c740
                         add                  esi, 0x04                                     // 0x0079901e    83c604
_jmp_addr_0x00799021:    dec                  dword ptr [esp + 0x14]                        // 0x00799021    ff4c2414
                         {disp32} jne         _jmp_addr_0x00798bdc                          // 0x00799025    0f85b1fbffff
                         {disp8} mov          esi, dword ptr [esp + 0x60]                   // 0x0079902b    8b742460
                         {disp8} mov          edi, dword ptr [esp + 0x10]                   // 0x0079902f    8b7c2410
_jmp_addr_0x00799033:    push                 0x00000146                                    // 0x00799033    6846010000
                         lea                  edx, dword ptr [esi + esi * 0x2]              // 0x00799038    8d1476
                         shl                  edx, 5                                        // 0x0079903b    c1e205
                         push                 0x00c2a1c8                                    // 0x0079903e    68c8a1c200
                         push                 edx                                           // 0x00799043    52
                         {disp8} mov          dword ptr [ebx + 0x2c], esi                   // 0x00799044    89732c
                         call                 ___nw__FUl                                    // 0x00799047    e844270400
                         add                  esp, 0x0c                                     // 0x0079904c    83c40c
                         test                 eax, eax                                      // 0x0079904f    85c0
                         {disp8} je           _jmp_addr_0x0079905a                          // 0x00799051    7407
                         dec                  esi                                           // 0x00799053    4e
                         {disp8} mov          dword ptr [esp + 0x68], esi                   // 0x00799054    89742468
                         {disp8} jmp          _jmp_addr_0x0079905c                          // 0x00799058    eb02
_jmp_addr_0x0079905a:    xor.s                eax, eax                                      // 0x0079905a    33c0
_jmp_addr_0x0079905c:    {disp8} mov          dword ptr [ebx + 0x28], eax                   // 0x0079905c    894328
_jmp_addr_0x0079905f:    {disp8} mov          edx, dword ptr [ebx + 0x2c]                   // 0x0079905f    8b532c
                         xor.s                eax, eax                                      // 0x00799062    33c0
                         dec                  edx                                           // 0x00799064    4a
                         mov                  ecx, 0x00000001                               // 0x00799065    b901000000
                         {disp8} je           _jmp_addr_0x0079909b                          // 0x0079906a    742f
_jmp_addr_0x0079906c:    {disp8} mov          esi, dword ptr [ebx + 0x24]                   // 0x0079906c    8b7324
                         mov                  ebp, dword ptr [esi + eax * 0x4]              // 0x0079906f    8b2c86
                         {disp8} mov          edi, dword ptr [esi + eax * 0x4 + 0x04]       // 0x00799072    8b7c8604
                         {disp8} mov          dl, byte ptr [ebp + 0x04]                     // 0x00799076    8a5504
                         cmp                  dl, byte ptr [edi + 0x04]                     // 0x00799079    3a5704
                         {disp8} jbe          _jmp_addr_0x0079908a                          // 0x0079907c    760c
                         mov                  dword ptr [esi + eax * 0x4], edi              // 0x0079907e    893c86
                         {disp8} mov          ecx, dword ptr [ebx + 0x24]                   // 0x00799081    8b4b24
                         {disp8} mov          dword ptr [ecx + eax * 0x4 + 0x04], ebp       // 0x00799084    896c8104
                         xor.s                ecx, ecx                                      // 0x00799088    33c9
_jmp_addr_0x0079908a:    {disp8} mov          edx, dword ptr [ebx + 0x2c]                   // 0x0079908a    8b532c
                         inc                  eax                                           // 0x0079908d    40
                         dec                  edx                                           // 0x0079908e    4a
                         cmp.s                eax, edx                                      // 0x0079908f    3bc2
                         .byte                0x72, 0xd9// {disp8} jb _jmp_addr_0x0079906c  // 0x00799091    72d9
                         test                 ecx, ecx                                      // 0x00799093    85c9
                         {disp8} mov          edi, dword ptr [esp + 0x10]                   // 0x00799095    8b7c2410
                         {disp8} je           _jmp_addr_0x0079905f                          // 0x00799099    74c4
_jmp_addr_0x0079909b:    mov.s                ecx, edi                                      // 0x0079909b    8bcf
                         call                 @Release__8LH3DMeshFv@4                       // 0x0079909d    e85edc0600
                         pop                  edi                                           // 0x007990a2    5f
                         pop                  esi                                           // 0x007990a3    5e
                         pop                  ebp                                           // 0x007990a4    5d
                         mov                  eax, 0x00000001                               // 0x007990a5    b801000000
                         pop                  ebx                                           // 0x007990aa    5b
                         add                  esp, 0x48                                     // 0x007990ab    83c448
                         ret                  0x0014                                        // 0x007990ae    c21400
                         nop                                                                // 0x007990b1    90
                         nop                                                                // 0x007990b2    90
                         nop                                                                // 0x007990b3    90
                         nop                                                                // 0x007990b4    90
                         nop                                                                // 0x007990b5    90
                         nop                                                                // 0x007990b6    90
                         nop                                                                // 0x007990b7    90
                         nop                                                                // 0x007990b8    90
                         nop                                                                // 0x007990b9    90
                         nop                                                                // 0x007990ba    90
                         nop                                                                // 0x007990bb    90
                         nop                                                                // 0x007990bc    90
                         nop                                                                // 0x007990bd    90
                         nop                                                                // 0x007990be    90
                         nop                                                                // 0x007990bf    90
_jmp_addr_0x007990c0:    push                 ebx                                           // 0x007990c0    53
                         push                 edi                                           // 0x007990c1    57
                         mov.s                edi, ecx                                      // 0x007990c2    8bf9
                         {disp8} mov          eax, dword ptr [edi + 0x2c]                   // 0x007990c4    8b472c
                         xor.s                ebx, ebx                                      // 0x007990c7    33db
                         test                 eax, eax                                      // 0x007990c9    85c0
                         {disp8} jbe          _jmp_addr_0x007990f1                          // 0x007990cb    7624
                         push                 esi                                           // 0x007990cd    56
_jmp_addr_0x007990ce:    {disp8} mov          eax, dword ptr [edi + 0x24]                   // 0x007990ce    8b4724
                         mov                  esi, dword ptr [eax + ebx * 0x4]              // 0x007990d1    8b3498
                         test                 esi, esi                                      // 0x007990d4    85f6
                         {disp8} je           _jmp_addr_0x007990e8                          // 0x007990d6    7410
                         mov.s                ecx, esi                                      // 0x007990d8    8bce
                         call                 _jmp_addr_0x0078da70                          // 0x007990da    e89149ffff
                         push                 esi                                           // 0x007990df    56
                         call                 ??3@YAXPAX@Z                                  // 0x007990e0    e8b35d0100
                         add                  esp, 0x04                                     // 0x007990e5    83c404
_jmp_addr_0x007990e8:    {disp8} mov          eax, dword ptr [edi + 0x2c]                   // 0x007990e8    8b472c
                         inc                  ebx                                           // 0x007990eb    43
                         cmp.s                ebx, eax                                      // 0x007990ec    3bd8
                         .byte                0x72, 0xde// {disp8} jb _jmp_addr_0x007990ce  // 0x007990ee    72de
                         pop                  esi                                           // 0x007990f0    5e
_jmp_addr_0x007990f1:    {disp8} mov          ecx, dword ptr [edi + 0x24]                   // 0x007990f1    8b4f24
                         push                 ecx                                           // 0x007990f4    51
                         call                 ??3@YAXPAX@Z                                  // 0x007990f5    e89e5d0100
                         {disp8} mov          edx, dword ptr [edi + 0x28]                   // 0x007990fa    8b5728
                         push                 edx                                           // 0x007990fd    52
                         call                 ??3@YAXPAX@Z                                  // 0x007990fe    e8955d0100
                         add                  esp, 0x08                                     // 0x00799103    83c408
                         pop                  edi                                           // 0x00799106    5f
                         pop                  ebx                                           // 0x00799107    5b
                         ret                                                                // 0x00799108    c3
                         nop                                                                // 0x00799109    90
                         nop                                                                // 0x0079910a    90
                         nop                                                                // 0x0079910b    90
                         nop                                                                // 0x0079910c    90
                         nop                                                                // 0x0079910d    90
                         nop                                                                // 0x0079910e    90
                         nop                                                                // 0x0079910f    90
_jmp_addr_0x00799110:    sub                  esp, 0x00000080                               // 0x00799110    81ec80000000
                         push                 ebx                                           // 0x00799116    53
                         push                 ebp                                           // 0x00799117    55
                         {disp32} mov         ebp, dword ptr [esp + 0x00000090]             // 0x00799118    8bac2490000000
                         push                 esi                                           // 0x0079911f    56
                         {disp32} mov         esi, dword ptr [esp + 0x00000090]             // 0x00799120    8bb42490000000
                         {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x00799127    8b4604
                         xor.s                ebx, ebx                                      // 0x0079912a    33db
                         test                 eax, eax                                      // 0x0079912c    85c0
                         push                 edi                                           // 0x0079912e    57
                         {disp8} jbe          _jmp_addr_0x00799154                          // 0x0079912f    7623
                         xor.s                edi, edi                                      // 0x00799131    33ff
_jmp_addr_0x00799133:    {disp8} mov          eax, dword ptr [esi + 0x08]                   // 0x00799133    8b4608
                         add.s                eax, edi                                      // 0x00799136    03c7
                         push                 ebp                                           // 0x00799138    55
                         push                 eax                                           // 0x00799139    50
                         call                 __strcmpi                                     // 0x0079913a    e8a1db0200
                         add                  esp, 0x08                                     // 0x0079913f    83c408
                         test                 eax, eax                                      // 0x00799142    85c0
                         {disp8} je           _jmp_addr_0x00799176                          // 0x00799144    7430
                         {disp8} mov          eax, dword ptr [esi + 0x04]                   // 0x00799146    8b4604
                         inc                  ebx                                           // 0x00799149    43
                         add                  edi, 0x000000e0                               // 0x0079914a    81c7e0000000
                         cmp.s                ebx, eax                                      // 0x00799150    3bd8
                         .byte                0x72, 0xdf// {disp8} jb _jmp_addr_0x00799133  // 0x00799152    72df
_jmp_addr_0x00799154:    push                 ebp                                           // 0x00799154    55
                         {disp8} lea          eax, dword ptr [esp + 0x14]                   // 0x00799155    8d442414
                         push                 0x00c2a29c                                    // 0x00799159    689ca2c200
                         push                 eax                                           // 0x0079915e    50
                         call                 _sprintf                                      // 0x0079915f    e86ec60200
                         add                  esp, 0x0c                                     // 0x00799164    83c40c
                         pop                  edi                                           // 0x00799167    5f
                         pop                  esi                                           // 0x00799168    5e
                         pop                  ebp                                           // 0x00799169    5d
                         xor.s                eax, eax                                      // 0x0079916a    33c0
                         pop                  ebx                                           // 0x0079916c    5b
                         add                  esp, 0x00000080                               // 0x0079916d    81c480000000
                         ret                  0x0008                                        // 0x00799173    c20800
_jmp_addr_0x00799176:    pop                  edi                                           // 0x00799176    5f
                         pop                  esi                                           // 0x00799177    5e
                         pop                  ebp                                           // 0x00799178    5d
                         mov.s                eax, ebx                                      // 0x00799179    8bc3
                         pop                  ebx                                           // 0x0079917b    5b
                         add                  esp, 0x00000080                               // 0x0079917c    81c480000000
                         ret                  0x0008                                        // 0x00799182    c20800
                         nop                                                                // 0x00799185    90
                         nop                                                                // 0x00799186    90
                         nop                                                                // 0x00799187    90
                         nop                                                                // 0x00799188    90
                         nop                                                                // 0x00799189    90
                         nop                                                                // 0x0079918a    90
                         nop                                                                // 0x0079918b    90
                         nop                                                                // 0x0079918c    90
                         nop                                                                // 0x0079918d    90
                         nop                                                                // 0x0079918e    90
                         nop                                                                // 0x0079918f    90
_jmp_addr_0x00799190:    {disp32} mov         dword ptr [data_bytes + 0x440024], 0x00ffffff // 0x00799190    c7052460e000ffffff00
                         {disp32} mov         dword ptr [_DAT_00e06020], 0x3f800000         // 0x0079919a    c7052060e0000000803f
                         {disp32} mov         dword ptr [data_bytes + 0x264150], 0x00000000 // 0x007991a4    c70550a1c20000000000
                         {disp32} mov         dword ptr [data_bytes + 0x440028], 0x00000000 // 0x007991ae    c7052860e00000000000
                         ret                                                                // 0x007991b8    c3
                         nop                                                                // 0x007991b9    90
                         nop                                                                // 0x007991ba    90
                         nop                                                                // 0x007991bb    90
                         nop                                                                // 0x007991bc    90
                         nop                                                                // 0x007991bd    90
                         nop                                                                // 0x007991be    90
                         nop                                                                // 0x007991bf    90
_jmp_addr_0x007991c0:    sub                  esp, 0x000001dc                               // 0x007991c0    81ecdc010000
                         {disp32} mov         ecx, dword ptr [esp + 0x000001ec]             // 0x007991c6    8b8c24ec010000
                         mov.s                eax, ecx                                      // 0x007991cd    8bc1
                         xor.s                edx, edx                                      // 0x007991cf    33d2
                         div                  dword ptr [data_bytes + 0x470104]             // 0x007991d1    f7350461e300
                         push                 ebx                                           // 0x007991d7    53
                         push                 ebp                                           // 0x007991d8    55
                         push                 esi                                           // 0x007991d9    56
                         {disp32} mov         esi, dword ptr [esp + 0x000001ec]             // 0x007991da    8bb424ec010000
                         push                 edi                                           // 0x007991e1    57
                         push                 ecx                                           // 0x007991e2    51
                         push                 esi                                           // 0x007991e3    56
                         {disp8} mov          dword ptr [esp + 0x78], 0x00000000            // 0x007991e4    c744247800000000
                         {disp8} mov          dword ptr [esp + 0x40], 0x00000000            // 0x007991ec    c744244000000000
                         {disp32} mov         dword ptr [esp + 0x000000a8], eax             // 0x007991f4    898424a8000000
                         call                 _jmp_addr_0x0079a2c0                          // 0x007991fb    e8c0100000
                         add                  esp, 0x08                                     // 0x00799200    83c408
                         xor.s                ebx, ebx                                      // 0x00799203    33db
                         push                 ebx                                           // 0x00799205    53
                         mov.s                ecx, esi                                      // 0x00799206    8bce
                         call                 _jmp_addr_0x00839010                          // 0x00799208    e803fe0900
                         mov.s                ecx, eax                                      // 0x0079920d    8bc8
                         call                 _jmp_addr_0x00870920                          // 0x0079920f    e80c770d00
                         mov.s                ebp, eax                                      // 0x00799214    8be8
                         {disp32} mov         eax, dword ptr [esp + 0x00000200]             // 0x00799216    8b842400020000
                         cmp.s                eax, ebx                                      // 0x0079921d    3bc3
                         {disp32} mov         dword ptr [data_bytes + 0x47012c], ebx        // 0x0079921f    891d2c61e300
                         {disp32} mov         dword ptr [data_bytes + 0x4e3ea0], 0x00ea9e40 // 0x00799225    c705a09eea00409eea00
                         {disp32} je          _jmp_addr_0x0079951f                          // 0x0079922f    0f84ea020000
                         {disp8} lea          esi, dword ptr [eax + 0x68]                   // 0x00799235    8d7068
                         mov                  ecx, 0x0000000c                               // 0x00799238    b90c000000
                         {disp8} lea          edi, dword ptr [esp + 0x3c]                   // 0x0079923d    8d7c243c
                         rep movsd            es:[edi], dword ptr ds:[esi]                  // 0x00799241    f3a5
                         {disp32} lea         ecx, dword ptr [eax + 0x000000d4]             // 0x00799243    8d88d4000000
                         mov                  edx, dword ptr [ecx]                          // 0x00799249    8b11
                         {disp8} mov          dword ptr [esp + 0x1c], edx                   // 0x0079924b    8954241c
                         {disp8} mov          edx, dword ptr [ecx + 0x04]                   // 0x0079924f    8b5104
                         {disp8} fld          dword ptr [esp + 0x1c]                        // 0x00799252    d944241c
                         {disp8} mov          ecx, dword ptr [ecx + 0x08]                   // 0x00799256    8b4908
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x00799259    89542420
                         {disp8} mov          dword ptr [esp + 0x24], ecx                   // 0x0079925d    894c2424
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x00799261    d9442420
                         add                  eax, 0x000000c8                               // 0x00799265    05c8000000
                         {disp8} fld          dword ptr [esp + 0x3c]                        // 0x0079926a    d944243c
                         mov                  edx, dword ptr [eax]                          // 0x0079926e    8b10
                         {disp8} fmul         dword ptr [esp + 0x1c]                        // 0x00799270    d84c241c
                         {disp8} mov          ecx, dword ptr [eax + 0x04]                   // 0x00799274    8b4804
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x00799277    d9442420
                         {disp8} mov          dword ptr [esp + 0x28], edx                   // 0x0079927b    89542428
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x0079927f    d84c2448
                         {disp8} mov          edx, dword ptr [eax + 0x08]                   // 0x00799283    8b5008
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                   // 0x00799286    894c242c
                         {disp8} mov          dword ptr [esp + 0x30], edx                   // 0x0079928a    89542430
                         faddp                st(1), st                                     // 0x0079928e    dec1
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x00799290    d9442424
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x00799294    d84c2454
                         faddp                st(1), st                                     // 0x00799298    dec1
                         {disp8} fadd         dword ptr [esp + 0x60]                        // 0x0079929a    d8442460
                         {disp8} fstp         dword ptr [esp + 0x1c]                        // 0x0079929e    d95c241c
                         {disp8} fld          dword ptr [esp + 0x40]                        // 0x007992a2    d9442440
                         fmul                 st, st(2)                                     // 0x007992a6    d8ca
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x007992a8    d9442420
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x007992ac    d84c244c
                         faddp                st(1), st                                     // 0x007992b0    dec1
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x007992b2    d9442424
                         {disp8} fmul         dword ptr [esp + 0x58]                        // 0x007992b6    d84c2458
                         faddp                st(1), st                                     // 0x007992ba    dec1
                         {disp8} fadd         dword ptr [esp + 0x64]                        // 0x007992bc    d8442464
                         {disp8} fstp         dword ptr [esp + 0x20]                        // 0x007992c0    d95c2420
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x007992c4    d9442444
                         fmul                 st, st(2)                                     // 0x007992c8    d8ca
                         {disp8} fld          dword ptr [esp + 0x24]                        // 0x007992ca    d9442424
                         {disp8} fmul         dword ptr [esp + 0x5c]                        // 0x007992ce    d84c245c
                         faddp                st(1), st                                     // 0x007992d2    dec1
                         fxch                 st(1)                                         // 0x007992d4    d9c9
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x007992d6    d84c2450
                         faddp                st(1), st                                     // 0x007992da    dec1
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x007992dc    d8442468
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x007992e0    d95c2424
                         fstp                 st(0)                                         // 0x007992e4    ddd8
                         {disp8} fld          dword ptr [esp + 0x28]                        // 0x007992e6    d9442428
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x007992ea    d944242c
                         {disp8} fld          dword ptr [esp + 0x28]                        // 0x007992ee    d9442428
                         {disp8} fmul         dword ptr [esp + 0x3c]                        // 0x007992f2    d84c243c
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x007992f6    d944242c
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x007992fa    d84c2448
                         faddp                st(1), st                                     // 0x007992fe    dec1
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x00799300    d9442430
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x00799304    d84c2454
                         faddp                st(1), st                                     // 0x00799308    dec1
                         {disp8} fadd         dword ptr [esp + 0x60]                        // 0x0079930a    d8442460
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x0079930e    d95c2428
                         {disp8} fld          dword ptr [esp + 0x40]                        // 0x00799312    d9442440
                         fmul                 st, st(2)                                     // 0x00799316    d8ca
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x00799318    d944242c
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x0079931c    d84c244c
                         faddp                st(1), st                                     // 0x00799320    dec1
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x00799322    d9442430
                         {disp8} fmul         dword ptr [esp + 0x58]                        // 0x00799326    d84c2458
                         faddp                st(1), st                                     // 0x0079932a    dec1
                         {disp8} fadd         dword ptr [esp + 0x64]                        // 0x0079932c    d8442464
                         {disp8} fstp         dword ptr [esp + 0x2c]                        // 0x00799330    d95c242c
                         {disp8} fld          dword ptr [esp + 0x44]                        // 0x00799334    d9442444
                         fmul                 st, st(2)                                     // 0x00799338    d8ca
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x0079933a    d9442430
                         {disp8} fmul         dword ptr [esp + 0x5c]                        // 0x0079933e    d84c245c
                         faddp                st(1), st                                     // 0x00799342    dec1
                         fxch                 st(1)                                         // 0x00799344    d9c9
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x00799346    d84c2450
                         faddp                st(1), st                                     // 0x0079934a    dec1
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x0079934c    d8442468
                         {disp8} lea          ecx, dword ptr [esp + 0x3c]                   // 0x00799350    8d4c243c
                         {disp8} fstp         dword ptr [esp + 0x30]                        // 0x00799354    d95c2430
                         fstp                 st(0)                                         // 0x00799358    ddd8
                         {disp8} fld          dword ptr [esp + 0x28]                        // 0x0079935a    d9442428
                         {disp8} fadd         dword ptr [esp + 0x1c]                        // 0x0079935e    d844241c
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x00799362    d944242c
                         {disp8} fadd         dword ptr [esp + 0x20]                        // 0x00799366    d8442420
                         {disp32} fstp        dword ptr [esp + 0x00000094]                  // 0x0079936a    d99c2494000000
                         {disp8} fld          dword ptr [esp + 0x30]                        // 0x00799371    d9442430
                         {disp8} fadd         dword ptr [esp + 0x24]                        // 0x00799375    d8442424
                         {disp32} fstp        dword ptr [esp + 0x00000098]                  // 0x00799379    d99c2498000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x00799380    d80db4a38a00
                         {disp32} fstp        dword ptr [esp + 0x00000084]                  // 0x00799386    d99c2484000000
                         {disp32} fld         dword ptr [esp + 0x00000094]                  // 0x0079938d    d9842494000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x00799394    d80db4a38a00
                         {disp32} fstp        dword ptr [esp + 0x00000088]                  // 0x0079939a    d99c2488000000
                         {disp32} fld         dword ptr [esp + 0x00000098]                  // 0x007993a1    d9842498000000
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x007993a8    d80db4a38a00
                         {disp32} fstp        dword ptr [esp + 0x0000008c]                  // 0x007993ae    d99c248c000000
                         call                 _jmp_addr_0x007fb5c0                          // 0x007993b5    e806220600
                         {disp8} lea          edx, dword ptr [esp + 0x3c]                   // 0x007993ba    8d54243c
                         {disp32} lea         ecx, dword ptr [esp + 0x00000104]             // 0x007993be    8d8c2404010000
                         call                 ?SetInverse@LHMatrix@@QAEXAAU1@@Z             // 0x007993c5    e8c61e0600
                         {disp32} fld         dword ptr [esp + 0x00000114]                  // 0x007993ca    d9842414010000
                         {disp8} fmul         dword ptr [esp + 0x20]                        // 0x007993d1    d84c2420
                         {disp32} fld         dword ptr [esp + 0x00000120]                  // 0x007993d5    d9842420010000
                         {disp8} fmul         dword ptr [esp + 0x24]                        // 0x007993dc    d84c2424
                         faddp                st(1), st                                     // 0x007993e0    dec1
                         {disp32} fld         dword ptr [esp + 0x00000108]                  // 0x007993e2    d9842408010000
                         {disp8} fmul         dword ptr [esp + 0x1c]                        // 0x007993e9    d84c241c
                         faddp                st(1), st                                     // 0x007993ed    dec1
                         {disp32} fadd        dword ptr [esp + 0x0000012c]                  // 0x007993ef    d884242c010000
                         {disp32} fld         dword ptr [esp + 0x00000118]                  // 0x007993f6    d9842418010000
                         {disp8} fmul         dword ptr [esp + 0x20]                        // 0x007993fd    d84c2420
                         {disp32} fld         dword ptr [esp + 0x00000124]                  // 0x00799401    d9842424010000
                         {disp8} fmul         dword ptr [esp + 0x24]                        // 0x00799408    d84c2424
                         faddp                st(1), st                                     // 0x0079940c    dec1
                         {disp32} fld         dword ptr [esp + 0x0000010c]                  // 0x0079940e    d984240c010000
                         {disp8} fmul         dword ptr [esp + 0x1c]                        // 0x00799415    d84c241c
                         faddp                st(1), st                                     // 0x00799419    dec1
                         {disp32} fadd        dword ptr [esp + 0x00000130]                  // 0x0079941b    d8842430010000
                         {disp32} fld         dword ptr [esp + 0x00000120]                  // 0x00799422    d9842420010000
                         {disp8} fmul         dword ptr [esp + 0x30]                        // 0x00799429    d84c2430
                         {disp32} fld         dword ptr [esp + 0x00000114]                  // 0x0079942d    d9842414010000
                         {disp8} fmul         dword ptr [esp + 0x2c]                        // 0x00799434    d84c242c
                         faddp                st(1), st                                     // 0x00799438    dec1
                         {disp32} fld         dword ptr [esp + 0x00000108]                  // 0x0079943a    d9842408010000
                         {disp8} fmul         dword ptr [esp + 0x28]                        // 0x00799441    d84c2428
                         faddp                st(1), st                                     // 0x00799445    dec1
                         {disp32} fadd        dword ptr [esp + 0x0000012c]                  // 0x00799447    d884242c010000
                         {disp32} fstp        dword ptr [esp + 0x000000cc]                  // 0x0079944e    d99c24cc000000
                         {disp32} fld         dword ptr [esp + 0x00000124]                  // 0x00799455    d9842424010000
                         {disp8} fmul         dword ptr [esp + 0x30]                        // 0x0079945c    d84c2430
                         {disp32} fld         dword ptr [esp + 0x00000118]                  // 0x00799460    d9842418010000
                         {disp8} fmul         dword ptr [esp + 0x2c]                        // 0x00799467    d84c242c
                         faddp                st(1), st                                     // 0x0079946b    dec1
                         {disp32} fld         dword ptr [esp + 0x0000010c]                  // 0x0079946d    d984240c010000
                         {disp8} fmul         dword ptr [esp + 0x28]                        // 0x00799474    d84c2428
                         faddp                st(1), st                                     // 0x00799478    dec1
                         {disp32} fadd        dword ptr [esp + 0x00000130]                  // 0x0079947a    d8842430010000
                         {disp8} fld          dword ptr [esp + 0x54]                        // 0x00799481    d9442454
                         fchs                                                               // 0x00799485    d9e0
                         {disp8} fstp         dword ptr [esp + 0x54]                        // 0x00799487    d95c2454
                         {disp8} fld          dword ptr [esp + 0x58]                        // 0x0079948b    d9442458
                         fchs                                                               // 0x0079948f    d9e0
                         {disp8} fstp         dword ptr [esp + 0x58]                        // 0x00799491    d95c2458
                         {disp8} fld          dword ptr [esp + 0x5c]                        // 0x00799495    d944245c
                         fchs                                                               // 0x00799499    d9e0
                         {disp8} fstp         dword ptr [esp + 0x5c]                        // 0x0079949b    d95c245c
                         {disp8} fld          dword ptr [esp + 0x48]                        // 0x0079949f    d9442448
                         fchs                                                               // 0x007994a3    d9e0
                         {disp8} fstp         dword ptr [esp + 0x48]                        // 0x007994a5    d95c2448
                         {disp8} fld          dword ptr [esp + 0x4c]                        // 0x007994a9    d944244c
                         fchs                                                               // 0x007994ad    d9e0
                         {disp8} fstp         dword ptr [esp + 0x4c]                        // 0x007994af    d95c244c
                         {disp32} mov         eax, dword ptr [esp + 0x00000084]             // 0x007994b3    8b842484000000
                         {disp8} fld          dword ptr [esp + 0x50]                        // 0x007994ba    d9442450
                         {disp32} mov         ecx, dword ptr [esp + 0x00000088]             // 0x007994be    8b8c2488000000
                         fchs                                                               // 0x007994c5    d9e0
                         {disp32} mov         edx, dword ptr [esp + 0x0000008c]             // 0x007994c7    8b94248c000000
                         {disp8} fstp         dword ptr [esp + 0x50]                        // 0x007994ce    d95c2450
                         {disp8} mov          dword ptr [esp + 0x60], eax                   // 0x007994d2    89442460
                         fxch                 st(1)                                         // 0x007994d6    d9c9
                         {disp8} mov          dword ptr [esp + 0x64], ecx                   // 0x007994d8    894c2464
                         fsub                 st, st(1)                                     // 0x007994dc    d8e1
                         {disp8} mov          dword ptr [esp + 0x68], edx                   // 0x007994de    89542468
                         fabs                                                               // 0x007994e2    d9e1
                         {disp32} fld         dword ptr [rdata_bytes + 0x2b5cc]             // 0x007994e4    d905cc458d00
                         {disp32} fdiv        dword ptr [data_bytes + 0x2641b4]             // 0x007994ea    d835b4a1c200
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2b5cc]             // 0x007994f0    d80dcc458d00
                         fdivp                st(1), st                                     // 0x007994f6    def9
                         {disp8} fstp         dword ptr [esp + 0x34]                        // 0x007994f8    d95c2434
                         fstp                 st(0)                                         // 0x007994fc    ddd8
                         {disp32} fsub        dword ptr [esp + 0x000000cc]                  // 0x007994fe    d8a424cc000000
                         fabs                                                               // 0x00799505    d9e1
                         {disp32} fld         dword ptr [rdata_bytes + 0x2b5cc]             // 0x00799507    d905cc458d00
                         {disp32} fdiv        dword ptr [data_bytes + 0x2641b8]             // 0x0079950d    d835b8a1c200
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2b5cc]             // 0x00799513    d80dcc458d00
                         fdivp                st(1), st                                     // 0x00799519    def9
                         {disp8} fstp         dword ptr [esp + 0x18]                        // 0x0079951b    d95c2418
_jmp_addr_0x0079951f:    {disp32} mov         esi, dword ptr [esp + 0x000001f4]             // 0x0079951f    8bb424f4010000
_jmp_addr_0x00799526:    xor.s                eax, eax                                      // 0x00799526    33c0
                         mov                  ecx, 0x00000020                               // 0x00799528    b920000000
                         mov                  edi, 0x00e06038                               // 0x0079952d    bf3860e000
                         rep stosd                                                          // 0x00799532    f3ab
                         {disp32} mov         eax, dword ptr [esp + 0x000001f8]             // 0x00799534    8b8424f8010000
                         push                 eax                                           // 0x0079953b    50
                         call                 _jmp_addr_0x00799df0                          // 0x0079953c    e8af080000
                         add                  esp, 0x04                                     // 0x00799541    83c404
                         cmp.s                eax, ebx                                      // 0x00799544    3bc3
                         {disp32} mov         dword ptr [esp + 0x000001f8], eax             // 0x00799546    898424f8010000
                         {disp32} je          _jmp_addr_0x00799dc2                          // 0x0079954d    0f846f080000
                         {disp32} mov         ax, word ptr [data_bytes + 0x440038]          // 0x00799553    66a13860e000
                         cmp                  ax, -0x0701                                   // 0x00799559    663dfff8
                         {disp32} je          _jmp_addr_0x007998c9                          // 0x0079955d    0f8466030000
                         cmp                  ax, -0x0700                                   // 0x00799563    663d00f9
                         {disp32} je          _jmp_addr_0x0079989f                          // 0x00799567    0f8432030000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x470104]        // 0x0079956d    8b0d0461e300
                         {disp32} mov         dword ptr [esp + 0x000000d4], ecx             // 0x00799573    898c24d4000000
                         {disp32} mov         dword ptr [esp + 0x000000d8], ebx             // 0x0079957a    899c24d8000000
                         {disp32} fild        qword ptr [esp + 0x000000d4]                  // 0x00799581    dfac24d4000000
                         push                 0x00e06038                                    // 0x00799588    683860e000
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0079958d    d95c2414
                         call                 _wcslen                                       // 0x00799591    e8ccce0200
                         {disp8} mov          edx, dword ptr [esp + 0x14]                   // 0x00799596    8b542414
                         add                  esp, 0x04                                     // 0x0079959a    83c404
                         push                 edx                                           // 0x0079959d    52
                         push                 eax                                           // 0x0079959e    50
                         push                 0x00e06038                                    // 0x0079959f    683860e000
                         mov.s                ecx, esi                                      // 0x007995a4    8bce
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x007995a6    e8857b0900
                         {disp32} fmul        dword ptr [rdata_bytes + 0x2611c]             // 0x007995ab    d80d1cf18c00
                         {disp32} mov         eax, dword ptr [esp + 0x000000a0]             // 0x007995b1    8b8424a0000000
                         cmp                  dword ptr [data_bytes + 0x47012c], eax        // 0x007995b8    39052c61e300
                         {disp32} fsubr       dword ptr [rdata_bytes + 0x2b5cc]             // 0x007995be    d82dcc458d00
                         {disp32} fmul        dword ptr [_rdata_float0p5]                   // 0x007995c4    d80db4a38a00
                         {disp8} fstp         dword ptr [esp + 0x70]                        // 0x007995ca    d95c2470
                         {disp32} jbe         _jmp_addr_0x00799526                          // 0x007995ce    0f8652ffffff
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x470104]        // 0x007995d4    8b0d0461e300
                         {disp32} mov         eax, dword ptr [esp + 0x000001fc]             // 0x007995da    8b8424fc010000
                         xor.s                edx, edx                                      // 0x007995e1    33d2
                         div                  ecx                                           // 0x007995e3    f7f1
                         cmp                  dword ptr [esp + 0x00000200], ebx             // 0x007995e5    399c2400020000
                         {disp32} mov         dword ptr [esp + 0x000000ec], ecx             // 0x007995ec    898c24ec000000
                         {disp32} mov         dword ptr [esp + 0x000000f0], ebx             // 0x007995f3    899c24f0000000
                         {disp32} mov         dword ptr [esp + 0x000000e0], ebx             // 0x007995fa    899c24e0000000
                         {disp32} fild        qword ptr [esp + 0x000000ec]                  // 0x00799601    dfac24ec000000
                         {disp8} fst          dword ptr [esp + 0x10]                        // 0x00799608    d9542410
                         {disp8} fmul         dword ptr [esp + 0x38]                        // 0x0079960c    d84c2438
                         {disp32} mov         dword ptr [esp + 0x000000dc], edx             // 0x00799610    899424dc000000
                         {disp32} fisub       dword ptr [esp + 0x000000dc]                  // 0x00799617    daa424dc000000
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x0079961e    d95c2414
                         {disp32} jne         _jmp_addr_0x007996dc                          // 0x00799622    0f85b4000000
                         {disp8} mov          ecx, dword ptr [esp + 0x10]                   // 0x00799628    8b4c2410
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0079962c    d9442414
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x00799630    d80590a38a00
                         push                 0x0000f000                                    // 0x00799636    6800f00000
                         push                 0x3fe00000                                    // 0x0079963b    680000e03f
                         push                 ecx                                           // 0x00799640    51
                         push                 ecx                                           // 0x00799641    51
                         fstp                 dword ptr [esp]                               // 0x00799642    d91c24
                         push                 ecx                                           // 0x00799645    51
                         {disp32} fld         dword ptr [esp + 0x00000084]                  // 0x00799646    d9842484000000
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x0079964d    d80590a38a00
                         fstp                 dword ptr [esp]                               // 0x00799653    d91c24
                         push                 0x00e06038                                    // 0x00799656    683860e000
                         call                 _wcslen                                       // 0x0079965b    e802ce0200
                         add                  esp, 0x04                                     // 0x00799660    83c404
                         push                 eax                                           // 0x00799663    50
                         push                 0x00e06038                                    // 0x00799664    683860e000
                         push                 0x00000100                                    // 0x00799669    6800010000
                         push                 ebp                                           // 0x0079966e    55
                         mov.s                ecx, esi                                      // 0x0079966f    8bce
                         call                 _jmp_addr_0x00831df0                          // 0x00799671    e87a870900
                         {disp32} mov         edx, dword ptr [data_bytes + 0x470104]        // 0x00799676    8b150461e300
                         {disp8} mov          eax, dword ptr [esp + 0x14]                   // 0x0079967c    8b442414
                         push                 0x0000fff0                                    // 0x00799680    68f0ff0000
                         push                 0x3fe00000                                    // 0x00799685    680000e03f
                         {disp32} mov         dword ptr [esp + 0x000000fc], edx             // 0x0079968a    899424fc000000
                         push                 ecx                                           // 0x00799691    51
                         {disp8} mov          ecx, dword ptr [esp + 0x7c]                   // 0x00799692    8b4c247c
                         {disp32} mov         dword ptr [esp + 0x00000104], ebx             // 0x00799696    899c2404010000
                         {disp32} fild        qword ptr [esp + 0x00000100]                  // 0x0079969d    dfac2400010000
                         fstp                 dword ptr [esp]                               // 0x007996a4    d91c24
                         push                 eax                                           // 0x007996a7    50
                         push                 ecx                                           // 0x007996a8    51
                         push                 0x00e06038                                    // 0x007996a9    683860e000
                         call                 _wcslen                                       // 0x007996ae    e8afcd0200
                         add                  esp, 0x04                                     // 0x007996b3    83c404
                         push                 eax                                           // 0x007996b6    50
                         push                 0x00e06038                                    // 0x007996b7    683860e000
                         push                 0x00000100                                    // 0x007996bc    6800010000
                         push                 ebp                                           // 0x007996c1    55
                         mov.s                ecx, esi                                      // 0x007996c2    8bce
                         call                 _jmp_addr_0x00831df0                          // 0x007996c4    e827870900
                         {disp8} fld          dword ptr [esp + 0x38]                        // 0x007996c9    d9442438
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x007996cd    d80590a38a00
                         {disp8} fstp         dword ptr [esp + 0x38]                        // 0x007996d3    d95c2438
                         {disp32} jmp         _jmp_addr_0x00799526                          // 0x007996d7    e94afeffff
_jmp_addr_0x007996dc:    {disp8} mov          edx, dword ptr [esp + 0x10]                   // 0x007996dc    8b542410
                         push                 0x00e06038                                    // 0x007996e0    683860e000
                         {disp32} mov         dword ptr [esp + 0x000000ac], edx             // 0x007996e5    899424ac000000
                         call                 _wcslen                                       // 0x007996ec    e871cd0200
                         {disp32} mov         ecx, dword ptr [esp + 0x000000ac]             // 0x007996f1    8b8c24ac000000
                         add                  esp, 0x04                                     // 0x007996f8    83c404
                         push                 ecx                                           // 0x007996fb    51
                         push                 eax                                           // 0x007996fc    50
                         push                 0x00e06038                                    // 0x007996fd    683860e000
                         mov.s                ecx, esi                                      // 0x00799702    8bce
                         call                 @GetStringWidth__13GatheringTextFPwif@20      // 0x00799704    e8277a0900
                         fstp                 st(0)                                         // 0x00799709    ddd8
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x470104]        // 0x0079970b    8b0d0461e300
                         mov.s                edx, ecx                                      // 0x00799711    8bd1
                         neg                  edx                                           // 0x00799713    f7da
                         {disp8} mov          dword ptr [esp + 0x10], edx                   // 0x00799715    89542410
                         {disp8} fild         dword ptr [esp + 0x10]                        // 0x00799719    db442410
                         {disp8} fcomp        dword ptr [esp + 0x14]                        // 0x0079971d    d85c2414
                         fnstsw               ax                                            // 0x00799721    dfe0
                         test                 ah, 0x41                                      // 0x00799723    f6c441
                         {disp32} je          _jmp_addr_0x0079988c                          // 0x00799726    0f8460010000
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x0079972c    d9442414
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x2b5cc]             // 0x00799730    d81dcc458d00
                         fnstsw               ax                                            // 0x00799736    dfe0
                         test                 ah, 0x41                                      // 0x00799738    f6c441
                         {disp32} je          _jmp_addr_0x0079988c                          // 0x0079973b    0f844b010000
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x00799741    d9442434
                         push                 ebx                                           // 0x00799745    53
                         {disp32} fmul        qword ptr [rdata_bytes + 0xf5f08]             // 0x00799746    dc0d08ef9900
                         push                 0x1                                           // 0x0079974c    6a01
                         {disp32} mov         dword ptr [esp + 0x00000104], ecx             // 0x0079974e    898c2404010000
                         {disp32} mov         dword ptr [esp + 0x00000108], ebx             // 0x00799755    899c2408010000
                         {disp8} fdiv         dword ptr [esp + 0x20]                        // 0x0079975c    d8742420
                         {disp32} lea         eax, dword ptr [esp + 0x00000084]             // 0x00799760    8d842484000000
                         push                 eax                                           // 0x00799767    50
                         {disp32} mov         byte ptr [esp + 0x00000088], bl               // 0x00799768    889c2488000000
                         {disp32} mov         byte ptr [esp + 0x00000089], bl               // 0x0079976f    889c2489000000
                         {disp32} mov         byte ptr [esp + 0x0000008a], bl               // 0x00799776    889c248a000000
                         {disp32} mov         byte ptr [esp + 0x0000008b], -0x01            // 0x0079977d    c684248b000000ff
                         {disp8} fstp         dword ptr [esp + 0x78]                        // 0x00799785    d95c2478
                         {disp8} fld          dword ptr [esp + 0x20]                        // 0x00799789    d9442420
                         {disp32} fsub        dword ptr [rdata_bytes + 0x1dca8]             // 0x0079978d    d825a86c8c00
                         {disp8} mov          edi, dword ptr [esp + 0x78]                   // 0x00799793    8b7c2478
                         push                 edi                                           // 0x00799797    57
                         push                 ecx                                           // 0x00799798    51
                         {disp8} fmul         dword ptr [esp + 0x2c]                        // 0x00799799    d84c242c
                         {disp8} fstp         dword ptr [esp + 0x24]                        // 0x0079979d    d95c2424
                         {disp32} fld         dword ptr [esp + 0x00000084]                  // 0x007997a1    d9842484000000
                         {disp32} fsub        dword ptr [rdata_bytes + 0x1dca8]             // 0x007997a8    d825a86c8c00
                         {disp8} fstp         dword ptr [esp + 0x28]                        // 0x007997ae    d95c2428
                         {disp32} fild        qword ptr [esp + 0x00000110]                  // 0x007997b2    dfac2410010000
                         {disp8} fmul         dword ptr [esp + 0x2c]                        // 0x007997b9    d84c242c
                         fstp                 dword ptr [esp]                               // 0x007997bd    d91c24
                         push                 0xbf333333                                    // 0x007997c0    68333333bf
                         {disp8} fld          dword ptr [esp + 0x28]                        // 0x007997c5    d9442428
                         push                 ecx                                           // 0x007997c9    51
                         {disp8} fadd         dword ptr [esp + 0x34]                        // 0x007997ca    d8442434
                         fstp                 dword ptr [esp]                               // 0x007997ce    d91c24
                         push                 ecx                                           // 0x007997d1    51
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x007997d2    d9442434
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x007997d6    d80590a38a00
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x007997dc    d84c2454
                         fstp                 dword ptr [esp]                               // 0x007997e0    d91c24
                         push                 0x00e06038                                    // 0x007997e3    683860e000
                         call                 _wcslen                                       // 0x007997e8    e875cc0200
                         add                  esp, 0x04                                     // 0x007997ed    83c404
                         push                 eax                                           // 0x007997f0    50
                         push                 0x00e06038                                    // 0x007997f1    683860e000
                         push                 0x1                                           // 0x007997f6    6a01
                         push                 0x2                                           // 0x007997f8    6a02
                         {disp8} lea          ecx, dword ptr [esp + 0x6c]                   // 0x007997fa    8d4c246c
                         push                 ecx                                           // 0x007997fe    51
                         mov.s                ecx, esi                                      // 0x007997ff    8bce
                         call                 _jmp_addr_0x008321c0                          // 0x00799801    e8ba890900
                         {disp32} mov         eax, dword ptr [data_bytes + 0x470104]        // 0x00799806    a10461e300
                         push                 ebx                                           // 0x0079980b    53
                         push                 0x1                                           // 0x0079980c    6a01
                         {disp32} mov         dword ptr [esp + 0x000000ec], eax             // 0x0079980e    898424ec000000
                         {disp32} mov         dword ptr [esp + 0x000000f0], ebx             // 0x00799815    899c24f0000000
                         {disp32} fild        qword ptr [esp + 0x000000ec]                  // 0x0079981c    dfac24ec000000
                         {disp32} lea         edx, dword ptr [esp + 0x00000088]             // 0x00799823    8d942488000000
                         push                 edx                                           // 0x0079982a    52
                         push                 edi                                           // 0x0079982b    57
                         {disp8} fmul         dword ptr [esp + 0x28]                        // 0x0079982c    d84c2428
                         push                 ecx                                           // 0x00799830    51
                         {disp8} mov          ecx, dword ptr [esp + 0x24]                   // 0x00799831    8b4c2424
                         {disp32} mov         byte ptr [esp + 0x00000094], bl               // 0x00799835    889c2494000000
                         fstp                 dword ptr [esp]                               // 0x0079983c    d91c24
                         push                 0xbf333333                                    // 0x0079983f    68333333bf
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x00799844    d944242c
                         push                 ecx                                           // 0x00799848    51
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x00799849    d84c2450
                         push                 ecx                                           // 0x0079984d    51
                         {disp32} mov         byte ptr [esp + 0x000000a1], -0x01            // 0x0079984e    c68424a1000000ff
                         {disp32} mov         byte ptr [esp + 0x000000a2], -0x01            // 0x00799856    c68424a2000000ff
                         fstp                 dword ptr [esp]                               // 0x0079985e    d91c24
                         push                 0x00e06038                                    // 0x00799861    683860e000
                         {disp32} mov         byte ptr [esp + 0x000000a7], -0x01            // 0x00799866    c68424a7000000ff
                         call                 _wcslen                                       // 0x0079986e    e8efcb0200
                         add                  esp, 0x04                                     // 0x00799873    83c404
                         push                 eax                                           // 0x00799876    50
                         push                 0x00e06038                                    // 0x00799877    683860e000
                         push                 0x1                                           // 0x0079987c    6a01
                         push                 0x2                                           // 0x0079987e    6a02
                         {disp8} lea          edx, dword ptr [esp + 0x6c]                   // 0x00799880    8d54246c
                         push                 edx                                           // 0x00799884    52
                         mov.s                ecx, esi                                      // 0x00799885    8bce
                         call                 _jmp_addr_0x008321c0                          // 0x00799887    e834890900
_jmp_addr_0x0079988c:    {disp8} fld          dword ptr [esp + 0x38]                        // 0x0079988c    d9442438
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x00799890    d80590a38a00
                         {disp8} fstp         dword ptr [esp + 0x38]                        // 0x00799896    d95c2438
                         {disp32} jmp         _jmp_addr_0x00799526                          // 0x0079989a    e987fcffff
_jmp_addr_0x0079989f:    xor.s                eax, eax                                      // 0x0079989f    33c0
                         {disp32} mov         ax, word ptr [data_bytes + 0x44003a]          // 0x007998a1    66a13a60e000
                         {disp32} lea         ecx, dword ptr [esp + 0x000001cc]             // 0x007998a7    8d8c24cc010000
                         sub                  eax, 0x0000f8fe                               // 0x007998ae    2dfef80000
                         push                 eax                                           // 0x007998b3    50
                         push                 0x00c2a2e0                                    // 0x007998b4    68e0a2c200
                         push                 ecx                                           // 0x007998b9    51
                         call                 _swprintf                                     // 0x007998ba    e8c0cb0200
                         add                  esp, 0x0c                                     // 0x007998bf    83c40c
                         mov                  edi, 0x00000001                               // 0x007998c2    bf01000000
                         {disp8} jmp          _jmp_addr_0x007998f0                          // 0x007998c7    eb27
_jmp_addr_0x007998c9:    xor.s                edx, edx                                      // 0x007998c9    33d2
                         {disp32} mov         dx, word ptr [data_bytes + 0x44003a]          // 0x007998cb    668b153a60e000
                         {disp32} lea         eax, dword ptr [esp + 0x000001cc]             // 0x007998d2    8d8424cc010000
                         sub                  edx, 0x0000f8fe                               // 0x007998d9    81eafef80000
                         push                 edx                                           // 0x007998df    52
                         push                 0x00c2a2d4                                    // 0x007998e0    68d4a2c200
                         push                 eax                                           // 0x007998e5    50
                         call                 _swprintf                                     // 0x007998e6    e894cb0200
                         add                  esp, 0x0c                                     // 0x007998eb    83c40c
                         xor.s                edi, edi                                      // 0x007998ee    33ff
_jmp_addr_0x007998f0:    {disp32} mov         ecx, dword ptr [esp + 0x000000a0]             // 0x007998f0    8b8c24a0000000
                         cmp                  dword ptr [data_bytes + 0x47012c], ecx        // 0x007998f7    390d2c61e300
                         {disp32} jbe         _jmp_addr_0x00799526                          // 0x007998fd    0f8623fcffff
                         cmp                  dword ptr [esp + 0x00000200], ebx             // 0x00799903    399c2400020000
                         {disp32} je          _jmp_addr_0x00799daf                          // 0x0079990a    0f849f040000
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x470104]        // 0x00799910    8b0d0461e300
                         {disp32} mov         eax, dword ptr [esp + 0x000001fc]             // 0x00799916    8b8424fc010000
                         xor.s                edx, edx                                      // 0x0079991d    33d2
                         div                  ecx                                           // 0x0079991f    f7f1
                         {disp8} mov          dword ptr [esp + 0x28], ecx                   // 0x00799921    894c2428
                         {disp8} mov          dword ptr [esp + 0x2c], ebx                   // 0x00799925    895c242c
                         {disp8} mov          dword ptr [esp + 0x20], ebx                   // 0x00799929    895c2420
                         {disp8} fild         qword ptr [esp + 0x28]                        // 0x0079992d    df6c2428
                         neg                  ecx                                           // 0x00799931    f7d9
                         {disp8} mov          dword ptr [esp + 0x6c], ecx                   // 0x00799933    894c246c
                         fld                  st(0)                                         // 0x00799937    d9c0
                         {disp8} fmul         dword ptr [esp + 0x38]                        // 0x00799939    d84c2438
                         {disp8} mov          dword ptr [esp + 0x1c], edx                   // 0x0079993d    8954241c
                         {disp8} fisub        dword ptr [esp + 0x1c]                        // 0x00799941    da64241c
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x00799945    d95c2410
                         {disp8} fild         dword ptr [esp + 0x6c]                        // 0x00799949    db44246c
                         {disp8} fcomp        dword ptr [esp + 0x10]                        // 0x0079994d    d85c2410
                         fnstsw               ax                                            // 0x00799951    dfe0
                         test                 ah, 0x41                                      // 0x00799953    f6c441
                         {disp32} je          _jmp_addr_0x00799dad                          // 0x00799956    0f8451040000
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x0079995c    d9442410
                         {disp32} fcomp       dword ptr [rdata_bytes + 0x2b5cc]             // 0x00799960    d81dcc458d00
                         fnstsw               ax                                            // 0x00799966    dfe0
                         test                 ah, 0x41                                      // 0x00799968    f6c441
                         {disp32} je          _jmp_addr_0x00799dad                          // 0x0079996b    0f843c040000
                         {disp8} fld          dword ptr [esp + 0x70]                        // 0x00799971    d9442470
                         {disp32} fsub        dword ptr [rdata_bytes + 0x1dca8]             // 0x00799975    d825a86c8c00
                         {disp8} fmul         dword ptr [esp + 0x34]                        // 0x0079997b    d84c2434
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x0079997f    d9442410
                         {disp32} fsub        dword ptr [rdata_bytes + 0x1dca8]             // 0x00799983    d825a86c8c00
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x00799989    d84c2418
                         fld                  st(0)                                         // 0x0079998d    d9c0
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x0079998f    d84c2448
                         {disp32} fstp        dword ptr [esp + 0x00000090]                  // 0x00799993    d99c2490000000
                         fld                  st(0)                                         // 0x0079999a    d9c0
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x0079999c    d84c244c
                         {disp32} fstp        dword ptr [esp + 0x00000094]                  // 0x007999a0    d99c2494000000
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x007999a7    d84c2450
                         {disp32} fstp        dword ptr [esp + 0x00000098]                  // 0x007999ab    d99c2498000000
                         fld                  st(0)                                         // 0x007999b2    d9c0
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x007999b4    d84c2454
                         {disp32} fstp        dword ptr [esp + 0x000001b8]                  // 0x007999b8    d99c24b8010000
                         fld                  st(0)                                         // 0x007999bf    d9c0
                         {disp8} fmul         dword ptr [esp + 0x58]                        // 0x007999c1    d84c2458
                         {disp32} fstp        dword ptr [esp + 0x000001bc]                  // 0x007999c5    d99c24bc010000
                         {disp8} fmul         dword ptr [esp + 0x5c]                        // 0x007999cc    d84c245c
                         {disp32} fld         dword ptr [esp + 0x000001b8]                  // 0x007999d0    d98424b8010000
                         {disp8} fadd         dword ptr [esp + 0x60]                        // 0x007999d7    d8442460
                         {disp32} fstp        dword ptr [esp + 0x0000017c]                  // 0x007999db    d99c247c010000
                         {disp32} fld         dword ptr [esp + 0x000001bc]                  // 0x007999e2    d98424bc010000
                         {disp8} fadd         dword ptr [esp + 0x64]                        // 0x007999e9    d8442464
                         {disp32} fstp        dword ptr [esp + 0x00000180]                  // 0x007999ed    d99c2480010000
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x007999f4    d8442468
                         {disp32} fld         dword ptr [esp + 0x0000017c]                  // 0x007999f8    d984247c010000
                         {disp32} fadd        dword ptr [esp + 0x00000090]                  // 0x007999ff    d8842490000000
                         {disp32} fstp        dword ptr [esp + 0x00000084]                  // 0x00799a06    d99c2484000000
                         {disp32} fld         dword ptr [esp + 0x00000180]                  // 0x00799a0d    d9842480010000
                         {disp32} fadd        dword ptr [esp + 0x00000094]                  // 0x00799a14    d8842494000000
                         {disp32} fstp        dword ptr [esp + 0x00000088]                  // 0x00799a1b    d99c2488000000
                         {disp32} fadd        dword ptr [esp + 0x00000098]                  // 0x00799a22    d8842498000000
                         {disp32} fstp        dword ptr [esp + 0x0000008c]                  // 0x00799a29    d99c248c000000
                         {disp8} fld          dword ptr [esp + 0x18]                        // 0x00799a30    d9442418
                         {disp32} fmul        dword ptr [rdata_bytes + 0x91608]             // 0x00799a34    d80d08a69300
                         fld                  st(0)                                         // 0x00799a3a    d9c0
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x00799a3c    d84c2448
                         {disp32} fstp        dword ptr [esp + 0x00000170]                  // 0x00799a40    d99c2470010000
                         fld                  st(0)                                         // 0x00799a47    d9c0
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x00799a49    d84c244c
                         {disp32} fstp        dword ptr [esp + 0x00000174]                  // 0x00799a4d    d99c2474010000
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x00799a54    d84c2450
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x00799a58    d9442434
                         {disp32} fmul        dword ptr [rdata_bytes + 0x91608]             // 0x00799a5c    d80d08a69300
                         fld                  st(0)                                         // 0x00799a62    d9c0
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x00799a64    d84c2454
                         {disp32} fstp        dword ptr [esp + 0x00000194]                  // 0x00799a68    d99c2494010000
                         fld                  st(0)                                         // 0x00799a6f    d9c0
                         {disp8} fmul         dword ptr [esp + 0x58]                        // 0x00799a71    d84c2458
                         {disp32} fstp        dword ptr [esp + 0x00000198]                  // 0x00799a75    d99c2498010000
                         {disp8} fmul         dword ptr [esp + 0x5c]                        // 0x00799a7c    d84c245c
                         {disp32} fld         dword ptr [esp + 0x00000194]                  // 0x00799a80    d9842494010000
                         {disp8} fadd         dword ptr [esp + 0x60]                        // 0x00799a87    d8442460
                         {disp32} fstp        dword ptr [esp + 0x00000158]                  // 0x00799a8b    d99c2458010000
                         {disp32} fld         dword ptr [esp + 0x00000198]                  // 0x00799a92    d9842498010000
                         {disp8} fadd         dword ptr [esp + 0x64]                        // 0x00799a99    d8442464
                         {disp32} fstp        dword ptr [esp + 0x0000015c]                  // 0x00799a9d    d99c245c010000
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x00799aa4    d8442468
                         {disp32} fld         dword ptr [esp + 0x00000158]                  // 0x00799aa8    d9842458010000
                         {disp32} fadd        dword ptr [esp + 0x00000170]                  // 0x00799aaf    d8842470010000
                         {disp32} fstp        dword ptr [esp + 0x00000164]                  // 0x00799ab6    d99c2464010000
                         {disp32} fld         dword ptr [esp + 0x0000015c]                  // 0x00799abd    d984245c010000
                         {disp32} fadd        dword ptr [esp + 0x00000174]                  // 0x00799ac4    d8842474010000
                         {disp32} fstp        dword ptr [esp + 0x00000168]                  // 0x00799acb    d99c2468010000
                         fadd                 st, st(1)                                     // 0x00799ad2    d8c1
                         {disp32} fstp        dword ptr [esp + 0x0000016c]                  // 0x00799ad4    d99c246c010000
                         fstp                 st(0)                                         // 0x00799adb    ddd8
                         {disp8} fld          dword ptr [esp + 0x18]                        // 0x00799add    d9442418
                         {disp32} fmul        dword ptr [rdata_bytes + 0x1dca8]             // 0x00799ae1    d80da86c8c00
                         fld                  st(0)                                         // 0x00799ae7    d9c0
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x00799ae9    d84c2448
                         {disp32} fstp        dword ptr [esp + 0x000001ac]                  // 0x00799aed    d99c24ac010000
                         fld                  st(0)                                         // 0x00799af4    d9c0
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x00799af6    d84c244c
                         {disp32} fstp        dword ptr [esp + 0x000001b0]                  // 0x00799afa    d99c24b0010000
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x00799b01    d84c2450
                         {disp8} fld          dword ptr [esp + 0x34]                        // 0x00799b05    d9442434
                         {disp32} fmul        dword ptr [rdata_bytes + 0x1dca8]             // 0x00799b09    d80da86c8c00
                         fld                  st(0)                                         // 0x00799b0f    d9c0
                         {disp8} fmul         dword ptr [esp + 0x54]                        // 0x00799b11    d84c2454
                         {disp32} fstp        dword ptr [esp + 0x00000134]                  // 0x00799b15    d99c2434010000
                         fld                  st(0)                                         // 0x00799b1c    d9c0
                         {disp8} fmul         dword ptr [esp + 0x58]                        // 0x00799b1e    d84c2458
                         {disp32} fstp        dword ptr [esp + 0x00000138]                  // 0x00799b22    d99c2438010000
                         {disp8} fmul         dword ptr [esp + 0x5c]                        // 0x00799b29    d84c245c
                         {disp32} fld         dword ptr [esp + 0x00000134]                  // 0x00799b2d    d9842434010000
                         {disp8} fadd         dword ptr [esp + 0x60]                        // 0x00799b34    d8442460
                         {disp32} fstp        dword ptr [esp + 0x00000188]                  // 0x00799b38    d99c2488010000
                         {disp32} fld         dword ptr [esp + 0x00000138]                  // 0x00799b3f    d9842438010000
                         {disp8} fadd         dword ptr [esp + 0x64]                        // 0x00799b46    d8442464
                         {disp32} fstp        dword ptr [esp + 0x0000018c]                  // 0x00799b4a    d99c248c010000
                         {disp8} fadd         dword ptr [esp + 0x68]                        // 0x00799b51    d8442468
                         {disp32} fld         dword ptr [esp + 0x00000188]                  // 0x00799b55    d9842488010000
                         {disp32} fadd        dword ptr [esp + 0x000001ac]                  // 0x00799b5c    d88424ac010000
                         {disp32} fstp        dword ptr [esp + 0x000001a0]                  // 0x00799b63    d99c24a0010000
                         {disp32} fld         dword ptr [esp + 0x0000018c]                  // 0x00799b6a    d984248c010000
                         {disp32} fadd        dword ptr [esp + 0x000001b0]                  // 0x00799b71    d88424b0010000
                         {disp32} fstp        dword ptr [esp + 0x000001a4]                  // 0x00799b78    d99c24a4010000
                         fadd                 st, st(1)                                     // 0x00799b7f    d8c1
                         {disp32} fstp        dword ptr [esp + 0x000001a8]                  // 0x00799b81    d99c24a8010000
                         fstp                 st(0)                                         // 0x00799b88    ddd8
                         fld                  st(0)                                         // 0x00799b8a    d9c0
                         {disp8} fmul         dword ptr [esp + 0x48]                        // 0x00799b8c    d84c2448
                         {disp32} fstp        dword ptr [esp + 0x00000140]                  // 0x00799b90    d99c2440010000
                         fld                  st(0)                                         // 0x00799b97    d9c0
                         {disp8} fmul         dword ptr [esp + 0x4c]                        // 0x00799b99    d84c244c
                         {disp32} fstp        dword ptr [esp + 0x00000144]                  // 0x00799b9d    d99c2444010000
                         {disp8} fmul         dword ptr [esp + 0x50]                        // 0x00799ba4    d84c2450
                         {disp32} fld         dword ptr [esp + 0x00000140]                  // 0x00799ba8    d9842440010000
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x00799baf    d84c2418
                         {disp32} fstp        dword ptr [esp + 0x0000014c]                  // 0x00799bb3    d99c244c010000
                         {disp32} fld         dword ptr [esp + 0x00000144]                  // 0x00799bba    d9842444010000
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x00799bc1    d84c2418
                         {disp32} fstp        dword ptr [esp + 0x00000150]                  // 0x00799bc5    d99c2450010000
                         {disp32} lea         edx, dword ptr [esp + 0x0000009c]             // 0x00799bcc    8d94249c000000
                         {disp8} fmul         dword ptr [esp + 0x18]                        // 0x00799bd3    d84c2418
                         push                 edx                                           // 0x00799bd7    52
                         {disp32} fld         dword ptr [esp + 0x00000150]                  // 0x00799bd8    d9842450010000
                         {disp32} lea         eax, dword ptr [esp + 0x000000c0]             // 0x00799bdf    8d8424c0000000
                         {disp32} fadd        dword ptr [esp + 0x00000088]                  // 0x00799be6    d8842488000000
                         push                 eax                                           // 0x00799bed    50
                         {disp32} lea         edx, dword ptr [esp + 0x000000bc]             // 0x00799bee    8d9424bc000000
                         {disp32} lea         ecx, dword ptr [esp + 0x0000016c]             // 0x00799bf5    8d8c246c010000
                         {disp32} fstp        dword ptr [esp + 0x000000d0]                  // 0x00799bfc    d99c24d0000000
                         {disp32} fld         dword ptr [esp + 0x00000158]                  // 0x00799c03    d9842458010000
                         {disp32} fadd        dword ptr [esp + 0x00000090]                  // 0x00799c0a    d8842490000000
                         {disp32} fstp        dword ptr [esp + 0x000000d4]                  // 0x00799c11    d99c24d4000000
                         {disp32} fadd        dword ptr [esp + 0x00000094]                  // 0x00799c18    d8842494000000
                         {disp32} fstp        dword ptr [esp + 0x000000d8]                  // 0x00799c1f    d99c24d8000000
                         call                 _jmp_addr_0x00819490                          // 0x00799c26    e865f80700
                         test                 eax, eax                                      // 0x00799c2b    85c0
                         {disp32} je          _jmp_addr_0x00799daf                          // 0x00799c2d    0f847c010000
                         {disp32} lea         ecx, dword ptr [esp + 0x0000009c]             // 0x00799c33    8d8c249c000000
                         push                 ecx                                           // 0x00799c3a    51
                         {disp32} lea         edx, dword ptr [esp + 0x000000bc]             // 0x00799c3b    8d9424bc000000
                         push                 edx                                           // 0x00799c42    52
                         {disp32} lea         edx, dword ptr [esp + 0x000000c8]             // 0x00799c43    8d9424c8000000
                         {disp32} lea         ecx, dword ptr [esp + 0x000001a8]             // 0x00799c4a    8d8c24a8010000
                         call                 _jmp_addr_0x00819490                          // 0x00799c51    e83af80700
                         test                 eax, eax                                      // 0x00799c56    85c0
                         {disp32} je          _jmp_addr_0x00799daf                          // 0x00799c58    0f8451010000
                         {disp32} lea         eax, dword ptr [esp + 0x000000b0]             // 0x00799c5e    8d8424b0000000
                         push                 eax                                           // 0x00799c65    50
                         {disp32} lea         ecx, dword ptr [esp + 0x000000a8]             // 0x00799c66    8d8c24a8000000
                         push                 ecx                                           // 0x00799c6d    51
                         {disp32} lea         edx, dword ptr [esp + 0x000001d0]             // 0x00799c6e    8d9424d0010000
                         {disp32} lea         ecx, dword ptr [esp + 0x0000008c]             // 0x00799c75    8d8c248c000000
                         call                 _jmp_addr_0x00819490                          // 0x00799c7c    e80ff80700
                         cmp                  eax, 0x02                                     // 0x00799c81    83f802
                         {disp32} jne         _jmp_addr_0x00799daf                          // 0x00799c84    0f8525010000
                         {disp32} lea         edx, dword ptr [esp + 0x0000009c]             // 0x00799c8a    8d94249c000000
                         push                 edx                                           // 0x00799c91    52
                         {disp32} lea         eax, dword ptr [esp + 0x000000c8]             // 0x00799c92    8d8424c8000000
                         push                 eax                                           // 0x00799c99    50
                         {disp32} lea         edx, dword ptr [esp + 0x000001cc]             // 0x00799c9a    8d9424cc010000
                         {disp32} lea         ecx, dword ptr [esp + 0x000000d0]             // 0x00799ca1    8d8c24d0000000
                         call                 _jmp_addr_0x00819490                          // 0x00799ca8    e8e3f70700
                         cmp                  eax, 0x02                                     // 0x00799cad    83f802
                         {disp32} jne         _jmp_addr_0x00799daf                          // 0x00799cb0    0f85f9000000
                         {disp32} fld         dword ptr [esp + 0x000000c4]                  // 0x00799cb6    d98424c4000000
                         {disp8} mov          byte ptr [esp + 0x78], -0x01                  // 0x00799cbd    c6442478ff
                         {disp32} fsub        dword ptr [esp + 0x000000a4]                  // 0x00799cc2    d8a424a4000000
                         {disp8} mov          byte ptr [esp + 0x79], -0x01                  // 0x00799cc9    c6442479ff
                         {disp8} mov          byte ptr [esp + 0x7a], -0x01                  // 0x00799cce    c644247aff
                         {disp8} mov          byte ptr [esp + 0x7b], -0x01                  // 0x00799cd3    c644247bff
                         {disp8} mov          byte ptr [esp + 0x74], bl                     // 0x00799cd8    885c2474
                         {disp8} mov          byte ptr [esp + 0x75], bl                     // 0x00799cdc    885c2475
                         {disp8} mov          byte ptr [esp + 0x76], bl                     // 0x00799ce0    885c2476
                         {disp8} mov          byte ptr [esp + 0x77], -0x01                  // 0x00799ce4    c6442477ff
                         call                 _jmp_addr_0x007a1400                          // 0x00799ce9    e812770000
                         cdq                                                                // 0x00799cee    99
                         xor.s                eax, edx                                      // 0x00799cef    33c2
                         sub.s                eax, edx                                      // 0x00799cf1    2bc2
                         cmp.s                edi, ebx                                      // 0x00799cf3    3bfb
                         {disp8} mov          dword ptr [esp + 0x6c], eax                   // 0x00799cf5    8944246c
                         {disp32} mov         dword ptr [esp + 0x000000ac], 0x00000000      // 0x00799cf9    c78424ac00000000000000
                         {disp8} fild         dword ptr [esp + 0x6c]                        // 0x00799d04    db44246c
                         {disp8} fstp         dword ptr [esp + 0x14]                        // 0x00799d08    d95c2414
                         {disp8} fld          dword ptr [esp + 0x14]                        // 0x00799d0c    d9442414
                         fadd.s               st(0), st(0)                                  // 0x00799d10    dcc0
                         {disp32} fadd        dword ptr [esp + 0x000000a4]                  // 0x00799d12    d88424a4000000
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x00799d19    d95c2410
                         {disp8} je           _jmp_addr_0x00799d2b                          // 0x00799d1d    740c
                         {disp8} fld          dword ptr [esp + 0x10]                        // 0x00799d1f    d9442410
                         {disp8} fadd         dword ptr [esp + 0x14]                        // 0x00799d23    d8442414
                         {disp8} fstp         dword ptr [esp + 0x10]                        // 0x00799d27    d95c2410
_jmp_addr_0x00799d2b:    {disp32} fld         dword ptr [esp + 0x000000b0]                  // 0x00799d2b    d98424b0000000
                         {disp8} lea          ecx, dword ptr [esp + 0x74]                   // 0x00799d32    8d4c2474
                         {disp32} fsub        dword ptr [__real@3f333333]                   // 0x00799d36    d82538b28a00
                         push                 ecx                                           // 0x00799d3c    51
                         {disp8} lea          edx, dword ptr [esp + 0x7c]                   // 0x00799d3d    8d54247c
                         push                 edx                                           // 0x00799d41    52
                         {disp32} mov         edx, dword ptr [esp + 0x000000c8]             // 0x00799d42    8b9424c8000000
                         {disp32} lea         eax, dword ptr [esp + 0x000000b4]             // 0x00799d49    8d8424b4000000
                         push                 eax                                           // 0x00799d50    50
                         {disp32} mov         eax, dword ptr [esp + 0x000000c4]             // 0x00799d51    8b8424c4000000
                         {disp8} lea          ecx, dword ptr [esp + 0x1c]                   // 0x00799d58    8d4c241c
                         push                 ecx                                           // 0x00799d5c    51
                         push                 ecx                                           // 0x00799d5d    51
                         {disp8} mov          ecx, dword ptr [esp + 0x28]                   // 0x00799d5e    8b4c2428
                         fstp                 dword ptr [esp]                               // 0x00799d62    d91c24
                         push                 eax                                           // 0x00799d65    50
                         push                 eax                                           // 0x00799d66    50
                         push                 eax                                           // 0x00799d67    50
                         {disp32} mov         eax, dword ptr [esp + 0x000000dc]             // 0x00799d68    8b8424dc000000
                         push                 edx                                           // 0x00799d6f    52
                         push                 eax                                           // 0x00799d70    50
                         push                 eax                                           // 0x00799d71    50
                         {disp32} mov         eax, dword ptr [esp + 0x000000e0]             // 0x00799d72    8b8424e0000000
                         push                 eax                                           // 0x00799d79    50
                         push                 0x40000000                                    // 0x00799d7a    6800000040
                         push                 ecx                                           // 0x00799d7f    51
                         push                 0x3f800000                                    // 0x00799d80    680000803f
                         {disp32} lea         edx, dword ptr [esp + 0x00000208]             // 0x00799d85    8d942408020000
                         push                 0x3f800000                                    // 0x00799d8c    680000803f
                         push                 edx                                           // 0x00799d91    52
                         call                 _jmp_addr_0x005760c0                          // 0x00799d92    e829c3ddff
                         {disp8} fld          dword ptr [esp + 0x7c]                        // 0x00799d97    d944247c
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x00799d9b    d80590a38a00
                         add                  esp, 0x44                                     // 0x00799da1    83c444
                         {disp8} fstp         dword ptr [esp + 0x38]                        // 0x00799da4    d95c2438
                         {disp32} jmp         _jmp_addr_0x00799526                          // 0x00799da8    e979f7ffff
_jmp_addr_0x00799dad:    fstp                 st(0)                                         // 0x00799dad    ddd8
_jmp_addr_0x00799daf:    {disp8} fld          dword ptr [esp + 0x38]                        // 0x00799daf    d9442438
                         {disp32} fadd        dword ptr [_rdata_float1p0]                   // 0x00799db3    d80590a38a00
                         {disp8} fstp         dword ptr [esp + 0x38]                        // 0x00799db9    d95c2438
                         {disp32} jmp         _jmp_addr_0x00799526                          // 0x00799dbd    e964f7ffff
_jmp_addr_0x00799dc2:    {disp32} mov         ecx, dword ptr [esp + 0x000001f0]             // 0x00799dc2    8b8c24f0010000
                         call                 _jmp_addr_0x00839010                          // 0x00799dc9    e842f20900
                         mov.s                ecx, eax                                      // 0x00799dce    8bc8
                         call                 _jmp_addr_0x00870990                          // 0x00799dd0    e8bb6b0d00
                         {disp32} mov         eax, dword ptr [data_bytes + 0x47012c]        // 0x00799dd5    a12c61e300
                         imul                 eax, dword ptr [data_bytes + 0x470104]        // 0x00799dda    0faf050461e300
                         pop                  edi                                           // 0x00799de1    5f
                         pop                  esi                                           // 0x00799de2    5e
                         pop                  ebp                                           // 0x00799de3    5d
                         pop                  ebx                                           // 0x00799de4    5b
                         add                  esp, 0x000001dc                               // 0x00799de5    81c4dc010000
                         ret                                                                // 0x00799deb    c3
                         nop                                                                // 0x00799dec    90
                         nop                                                                // 0x00799ded    90
                         nop                                                                // 0x00799dee    90
                         nop                                                                // 0x00799def    90
_jmp_addr_0x00799df0:    push                 esi                                           // 0x00799df0    56
                         push                 edi                                           // 0x00799df1    57
                         {disp8} mov          edi, dword ptr [esp + 0x0c]                   // 0x00799df2    8b7c240c
                         xor.s                esi, esi                                      // 0x00799df6    33f6
                         mov.s                ecx, edi                                      // 0x00799df8    8bcf
_jmp_addr_0x00799dfa:    cmp                  word ptr [ecx], 0x3c                          // 0x00799dfa    6683393c
                         {disp8} jne          _jmp_addr_0x00799e10                          // 0x00799dfe    7510
                         xor.s                eax, eax                                      // 0x00799e00    33c0
                         {disp8} mov          ax, word ptr [ecx + 0x02]                     // 0x00799e02    668b4102
                         cmp                  eax, 0x45                                     // 0x00799e06    83f845
                         {disp8} je           _jmp_addr_0x00799e3f                          // 0x00799e09    7434
                         cmp                  eax, 0x4e                                     // 0x00799e0b    83f84e
                         {disp8} je           _jmp_addr_0x00799e1e                          // 0x00799e0e    740e
_jmp_addr_0x00799e10:    inc                  esi                                           // 0x00799e10    46
                         add                  ecx, 0x2                                      // 0x00799e11    83c102
                         cmp                  esi, 0x40                                     // 0x00799e14    83fe40
                         .byte                0x72, 0xe1// {disp8} jb _jmp_addr_0x00799dfa  // 0x00799e17    72e1
                         pop                  edi                                           // 0x00799e19    5f
                         xor.s                eax, eax                                      // 0x00799e1a    33c0
                         pop                  esi                                           // 0x00799e1c    5e
                         ret                                                                // 0x00799e1d    c3
_jmp_addr_0x00799e1e:    push                 esi                                           // 0x00799e1e    56
                         push                 edi                                           // 0x00799e1f    57
                         push                 0x00e06038                                    // 0x00799e20    683860e000
                         call                 _wcsncpy                                      // 0x00799e25    e8fbc50200
                         {disp32} mov         eax, dword ptr [data_bytes + 0x47012c]        // 0x00799e2a    a12c61e300
                         add                  esp, 0x0c                                     // 0x00799e2f    83c40c
                         inc                  eax                                           // 0x00799e32    40
                         {disp32} mov         dword ptr [data_bytes + 0x47012c], eax        // 0x00799e33    a32c61e300
                         {disp8} lea          eax, dword ptr [edi + esi * 0x2 + 0x06]       // 0x00799e38    8d447706
                         pop                  edi                                           // 0x00799e3c    5f
                         pop                  esi                                           // 0x00799e3d    5e
                         ret                                                                // 0x00799e3e    c3
_jmp_addr_0x00799e3f:    push                 esi                                           // 0x00799e3f    56
                         push                 edi                                           // 0x00799e40    57
                         push                 0x00e06038                                    // 0x00799e41    683860e000
                         call                 _wcsncpy                                      // 0x00799e46    e8dac50200
                         add                  esp, 0x0c                                     // 0x00799e4b    83c40c
                         pop                  edi                                           // 0x00799e4e    5f
                         xor.s                eax, eax                                      // 0x00799e4f    33c0
                         pop                  esi                                           // 0x00799e51    5e
                         ret                                                                // 0x00799e52    c3
                         nop                                                                // 0x00799e53    90
                         nop                                                                // 0x00799e54    90
                         nop                                                                // 0x00799e55    90
                         nop                                                                // 0x00799e56    90
                         nop                                                                // 0x00799e57    90
                         nop                                                                // 0x00799e58    90
                         nop                                                                // 0x00799e59    90
                         nop                                                                // 0x00799e5a    90
                         nop                                                                // 0x00799e5b    90
                         nop                                                                // 0x00799e5c    90
                         nop                                                                // 0x00799e5d    90
                         nop                                                                // 0x00799e5e    90
                         nop                                                                // 0x00799e5f    90
_jmp_addr_0x00799e60:    {disp32} mov         eax, dword ptr [ecx + 0x000000e0]             // 0x00799e60    8b81e0000000
                         test                 eax, eax                                      // 0x00799e66    85c0
                         {disp8} jne          _jmp_addr_0x00799e6f                          // 0x00799e68    7505
                         mov                  eax, dword ptr [ecx]                          // 0x00799e6a    8b01
                         call                 dword ptr [eax + 0x24]                        // 0x00799e6c    ff5024
_jmp_addr_0x00799e6f:    {disp32} mov         al, byte ptr [data_bytes + 0x470130]          // 0x00799e6f    a03061e300
                         inc                  al                                            // 0x00799e74    fec0
                         cmp                  al, 0x20                                      // 0x00799e76    3c20
                         {disp32} mov         byte ptr [data_bytes + 0x470130], al          // 0x00799e78    a23061e300
                         {disp8} jbe          _jmp_addr_0x00799e86                          // 0x00799e7d    7607
                         {disp32} mov         byte ptr [data_bytes + 0x470130], 0x00        // 0x00799e7f    c6053061e30000
_jmp_addr_0x00799e86:    {disp32} fld         dword ptr [data_bytes + 0x470134]             // 0x00799e86    d9053461e300
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x00799e8c    d81d98a38a00
                         fnstsw               ax                                            // 0x00799e92    dfe0
                         test                 ah, 0x41                                      // 0x00799e94    f6c441
                         {disp8} jne          _jmp_addr_0x00799ec2                          // 0x00799e97    7529
                         {disp32} fild        dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x00799e99    db053481c300
                         {disp32} fsubr       dword ptr [data_bytes + 0x470134]             // 0x00799e9f    d82d3461e300
                         {disp32} fst         dword ptr [data_bytes + 0x470134]             // 0x00799ea5    d9153461e300
                         {disp32} fcomp       dword ptr [_rdata_float0p0]                   // 0x00799eab    d81d98a38a00
                         fnstsw               ax                                            // 0x00799eb1    dfe0
                         test                 ah, 0x01                                      // 0x00799eb3    f6c401
                         {disp8} je           _jmp_addr_0x00799ec2                          // 0x00799eb6    740a
                         {disp32} mov         dword ptr [data_bytes + 0x470134], 0x00000000 // 0x00799eb8    c7053461e30000000000
_jmp_addr_0x00799ec2:    ret                                                                // 0x00799ec2    c3
                         nop                                                                // 0x00799ec3    90
                         nop                                                                // 0x00799ec4    90
                         nop                                                                // 0x00799ec5    90
                         nop                                                                // 0x00799ec6    90
                         nop                                                                // 0x00799ec7    90
                         nop                                                                // 0x00799ec8    90
                         nop                                                                // 0x00799ec9    90
                         nop                                                                // 0x00799eca    90
                         nop                                                                // 0x00799ecb    90
                         nop                                                                // 0x00799ecc    90
                         nop                                                                // 0x00799ecd    90
                         nop                                                                // 0x00799ece    90
                         nop                                                                // 0x00799ecf    90
?DrawHand@GameOptionsRoom@@UAEXXZ:
                         {disp32} mov         al, byte ptr [data_bytes + 0x47011c]          // 0x00799ed0    a01c61e300
                         test                 al, al                                        // 0x00799ed5    84c0
                         {disp8} je           _jmp_addr_0x00799f32                          // 0x00799ed7    7459
                         {disp32} mov         al, byte ptr [data_bytes + 0x43ffe0]          // 0x00799ed9    a0e05fe000
                         test                 al, al                                        // 0x00799ede    84c0
                         {disp8} jne          _jmp_addr_0x00799f32                          // 0x00799ee0    7550
                         {disp32} mov         ecx, dword ptr [_game]                        // 0x00799ee2    8b0d5c19d000
                         push                 esi                                           // 0x00799ee8    56
                         call                 ?MyInterface@GGame@@QAEPAVGInterface@@XZ      // 0x00799ee9    e862b9dbff
                         {disp32} mov         esi, dword ptr [eax + 0x000003a0]             // 0x00799eee    8bb0a0030000
                         test                 esi, esi                                      // 0x00799ef4    85f6
                         {disp8} je           _jmp_addr_0x00799f2a                          // 0x00799ef6    7432
                         {disp32} mov         al, byte ptr [_FrontEnd_00cd0620]             // 0x00799ef8    a02006cd00
                         test                 al, al                                        // 0x00799efd    84c0
                         {disp8} jne          _jmp_addr_0x00799f2a                          // 0x00799eff    7529
                         test                 byte ptr [data_bytes + 0x4bf218], 0x02        // 0x00799f01    f6051852e80002
                         {disp8} jne          _jmp_addr_0x00799f2a                          // 0x00799f08    7520
                         mov                  eax, dword ptr [esi]                          // 0x00799f0a    8b06
                         mov.s                ecx, esi                                      // 0x00799f0c    8bce
                         call                 dword ptr [eax + 0x18]                        // 0x00799f0e    ff5018
                         {disp32} mov         ecx, dword ptr [esi + 0x0000482c]             // 0x00799f11    8b8e2c480000
                         mov                  eax, dword ptr [ecx]                          // 0x00799f17    8b01
                         push                 0x0                                           // 0x00799f19    6a00
                         mov                  edx, 0xffe0e0e0                               // 0x00799f1b    bae0e0e0ff
                         call                 dword ptr [eax + 0x2c]                        // 0x00799f20    ff502c
                         mov.s                ecx, esi                                      // 0x00799f23    8bce
                         call                 _jmp_addr_0x0046d210                          // 0x00799f25    e8e632cdff
_jmp_addr_0x00799f2a:    {disp32} mov         byte ptr [data_bytes + 0x47011c], 0x00        // 0x00799f2a    c6051c61e30000
                         pop                  esi                                           // 0x00799f31    5e
_jmp_addr_0x00799f32:    ret                                                                // 0x00799f32    c3
                         nop                                                                // 0x00799f33    90
                         nop                                                                // 0x00799f34    90
                         nop                                                                // 0x00799f35    90
                         nop                                                                // 0x00799f36    90
                         nop                                                                // 0x00799f37    90
                         nop                                                                // 0x00799f38    90
                         nop                                                                // 0x00799f39    90
                         nop                                                                // 0x00799f3a    90
                         nop                                                                // 0x00799f3b    90
                         nop                                                                // 0x00799f3c    90
                         nop                                                                // 0x00799f3d    90
                         nop                                                                // 0x00799f3e    90
                         nop                                                                // 0x00799f3f    90
                         ret                                                                // 0x00799f40    c3
                         nop                                                                // 0x00799f41    90
                         nop                                                                // 0x00799f42    90
                         nop                                                                // 0x00799f43    90
                         nop                                                                // 0x00799f44    90
                         nop                                                                // 0x00799f45    90
                         nop                                                                // 0x00799f46    90
                         nop                                                                // 0x00799f47    90
                         nop                                                                // 0x00799f48    90
                         nop                                                                // 0x00799f49    90
                         nop                                                                // 0x00799f4a    90
                         nop                                                                // 0x00799f4b    90
                         nop                                                                // 0x00799f4c    90
                         nop                                                                // 0x00799f4d    90
                         nop                                                                // 0x00799f4e    90
                         nop                                                                // 0x00799f4f    90
                         {disp32} mov         eax, dword ptr [ecx + 0x000000c4]             // 0x00799f50    8b81c4000000
                         {disp32} mov         eax, dword ptr [eax + 0x00000124]             // 0x00799f56    8b8024010000
                         xor.s                ecx, ecx                                      // 0x00799f5c    33c9
                         cmp.s                eax, ecx                                      // 0x00799f5e    3bc1
                         {disp8} je           _jmp_addr_0x00799f67                          // 0x00799f60    7405
                         cmp                  eax, 0x03                                     // 0x00799f62    83f803
                         {disp8} jne          _jmp_addr_0x00799f7d                          // 0x00799f65    7516
_jmp_addr_0x00799f67:    {disp32} mov         dword ptr [data_bytes + 0x2641c0], 0xffffffff // 0x00799f67    c705c0a1c200ffffffff
                         {disp32} mov         dword ptr [data_bytes + 0x2641c4], ecx        // 0x00799f71    890dc4a1c200
                         {disp32} mov         dword ptr [data_bytes + 0x470140], ecx        // 0x00799f77    890d4061e300
_jmp_addr_0x00799f7d:    ret                                                                // 0x00799f7d    c3
                         nop                                                                // 0x00799f7e    90
                         nop                                                                // 0x00799f7f    90
?PreDraw@GameOptionsRoom@@UAEXXZ:
                         push                 esi                                           // 0x00799f80    56
                         mov.s                esi, ecx                                      // 0x00799f81    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x000000e0]             // 0x00799f83    8b86e0000000
                         test                 eax, eax                                      // 0x00799f89    85c0
                         push                 edi                                           // 0x00799f8b    57
                         {disp8} jne          _jmp_addr_0x00799f93                          // 0x00799f8c    7505
                         mov                  eax, dword ptr [esi]                          // 0x00799f8e    8b06
                         call                 dword ptr [eax + 0x24]                        // 0x00799f90    ff5024
_jmp_addr_0x00799f93:    {disp8} mov          eax, dword ptr [esi + 0x2c]                   // 0x00799f93    8b462c
                         xor.s                edi, edi                                      // 0x00799f96    33ff
                         test                 eax, eax                                      // 0x00799f98    85c0
                         {disp8} jbe          _jmp_addr_0x00799fd9                          // 0x00799f9a    763d
                         push                 ebx                                           // 0x00799f9c    53
                         push                 ebp                                           // 0x00799f9d    55
                         xor.s                ebp, ebp                                      // 0x00799f9e    33ed
_jmp_addr_0x00799fa0:    {disp8} mov          ecx, dword ptr [esi + 0x24]                   // 0x00799fa0    8b4e24
                         mov                  ecx, dword ptr [ecx + edi * 0x4]              // 0x00799fa3    8b0cb9
                         xor.s                eax, eax                                      // 0x00799fa6    33c0
                         {disp8} mov          al, byte ptr [ecx + 0x04]                     // 0x00799fa8    8a4104
                         xor.s                ebx, ebx                                      // 0x00799fab    33db
                         mov                  edx, dword ptr [ecx]                          // 0x00799fad    8b11
                         cmp                  dword ptr [esi + 0x000000c8], eax             // 0x00799faf    3986c8000000
                         sete                 bl                                            // 0x00799fb5    0f94c3
                         xor.s                eax, eax                                      // 0x00799fb8    33c0
                         push                 ebx                                           // 0x00799fba    53
                         cmp                  dword ptr [esi + 0x34], edi                   // 0x00799fbb    397e34
                         {disp8} mov          ebx, dword ptr [esi + 0x28]                   // 0x00799fbe    8b5e28
                         sete                 al                                            // 0x00799fc1    0f94c0
                         push                 eax                                           // 0x00799fc4    50
                         mov.s                eax, ebp                                      // 0x00799fc5    8bc5
                         add.s                eax, ebx                                      // 0x00799fc7    03c3
                         push                 eax                                           // 0x00799fc9    50
                         call                 dword ptr [edx]                               // 0x00799fca    ff12
                         {disp8} mov          eax, dword ptr [esi + 0x2c]                   // 0x00799fcc    8b462c
                         inc                  edi                                           // 0x00799fcf    47
                         add                  ebp, 0x60                                     // 0x00799fd0    83c560
                         cmp.s                edi, eax                                      // 0x00799fd3    3bf8
                         .byte                0x72, 0xc9// {disp8} jb _jmp_addr_0x00799fa0  // 0x00799fd5    72c9
                         pop                  ebp                                           // 0x00799fd7    5d
                         pop                  ebx                                           // 0x00799fd8    5b
_jmp_addr_0x00799fd9:    pop                  edi                                           // 0x00799fd9    5f
                         pop                  esi                                           // 0x00799fda    5e
                         ret                                                                // 0x00799fdb    c3
                         nop                                                                // 0x00799fdc    90
                         nop                                                                // 0x00799fdd    90
                         nop                                                                // 0x00799fde    90
                         nop                                                                // 0x00799fdf    90
_jmp_addr_0x00799fe0:    sub                  esp, 0x34                                     // 0x00799fe0    83ec34
                         push                 esi                                           // 0x00799fe3    56
                         mov.s                esi, ecx                                      // 0x00799fe4    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x2c]                   // 0x00799fe6    8b462c
                         {disp8} mov          ecx, dword ptr [esi + 0x28]                   // 0x00799fe9    8b4e28
                         push                 edi                                           // 0x00799fec    57
                         push                 eax                                           // 0x00799fed    50
                         push                 ecx                                           // 0x00799fee    51
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x00799fef    8b8ec0000000
                         push                 0x0                                           // 0x00799ff5    6a00
                         call                 _jmp_addr_0x00795310                          // 0x00799ff7    e814b3ffff
                         {disp32} mov         edx, dword ptr [esi + 0x000000c0]             // 0x00799ffc    8b96c0000000
                         {disp32} mov         dword ptr [esi + 0x000000cc], eax             // 0x0079a002    8986cc000000
                         {disp8} mov          edi, dword ptr [edx + 0x14]                   // 0x0079a008    8b7a14
                         {disp8} mov          eax, dword ptr [edi + 0x04]                   // 0x0079a00b    8b4704
                         test                 eax, 0x00080000                               // 0x0079a00e    a900000800
                         {disp8} jne          _jmp_addr_0x0079a019                          // 0x0079a013    7504
                         xor.s                eax, eax                                      // 0x0079a015    33c0
                         {disp8} jmp          _jmp_addr_0x0079a03a                          // 0x0079a017    eb21
_jmp_addr_0x0079a019:    test                 ah, -0x80                                     // 0x0079a019    f6c480
                         push                 ebx                                           // 0x0079a01c    53
                         {disp8} je           _jmp_addr_0x0079a02b                          // 0x0079a01d    740c
                         mov.s                ecx, edi                                      // 0x0079a01f    8bcf
                         call                 ?GetSizeFootprintData@LH3DMesh@@QAEIXZ        // 0x0079a021    e80a97c6ff
                         {disp8} mov          ebx, dword ptr [eax + 0x08]                   // 0x0079a026    8b5808
                         {disp8} jmp          _jmp_addr_0x0079a02d                          // 0x0079a029    eb02
_jmp_addr_0x0079a02b:    xor.s                ebx, ebx                                      // 0x0079a02b    33db
_jmp_addr_0x0079a02d:    mov.s                ecx, edi                                      // 0x0079a02d    8bcf
                         call                 ?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ         // 0x0079a02f    e87c9bc6ff
                         add                  eax, dword ptr [edi + 0x48]                   // 0x0079a034    034748
                         add.s                eax, ebx                                      // 0x0079a037    03c3
                         pop                  ebx                                           // 0x0079a039    5b
_jmp_addr_0x0079a03a:    {disp32} mov         edx, dword ptr [esi + 0x000000cc]             // 0x0079a03a    8b96cc000000
                         {disp32} lea         ecx, dword ptr [edx * 0x8 + 0x00000000]       // 0x0079a040    8d0cd500000000
                         sub.s                ecx, edx                                      // 0x0079a047    2bca
                         {disp8} mov          edx, dword ptr [eax + 0x08]                   // 0x0079a049    8b5008
                         shl                  ecx, 5                                        // 0x0079a04c    c1e105
                         {disp32} fld         dword ptr [ecx + edx * 0x1 + 0x000000c8]      // 0x0079a04f    d98411c8000000
                         add.s                ecx, edx                                      // 0x0079a056    03ca
                         {disp32} fld         dword ptr [ecx + 0x000000d4]                  // 0x0079a058    d981d4000000
                         {disp32} mov         eax, dword ptr [ecx + 0x000000cc]             // 0x0079a05e    8b81cc000000
                         {disp32} fld         dword ptr [data_bytes + 0x4d6e18]             // 0x0079a064    d90518cee900
                         {disp32} mov         edx, dword ptr [ecx + 0x000000d0]             // 0x0079a06a    8b91d0000000
                         fsub                 st, st(2)                                     // 0x0079a070    d8e2
                         {disp8} mov          dword ptr [esp + 0x1c], eax                   // 0x0079a072    8944241c
                         fxch                 st(1)                                         // 0x0079a076    d9c9
                         {disp32} mov         eax, dword ptr [ecx + 0x000000d8]             // 0x0079a078    8b81d8000000
                         fsub                 st, st(2)                                     // 0x0079a07e    d8e2
                         {disp32} mov         ecx, dword ptr [ecx + 0x000000dc]             // 0x0079a080    8b89dc000000
                         {disp8} mov          dword ptr [esp + 0x20], edx                   // 0x0079a086    89542420
                         fdivp                st(1), st                                     // 0x0079a08a    def9
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4d6e18]        // 0x0079a08c    8b1518cee900
                         {disp8} mov          dword ptr [esp + 0x28], eax                   // 0x0079a092    89442428
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4d6e1c]        // 0x0079a096    a11ccee900
                         {disp32} mov         dword ptr [data_bytes + 0x4700f8], edx        // 0x0079a09b    8915f860e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700fc], eax        // 0x0079a0a1    a3fc60e300
                         {disp8} mov          dword ptr [esp + 0x2c], ecx                   // 0x0079a0a6    894c242c
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4d6e20]        // 0x0079a0aa    8b0d20cee900
                         {disp32} mov         dword ptr [data_bytes + 0x470100], ecx        // 0x0079a0b0    890d0061e300
                         {disp32} fstp        dword ptr [data_bytes + 0x4700f8]             // 0x0079a0b6    d91df860e300
                         fstp                 st(0)                                         // 0x0079a0bc    ddd8
                         {disp32} fld         dword ptr [data_bytes + 0x4700fc]             // 0x0079a0be    d905fc60e300
                         {disp8} fsub         dword ptr [esp + 0x1c]                        // 0x0079a0c4    d864241c
                         {disp8} fld          dword ptr [esp + 0x28]                        // 0x0079a0c8    d9442428
                         {disp8} fsub         dword ptr [esp + 0x1c]                        // 0x0079a0cc    d864241c
                         fdivp                st(1), st                                     // 0x0079a0d0    def9
                         {disp32} fstp        dword ptr [data_bytes + 0x4700fc]             // 0x0079a0d2    d91dfc60e300
                         {disp32} fld         dword ptr [data_bytes + 0x470100]             // 0x0079a0d8    d9050061e300
                         {disp8} fsub         dword ptr [esp + 0x20]                        // 0x0079a0de    d8642420
                         {disp8} fld          dword ptr [esp + 0x2c]                        // 0x0079a0e2    d944242c
                         {disp8} fsub         dword ptr [esp + 0x20]                        // 0x0079a0e6    d8642420
                         fdivp                st(1), st                                     // 0x0079a0ea    def9
                         {disp32} fstp        dword ptr [data_bytes + 0x470100]             // 0x0079a0ec    d91d0061e300
                         {disp8} mov          eax, dword ptr [esi + 0x7c]                   // 0x0079a0f2    8b467c
                         test                 eax, eax                                      // 0x0079a0f5    85c0
                         {disp8} jne          _jmp_addr_0x0079a11d                          // 0x0079a0f7    7524
                         {disp32} mov         edx, dword ptr [esi + 0x000000c8]             // 0x0079a0f9    8b96c8000000
                         cmp                  edx, dword ptr [esi + 0x000000cc]             // 0x0079a0ff    3b96cc000000
                         {disp8} je           _jmp_addr_0x0079a111                          // 0x0079a105    740a
                         {disp32} mov         dword ptr [data_bytes + 0x470134], 0x43fa0000 // 0x0079a107    c7053461e3000000fa43
_jmp_addr_0x0079a111:    {disp32} mov         eax, dword ptr [esi + 0x000000cc]             // 0x0079a111    8b86cc000000
                         {disp32} mov         dword ptr [esi + 0x000000c8], eax             // 0x0079a117    8986c8000000
_jmp_addr_0x0079a11d:    {disp32} mov         edx, dword ptr [data_bytes + 0x4d6e18]        // 0x0079a11d    8b1518cee900
                         {disp32} lea         ecx, dword ptr [esi + 0x000000d0]             // 0x0079a123    8d8ed0000000
                         mov                  dword ptr [ecx], edx                          // 0x0079a129    8911
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4d6e1c]        // 0x0079a12b    a11ccee900
                         {disp8} mov          dword ptr [ecx + 0x04], eax                   // 0x0079a130    894104
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4d6e20]        // 0x0079a133    8b1520cee900
                         {disp8} mov          dword ptr [ecx + 0x08], edx                   // 0x0079a139    895108
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4d6e10]        // 0x0079a13c    8b1510cee900
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4d6e08]        // 0x0079a142    a108cee900
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4d6e0c]        // 0x0079a147    8b0d0ccee900
                         {disp32} mov         dword ptr [data_bytes + 0x4700d0], edx        // 0x0079a14d    8915d060e300
                         {disp8} lea          edx, dword ptr [esp + 0x30]                   // 0x0079a153    8d542430
                         push                 edx                                           // 0x0079a157    52
                         {disp8} lea          edx, dword ptr [esp + 0x0f]                   // 0x0079a158    8d54240f
                         push                 edx                                           // 0x0079a15c    52
                         {disp8} lea          edx, dword ptr [esp + 0x14]                   // 0x0079a15d    8d542414
                         push                 edx                                           // 0x0079a161    52
                         {disp8} lea          edx, dword ptr [esp + 0x1c]                   // 0x0079a162    8d54241c
                         push                 edx                                           // 0x0079a166    52
                         {disp32} mov         dword ptr [data_bytes + 0x4700c8], eax        // 0x0079a167    a3c860e300
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4bf2c0]        // 0x0079a16c    a1c052e800
                         {disp32} mov         dword ptr [data_bytes + 0x4700cc], ecx        // 0x0079a171    890dcc60e300
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x4bf2c4]        // 0x0079a177    8b0dc452e800
                         {disp8} lea          edx, dword ptr [esp + 0x24]                   // 0x0079a17d    8d542424
                         push                 edx                                           // 0x0079a181    52
                         {disp32} mov         edx, dword ptr [esi + 0x000000c0]             // 0x0079a182    8b96c0000000
                         push                 edx                                           // 0x0079a188    52
                         push                 ecx                                           // 0x0079a189    51
                         {disp8} mov          dword ptr [esp + 0x38], ecx                   // 0x0079a18a    894c2438
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x0079a18e    8b8ec4000000
                         push                 eax                                           // 0x0079a194    50
                         {disp8} mov          dword ptr [esp + 0x38], eax                   // 0x0079a195    89442438
                         call                 _jmp_addr_0x00795980                          // 0x0079a199    e8e2b7ffff
                         test                 al, al                                        // 0x0079a19e    84c0
                         {disp8} je           _jmp_addr_0x0079a1eb                          // 0x0079a1a0    7449
                         {disp8} mov          al, byte ptr [esp + 0x0b]                     // 0x0079a1a2    8a44240b
                         test                 al, al                                        // 0x0079a1a6    84c0
                         {disp8} je           _jmp_addr_0x0079a1eb                          // 0x0079a1a8    7441
                         {disp8} mov          eax, dword ptr [esp + 0x30]                   // 0x0079a1aa    8b442430
                         {disp8} mov          ecx, dword ptr [esp + 0x34]                   // 0x0079a1ae    8b4c2434
                         {disp8} mov          edx, dword ptr [esp + 0x38]                   // 0x0079a1b2    8b542438
                         {disp32} mov         dword ptr [data_bytes + 0x4700c8], eax        // 0x0079a1b6    a3c860e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700cc], ecx        // 0x0079a1bb    890dcc60e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700d0], edx        // 0x0079a1c1    8915d060e300
                         {disp32} mov         eax, dword ptr [esi + 0x000000c4]             // 0x0079a1c7    8b86c4000000
                         add                  eax, 0x00000440                               // 0x0079a1cd    0540040000
                         mov                  ecx, dword ptr [eax]                          // 0x0079a1d2    8b08
                         {disp32} mov         dword ptr [data_bytes + 0x4700b8], ecx        // 0x0079a1d4    890db860e300
                         {disp8} mov          edx, dword ptr [eax + 0x04]                   // 0x0079a1da    8b5004
                         {disp32} mov         dword ptr [data_bytes + 0x4700bc], edx        // 0x0079a1dd    8915bc60e300
                         {disp8} mov          eax, dword ptr [eax + 0x08]                   // 0x0079a1e3    8b4008
                         {disp32} mov         dword ptr [data_bytes + 0x4700c0], eax        // 0x0079a1e6    a3c060e300
_jmp_addr_0x0079a1eb:    {disp32} mov         ecx, dword ptr [data_bytes + 0x4700c8]        // 0x0079a1eb    8b0dc860e300
                         {disp32} mov         edx, dword ptr [data_bytes + 0x4700cc]        // 0x0079a1f1    8b15cc60e300
                         {disp32} mov         eax, dword ptr [data_bytes + 0x4700d0]        // 0x0079a1f7    a1d060e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700d8], ecx        // 0x0079a1fc    890dd860e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700dc], edx        // 0x0079a202    8915dc60e300
                         {disp32} mov         dword ptr [data_bytes + 0x4700e0], eax        // 0x0079a208    a3e060e300
                         mov                  edx, dword ptr [esi]                          // 0x0079a20d    8b16
                         push                 0x0                                           // 0x0079a20f    6a00
                         mov.s                ecx, esi                                      // 0x0079a211    8bce
                         call                 dword ptr [edx + 4]                           // 0x0079a213    ff5204
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c0]             // 0x0079a216    8b8ec0000000
                         push                 0x0                                           // 0x0079a21c    6a00
                         call                 _jmp_addr_0x007954a0                          // 0x0079a21e    e87db2ffff
                         pop                  edi                                           // 0x0079a223    5f
                         pop                  esi                                           // 0x0079a224    5e
                         add                  esp, 0x34                                     // 0x0079a225    83c434
                         ret                                                                // 0x0079a228    c3
                         nop                                                                // 0x0079a229    90
                         nop                                                                // 0x0079a22a    90
                         nop                                                                // 0x0079a22b    90
                         nop                                                                // 0x0079a22c    90
                         nop                                                                // 0x0079a22d    90
                         nop                                                                // 0x0079a22e    90
                         nop                                                                // 0x0079a22f    90
?DrawAdditional@GameOptionsRoom@@UAEX_N@Z:
                         {disp32} mov         ecx, dword ptr [_game]                        // 0x0079a230    8b0d5c19d000
                         xor.s                eax, eax                                      // 0x0079a236    33c0
                         {disp32} mov         al, byte ptr [ecx + 0x00205a59]               // 0x0079a238    8a81595a2000
                         inc                  eax                                           // 0x0079a23e    40
                         lea                  edx, dword ptr [eax + eax * 0x4]              // 0x0079a23f    8d1480
                         lea                  edx, dword ptr [eax + edx * 0x8]              // 0x0079a242    8d14d0
                         lea                  eax, dword ptr [eax + edx * 0x2]              // 0x0079a245    8d0450
                         shl                  eax, 5                                        // 0x0079a248    c1e005
                         mov                  eax, dword ptr [eax + ecx * 0x1]              // 0x0079a24b    8b0408
                         {disp32} mov         cl, byte ptr [data_bytes + 0x2721e3]          // 0x0079a24e    8a0de381c300
                         test                 cl, cl                                        // 0x0079a254    84c9
                         {disp8} je           _jmp_addr_0x0079a27e                          // 0x0079a256    7426
                         {disp32} mov         cl, byte ptr [data_bytes + 0x47011c]          // 0x0079a258    8a0d1c61e300
                         test                 cl, cl                                        // 0x0079a25e    84c9
                         {disp8} je           _jmp_addr_0x0079a27e                          // 0x0079a260    741c
                         test                 eax, eax                                      // 0x0079a262    85c0
                         {disp8} je           _jmp_addr_0x0079a27e                          // 0x0079a264    7418
                         {disp8} mov          eax, dword ptr [eax + 0x7c]                   // 0x0079a266    8b407c
                         test                 eax, eax                                      // 0x0079a269    85c0
                         {disp8} je           _jmp_addr_0x0079a27e                          // 0x0079a26b    7411
                         {disp8} mov          ecx, dword ptr [esp + 0x04]                   // 0x0079a26d    8b4c2404
                         push                 ecx                                           // 0x0079a271    51
                         mov.s                ecx, eax                                      // 0x0079a272    8bc8
                         call                 _jmp_addr_0x0046a680                          // 0x0079a274    e80704cdff
                         call                 _jmp_addr_0x00794e30                          // 0x0079a279    e8b2abffff
_jmp_addr_0x0079a27e:    ret                  0x0004                                        // 0x0079a27e    c20400
                         nop                                                                // 0x0079a281    90
                         nop                                                                // 0x0079a282    90
                         nop                                                                // 0x0079a283    90
                         nop                                                                // 0x0079a284    90
                         nop                                                                // 0x0079a285    90
                         nop                                                                // 0x0079a286    90
                         nop                                                                // 0x0079a287    90
                         nop                                                                // 0x0079a288    90
                         nop                                                                // 0x0079a289    90
                         nop                                                                // 0x0079a28a    90
                         nop                                                                // 0x0079a28b    90
                         nop                                                                // 0x0079a28c    90
                         nop                                                                // 0x0079a28d    90
                         nop                                                                // 0x0079a28e    90
                         nop                                                                // 0x0079a28f    90
_jmp_addr_0x0079a290:    push                 esi                                           // 0x0079a290    56
                         mov.s                esi, ecx                                      // 0x0079a291    8bf1
                         {disp32} mov         eax, dword ptr [esi + 0x000000e0]             // 0x0079a293    8b86e0000000
                         test                 eax, eax                                      // 0x0079a299    85c0
                         {disp8} jne          _jmp_addr_0x0079a2a2                          // 0x0079a29b    7505
                         mov                  eax, dword ptr [esi]                          // 0x0079a29d    8b06
                         call                 dword ptr [eax + 0x24]                        // 0x0079a29f    ff5024
_jmp_addr_0x0079a2a2:    {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0079a2a2    8b442410
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x0079a2a6    8b8ec4000000
                         mov                  edx, dword ptr [ecx]                          // 0x0079a2ac    8b11
                         push                 eax                                           // 0x0079a2ae    50
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0079a2af    8b442410
                         push                 eax                                           // 0x0079a2b3    50
                         {disp8} mov          eax, dword ptr [esp + 0x10]                   // 0x0079a2b4    8b442410
                         push                 eax                                           // 0x0079a2b8    50
                         call                 dword ptr [edx + 0x28]                        // 0x0079a2b9    ff5228
                         pop                  esi                                           // 0x0079a2bc    5e
                         ret                  0x000c                                        // 0x0079a2bd    c20c00
_jmp_addr_0x0079a2c0:    {disp8} mov          ecx, dword ptr [esp + 0x04]                   // 0x0079a2c0    8b4c2404
                         push                 ebx                                           // 0x0079a2c4    53
                         push                 ebp                                           // 0x0079a2c5    55
                         push                 esi                                           // 0x0079a2c6    56
                         {disp8} mov          esi, dword ptr [esp + 0x14]                   // 0x0079a2c7    8b742414
                         push                 edi                                           // 0x0079a2cb    57
                         xor.s                edi, edi                                      // 0x0079a2cc    33ff
                         push                 edi                                           // 0x0079a2ce    57
                         and                  esi, 0x000000ff                               // 0x0079a2cf    81e6ff000000
                         call                 _jmp_addr_0x00839010                          // 0x0079a2d5    e836ed0900
                         mov.s                ecx, eax                                      // 0x0079a2da    8bc8
                         call                 _jmp_addr_0x00870920                          // 0x0079a2dc    e83f660d00
                         shl                  esi, 8                                        // 0x0079a2e1    c1e608
                         cmp                  esi, 0x00010000                               // 0x0079a2e4    81fe00000100
                         mov.s                ebp, eax                                      // 0x0079a2ea    8be8
                         {disp8} jae          _jmp_addr_0x0079a33d                          // 0x0079a2ec    734f
                         mov                  edi, 0x00010000                               // 0x0079a2ee    bf00000100
                         mov.s                edx, ebp                                      // 0x0079a2f3    8bd5
                         {disp32} lea         ecx, dword ptr [esi + esi * 0x2 + 0x00e060ba] // 0x0079a2f5    8d8c76ba60e000
                         sub.s                edi, esi                                      // 0x0079a2fc    2bfe
_jmp_addr_0x0079a2fe:    movzx                ax, byte ptr [ecx + -0x02]                    // 0x0079a2fe    660fb641fe
                         movzx                bx, byte ptr [ecx + -0x01]                    // 0x0079a303    660fb659ff
                         add                  ecx, 0x3                                      // 0x0079a308    83c103
                         add                  edx, 0x02                                     // 0x0079a30b    83c202
                         and                  eax, 0x0000fff0                               // 0x0079a30e    25f0ff0000
                         or                   eax, 0xff00                                   // 0x0079a313    0d00ff0000
                         shl                  eax, 4                                        // 0x0079a318    c1e004
                         and                  ebx, 0x0000fff0                               // 0x0079a31b    81e3f0ff0000
                         or.s                 eax, ebx                                      // 0x0079a321    0bc3
                         xor.s                ebx, ebx                                      // 0x0079a323    33db
                         {disp8} mov          bl, byte ptr [ecx + -0x03]                    // 0x0079a325    8a59fd
                         shr                  bl, 4                                         // 0x0079a328    c0eb04
                         movzx                bx, bl                                        // 0x0079a32b    660fb6db
                         or.s                 eax, ebx                                      // 0x0079a32f    0bc3
                         cmp                  ecx, 0x00e360ba                               // 0x0079a331    81f9ba60e300
                         {disp8} mov          word ptr [edx + -0x02], ax                    // 0x0079a337    668942fe
                         .byte                0x72, 0xc1// {disp8} jb _jmp_addr_0x0079a2fe  // 0x0079a33b    72c1
_jmp_addr_0x0079a33d:    test                 esi, esi                                      // 0x0079a33d    85f6
                         {disp8} jbe          _jmp_addr_0x0079a383                          // 0x0079a33f    7642
                         {disp8} lea          ecx, dword ptr [ebp + edi * 0x2 + 0x00]       // 0x0079a341    8d4c7d00
                         mov                  eax, 0x00e060ba                               // 0x0079a345    b8ba60e000
_jmp_addr_0x0079a34a:    movzx                dx, byte ptr [eax + -0x02]                    // 0x0079a34a    660fb650fe
                         movzx                di, byte ptr [eax + -0x01]                    // 0x0079a34f    660fb678ff
                         mov                  bl, byte ptr [eax]                            // 0x0079a354    8a18
                         shr                  bl, 4                                         // 0x0079a356    c0eb04
                         add                  ecx, 0x2                                      // 0x0079a359    83c102
                         and                  edx, 0x0000fff0                               // 0x0079a35c    81e2f0ff0000
                         or                   edx, 0xff00                                   // 0x0079a362    81ca00ff0000
                         shl                  edx, 4                                        // 0x0079a368    c1e204
                         and                  edi, 0x0000fff0                               // 0x0079a36b    81e7f0ff0000
                         or.s                 edx, edi                                      // 0x0079a371    0bd7
                         movzx                di, bl                                        // 0x0079a373    660fb6fb
                         add                  eax, 0x03                                     // 0x0079a377    83c003
                         or.s                 edx, edi                                      // 0x0079a37a    0bd7
                         dec                  esi                                           // 0x0079a37c    4e
                         {disp8} mov          word ptr [ecx + -0x02], dx                    // 0x0079a37d    668951fe
                         {disp8} jne          _jmp_addr_0x0079a34a                          // 0x0079a381    75c7
_jmp_addr_0x0079a383:    {disp8} mov          ecx, dword ptr [esp + 0x14]                   // 0x0079a383    8b4c2414
                         call                 _jmp_addr_0x00839010                          // 0x0079a387    e884ec0900
                         mov.s                ecx, eax                                      // 0x0079a38c    8bc8
                         call                 _jmp_addr_0x00870990                          // 0x0079a38e    e8fd650d00
                         pop                  edi                                           // 0x0079a393    5f
                         pop                  esi                                           // 0x0079a394    5e
                         pop                  ebp                                           // 0x0079a395    5d
                         pop                  ebx                                           // 0x0079a396    5b
                         ret                                                                // 0x0079a397    c3
                         nop                                                                // 0x0079a398    90
                         nop                                                                // 0x0079a399    90
                         nop                                                                // 0x0079a39a    90
                         nop                                                                // 0x0079a39b    90
                         nop                                                                // 0x0079a39c    90
                         nop                                                                // 0x0079a39d    90
                         nop                                                                // 0x0079a39e    90
                         nop                                                                // 0x0079a39f    90
_jmp_addr_0x0079a3a0:    push                 ebx                                           // 0x0079a3a0    53
                         push                 ebp                                           // 0x0079a3a1    55
                         push                 esi                                           // 0x0079a3a2    56
                         mov.s                esi, ecx                                      // 0x0079a3a3    8bf1
                         {disp8} mov          eax, dword ptr [esi + 0x7c]                   // 0x0079a3a5    8b467c
                         test                 eax, eax                                      // 0x0079a3a8    85c0
                         push                 edi                                           // 0x0079a3aa    57
                         {disp32} mov         dword ptr [esi + 0x000000dc], 0x00000000      // 0x0079a3ab    c786dc00000000000000
                         {disp8} jne          _jmp_addr_0x0079a3ea                          // 0x0079a3b5    7533
                         {disp8} mov          edi, dword ptr [esi + 0x2c]                   // 0x0079a3b7    8b7e2c
                         test                 edi, edi                                      // 0x0079a3ba    85ff
                         {disp8} jbe          _jmp_addr_0x0079a423                          // 0x0079a3bc    7665
                         {disp8} mov          ecx, dword ptr [esi + 0x24]                   // 0x0079a3be    8b4e24
                         {disp8} mov          ebp, dword ptr [esp + 0x1c]                   // 0x0079a3c1    8b6c241c
_jmp_addr_0x0079a3c5:    mov                  edx, dword ptr [ecx]                          // 0x0079a3c5    8b11
                         xor.s                ebx, ebx                                      // 0x0079a3c7    33db
                         {disp8} mov          bl, byte ptr [edx + 0x04]                     // 0x0079a3c9    8a5a04
                         cmp                  ebx, dword ptr [esi + 0x000000c8]             // 0x0079a3cc    3b9ec8000000
                         {disp8} jne          _jmp_addr_0x0079a3e0                          // 0x0079a3d2    750c
                         {disp32} mov         dword ptr [esi + 0x000000dc], 0x00000001      // 0x0079a3d4    c786dc00000001000000
                         mov.s                ebp, eax                                      // 0x0079a3de    8be8
_jmp_addr_0x0079a3e0:    inc                  eax                                           // 0x0079a3e0    40
                         add                  ecx, 0x4                                      // 0x0079a3e1    83c104
                         cmp.s                eax, edi                                      // 0x0079a3e4    3bc7
                         .byte                0x72, 0xdd// {disp8} jb _jmp_addr_0x0079a3c5  // 0x0079a3e6    72dd
                         {disp8} jmp          _jmp_addr_0x0079a427                          // 0x0079a3e8    eb3d
_jmp_addr_0x0079a3ea:    cmp                  eax, 0x01                                     // 0x0079a3ea    83f801
                         {disp8} jne          _jmp_addr_0x0079a423                          // 0x0079a3ed    7534
                         {disp8} mov          eax, dword ptr [esi + 0x24]                   // 0x0079a3ef    8b4624
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x470118]        // 0x0079a3f2    8b0d1861e300
                         mov                  ecx, dword ptr [eax + ecx * 0x4]              // 0x0079a3f8    8b0c88
                         {disp32} mov         eax, dword ptr [esi + 0x000000c8]             // 0x0079a3fb    8b86c8000000
                         {disp32} mov         edi, dword ptr [esi + 0x000000cc]             // 0x0079a401    8bbecc000000
                         mov                  edx, dword ptr [ecx]                          // 0x0079a407    8b11
                         sub.s                eax, edi                                      // 0x0079a409    2bc7
                         neg                  eax                                           // 0x0079a40b    f7d8
                         sbb.s                eax, eax                                      // 0x0079a40d    1bc0
                         inc                  eax                                           // 0x0079a40f    40
                         push                 eax                                           // 0x0079a410    50
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x0079a411    8b442420
                         push                 eax                                           // 0x0079a415    50
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x0079a416    8b442420
                         push                 eax                                           // 0x0079a41a    50
                         {disp8} mov          eax, dword ptr [esp + 0x20]                   // 0x0079a41b    8b442420
                         push                 eax                                           // 0x0079a41f    50
                         call                 dword ptr [edx + 4]                           // 0x0079a420    ff5204
_jmp_addr_0x0079a423:    {disp8} mov          ebp, dword ptr [esp + 0x1c]                   // 0x0079a423    8b6c241c
_jmp_addr_0x0079a427:    xor.s                bl, bl                                        // 0x0079a427    32db
                         call                 ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0079a429    e8a2dac6ff
                         test                 eax, eax                                      // 0x0079a42e    85c0
                         {disp8} je           _jmp_addr_0x0079a452                          // 0x0079a430    7420
                         {disp32} mov         eax, dword ptr [data_bytes + 0x30029c]        // 0x0079a432    a19c62cc00
                         test                 eax, eax                                      // 0x0079a437    85c0
                         {disp8} je           _jmp_addr_0x0079a452                          // 0x0079a439    7417
                         call                 ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0079a43b    e890dac6ff
                         {disp32} mov         ecx, dword ptr [data_bytes + 0x30029c]        // 0x0079a440    8b0d9c62cc00
                         cmp                  dword ptr [ecx + 0x04], eax                   // 0x0079a446    394104
                         {disp8} jne          _jmp_addr_0x0079a452                          // 0x0079a449    7507
                         mov                  edx, dword ptr [ecx]                          // 0x0079a44b    8b11
                         call                 dword ptr [edx + 0x18]                        // 0x0079a44d    ff5218
                         mov.s                bl, al                                        // 0x0079a450    8ad8
_jmp_addr_0x0079a452:    test                 bl, bl                                        // 0x0079a452    84db
                         {disp32} mov         byte ptr [data_bytes + 0x286cee], bl          // 0x0079a454    881deeccc400
                         {disp8} je           _jmp_addr_0x0079a46c                          // 0x0079a45a    7410
                         call                 ?GetCurrentActiveBox@SetupBox@@SAPAV1@XZ      // 0x0079a45c    e86fdac6ff
                         test                 eax, eax                                      // 0x0079a461    85c0
                         {disp8} je           _jmp_addr_0x0079a46c                          // 0x0079a463    7407
                         mov                  edi, 0x00000001                               // 0x0079a465    bf01000000
                         {disp8} jmp          _jmp_addr_0x0079a46e                          // 0x0079a46a    eb02
_jmp_addr_0x0079a46c:    xor.s                edi, edi                                      // 0x0079a46c    33ff
_jmp_addr_0x0079a46e:    {disp32} mov         eax, dword ptr [_game]                        // 0x0079a46e    a15c19d000
                         {disp32} mov         eax, dword ptr [eax + 0x0025005c]             // 0x0079a473    8b805c002500
                         xor.s                ebx, ebx                                      // 0x0079a479    33db
                         cmp.s                eax, ebx                                      // 0x0079a47b    3bc3
                         {disp32} je          _jmp_addr_0x0079a57a                          // 0x0079a47d    0f84f7000000
                         {disp32} mov         eax, dword ptr [eax + 0x000045e8]             // 0x0079a483    8b80e8450000
                         cmp.s                eax, ebx                                      // 0x0079a489    3bc3
                         {disp8} je           _jmp_addr_0x0079a498                          // 0x0079a48b    740b
                         mov                  edi, 0x00000001                               // 0x0079a48d    bf01000000
                         {disp32} jne         _jmp_addr_0x0079a567                          // 0x0079a492    0f85cf000000
_jmp_addr_0x0079a498:    cmp.s                edi, ebx                                      // 0x0079a498    3bfb
                         {disp32} jne         _jmp_addr_0x0079a56b                          // 0x0079a49a    0f85cb000000
                         {disp8} mov          edx, dword ptr [esp + 0x1c]                   // 0x0079a4a0    8b54241c
                         {disp8} lea          eax, dword ptr [edx + -0x01]                  // 0x0079a4a4    8d42ff
                         cmp                  eax, 0x04                                     // 0x0079a4a7    83f804
                         {disp8} ja           _jmp_addr_0x0079a4ff                          // 0x0079a4aa    7753
                         jmp                  dword ptr [eax*4 + 0x79a58c]                  // 0x0079a4ac    ff24858ca57900
                         mov                  eax, 0x00000001                               // 0x0079a4b3    b801000000
                         {disp32} mov         dword ptr [data_bytes + 0x47010c], eax        // 0x0079a4b8    a30c61e300
                         cmp                  dword ptr [esi + 0x000000dc], ebx             // 0x0079a4bd    399edc000000
                         {disp32} je          _jmp_addr_0x0079a553                          // 0x0079a4c3    0f848a000000
                         {disp8} mov          ecx, dword ptr [esi + 0x24]                   // 0x0079a4c9    8b4e24
                         mov                  ecx, dword ptr [ecx + ebp * 0x4]              // 0x0079a4cc    8b0ca9
                         cmp                  dword ptr [ecx + 0x0c], ebx                   // 0x0079a4cf    39590c
                         {disp8} je           _jmp_addr_0x0079a4fc                          // 0x0079a4d2    7428
                         {disp8} mov          dword ptr [esi + 0x7c], eax                   // 0x0079a4d4    89467c
                         {disp32} mov         dword ptr [data_bytes + 0x470118], ebp        // 0x0079a4d7    892d1861e300
                         {disp32} mov         ebx, dword ptr [esi + 0x000000dc]             // 0x0079a4dd    8b9edc000000
                         {disp8} mov          eax, dword ptr [esi + 0x24]                   // 0x0079a4e3    8b4624
                         mov                  ecx, dword ptr [eax + ebp * 0x4]              // 0x0079a4e6    8b0ca8
                         mov                  eax, dword ptr [ecx]                          // 0x0079a4e9    8b01
                         push                 ebx                                           // 0x0079a4eb    53
                         push                 edx                                           // 0x0079a4ec    52
                         {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x0079a4ed    8b542420
                         push                 edx                                           // 0x0079a4f1    52
                         {disp8} mov          edx, dword ptr [esp + 0x20]                   // 0x0079a4f2    8b542420
                         push                 edx                                           // 0x0079a4f6    52
                         call                 dword ptr [eax + 4]                           // 0x0079a4f7    ff5004
                         xor.s                ebx, ebx                                      // 0x0079a4fa    33db
_jmp_addr_0x0079a4fc:    {disp8} mov          dword ptr [esi + 0x34], ebp                   // 0x0079a4fc    896e34
_jmp_addr_0x0079a4ff:    {disp32} mov         eax, dword ptr [data_bytes + 0x47010c]        // 0x0079a4ff    a10c61e300
_jmp_addr_0x0079a504:    {disp8} mov          edx, dword ptr [esi + 0x7c]                   // 0x0079a504    8b567c
                         {disp32} fild        dword ptr [?g_delta_time@LH3DTech@@2MA]       // 0x0079a507    db053481c300
                         cmp                  edx, 0x02                                     // 0x0079a50d    83fa02
                         sete                 dl                                            // 0x0079a510    0f94c2
                         {disp32} mov         ecx, dword ptr [esi + 0x000000c4]             // 0x0079a513    8b8ec4000000
                         {disp32} fmul        dword ptr [_rdata_float0p001]                 // 0x0079a519    d80db0a38a00
                         mov                  ebp, dword ptr [ecx]                          // 0x0079a51f    8b29
                         push                 edx                                           // 0x0079a521    52
                         {disp8} lea          edx, dword ptr [esp + 0x18]                   // 0x0079a522    8d542418
                         push                 edx                                           // 0x0079a526    52
                         xor.s                edx, edx                                      // 0x0079a527    33d2
                         cmp.s                edi, ebx                                      // 0x0079a529    3bfb
                         {disp32} mov         ebx, dword ptr [data_bytes + 0x470110]        // 0x0079a52b    8b1d1061e300
                         setne                dl                                            // 0x0079a531    0f95c2
                         dec                  edx                                           // 0x0079a534    4a
                         and.s                edx, ebx                                      // 0x0079a535    23d3
                         push                 edx                                           // 0x0079a537    52
                         push                 eax                                           // 0x0079a538    50
                         {disp32} mov         eax, dword ptr [esi + 0x000000c0]             // 0x0079a539    8b86c0000000
                         push                 ecx                                           // 0x0079a53f    51
                         fstp                 dword ptr [esp]                               // 0x0079a540    d91c24
                         push                 eax                                           // 0x0079a543    50
                         call                 dword ptr [ebp + 0x18]                        // 0x0079a544    ff5518
                         pop                  edi                                           // 0x0079a547    5f
                         pop                  esi                                           // 0x0079a548    5e
                         pop                  ebp                                           // 0x0079a549    5d
                         mov                  eax, 0x00000001                               // 0x0079a54a    b801000000
                         pop                  ebx                                           // 0x0079a54f    5b
                         ret                  0x000c                                        // 0x0079a550    c20c00
_jmp_addr_0x0079a553:    {disp8} mov          dword ptr [esi + 0x7c], 0x00000002            // 0x0079a553    c7467c02000000
                         {disp8} jmp          _jmp_addr_0x0079a4ff                          // 0x0079a55a    eba3
                         {disp32} mov         dword ptr [data_bytes + 0x47010c], ebx        // 0x0079a55c    891d0c61e300
                         {disp8} mov          dword ptr [esi + 0x7c], ebx                   // 0x0079a562    895e7c
                         {disp8} jmp          _jmp_addr_0x0079a4ff                          // 0x0079a565    eb98
_jmp_addr_0x0079a567:    cmp.s                edi, ebx                                      // 0x0079a567    3bfb
                         {disp8} je           _jmp_addr_0x0079a4ff                          // 0x0079a569    7494
_jmp_addr_0x0079a56b:    {disp32} mov         dword ptr [data_bytes + 0x47010c], ebx        // 0x0079a56b    891d0c61e300
                         {disp32} mov         dword ptr [data_bytes + 0x470110], ebx        // 0x0079a571    891d1061e300
                         {disp8} mov          dword ptr [esi + 0x7c], ebx                   // 0x0079a577    895e7c
_jmp_addr_0x0079a57a:    cmp.s                edi, ebx                                      // 0x0079a57a    3bfb
                         {disp8} je           _jmp_addr_0x0079a4ff                          // 0x0079a57c    7481
                         xor.s                eax, eax                                      // 0x0079a57e    33c0
                         {disp8} jmp          _jmp_addr_0x0079a504                          // 0x0079a580    eb82
                         mov                  eax, 0x00000002                               // 0x0079a582    b802000000
                         {disp32} jmp         _jmp_addr_0x0079a504                          // 0x0079a587    e978ffffff

// Snippet: jmptbl, [0x0079a58c, 0x0079a5a0)
.byte 0xb3, 0xa4, 0x79, 0x00      // 0x0079a58c
.byte 0x5c, 0xa5, 0x79, 0x00      // 0x0079a590
.byte 0xb3, 0xa4, 0x79, 0x00      // 0x0079a594
.byte 0x5c, 0xa5, 0x79, 0x00      // 0x0079a598
.byte 0x82, 0xa5, 0x79, 0x00      // 0x0079a59c

