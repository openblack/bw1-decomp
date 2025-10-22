.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl
.extern ?FastNormalize@LHPoint@@QAEXXZ
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007ac9e0
.extern _jmp_addr_0x007ace50
.extern  ??3@YAXPAX@Z
.extern _LHFileLength__FPcPUl
.extern _LHLoadData__FPcPvUlPUl
.extern _jmp_addr_0x007bd030
.extern _sprintf
.extern _malloc
.extern _free
.extern _jmp_addr_0x007dec80
.extern _jmp_addr_0x007f9540
.extern _jmp_addr_0x00807e40
.extern _jmp_addr_0x00807e80
.extern _jmp_addr_0x0080bbd0
.extern _jmp_addr_0x0080bd70
.extern ?RenderInitialization@LH3DTech@@SAXJJ@Z
.extern _Report3D__FPCce
.extern _jmp_addr_0x0081e820
.extern _jmp_addr_0x0081e870
.extern _jmp_addr_0x0081faa0
.extern _jmp_addr_0x0081fe10
.extern _jmp_addr_0x00820920
.extern _jmp_addr_0x00823420
.extern _jmp_addr_0x00825300
.extern @CreateList__Q210NewCollide3ObjFv@4
.extern _jmp_addr_0x00829260
.extern _jmp_addr_0x0082cd80
.extern _jmp_addr_0x0082d3f0
.extern _jmp_addr_0x0082ee50
.extern _jmp_addr_0x00837300
.extern _jmp_addr_0x008378c0
.extern _jmp_addr_0x00837930
.extern _jmp_addr_0x00839860
.extern _jmp_addr_0x00839880
.extern _jmp_addr_0x00839970
.extern _jmp_addr_0x0083f2f0
.extern ?Draw@LH3DSprite@@QAEXXZ
.extern _jmp_addr_0x00841230
.extern _jmp_addr_0x00841240
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern _jmp_addr_0x008713f0
.extern _jmp_addr_0x00871440
.extern _jmp_addr_0x008792e0
.extern _jmp_addr_0x008794a0
.extern _jmp_addr_0x0087f6d0
.extern _jmp_addr_0x0087f880
.extern _jmp_addr_0x0087f950
.extern _jmp_addr_0x0087f980
.extern _jmp_addr_0x00880f20

.globl _jmp_addr_0x0082a4f0
.globl _DrawAndClip__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.globl _DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl
.globl _jmp_addr_0x0082a830
.globl _jmp_addr_0x0082a8e0
.globl _jmp_addr_0x0082ab40
.globl @__ct__Q210NewCollide3ObjFfP7LHPoint@16
.globl @__ct__Q210NewCollide3ObjFP7LHPointfff@24
.globl @__dt__Q210NewCollide3ObjFv@4
.globl ??_DNewCollide@@QAEXXZ 
.globl _jmp_addr_0x0082aed0
.globl _jmp_addr_0x0082b0f0
.globl _SetD3DMatrix__10LH3DRenderFRQ29IndirectX10_D3DMATRIXR8LHMatrix
.globl _jmp_addr_0x0082b290
.globl _SetProjMatrix__10LH3DRenderFP9D3DMATRIXP9D3DMATRIXfff
.globl _jmp_addr_0x0082b3c0
.globl ?Close@LH3DRender@@SAHXZ
.globl _jmp_addr_0x0082b680
.globl _jmp_addr_0x0082b790
.globl _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl
.globl _jmp_addr_0x0082ba10
.globl _jmp_addr_0x0082bbc0

.globl _globl_ct_0x0082b1f0

start_0x0082a2c0_0x0082bf10:
// Snippet: asm, [0x0082a2c0, 0x0082beeb)
                         ret                                                              // 0x0082a2c0    c3
                         nop                                                              // 0x0082a2c1    90
                         nop                                                              // 0x0082a2c2    90
                         nop                                                              // 0x0082a2c3    90
                         nop                                                              // 0x0082a2c4    90
                         nop                                                              // 0x0082a2c5    90
                         nop                                                              // 0x0082a2c6    90
                         nop                                                              // 0x0082a2c7    90
                         nop                                                              // 0x0082a2c8    90
                         nop                                                              // 0x0082a2c9    90
                         nop                                                              // 0x0082a2ca    90
                         nop                                                              // 0x0082a2cb    90
                         nop                                                              // 0x0082a2cc    90
                         nop                                                              // 0x0082a2cd    90
                         nop                                                              // 0x0082a2ce    90
                         nop                                                              // 0x0082a2cf    90
                         sub                esp, 0x38                                     // 0x0082a2d0    83ec38
                         push               ebx                                           // 0x0082a2d3    53
                         push               ebp                                           // 0x0082a2d4    55
                         push               esi                                           // 0x0082a2d5    56
                         push               edi                                           // 0x0082a2d6    57
                         mov.s              edi, ecx                                      // 0x0082a2d7    8bf9
                         xor.s              ebp, ebp                                      // 0x0082a2d9    33ed
                         xor.s              esi, esi                                      // 0x0082a2db    33f6
                         {disp8} lea        ebx, dword ptr [edi + 0x14]                   // 0x0082a2dd    8d5f14
                         mov                edx, 0x3f800000                               // 0x0082a2e0    ba0000803f
_jmp_addr_0x0082a2e5:    cmp                dword ptr [ebx + 0x78], ebp                   // 0x0082a2e5    396b78
                         {disp32} je        _jmp_addr_0x0082a4cb                          // 0x0082a2e8    0f84dd010000
                         cmp                dword ptr [edi + 0x000004d0], ebp             // 0x0082a2ee    39afd0040000
                         {disp8} je         _jmp_addr_0x0082a322                          // 0x0082a2f4    742c
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e70]             // 0x0082a2f6    d905709eea00
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0082a2fc    8b4710
                         {disp32} fmul      dword ptr [data_bytes + 0x4f3ab0]             // 0x0082a2ff    d80db09aeb00
                         add.s              eax, esi                                      // 0x0082a305    03c6
                         fadd               dword ptr [eax]                               // 0x0082a307    d800
                         fstp               dword ptr [eax]                               // 0x0082a309    d918
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0082a30b    8b4f10
                         {disp32} fld       dword ptr [data_bytes + 0x4e3e78]             // 0x0082a30e    d905789eea00
                         {disp8} lea        eax, dword ptr [esi + ecx * 0x1 + 0x08]       // 0x0082a314    8d440e08
                         {disp32} fmul      dword ptr [data_bytes + 0x4f3ab0]             // 0x0082a318    d80db09aeb00
                         fadd               dword ptr [eax]                               // 0x0082a31e    d800
                         fstp               dword ptr [eax]                               // 0x0082a320    d918
_jmp_addr_0x0082a322:    mov                eax, dword ptr [ebx]                          // 0x0082a322    8b03
                         add                eax, dword ptr [data_bytes + 0x4e3ec0]        // 0x0082a324    0305c09eea00
                         cmp                eax, 0x000002bc                               // 0x0082a32a    3dbc020000
                         {disp8} jbe        _jmp_addr_0x0082a336                          // 0x0082a32f    7605
                         xor.s              eax, eax                                      // 0x0082a331    33c0
                         {disp8} mov        dword ptr [ebx + 0x78], ebp                   // 0x0082a333    896b78
_jmp_addr_0x0082a336:    mov                dword ptr [ebx], eax                          // 0x0082a336    8903
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f0]             // 0x0082a338    8b8bf0000000
                         sub.s              ecx, ebp                                      // 0x0082a33e    2bcd
                         {disp32} je        _jmp_addr_0x0082a414                          // 0x0082a340    0f84ce000000
                         dec                ecx                                           // 0x0082a346    49
                         {disp8} je         _jmp_addr_0x0082a3a7                          // 0x0082a347    745e
                         mov.s              ecx, esi                                      // 0x0082a349    8bce
                         add                ecx, dword ptr [edi + 0x10]                   // 0x0082a34b    034f10
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x0082a34e    89510c
                         {disp8} mov        dword ptr [ecx + 0x10], edx                   // 0x0082a351    895110
                         xor.s              edx, edx                                      // 0x0082a354    33d2
                         mov                ecx, 0x000002bc                               // 0x0082a356    b9bc020000
                         div                ecx                                           // 0x0082a35b    f7f1
                         cmp                edx, 0x000000e6                               // 0x0082a35d    81fae6000000
                         {disp8} jae        _jmp_addr_0x0082a379                          // 0x0082a363    7314
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0082a365    89542410
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x0082a369    896c2414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0082a36d    df6c2410
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa970]             // 0x0082a371    d80d70399a00
                         {disp8} jmp        _jmp_addr_0x0082a391                          // 0x0082a377    eb18
_jmp_addr_0x0082a379:    {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0082a379    89542418
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x0082a37d    896c241c
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0082a381    df6c2418
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa96c]             // 0x0082a385    d80d6c399a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0xfa968]             // 0x0082a38b    d82568399a00
_jmp_addr_0x0082a391:    {disp32} fcom      dword ptr [rdata_bytes + 0x16518]             // 0x0082a391    d81518f58b00
                         fnstsw             ax                                            // 0x0082a397    dfe0
                         test               ah, 0x01                                      // 0x0082a399    f6c401
                         {disp32} je        _jmp_addr_0x0082a466                          // 0x0082a39c    0f84c4000000
                         {disp32} jmp       _jmp_addr_0x0082a45e                          // 0x0082a3a2    e9b7000000
_jmp_addr_0x0082a3a7:    xor.s              edx, edx                                      // 0x0082a3a7    33d2
                         mov                ecx, 0x000002bc                               // 0x0082a3a9    b9bc020000
                         div                ecx                                           // 0x0082a3ae    f7f1
                         cmp                edx, 0x000000e6                               // 0x0082a3b0    81fae6000000
                         {disp8} jae        _jmp_addr_0x0082a3cc                          // 0x0082a3b6    7314
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0082a3b8    89542420
                         {disp8} mov        dword ptr [esp + 0x24], ebp                   // 0x0082a3bc    896c2424
                         {disp8} fild       qword ptr [esp + 0x20]                        // 0x0082a3c0    df6c2420
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa970]             // 0x0082a3c4    d80d70399a00
                         {disp8} jmp        _jmp_addr_0x0082a3e4                          // 0x0082a3ca    eb18
_jmp_addr_0x0082a3cc:    {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0082a3cc    89542428
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0082a3d0    896c242c
                         {disp8} fild       qword ptr [esp + 0x28]                        // 0x0082a3d4    df6c2428
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa96c]             // 0x0082a3d8    d80d6c399a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0xfa968]             // 0x0082a3de    d82568399a00
_jmp_addr_0x0082a3e4:    {disp32} fcom      dword ptr [rdata_bytes + 0x16518]             // 0x0082a3e4    d81518f58b00
                         fnstsw             ax                                            // 0x0082a3ea    dfe0
                         test               ah, 0x01                                      // 0x0082a3ec    f6c401
                         {disp8} je         _jmp_addr_0x0082a3f9                          // 0x0082a3ef    7408
                         fstp               st(0)                                         // 0x0082a3f1    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x0082a3f3    d90518f58b00
_jmp_addr_0x0082a3f9:    {disp32} fdiv      dword ptr [ebx + 0x00000438]                  // 0x0082a3f9    d8b338040000
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0082a3ff    8b4f10
                         mov.s              eax, esi                                      // 0x0082a402    8bc6
                         add.s              eax, ecx                                      // 0x0082a404    03c1
                         {disp32} fld       dword ptr [ebx + 0x00000438]                  // 0x0082a406    d98338040000
                         {disp8} fstp       dword ptr [eax + 0x0c]                        // 0x0082a40c    d9580c
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0082a40f    d95810
                         {disp8} jmp        _jmp_addr_0x0082a46d                          // 0x0082a412    eb59
_jmp_addr_0x0082a414:    xor.s              edx, edx                                      // 0x0082a414    33d2
                         mov                ecx, 0x000002bc                               // 0x0082a416    b9bc020000
                         div                ecx                                           // 0x0082a41b    f7f1
                         cmp                edx, 0x000000e6                               // 0x0082a41d    81fae6000000
                         {disp8} jae        _jmp_addr_0x0082a439                          // 0x0082a423    7314
                         {disp8} mov        dword ptr [esp + 0x30], edx                   // 0x0082a425    89542430
                         {disp8} mov        dword ptr [esp + 0x34], ebp                   // 0x0082a429    896c2434
                         {disp8} fild       qword ptr [esp + 0x30]                        // 0x0082a42d    df6c2430
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa970]             // 0x0082a431    d80d70399a00
                         {disp8} jmp        _jmp_addr_0x0082a451                          // 0x0082a437    eb18
_jmp_addr_0x0082a439:    {disp8} mov        dword ptr [esp + 0x38], edx                   // 0x0082a439    89542438
                         {disp8} mov        dword ptr [esp + 0x3c], ebp                   // 0x0082a43d    896c243c
                         {disp8} fild       qword ptr [esp + 0x38]                        // 0x0082a441    df6c2438
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa96c]             // 0x0082a445    d80d6c399a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0xfa968]             // 0x0082a44b    d82568399a00
_jmp_addr_0x0082a451:    {disp32} fcom      dword ptr [rdata_bytes + 0x16518]             // 0x0082a451    d81518f58b00
                         fnstsw             ax                                            // 0x0082a457    dfe0
                         test               ah, 0x01                                      // 0x0082a459    f6c401
                         {disp8} je         _jmp_addr_0x0082a466                          // 0x0082a45c    7408
_jmp_addr_0x0082a45e:    fstp               st(0)                                         // 0x0082a45e    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x16518]             // 0x0082a460    d90518f58b00
_jmp_addr_0x0082a466:    {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0082a466    8b4710
                         {disp8} fstp       dword ptr [esi + eax * 0x1 + 0x0c]            // 0x0082a469    d95c060c
_jmp_addr_0x0082a46d:    {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0082a46d    8b4f10
                         mov.s              eax, esi                                      // 0x0082a470    8bc6
                         {disp8} mov        ebp, dword ptr [eax + ecx * 0x1 + 0x28]       // 0x0082a472    8b6c0828
                         add.s              eax, ecx                                      // 0x0082a476    03c1
                         {disp32} mov       ecx, dword ptr [ebx + 0x000000f0]             // 0x0082a478    8b8bf0000000
                         sub                ecx, 0x10                                     // 0x0082a47e    83e910
                         and                ecx, 0x3f                                     // 0x0082a481    83e13f
                         and                ebp, 0xffffffc0                               // 0x0082a484    83e5c0
                         or.s               ebp, ecx                                      // 0x0082a487    0be9
                         {disp8} mov        dword ptr [eax + 0x28], ebp                   // 0x0082a489    896828
                         xor.s              ebp, ebp                                      // 0x0082a48c    33ed
                         {disp8} mov        dword ptr [esp + 0x40], edx                   // 0x0082a48e    89542440
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0082a492    896c2444
                         {disp8} fild       qword ptr [esp + 0x40]                        // 0x0082a496    df6c2440
                         {disp32} fmul      dword ptr [rdata_bytes + 0x82320]             // 0x0082a49a    d80d20b39200
                         {disp32} fsubr     dword ptr [__real@437f0000]                   // 0x0082a4a0    d82d70b28a00
                         call               _jmp_addr_0x007a1400                          // 0x0082a4a6    e8556ff7ff
                         {disp8} mov        ecx, dword ptr [edi + 0x10]                   // 0x0082a4ab    8b4f10
                         shl                eax, 0x18                                     // 0x0082a4ae    c1e018
                         or                 eax, 0xffffff                                 // 0x0082a4b1    0dffffff00
                         {disp8} mov        dword ptr [esi + ecx * 0x1 + 0x20], eax       // 0x0082a4b6    89440e20
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0082a4ba    8b4710
                         mov.s              ecx, esi                                      // 0x0082a4bd    8bce
                         add.s              ecx, eax                                      // 0x0082a4bf    03c8
                         call               ?Draw@LH3DSprite@@QAEXXZ                      // 0x0082a4c1    e86a600100
                         mov                edx, 0x3f800000                               // 0x0082a4c6    ba0000803f
_jmp_addr_0x0082a4cb:    add                esi, 0x34                                     // 0x0082a4cb    83c634
                         add                ebx, 0x04                                     // 0x0082a4ce    83c304
                         cmp                esi, 0x00000618                               // 0x0082a4d1    81fe18060000
                         {disp32} jb        _jmp_addr_0x0082a2e5                          // 0x0082a4d7    0f8208feffff
                         pop                edi                                           // 0x0082a4dd    5f
                         pop                esi                                           // 0x0082a4de    5e
                         pop                ebp                                           // 0x0082a4df    5d
                         pop                ebx                                           // 0x0082a4e0    5b
                         add                esp, 0x38                                     // 0x0082a4e1    83c438
                         ret                                                              // 0x0082a4e4    c3
                         nop                                                              // 0x0082a4e5    90
                         nop                                                              // 0x0082a4e6    90
                         nop                                                              // 0x0082a4e7    90
                         nop                                                              // 0x0082a4e8    90
                         nop                                                              // 0x0082a4e9    90
                         nop                                                              // 0x0082a4ea    90
                         nop                                                              // 0x0082a4eb    90
                         nop                                                              // 0x0082a4ec    90
                         nop                                                              // 0x0082a4ed    90
                         nop                                                              // 0x0082a4ee    90
                         nop                                                              // 0x0082a4ef    90
_jmp_addr_0x0082a4f0:    ret                                                              // 0x0082a4f0    c3
                         nop                                                              // 0x0082a4f1    90
                         nop                                                              // 0x0082a4f2    90
                         nop                                                              // 0x0082a4f3    90
                         nop                                                              // 0x0082a4f4    90
                         nop                                                              // 0x0082a4f5    90
                         nop                                                              // 0x0082a4f6    90
                         nop                                                              // 0x0082a4f7    90
                         nop                                                              // 0x0082a4f8    90
                         nop                                                              // 0x0082a4f9    90
                         nop                                                              // 0x0082a4fa    90
                         nop                                                              // 0x0082a4fb    90
                         nop                                                              // 0x0082a4fc    90
                         nop                                                              // 0x0082a4fd    90
                         nop                                                              // 0x0082a4fe    90
                         nop                                                              // 0x0082a4ff    90
_DrawAndClip__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl:    sub                esp, 0x08                                     // 0x0082a500    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0082a503    a100abc200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x264b04]        // 0x0082a508    8b0d04abc200
                         push               esi                                           // 0x0082a50e    56
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x0082a50f    8b74241c
                         test               esi, esi                                      // 0x0082a513    85f6
                         push               edi                                           // 0x0082a515    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0082a516    8b7c241c
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0082a51a    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0082a51e    894c240c
                         {disp8} jbe        _jmp_addr_0x0082a586                          // 0x0082a522    7662
                         mov.s              ecx, edi                                      // 0x0082a524    8bcf
                         mov.s              edx, esi                                      // 0x0082a526    8bd6
_jmp_addr_0x0082a528:    fld                dword ptr [ecx]                               // 0x0082a528    d901
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a52a    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a530    dfe0
                         test               ah, 0x01                                      // 0x0082a532    f6c401
                         {disp8} je         _jmp_addr_0x0082a53f                          // 0x0082a535    7408
                         mov                dword ptr [ecx], 0x00000000                   // 0x0082a537    c70100000000
                         {disp8} jmp        _jmp_addr_0x0082a552                          // 0x0082a53d    eb13
_jmp_addr_0x0082a53f:    fld                dword ptr [ecx]                               // 0x0082a53f    d901
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x0082a541    d85c2408
                         fnstsw             ax                                            // 0x0082a545    dfe0
                         test               ah, 0x41                                      // 0x0082a547    f6c441
                         {disp8} jne        _jmp_addr_0x0082a552                          // 0x0082a54a    7506
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0082a54c    8b442408
                         mov                dword ptr [ecx], eax                          // 0x0082a550    8901
_jmp_addr_0x0082a552:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0082a552    d94104
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a555    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a55b    dfe0
                         test               ah, 0x01                                      // 0x0082a55d    f6c401
                         {disp8} je         _jmp_addr_0x0082a56b                          // 0x0082a560    7409
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x0082a562    c7410400000000
                         {disp8} jmp        _jmp_addr_0x0082a580                          // 0x0082a569    eb15
_jmp_addr_0x0082a56b:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0082a56b    d94104
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x0082a56e    d85c240c
                         fnstsw             ax                                            // 0x0082a572    dfe0
                         test               ah, 0x41                                      // 0x0082a574    f6c441
                         {disp8} jne        _jmp_addr_0x0082a580                          // 0x0082a577    7507
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0082a579    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0082a57d    894104
_jmp_addr_0x0082a580:    add                ecx, 0x20                                     // 0x0082a580    83c120
                         dec                edx                                           // 0x0082a583    4a
                         {disp8} jne        _jmp_addr_0x0082a528                          // 0x0082a584    75a2
_jmp_addr_0x0082a586:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0082a586    8b542428
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082a58a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082a58f    8b08
                         push               0x0                                           // 0x0082a591    6a00
                         push               edx                                           // 0x0082a593    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082a594    8b54242c
                         push               edx                                           // 0x0082a598    52
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0082a599    8b542424
                         push               esi                                           // 0x0082a59d    56
                         push               edi                                           // 0x0082a59e    57
                         push               edx                                           // 0x0082a59f    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082a5a0    8b54242c
                         push               edx                                           // 0x0082a5a4    52
                         push               eax                                           // 0x0082a5a5    50
                         call               dword ptr [ecx + 0x68]                        // 0x0082a5a6    ff5168
                         pop                edi                                           // 0x0082a5a9    5f
                         pop                esi                                           // 0x0082a5aa    5e
                         add                esp, 0x08                                     // 0x0082a5ab    83c408
                         ret                                                              // 0x0082a5ae    c3
                         nop                                                              // 0x0082a5af    90
_DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl:    sub                esp, 0x40                                     // 0x0082a5b0    83ec40
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0082a5b3    a100abc200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x264b04]        // 0x0082a5b8    8b0d04abc200
                         push               ebx                                           // 0x0082a5be    53
                         {disp8} mov        ebx, dword ptr [esp + 0x50]                   // 0x0082a5bf    8b5c2450
                         push               esi                                           // 0x0082a5c3    56
                         push               edi                                           // 0x0082a5c4    57
                         {disp8} mov        edi, dword ptr [esp + 0x5c]                   // 0x0082a5c5    8b7c245c
                         or                 esi, 0xffffffff                               // 0x0082a5c9    83ceff
                         xor.s              edx, edx                                      // 0x0082a5cc    33d2
                         test               edi, edi                                      // 0x0082a5ce    85ff
                         {disp8} mov        dword ptr [esp + 0x0c], eax                   // 0x0082a5d0    8944240c
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0082a5d4    894c2410
                         {disp32} jbe       _jmp_addr_0x0082a7f8                          // 0x0082a5d8    0f861a020000
                         push               ebp                                           // 0x0082a5de    55
                         {disp8} lea        ecx, dword ptr [ebx + 0x04]                   // 0x0082a5df    8d4b04
_jmp_addr_0x0082a5e2:    {disp8} fld        dword ptr [ecx + -0x04]                       // 0x0082a5e2    d941fc
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a5e5    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a5eb    dfe0
                         test               ah, 0x01                                      // 0x0082a5ed    f6c401
                         {disp8} jne        _jmp_addr_0x0082a620                          // 0x0082a5f0    752e
                         fld                dword ptr [ecx]                               // 0x0082a5f2    d901
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a5f4    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a5fa    dfe0
                         test               ah, 0x01                                      // 0x0082a5fc    f6c401
                         {disp8} jne        _jmp_addr_0x0082a620                          // 0x0082a5ff    751f
                         {disp8} fld        dword ptr [ecx + -0x04]                       // 0x0082a601    d941fc
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0082a604    d85c2410
                         fnstsw             ax                                            // 0x0082a608    dfe0
                         test               ah, 0x41                                      // 0x0082a60a    f6c441
                         {disp8} je         _jmp_addr_0x0082a620                          // 0x0082a60d    7411
                         fld                dword ptr [ecx]                               // 0x0082a60f    d901
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0082a611    d85c2414
                         fnstsw             ax                                            // 0x0082a615    dfe0
                         test               ah, 0x41                                      // 0x0082a617    f6c441
                         {disp32} jne       _jmp_addr_0x0082a7eb                          // 0x0082a61a    0f85cb010000
_jmp_addr_0x0082a620:    mov.s              eax, edx                                      // 0x0082a620    8bc2
                         and                eax, 0xfffffffc                               // 0x0082a622    83e0fc
                         cmp.s              esi, eax                                      // 0x0082a625    3bf0
                         {disp32} je        _jmp_addr_0x0082a739                          // 0x0082a627    0f840c010000
                         {disp8} lea        ebp, dword ptr [edi + -0x02]                  // 0x0082a62d    8d6ffe
                         cmp.s              eax, ebp                                      // 0x0082a630    3bc5
                         {disp32} jge       _jmp_addr_0x0082a739                          // 0x0082a632    0f8d01010000
                         mov.s              esi, eax                                      // 0x0082a638    8bf0
                         shl                eax, 5                                        // 0x0082a63a    c1e005
                         fld                dword ptr [eax + ebx * 0x1]                   // 0x0082a63d    d90418
                         add.s              eax, ebx                                      // 0x0082a640    03c3
                         {disp8} fsub       dword ptr [eax + 0x20]                        // 0x0082a642    d86020
                         fld                st(0)                                         // 0x0082a645    d9c0
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0082a647    d94004
                         {disp8} fsub       dword ptr [eax + 0x24]                        // 0x0082a64a    d86024
                         {disp8} fst        dword ptr [esp + 0x60]                        // 0x0082a64d    d9542460
                         {disp8} fld        dword ptr [eax + 0x18]                        // 0x0082a651    d94018
                         {disp8} fsub       dword ptr [eax + 0x38]                        // 0x0082a654    d86038
                         {disp8} fld        dword ptr [eax + 0x40]                        // 0x0082a657    d94040
                         {disp8} fsub       dword ptr [eax + 0x20]                        // 0x0082a65a    d86020
                         {disp8} fst        dword ptr [esp + 0x5c]                        // 0x0082a65d    d954245c
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0082a661    d95c2438
                         {disp8} mov        ebp, dword ptr [esp + 0x5c]                   // 0x0082a665    8b6c245c
                         {disp8} fld        dword ptr [eax + 0x44]                        // 0x0082a669    d94044
                         {disp8} mov        dword ptr [esp + 0x44], ebp                   // 0x0082a66c    896c2444
                         {disp8} fsub       dword ptr [eax + 0x24]                        // 0x0082a670    d86024
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x0082a673    d9542418
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0082a677    d95c243c
                         {disp8} mov        ebp, dword ptr [esp + 0x18]                   // 0x0082a67b    8b6c2418
                         {disp8} fld        dword ptr [eax + 0x58]                        // 0x0082a67f    d94058
                         {disp8} mov        dword ptr [esp + 0x48], ebp                   // 0x0082a682    896c2448
                         {disp8} fsub       dword ptr [eax + 0x38]                        // 0x0082a686    d86038
                         fld                st(2)                                         // 0x0082a689    d9c2
                         fmul               st, st(1)                                     // 0x0082a68b    d8c9
                         fld                st(2)                                         // 0x0082a68d    d9c2
                         {disp8} fmul       dword ptr [esp + 0x3c]                        // 0x0082a68f    d84c243c
                         fsubp              st(1), st                                     // 0x0082a693    dee9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0082a695    d95c2420
                         fxch               st(1)                                         // 0x0082a699    d9c9
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0082a69b    d84c2438
                         fxch               st(1)                                         // 0x0082a69f    d9c9
                         fmul               st, st(3)                                     // 0x0082a6a1    d8cb
                         fsubp              st(1), st                                     // 0x0082a6a3    dee9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0082a6a5    d95c2424
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0082a6a9    d944243c
                         fmul               st, st(2)                                     // 0x0082a6ad    d8ca
                         fxch               st(1)                                         // 0x0082a6af    d9c9
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0082a6b1    d84c2438
                         fsubp              st(1), st                                     // 0x0082a6b5    dee9
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0082a6b7    d95c2428
                         fstp               st(0)                                         // 0x0082a6bb    ddd8
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0082a6bd    d9442428
                         {disp8} fmul       dword ptr [eax + 0x18]                        // 0x0082a6c1    d84818
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0082a6c4    d9442424
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0082a6c8    d84804
                         faddp              st(1), st                                     // 0x0082a6cb    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0082a6cd    d9442420
                         fmul               dword ptr [eax]                               // 0x0082a6d1    d808
                         faddp              st(1), st                                     // 0x0082a6d3    dec1
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0082a6d5    d95c241c
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x0082a6d9    d9442460
                         {disp8} fld        dword ptr [eax + 0x1c]                        // 0x0082a6dd    d9401c
                         {disp8} fsub       dword ptr [eax + 0x3c]                        // 0x0082a6e0    d8603c
                         {disp8} fld        dword ptr [eax + 0x5c]                        // 0x0082a6e3    d9405c
                         {disp8} fsub       dword ptr [eax + 0x3c]                        // 0x0082a6e6    d8603c
                         fld                st(2)                                         // 0x0082a6e9    d9c2
                         fmul               st, st(1)                                     // 0x0082a6eb    d8c9
                         fld                st(2)                                         // 0x0082a6ed    d9c2
                         {disp8} fmul       dword ptr [esp + 0x48]                        // 0x0082a6ef    d84c2448
                         fsubp              st(1), st                                     // 0x0082a6f3    dee9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0082a6f5    d95c242c
                         fxch               st(1)                                         // 0x0082a6f9    d9c9
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x0082a6fb    d84c2444
                         fxch               st(1)                                         // 0x0082a6ff    d9c9
                         fmul               st, st(3)                                     // 0x0082a701    d8cb
                         fsubp              st(1), st                                     // 0x0082a703    dee9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0082a705    d95c2430
                         {disp8} fld        dword ptr [esp + 0x48]                        // 0x0082a709    d9442448
                         fmul               st, st(2)                                     // 0x0082a70d    d8ca
                         fxch               st(1)                                         // 0x0082a70f    d9c9
                         {disp8} fmul       dword ptr [esp + 0x44]                        // 0x0082a711    d84c2444
                         fsubp              st(1), st                                     // 0x0082a715    dee9
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0082a717    d95c2434
                         fstp               st(0)                                         // 0x0082a71b    ddd8
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0082a71d    d9442430
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0082a721    d84804
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0082a724    d944242c
                         fmul               dword ptr [eax]                               // 0x0082a728    d808
                         faddp              st(1), st                                     // 0x0082a72a    dec1
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0082a72c    d9442434
                         {disp8} fmul       dword ptr [eax + 0x1c]                        // 0x0082a730    d8481c
                         faddp              st(1), st                                     // 0x0082a733    dec1
                         {disp8} fstp       dword ptr [esp + 0x60]                        // 0x0082a735    d95c2460
_jmp_addr_0x0082a739:    {disp8} fld        dword ptr [ecx + -0x04]                       // 0x0082a739    d941fc
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a73c    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a742    dfe0
                         test               ah, 0x01                                      // 0x0082a744    f6c401
                         {disp8} je         _jmp_addr_0x0082a752                          // 0x0082a747    7409
                         {disp8} mov        dword ptr [ecx + -0x04], 0x00000000           // 0x0082a749    c741fc00000000
                         {disp8} jmp        _jmp_addr_0x0082a767                          // 0x0082a750    eb15
_jmp_addr_0x0082a752:    {disp8} fld        dword ptr [ecx + -0x04]                       // 0x0082a752    d941fc
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0082a755    d85c2410
                         fnstsw             ax                                            // 0x0082a759    dfe0
                         test               ah, 0x41                                      // 0x0082a75b    f6c441
                         {disp8} jne        _jmp_addr_0x0082a767                          // 0x0082a75e    7507
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082a760    8b442410
                         {disp8} mov        dword ptr [ecx + -0x04], eax                  // 0x0082a764    8941fc
_jmp_addr_0x0082a767:    fld                dword ptr [ecx]                               // 0x0082a767    d901
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a769    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a76f    dfe0
                         test               ah, 0x01                                      // 0x0082a771    f6c401
                         {disp8} je         _jmp_addr_0x0082a77e                          // 0x0082a774    7408
                         mov                dword ptr [ecx], 0x00000000                   // 0x0082a776    c70100000000
                         {disp8} jmp        _jmp_addr_0x0082a791                          // 0x0082a77c    eb13
_jmp_addr_0x0082a77e:    fld                dword ptr [ecx]                               // 0x0082a77e    d901
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0082a780    d85c2414
                         fnstsw             ax                                            // 0x0082a784    dfe0
                         test               ah, 0x41                                      // 0x0082a786    f6c441
                         {disp8} jne        _jmp_addr_0x0082a791                          // 0x0082a789    7506
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0082a78b    8b442414
                         mov                dword ptr [ecx], eax                          // 0x0082a78f    8901
_jmp_addr_0x0082a791:    {disp8} fld        dword ptr [esp + 0x28]                        // 0x0082a791    d9442428
                         fabs                                                             // 0x0082a795    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0xfa978]             // 0x0082a797    dc1d78399a00
                         fnstsw             ax                                            // 0x0082a79d    dfe0
                         test               ah, 0x41                                      // 0x0082a79f    f6c441
                         {disp8} jne        _jmp_addr_0x0082a7be                          // 0x0082a7a2    751a
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0082a7a4    d9442420
                         {disp8} fmul       dword ptr [ecx + -0x04]                       // 0x0082a7a8    d849fc
                         {disp8} fsubr      dword ptr [esp + 0x1c]                        // 0x0082a7ab    d86c241c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0082a7af    d9442424
                         fmul               dword ptr [ecx]                               // 0x0082a7b3    d809
                         fsubp              st(1), st                                     // 0x0082a7b5    dee9
                         {disp8} fdiv       dword ptr [esp + 0x28]                        // 0x0082a7b7    d8742428
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x0082a7bb    d95914
_jmp_addr_0x0082a7be:    {disp8} fld        dword ptr [esp + 0x34]                        // 0x0082a7be    d9442434
                         fabs                                                             // 0x0082a7c2    d9e1
                         {disp32} fcomp     qword ptr [rdata_bytes + 0xfa978]             // 0x0082a7c4    dc1d78399a00
                         fnstsw             ax                                            // 0x0082a7ca    dfe0
                         test               ah, 0x41                                      // 0x0082a7cc    f6c441
                         {disp8} jne        _jmp_addr_0x0082a7eb                          // 0x0082a7cf    751a
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0082a7d1    d944242c
                         {disp8} fmul       dword ptr [ecx + -0x04]                       // 0x0082a7d5    d849fc
                         {disp8} fsubr      dword ptr [esp + 0x60]                        // 0x0082a7d8    d86c2460
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0082a7dc    d9442430
                         fmul               dword ptr [ecx]                               // 0x0082a7e0    d809
                         fsubp              st(1), st                                     // 0x0082a7e2    dee9
                         {disp8} fdiv       dword ptr [esp + 0x34]                        // 0x0082a7e4    d8742434
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x0082a7e8    d95918
_jmp_addr_0x0082a7eb:    inc                edx                                           // 0x0082a7eb    42
                         add                ecx, 0x20                                     // 0x0082a7ec    83c120
                         cmp.s              edx, edi                                      // 0x0082a7ef    3bd7
                         {disp32} jb        _jmp_addr_0x0082a5e2                          // 0x0082a7f1    0f82ebfdffff
                         pop                ebp                                           // 0x0082a7f7    5d
_jmp_addr_0x0082a7f8:    {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x0082a7f8    8b542464
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082a7fc    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082a801    8b08
                         push               0x0                                           // 0x0082a803    6a00
                         push               edx                                           // 0x0082a805    52
                         {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x0082a806    8b542468
                         push               edx                                           // 0x0082a80a    52
                         {disp8} mov        edx, dword ptr [esp + 0x60]                   // 0x0082a80b    8b542460
                         push               edi                                           // 0x0082a80f    57
                         push               ebx                                           // 0x0082a810    53
                         push               edx                                           // 0x0082a811    52
                         {disp8} mov        edx, dword ptr [esp + 0x68]                   // 0x0082a812    8b542468
                         push               edx                                           // 0x0082a816    52
                         push               eax                                           // 0x0082a817    50
                         call               dword ptr [ecx + 0x68]                        // 0x0082a818    ff5168
                         pop                edi                                           // 0x0082a81b    5f
                         pop                esi                                           // 0x0082a81c    5e
                         pop                ebx                                           // 0x0082a81d    5b
                         add                esp, 0x40                                     // 0x0082a81e    83c440
                         ret                                                              // 0x0082a821    c3
                         nop                                                              // 0x0082a822    90
                         nop                                                              // 0x0082a823    90
                         nop                                                              // 0x0082a824    90
                         nop                                                              // 0x0082a825    90
                         nop                                                              // 0x0082a826    90
                         nop                                                              // 0x0082a827    90
                         nop                                                              // 0x0082a828    90
                         nop                                                              // 0x0082a829    90
                         nop                                                              // 0x0082a82a    90
                         nop                                                              // 0x0082a82b    90
                         nop                                                              // 0x0082a82c    90
                         nop                                                              // 0x0082a82d    90
                         nop                                                              // 0x0082a82e    90
                         nop                                                              // 0x0082a82f    90
_jmp_addr_0x0082a830:    sub                esp, 0x08                                     // 0x0082a830    83ec08
                         {disp32} mov       eax, dword ptr [data_bytes + 0x264b00]        // 0x0082a833    a100abc200
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x264b04]        // 0x0082a838    8b0d04abc200
                         push               esi                                           // 0x0082a83e    56
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                   // 0x0082a83f    8b74241c
                         test               esi, esi                                      // 0x0082a843    85f6
                         push               edi                                           // 0x0082a845    57
                         {disp8} mov        edi, dword ptr [esp + 0x1c]                   // 0x0082a846    8b7c241c
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0082a84a    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                   // 0x0082a84e    894c240c
                         {disp8} jbe        _jmp_addr_0x0082a8b6                          // 0x0082a852    7662
                         mov.s              ecx, edi                                      // 0x0082a854    8bcf
                         mov.s              edx, esi                                      // 0x0082a856    8bd6
_jmp_addr_0x0082a858:    fld                dword ptr [ecx]                               // 0x0082a858    d901
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a85a    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a860    dfe0
                         test               ah, 0x01                                      // 0x0082a862    f6c401
                         {disp8} je         _jmp_addr_0x0082a86f                          // 0x0082a865    7408
                         mov                dword ptr [ecx], 0x00000000                   // 0x0082a867    c70100000000
                         {disp8} jmp        _jmp_addr_0x0082a882                          // 0x0082a86d    eb13
_jmp_addr_0x0082a86f:    fld                dword ptr [ecx]                               // 0x0082a86f    d901
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x0082a871    d85c2408
                         fnstsw             ax                                            // 0x0082a875    dfe0
                         test               ah, 0x41                                      // 0x0082a877    f6c441
                         {disp8} jne        _jmp_addr_0x0082a882                          // 0x0082a87a    7506
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0082a87c    8b442408
                         mov                dword ptr [ecx], eax                          // 0x0082a880    8901
_jmp_addr_0x0082a882:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0082a882    d94104
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082a885    d81d98a38a00
                         fnstsw             ax                                            // 0x0082a88b    dfe0
                         test               ah, 0x01                                      // 0x0082a88d    f6c401
                         {disp8} je         _jmp_addr_0x0082a89b                          // 0x0082a890    7409
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x0082a892    c7410400000000
                         {disp8} jmp        _jmp_addr_0x0082a8b0                          // 0x0082a899    eb15
_jmp_addr_0x0082a89b:    {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0082a89b    d94104
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x0082a89e    d85c240c
                         fnstsw             ax                                            // 0x0082a8a2    dfe0
                         test               ah, 0x41                                      // 0x0082a8a4    f6c441
                         {disp8} jne        _jmp_addr_0x0082a8b0                          // 0x0082a8a7    7507
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0082a8a9    8b44240c
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0082a8ad    894104
_jmp_addr_0x0082a8b0:    add                ecx, 0x28                                     // 0x0082a8b0    83c128
                         dec                edx                                           // 0x0082a8b3    4a
                         {disp8} jne        _jmp_addr_0x0082a858                          // 0x0082a8b4    75a2
_jmp_addr_0x0082a8b6:    {disp8} mov        edx, dword ptr [esp + 0x28]                   // 0x0082a8b6    8b542428
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082a8ba    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082a8bf    8b08
                         push               0x0                                           // 0x0082a8c1    6a00
                         push               edx                                           // 0x0082a8c3    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082a8c4    8b54242c
                         push               edx                                           // 0x0082a8c8    52
                         {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0082a8c9    8b542424
                         push               esi                                           // 0x0082a8cd    56
                         push               edi                                           // 0x0082a8ce    57
                         push               edx                                           // 0x0082a8cf    52
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082a8d0    8b54242c
                         push               edx                                           // 0x0082a8d4    52
                         push               eax                                           // 0x0082a8d5    50
                         call               dword ptr [ecx + 0x68]                        // 0x0082a8d6    ff5168
                         pop                edi                                           // 0x0082a8d9    5f
                         pop                esi                                           // 0x0082a8da    5e
                         add                esp, 0x08                                     // 0x0082a8db    83c408
                         ret                                                              // 0x0082a8de    c3
                         nop                                                              // 0x0082a8df    90
_jmp_addr_0x0082a8e0:    sub                esp, 0x00000090                               // 0x0082a8e0    81ec90000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]        // 0x0082a8e6    a170d4ed00
                         push               ebx                                           // 0x0082a8eb    53
                         push               ebp                                           // 0x0082a8ec    55
                         push               esi                                           // 0x0082a8ed    56
                         xor.s              esi, esi                                      // 0x0082a8ee    33f6
                         push               edi                                           // 0x0082a8f0    57
                         push               esi                                           // 0x0082a8f1    56
                         push               esi                                           // 0x0082a8f2    56
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0082a8f3    89442428
                         {disp32} mov       dword ptr [data_bytes + 0x517470], esi        // 0x0082a8f7    893570d4ed00
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0082a8fd    89742418
                         call               _jmp_addr_0x0087f6d0                          // 0x0082a901    e8ca4d0500
                         mov.s              ebx, eax                                      // 0x0082a906    8bd8
                         add                esp, 0x08                                     // 0x0082a908    83c408
                         cmp.s              ebx, esi                                      // 0x0082a90b    3bde
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0082a90d    895c241c
                         {disp32} je        _jmp_addr_0x0082aaf3                          // 0x0082a911    0f84dc010000
                         xor.s              eax, eax                                      // 0x0082a917    33c0
                         push               0x0                                           // 0x0082a919    6a00
                         mov                ecx, 0x0000001f                               // 0x0082a91b    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x28]                   // 0x0082a920    8d7c2428
                         rep stosd                                                        // 0x0082a924    f3ab
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0082a926    8d542414
                         push               edx                                           // 0x0082a92a    52
                         mov                eax, 0x00000100                               // 0x0082a92b    b800010000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0082a930    89442438
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0082a934    89442434
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]        // 0x0082a938    a17c50e800
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0082a93d    8d54242c
                         mov                ebp, 0x0000007c                               // 0x0082a941    bd7c000000
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0082a946    896c242c
                         {disp8} mov        dword ptr [esp + 0x30], 0x00021007            // 0x0082a94a    c744243007100200
                         {disp32} mov       dword ptr [esp + 0x00000094], 0x00401808      // 0x0082a952    c784249400000008184000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000001            // 0x0082a95d    c744244401000000
                         mov                ecx, 0x00000008                               // 0x0082a965    b908000000
                         mov                esi, 0x00f051b4                               // 0x0082a96a    beb451f000
                         {disp8} lea        edi, dword ptr [esp + 0x74]                   // 0x0082a96f    8d7c2474
                         push               edx                                           // 0x0082a973    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0082a974    f3a5
                         mov                ecx, dword ptr [eax]                          // 0x0082a976    8b08
                         push               eax                                           // 0x0082a978    50
                         call               dword ptr [ecx + 0x18]                        // 0x0082a979    ff5118
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0082a97c    8b542410
                         test               edx, edx                                      // 0x0082a980    85d2
                         {disp32} je        _jmp_addr_0x0082ab01                          // 0x0082a982    0f8479010000
                         xor.s              eax, eax                                      // 0x0082a988    33c0
                         mov                ecx, 0x0000001f                               // 0x0082a98a    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x24]                   // 0x0082a98f    8d7c2424
                         rep stosd                                                        // 0x0082a993    f3ab
                         xor.s              edi, edi                                      // 0x0082a995    33ff
                         push               edi                                           // 0x0082a997    57
                         push               0x00000821                                    // 0x0082a998    6821080000
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0082a99d    8d4c242c
                         push               ecx                                           // 0x0082a9a1    51
                         push               edi                                           // 0x0082a9a2    57
                         {disp8} mov        dword ptr [esp + 0x34], ebp                   // 0x0082a9a3    896c2434
                         mov                eax, dword ptr [edx]                          // 0x0082a9a7    8b02
                         push               edx                                           // 0x0082a9a9    52
                         call               dword ptr [eax + 0x64]                        // 0x0082a9aa    ff5064
                         {disp8} mov        esi, dword ptr [esp + 0x48]                   // 0x0082a9ad    8b742448
                         cmp.s              esi, edi                                      // 0x0082a9b1    3bf7
                         {disp32} je        _jmp_addr_0x0082aab8                          // 0x0082a9b3    0f84ff000000
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x0082a9b9    8b442434
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x0082a9bd    8b8c24a8000000
                         cdq                                                              // 0x0082a9c4    99
                         sub.s              eax, edx                                      // 0x0082a9c5    2bc2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x51746c]        // 0x0082a9c7    8b156cd4ed00
                         sar                eax, 1                                        // 0x0082a9cd    d1f8
                         cmp.s              edx, edi                                      // 0x0082a9cf    3bd7
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082a9d1    8b54242c
                         {disp8} mov        dword ptr [esp + 0x14], edi                   // 0x0082a9d5    897c2414
                         {disp8} jne        _jmp_addr_0x0082aa4c                          // 0x0082a9d9    7571
                         cmp.s              edx, edi                                      // 0x0082a9db    3bd7
                         {disp32} jle       _jmp_addr_0x0082aab8                          // 0x0082a9dd    0f8ed5000000
                         lea                edx, dword ptr [eax + eax * 0x1]              // 0x0082a9e3    8d1400
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0082a9e6    8b442430
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0082a9ea    89542418
                         mov.s              ebx, esi                                      // 0x0082a9ee    8bde
_jmp_addr_0x0082a9f0:    xor.s              edi, edi                                      // 0x0082a9f0    33ff
                         test               eax, eax                                      // 0x0082a9f2    85c0
                         {disp8} jle        _jmp_addr_0x0082aa33                          // 0x0082a9f4    7e3d
                         mov.s              ebp, ebx                                      // 0x0082a9f6    8beb
_jmp_addr_0x0082a9f8:    xor.s              eax, eax                                      // 0x0082a9f8    33c0
                         mov                al, byte ptr [ecx]                            // 0x0082a9fa    8a01
                         xor.s              edx, edx                                      // 0x0082a9fc    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x0082a9fe    8a5101
                         add                ebp, 0x02                                     // 0x0082aa01    83c502
                         shr                eax, 3                                        // 0x0082aa04    c1e803
                         inc                ecx                                           // 0x0082aa07    41
                         mov.s              esi, edx                                      // 0x0082aa08    8bf2
                         shr                esi, 3                                        // 0x0082aa0a    c1ee03
                         xor.s              edx, edx                                      // 0x0082aa0d    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x0082aa0f    8a5101
                         inc                ecx                                           // 0x0082aa12    41
                         or                 eax, 0xffe0                                   // 0x0082aa13    0de0ff0000
                         shl                eax, 5                                        // 0x0082aa18    c1e005
                         or.s               eax, esi                                      // 0x0082aa1b    0bc6
                         shl                eax, 5                                        // 0x0082aa1d    c1e005
                         shr                edx, 3                                        // 0x0082aa20    c1ea03
                         or.s               eax, edx                                      // 0x0082aa23    0bc2
                         inc                ecx                                           // 0x0082aa25    41
                         {disp8} mov        word ptr [ebp + -0x02], ax                    // 0x0082aa26    668945fe
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0082aa2a    8b442430
                         inc                edi                                           // 0x0082aa2e    47
                         cmp.s              edi, eax                                      // 0x0082aa2f    3bf8
                         {disp8} jl         _jmp_addr_0x0082a9f8                          // 0x0082aa31    7cc5
_jmp_addr_0x0082aa33:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0082aa33    8b542414
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0082aa37    8b7c2418
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0082aa3b    8b74242c
                         inc                edx                                           // 0x0082aa3f    42
                         add.s              ebx, edi                                      // 0x0082aa40    03df
                         cmp.s              edx, esi                                      // 0x0082aa42    3bd6
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0082aa44    89542414
                         {disp8} jl         _jmp_addr_0x0082a9f0                          // 0x0082aa48    7ca6
                         {disp8} jmp        _jmp_addr_0x0082aab4                          // 0x0082aa4a    eb68
_jmp_addr_0x0082aa4c:    cmp.s              edx, edi                                      // 0x0082aa4c    3bd7
                         {disp8} jle        _jmp_addr_0x0082aab8                          // 0x0082aa4e    7e68
                         add.s              eax, eax                                      // 0x0082aa50    03c0
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0082aa52    89442418
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0082aa56    8b442430
                         mov.s              ebx, esi                                      // 0x0082aa5a    8bde
_jmp_addr_0x0082aa5c:    xor.s              edi, edi                                      // 0x0082aa5c    33ff
                         test               eax, eax                                      // 0x0082aa5e    85c0
                         {disp8} jle        _jmp_addr_0x0082aa9d                          // 0x0082aa60    7e3b
                         mov.s              ebp, ebx                                      // 0x0082aa62    8beb
_jmp_addr_0x0082aa64:    xor.s              eax, eax                                      // 0x0082aa64    33c0
                         mov                al, byte ptr [ecx]                            // 0x0082aa66    8a01
                         xor.s              edx, edx                                      // 0x0082aa68    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x0082aa6a    8a5101
                         add                ebp, 0x02                                     // 0x0082aa6d    83c502
                         shr                eax, 3                                        // 0x0082aa70    c1e803
                         inc                ecx                                           // 0x0082aa73    41
                         mov.s              esi, edx                                      // 0x0082aa74    8bf2
                         shr                esi, 2                                        // 0x0082aa76    c1ee02
                         and                esi, 0xfffffffe                               // 0x0082aa79    83e6fe
                         xor.s              edx, edx                                      // 0x0082aa7c    33d2
                         {disp8} mov        dl, byte ptr [ecx + 0x01]                     // 0x0082aa7e    8a5101
                         inc                ecx                                           // 0x0082aa81    41
                         shl                eax, 6                                        // 0x0082aa82    c1e006
                         or.s               eax, esi                                      // 0x0082aa85    0bc6
                         shl                eax, 5                                        // 0x0082aa87    c1e005
                         shr                edx, 3                                        // 0x0082aa8a    c1ea03
                         or.s               eax, edx                                      // 0x0082aa8d    0bc2
                         inc                ecx                                           // 0x0082aa8f    41
                         {disp8} mov        word ptr [ebp + -0x02], ax                    // 0x0082aa90    668945fe
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0082aa94    8b442430
                         inc                edi                                           // 0x0082aa98    47
                         cmp.s              edi, eax                                      // 0x0082aa99    3bf8
                         {disp8} jl         _jmp_addr_0x0082aa64                          // 0x0082aa9b    7cc7
_jmp_addr_0x0082aa9d:    {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0082aa9d    8b542414
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x0082aaa1    8b7c2418
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                   // 0x0082aaa5    8b74242c
                         inc                edx                                           // 0x0082aaa9    42
                         add.s              ebx, edi                                      // 0x0082aaaa    03df
                         cmp.s              edx, esi                                      // 0x0082aaac    3bd6
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0082aaae    89542414
                         {disp8} jl         _jmp_addr_0x0082aa5c                          // 0x0082aab2    7ca8
_jmp_addr_0x0082aab4:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0082aab4    8b5c241c
_jmp_addr_0x0082aab8:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082aab8    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0082aabc    8b08
                         push               0x0                                           // 0x0082aabe    6a00
                         push               eax                                           // 0x0082aac0    50
                         call               dword ptr [ecx + 0x80]                        // 0x0082aac1    ff9180000000
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0082aac7    8b4c2410
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0082aacb    8b4304
                         mov                edx, dword ptr [eax]                          // 0x0082aace    8b10
                         push               0x0                                           // 0x0082aad0    6a00
                         push               0x01000000                                    // 0x0082aad2    6800000001
                         push               0x0                                           // 0x0082aad7    6a00
                         push               ecx                                           // 0x0082aad9    51
                         push               0x0                                           // 0x0082aada    6a00
                         push               eax                                           // 0x0082aadc    50
                         call               dword ptr [edx + 0x14]                        // 0x0082aadd    ff5214
                         test               eax, eax                                      // 0x0082aae0    85c0
                         {disp8} jne        _jmp_addr_0x0082aaf3                          // 0x0082aae2    750f
                         {disp32} mov       edx, dword ptr [esp + 0x000000a4]             // 0x0082aae4    8b9424a4000000
                         push               edx                                           // 0x0082aaeb    52
                         mov.s              ecx, ebx                                      // 0x0082aaec    8bcb
                         call               _jmp_addr_0x0087f950                          // 0x0082aaee    e85d4e0500
_jmp_addr_0x0082aaf3:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082aaf3    8b442410
                         test               eax, eax                                      // 0x0082aaf7    85c0
                         {disp8} je         _jmp_addr_0x0082ab01                          // 0x0082aaf9    7406
                         mov                ecx, dword ptr [eax]                          // 0x0082aafb    8b08
                         push               eax                                           // 0x0082aafd    50
                         call               dword ptr [ecx + 8]                           // 0x0082aafe    ff5108
_jmp_addr_0x0082ab01:    test               ebx, ebx                                      // 0x0082ab01    85db
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000            // 0x0082ab03    c744241000000000
                         {disp8} je         _jmp_addr_0x0082ab29                          // 0x0082ab0b    741c
                         mov.s              ecx, ebx                                      // 0x0082ab0d    8bcb
                         call               _jmp_addr_0x0087f880                          // 0x0082ab0f    e86c4d0500
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0082ab14    8b542420
                         pop                edi                                           // 0x0082ab18    5f
                         pop                esi                                           // 0x0082ab19    5e
                         pop                ebp                                           // 0x0082ab1a    5d
                         {disp32} mov       dword ptr [data_bytes + 0x517470], edx        // 0x0082ab1b    891570d4ed00
                         pop                ebx                                           // 0x0082ab21    5b
                         add                esp, 0x00000090                               // 0x0082ab22    81c490000000
                         ret                                                              // 0x0082ab28    c3
_jmp_addr_0x0082ab29:    {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0082ab29    8b442420
                         pop                edi                                           // 0x0082ab2d    5f
                         pop                esi                                           // 0x0082ab2e    5e
                         pop                ebp                                           // 0x0082ab2f    5d
                         {disp32} mov       dword ptr [data_bytes + 0x517470], eax        // 0x0082ab30    a370d4ed00
                         pop                ebx                                           // 0x0082ab35    5b
                         add                esp, 0x00000090                               // 0x0082ab36    81c490000000
                         ret                                                              // 0x0082ab3c    c3
                         nop                                                              // 0x0082ab3d    90
                         nop                                                              // 0x0082ab3e    90
                         nop                                                              // 0x0082ab3f    90
_jmp_addr_0x0082ab40:    sub                esp, 0x00000090                               // 0x0082ab40    81ec90000000
                         push               ebx                                           // 0x0082ab46    53
                         push               ebp                                           // 0x0082ab47    55
                         push               esi                                           // 0x0082ab48    56
                         {disp32} mov       esi, dword ptr [esp + 0x000000a0]             // 0x0082ab49    8bb424a0000000
                         push               edi                                           // 0x0082ab50    57
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0082ab51    8d442420
                         push               eax                                           // 0x0082ab55    50
                         xor.s              ebp, ebp                                      // 0x0082ab56    33ed
                         push               esi                                           // 0x0082ab58    56
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0082ab59    896c2428
                         call               _LHFileLength__FPcPUl                         // 0x0082ab5d    e8fe1df9ff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0082ab62    8b442428
                         add                esp, 0x08                                     // 0x0082ab66    83c408
                         cmp.s              eax, ebp                                      // 0x0082ab69    3bc5
                         {disp32} je        _jmp_addr_0x0082ad5d                          // 0x0082ab6b    0f84ec010000
                         push               esi                                           // 0x0082ab71    56
                         call               _jmp_addr_0x00837300                          // 0x0082ab72    e889c70000
                         add                esp, 0x04                                     // 0x0082ab77    83c404
                         test               eax, eax                                      // 0x0082ab7a    85c0
                         {disp32} jne       _jmp_addr_0x0082ad5d                          // 0x0082ab7c    0f85db010000
                         push               esi                                           // 0x0082ab82    56
                         push               0x00c386ac                                    // 0x0082ab83    68ac86c300
                         call               _Report3D__FPCce                              // 0x0082ab88    e84310ffff
                         push               esi                                           // 0x0082ab8d    56
                         {disp8} mov        dword ptr [esp + 0x1c], ebp                   // 0x0082ab8e    896c241c
                         call               _jmp_addr_0x0087f980                          // 0x0082ab92    e8e94d0500
                         mov.s              ebx, eax                                      // 0x0082ab97    8bd8
                         add                esp, 0x0c                                     // 0x0082ab99    83c40c
                         cmp.s              ebx, ebp                                      // 0x0082ab9c    3bdd
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0082ab9e    895c241c
                         {disp32} je        _jmp_addr_0x0082ad35                          // 0x0082aba2    0f848d010000
                         xor.s              eax, eax                                      // 0x0082aba8    33c0
                         push               ebp                                           // 0x0082abaa    55
                         mov                ecx, 0x0000001f                               // 0x0082abab    b91f000000
                         {disp8} lea        edi, dword ptr [esp + 0x28]                   // 0x0082abb0    8d7c2428
                         rep stosd                                                        // 0x0082abb4    f3ab
                         {disp8} lea        edx, dword ptr [esp + 0x14]                   // 0x0082abb6    8d542414
                         push               edx                                           // 0x0082abba    52
                         mov                eax, 0x00000100                               // 0x0082abbb    b800010000
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0082abc0    89442438
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0082abc4    89442434
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4bf07c]        // 0x0082abc8    a17c50e800
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0082abcd    8d54242c
                         {disp8} mov        dword ptr [esp + 0x2c], 0x0000007c            // 0x0082abd1    c744242c7c000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00021007            // 0x0082abd9    c744243007100200
                         {disp32} mov       dword ptr [esp + 0x00000094], 0x00401808      // 0x0082abe1    c784249400000008184000
                         {disp8} mov        dword ptr [esp + 0x44], 0x00000001            // 0x0082abec    c744244401000000
                         mov                ecx, 0x00000008                               // 0x0082abf4    b908000000
                         mov                esi, 0x00f051b4                               // 0x0082abf9    beb451f000
                         {disp8} lea        edi, dword ptr [esp + 0x74]                   // 0x0082abfe    8d7c2474
                         push               edx                                           // 0x0082ac02    52
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0082ac03    f3a5
                         mov                ecx, dword ptr [eax]                          // 0x0082ac05    8b08
                         push               eax                                           // 0x0082ac07    50
                         call               dword ptr [ecx + 0x18]                        // 0x0082ac08    ff5118
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082ac0b    8b442410
                         cmp.s              eax, ebp                                      // 0x0082ac0f    3bc5
                         {disp32} je        _jmp_addr_0x0082ad43                          // 0x0082ac11    0f842c010000
                         {disp8} mov        edx, dword ptr [ebx + 0x04]                   // 0x0082ac17    8b5304
                         mov                ecx, dword ptr [eax]                          // 0x0082ac1a    8b08
                         push               ebp                                           // 0x0082ac1c    55
                         push               0x01000000                                    // 0x0082ac1d    6800000001
                         push               ebp                                           // 0x0082ac22    55
                         push               edx                                           // 0x0082ac23    52
                         push               ebp                                           // 0x0082ac24    55
                         push               eax                                           // 0x0082ac25    50
                         call               dword ptr [ecx + 0x14]                        // 0x0082ac26    ff5114
                         test               eax, eax                                      // 0x0082ac29    85c0
                         {disp32} jne       _jmp_addr_0x0082ad35                          // 0x0082ac2b    0f8504010000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082ac31    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0082ac35    8b08
                         push               ebp                                           // 0x0082ac37    55
                         push               0x00000821                                    // 0x0082ac38    6821080000
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0082ac3d    8d54242c
                         push               edx                                           // 0x0082ac41    52
                         push               ebp                                           // 0x0082ac42    55
                         push               eax                                           // 0x0082ac43    50
                         call               dword ptr [ecx + 0x64]                        // 0x0082ac44    ff5164
                         {disp8} mov        ecx, dword ptr [esp + 0x48]                   // 0x0082ac47    8b4c2448
                         cmp.s              ecx, ebp                                      // 0x0082ac4b    3bcd
                         {disp32} je        _jmp_addr_0x0082ad25                          // 0x0082ac4d    0f84d2000000
                         {disp8} mov        eax, dword ptr [esp + 0x34]                   // 0x0082ac53    8b442434
                         cdq                                                              // 0x0082ac57    99
                         sub.s              eax, edx                                      // 0x0082ac58    2bc2
                         {disp32} mov       edx, dword ptr [data_bytes + 0x51746c]        // 0x0082ac5a    8b156cd4ed00
                         sar                eax, 1                                        // 0x0082ac60    d1f8
                         cmp.s              edx, ebp                                      // 0x0082ac62    3bd5
                         {disp8} mov        edx, dword ptr [esp + 0x2c]                   // 0x0082ac64    8b54242c
                         {disp8} jne        _jmp_addr_0x0082acc9                          // 0x0082ac68    755f
                         cmp.s              edx, ebp                                      // 0x0082ac6a    3bd5
                         {disp32} jle       _jmp_addr_0x0082ad25                          // 0x0082ac6c    0f8eb3000000
                         add.s              eax, eax                                      // 0x0082ac72    03c0
                         mov.s              ebp, ecx                                      // 0x0082ac74    8be9
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x0082ac76    8b8c24a8000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0082ac7d    89542414
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0082ac81    8b542430
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0082ac85    89442418
_jmp_addr_0x0082ac89:    test               edx, edx                                      // 0x0082ac89    85d2
                         {disp8} jle        _jmp_addr_0x0082acb6                          // 0x0082ac8b    7e29
                         mov.s              esi, ebp                                      // 0x0082ac8d    8bf5
                         mov.s              edi, edx                                      // 0x0082ac8f    8bfa
_jmp_addr_0x0082ac91:    mov                ax, word ptr [esi]                            // 0x0082ac91    668b06
                         add                esi, 0x02                                     // 0x0082ac94    83c602
                         mov.s              ebx, eax                                      // 0x0082ac97    8bd8
                         shr                ebx, 7                                        // 0x0082ac99    c1eb07
                         and                bl, -0x08                                     // 0x0082ac9c    80e3f8
                         mov                byte ptr [ecx], bl                            // 0x0082ac9f    8819
                         mov.s              ebx, eax                                      // 0x0082aca1    8bd8
                         shr                ebx, 2                                        // 0x0082aca3    c1eb02
                         inc                ecx                                           // 0x0082aca6    41
                         and                bl, -0x08                                     // 0x0082aca7    80e3f8
                         mov                byte ptr [ecx], bl                            // 0x0082acaa    8819
                         inc                ecx                                           // 0x0082acac    41
                         shl                al, 3                                         // 0x0082acad    c0e003
                         mov                byte ptr [ecx], al                            // 0x0082acb0    8801
                         inc                ecx                                           // 0x0082acb2    41
                         dec                edi                                           // 0x0082acb3    4f
                         {disp8} jne        _jmp_addr_0x0082ac91                          // 0x0082acb4    75db
_jmp_addr_0x0082acb6:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0082acb6    8b742418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0082acba    8b442414
                         add.s              ebp, esi                                      // 0x0082acbe    03ee
                         dec                eax                                           // 0x0082acc0    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0082acc1    89442414
                         {disp8} jne        _jmp_addr_0x0082ac89                          // 0x0082acc5    75c2
                         {disp8} jmp        _jmp_addr_0x0082ad21                          // 0x0082acc7    eb58
_jmp_addr_0x0082acc9:    cmp.s              edx, ebp                                      // 0x0082acc9    3bd5
                         {disp8} jle        _jmp_addr_0x0082ad25                          // 0x0082accb    7e58
                         add.s              eax, eax                                      // 0x0082accd    03c0
                         mov.s              ebp, ecx                                      // 0x0082accf    8be9
                         {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x0082acd1    8b8c24a8000000
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0082acd8    89542414
                         {disp8} mov        edx, dword ptr [esp + 0x30]                   // 0x0082acdc    8b542430
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0082ace0    89442418
_jmp_addr_0x0082ace4:    test               edx, edx                                      // 0x0082ace4    85d2
                         {disp8} jle        _jmp_addr_0x0082ad10                          // 0x0082ace6    7e28
                         mov.s              esi, ebp                                      // 0x0082ace8    8bf5
                         mov.s              edi, edx                                      // 0x0082acea    8bfa
_jmp_addr_0x0082acec:    mov                ax, word ptr [esi]                            // 0x0082acec    668b06
                         xor.s              ebx, ebx                                      // 0x0082acef    33db
                         mov.s              bl, ah                                        // 0x0082acf1    8adc
                         and                bl, -0x08                                     // 0x0082acf3    80e3f8
                         mov                byte ptr [ecx], bl                            // 0x0082acf6    8819
                         inc                ecx                                           // 0x0082acf8    41
                         add                esi, 0x02                                     // 0x0082acf9    83c602
                         mov.s              ebx, eax                                      // 0x0082acfc    8bd8
                         shr                ebx, 3                                        // 0x0082acfe    c1eb03
                         and                bl, -0x08                                     // 0x0082ad01    80e3f8
                         mov                byte ptr [ecx], bl                            // 0x0082ad04    8819
                         inc                ecx                                           // 0x0082ad06    41
                         shl                al, 3                                         // 0x0082ad07    c0e003
                         mov                byte ptr [ecx], al                            // 0x0082ad0a    8801
                         inc                ecx                                           // 0x0082ad0c    41
                         dec                edi                                           // 0x0082ad0d    4f
                         {disp8} jne        _jmp_addr_0x0082acec                          // 0x0082ad0e    75dc
_jmp_addr_0x0082ad10:    {disp8} mov        esi, dword ptr [esp + 0x18]                   // 0x0082ad10    8b742418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0082ad14    8b442414
                         add.s              ebp, esi                                      // 0x0082ad18    03ee
                         dec                eax                                           // 0x0082ad1a    48
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0082ad1b    89442414
                         {disp8} jne        _jmp_addr_0x0082ace4                          // 0x0082ad1f    75c3
_jmp_addr_0x0082ad21:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0082ad21    8b5c241c
_jmp_addr_0x0082ad25:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082ad25    8b442410
                         mov                ecx, dword ptr [eax]                          // 0x0082ad29    8b08
                         xor.s              ebp, ebp                                      // 0x0082ad2b    33ed
                         push               ebp                                           // 0x0082ad2d    55
                         push               eax                                           // 0x0082ad2e    50
                         call               dword ptr [ecx + 0x80]                        // 0x0082ad2f    ff9180000000
_jmp_addr_0x0082ad35:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0082ad35    8b442410
                         cmp.s              eax, ebp                                      // 0x0082ad39    3bc5
                         {disp8} je         _jmp_addr_0x0082ad43                          // 0x0082ad3b    7406
                         mov                edx, dword ptr [eax]                          // 0x0082ad3d    8b10
                         push               eax                                           // 0x0082ad3f    50
                         call               dword ptr [edx + 8]                           // 0x0082ad40    ff5208
_jmp_addr_0x0082ad43:    cmp.s              ebx, ebp                                      // 0x0082ad43    3bdd
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0082ad45    896c2410
                         {disp8} je         _jmp_addr_0x0082ad7b                          // 0x0082ad49    7430
                         mov.s              ecx, ebx                                      // 0x0082ad4b    8bcb
                         call               _jmp_addr_0x0087f880                          // 0x0082ad4d    e82e4b0500
                         pop                edi                                           // 0x0082ad52    5f
                         pop                esi                                           // 0x0082ad53    5e
                         pop                ebp                                           // 0x0082ad54    5d
                         pop                ebx                                           // 0x0082ad55    5b
                         add                esp, 0x00000090                               // 0x0082ad56    81c490000000
                         ret                                                              // 0x0082ad5c    c3
_jmp_addr_0x0082ad5d:    push               esi                                           // 0x0082ad5d    56
                         push               0x00c38688                                    // 0x0082ad5e    688886c300
                         call               _Report3D__FPCce                              // 0x0082ad63    e8680effff
                         {disp32} mov       edi, dword ptr [esp + 0x000000b0]             // 0x0082ad68    8bbc24b0000000
                         add                esp, 0x08                                     // 0x0082ad6f    83c408
                         mov                ecx, 0x0000c000                               // 0x0082ad72    b900c00000
                         xor.s              eax, eax                                      // 0x0082ad77    33c0
                         rep stosd                                                        // 0x0082ad79    f3ab
_jmp_addr_0x0082ad7b:    pop                edi                                           // 0x0082ad7b    5f
                         pop                esi                                           // 0x0082ad7c    5e
                         pop                ebp                                           // 0x0082ad7d    5d
                         pop                ebx                                           // 0x0082ad7e    5b
                         add                esp, 0x00000090                               // 0x0082ad7f    81c490000000
                         ret                                                              // 0x0082ad85    c3
                         nop                                                              // 0x0082ad86    90
                         nop                                                              // 0x0082ad87    90
                         nop                                                              // 0x0082ad88    90
                         nop                                                              // 0x0082ad89    90
                         nop                                                              // 0x0082ad8a    90
                         nop                                                              // 0x0082ad8b    90
                         nop                                                              // 0x0082ad8c    90
                         nop                                                              // 0x0082ad8d    90
                         nop                                                              // 0x0082ad8e    90
                         nop                                                              // 0x0082ad8f    90
@__ct__Q210NewCollide3ObjFfP7LHPoint@16:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0082ad90    d9442404
                         mov.s              eax, ecx                                      // 0x0082ad94    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0082ad96    8b4c2408
                         {disp8} fmul       dword ptr [esp + 0x04]                        // 0x0082ad9a    d84c2404
                         push               esi                                           // 0x0082ad9e    56
                         mov                esi, dword ptr [ecx]                          // 0x0082ad9f    8b31
                         mov.s              edx, eax                                      // 0x0082ada1    8bd0
                         mov                dword ptr [edx], esi                          // 0x0082ada3    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x0082ada5    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x0082ada8    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0082adab    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x0082adae    894a08
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0082adb1    8b542408
                         xor.s              ecx, ecx                                      // 0x0082adb5    33c9
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x0082adb7    89500c
                         {disp8} mov        dword ptr [eax + 0x14], ecx                   // 0x0082adba    894814
                         {disp8} fstp       dword ptr [eax + 0x10]                        // 0x0082adbd    d95810
                         {disp8} mov        dword ptr [eax + 0x18], edx                   // 0x0082adc0    895018
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0082adc3    89481c
                         {disp8} mov        dword ptr [eax + 0x20], edx                   // 0x0082adc6    895020
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0082adc9    894824
                         pop                esi                                           // 0x0082adcc    5e
                         ret                0x0008                                        // 0x0082adcd    c20800
@__ct__Q210NewCollide3ObjFP7LHPointfff@24:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x0082add0    d9442408
                         push               esi                                           // 0x0082add4    56
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x0082add5    d81d90a38a00
                         mov.s              esi, ecx                                      // 0x0082addb    8bf1
                         fnstsw             ax                                            // 0x0082addd    dfe0
                         test               ah, 0x01                                      // 0x0082addf    f6c401
                         {disp8} je         _jmp_addr_0x0082adec                          // 0x0082ade2    7408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x3f800000            // 0x0082ade4    c744240c0000803f
_jmp_addr_0x0082adec:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x0082adec    d9442410
                         {disp32} fcom      dword ptr [_rdata_float1p0]                   // 0x0082adf0    d81590a38a00
                         fnstsw             ax                                            // 0x0082adf6    dfe0
                         test               ah, 0x01                                      // 0x0082adf8    f6c401
                         {disp8} je         _jmp_addr_0x0082ae05                          // 0x0082adfb    7408
                         fstp               st(0)                                         // 0x0082adfd    ddd8
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0082adff    d90590a38a00
_jmp_addr_0x0082ae05:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x0082ae05    d944240c
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0082ae09    8b442408
                         mov                edx, dword ptr [eax]                          // 0x0082ae0d    8b10
                         {disp8} fmul       dword ptr [esp + 0x0c]                        // 0x0082ae0f    d84c240c
                         fld                st(1)                                         // 0x0082ae13    d9c1
                         mov.s              ecx, esi                                      // 0x0082ae15    8bce
                         mov                dword ptr [ecx], edx                          // 0x0082ae17    8911
                         fmul               st, st(2)                                     // 0x0082ae19    d8ca
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0082ae1b    8b5004
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0082ae1e    895104
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x0082ae21    8b4008
                         faddp              st(1), st                                     // 0x0082ae24    dec1
                         {disp8} mov        edx, dword ptr [esp + 0x0c]                   // 0x0082ae26    8b54240c
                         {disp8} mov        dword ptr [ecx + 0x08], eax                   // 0x0082ae2a    894108
                         {disp8} fst        dword ptr [esi + 0x10]                        // 0x0082ae2d    d95610
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0082ae30    8b4c2414
                         fsqrt                                                            // 0x0082ae34    d9fa
                         {disp8} mov        dword ptr [esi + 0x14], ecx                   // 0x0082ae36    894e14
                         xor.s              eax, eax                                      // 0x0082ae39    33c0
                         mov.s              ecx, esi                                      // 0x0082ae3b    8bce
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0082ae3d    d95e0c
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x0082ae40    895618
                         {disp8} mov        dword ptr [esi + 0x1c], eax                   // 0x0082ae43    89461c
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x0082ae46    d95e20
                         {disp8} mov        dword ptr [esi + 0x24], eax                   // 0x0082ae49    894624
                         call               @CreateList__Q210NewCollide3ObjFv@4           // 0x0082ae4c    e8efe0ffff
                         mov.s              eax, esi                                      // 0x0082ae51    8bc6
                         pop                esi                                           // 0x0082ae53    5e
                         ret                0x0010                                        // 0x0082ae54    c21000
                         nop                                                              // 0x0082ae57    90
                         nop                                                              // 0x0082ae58    90
                         nop                                                              // 0x0082ae59    90
                         nop                                                              // 0x0082ae5a    90
                         nop                                                              // 0x0082ae5b    90
                         nop                                                              // 0x0082ae5c    90
                         nop                                                              // 0x0082ae5d    90
                         nop                                                              // 0x0082ae5e    90
                         nop                                                              // 0x0082ae5f    90
@__dt__Q210NewCollide3ObjFv@4:    {disp32} mov       eax, dword ptr [data_bytes + 0x4f3a98]        // 0x0082ae60    a1989aeb00
                         test               eax, eax                                      // 0x0082ae65    85c0
                         push               esi                                           // 0x0082ae67    56
                         push               edi                                           // 0x0082ae68    57
                         mov.s              edi, ecx                                      // 0x0082ae69    8bf9
                         {disp8} je         _jmp_addr_0x0082ae73                          // 0x0082ae6b    7406
                         push               edi                                           // 0x0082ae6d    57
                         call               eax                                           // 0x0082ae6e    ffd0
                         add                esp, 0x04                                     // 0x0082ae70    83c404
_jmp_addr_0x0082ae73:    {disp8} mov        esi, dword ptr [edi + 0x24]                   // 0x0082ae73    8b7724
                         test               esi, esi                                      // 0x0082ae76    85f6
                         {disp8} je         _jmp_addr_0x0082ae91                          // 0x0082ae78    7417
                         mov.s              ecx, esi                                      // 0x0082ae7a    8bce
                         call               _jmp_addr_0x00829260                          // 0x0082ae7c    e8dfe3ffff
                         push               esi                                           // 0x0082ae81    56
                         call               ??3@YAXPAX@Z                                  // 0x0082ae82    e81140f8ff
                         add                esp, 0x04                                     // 0x0082ae87    83c404
                         {disp8} mov        dword ptr [edi + 0x24], 0x00000000            // 0x0082ae8a    c7472400000000
_jmp_addr_0x0082ae91:    pop                edi                                           // 0x0082ae91    5f
                         pop                esi                                           // 0x0082ae92    5e
                         ret                                                              // 0x0082ae93    c3
                         nop                                                              // 0x0082ae94    90
                         nop                                                              // 0x0082ae95    90
                         nop                                                              // 0x0082ae96    90
                         nop                                                              // 0x0082ae97    90
                         nop                                                              // 0x0082ae98    90
                         nop                                                              // 0x0082ae99    90
                         nop                                                              // 0x0082ae9a    90
                         nop                                                              // 0x0082ae9b    90
                         nop                                                              // 0x0082ae9c    90
                         nop                                                              // 0x0082ae9d    90
                         nop                                                              // 0x0082ae9e    90
                         nop                                                              // 0x0082ae9f    90
??_DNewCollide@@QAEXXZ:
                         push               esi                                           // 0x0082aea0    56
                         push               edi                                           // 0x0082aea1    57
                         mov.s              edi, ecx                                      // 0x0082aea2    8bf9
                         mov                esi, dword ptr [edi]                          // 0x0082aea4    8b37
                         test               esi, esi                                      // 0x0082aea6    85f6
                         {disp8} je         _jmp_addr_0x0082aec0                          // 0x0082aea8    7416
                         mov.s              ecx, esi                                      // 0x0082aeaa    8bce
                         call               @__dt__Q210NewCollide3ObjFv@4                 // 0x0082aeac    e8afffffff
                         push               esi                                           // 0x0082aeb1    56
                         call               ??3@YAXPAX@Z                                  // 0x0082aeb2    e8e13ff8ff
                         add                esp, 0x04                                     // 0x0082aeb7    83c404
                         mov                dword ptr [edi], 0x00000000                   // 0x0082aeba    c70700000000
_jmp_addr_0x0082aec0:    pop                edi                                           // 0x0082aec0    5f
                         pop                esi                                           // 0x0082aec1    5e
                         ret                                                              // 0x0082aec2    c3
                         nop                                                              // 0x0082aec3    90
                         nop                                                              // 0x0082aec4    90
                         nop                                                              // 0x0082aec5    90
                         nop                                                              // 0x0082aec6    90
                         nop                                                              // 0x0082aec7    90
                         nop                                                              // 0x0082aec8    90
                         nop                                                              // 0x0082aec9    90
                         nop                                                              // 0x0082aeca    90
                         nop                                                              // 0x0082aecb    90
                         nop                                                              // 0x0082aecc    90
                         nop                                                              // 0x0082aecd    90
                         nop                                                              // 0x0082aece    90
                         nop                                                              // 0x0082aecf    90
_jmp_addr_0x0082aed0:    push               esi                                           // 0x0082aed0    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4f39b8]        // 0x0082aed1    8b35b899eb00
                         test               esi, esi                                      // 0x0082aed7    85f6
                         {disp8} je         _jmp_addr_0x0082aee8                          // 0x0082aed9    740d
_jmp_addr_0x0082aedb:    mov.s              ecx, esi                                      // 0x0082aedb    8bce
                         mov                esi, dword ptr [esi]                          // 0x0082aedd    8b36
                         call               _jmp_addr_0x00823420                          // 0x0082aedf    e83c85ffff
                         test               esi, esi                                      // 0x0082aee4    85f6
                         {disp8} jne        _jmp_addr_0x0082aedb                          // 0x0082aee6    75f3
_jmp_addr_0x0082aee8:    {disp32} mov       esi, dword ptr [data_bytes + 0x4f3a00]        // 0x0082aee8    8b35009aeb00
                         test               esi, esi                                      // 0x0082aeee    85f6
                         {disp8} je         _jmp_addr_0x0082af10                          // 0x0082aef0    741e
                         push               edi                                           // 0x0082aef2    57
_jmp_addr_0x0082aef3:    mov.s              edi, esi                                      // 0x0082aef3    8bfe
                         test               edi, edi                                      // 0x0082aef5    85ff
                         mov                esi, dword ptr [esi]                          // 0x0082aef7    8b36
                         {disp8} je         _jmp_addr_0x0082af0b                          // 0x0082aef9    7410
                         mov.s              ecx, edi                                      // 0x0082aefb    8bcf
                         call               _jmp_addr_0x00825300                          // 0x0082aefd    e8fea3ffff
                         push               edi                                           // 0x0082af02    57
                         call               ??3@YAXPAX@Z                                  // 0x0082af03    e8903ff8ff
                         add                esp, 0x04                                     // 0x0082af08    83c404
_jmp_addr_0x0082af0b:    test               esi, esi                                      // 0x0082af0b    85f6
                         {disp8} jne        _jmp_addr_0x0082aef3                          // 0x0082af0d    75e4
                         pop                edi                                           // 0x0082af0f    5f
_jmp_addr_0x0082af10:    pop                esi                                           // 0x0082af10    5e
                         ret                                                              // 0x0082af11    c3
                         nop                                                              // 0x0082af12    90
                         nop                                                              // 0x0082af13    90
                         nop                                                              // 0x0082af14    90
                         nop                                                              // 0x0082af15    90
                         nop                                                              // 0x0082af16    90
                         nop                                                              // 0x0082af17    90
                         nop                                                              // 0x0082af18    90
                         nop                                                              // 0x0082af19    90
                         nop                                                              // 0x0082af1a    90
                         nop                                                              // 0x0082af1b    90
                         nop                                                              // 0x0082af1c    90
                         nop                                                              // 0x0082af1d    90
                         nop                                                              // 0x0082af1e    90
                         nop                                                              // 0x0082af1f    90
                         ret                                                              // 0x0082af20    c3
                         nop                                                              // 0x0082af21    90
                         nop                                                              // 0x0082af22    90
                         nop                                                              // 0x0082af23    90
                         nop                                                              // 0x0082af24    90
                         nop                                                              // 0x0082af25    90
                         nop                                                              // 0x0082af26    90
                         nop                                                              // 0x0082af27    90
                         nop                                                              // 0x0082af28    90
                         nop                                                              // 0x0082af29    90
                         nop                                                              // 0x0082af2a    90
                         nop                                                              // 0x0082af2b    90
                         nop                                                              // 0x0082af2c    90
                         nop                                                              // 0x0082af2d    90
                         nop                                                              // 0x0082af2e    90
                         nop                                                              // 0x0082af2f    90
                         sub                esp, 0x00000520                               // 0x0082af30    81ec20050000
                         {disp32} mov       ecx, dword ptr [esp + 0x00000524]             // 0x0082af36    8b8c2424050000
                         push               ebx                                           // 0x0082af3d    53
                         push               ebp                                           // 0x0082af3e    55
                         mov                eax, 0x00000001                               // 0x0082af3f    b801000000
                         cmp.s              ecx, eax                                      // 0x0082af44    3bc8
                         push               esi                                           // 0x0082af46    56
                         push               edi                                           // 0x0082af47    57
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0082af48    89442424
                         {disp32} jle       _jmp_addr_0x0082b0e3                          // 0x0082af4c    0f8e91010000
                         {disp32} mov       eax, dword ptr [esp + 0x00000538]             // 0x0082af52    8b842438050000
                         add                eax, 0x04                                     // 0x0082af59    83c004
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0082af5c    89442414
_jmp_addr_0x0082af60:    {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0082af60    8b4c2414
                         mov                edi, dword ptr [ecx]                          // 0x0082af64    8b39
                         {disp8} lea        edx, dword ptr [esp + 0x1c]                   // 0x0082af66    8d54241c
                         push               edx                                           // 0x0082af6a    52
                         push               edi                                           // 0x0082af6b    57
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x0082af6c    897c2428
                         call               _LHFileLength__FPcPUl                         // 0x0082af70    e8eb19f9ff
                         add                esp, 0x08                                     // 0x0082af75    83c408
                         test               eax, eax                                      // 0x0082af78    85c0
                         {disp32} jne       _jmp_addr_0x0082b0c6                          // 0x0082af7a    0f8546010000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0082af80    8b44241c
                         push               eax                                           // 0x0082af84    50
                         call               _malloc                                       // 0x0082af85    e8c2b6f9ff
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0082af8a    8b4c2420
                         xor.s              esi, esi                                      // 0x0082af8e    33f6
                         push               esi                                           // 0x0082af90    56
                         push               ecx                                           // 0x0082af91    51
                         mov.s              ebp, eax                                      // 0x0082af92    8be8
                         push               ebp                                           // 0x0082af94    55
                         push               edi                                           // 0x0082af95    57
                         call               _LHLoadData__FPcPvUlPUl                       // 0x0082af96    e8551ef9ff
                         {disp8} mov        eax, dword ptr [ebp + 0x38]                   // 0x0082af9b    8b4538
                         add                esp, 0x14                                     // 0x0082af9e    83c414
                         cmp.s              eax, esi                                      // 0x0082afa1    3bc6
                         {disp8} mov        dword ptr [esp + 0x10], esi                   // 0x0082afa3    89742410
                         {disp8} mov        dword ptr [esp + 0x18], esi                   // 0x0082afa7    89742418
                         {disp32} jle       _jmp_addr_0x0082b08f                          // 0x0082afab    0f8ede000000
                         {disp32} lea       eax, dword ptr [esp + 0x00000130]             // 0x0082afb1    8d842430010000
                         sub                eax, 0x04                                     // 0x0082afb8    83e804
                         {disp8} mov        dword ptr [esp + 0x2c], eax                   // 0x0082afbb    8944242c
                         {disp8} jmp        _jmp_addr_0x0082afc5                          // 0x0082afbf    eb04
_jmp_addr_0x0082afc1:    {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x0082afc1    8b7c2420
_jmp_addr_0x0082afc5:    {disp8} mov        edx, dword ptr [ebp + 0x3c]                   // 0x0082afc5    8b553c
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0082afc8    8b742410
                         or                 ecx, 0xffffffff                               // 0x0082afcc    83c9ff
                         add.s              edx, esi                                      // 0x0082afcf    03d6
                         mov                ebx, dword ptr [edx + ebp * 0x1]              // 0x0082afd1    8b1c2a
                         mov                edx, dword ptr [ebx + ebp * 0x1]              // 0x0082afd4    8b142b
                         xor.s              eax, eax                                      // 0x0082afd7    33c0
                         add.s              ebx, ebp                                      // 0x0082afd9    03dd
                         repne scasb                                                      // 0x0082afdb    f2ae
                         not                ecx                                           // 0x0082afdd    f7d1
                         sub.s              edi, ecx                                      // 0x0082afdf    2bf9
                         mov.s              eax, ecx                                      // 0x0082afe1    8bc1
                         shr                ecx, 2                                        // 0x0082afe3    c1e902
                         {disp32} lea       esi, dword ptr [esp + 0x00000130]             // 0x0082afe6    8db42430010000
                         {disp8} mov        dword ptr [esp + 0x28], esi                   // 0x0082afed    89742428
                         mov.s              esi, edi                                      // 0x0082aff1    8bf7
                         {disp8} mov        edi, dword ptr [esp + 0x28]                   // 0x0082aff3    8b7c2428
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0082aff7    f3a5
                         mov.s              ecx, eax                                      // 0x0082aff9    8bc8
                         and                ecx, 0x03                                     // 0x0082affb    83e103
                         rep movsb                                                        // 0x0082affe    f3a4
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x0082b000    8b7c2420
                         or                 ecx, 0xffffffff                               // 0x0082b004    83c9ff
                         xor.s              eax, eax                                      // 0x0082b007    33c0
                         repne scasb                                                      // 0x0082b009    f2ae
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0082b00b    8b44242c
                         not                ecx                                           // 0x0082b00f    f7d1
                         dec                ecx                                           // 0x0082b011    49
                         push               edx                                           // 0x0082b012    52
                         mov                byte ptr [ecx + eax * 0x1], 0x00              // 0x0082b013    c6040100
                         {disp32} lea       ecx, dword ptr [esp + 0x00000134]             // 0x0082b017    8d8c2434010000
                         push               ecx                                           // 0x0082b01e    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0082b01f    8d542438
                         push               0x00c386c4                                    // 0x0082b023    68c486c300
                         push               edx                                           // 0x0082b028    52
                         call               _sprintf                                      // 0x0082b029    e8a4a7f9ff
                         push               0x0                                           // 0x0082b02e    6a00
                         push               0x0                                           // 0x0082b030    6a00
                         push               0x00000100                                    // 0x0082b032    6800010000
                         push               0x00000100                                    // 0x0082b037    6800010000
                         add                ebx, 0x04                                     // 0x0082b03c    83c304
                         push               ebx                                           // 0x0082b03f    53
                         call               _jmp_addr_0x00820920                          // 0x0082b040    e8db58ffff
                         mov.s              esi, eax                                      // 0x0082b045    8bf0
                         movsx              eax, word ptr [esi + 0x0e]                    // 0x0082b047    0fbf460e
                         movsx              ecx, word ptr [esi + 0x0c]                    // 0x0082b04b    0fbf4e0c
                         imul               eax, ecx                                      // 0x0082b04f    0fafc1
                         push               0x0                                           // 0x0082b052    6a00
                         {disp32} lea       edx, dword ptr [eax * 0x4 + 0x0000002c]       // 0x0082b054    8d14852c000000
                         push               edx                                           // 0x0082b05b    52
                         {disp8} lea        eax, dword ptr [esp + 0x5c]                   // 0x0082b05c    8d44245c
                         push               esi                                           // 0x0082b060    56
                         push               eax                                           // 0x0082b061    50
                         call               _jmp_addr_0x007bd030                          // 0x0082b062    e8c91ff9ff
                         push               esi                                           // 0x0082b067    56
                         call               _free                                         // 0x0082b068    e819b7f9ff
                         {disp8} mov        eax, dword ptr [esp + 0x50]                   // 0x0082b06d    8b442450
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0082b071    8b542448
                         {disp8} mov        ecx, dword ptr [ebp + 0x38]                   // 0x0082b075    8b4d38
                         add                esp, 0x38                                     // 0x0082b078    83c438
                         inc                eax                                           // 0x0082b07b    40
                         add                edx, 0x04                                     // 0x0082b07c    83c204
                         cmp.s              eax, ecx                                      // 0x0082b07f    3bc1
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0082b081    89442418
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0082b085    89542410
                         {disp32} jl        _jmp_addr_0x0082afc1                          // 0x0082b089    0f8c32ffffff
_jmp_addr_0x0082b08f:    push               ebp                                           // 0x0082b08f    55
                         call               _free                                         // 0x0082b090    e8f1b6f9ff
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0082b095    8b442428
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0082b099    8b542418
                         {disp32} mov       ecx, dword ptr [esp + 0x00000538]             // 0x0082b09d    8b8c2438050000
                         add                esp, 0x04                                     // 0x0082b0a4    83c404
                         inc                eax                                           // 0x0082b0a7    40
                         add                edx, 0x04                                     // 0x0082b0a8    83c204
                         cmp.s              eax, ecx                                      // 0x0082b0ab    3bc1
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0082b0ad    89442424
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0082b0b1    89542414
                         {disp32} jl        _jmp_addr_0x0082af60                          // 0x0082b0b5    0f8ca5feffff
                         pop                edi                                           // 0x0082b0bb    5f
                         pop                esi                                           // 0x0082b0bc    5e
                         pop                ebp                                           // 0x0082b0bd    5d
                         pop                ebx                                           // 0x0082b0be    5b
                         add                esp, 0x00000520                               // 0x0082b0bf    81c420050000
                         ret                                                              // 0x0082b0c5    c3
_jmp_addr_0x0082b0c6:    {disp32} lea       ecx, dword ptr [esp + 0x00000130]             // 0x0082b0c6    8d8c2430010000
                         push               ecx                                           // 0x0082b0cd    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000134]             // 0x0082b0ce    8d942434010000
                         push               0x00c38474                                    // 0x0082b0d5    687484c300
                         push               edx                                           // 0x0082b0da    52
                         call               _sprintf                                      // 0x0082b0db    e8f2a6f9ff
                         add                esp, 0x0c                                     // 0x0082b0e0    83c40c
_jmp_addr_0x0082b0e3:    pop                edi                                           // 0x0082b0e3    5f
                         pop                esi                                           // 0x0082b0e4    5e
                         pop                ebp                                           // 0x0082b0e5    5d
                         pop                ebx                                           // 0x0082b0e6    5b
                         add                esp, 0x00000520                               // 0x0082b0e7    81c420050000
                         ret                                                              // 0x0082b0ed    c3
                         nop                                                              // 0x0082b0ee    90
                         nop                                                              // 0x0082b0ef    90
_jmp_addr_0x0082b0f0:    {disp32} mov       cl, byte ptr [data_bytes + 0x5021b8]          // 0x0082b0f0    8a0db881ec00
                         sub                esp, 0x08                                     // 0x0082b0f6    83ec08
                         push               esi                                           // 0x0082b0f9    56
                         {disp32} mov       esi, dword ptr [__imp__GetTickCount@4]        // 0x0082b0fa    8b35c4918a00
                         push               edi                                           // 0x0082b100    57
                         mov                al, 0x01                                      // 0x0082b101    b001
                         xor.s              edi, edi                                      // 0x0082b103    33ff
                         test               al, cl                                        // 0x0082b105    84c8
                         {disp8} jne        _jmp_addr_0x0082b148                          // 0x0082b107    753f
                         mov.s              dl, cl                                        // 0x0082b109    8ad1
                         or.s               dl, al                                        // 0x0082b10b    0ad0
                         {disp32} mov       byte ptr [data_bytes + 0x5021b8], dl          // 0x0082b10d    8815b881ec00
                         call               esi                                           // 0x0082b113    ffd6
                         sub                eax, dword ptr [data_bytes + 0x4dbc78]        // 0x0082b115    2b05781cea00
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0082b11b    89442408
                         {disp32} mov       eax, dword ptr [data_bytes + 0x4dbc7c]        // 0x0082b11f    a17c1cea00
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0082b124    897c240c
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0082b128    df6c2408
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0082b12c    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0082b130    897c240c
                         {disp32} fmul      dword ptr [data_bytes + 0x4dbc80]             // 0x0082b134    d80d801cea00
                         {disp8} fiadd      dword ptr [esp + 0x08]                        // 0x0082b13a    da442408
                         call               _jmp_addr_0x007a1400                          // 0x0082b13e    e8bd62f7ff
                         {disp32} mov       dword ptr [data_bytes + 0x5021b4], eax        // 0x0082b143    a3b481ec00
_jmp_addr_0x0082b148:    call               esi                                           // 0x0082b148    ffd6
                         {disp32} mov       esi, dword ptr [data_bytes + 0x4dbc78]        // 0x0082b14a    8b35781cea00
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4dbc7c]        // 0x0082b150    8b0d7c1cea00
                         sub.s              eax, esi                                      // 0x0082b156    2bc6
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x0082b158    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0082b15c    897c240c
                         {disp8} fild       qword ptr [esp + 0x08]                        // 0x0082b160    df6c2408
                         {disp8} mov        dword ptr [esp + 0x08], ecx                   // 0x0082b164    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], edi                   // 0x0082b168    897c240c
                         {disp32} fmul      dword ptr [data_bytes + 0x4dbc80]             // 0x0082b16c    d80d801cea00
                         {disp8} fiadd      dword ptr [esp + 0x08]                        // 0x0082b172    da442408
                         call               _jmp_addr_0x007a1400                          // 0x0082b176    e88562f7ff
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5021b4]        // 0x0082b17b    8b15b481ec00
                         mov.s              edi, eax                                      // 0x0082b181    8bf8
                         mov.s              ecx, edi                                      // 0x0082b183    8bcf
                         sub.s              ecx, edx                                      // 0x0082b185    2bca
                         cmp                ecx, 0x00000bb8                               // 0x0082b187    81f9b80b0000
                         {disp8} jl         _jmp_addr_0x0082b1e3                          // 0x0082b18d    7c54
                         {disp32} mov       dl, byte ptr [data_bytes + 0x5021b8]          // 0x0082b18f    8a15b881ec00
                         {disp32} mov       esi, dword ptr [data_bytes + 0x504640]        // 0x0082b195    8b3540a6ec00
                         mov                al, 0x02                                      // 0x0082b19b    b002
                         test               al, dl                                        // 0x0082b19d    84d0
                         {disp8} jne        _jmp_addr_0x0082b1af                          // 0x0082b19f    750e
                         or.s               dl, al                                        // 0x0082b1a1    0ad0
                         {disp32} mov       byte ptr [data_bytes + 0x5021b8], dl          // 0x0082b1a3    8815b881ec00
                         {disp32} mov       dword ptr [data_bytes + 0x5021b0], esi        // 0x0082b1a9    8935b081ec00
_jmp_addr_0x0082b1af:    {disp32} mov       edx, dword ptr [data_bytes + 0x5021b0]        // 0x0082b1af    8b15b081ec00
                         mov.s              eax, esi                                      // 0x0082b1b5    8bc6
                         sub.s              eax, edx                                      // 0x0082b1b7    2bc2
                         cmp                eax, 0x04                                     // 0x0082b1b9    83f804
                         {disp8} jl         _jmp_addr_0x0082b1e3                          // 0x0082b1bc    7c25
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0082b1be    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0082b1c1    8d0480
                         lea                eax, dword ptr [eax + eax * 0x4]              // 0x0082b1c4    8d0480
                         shl                eax, 3                                        // 0x0082b1c7    c1e003
                         cdq                                                              // 0x0082b1ca    99
                         idiv               ecx                                           // 0x0082b1cb    f7f9
                         cmp                eax, 0x05                                     // 0x0082b1cd    83f805
                         {disp8} jl         _jmp_addr_0x0082b1e3                          // 0x0082b1d0    7c11
                         {disp32} mov       dword ptr [data_bytes + 0x2726e0], eax        // 0x0082b1d2    a3e086c300
                         {disp32} mov       dword ptr [data_bytes + 0x5021b4], edi        // 0x0082b1d7    893db481ec00
                         {disp32} mov       dword ptr [data_bytes + 0x5021b0], esi        // 0x0082b1dd    8935b081ec00
_jmp_addr_0x0082b1e3:    pop                edi                                           // 0x0082b1e3    5f
                         pop                esi                                           // 0x0082b1e4    5e
                         add                esp, 0x08                                     // 0x0082b1e5    83c408
                         ret                                                              // 0x0082b1e8    c3
                         nop                                                              // 0x0082b1e9    90
                         nop                                                              // 0x0082b1ea    90
                         nop                                                              // 0x0082b1eb    90
                         nop                                                              // 0x0082b1ec    90
                         nop                                                              // 0x0082b1ed    90
                         nop                                                              // 0x0082b1ee    90
                         nop                                                              // 0x0082b1ef    90
_globl_ct_0x0082b1f0:    {disp32} jmp       _jmp_addr_0x0082b200                          // 0x0082b1f0    e90b000000
                         nop                                                              // 0x0082b1f5    90
                         nop                                                              // 0x0082b1f6    90
                         nop                                                              // 0x0082b1f7    90
                         nop                                                              // 0x0082b1f8    90
                         nop                                                              // 0x0082b1f9    90
                         nop                                                              // 0x0082b1fa    90
                         nop                                                              // 0x0082b1fb    90
                         nop                                                              // 0x0082b1fc    90
                         nop                                                              // 0x0082b1fd    90
                         nop                                                              // 0x0082b1fe    90
                         nop                                                              // 0x0082b1ff    90
_jmp_addr_0x0082b200:    xor.s              al, al                                        // 0x0082b200    32c0
                         {disp32} mov       byte ptr [data_bytes + 0x501f08], al          // 0x0082b202    a2087fec00
                         {disp32} mov       byte ptr [data_bytes + 0x501f09], al          // 0x0082b207    a2097fec00
                         {disp32} mov       byte ptr [data_bytes + 0x501f0a], al          // 0x0082b20c    a20a7fec00
                         {disp32} mov       byte ptr [data_bytes + 0x501f0b], -0x01       // 0x0082b211    c6050b7fec00ff
                         ret                                                              // 0x0082b218    c3
                         nop                                                              // 0x0082b219    90
                         nop                                                              // 0x0082b21a    90
                         nop                                                              // 0x0082b21b    90
                         nop                                                              // 0x0082b21c    90
                         nop                                                              // 0x0082b21d    90
                         nop                                                              // 0x0082b21e    90
                         nop                                                              // 0x0082b21f    90
_SetD3DMatrix__10LH3DRenderFRQ29IndirectX10_D3DMATRIXR8LHMatrix:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0082b220    8b442404
                         {disp8} mov        ecx, dword ptr [esp + 0x08]                   // 0x0082b224    8b4c2408
                         mov                edx, dword ptr [ecx]                          // 0x0082b228    8b11
                         mov                dword ptr [eax], edx                          // 0x0082b22a    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0082b22c    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                   // 0x0082b22f    895004
                         {disp8} mov        edx, dword ptr [ecx + 0x08]                   // 0x0082b232    8b5108
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0082b235    895008
                         push               esi                                           // 0x0082b238    56
                         xor.s              edx, edx                                      // 0x0082b239    33d2
                         {disp8} mov        dword ptr [eax + 0x0c], edx                   // 0x0082b23b    89500c
                         {disp8} mov        esi, dword ptr [ecx + 0x0c]                   // 0x0082b23e    8b710c
                         {disp8} mov        dword ptr [eax + 0x10], esi                   // 0x0082b241    897010
                         {disp8} mov        esi, dword ptr [ecx + 0x10]                   // 0x0082b244    8b7110
                         {disp8} mov        dword ptr [eax + 0x14], esi                   // 0x0082b247    897014
                         {disp8} mov        esi, dword ptr [ecx + 0x14]                   // 0x0082b24a    8b7114
                         {disp8} mov        dword ptr [eax + 0x18], esi                   // 0x0082b24d    897018
                         {disp8} mov        dword ptr [eax + 0x1c], edx                   // 0x0082b250    89501c
                         {disp8} mov        esi, dword ptr [ecx + 0x18]                   // 0x0082b253    8b7118
                         {disp8} mov        dword ptr [eax + 0x20], esi                   // 0x0082b256    897020
                         {disp8} mov        esi, dword ptr [ecx + 0x1c]                   // 0x0082b259    8b711c
                         {disp8} mov        dword ptr [eax + 0x24], esi                   // 0x0082b25c    897024
                         {disp8} mov        esi, dword ptr [ecx + 0x20]                   // 0x0082b25f    8b7120
                         {disp8} mov        dword ptr [eax + 0x28], esi                   // 0x0082b262    897028
                         {disp8} mov        dword ptr [eax + 0x2c], edx                   // 0x0082b265    89502c
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x0082b268    8b5124
                         {disp8} mov        dword ptr [eax + 0x30], edx                   // 0x0082b26b    895030
                         {disp8} mov        edx, dword ptr [ecx + 0x28]                   // 0x0082b26e    8b5128
                         {disp8} mov        dword ptr [eax + 0x34], edx                   // 0x0082b271    895034
                         {disp8} mov        ecx, dword ptr [ecx + 0x2c]                   // 0x0082b274    8b492c
                         {disp8} mov        dword ptr [eax + 0x38], ecx                   // 0x0082b277    894838
                         {disp8} mov        dword ptr [eax + 0x3c], 0x3f800000            // 0x0082b27a    c7403c0000803f
                         pop                esi                                           // 0x0082b281    5e
                         ret                                                              // 0x0082b282    c3
                         nop                                                              // 0x0082b283    90
                         nop                                                              // 0x0082b284    90
                         nop                                                              // 0x0082b285    90
                         nop                                                              // 0x0082b286    90
                         nop                                                              // 0x0082b287    90
                         nop                                                              // 0x0082b288    90
                         nop                                                              // 0x0082b289    90
                         nop                                                              // 0x0082b28a    90
                         nop                                                              // 0x0082b28b    90
                         nop                                                              // 0x0082b28c    90
                         nop                                                              // 0x0082b28d    90
                         nop                                                              // 0x0082b28e    90
                         nop                                                              // 0x0082b28f    90
_jmp_addr_0x0082b290:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0082b290    8b442404
                         xor.s              ecx, ecx                                      // 0x0082b294    33c9
                         mov                edx, 0x3f800000                               // 0x0082b296    ba0000803f
                         mov                dword ptr [eax], edx                          // 0x0082b29b    8910
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0082b29d    894804
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0082b2a0    894808
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0082b2a3    89480c
                         {disp8} mov        dword ptr [eax + 0x10], ecx                   // 0x0082b2a6    894810
                         {disp8} mov        dword ptr [eax + 0x14], edx                   // 0x0082b2a9    895014
                         {disp8} mov        dword ptr [eax + 0x18], ecx                   // 0x0082b2ac    894818
                         {disp8} mov        dword ptr [eax + 0x1c], ecx                   // 0x0082b2af    89481c
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x0082b2b2    894820
                         {disp8} mov        dword ptr [eax + 0x24], ecx                   // 0x0082b2b5    894824
                         {disp8} mov        dword ptr [eax + 0x28], edx                   // 0x0082b2b8    895028
                         {disp8} mov        dword ptr [eax + 0x2c], ecx                   // 0x0082b2bb    89482c
                         {disp8} mov        dword ptr [eax + 0x30], ecx                   // 0x0082b2be    894830
                         {disp8} mov        dword ptr [eax + 0x34], ecx                   // 0x0082b2c1    894834
                         {disp8} mov        dword ptr [eax + 0x38], ecx                   // 0x0082b2c4    894838
                         {disp8} mov        dword ptr [eax + 0x3c], edx                   // 0x0082b2c7    89503c
                         ret                                                              // 0x0082b2ca    c3
                         nop                                                              // 0x0082b2cb    90
                         nop                                                              // 0x0082b2cc    90
                         nop                                                              // 0x0082b2cd    90
                         nop                                                              // 0x0082b2ce    90
                         nop                                                              // 0x0082b2cf    90
_SetProjMatrix__10LH3DRenderFP9D3DMATRIXP9D3DMATRIXfff:    {disp8} fld        dword ptr [esp + 0x14]                        // 0x0082b2d0    d9442414
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0082b2d4    d9442414
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0082b2d8    d81d98a38a00
                         fnstsw             ax                                            // 0x0082b2de    dfe0
                         test               ah, 0x40                                      // 0x0082b2e0    f6c440
                         {disp8} je         _jmp_addr_0x0082b2ed                          // 0x0082b2e3    7408
                         fstp               st(0)                                         // 0x0082b2e5    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1e62c]             // 0x0082b2e7    d9052c768c00
_jmp_addr_0x0082b2ed:    {disp32} fmul      qword ptr [__real@3fe0000000000000]           // 0x0082b2ed    dc0d60b28a00
                         push               esi                                           // 0x0082b2f3    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0082b2f4    8b74240c
                         push               edi                                           // 0x0082b2f8    57
                         fptan                                                            // 0x0082b2f9    d9f2
                         xor.s              eax, eax                                      // 0x0082b2fb    33c0
                         mov                ecx, 0x00000010                               // 0x0082b2fd    b910000000
                         mov.s              edi, esi                                      // 0x0082b302    8bfe
                         rep stosd                                                        // 0x0082b304    f3ab
                         push               esi                                           // 0x0082b306    56
                         {disp8} mov        dword ptr [esi + 0x2c], 0x3f800000            // 0x0082b307    c7462c0000803f
                         push               0x3                                           // 0x0082b30e    6a03
                         fstp               st(0)                                         // 0x0082b310    ddd8
                         {disp32} fdivr     dword ptr [_rdata_float1p0]                   // 0x0082b312    d83d90a38a00
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0082b318    d9442420
                         {disp8} fsub       dword ptr [esp + 0x1c]                        // 0x0082b31c    d864241c
                         {disp8} fdivr      dword ptr [esp + 0x20]                        // 0x0082b320    d87c2420
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0082b324    d95c2424
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0082b328    8b442424
                         fst                dword ptr [esi]                               // 0x0082b32c    d916
                         {disp8} mov        dword ptr [esi + 0x28], eax                   // 0x0082b32e    894628
                         {disp32} fmul      dword ptr [rdata_bytes + 0xfa984]             // 0x0082b331    d80d84399a00
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x0082b337    d95e14
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0082b33a    d9442424
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0082b33e    d84c241c
                         fchs                                                             // 0x0082b342    d9e0
                         {disp8} fstp       dword ptr [esi + 0x38]                        // 0x0082b344    d95e38
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b347    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b34c    8b08
                         push               eax                                           // 0x0082b34e    50
                         call               dword ptr [ecx + 0x2c]                        // 0x0082b34f    ff512c
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0082b352    8b44240c
                         mov                ecx, 0x00000010                               // 0x0082b356    b910000000
                         mov.s              edi, eax                                      // 0x0082b35b    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0082b35d    f3a5
                         pop                edi                                           // 0x0082b35f    5f
                         pop                esi                                           // 0x0082b360    5e
                         ret                                                              // 0x0082b361    c3
                         nop                                                              // 0x0082b362    90
                         nop                                                              // 0x0082b363    90
                         nop                                                              // 0x0082b364    90
                         nop                                                              // 0x0082b365    90
                         nop                                                              // 0x0082b366    90
                         nop                                                              // 0x0082b367    90
                         nop                                                              // 0x0082b368    90
                         nop                                                              // 0x0082b369    90
                         nop                                                              // 0x0082b36a    90
                         nop                                                              // 0x0082b36b    90
                         nop                                                              // 0x0082b36c    90
                         nop                                                              // 0x0082b36d    90
                         nop                                                              // 0x0082b36e    90
                         nop                                                              // 0x0082b36f    90
                         {disp32} mov       edx, dword ptr [data_bytes + 0x504674]        // 0x0082b370    8b1574a6ec00
                         cmp                edx, 0x04                                     // 0x0082b376    83fa04
                         {disp8} je         _jmp_addr_0x0082b3b8                          // 0x0082b379    743d
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0082b37b    8b442404
                         cmp                dword ptr [eax + 0x04], 0x00000400            // 0x0082b37f    81780400040000
                         {disp8} jne        _jmp_addr_0x0082b3b8                          // 0x0082b386    7530
                         push               esi                                           // 0x0082b388    56
                         push               edi                                           // 0x0082b389    57
                         mov.s              edi, edx                                      // 0x0082b38a    8bfa
                         shl                edi, 5                                        // 0x0082b38c    c1e705
                         mov.s              esi, eax                                      // 0x0082b38f    8bf0
                         add                edi, 0x00ec7e88                               // 0x0082b391    81c7887eec00
                         mov                ecx, 0x00000008                               // 0x0082b397    b908000000
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0082b39c    f3a5
                         inc                edx                                           // 0x0082b39e    42
                         {disp32} mov       dword ptr [data_bytes + 0x504674], edx        // 0x0082b39f    891574a6ec00
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                   // 0x0082b3a5    8b400c
                         push               eax                                           // 0x0082b3a8    50
                         push               0x00c38a04                                    // 0x0082b3a9    68048ac300
                         call               _Report3D__FPCce                              // 0x0082b3ae    e81d08ffff
                         add                esp, 0x08                                     // 0x0082b3b3    83c408
                         pop                edi                                           // 0x0082b3b6    5f
                         pop                esi                                           // 0x0082b3b7    5e
_jmp_addr_0x0082b3b8:    mov                eax, 0x00000001                               // 0x0082b3b8    b801000000
                         ret                0x0008                                        // 0x0082b3bd    c20800
_jmp_addr_0x0082b3c0:    push               ecx                                           // 0x0082b3c0    51
                         push               esi                                           // 0x0082b3c1    56
                         push               0x00c38ab8                                    // 0x0082b3c2    68b88ac300
                         call               _Report3D__FPCce                              // 0x0082b3c7    e80408ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504624]        // 0x0082b3cc    a124a6ec00
                         xor.s              esi, esi                                      // 0x0082b3d1    33f6
                         add                esp, 0x04                                     // 0x0082b3d3    83c404
                         cmp.s              eax, esi                                      // 0x0082b3d6    3bc6
                         {disp8} jne        _jmp_addr_0x0082b3df                          // 0x0082b3d8    7505
                         xor.s              eax, eax                                      // 0x0082b3da    33c0
                         pop                esi                                           // 0x0082b3dc    5e
                         pop                ecx                                           // 0x0082b3dd    59
                         ret                                                              // 0x0082b3de    c3
_jmp_addr_0x0082b3df:    cmp                dword ptr [data_bytes + 0x504620], esi        // 0x0082b3df    393520a6ec00
                         {disp8} je         _jmp_addr_0x0082b3f9                          // 0x0082b3e5    7412
                         push               0x00c38a8c                                    // 0x0082b3e7    688c8ac300
                         call               _Report3D__FPCce                              // 0x0082b3ec    e8df07ffff
                         add                esp, 0x04                                     // 0x0082b3f1    83c404
                         xor.s              eax, eax                                      // 0x0082b3f4    33c0
                         pop                esi                                           // 0x0082b3f6    5e
                         pop                ecx                                           // 0x0082b3f7    59
                         ret                                                              // 0x0082b3f8    c3
_jmp_addr_0x0082b3f9:    mov                ecx, 0x00e85050                               // 0x0082b3f9    b95050e800
                         call               _jmp_addr_0x007dec80                          // 0x0082b3fe    e87d38fbff
                         push               eax                                           // 0x0082b403    50
                         push               0x00c38a74                                    // 0x0082b404    68748ac300
                         call               _Report3D__FPCce                              // 0x0082b409    e8c207ffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x530550]        // 0x0082b40e    a15065ef00
                         add                esp, 0x08                                     // 0x0082b413    83c408
                         cmp.s              eax, esi                                      // 0x0082b416    3bc6
                         {disp8} je         _jmp_addr_0x0082b429                          // 0x0082b418    740f
                         push               0x00c38a64                                    // 0x0082b41a    68648ac300
                         call               _Report3D__FPCce                              // 0x0082b41f    e8ac07ffff
                         add                esp, 0x04                                     // 0x0082b424    83c404
                         {disp8} jmp        _jmp_addr_0x0082b44b                          // 0x0082b427    eb22
_jmp_addr_0x0082b429:    {disp32} mov       dword ptr [data_bytes + 0x53054c], esi        // 0x0082b429    89354c65ef00
                         {disp32} mov       dword ptr [data_bytes + 0x530548], esi        // 0x0082b42f    89354865ef00
                         {disp32} mov       dword ptr [data_bytes + 0x530544], esi        // 0x0082b435    89354465ef00
                         {disp32} mov       dword ptr [data_bytes + 0x530540], esi        // 0x0082b43b    89354065ef00
                         {disp32} mov       dword ptr [data_bytes + 0x530550], 0x00000001 // 0x0082b441    c7055065ef0001000000
_jmp_addr_0x0082b44b:    call               _jmp_addr_0x00841230                          // 0x0082b44b    e8e05d0100
                         {disp32} mov       dword ptr [data_bytes + 0x504620], 0x00000001 // 0x0082b450    c70520a6ec0001000000
                         {disp32} mov       dword ptr [data_bytes + 0x504640], esi        // 0x0082b45a    893540a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x504644], esi        // 0x0082b460    893544a6ec00
                         call               _jmp_addr_0x0082cd80                          // 0x0082b466    e815190000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x4bf058]        // 0x0082b46b    8b0d5850e800
                         xor.s              edx, edx                                      // 0x0082b471    33d2
                         {disp32} mov       dx, word ptr [data_bytes + 0x4bf05a]          // 0x0082b473    668b155a50e800
                         and                ecx, 0x0000ffff                               // 0x0082b47a    81e1ffff0000
                         call               ?RenderInitialization@LH3DTech@@SAXJJ@Z       // 0x0082b480    e8dbd7feff
                         call               _jmp_addr_0x008378c0                          // 0x0082b485    e836c40000
                         mov                ecx, 0x00ea9e70                               // 0x0082b48a    b9709eea00
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e70], 0x3f800000 // 0x0082b48f    c705709eea000000803f
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e74], 0x00000000 // 0x0082b499    c705749eea0000000000
                         {disp32} mov       dword ptr [data_bytes + 0x4e3e78], 0x40000000 // 0x0082b4a3    c705789eea0000000040
                         call               ?FastNormalize@LHPoint@@QAEXXZ                // 0x0082b4ad    e85e34d2ff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x517470]        // 0x0082b4b2    a170d4ed00
                         neg                eax                                           // 0x0082b4b7    f7d8
                         sbb.s              eax, eax                                      // 0x0082b4b9    1bc0
                         and                eax, 0xffffff80                               // 0x0082b4bb    83e080
                         add                eax, 0x00000100                               // 0x0082b4be    0500010000
                         cmp.s              eax, esi                                      // 0x0082b4c3    3bc6
                         {disp32} mov       dword ptr [data_bytes + 0x2738ec], eax        // 0x0082b4c5    a3ec98c300
                         {disp8} jle        _jmp_addr_0x0082b4db                          // 0x0082b4ca    7e0f
                         mov                ecx, 0x00fa76d0                               // 0x0082b4cc    b9d076fa00
                         mov.s              edx, eax                                      // 0x0082b4d1    8bd0
_jmp_addr_0x0082b4d3:    mov                dword ptr [ecx], esi                          // 0x0082b4d3    8931
                         add                ecx, 0x1c                                     // 0x0082b4d5    83c11c
                         dec                edx                                           // 0x0082b4d8    4a
                         {disp8} jne        _jmp_addr_0x0082b4d3                          // 0x0082b4d9    75f8
_jmp_addr_0x0082b4db:    dec                eax                                           // 0x0082b4db    48
                         {disp8} mov        dword ptr [esp + 0x04], eax                   // 0x0082b4dc    89442404
                         {disp8} fild       dword ptr [esp + 0x04]                        // 0x0082b4e0    db442404
                         {disp32} mov       dword ptr [data_bytes + 0x504654], esi        // 0x0082b4e4    893554a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x504618], 0x00c38728 // 0x0082b4ea    c70518a6ec002887c300
                         {disp32} fstp      dword ptr [data_bytes + 0x2738f0]             // 0x0082b4f4    d91df098c300
                         call               _jmp_addr_0x00839860                          // 0x0082b4fa    e861e30000
                         call               _jmp_addr_0x00807e40                          // 0x0082b4ff    e83cc9fdff
                         call               _jmp_addr_0x0080bbd0                          // 0x0082b504    e8c706feff
                         xor.s              ecx, ecx                                      // 0x0082b509    33c9
                         {disp32} mov       cx, word ptr [data_bytes + 0x4bf05a]          // 0x0082b50b    668b0d5a50e800
                         call               _jmp_addr_0x008792e0                          // 0x0082b512    e8c9dd0400
                         call               _jmp_addr_0x008713f0                          // 0x0082b517    e8d45e0400
                         call               _jmp_addr_0x0081e820                          // 0x0082b51c    e8ff32ffff
                         push               0xc                                           // 0x0082b521    6a0c
                         push               esi                                           // 0x0082b523    56
                         call               _jmp_addr_0x00880f20                          // 0x0082b524    e8f7590500
                         add                esp, 0x08                                     // 0x0082b529    83c408
                         call               _jmp_addr_0x007ac9e0                          // 0x0082b52c    e8af14f8ff
                         {disp32} mov       dword ptr [data_bytes + 0x504664], esi        // 0x0082b531    893564a6ec00
                         {disp32} mov       dword ptr [data_bytes + 0x504628], esi        // 0x0082b537    893528a6ec00
                         call               _jmp_addr_0x0081faa0                          // 0x0082b53d    e85e45ffff
                         cmp                dword ptr [data_bytes + 0x2726d8], esi        // 0x0082b542    3935d886c300
                         mov                eax, 0x00c38a3c                               // 0x0082b548    b83c8ac300
                         {disp8} jne        _jmp_addr_0x0082b554                          // 0x0082b54d    7505
                         mov                eax, 0x00c38a14                               // 0x0082b54f    b8148ac300
_jmp_addr_0x0082b554:    push               eax                                           // 0x0082b554    50
                         call               _Report3D__FPCce                              // 0x0082b555    e87606ffff
                         add                esp, 0x04                                     // 0x0082b55a    83c404
                         mov                eax, 0x00000001                               // 0x0082b55d    b801000000
                         pop                esi                                           // 0x0082b562    5e
                         pop                ecx                                           // 0x0082b563    59
                         ret                                                              // 0x0082b564    c3
                         nop                                                              // 0x0082b565    90
                         nop                                                              // 0x0082b566    90
                         nop                                                              // 0x0082b567    90
                         nop                                                              // 0x0082b568    90
                         nop                                                              // 0x0082b569    90
                         nop                                                              // 0x0082b56a    90
                         nop                                                              // 0x0082b56b    90
                         nop                                                              // 0x0082b56c    90
                         nop                                                              // 0x0082b56d    90
                         nop                                                              // 0x0082b56e    90
                         nop                                                              // 0x0082b56f    90
?Close@LH3DRender@@SAHXZ:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x504624]        // 0x0082b570    a124a6ec00
                         test               eax, eax                                      // 0x0082b575    85c0
                         {disp8} jne        _jmp_addr_0x0082b57c                          // 0x0082b577    7503
                         xor.s              eax, eax                                      // 0x0082b579    33c0
                         ret                                                              // 0x0082b57b    c3
_jmp_addr_0x0082b57c:    {disp32} mov       eax, dword ptr [data_bytes + 0x504620]        // 0x0082b57c    a120a6ec00
                         test               eax, eax                                      // 0x0082b581    85c0
                         {disp8} jne        _jmp_addr_0x0082b595                          // 0x0082b583    7510
                         push               0x00c38acc                                    // 0x0082b585    68cc8ac300
                         call               _Report3D__FPCce                              // 0x0082b58a    e84106ffff
                         add                esp, 0x04                                     // 0x0082b58f    83c404
                         xor.s              eax, eax                                      // 0x0082b592    33c0
                         ret                                                              // 0x0082b594    c3
_jmp_addr_0x0082b595:    push               ebx                                           // 0x0082b595    53
                         push               0x00c38ac0                                    // 0x0082b596    68c08ac300
                         call               _Report3D__FPCce                              // 0x0082b59b    e83006ffff
                         add                esp, 0x04                                     // 0x0082b5a0    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x504620], 0x00000000 // 0x0082b5a3    c70520a6ec0000000000
                         call               _jmp_addr_0x0081fe10                          // 0x0082b5ad    e85e48ffff
                         call               _jmp_addr_0x0081e870                          // 0x0082b5b2    e8b932ffff
                         call               _jmp_addr_0x007f9540                          // 0x0082b5b7    e884dffcff
                         call               _jmp_addr_0x00871440                          // 0x0082b5bc    e87f5e0400
                         call               _jmp_addr_0x008794a0                          // 0x0082b5c1    e8dade0400
                         call               _jmp_addr_0x0080bd70                          // 0x0082b5c6    e8a507feff
                         call               _jmp_addr_0x00807e80                          // 0x0082b5cb    e8b0c8fdff
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x517508]        // 0x0082b5d0    8b1d08d5ed00
                         test               ebx, ebx                                      // 0x0082b5d6    85db
                         {disp8} je         _jmp_addr_0x0082b613                          // 0x0082b5d8    7439
                         mov                eax, dword ptr [ebx]                          // 0x0082b5da    8b03
                         push               esi                                           // 0x0082b5dc    56
                         xor.s              esi, esi                                      // 0x0082b5dd    33f6
                         test               eax, eax                                      // 0x0082b5df    85c0
                         {disp8} jle        _jmp_addr_0x0082b5ff                          // 0x0082b5e1    7e1c
                         push               edi                                           // 0x0082b5e3    57
                         {disp8} lea        edi, dword ptr [ebx + 0x04]                   // 0x0082b5e4    8d7b04
_jmp_addr_0x0082b5e7:    mov                ecx, dword ptr [edi]                          // 0x0082b5e7    8b0f
                         call               _jmp_addr_0x00839970                          // 0x0082b5e9    e882e30000
                         mov                eax, dword ptr [ebx]                          // 0x0082b5ee    8b03
                         inc                esi                                           // 0x0082b5f0    46
                         add                edi, 0x04                                     // 0x0082b5f1    83c704
                         cmp.s              esi, eax                                      // 0x0082b5f4    3bf0
                         {disp8} jl         _jmp_addr_0x0082b5e7                          // 0x0082b5f6    7cef
                         {disp32} mov       ebx, dword ptr [data_bytes + 0x517508]        // 0x0082b5f8    8b1d08d5ed00
                         pop                edi                                           // 0x0082b5fe    5f
_jmp_addr_0x0082b5ff:    push               ebx                                           // 0x0082b5ff    53
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0082b600    e85b770100
                         add                esp, 0x04                                     // 0x0082b605    83c404
                         {disp32} mov       dword ptr [data_bytes + 0x517508], 0x00000000 // 0x0082b608    c70508d5ed0000000000
                         pop                esi                                           // 0x0082b612    5e
_jmp_addr_0x0082b613:    call               _jmp_addr_0x00839880                          // 0x0082b613    e868e20000
                         call               _jmp_addr_0x0082ee50                          // 0x0082b618    e833380000
                         call               _jmp_addr_0x00837930                          // 0x0082b61d    e80ec30000
                         call               _jmp_addr_0x00841240                          // 0x0082b622    e8195c0100
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x504648]        // 0x0082b627    8b0d48a6ec00
                         call               _jmp_addr_0x0083f2f0                          // 0x0082b62d    e8be3c0100
                         call               _jmp_addr_0x0082d3f0                          // 0x0082b632    e8b91d0000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x530550]        // 0x0082b637    a15065ef00
                         test               eax, eax                                      // 0x0082b63c    85c0
                         pop                ebx                                           // 0x0082b63e    5b
                         {disp8} jne        _jmp_addr_0x0082b654                          // 0x0082b63f    7513
                         push               0x00c3153c                                    // 0x0082b641    683c15c300
                         call               _Report3D__FPCce                              // 0x0082b646    e88505ffff
                         add                esp, 0x04                                     // 0x0082b64b    83c404
                         mov                eax, 0x00000001                               // 0x0082b64e    b801000000
                         ret                                                              // 0x0082b653    c3
_jmp_addr_0x0082b654:    {disp32} mov       eax, dword ptr [data_bytes + 0x530548]        // 0x0082b654    a14865ef00
                         test               eax, eax                                      // 0x0082b659    85c0
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x53054c]        // 0x0082b65b    8b0d4c65ef00
                         {disp8} jne        _jmp_addr_0x0082b667                          // 0x0082b661    7504
                         test               ecx, ecx                                      // 0x0082b663    85c9
                         {disp8} je         _jmp_addr_0x0082b676                          // 0x0082b665    740f
_jmp_addr_0x0082b667:    push               ecx                                           // 0x0082b667    51
                         push               eax                                           // 0x0082b668    50
                         push               0x00c3150c                                    // 0x0082b669    680c15c300
                         call               _Report3D__FPCce                              // 0x0082b66e    e85d05ffff
                         add                esp, 0x0c                                     // 0x0082b673    83c40c
_jmp_addr_0x0082b676:    mov                eax, 0x00000001                               // 0x0082b676    b801000000
                         ret                                                              // 0x0082b67b    c3
                         nop                                                              // 0x0082b67c    90
                         nop                                                              // 0x0082b67d    90
                         nop                                                              // 0x0082b67e    90
                         nop                                                              // 0x0082b67f    90
_jmp_addr_0x0082b680:    cmp                dword ptr [data_bytes + 0x50261c], 0x01       // 0x0082b680    833d1c86ec0001
                         {disp8} je         _jmp_addr_0x0082b6aa                          // 0x0082b687    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b689    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b68e    8b08
                         push               0x1                                           // 0x0082b690    6a01
                         push               0xb                                           // 0x0082b692    6a0b
                         push               0x1                                           // 0x0082b694    6a01
                         push               eax                                           // 0x0082b696    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b697    ff9194000000
                         neg                eax                                           // 0x0082b69d    f7d8
                         sbb.s              eax, eax                                      // 0x0082b69f    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b6a1    83e0fe
                         inc                eax                                           // 0x0082b6a4    40
                         {disp32} mov       dword ptr [data_bytes + 0x50261c], eax        // 0x0082b6a5    a31c86ec00
_jmp_addr_0x0082b6aa:    cmp                dword ptr [data_bytes + 0x5025f8], 0x02       // 0x0082b6aa    833df885ec0002
                         {disp8} je         _jmp_addr_0x0082b6d6                          // 0x0082b6b1    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b6b3    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b6b8    8b10
                         push               0x2                                           // 0x0082b6ba    6a02
                         push               0x2                                           // 0x0082b6bc    6a02
                         push               0x1                                           // 0x0082b6be    6a01
                         push               eax                                           // 0x0082b6c0    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b6c1    ff9294000000
                         neg                eax                                           // 0x0082b6c7    f7d8
                         sbb.s              eax, eax                                      // 0x0082b6c9    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b6cb    83e0fd
                         add                eax, 0x02                                     // 0x0082b6ce    83c002
                         {disp32} mov       dword ptr [data_bytes + 0x5025f8], eax        // 0x0082b6d1    a3f885ec00
_jmp_addr_0x0082b6d6:    cmp                dword ptr [data_bytes + 0x5025fc], 0x01       // 0x0082b6d6    833dfc85ec0001
                         {disp8} je         _jmp_addr_0x0082b700                          // 0x0082b6dd    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b6df    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b6e4    8b08
                         push               0x1                                           // 0x0082b6e6    6a01
                         push               0x3                                           // 0x0082b6e8    6a03
                         push               0x1                                           // 0x0082b6ea    6a01
                         push               eax                                           // 0x0082b6ec    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b6ed    ff9194000000
                         neg                eax                                           // 0x0082b6f3    f7d8
                         sbb.s              eax, eax                                      // 0x0082b6f5    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b6f7    83e0fe
                         inc                eax                                           // 0x0082b6fa    40
                         {disp32} mov       dword ptr [data_bytes + 0x5025fc], eax        // 0x0082b6fb    a3fc85ec00
_jmp_addr_0x0082b700:    {disp32} mov       eax, dword ptr [data_bytes + 0x5025f4]        // 0x0082b700    a1f485ec00
                         push               esi                                           // 0x0082b705    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0082b706    8b742408
                         cmp.s              eax, esi                                      // 0x0082b70a    3bc6
                         {disp8} je         _jmp_addr_0x0082b735                          // 0x0082b70c    7427
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b70e    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b713    8b10
                         push               esi                                           // 0x0082b715    56
                         push               0x1                                           // 0x0082b716    6a01
                         push               0x1                                           // 0x0082b718    6a01
                         push               eax                                           // 0x0082b71a    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b71b    ff9294000000
                         test               eax, eax                                      // 0x0082b721    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x5025f4], 0xffffffff // 0x0082b723    c705f485ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0082b735                          // 0x0082b72d    7506
                         {disp32} mov       dword ptr [data_bytes + 0x5025f4], esi        // 0x0082b72f    8935f485ec00
_jmp_addr_0x0082b735:    cmp                dword ptr [data_bytes + 0x502604], 0x01       // 0x0082b735    833d0486ec0001
                         pop                esi                                           // 0x0082b73c    5e
                         {disp8} je         _jmp_addr_0x0082b760                          // 0x0082b73d    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b73f    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b744    8b08
                         push               0x1                                           // 0x0082b746    6a01
                         push               0x5                                           // 0x0082b748    6a05
                         push               0x1                                           // 0x0082b74a    6a01
                         push               eax                                           // 0x0082b74c    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b74d    ff9194000000
                         neg                eax                                           // 0x0082b753    f7d8
                         sbb.s              eax, eax                                      // 0x0082b755    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b757    83e0fe
                         inc                eax                                           // 0x0082b75a    40
                         {disp32} mov       dword ptr [data_bytes + 0x502604], eax        // 0x0082b75b    a30486ec00
_jmp_addr_0x0082b760:    cmp                dword ptr [data_bytes + 0x502600], 0x02       // 0x0082b760    833d0086ec0002
                         {disp8} je         _jmp_addr_0x0082b78c                          // 0x0082b767    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b769    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b76e    8b10
                         push               0x2                                           // 0x0082b770    6a02
                         push               0x4                                           // 0x0082b772    6a04
                         push               0x1                                           // 0x0082b774    6a01
                         push               eax                                           // 0x0082b776    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b777    ff9294000000
                         neg                eax                                           // 0x0082b77d    f7d8
                         sbb.s              eax, eax                                      // 0x0082b77f    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b781    83e0fd
                         add                eax, 0x02                                     // 0x0082b784    83c002
                         {disp32} mov       dword ptr [data_bytes + 0x502600], eax        // 0x0082b787    a30086ec00
_jmp_addr_0x0082b78c:    ret                                                              // 0x0082b78c    c3
                         nop                                                              // 0x0082b78d    90
                         nop                                                              // 0x0082b78e    90
                         nop                                                              // 0x0082b78f    90
_jmp_addr_0x0082b790:    {disp32} mov       eax, dword ptr [data_bytes + 0x50221c]        // 0x0082b790    a11c82ec00
                         test               eax, eax                                      // 0x0082b795    85c0
                         {disp8} je         _jmp_addr_0x0082b7b6                          // 0x0082b797    741d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b799    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b79e    8b08
                         push               0x0                                           // 0x0082b7a0    6a00
                         push               0xb                                           // 0x0082b7a2    6a0b
                         push               0x0                                           // 0x0082b7a4    6a00
                         push               eax                                           // 0x0082b7a6    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b7a7    ff9194000000
                         neg                eax                                           // 0x0082b7ad    f7d8
                         sbb.s              eax, eax                                      // 0x0082b7af    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x50221c], eax        // 0x0082b7b1    a31c82ec00
_jmp_addr_0x0082b7b6:    {disp32} mov       eax, dword ptr [data_bytes + 0x5021f8]        // 0x0082b7b6    a1f881ec00
                         push               edi                                           // 0x0082b7bb    57
                         mov                edi, 0x00000002                               // 0x0082b7bc    bf02000000
                         cmp.s              eax, edi                                      // 0x0082b7c1    3bc7
                         {disp8} je         _jmp_addr_0x0082b7e5                          // 0x0082b7c3    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b7c5    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b7ca    8b10
                         push               edi                                           // 0x0082b7cc    57
                         push               edi                                           // 0x0082b7cd    57
                         push               0x0                                           // 0x0082b7ce    6a00
                         push               eax                                           // 0x0082b7d0    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b7d1    ff9294000000
                         neg                eax                                           // 0x0082b7d7    f7d8
                         sbb.s              eax, eax                                      // 0x0082b7d9    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b7db    83e0fd
                         add.s              eax, edi                                      // 0x0082b7de    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], eax        // 0x0082b7e0    a3f881ec00
_jmp_addr_0x0082b7e5:    cmp                dword ptr [data_bytes + 0x5021f4], edi        // 0x0082b7e5    393df481ec00
                         {disp8} je         _jmp_addr_0x0082b80e                          // 0x0082b7eb    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b7ed    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b7f2    8b08
                         push               edi                                           // 0x0082b7f4    57
                         push               0x1                                           // 0x0082b7f5    6a01
                         push               0x0                                           // 0x0082b7f7    6a00
                         push               eax                                           // 0x0082b7f9    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b7fa    ff9194000000
                         neg                eax                                           // 0x0082b800    f7d8
                         sbb.s              eax, eax                                      // 0x0082b802    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b804    83e0fd
                         add.s              eax, edi                                      // 0x0082b807    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x5021f4], eax        // 0x0082b809    a3f481ec00
_jmp_addr_0x0082b80e:    cmp                dword ptr [data_bytes + 0x502204], edi        // 0x0082b80e    393d0482ec00
                         {disp8} je         _jmp_addr_0x0082b837                          // 0x0082b814    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b816    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b81b    8b10
                         push               edi                                           // 0x0082b81d    57
                         push               0x5                                           // 0x0082b81e    6a05
                         push               0x0                                           // 0x0082b820    6a00
                         push               eax                                           // 0x0082b822    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b823    ff9294000000
                         neg                eax                                           // 0x0082b829    f7d8
                         sbb.s              eax, eax                                      // 0x0082b82b    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b82d    83e0fd
                         add.s              eax, edi                                      // 0x0082b830    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x502204], eax        // 0x0082b832    a30482ec00
_jmp_addr_0x0082b837:    cmp                dword ptr [data_bytes + 0x502200], edi        // 0x0082b837    393d0082ec00
                         {disp8} je         _jmp_addr_0x0082b860                          // 0x0082b83d    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b83f    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b844    8b08
                         push               edi                                           // 0x0082b846    57
                         push               0x4                                           // 0x0082b847    6a04
                         push               0x0                                           // 0x0082b849    6a00
                         push               eax                                           // 0x0082b84b    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b84c    ff9194000000
                         neg                eax                                           // 0x0082b852    f7d8
                         sbb.s              eax, eax                                      // 0x0082b854    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b856    83e0fd
                         add.s              eax, edi                                      // 0x0082b859    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x502200], eax        // 0x0082b85b    a30082ec00
_jmp_addr_0x0082b860:    cmp                dword ptr [data_bytes + 0x50261c], 0x01       // 0x0082b860    833d1c86ec0001
                         {disp8} je         _jmp_addr_0x0082b88a                          // 0x0082b867    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b869    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b86e    8b10
                         push               0x1                                           // 0x0082b870    6a01
                         push               0xb                                           // 0x0082b872    6a0b
                         push               0x1                                           // 0x0082b874    6a01
                         push               eax                                           // 0x0082b876    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b877    ff9294000000
                         neg                eax                                           // 0x0082b87d    f7d8
                         sbb.s              eax, eax                                      // 0x0082b87f    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b881    83e0fe
                         inc                eax                                           // 0x0082b884    40
                         {disp32} mov       dword ptr [data_bytes + 0x50261c], eax        // 0x0082b885    a31c86ec00
_jmp_addr_0x0082b88a:    cmp                dword ptr [data_bytes + 0x5025f8], edi        // 0x0082b88a    393df885ec00
                         {disp8} je         _jmp_addr_0x0082b8b2                          // 0x0082b890    7420
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b892    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b897    8b08
                         push               edi                                           // 0x0082b899    57
                         push               edi                                           // 0x0082b89a    57
                         push               0x1                                           // 0x0082b89b    6a01
                         push               eax                                           // 0x0082b89d    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b89e    ff9194000000
                         neg                eax                                           // 0x0082b8a4    f7d8
                         sbb.s              eax, eax                                      // 0x0082b8a6    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b8a8    83e0fd
                         add.s              eax, edi                                      // 0x0082b8ab    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x5025f8], eax        // 0x0082b8ad    a3f885ec00
_jmp_addr_0x0082b8b2:    cmp                dword ptr [data_bytes + 0x5025fc], 0x01       // 0x0082b8b2    833dfc85ec0001
                         {disp8} je         _jmp_addr_0x0082b8dc                          // 0x0082b8b9    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b8bb    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b8c0    8b10
                         push               0x1                                           // 0x0082b8c2    6a01
                         push               0x3                                           // 0x0082b8c4    6a03
                         push               0x1                                           // 0x0082b8c6    6a01
                         push               eax                                           // 0x0082b8c8    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b8c9    ff9294000000
                         neg                eax                                           // 0x0082b8cf    f7d8
                         sbb.s              eax, eax                                      // 0x0082b8d1    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b8d3    83e0fe
                         inc                eax                                           // 0x0082b8d6    40
                         {disp32} mov       dword ptr [data_bytes + 0x5025fc], eax        // 0x0082b8d7    a3fc85ec00
_jmp_addr_0x0082b8dc:    {disp32} mov       eax, dword ptr [data_bytes + 0x5025f4]        // 0x0082b8dc    a1f485ec00
                         push               esi                                           // 0x0082b8e1    56
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x0082b8e2    8b74240c
                         cmp.s              eax, esi                                      // 0x0082b8e6    3bc6
                         {disp8} je         _jmp_addr_0x0082b911                          // 0x0082b8e8    7427
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b8ea    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b8ef    8b08
                         push               esi                                           // 0x0082b8f1    56
                         push               0x1                                           // 0x0082b8f2    6a01
                         push               0x1                                           // 0x0082b8f4    6a01
                         push               eax                                           // 0x0082b8f6    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b8f7    ff9194000000
                         test               eax, eax                                      // 0x0082b8fd    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x5025f4], 0xffffffff // 0x0082b8ff    c705f485ec00ffffffff
                         {disp8} jne        _jmp_addr_0x0082b911                          // 0x0082b909    7506
                         {disp32} mov       dword ptr [data_bytes + 0x5025f4], esi        // 0x0082b90b    8935f485ec00
_jmp_addr_0x0082b911:    cmp                dword ptr [data_bytes + 0x502604], 0x01       // 0x0082b911    833d0486ec0001
                         pop                esi                                           // 0x0082b918    5e
                         {disp8} je         _jmp_addr_0x0082b93c                          // 0x0082b919    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b91b    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082b920    8b10
                         push               0x1                                           // 0x0082b922    6a01
                         push               0x5                                           // 0x0082b924    6a05
                         push               0x1                                           // 0x0082b926    6a01
                         push               eax                                           // 0x0082b928    50
                         call               dword ptr [edx + 0x94]                        // 0x0082b929    ff9294000000
                         neg                eax                                           // 0x0082b92f    f7d8
                         sbb.s              eax, eax                                      // 0x0082b931    1bc0
                         and                eax, 0xfffffffe                               // 0x0082b933    83e0fe
                         inc                eax                                           // 0x0082b936    40
                         {disp32} mov       dword ptr [data_bytes + 0x502604], eax        // 0x0082b937    a30486ec00
_jmp_addr_0x0082b93c:    cmp                dword ptr [data_bytes + 0x502600], edi        // 0x0082b93c    393d0086ec00
                         {disp8} je         _jmp_addr_0x0082b965                          // 0x0082b942    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b944    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082b949    8b08
                         push               edi                                           // 0x0082b94b    57
                         push               0x4                                           // 0x0082b94c    6a04
                         push               0x1                                           // 0x0082b94e    6a01
                         push               eax                                           // 0x0082b950    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082b951    ff9194000000
                         neg                eax                                           // 0x0082b957    f7d8
                         sbb.s              eax, eax                                      // 0x0082b959    1bc0
                         and                eax, 0xfffffffd                               // 0x0082b95b    83e0fd
                         add.s              eax, edi                                      // 0x0082b95e    03c7
                         {disp32} mov       dword ptr [data_bytes + 0x502600], eax        // 0x0082b960    a30086ec00
_jmp_addr_0x0082b965:    push               0x1                                           // 0x0082b965    6a01
                         push               0xb                                           // 0x0082b967    6a0b
                         push               edi                                           // 0x0082b969    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b96a    e851000000
                         push               0x1                                           // 0x0082b96f    6a01
                         push               edi                                           // 0x0082b971    57
                         push               edi                                           // 0x0082b972    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b973    e848000000
                         push               0x0                                           // 0x0082b978    6a00
                         push               0x3                                           // 0x0082b97a    6a03
                         push               edi                                           // 0x0082b97c    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b97d    e83e000000
                         push               0x4                                           // 0x0082b982    6a04
                         push               0x1                                           // 0x0082b984    6a01
                         push               edi                                           // 0x0082b986    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b987    e834000000
                         push               0x1                                           // 0x0082b98c    6a01
                         push               0x5                                           // 0x0082b98e    6a05
                         push               edi                                           // 0x0082b990    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b991    e82a000000
                         push               edi                                           // 0x0082b996    57
                         push               0x4                                           // 0x0082b997    6a04
                         push               edi                                           // 0x0082b999    57
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082b99a    e821000000
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5021c8]        // 0x0082b99f    a1c881ec00
                         add                esp, 0x48                                     // 0x0082b9a4    83c448
                         test               eax, eax                                      // 0x0082b9a7    85c0
                         pop                edi                                           // 0x0082b9a9    5f
                         {disp8} je         _jmp_addr_0x0082b9b7                          // 0x0082b9aa    740b
                         push               0x1                                           // 0x0082b9ac    6a01
                         push               eax                                           // 0x0082b9ae    50
                         call               _jmp_addr_0x007ace50                          // 0x0082b9af    e89c14f8ff
                         add                esp, 0x08                                     // 0x0082b9b4    83c408
_jmp_addr_0x0082b9b7:    ret                                                              // 0x0082b9b7    c3
                         nop                                                              // 0x0082b9b8    90
                         nop                                                              // 0x0082b9b9    90
                         nop                                                              // 0x0082b9ba    90
                         nop                                                              // 0x0082b9bb    90
                         nop                                                              // 0x0082b9bc    90
                         nop                                                              // 0x0082b9bd    90
                         nop                                                              // 0x0082b9be    90
                         nop                                                              // 0x0082b9bf    90
_SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl:    {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x0082b9c0    8b4c2404
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x0082b9c4    8b542408
                         mov.s              eax, ecx                                      // 0x0082b9c8    8bc1
                         shl                eax, 8                                        // 0x0082b9ca    c1e008
                         push               esi                                           // 0x0082b9cd    56
                         {disp8} mov        esi, dword ptr [esp + 0x10]                   // 0x0082b9ce    8b742410
                         add.s              eax, edx                                      // 0x0082b9d2    03c2
                         push               edi                                           // 0x0082b9d4    57
                         {disp32} lea       edi, dword ptr [eax * 0x4 + 0x00ec81f0]       // 0x0082b9d5    8d3c85f081ec00
                         cmp                dword ptr [edi], esi                          // 0x0082b9dc    3937
                         {disp8} je         _jmp_addr_0x0082b9ff                          // 0x0082b9de    741f
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082b9e0    a138a6ec00
                         push               ebx                                           // 0x0082b9e5    53
                         mov                ebx, dword ptr [eax]                          // 0x0082b9e6    8b18
                         push               esi                                           // 0x0082b9e8    56
                         push               edx                                           // 0x0082b9e9    52
                         push               ecx                                           // 0x0082b9ea    51
                         push               eax                                           // 0x0082b9eb    50
                         call               dword ptr [ebx + 0x94]                        // 0x0082b9ec    ff9394000000
                         test               eax, eax                                      // 0x0082b9f2    85c0
                         pop                ebx                                           // 0x0082b9f4    5b
                         {disp8} je         _jmp_addr_0x0082b9fa                          // 0x0082b9f5    7403
                         or                 esi, 0xffffffff                               // 0x0082b9f7    83ceff
_jmp_addr_0x0082b9fa:    mov                dword ptr [edi], esi                          // 0x0082b9fa    8937
                         pop                edi                                           // 0x0082b9fc    5f
                         pop                esi                                           // 0x0082b9fd    5e
                         ret                                                              // 0x0082b9fe    c3
_jmp_addr_0x0082b9ff:    pop                edi                                           // 0x0082b9ff    5f
                         xor.s              eax, eax                                      // 0x0082ba00    33c0
                         pop                esi                                           // 0x0082ba02    5e
                         ret                                                              // 0x0082ba03    c3
                         nop                                                              // 0x0082ba04    90
                         nop                                                              // 0x0082ba05    90
                         nop                                                              // 0x0082ba06    90
                         nop                                                              // 0x0082ba07    90
                         nop                                                              // 0x0082ba08    90
                         nop                                                              // 0x0082ba09    90
                         nop                                                              // 0x0082ba0a    90
                         nop                                                              // 0x0082ba0b    90
                         nop                                                              // 0x0082ba0c    90
                         nop                                                              // 0x0082ba0d    90
                         nop                                                              // 0x0082ba0e    90
                         nop                                                              // 0x0082ba0f    90
_jmp_addr_0x0082ba10:    {disp32} mov       eax, dword ptr [data_bytes + 0x50221c]        // 0x0082ba10    a11c82ec00
                         test               eax, eax                                      // 0x0082ba15    85c0
                         {disp8} je         _jmp_addr_0x0082ba36                          // 0x0082ba17    741d
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082ba19    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082ba1e    8b08
                         push               0x0                                           // 0x0082ba20    6a00
                         push               0xb                                           // 0x0082ba22    6a0b
                         push               0x0                                           // 0x0082ba24    6a00
                         push               eax                                           // 0x0082ba26    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082ba27    ff9194000000
                         neg                eax                                           // 0x0082ba2d    f7d8
                         sbb.s              eax, eax                                      // 0x0082ba2f    1bc0
                         {disp32} mov       dword ptr [data_bytes + 0x50221c], eax        // 0x0082ba31    a31c82ec00
_jmp_addr_0x0082ba36:    {disp32} mov       eax, dword ptr [data_bytes + 0x50425c]        // 0x0082ba36    a15ca2ec00
                         push               esi                                           // 0x0082ba3b    56
                         {disp32} mov       esi, dword ptr [data_bytes + 0x501e68]        // 0x0082ba3c    8b35687eec00
                         push               edi                                           // 0x0082ba42    57
                         or                 edi, 0xffffffff                               // 0x0082ba43    83cfff
                         cmp.s              eax, esi                                      // 0x0082ba46    3bc6
                         {disp8} je         _jmp_addr_0x0082ba68                          // 0x0082ba48    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082ba4a    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082ba4f    8b10
                         push               esi                                           // 0x0082ba51    56
                         push               0x1b                                          // 0x0082ba52    6a1b
                         push               eax                                           // 0x0082ba54    50
                         call               dword ptr [edx + 0x50]                        // 0x0082ba55    ff5250
                         test               eax, eax                                      // 0x0082ba58    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], edi        // 0x0082ba5a    893d5ca2ec00
                         {disp8} jne        _jmp_addr_0x0082ba68                          // 0x0082ba60    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], esi        // 0x0082ba62    89355ca2ec00
_jmp_addr_0x0082ba68:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e80]        // 0x0082ba68    8b35807eec00
                         cmp                dword ptr [data_bytes + 0x5021f8], esi        // 0x0082ba6e    3935f881ec00
                         {disp8} je         _jmp_addr_0x0082ba99                          // 0x0082ba74    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082ba76    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082ba7b    8b08
                         push               esi                                           // 0x0082ba7d    56
                         push               0x2                                           // 0x0082ba7e    6a02
                         push               0x0                                           // 0x0082ba80    6a00
                         push               eax                                           // 0x0082ba82    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082ba83    ff9194000000
                         test               eax, eax                                      // 0x0082ba89    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], edi        // 0x0082ba8b    893df881ec00
                         {disp8} jne        _jmp_addr_0x0082ba99                          // 0x0082ba91    7506
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], esi        // 0x0082ba93    8935f881ec00
_jmp_addr_0x0082ba99:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e7c]        // 0x0082ba99    8b357c7eec00
                         cmp                dword ptr [data_bytes + 0x5021f4], esi        // 0x0082ba9f    3935f481ec00
                         {disp8} je         _jmp_addr_0x0082baca                          // 0x0082baa5    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082baa7    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082baac    8b10
                         push               esi                                           // 0x0082baae    56
                         push               0x1                                           // 0x0082baaf    6a01
                         push               0x0                                           // 0x0082bab1    6a00
                         push               eax                                           // 0x0082bab3    50
                         call               dword ptr [edx + 0x94]                        // 0x0082bab4    ff9294000000
                         test               eax, eax                                      // 0x0082baba    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x5021f4], edi        // 0x0082babc    893df481ec00
                         {disp8} jne        _jmp_addr_0x0082baca                          // 0x0082bac2    7506
                         {disp32} mov       dword ptr [data_bytes + 0x5021f4], esi        // 0x0082bac4    8935f481ec00
_jmp_addr_0x0082baca:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e78]        // 0x0082baca    8b35787eec00
                         cmp                dword ptr [data_bytes + 0x502204], esi        // 0x0082bad0    39350482ec00
                         {disp8} je         _jmp_addr_0x0082bafb                          // 0x0082bad6    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bad8    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082badd    8b08
                         push               esi                                           // 0x0082badf    56
                         push               0x5                                           // 0x0082bae0    6a05
                         push               0x0                                           // 0x0082bae2    6a00
                         push               eax                                           // 0x0082bae4    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082bae5    ff9194000000
                         test               eax, eax                                      // 0x0082baeb    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x502204], edi        // 0x0082baed    893d0482ec00
                         {disp8} jne        _jmp_addr_0x0082bafb                          // 0x0082baf3    7506
                         {disp32} mov       dword ptr [data_bytes + 0x502204], esi        // 0x0082baf5    89350482ec00
_jmp_addr_0x0082bafb:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e74]        // 0x0082bafb    8b35747eec00
                         cmp                dword ptr [data_bytes + 0x502200], esi        // 0x0082bb01    39350082ec00
                         {disp8} je         _jmp_addr_0x0082bb2c                          // 0x0082bb07    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bb09    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082bb0e    8b10
                         push               esi                                           // 0x0082bb10    56
                         push               0x4                                           // 0x0082bb11    6a04
                         push               0x0                                           // 0x0082bb13    6a00
                         push               eax                                           // 0x0082bb15    50
                         call               dword ptr [edx + 0x94]                        // 0x0082bb16    ff9294000000
                         test               eax, eax                                      // 0x0082bb1c    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x502200], edi        // 0x0082bb1e    893d0082ec00
                         {disp8} jne        _jmp_addr_0x0082bb2c                          // 0x0082bb24    7506
                         {disp32} mov       dword ptr [data_bytes + 0x502200], esi        // 0x0082bb26    89350082ec00
_jmp_addr_0x0082bb2c:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e70]        // 0x0082bb2c    8b35707eec00
                         cmp                dword ptr [data_bytes + 0x50423c], esi        // 0x0082bb32    39353ca2ec00
                         {disp8} je         _jmp_addr_0x0082bb58                          // 0x0082bb38    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bb3a    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bb3f    8b08
                         push               esi                                           // 0x0082bb41    56
                         push               0x13                                          // 0x0082bb42    6a13
                         push               eax                                           // 0x0082bb44    50
                         call               dword ptr [ecx + 0x50]                        // 0x0082bb45    ff5150
                         test               eax, eax                                      // 0x0082bb48    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], edi        // 0x0082bb4a    893d3ca2ec00
                         {disp8} jne        _jmp_addr_0x0082bb58                          // 0x0082bb50    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], esi        // 0x0082bb52    89353ca2ec00
_jmp_addr_0x0082bb58:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e6c]        // 0x0082bb58    8b356c7eec00
                         cmp                dword ptr [data_bytes + 0x504240], esi        // 0x0082bb5e    393540a2ec00
                         {disp8} je         _jmp_addr_0x0082bb84                          // 0x0082bb64    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bb66    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082bb6b    8b10
                         push               esi                                           // 0x0082bb6d    56
                         push               0x14                                          // 0x0082bb6e    6a14
                         push               eax                                           // 0x0082bb70    50
                         call               dword ptr [edx + 0x50]                        // 0x0082bb71    ff5250
                         test               eax, eax                                      // 0x0082bb74    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x504240], edi        // 0x0082bb76    893d40a2ec00
                         {disp8} jne        _jmp_addr_0x0082bb84                          // 0x0082bb7c    7506
                         {disp32} mov       dword ptr [data_bytes + 0x504240], esi        // 0x0082bb7e    893540a2ec00
_jmp_addr_0x0082bb84:    {disp32} mov       esi, dword ptr [data_bytes + 0x501e64]        // 0x0082bb84    8b35647eec00
                         cmp                dword ptr [data_bytes + 0x50424c], esi        // 0x0082bb8a    39354ca2ec00
                         {disp8} je         _jmp_addr_0x0082bbb0                          // 0x0082bb90    741e
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bb92    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bb97    8b08
                         push               esi                                           // 0x0082bb99    56
                         push               0x17                                          // 0x0082bb9a    6a17
                         push               eax                                           // 0x0082bb9c    50
                         call               dword ptr [ecx + 0x50]                        // 0x0082bb9d    ff5150
                         test               eax, eax                                      // 0x0082bba0    85c0
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], edi        // 0x0082bba2    893d4ca2ec00
                         {disp8} jne        _jmp_addr_0x0082bbb0                          // 0x0082bba8    7506
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], esi        // 0x0082bbaa    89354ca2ec00
_jmp_addr_0x0082bbb0:    pop                edi                                           // 0x0082bbb0    5f
                         pop                esi                                           // 0x0082bbb1    5e
                         ret                                                              // 0x0082bbb2    c3
                         nop                                                              // 0x0082bbb3    90
                         nop                                                              // 0x0082bbb4    90
                         nop                                                              // 0x0082bbb5    90
                         nop                                                              // 0x0082bbb6    90
                         nop                                                              // 0x0082bbb7    90
                         nop                                                              // 0x0082bbb8    90
                         nop                                                              // 0x0082bbb9    90
                         nop                                                              // 0x0082bbba    90
                         nop                                                              // 0x0082bbbb    90
                         nop                                                              // 0x0082bbbc    90
                         nop                                                              // 0x0082bbbd    90
                         nop                                                              // 0x0082bbbe    90
                         nop                                                              // 0x0082bbbf    90
_jmp_addr_0x0082bbc0:    {disp32} mov       eax, dword ptr [data_bytes + 0x50425c]        // 0x0082bbc0    a15ca2ec00
                         push               esi                                           // 0x0082bbc5    56
                         or                 esi, 0xffffffff                               // 0x0082bbc6    83ceff
                         cmp.s              eax, esi                                      // 0x0082bbc9    3bc6
                         {disp8} jne        _jmp_addr_0x0082bbf9                          // 0x0082bbcb    752c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bbcd    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bbd2    8b08
                         push               0x00ec7e68                                    // 0x0082bbd4    68687eec00
                         push               0x1b                                          // 0x0082bbd9    6a1b
                         push               eax                                           // 0x0082bbdb    50
                         call               dword ptr [ecx + 0x54]                        // 0x0082bbdc    ff5154
                         test               eax, eax                                      // 0x0082bbdf    85c0
                         {disp8} je         _jmp_addr_0x0082bbeb                          // 0x0082bbe1    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], esi        // 0x0082bbe3    89355ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bbfe                          // 0x0082bbe9    eb13
_jmp_addr_0x0082bbeb:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e68]        // 0x0082bbeb    8b15687eec00
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], edx        // 0x0082bbf1    89155ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bbfe                          // 0x0082bbf7    eb05
_jmp_addr_0x0082bbf9:    {disp32} mov       dword ptr [data_bytes + 0x501e68], eax        // 0x0082bbf9    a3687eec00
_jmp_addr_0x0082bbfe:    {disp32} mov       eax, dword ptr [data_bytes + 0x5021f8]        // 0x0082bbfe    a1f881ec00
                         cmp.s              eax, esi                                      // 0x0082bc03    3bc6
                         {disp8} jne        _jmp_addr_0x0082bc38                          // 0x0082bc05    7531
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bc07    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bc0c    8b08
                         push               0x00ec7e80                                    // 0x0082bc0e    68807eec00
                         push               0x2                                           // 0x0082bc13    6a02
                         push               0x0                                           // 0x0082bc15    6a00
                         push               eax                                           // 0x0082bc17    50
                         call               dword ptr [ecx + 0x90]                        // 0x0082bc18    ff9190000000
                         test               eax, eax                                      // 0x0082bc1e    85c0
                         {disp8} je         _jmp_addr_0x0082bc2a                          // 0x0082bc20    7408
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], esi        // 0x0082bc22    8935f881ec00
                         {disp8} jmp        _jmp_addr_0x0082bc3d                          // 0x0082bc28    eb13
_jmp_addr_0x0082bc2a:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e80]        // 0x0082bc2a    8b15807eec00
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], edx        // 0x0082bc30    8915f881ec00
                         {disp8} jmp        _jmp_addr_0x0082bc3d                          // 0x0082bc36    eb05
_jmp_addr_0x0082bc38:    {disp32} mov       dword ptr [data_bytes + 0x501e80], eax        // 0x0082bc38    a3807eec00
_jmp_addr_0x0082bc3d:    {disp32} mov       eax, dword ptr [data_bytes + 0x5021f4]        // 0x0082bc3d    a1f481ec00
                         cmp.s              eax, esi                                      // 0x0082bc42    3bc6
                         {disp8} jne        _jmp_addr_0x0082bc77                          // 0x0082bc44    7531
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bc46    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bc4b    8b08
                         push               0x00ec7e7c                                    // 0x0082bc4d    687c7eec00
                         push               0x1                                           // 0x0082bc52    6a01
                         push               0x0                                           // 0x0082bc54    6a00
                         push               eax                                           // 0x0082bc56    50
                         call               dword ptr [ecx + 0x90]                        // 0x0082bc57    ff9190000000
                         test               eax, eax                                      // 0x0082bc5d    85c0
                         {disp8} je         _jmp_addr_0x0082bc69                          // 0x0082bc5f    7408
                         {disp32} mov       dword ptr [data_bytes + 0x5021f4], esi        // 0x0082bc61    8935f481ec00
                         {disp8} jmp        _jmp_addr_0x0082bc7c                          // 0x0082bc67    eb13
_jmp_addr_0x0082bc69:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e7c]        // 0x0082bc69    8b157c7eec00
                         {disp32} mov       dword ptr [data_bytes + 0x5021f4], edx        // 0x0082bc6f    8915f481ec00
                         {disp8} jmp        _jmp_addr_0x0082bc7c                          // 0x0082bc75    eb05
_jmp_addr_0x0082bc77:    {disp32} mov       dword ptr [data_bytes + 0x501e7c], eax        // 0x0082bc77    a37c7eec00
_jmp_addr_0x0082bc7c:    {disp32} mov       eax, dword ptr [data_bytes + 0x502204]        // 0x0082bc7c    a10482ec00
                         cmp.s              eax, esi                                      // 0x0082bc81    3bc6
                         {disp8} jne        _jmp_addr_0x0082bcb6                          // 0x0082bc83    7531
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bc85    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bc8a    8b08
                         push               0x00ec7e78                                    // 0x0082bc8c    68787eec00
                         push               0x5                                           // 0x0082bc91    6a05
                         push               0x0                                           // 0x0082bc93    6a00
                         push               eax                                           // 0x0082bc95    50
                         call               dword ptr [ecx + 0x90]                        // 0x0082bc96    ff9190000000
                         test               eax, eax                                      // 0x0082bc9c    85c0
                         {disp8} je         _jmp_addr_0x0082bca8                          // 0x0082bc9e    7408
                         {disp32} mov       dword ptr [data_bytes + 0x502204], esi        // 0x0082bca0    89350482ec00
                         {disp8} jmp        _jmp_addr_0x0082bcbb                          // 0x0082bca6    eb13
_jmp_addr_0x0082bca8:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e78]        // 0x0082bca8    8b15787eec00
                         {disp32} mov       dword ptr [data_bytes + 0x502204], edx        // 0x0082bcae    89150482ec00
                         {disp8} jmp        _jmp_addr_0x0082bcbb                          // 0x0082bcb4    eb05
_jmp_addr_0x0082bcb6:    {disp32} mov       dword ptr [data_bytes + 0x501e78], eax        // 0x0082bcb6    a3787eec00
_jmp_addr_0x0082bcbb:    {disp32} mov       eax, dword ptr [data_bytes + 0x502200]        // 0x0082bcbb    a10082ec00
                         cmp.s              eax, esi                                      // 0x0082bcc0    3bc6
                         {disp8} jne        _jmp_addr_0x0082bcf5                          // 0x0082bcc2    7531
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bcc4    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bcc9    8b08
                         push               0x00ec7e74                                    // 0x0082bccb    68747eec00
                         push               0x4                                           // 0x0082bcd0    6a04
                         push               0x0                                           // 0x0082bcd2    6a00
                         push               eax                                           // 0x0082bcd4    50
                         call               dword ptr [ecx + 0x90]                        // 0x0082bcd5    ff9190000000
                         test               eax, eax                                      // 0x0082bcdb    85c0
                         {disp8} je         _jmp_addr_0x0082bce7                          // 0x0082bcdd    7408
                         {disp32} mov       dword ptr [data_bytes + 0x502200], esi        // 0x0082bcdf    89350082ec00
                         {disp8} jmp        _jmp_addr_0x0082bcfa                          // 0x0082bce5    eb13
_jmp_addr_0x0082bce7:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e74]        // 0x0082bce7    8b15747eec00
                         {disp32} mov       dword ptr [data_bytes + 0x502200], edx        // 0x0082bced    89150082ec00
                         {disp8} jmp        _jmp_addr_0x0082bcfa                          // 0x0082bcf3    eb05
_jmp_addr_0x0082bcf5:    {disp32} mov       dword ptr [data_bytes + 0x501e74], eax        // 0x0082bcf5    a3747eec00
_jmp_addr_0x0082bcfa:    {disp32} mov       eax, dword ptr [data_bytes + 0x50423c]        // 0x0082bcfa    a13ca2ec00
                         cmp.s              eax, esi                                      // 0x0082bcff    3bc6
                         {disp8} jne        _jmp_addr_0x0082bd2f                          // 0x0082bd01    752c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bd03    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bd08    8b08
                         push               0x00ec7e70                                    // 0x0082bd0a    68707eec00
                         push               0x13                                          // 0x0082bd0f    6a13
                         push               eax                                           // 0x0082bd11    50
                         call               dword ptr [ecx + 0x54]                        // 0x0082bd12    ff5154
                         test               eax, eax                                      // 0x0082bd15    85c0
                         {disp8} je         _jmp_addr_0x0082bd21                          // 0x0082bd17    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], esi        // 0x0082bd19    89353ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bd34                          // 0x0082bd1f    eb13
_jmp_addr_0x0082bd21:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e70]        // 0x0082bd21    8b15707eec00
                         {disp32} mov       dword ptr [data_bytes + 0x50423c], edx        // 0x0082bd27    89153ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bd34                          // 0x0082bd2d    eb05
_jmp_addr_0x0082bd2f:    {disp32} mov       dword ptr [data_bytes + 0x501e70], eax        // 0x0082bd2f    a3707eec00
_jmp_addr_0x0082bd34:    {disp32} mov       eax, dword ptr [data_bytes + 0x504240]        // 0x0082bd34    a140a2ec00
                         cmp.s              eax, esi                                      // 0x0082bd39    3bc6
                         {disp8} jne        _jmp_addr_0x0082bd69                          // 0x0082bd3b    752c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bd3d    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bd42    8b08
                         push               0x00ec7e6c                                    // 0x0082bd44    686c7eec00
                         push               0x14                                          // 0x0082bd49    6a14
                         push               eax                                           // 0x0082bd4b    50
                         call               dword ptr [ecx + 0x54]                        // 0x0082bd4c    ff5154
                         test               eax, eax                                      // 0x0082bd4f    85c0
                         {disp8} je         _jmp_addr_0x0082bd5b                          // 0x0082bd51    7408
                         {disp32} mov       dword ptr [data_bytes + 0x504240], esi        // 0x0082bd53    893540a2ec00
                         {disp8} jmp        _jmp_addr_0x0082bd6e                          // 0x0082bd59    eb13
_jmp_addr_0x0082bd5b:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e6c]        // 0x0082bd5b    8b156c7eec00
                         {disp32} mov       dword ptr [data_bytes + 0x504240], edx        // 0x0082bd61    891540a2ec00
                         {disp8} jmp        _jmp_addr_0x0082bd6e                          // 0x0082bd67    eb05
_jmp_addr_0x0082bd69:    {disp32} mov       dword ptr [data_bytes + 0x501e6c], eax        // 0x0082bd69    a36c7eec00
_jmp_addr_0x0082bd6e:    {disp32} mov       eax, dword ptr [data_bytes + 0x50424c]        // 0x0082bd6e    a14ca2ec00
                         cmp.s              eax, esi                                      // 0x0082bd73    3bc6
                         {disp8} jne        _jmp_addr_0x0082bda3                          // 0x0082bd75    752c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bd77    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bd7c    8b08
                         push               0x00ec7e64                                    // 0x0082bd7e    68647eec00
                         push               0x17                                          // 0x0082bd83    6a17
                         push               eax                                           // 0x0082bd85    50
                         call               dword ptr [ecx + 0x54]                        // 0x0082bd86    ff5154
                         test               eax, eax                                      // 0x0082bd89    85c0
                         {disp8} je         _jmp_addr_0x0082bd95                          // 0x0082bd8b    7408
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], esi        // 0x0082bd8d    89354ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bda8                          // 0x0082bd93    eb13
_jmp_addr_0x0082bd95:    {disp32} mov       edx, dword ptr [data_bytes + 0x501e64]        // 0x0082bd95    8b15647eec00
                         {disp32} mov       dword ptr [data_bytes + 0x50424c], edx        // 0x0082bd9b    89154ca2ec00
                         {disp8} jmp        _jmp_addr_0x0082bda8                          // 0x0082bda1    eb05
_jmp_addr_0x0082bda3:    {disp32} mov       dword ptr [data_bytes + 0x501e64], eax        // 0x0082bda3    a3647eec00
_jmp_addr_0x0082bda8:    cmp                dword ptr [data_bytes + 0x50425c], 0x01       // 0x0082bda8    833d5ca2ec0001
                         pop                esi                                           // 0x0082bdaf    5e
                         {disp8} je         _jmp_addr_0x0082bdce                          // 0x0082bdb0    741c
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bdb2    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082bdb7    8b08
                         push               0x1                                           // 0x0082bdb9    6a01
                         push               0x1b                                          // 0x0082bdbb    6a1b
                         push               eax                                           // 0x0082bdbd    50
                         call               dword ptr [ecx + 0x50]                        // 0x0082bdbe    ff5150
                         neg                eax                                           // 0x0082bdc1    f7d8
                         sbb.s              eax, eax                                      // 0x0082bdc3    1bc0
                         and                eax, 0xfffffffe                               // 0x0082bdc5    83e0fe
                         inc                eax                                           // 0x0082bdc8    40
                         {disp32} mov       dword ptr [data_bytes + 0x50425c], eax        // 0x0082bdc9    a35ca2ec00
_jmp_addr_0x0082bdce:    cmp                dword ptr [data_bytes + 0x50221c], 0x01       // 0x0082bdce    833d1c82ec0001
                         {disp8} je         _jmp_addr_0x0082bdf8                          // 0x0082bdd5    7421
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082bdd7    a138a6ec00
                         mov                edx, dword ptr [eax]                          // 0x0082bddc    8b10
                         push               0x1                                           // 0x0082bdde    6a01
                         push               0xb                                           // 0x0082bde0    6a0b
                         push               0x0                                           // 0x0082bde2    6a00
                         push               eax                                           // 0x0082bde4    50
                         call               dword ptr [edx + 0x94]                        // 0x0082bde5    ff9294000000
                         neg                eax                                           // 0x0082bdeb    f7d8
                         sbb.s              eax, eax                                      // 0x0082bded    1bc0
                         and                eax, 0xfffffffe                               // 0x0082bdef    83e0fe
                         inc                eax                                           // 0x0082bdf2    40
                         {disp32} mov       dword ptr [data_bytes + 0x50221c], eax        // 0x0082bdf3    a31c82ec00
_jmp_addr_0x0082bdf8:    cmp                dword ptr [data_bytes + 0x5021f8], 0x02       // 0x0082bdf8    833df881ec0002
                         {disp8} je         _jmp_addr_0x0082be24                          // 0x0082bdff    7423
                         {disp32} mov       eax, dword ptr [_Direct3DDevice7]             // 0x0082be01    a138a6ec00
                         mov                ecx, dword ptr [eax]                          // 0x0082be06    8b08
                         push               0x2                                           // 0x0082be08    6a02
                         push               0x2                                           // 0x0082be0a    6a02
                         push               0x0                                           // 0x0082be0c    6a00
                         push               eax                                           // 0x0082be0e    50
                         call               dword ptr [ecx + 0x94]                        // 0x0082be0f    ff9194000000
                         neg                eax                                           // 0x0082be15    f7d8
                         sbb.s              eax, eax                                      // 0x0082be17    1bc0
                         and                eax, 0xfffffffd                               // 0x0082be19    83e0fd
                         add                eax, 0x02                                     // 0x0082be1c    83c002
                         {disp32} mov       dword ptr [data_bytes + 0x5021f8], eax        // 0x0082be1f    a3f881ec00
_jmp_addr_0x0082be24:    push               0x2                                           // 0x0082be24    6a02
                         push               0x1                                           // 0x0082be26    6a01
                         push               0x0                                           // 0x0082be28    6a00
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be2a    e891fbffff
                         push               0x2                                           // 0x0082be2f    6a02
                         push               0x5                                           // 0x0082be31    6a05
                         push               0x0                                           // 0x0082be33    6a00
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be35    e886fbffff
                         push               0x2                                           // 0x0082be3a    6a02
                         push               0x4                                           // 0x0082be3c    6a04
                         push               0x0                                           // 0x0082be3e    6a00
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be40    e87bfbffff
                         push               0x1                                           // 0x0082be45    6a01
                         push               0x1                                           // 0x0082be47    6a01
                         push               0x1                                           // 0x0082be49    6a01
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be4b    e870fbffff
                         push               0x1                                           // 0x0082be50    6a01
                         push               0x4                                           // 0x0082be52    6a04
                         push               0x1                                           // 0x0082be54    6a01
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be56    e865fbffff
                         push               0x1                                           // 0x0082be5b    6a01
                         push               0x1                                           // 0x0082be5d    6a01
                         push               0x2                                           // 0x0082be5f    6a02
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be61    e85afbffff
                         add                esp, 0x48                                     // 0x0082be66    83c448
                         push               0x1                                           // 0x0082be69    6a01
                         push               0x4                                           // 0x0082be6b    6a04
                         push               0x2                                           // 0x0082be6d    6a02
                         call               _SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl                          // 0x0082be6f    e84cfbffff
                         push               0x3                                           // 0x0082be74    6a03
                         push               0x17                                          // 0x0082be76    6a17
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082be78    e8c36abeff
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0082be7d    8b542418
                         {disp8} lea        eax, dword ptr [edx + -0x02]                  // 0x0082be81    8d42fe
                         add                esp, 0x14                                     // 0x0082be84    83c414
                         cmp                eax, 0x05                                     // 0x0082be87    83f805
                         {disp8} ja         _jmp_addr_0x0082beea                          // 0x0082be8a    775e
                         jmp                dword ptr [eax*4 + 0x82beec]                  // 0x0082be8c    ff2485ecbe8200
                         push               0x2                                           // 0x0082be93    6a02
                         push               0x13                                          // 0x0082be95    6a13
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082be97    e8a46abeff
                         push               0x1                                           // 0x0082be9c    6a01
                         push               0x14                                          // 0x0082be9e    6a14
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082bea0    e89b6abeff
                         add                esp, 0x10                                     // 0x0082bea5    83c410
                         ret                                                              // 0x0082bea8    c3
                         push               0x1                                           // 0x0082bea9    6a01
                         push               0x13                                          // 0x0082beab    6a13
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082bead    e88e6abeff
                         push               0x2                                           // 0x0082beb2    6a02
                         push               0x14                                          // 0x0082beb4    6a14
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082beb6    e8856abeff
                         add                esp, 0x10                                     // 0x0082bebb    83c410
                         ret                                                              // 0x0082bebe    c3
                         push               0x9                                           // 0x0082bebf    6a09
                         push               0x13                                          // 0x0082bec1    6a13
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082bec3    e8786abeff
                         push               0x3                                           // 0x0082bec8    6a03
                         push               0x14                                          // 0x0082beca    6a14
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082becc    e86f6abeff
                         add                esp, 0x10                                     // 0x0082bed1    83c410
                         ret                                                              // 0x0082bed4    c3
                         push               0x2                                           // 0x0082bed5    6a02
                         push               0x13                                          // 0x0082bed7    6a13
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082bed9    e8626abeff
                         push               0x2                                           // 0x0082bede    6a02
                         push               0x14                                          // 0x0082bee0    6a14
                         call               _SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl                          // 0x0082bee2    e8596abeff
                         add                esp, 0x10                                     // 0x0082bee7    83c410
_jmp_addr_0x0082beea:    ret                                                              // 0x0082beea    c3

// Snippet: db, [0x0082beeb, 0x0082beec)
.byte 0x90                        // 0x0082beeb

// Snippet: jmptbl, [0x0082beec, 0x0082bf04)
.byte 0xa9, 0xbe, 0x82, 0x00      // 0x0082beec
.byte 0x93, 0xbe, 0x82, 0x00      // 0x0082bef0
.byte 0xbf, 0xbe, 0x82, 0x00      // 0x0082bef4
.byte 0xbf, 0xbe, 0x82, 0x00      // 0x0082bef8
.byte 0xea, 0xbe, 0x82, 0x00      // 0x0082befc
.byte 0xd5, 0xbe, 0x82, 0x00      // 0x0082bf00

// Snippet: db, [0x0082bf04, 0x0082bf10)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0082bf04
.byte 0x90, 0x90, 0x90, 0x90      // 0x0082bf08
.byte 0x90, 0x90, 0x90, 0x90      // 0x0082bf0c

