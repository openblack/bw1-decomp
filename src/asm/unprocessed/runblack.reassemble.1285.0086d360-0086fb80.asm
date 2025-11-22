.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern _jmp_addr_0x00418a50
.extern _jmp_addr_0x007a1400
.extern  ??3@YAXPAX@Z
.extern ??2@YAPAXI@Z
.extern ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z
.extern _jmp_addr_0x00820f30
.extern _jmp_addr_0x00820fc0
.extern @GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di@24
.extern _jmp_addr_0x0083b9e0
.extern @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32
.extern _jmp_addr_0x0083c2d0
.extern ?Alloc@LH3DMem@@SAPAXJ@Z
.extern ?Free@LH3DMem@@SAXPAX@Z
.extern @PointIsTotallyInside__7RPAvoidFRC7Point2Df@16
.extern @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32
.extern @GetArcLength__9RouteNodeFP7RPAvoid@12
.extern _jmp_addr_0x00869330
.extern ??0Route@@QAE@XZ
.extern @__ct__5RouteFP5Route@12
.extern ??_DRoute@@QAEXXZ
.extern _jmp_addr_0x0086d060
.extern _jmp_addr_0x0086fb80
.extern @GetNormSq__7Point2DFv2@4
.extern @GetRange__7Point2DCFRC7Point2D@12
.extern _jmp_addr_0x0086fe80
.extern _jmp_addr_0x00878700

.globl _jmp_addr_0x0086d360
.globl _jmp_addr_0x0086d460
.globl _jmp_addr_0x0086d4a0
.globl _jmp_addr_0x0086d4d0
.globl _jmp_addr_0x0086d4e0
.globl _jmp_addr_0x0086d760
.globl ??0RPlan@@QAE@XZ 
.globl ??_DRPlan@@QAEXXZ
.globl ?FreeRoutes@RPlan@@QAEXXZ
.globl @__dt__10VisitBlockFv@9
.globl @SetStart__5RPlanFRC7Point2DfP8RPHolderiii@32
.globl @SetDest__5RPlanFRC7Point2Dfffiifi@40
.globl @GameTurnUpdate__5RPlanFi@12

.globl _globl_ct_0x0086e070
.globl _globl_ct_0x0086e0a0

start_0x0086d360_0x0086fb80:
// Snippet: asm, [0x0086d360, 0x0086fb69)
_jmp_addr_0x0086d360:    {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c0]        // 0x0086d360    a1c051fa00
                         push               esi                                           // 0x0086d365    56
                         xor.s              esi, esi                                      // 0x0086d366    33f6
                         test               eax, eax                                      // 0x0086d368    85c0
                         {disp8} jbe        _jmp_addr_0x0086d387                          // 0x0086d36a    761b
                         push               edi                                           // 0x0086d36c    57
                         mov                edi, 0x00fa2920                               // 0x0086d36d    bf2029fa00
_jmp_addr_0x0086d372:    mov.s              ecx, edi                                      // 0x0086d372    8bcf
                         call               _jmp_addr_0x0086d060                          // 0x0086d374    e8e7fcffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c0]        // 0x0086d379    a1c051fa00
                         inc                esi                                           // 0x0086d37e    46
                         add                edi, 0x34                                     // 0x0086d37f    83c734
                         cmp.s              esi, eax                                      // 0x0086d382    3bf0
                         .byte              0x72, 0xec// {disp8} jb _jmp_addr_0x0086d372  // 0x0086d384    72ec
                         pop                edi                                           // 0x0086d386    5f
_jmp_addr_0x0086d387:    call               _jmp_addr_0x00820f30                          // 0x0086d387    e8a43bfbff
                         pop                esi                                           // 0x0086d38c    5e
                         ret                                                              // 0x0086d38d    c3
                         nop                                                              // 0x0086d38e    90
                         nop                                                              // 0x0086d38f    90
_jmp_addr_0x0086d390:    push               ecx                                           // 0x0086d390    51
                         {disp8} mov        eax, dword ptr [ecx + 0x24]                   // 0x0086d391    8b4124
                         test               eax, eax                                      // 0x0086d394    85c0
                         push               ebx                                           // 0x0086d396    53
                         push               ebp                                           // 0x0086d397    55
                         push               esi                                           // 0x0086d398    56
                         push               edi                                           // 0x0086d399    57
                         {disp32} je        _jmp_addr_0x0086d456                          // 0x0086d39a    0f84b6000000
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                   // 0x0086d3a0    8b4130
                         test               eax, eax                                      // 0x0086d3a3    85c0
                         {disp32} jle       _jmp_addr_0x0086d456                          // 0x0086d3a5    0f8eab000000
                         cmp                eax, 0x02                                     // 0x0086d3ab    83f802
                         {disp32} jg        _jmp_addr_0x0086d456                          // 0x0086d3ae    0f8fa2000000
                         {disp8} mov        edi, dword ptr [ecx + 0x18]                   // 0x0086d3b4    8b7918
                         {disp8} mov        ebp, dword ptr [ecx + 0x14]                   // 0x0086d3b7    8b6914
                         mov.s              eax, edi                                      // 0x0086d3ba    8bc7
                         cdq                                                              // 0x0086d3bc    99
                         and                edx, 0x0f                                     // 0x0086d3bd    83e20f
                         add.s              eax, edx                                      // 0x0086d3c0    03c2
                         sar                eax, 4                                        // 0x0086d3c2    c1f804
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086d3c5    89442410
                         {disp8} mov        eax, dword ptr [ecx + 0x20]                   // 0x0086d3c9    8b4120
                         add.s              eax, ebp                                      // 0x0086d3cc    03c5
                         cdq                                                              // 0x0086d3ce    99
                         and                edx, 0x0f                                     // 0x0086d3cf    83e20f
                         add.s              eax, edx                                      // 0x0086d3d2    03c2
                         mov.s              esi, eax                                      // 0x0086d3d4    8bf0
                         {disp8} mov        eax, dword ptr [ecx + 0x1c]                   // 0x0086d3d6    8b411c
                         add.s              eax, edi                                      // 0x0086d3d9    03c7
                         cdq                                                              // 0x0086d3db    99
                         and                edx, 0x0f                                     // 0x0086d3dc    83e20f
                         add.s              eax, edx                                      // 0x0086d3df    03c2
                         mov.s              ebx, eax                                      // 0x0086d3e1    8bd8
                         mov.s              eax, ebp                                      // 0x0086d3e3    8bc5
                         cdq                                                              // 0x0086d3e5    99
                         and                edx, 0x0f                                     // 0x0086d3e6    83e20f
                         add.s              eax, edx                                      // 0x0086d3e9    03c2
                         sar                esi, 4                                        // 0x0086d3eb    c1fe04
                         sar                eax, 4                                        // 0x0086d3ee    c1f804
                         sar                ebx, 4                                        // 0x0086d3f1    c1fb04
                         cmp.s              eax, esi                                      // 0x0086d3f4    3bc6
                         {disp8} jg         _jmp_addr_0x0086d456                          // 0x0086d3f6    7f5e
                         mov.s              ebp, eax                                      // 0x0086d3f8    8be8
                         shl                ebp, 5                                        // 0x0086d3fa    c1e505
                         sub.s              esi, eax                                      // 0x0086d3fd    2bf0
                         add                ebp, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                               // 0x0086d3ff    81c564c9e900
                         inc                esi                                           // 0x0086d405    46
_jmp_addr_0x0086d406:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0086d406    8b7c2410
                         cmp.s              edi, ebx                                      // 0x0086d40a    3bfb
                         {disp8} jg         _jmp_addr_0x0086d450                          // 0x0086d40c    7f42
_jmp_addr_0x0086d40e:    cmp                ebp, OFFSET ?g_index_block@LH3DIsland@@3PAY0CA@EA                               // 0x0086d40e    81fd64c9e900
                         {disp8} jl         _jmp_addr_0x0086d44b                          // 0x0086d414    7c35
                         cmp                ebp, 0x00e9cd44                               // 0x0086d416    81fd44cde900
                         {disp8} jg         _jmp_addr_0x0086d44b                          // 0x0086d41c    7f2d
                         test               edi, edi                                      // 0x0086d41e    85ff
                         {disp8} jl         _jmp_addr_0x0086d44b                          // 0x0086d420    7c29
                         cmp                edi, 0x1f                                     // 0x0086d422    83ff1f
                         {disp8} jg         _jmp_addr_0x0086d44b                          // 0x0086d425    7f24
                         xor.s              eax, eax                                      // 0x0086d427    33c0
                         mov                al, byte ptr [edi + ebp * 0x1]                // 0x0086d429    8a042f
                         test               eax, eax                                      // 0x0086d42c    85c0
                         {disp8} je         _jmp_addr_0x0086d44b                          // 0x0086d42e    741b
                         {disp32} mov       eax, dword ptr [eax * 0x4 + ?g_ptr_blocks@LH3DIsland@@3PAPAULandBlock@@A]       // 0x0086d430    8b048564c5e900
                         test               eax, eax                                      // 0x0086d437    85c0
                         {disp8} je         _jmp_addr_0x0086d44b                          // 0x0086d439    7410
                         test               byte ptr [eax + 0x00000920], 0x04             // 0x0086d43b    f6802009000004
                         {disp8} je         _jmp_addr_0x0086d44b                          // 0x0086d442    7407
                         mov.s              ecx, eax                                      // 0x0086d444    8bc8
                         call               _jmp_addr_0x00878700                          // 0x0086d446    e8b5b20000
_jmp_addr_0x0086d44b:    inc                edi                                           // 0x0086d44b    47
                         cmp.s              edi, ebx                                      // 0x0086d44c    3bfb
                         {disp8} jle        _jmp_addr_0x0086d40e                          // 0x0086d44e    7ebe
_jmp_addr_0x0086d450:    add                ebp, 0x20                                     // 0x0086d450    83c520
                         dec                esi                                           // 0x0086d453    4e
                         {disp8} jne        _jmp_addr_0x0086d406                          // 0x0086d454    75b0
_jmp_addr_0x0086d456:    pop                edi                                           // 0x0086d456    5f
                         pop                esi                                           // 0x0086d457    5e
                         pop                ebp                                           // 0x0086d458    5d
                         pop                ebx                                           // 0x0086d459    5b
                         pop                ecx                                           // 0x0086d45a    59
                         ret                                                              // 0x0086d45b    c3
                         nop                                                              // 0x0086d45c    90
                         nop                                                              // 0x0086d45d    90
                         nop                                                              // 0x0086d45e    90
                         nop                                                              // 0x0086d45f    90
_jmp_addr_0x0086d460:    {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c0]        // 0x0086d460    a1c051fa00
                         push               esi                                           // 0x0086d465    56
                         xor.s              esi, esi                                      // 0x0086d466    33f6
                         test               eax, eax                                      // 0x0086d468    85c0
                         {disp8} jbe        _jmp_addr_0x0086d487                          // 0x0086d46a    761b
                         push               edi                                           // 0x0086d46c    57
                         mov                edi, 0x00fa2920                               // 0x0086d46d    bf2029fa00
_jmp_addr_0x0086d472:    mov.s              ecx, edi                                      // 0x0086d472    8bcf
                         call               _jmp_addr_0x0086d390                          // 0x0086d474    e817ffffff
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c0]        // 0x0086d479    a1c051fa00
                         inc                esi                                           // 0x0086d47e    46
                         add                edi, 0x34                                     // 0x0086d47f    83c734
                         cmp.s              esi, eax                                      // 0x0086d482    3bf0
                         .byte              0x72, 0xec// {disp8} jb _jmp_addr_0x0086d472  // 0x0086d484    72ec
                         pop                edi                                           // 0x0086d486    5f
_jmp_addr_0x0086d487:    {disp32} mov       dword ptr [data_bytes + 0x5df1c0], 0x00000000 // 0x0086d487    c705c051fa0000000000
                         call               _jmp_addr_0x00820fc0                          // 0x0086d491    e82a3bfbff
                         pop                esi                                           // 0x0086d496    5e
                         ret                                                              // 0x0086d497    c3
                         nop                                                              // 0x0086d498    90
                         nop                                                              // 0x0086d499    90
                         nop                                                              // 0x0086d49a    90
                         nop                                                              // 0x0086d49b    90
                         nop                                                              // 0x0086d49c    90
                         nop                                                              // 0x0086d49d    90
                         nop                                                              // 0x0086d49e    90
                         nop                                                              // 0x0086d49f    90
_jmp_addr_0x0086d4a0:    push               esi                                           // 0x0086d4a0    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x0086d4a1    8b742408
                         mov                eax, dword ptr [esi]                          // 0x0086d4a5    8b06
                         push               edi                                           // 0x0086d4a7    57
                         push               eax                                           // 0x0086d4a8    50
                         call               ?Alloc@LH3DMem@@SAPAXJ@Z                      // 0x0086d4a9    e83258fdff
                         mov                ecx, dword ptr [esi]                          // 0x0086d4ae    8b0e
                         mov.s              edx, ecx                                      // 0x0086d4b0    8bd1
                         shr                ecx, 2                                        // 0x0086d4b2    c1e902
                         mov.s              edi, eax                                      // 0x0086d4b5    8bf8
                         rep movsd          es:[edi], dword ptr ds:[esi]                  // 0x0086d4b7    f3a5
                         mov.s              ecx, edx                                      // 0x0086d4b9    8bca
                         add                esp, 0x04                                     // 0x0086d4bb    83c404
                         and                ecx, 0x03                                     // 0x0086d4be    83e103
                         rep movsb                                                        // 0x0086d4c1    f3a4
                         pop                edi                                           // 0x0086d4c3    5f
                         pop                esi                                           // 0x0086d4c4    5e
                         ret                                                              // 0x0086d4c5    c3
                         nop                                                              // 0x0086d4c6    90
                         nop                                                              // 0x0086d4c7    90
                         nop                                                              // 0x0086d4c8    90
                         nop                                                              // 0x0086d4c9    90
                         nop                                                              // 0x0086d4ca    90
                         nop                                                              // 0x0086d4cb    90
                         nop                                                              // 0x0086d4cc    90
                         nop                                                              // 0x0086d4cd    90
                         nop                                                              // 0x0086d4ce    90
                         nop                                                              // 0x0086d4cf    90
_jmp_addr_0x0086d4d0:    push               ecx                                           // 0x0086d4d0    51
                         call               ?Free@LH3DMem@@SAXPAX@Z                       // 0x0086d4d1    e88a58fdff
                         pop                ecx                                           // 0x0086d4d6    59
                         ret                                                              // 0x0086d4d7    c3
                         nop                                                              // 0x0086d4d8    90
                         nop                                                              // 0x0086d4d9    90
                         nop                                                              // 0x0086d4da    90
                         nop                                                              // 0x0086d4db    90
                         nop                                                              // 0x0086d4dc    90
                         nop                                                              // 0x0086d4dd    90
                         nop                                                              // 0x0086d4de    90
                         nop                                                              // 0x0086d4df    90
_jmp_addr_0x0086d4e0:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x0086d4e0    8b442404
                         sub                esp, 0x10                                     // 0x0086d4e4    83ec10
                         push               esi                                           // 0x0086d4e7    56
                         push               edi                                           // 0x0086d4e8    57
                         mov.s              edi, ecx                                      // 0x0086d4e9    8bf9
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0086d4eb    8b4f04
                         cmp.s              eax, ecx                                      // 0x0086d4ee    3bc1
                         mov.s              esi, edx                                      // 0x0086d4f0    8bf2
                         {disp8} jbe        _jmp_addr_0x0086d4fb                          // 0x0086d4f2    7607
                         {disp8} lea        eax, dword ptr [ecx + -0x01]                  // 0x0086d4f4    8d41ff
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0086d4f7    8944241c
_jmp_addr_0x0086d4fb:    push               ebx                                           // 0x0086d4fb    53
                         push               ebp                                           // 0x0086d4fc    55
                         {disp8} mov        ebp, dword ptr [edi + 0x08]                   // 0x0086d4fd    8b6f08
                         {disp8} lea        eax, dword ptr [ebp + -0x01]                  // 0x0086d500    8d45ff
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086d503    89442410
                         imul               eax, dword ptr [esp + 0x24]                   // 0x0086d507    0faf442424
                         xor.s              edx, edx                                      // 0x0086d50c    33d2
                         div                ecx                                           // 0x0086d50e    f7f1
                         mov.s              ebx, eax                                      // 0x0086d510    8bd8
                         cmp.s              ebx, ebp                                      // 0x0086d512    3bdd
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x0086d51f   // 0x0086d514    7209
                         xor.s              edx, edx                                      // 0x0086d516    33d2
                         div                ebp                                           // 0x0086d518    f7f5
                         imul               eax, ebp                                      // 0x0086d51a    0fafc5
                         sub.s              ebx, eax                                      // 0x0086d51d    2bd8
_jmp_addr_0x0086d51f:    {disp8} mov        edx, dword ptr [esp + 0x24]                   // 0x0086d51f    8b542424
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0086d523    894c2414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x0086d527    8b4c2410
                         xor.s              eax, eax                                      // 0x0086d52b    33c0
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086d52d    89442418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0086d531    df6c2414
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0086d535    894c2414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086d539    89442418
                         {disp8} fidiv      dword ptr [esp + 0x14]                        // 0x0086d53d    da742414
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0086d541    89542414
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086d545    89442418
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0086d549    df6c2414
                         fdiv               st, st(1)                                     // 0x0086d54d    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x0086d54f    e8ac3ef3ff
                         fld                st(0)                                         // 0x0086d554    d9c0
                         mov.s              ebp, eax                                      // 0x0086d556    8be8
                         call               _jmp_addr_0x007a1400                          // 0x0086d558    e8a33ef3ff
                         imul               ebp, eax                                      // 0x0086d55d    0fafe8
                         {disp8} mov        eax, dword ptr [esp + 0x24]                   // 0x0086d560    8b442424
                         sub.s              eax, ebp                                      // 0x0086d564    2bc5
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086d566    89442414
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000            // 0x0086d56a    c744241800000000
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0086d572    8b4708
                         {disp8} fild       qword ptr [esp + 0x14]                        // 0x0086d575    df6c2414
                         {disp8} lea        ebp, dword ptr [ebx + 0x01]                   // 0x0086d579    8d6b01
                         mov.s              edx, ebp                                      // 0x0086d57c    8bd5
                         cmp.s              edx, eax                                      // 0x0086d57e    3bd0
                         fdiv               st, st(1)                                     // 0x0086d580    d8f1
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086d582    d95c2424
                         fstp               st(0)                                         // 0x0086d586    ddd8
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x0086d58c   // 0x0086d588    7202
                         mov.s              edx, ebx                                      // 0x0086d58a    8bd3
_jmp_addr_0x0086d58c:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0086d58c    d90590a38a00
                         lea                eax, dword ptr [ebx + ebx * 0x2]              // 0x0086d592    8d045b
                         {disp8} fsub       dword ptr [esp + 0x24]                        // 0x0086d595    d8642424
                         {disp8} mov        ebx, dword ptr [edi + eax * 0x8 + 0x0c]       // 0x0086d599    8b5cc70c
                         {disp8} lea        ecx, dword ptr [edi + eax * 0x8 + 0x0c]       // 0x0086d59d    8d4cc70c
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0086d5a1    8b442428
                         fld                st(0)                                         // 0x0086d5a5    d9c0
                         mov                dword ptr [eax], ebx                          // 0x0086d5a7    8918
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086d5a9    8b5904
                         fld                st(0)                                         // 0x0086d5ac    d9c0
                         fmul               dword ptr [eax]                               // 0x0086d5ae    d808
                         {disp8} mov        dword ptr [eax + 0x04], ebx                   // 0x0086d5b0    895804
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086d5b3    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0086d5b6    894808
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x0086d5b9    d9542428
                         lea                ecx, dword ptr [edx + edx * 0x2]              // 0x0086d5bd    8d0c52
                         fstp               dword ptr [eax]                               // 0x0086d5c0    d918
                         {disp8} lea        ecx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086d5c2    8d4ccf0c
                         {disp8} lea        edx, dword ptr [edx + edx * 0x2 + 0x03]       // 0x0086d5c6    8d545203
                         fld                st(0)                                         // 0x0086d5ca    d9c0
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086d5cc    d84804
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0086d5cf    d9542410
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0086d5d3    d95804
                         {disp8} fmul       dword ptr [eax + 0x08]                        // 0x0086d5d6    d84808
                         {disp8} fst        dword ptr [eax + 0x08]                        // 0x0086d5d9    d95008
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086d5dc    8b5904
                         fld                dword ptr [ecx]                               // 0x0086d5df    d901
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086d5e1    8b4908
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d5e4    d84c2424
                         {disp8} mov        dword ptr [esp + 0x18], ebx                   // 0x0086d5e8    895c2418
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086d5ec    d9442418
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                   // 0x0086d5f0    894c241c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d5f4    d84c2424
                         {disp8} lea        ecx, dword ptr [ebp + ebp * 0x2 + 0x00]       // 0x0086d5f8    8d4c6d00
                         lea                ebx, dword ptr [edi + ecx * 0x8]              // 0x0086d5fc    8d1ccf
                         {disp8} mov        ecx, dword ptr [esp + 0x2c]                   // 0x0086d5ff    8b4c242c
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086d603    d95c2418
                         lea                edi, dword ptr [edi + edx * 0x8]              // 0x0086d607    8d3cd7
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086d60a    d944241c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d60e    d84c2424
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086d612    d95c241c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086d616    d9442428
                         fadd               st, st(1)                                     // 0x0086d61a    d8c1
                         fstp               dword ptr [eax]                               // 0x0086d61c    d918
                         fstp               st(0)                                         // 0x0086d61e    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086d620    d9442410
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086d624    d8442418
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0086d628    d95804
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086d62b    d844241c
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0086d62f    d95808
                         mov                ebp, dword ptr [ebx]                          // 0x0086d632    8b2b
                         mov                dword ptr [ecx], ebp                          // 0x0086d634    8929
                         {disp8} mov        ebp, dword ptr [ebx + 0x04]                   // 0x0086d636    8b6b04
                         fld                st(0)                                         // 0x0086d639    d9c0
                         fmul               dword ptr [ecx]                               // 0x0086d63b    d809
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x0086d63d    896904
                         {disp8} mov        ebx, dword ptr [ebx + 0x08]                   // 0x0086d640    8b5b08
                         {disp8} mov        dword ptr [ecx + 0x08], ebx                   // 0x0086d643    895908
                         {disp8} fst        dword ptr [esp + 0x28]                        // 0x0086d646    d9542428
                         fstp               dword ptr [ecx]                               // 0x0086d64a    d919
                         fld                st(0)                                         // 0x0086d64c    d9c0
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086d64e    d84904
                         {disp8} fst        dword ptr [esp + 0x2c]                        // 0x0086d651    d954242c
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0086d655    d95904
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0086d658    d84908
                         {disp8} fst        dword ptr [ecx + 0x08]                        // 0x0086d65b    d95108
                         {disp8} mov        edx, dword ptr [edi + 0x04]                   // 0x0086d65e    8b5704
                         fld                dword ptr [edi]                               // 0x0086d661    d907
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0086d663    89542418
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d667    d84c2424
                         {disp8} mov        edx, dword ptr [edi + 0x08]                   // 0x0086d66b    8b5708
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086d66e    d9442418
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0086d672    8954241c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d676    d84c2424
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086d67a    d95c2418
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086d67e    d944241c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086d682    d84c2424
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086d686    d95c241c
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086d68a    d9442428
                         fadd               st, st(1)                                     // 0x0086d68e    d8c1
                         fstp               dword ptr [ecx]                               // 0x0086d690    d919
                         test               esi, esi                                      // 0x0086d692    85f6
                         fstp               st(0)                                         // 0x0086d694    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086d696    d944242c
                         pop                ebp                                           // 0x0086d69a    5d
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086d69b    d8442414
                         pop                ebx                                           // 0x0086d69f    5b
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0086d6a0    d95904
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086d6a3    d8442414
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0086d6a7    d95908
                         {disp32} je        _jmp_addr_0x0086d750                          // 0x0086d6aa    0f84a0000000
                         fld                dword ptr [eax]                               // 0x0086d6b0    d900
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0086d6b2    d94004
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086d6b5    d94008
                         fld                st(0)                                         // 0x0086d6b8    d9c0
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0086d6ba    d84e2c
                         fld                st(2)                                         // 0x0086d6bd    d9c2
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086d6bf    d84e20
                         faddp              st(1), st                                     // 0x0086d6c2    dec1
                         fld                st(3)                                         // 0x0086d6c4    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086d6c6    d84e14
                         faddp              st(1), st                                     // 0x0086d6c9    dec1
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x0086d6cb    d84638
                         fstp               dword ptr [eax]                               // 0x0086d6ce    d918
                         fld                st(0)                                         // 0x0086d6d0    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0086d6d2    d84e30
                         fld                st(2)                                         // 0x0086d6d5    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086d6d7    d84e24
                         faddp              st(1), st                                     // 0x0086d6da    dec1
                         fld                st(3)                                         // 0x0086d6dc    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086d6de    d84e18
                         faddp              st(1), st                                     // 0x0086d6e1    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086d6e3    d8463c
                         {disp8} fstp       dword ptr [eax + 0x04]                        // 0x0086d6e6    d95804
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x0086d6e9    d84e34
                         fxch               st(1)                                         // 0x0086d6ec    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x0086d6ee    d84e28
                         faddp              st(1), st                                     // 0x0086d6f1    dec1
                         fxch               st(1)                                         // 0x0086d6f3    d9c9
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086d6f5    d84e1c
                         faddp              st(1), st                                     // 0x0086d6f8    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x0086d6fa    d84640
                         {disp8} fstp       dword ptr [eax + 0x08]                        // 0x0086d6fd    d95808
                         fld                dword ptr [ecx]                               // 0x0086d700    d901
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0086d702    d94104
                         {disp8} fld        dword ptr [ecx + 0x08]                        // 0x0086d705    d94108
                         fld                st(0)                                         // 0x0086d708    d9c0
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0086d70a    d84e2c
                         fld                st(2)                                         // 0x0086d70d    d9c2
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086d70f    d84e20
                         faddp              st(1), st                                     // 0x0086d712    dec1
                         fld                st(3)                                         // 0x0086d714    d9c3
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086d716    d84e14
                         faddp              st(1), st                                     // 0x0086d719    dec1
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x0086d71b    d84638
                         fstp               dword ptr [ecx]                               // 0x0086d71e    d919
                         fld                st(0)                                         // 0x0086d720    d9c0
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0086d722    d84e30
                         fld                st(2)                                         // 0x0086d725    d9c2
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086d727    d84e24
                         faddp              st(1), st                                     // 0x0086d72a    dec1
                         fld                st(3)                                         // 0x0086d72c    d9c3
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086d72e    d84e18
                         faddp              st(1), st                                     // 0x0086d731    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086d733    d8463c
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0086d736    d95904
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x0086d739    d84e34
                         fxch               st(1)                                         // 0x0086d73c    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x0086d73e    d84e28
                         faddp              st(1), st                                     // 0x0086d741    dec1
                         fxch               st(1)                                         // 0x0086d743    d9c9
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086d745    d84e1c
                         faddp              st(1), st                                     // 0x0086d748    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x0086d74a    d84640
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0086d74d    d95908
_jmp_addr_0x0086d750:    pop                edi                                           // 0x0086d750    5f
                         pop                esi                                           // 0x0086d751    5e
                         add                esp, 0x10                                     // 0x0086d752    83c410
                         ret                0x000c                                        // 0x0086d755    c20c00
                         nop                                                              // 0x0086d758    90
                         nop                                                              // 0x0086d759    90
                         nop                                                              // 0x0086d75a    90
                         nop                                                              // 0x0086d75b    90
                         nop                                                              // 0x0086d75c    90
                         nop                                                              // 0x0086d75d    90
                         nop                                                              // 0x0086d75e    90
                         nop                                                              // 0x0086d75f    90
_jmp_addr_0x0086d760:    sub                esp, 0x44                                     // 0x0086d760    83ec44
                         push               ebx                                           // 0x0086d763    53
                         push               ebp                                           // 0x0086d764    55
                         {disp8} mov        ebp, dword ptr [ecx + 0x04]                   // 0x0086d765    8b6904
                         push               esi                                           // 0x0086d768    56
                         push               edi                                           // 0x0086d769    57
                         {disp8} mov        edi, dword ptr [esp + 0x58]                   // 0x0086d76a    8b7c2458
                         cmp.s              edi, ebp                                      // 0x0086d76e    3bfd
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0086d770    89542414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0086d774    894c2410
                         {disp8} jbe        _jmp_addr_0x0086d77d                          // 0x0086d778    7603
                         {disp8} lea        edi, dword ptr [ebp + -0x01]                  // 0x0086d77a    8d7dff
_jmp_addr_0x0086d77d:    {disp8} mov        ebx, dword ptr [ecx + 0x08]                   // 0x0086d77d    8b5908
                         {disp8} lea        ecx, dword ptr [ebx + -0x01]                  // 0x0086d780    8d4bff
                         mov.s              eax, ecx                                      // 0x0086d783    8bc1
                         imul               eax, edi                                      // 0x0086d785    0fafc7
                         xor.s              edx, edx                                      // 0x0086d788    33d2
                         div                ebp                                           // 0x0086d78a    f7f5
                         mov.s              esi, eax                                      // 0x0086d78c    8bf0
                         cmp.s              esi, ebx                                      // 0x0086d78e    3bf3
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x0086d79b   // 0x0086d790    7209
                         xor.s              edx, edx                                      // 0x0086d792    33d2
                         div                ebx                                           // 0x0086d794    f7f3
                         imul               eax, ebx                                      // 0x0086d796    0fafc3
                         sub.s              esi, eax                                      // 0x0086d799    2bf0
_jmp_addr_0x0086d79b:    xor.s              eax, eax                                      // 0x0086d79b    33c0
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0086d79d    8944241c
                         {disp8} mov        dword ptr [esp + 0x18], ebp                   // 0x0086d7a1    896c2418
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0086d7a5    df6c2418
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0086d7a9    894c2418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0086d7ad    8944241c
                         {disp8} fidiv      dword ptr [esp + 0x18]                        // 0x0086d7b1    da742418
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0086d7b5    8944241c
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x0086d7b9    897c2418
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0086d7bd    df6c2418
                         fdiv               st, st(1)                                     // 0x0086d7c1    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x0086d7c3    e8383cf3ff
                         fld                st(0)                                         // 0x0086d7c8    d9c0
                         mov.s              ebp, eax                                      // 0x0086d7ca    8be8
                         call               _jmp_addr_0x007a1400                          // 0x0086d7cc    e82f3cf3ff
                         imul               ebp, eax                                      // 0x0086d7d1    0fafe8
                         sub.s              edi, ebp                                      // 0x0086d7d4    2bfd
                         {disp8} mov        dword ptr [esp + 0x18], edi                   // 0x0086d7d6    897c2418
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000            // 0x0086d7da    c744241c00000000
                         {disp8} lea        ecx, dword ptr [esi + 0x01]                   // 0x0086d7e2    8d4e01
                         cmp.s              ecx, ebx                                      // 0x0086d7e5    3bcb
                         {disp8} fild       qword ptr [esp + 0x18]                        // 0x0086d7e7    df6c2418
                         fdiv               st, st(1)                                     // 0x0086d7eb    d8f1
                         {disp8} fstp       dword ptr [esp + 0x58]                        // 0x0086d7ed    d95c2458
                         fstp               st(0)                                         // 0x0086d7f1    ddd8
                         .byte              0x72, 0x2// {disp8} jb _jmp_addr_0x0086d7f7   // 0x0086d7f3    7202
                         mov.s              ecx, esi                                      // 0x0086d7f5    8bce
_jmp_addr_0x0086d7f7:    {disp8} mov        edi, dword ptr [esp + 0x5c]                   // 0x0086d7f7    8b7c245c
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0086d7fb    d90590a38a00
                         {disp8} fsub       dword ptr [esp + 0x58]                        // 0x0086d801    d8642458
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086d805    8b542410
                         lea                eax, dword ptr [esi + esi * 0x8]              // 0x0086d809    8d04f6
                         {disp8} mov        esi, dword ptr [edx + eax * 0x8 + 0x0c]       // 0x0086d80c    8b74c20c
                         fld                st(0)                                         // 0x0086d810    d9c0
                         mov                dword ptr [edi], esi                          // 0x0086d812    8937
                         {disp8} mov        esi, dword ptr [edx + eax * 0x8 + 0x10]       // 0x0086d814    8b74c210
                         fld                st(0)                                         // 0x0086d818    d9c0
                         fmul               dword ptr [edi]                               // 0x0086d81a    d80f
                         {disp8} mov        dword ptr [edi + 0x04], esi                   // 0x0086d81c    897704
                         {disp8} mov        esi, dword ptr [edx + eax * 0x8 + 0x14]       // 0x0086d81f    8b74c214
                         lea                eax, dword ptr [edx + eax * 0x8]              // 0x0086d823    8d04c2
                         {disp8} fst        dword ptr [esp + 0x5c]                        // 0x0086d826    d954245c
                         {disp8} mov        dword ptr [edi + 0x08], esi                   // 0x0086d82a    897708
                         fstp               dword ptr [edi]                               // 0x0086d82d    d91f
                         lea                ecx, dword ptr [ecx + ecx * 0x8]              // 0x0086d82f    8d0cc9
                         lea                ecx, dword ptr [edx + ecx * 0x8]              // 0x0086d832    8d0cca
                         fld                st(0)                                         // 0x0086d835    d9c0
                         {disp8} mov        ebx, dword ptr [esp + 0x60]                   // 0x0086d837    8b5c2460
                         {disp8} fmul       dword ptr [edi + 0x04]                        // 0x0086d83b    d84f04
                         {disp8} fst        dword ptr [esp + 0x10]                        // 0x0086d83e    d9542410
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x0086d842    d95f04
                         {disp8} fmul       dword ptr [edi + 0x08]                        // 0x0086d845    d84f08
                         {disp8} fst        dword ptr [edi + 0x08]                        // 0x0086d848    d95708
                         {disp8} mov        edx, dword ptr [ecx + 0x10]                   // 0x0086d84b    8b5110
                         {disp8} fld        dword ptr [ecx + 0x0c]                        // 0x0086d84e    d9410c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0086d851    8954241c
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d855    d84c2458
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x0086d859    8b5114
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086d85c    d944241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0086d860    89542420
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d864    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086d868    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086d86c    d9442420
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d870    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086d874    d95c2420
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0086d878    d944245c
                         fadd               st, st(1)                                     // 0x0086d87c    d8c1
                         fstp               dword ptr [edi]                               // 0x0086d87e    d91f
                         fstp               st(0)                                         // 0x0086d880    ddd8
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086d882    d9442410
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086d886    d844241c
                         {disp8} fstp       dword ptr [edi + 0x04]                        // 0x0086d88a    d95f04
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0086d88d    d8442420
                         {disp8} fstp       dword ptr [edi + 0x08]                        // 0x0086d891    d95f08
                         {disp8} mov        edx, dword ptr [eax + 0x18]                   // 0x0086d894    8b5018
                         mov                dword ptr [ebx], edx                          // 0x0086d897    8913
                         {disp8} mov        edx, dword ptr [eax + 0x1c]                   // 0x0086d899    8b501c
                         fld                st(0)                                         // 0x0086d89c    d9c0
                         fld                st(0)                                         // 0x0086d89e    d9c0
                         {disp8} mov        dword ptr [ebx + 0x04], edx                   // 0x0086d8a0    895304
                         fmul               dword ptr [ebx]                               // 0x0086d8a3    d80b
                         {disp8} mov        edx, dword ptr [eax + 0x20]                   // 0x0086d8a5    8b5020
                         {disp8} mov        dword ptr [ebx + 0x08], edx                   // 0x0086d8a8    895308
                         {disp8} fst        dword ptr [esp + 0x5c]                        // 0x0086d8ab    d954245c
                         fstp               dword ptr [ebx]                               // 0x0086d8af    d91b
                         fld                st(0)                                         // 0x0086d8b1    d9c0
                         {disp8} fmul       dword ptr [ebx + 0x04]                        // 0x0086d8b3    d84b04
                         {disp8} fst        dword ptr [esp + 0x60]                        // 0x0086d8b6    d9542460
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0086d8ba    d95b04
                         {disp8} fmul       dword ptr [ebx + 0x08]                        // 0x0086d8bd    d84b08
                         {disp8} fst        dword ptr [ebx + 0x08]                        // 0x0086d8c0    d95308
                         {disp8} mov        edx, dword ptr [ecx + 0x1c]                   // 0x0086d8c3    8b511c
                         {disp8} fld        dword ptr [ecx + 0x18]                        // 0x0086d8c6    d94118
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0086d8c9    8954241c
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d8cd    d84c2458
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0086d8d1    8b5120
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086d8d4    d944241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                   // 0x0086d8d8    89542420
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d8dc    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086d8e0    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086d8e4    d9442420
                         {disp8} fmul       dword ptr [esp + 0x58]                        // 0x0086d8e8    d84c2458
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086d8ec    d95c2420
                         {disp8} fld        dword ptr [esp + 0x5c]                        // 0x0086d8f0    d944245c
                         fadd               st, st(1)                                     // 0x0086d8f4    d8c1
                         fstp               dword ptr [ebx]                               // 0x0086d8f6    d91b
                         fstp               st(0)                                         // 0x0086d8f8    ddd8
                         {disp8} fld        dword ptr [esp + 0x60]                        // 0x0086d8fa    d9442460
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086d8fe    d844241c
                         {disp8} mov        esi, dword ptr [esp + 0x64]                   // 0x0086d902    8b742464
                         {disp8} fstp       dword ptr [ebx + 0x04]                        // 0x0086d906    d95b04
                         {disp8} fadd       dword ptr [esp + 0x20]                        // 0x0086d909    d8442420
                         {disp8} fstp       dword ptr [ebx + 0x08]                        // 0x0086d90d    d95b08
                         {disp8} mov        edx, dword ptr [eax + 0x24]                   // 0x0086d910    8b5024
                         mov                dword ptr [esi], edx                          // 0x0086d913    8916
                         {disp8} mov        edx, dword ptr [eax + 0x28]                   // 0x0086d915    8b5028
                         fld                st(0)                                         // 0x0086d918    d9c0
                         fmul               dword ptr [esi]                               // 0x0086d91a    d80e
                         {disp8} mov        dword ptr [esi + 0x04], edx                   // 0x0086d91c    895604
                         {disp8} mov        edx, dword ptr [eax + 0x2c]                   // 0x0086d91f    8b502c
                         {disp8} mov        dword ptr [esi + 0x08], edx                   // 0x0086d922    895608
                         {disp8} mov        edx, dword ptr [eax + 0x30]                   // 0x0086d925    8b5030
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0086d928    89560c
                         {disp8} mov        edx, dword ptr [eax + 0x34]                   // 0x0086d92b    8b5034
                         {disp8} mov        dword ptr [esi + 0x10], edx                   // 0x0086d92e    895610
                         {disp8} mov        edx, dword ptr [eax + 0x38]                   // 0x0086d931    8b5038
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x0086d934    895614
                         {disp8} mov        edx, dword ptr [eax + 0x3c]                   // 0x0086d937    8b503c
                         {disp8} mov        dword ptr [esi + 0x18], edx                   // 0x0086d93a    895618
                         {disp8} mov        edx, dword ptr [eax + 0x40]                   // 0x0086d93d    8b5040
                         {disp8} mov        dword ptr [esi + 0x1c], edx                   // 0x0086d940    89561c
                         {disp8} mov        edx, dword ptr [eax + 0x44]                   // 0x0086d943    8b5044
                         {disp8} mov        dword ptr [esi + 0x20], edx                   // 0x0086d946    895620
                         {disp8} mov        edx, dword ptr [eax + 0x48]                   // 0x0086d949    8b5048
                         {disp8} mov        dword ptr [esi + 0x24], edx                   // 0x0086d94c    895624
                         {disp8} mov        edx, dword ptr [eax + 0x4c]                   // 0x0086d94f    8b504c
                         {disp8} mov        dword ptr [esi + 0x28], edx                   // 0x0086d952    895628
                         {disp8} mov        eax, dword ptr [eax + 0x50]                   // 0x0086d955    8b4050
                         fstp               dword ptr [esi]                               // 0x0086d958    d91e
                         {disp8} mov        dword ptr [esi + 0x2c], eax                   // 0x0086d95a    89462c
                         fld                st(0)                                         // 0x0086d95d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0086d95f    d84e0c
                         {disp8} fstp       dword ptr [esi + 0x0c]                        // 0x0086d962    d95e0c
                         fld                st(0)                                         // 0x0086d965    d9c0
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086d967    d84e18
                         {disp8} fstp       dword ptr [esi + 0x18]                        // 0x0086d96a    d95e18
                         fld                st(0)                                         // 0x0086d96d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086d96f    d84e24
                         {disp8} fstp       dword ptr [esi + 0x24]                        // 0x0086d972    d95e24
                         fld                st(0)                                         // 0x0086d975    d9c0
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0086d977    d84e04
                         {disp8} fstp       dword ptr [esi + 0x04]                        // 0x0086d97a    d95e04
                         fld                st(0)                                         // 0x0086d97d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0086d97f    d84e10
                         {disp8} fstp       dword ptr [esi + 0x10]                        // 0x0086d982    d95e10
                         fld                st(0)                                         // 0x0086d985    d9c0
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086d987    d84e1c
                         {disp8} fstp       dword ptr [esi + 0x1c]                        // 0x0086d98a    d95e1c
                         fld                st(0)                                         // 0x0086d98d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x0086d98f    d84e28
                         {disp8} fstp       dword ptr [esi + 0x28]                        // 0x0086d992    d95e28
                         fld                st(0)                                         // 0x0086d995    d9c0
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0086d997    d84e08
                         {disp8} fstp       dword ptr [esi + 0x08]                        // 0x0086d99a    d95e08
                         fld                st(0)                                         // 0x0086d99d    d9c0
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086d99f    d84e14
                         {disp8} fstp       dword ptr [esi + 0x14]                        // 0x0086d9a2    d95e14
                         fld                st(0)                                         // 0x0086d9a5    d9c0
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086d9a7    d84e20
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x0086d9aa    d95e20
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0086d9ad    d84e2c
                         {disp8} fstp       dword ptr [esi + 0x2c]                        // 0x0086d9b0    d95e2c
                         {disp8} mov        edx, dword ptr [ecx + 0x24]                   // 0x0086d9b3    8b5124
                         {disp8} mov        dword ptr [esp + 0x24], edx                   // 0x0086d9b6    89542424
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x0086d9ba    8b4128
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0086d9bd    89442428
                         {disp8} mov        edx, dword ptr [ecx + 0x2c]                   // 0x0086d9c1    8b512c
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0086d9c4    8954242c
                         {disp8} mov        eax, dword ptr [ecx + 0x30]                   // 0x0086d9c8    8b4130
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0086d9cb    89442430
                         {disp8} mov        edx, dword ptr [ecx + 0x34]                   // 0x0086d9cf    8b5134
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0086d9d2    89542434
                         {disp8} mov        eax, dword ptr [ecx + 0x38]                   // 0x0086d9d6    8b4138
                         {disp8} mov        dword ptr [esp + 0x38], eax                   // 0x0086d9d9    89442438
                         {disp8} mov        edx, dword ptr [ecx + 0x3c]                   // 0x0086d9dd    8b513c
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0086d9e0    8954243c
                         {disp8} mov        eax, dword ptr [ecx + 0x40]                   // 0x0086d9e4    8b4140
                         {disp8} mov        dword ptr [esp + 0x40], eax                   // 0x0086d9e7    89442440
                         {disp8} mov        edx, dword ptr [ecx + 0x44]                   // 0x0086d9eb    8b5144
                         {disp8} mov        dword ptr [esp + 0x44], edx                   // 0x0086d9ee    89542444
                         {disp8} mov        eax, dword ptr [ecx + 0x48]                   // 0x0086d9f2    8b4148
                         {disp8} mov        dword ptr [esp + 0x48], eax                   // 0x0086d9f5    89442448
                         {disp8} mov        edx, dword ptr [ecx + 0x4c]                   // 0x0086d9f9    8b514c
                         {disp8} mov        dword ptr [esp + 0x4c], edx                   // 0x0086d9fc    8954244c
                         {disp8} mov        eax, dword ptr [ecx + 0x50]                   // 0x0086da00    8b4150
                         {disp8} mov        ecx, dword ptr [esp + 0x58]                   // 0x0086da03    8b4c2458
                         push               ecx                                           // 0x0086da07    51
                         {disp8} lea        ecx, dword ptr [esp + 0x28]                   // 0x0086da08    8d4c2428
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x0086da0c    89442454
                         call               _jmp_addr_0x0086dac0                          // 0x0086da10    e8ab000000
                         {disp8} lea        edx, dword ptr [esp + 0x24]                   // 0x0086da15    8d542424
                         mov.s              ecx, esi                                      // 0x0086da19    8bce
                         call               _jmp_addr_0x0086da50                          // 0x0086da1b    e830000000
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0086da20    8b442414
                         test               eax, eax                                      // 0x0086da24    85c0
                         {disp8} je         _jmp_addr_0x0086da3d                          // 0x0086da26    7415
                         {disp8} lea        esi, dword ptr [eax + 0x14]                   // 0x0086da28    8d7014
                         mov.s              edx, edi                                      // 0x0086da2b    8bd7
                         mov.s              ecx, esi                                      // 0x0086da2d    8bce
                         call               _jmp_addr_0x00418a50                          // 0x0086da2f    e81cb0baff
                         mov.s              edx, ebx                                      // 0x0086da34    8bd3
                         mov.s              ecx, esi                                      // 0x0086da36    8bce
                         call               _jmp_addr_0x00418a50                          // 0x0086da38    e813b0baff
_jmp_addr_0x0086da3d:    pop                edi                                           // 0x0086da3d    5f
                         pop                esi                                           // 0x0086da3e    5e
                         pop                ebp                                           // 0x0086da3f    5d
                         pop                ebx                                           // 0x0086da40    5b
                         add                esp, 0x44                                     // 0x0086da41    83c444
                         ret                0x0010                                        // 0x0086da44    c21000
                         nop                                                              // 0x0086da47    90
                         nop                                                              // 0x0086da48    90
                         nop                                                              // 0x0086da49    90
                         nop                                                              // 0x0086da4a    90
                         nop                                                              // 0x0086da4b    90
                         nop                                                              // 0x0086da4c    90
                         nop                                                              // 0x0086da4d    90
                         nop                                                              // 0x0086da4e    90
                         nop                                                              // 0x0086da4f    90
_jmp_addr_0x0086da50:    fld                dword ptr [edx]                               // 0x0086da50    d902
                         fadd               dword ptr [ecx]                               // 0x0086da52    d801
                         fstp               dword ptr [ecx]                               // 0x0086da54    d919
                         {disp8} fld        dword ptr [edx + 0x04]                        // 0x0086da56    d94204
                         {disp8} fadd       dword ptr [ecx + 0x04]                        // 0x0086da59    d84104
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0086da5c    d95904
                         {disp8} fld        dword ptr [edx + 0x08]                        // 0x0086da5f    d94208
                         {disp8} fadd       dword ptr [ecx + 0x08]                        // 0x0086da62    d84108
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0086da65    d95908
                         {disp8} fld        dword ptr [edx + 0x0c]                        // 0x0086da68    d9420c
                         {disp8} fadd       dword ptr [ecx + 0x0c]                        // 0x0086da6b    d8410c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x0086da6e    d9590c
                         {disp8} fld        dword ptr [edx + 0x10]                        // 0x0086da71    d94210
                         {disp8} fadd       dword ptr [ecx + 0x10]                        // 0x0086da74    d84110
                         {disp8} fstp       dword ptr [ecx + 0x10]                        // 0x0086da77    d95910
                         {disp8} fld        dword ptr [edx + 0x14]                        // 0x0086da7a    d94214
                         {disp8} fadd       dword ptr [ecx + 0x14]                        // 0x0086da7d    d84114
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x0086da80    d95914
                         {disp8} fld        dword ptr [edx + 0x18]                        // 0x0086da83    d94218
                         {disp8} fadd       dword ptr [ecx + 0x18]                        // 0x0086da86    d84118
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x0086da89    d95918
                         {disp8} fld        dword ptr [edx + 0x1c]                        // 0x0086da8c    d9421c
                         {disp8} fadd       dword ptr [ecx + 0x1c]                        // 0x0086da8f    d8411c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x0086da92    d9591c
                         {disp8} fld        dword ptr [edx + 0x20]                        // 0x0086da95    d94220
                         {disp8} fadd       dword ptr [ecx + 0x20]                        // 0x0086da98    d84120
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x0086da9b    d95920
                         {disp8} fld        dword ptr [edx + 0x24]                        // 0x0086da9e    d94224
                         {disp8} fadd       dword ptr [ecx + 0x24]                        // 0x0086daa1    d84124
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0086daa4    d95924
                         {disp8} fld        dword ptr [edx + 0x28]                        // 0x0086daa7    d94228
                         {disp8} fadd       dword ptr [ecx + 0x28]                        // 0x0086daaa    d84128
                         {disp8} fstp       dword ptr [ecx + 0x28]                        // 0x0086daad    d95928
                         {disp8} fld        dword ptr [edx + 0x2c]                        // 0x0086dab0    d9422c
                         {disp8} fadd       dword ptr [ecx + 0x2c]                        // 0x0086dab3    d8412c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                        // 0x0086dab6    d9592c
                         ret                                                              // 0x0086dab9    c3
                         nop                                                              // 0x0086daba    90
                         nop                                                              // 0x0086dabb    90
                         nop                                                              // 0x0086dabc    90
                         nop                                                              // 0x0086dabd    90
                         nop                                                              // 0x0086dabe    90
                         nop                                                              // 0x0086dabf    90
_jmp_addr_0x0086dac0:    {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dac0    d9442404
                         fmul               dword ptr [ecx]                               // 0x0086dac4    d809
                         fstp               dword ptr [ecx]                               // 0x0086dac6    d919
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dac8    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x0c]                        // 0x0086dacc    d8490c
                         {disp8} fstp       dword ptr [ecx + 0x0c]                        // 0x0086dacf    d9590c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dad2    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x18]                        // 0x0086dad6    d84918
                         {disp8} fstp       dword ptr [ecx + 0x18]                        // 0x0086dad9    d95918
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dadc    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x24]                        // 0x0086dae0    d84924
                         {disp8} fstp       dword ptr [ecx + 0x24]                        // 0x0086dae3    d95924
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dae6    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086daea    d84904
                         {disp8} fstp       dword ptr [ecx + 0x04]                        // 0x0086daed    d95904
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086daf0    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x10]                        // 0x0086daf4    d84910
                         {disp8} fstp       dword ptr [ecx + 0x10]                        // 0x0086daf7    d95910
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086dafa    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x1c]                        // 0x0086dafe    d8491c
                         {disp8} fstp       dword ptr [ecx + 0x1c]                        // 0x0086db01    d9591c
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086db04    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x28]                        // 0x0086db08    d84928
                         {disp8} fstp       dword ptr [ecx + 0x28]                        // 0x0086db0b    d95928
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086db0e    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x08]                        // 0x0086db12    d84908
                         {disp8} fstp       dword ptr [ecx + 0x08]                        // 0x0086db15    d95908
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086db18    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x14]                        // 0x0086db1c    d84914
                         {disp8} fstp       dword ptr [ecx + 0x14]                        // 0x0086db1f    d95914
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086db22    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x20]                        // 0x0086db26    d84920
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x0086db29    d95920
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086db2c    d9442404
                         {disp8} fmul       dword ptr [ecx + 0x2c]                        // 0x0086db30    d8492c
                         {disp8} fstp       dword ptr [ecx + 0x2c]                        // 0x0086db33    d9592c
                         ret                0x0004                                        // 0x0086db36    c20400
                         nop                                                              // 0x0086db39    90
                         nop                                                              // 0x0086db3a    90
                         nop                                                              // 0x0086db3b    90
                         nop                                                              // 0x0086db3c    90
                         nop                                                              // 0x0086db3d    90
                         nop                                                              // 0x0086db3e    90
                         nop                                                              // 0x0086db3f    90
                         sub                esp, 0x24                                     // 0x0086db40    83ec24
                         push               ebx                                           // 0x0086db43    53
                         push               ebp                                           // 0x0086db44    55
                         push               esi                                           // 0x0086db45    56
                         push               edi                                           // 0x0086db46    57
                         mov.s              edi, ecx                                      // 0x0086db47    8bf9
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0086db49    8b4f08
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x0086db4c    8b5f04
                         {disp8} lea        ebp, dword ptr [ecx + -0x01]                  // 0x0086db4f    8d69ff
                         mov.s              eax, ebp                                      // 0x0086db52    8bc5
                         imul               eax, dword ptr [esp + 0x38]                   // 0x0086db54    0faf442438
                         mov.s              esi, edx                                      // 0x0086db59    8bf2
                         xor.s              edx, edx                                      // 0x0086db5b    33d2
                         div                ebx                                           // 0x0086db5d    f7f3
                         mov.s              ebx, eax                                      // 0x0086db5f    8bd8
                         cmp.s              ebx, ecx                                      // 0x0086db61    3bd9
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x0086db6e   // 0x0086db63    7209
                         xor.s              edx, edx                                      // 0x0086db65    33d2
                         div                ecx                                           // 0x0086db67    f7f1
                         imul               eax, ecx                                      // 0x0086db69    0fafc1
                         sub.s              ebx, eax                                      // 0x0086db6c    2bd8
_jmp_addr_0x0086db6e:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0086db6e    8b4704
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0086db71    8b4c2438
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086db75    89442410
                         xor.s              eax, eax                                      // 0x0086db79    33c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086db7b    89442414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0086db7f    df6c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086db83    89442414
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0086db87    896c2410
                         {disp8} fidiv      dword ptr [esp + 0x10]                        // 0x0086db8b    da742410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0086db8f    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086db93    89442414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0086db97    df6c2410
                         fdiv               st, st(1)                                     // 0x0086db9b    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x0086db9d    e85e38f3ff
                         fld                st(0)                                         // 0x0086dba2    d9c0
                         mov.s              ebp, eax                                      // 0x0086dba4    8be8
                         call               _jmp_addr_0x007a1400                          // 0x0086dba6    e85538f3ff
                         imul               ebp, eax                                      // 0x0086dbab    0fafe8
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0086dbae    8b442438
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0086dbb2    8b4f08
                         sub.s              eax, ebp                                      // 0x0086dbb5    2bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086dbb7    89442410
                         {disp8} lea        edx, dword ptr [ebx + 0x01]                   // 0x0086dbbb    8d5301
                         mov.s              eax, edx                                      // 0x0086dbbe    8bc2
                         cmp.s              eax, ecx                                      // 0x0086dbc0    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0086dbc2    c744241400000000
                         fidivr             dword ptr [esp + 0x10]                        // 0x0086dbca    da7c2410
                         {disp8} jbe        _jmp_addr_0x0086dbd2                          // 0x0086dbce    7602
                         mov.s              eax, ebx                                      // 0x0086dbd0    8bc3
_jmp_addr_0x0086dbd2:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0086dbd2    d90590a38a00
                         lea                ecx, dword ptr [ebx + ebx * 0x2]              // 0x0086dbd8    8d0c5b
                         fsub               st, st(1)                                     // 0x0086dbdb    d8e1
                         {disp8} mov        ebx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086dbdd    8b5ccf0c
                         {disp8} lea        ecx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086dbe1    8d4ccf0c
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0086dbe5    895c241c
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086dbe9    8b5904
                         fld                st(0)                                         // 0x0086dbec    d9c0
                         fld                st(0)                                         // 0x0086dbee    d9c0
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0086dbf0    895c2420
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086dbf4    d84c241c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086dbf8    8b4908
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0086dbfb    894c2424
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0086dbff    8d0c40
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086dc02    d95c241c
                         {disp8} lea        ecx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086dc06    8d4ccf0c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dc0a    d9442420
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x0086dc0e    8d1452
                         fmul               st, st(1)                                     // 0x0086dc11    d8c9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086dc13    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dc17    d9442424
                         fmul               st, st(1)                                     // 0x0086dc1b    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086dc1d    d95c2424
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086dc21    8b5904
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0086dc24    895c2414
                         fstp               st(0)                                         // 0x0086dc28    ddd8
                         fld                dword ptr [ecx]                               // 0x0086dc2a    d901
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086dc2c    8b4908
                         fmul               st, st(2)                                     // 0x0086dc2f    d8ca
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0086dc31    894c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086dc35    d9442414
                         lea                ecx, dword ptr [edi + edx * 0x8]              // 0x0086dc39    8d0cd7
                         fmul               st, st(3)                                     // 0x0086dc3c    d8cb
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086dc3e    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086dc42    d9442418
                         fmul               st, st(3)                                     // 0x0086dc46    d8cb
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086dc48    d95c2418
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086dc4c    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086dc50    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dc54    d9442420
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086dc58    d8442414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086dc5c    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dc60    d9442424
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086dc64    d8442418
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086dc68    d95c2424
                         mov                edx, dword ptr [ecx]                          // 0x0086dc6c    8b11
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0086dc6e    89542428
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086dc72    8b5104
                         fld                st(0)                                         // 0x0086dc75    d9c0
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0086dc77    d84c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0086dc7b    8954242c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086dc7f    8b4908
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x0086dc82    894c2430
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086dc86    d95c2428
                         {disp8} lea        edx, dword ptr [eax + eax * 0x2 + 0x03]       // 0x0086dc8a    8d544003
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086dc8e    d944242c
                         lea                eax, dword ptr [edi + edx * 0x8]              // 0x0086dc92    8d04d7
                         fmul               st, st(1)                                     // 0x0086dc95    d8c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086dc97    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dc9b    d9442430
                         fmul               st, st(1)                                     // 0x0086dc9f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086dca1    d95c2430
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086dca5    8b4804
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0086dca8    8b5008
                         fstp               st(0)                                         // 0x0086dcab    ddd8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0086dcad    894c2414
                         fld                dword ptr [eax]                               // 0x0086dcb1    d900
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0086dcb3    89542418
                         fmul               st, st(1)                                     // 0x0086dcb7    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086dcb9    d9442414
                         fmul               st, st(2)                                     // 0x0086dcbd    d8ca
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086dcbf    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086dcc3    d9442418
                         fmul               st, st(2)                                     // 0x0086dcc7    d8ca
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086dcc9    d95c2418
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086dccd    d9442428
                         fadd               st, st(1)                                     // 0x0086dcd1    d8c1
                         fstp               st(2)                                         // 0x0086dcd3    ddda
                         fstp               st(0)                                         // 0x0086dcd5    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086dcd7    d944242c
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086dcdb    d8442414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086dcdf    d95c242c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0086dce3    8b44242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dce7    d9442430
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086dceb    89442410
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086dcef    d8442418
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0086dcf3    8d542428
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0086dcf7    8d4c241c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086dcfb    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086dcff    d944241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dd03    d9442420
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086dd07    d944241c
                         fmul               dword ptr [esi]                               // 0x0086dd0b    d80e
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dd0d    d9442424
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086dd11    d84e18
                         faddp              st(1), st                                     // 0x0086dd14    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dd16    d9442420
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0086dd1a    d84e0c
                         faddp              st(1), st                                     // 0x0086dd1d    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x0086dd1f    d84624
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086dd22    d95c241c
                         fld                st(1)                                         // 0x0086dd26    d9c1
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0086dd28    d84e04
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dd2b    d9442424
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086dd2f    d84e1c
                         faddp              st(1), st                                     // 0x0086dd32    dec1
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dd34    d9442420
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0086dd38    d84e10
                         faddp              st(1), st                                     // 0x0086dd3b    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                        // 0x0086dd3d    d84628
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086dd40    d95c2420
                         fxch               st(1)                                         // 0x0086dd44    d9c9
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0086dd46    d84e08
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dd49    d9442424
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086dd4d    d84e20
                         faddp              st(1), st                                     // 0x0086dd50    dec1
                         fxch               st(1)                                         // 0x0086dd52    d9c9
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086dd54    d84e14
                         faddp              st(1), st                                     // 0x0086dd57    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                        // 0x0086dd59    d8462c
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086dd5c    d95c2424
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x0086dd60    d9542438
                         fmul               dword ptr [esi]                               // 0x0086dd64    d80e
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dd66    d9442430
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086dd6a    d84e18
                         faddp              st(1), st                                     // 0x0086dd6d    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086dd6f    d944242c
                         {disp8} fmul       dword ptr [esi + 0x0c]                        // 0x0086dd73    d84e0c
                         faddp              st(1), st                                     // 0x0086dd76    dec1
                         {disp8} fadd       dword ptr [esi + 0x24]                        // 0x0086dd78    d84624
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086dd7b    d95c2428
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086dd7f    d9442438
                         {disp8} fmul       dword ptr [esi + 0x04]                        // 0x0086dd83    d84e04
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dd86    d9442430
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086dd8a    d84e1c
                         faddp              st(1), st                                     // 0x0086dd8d    dec1
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086dd8f    d944242c
                         {disp8} fmul       dword ptr [esi + 0x10]                        // 0x0086dd93    d84e10
                         faddp              st(1), st                                     // 0x0086dd96    dec1
                         {disp8} fadd       dword ptr [esi + 0x28]                        // 0x0086dd98    d84628
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086dd9b    d95c242c
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086dd9f    d9442438
                         {disp8} fmul       dword ptr [esi + 0x08]                        // 0x0086dda3    d84e08
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dda6    d9442430
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086ddaa    d84e20
                         faddp              st(1), st                                     // 0x0086ddad    dec1
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086ddaf    d9442410
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086ddb3    d84e14
                         faddp              st(1), st                                     // 0x0086ddb6    dec1
                         {disp8} fadd       dword ptr [esi + 0x2c]                        // 0x0086ddb8    d8462c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086ddbb    d95c2430
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x0086ddbf    e85cbbfaff
                         pop                edi                                           // 0x0086ddc4    5f
                         pop                esi                                           // 0x0086ddc5    5e
                         pop                ebp                                           // 0x0086ddc6    5d
                         pop                ebx                                           // 0x0086ddc7    5b
                         add                esp, 0x24                                     // 0x0086ddc8    83c424
                         ret                0x0004                                        // 0x0086ddcb    c20400
                         nop                                                              // 0x0086ddce    90
                         nop                                                              // 0x0086ddcf    90
                         sub                esp, 0x24                                     // 0x0086ddd0    83ec24
                         push               ebx                                           // 0x0086ddd3    53
                         push               ebp                                           // 0x0086ddd4    55
                         push               esi                                           // 0x0086ddd5    56
                         push               edi                                           // 0x0086ddd6    57
                         mov.s              edi, ecx                                      // 0x0086ddd7    8bf9
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0086ddd9    8b4f08
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                   // 0x0086dddc    8b5f04
                         {disp8} lea        ebp, dword ptr [ecx + -0x01]                  // 0x0086dddf    8d69ff
                         mov.s              eax, ebp                                      // 0x0086dde2    8bc5
                         imul               eax, dword ptr [esp + 0x38]                   // 0x0086dde4    0faf442438
                         mov.s              esi, edx                                      // 0x0086dde9    8bf2
                         xor.s              edx, edx                                      // 0x0086ddeb    33d2
                         div                ebx                                           // 0x0086dded    f7f3
                         mov.s              ebx, eax                                      // 0x0086ddef    8bd8
                         cmp.s              ebx, ecx                                      // 0x0086ddf1    3bd9
                         .byte              0x72, 0x9// {disp8} jb _jmp_addr_0x0086ddfe   // 0x0086ddf3    7209
                         xor.s              edx, edx                                      // 0x0086ddf5    33d2
                         div                ecx                                           // 0x0086ddf7    f7f1
                         imul               eax, ecx                                      // 0x0086ddf9    0fafc1
                         sub.s              ebx, eax                                      // 0x0086ddfc    2bd8
_jmp_addr_0x0086ddfe:    {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0086ddfe    8b4704
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                   // 0x0086de01    8b4c2438
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086de05    89442410
                         xor.s              eax, eax                                      // 0x0086de09    33c0
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086de0b    89442414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0086de0f    df6c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086de13    89442414
                         {disp8} mov        dword ptr [esp + 0x10], ebp                   // 0x0086de17    896c2410
                         {disp8} fidiv      dword ptr [esp + 0x10]                        // 0x0086de1b    da742410
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0086de1f    894c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086de23    89442414
                         {disp8} fild       qword ptr [esp + 0x10]                        // 0x0086de27    df6c2410
                         fdiv               st, st(1)                                     // 0x0086de2b    d8f1
                         call               _jmp_addr_0x007a1400                          // 0x0086de2d    e8ce35f3ff
                         fld                st(0)                                         // 0x0086de32    d9c0
                         mov.s              ebp, eax                                      // 0x0086de34    8be8
                         call               _jmp_addr_0x007a1400                          // 0x0086de36    e8c535f3ff
                         imul               ebp, eax                                      // 0x0086de3b    0fafe8
                         {disp8} mov        eax, dword ptr [esp + 0x38]                   // 0x0086de3e    8b442438
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0086de42    8b4f08
                         sub.s              eax, ebp                                      // 0x0086de45    2bc5
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086de47    89442410
                         {disp8} lea        edx, dword ptr [ebx + 0x01]                   // 0x0086de4b    8d5301
                         mov.s              eax, edx                                      // 0x0086de4e    8bc2
                         cmp.s              eax, ecx                                      // 0x0086de50    3bc1
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x0086de52    c744241400000000
                         fidivr             dword ptr [esp + 0x10]                        // 0x0086de5a    da7c2410
                         {disp8} jbe        _jmp_addr_0x0086de62                          // 0x0086de5e    7602
                         mov.s              eax, ebx                                      // 0x0086de60    8bc3
_jmp_addr_0x0086de62:    {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x0086de62    d90590a38a00
                         lea                ecx, dword ptr [ebx + ebx * 0x2]              // 0x0086de68    8d0c5b
                         fsub               st, st(1)                                     // 0x0086de6b    d8e1
                         {disp8} mov        ebx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086de6d    8b5ccf0c
                         {disp8} lea        ecx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086de71    8d4ccf0c
                         {disp8} mov        dword ptr [esp + 0x1c], ebx                   // 0x0086de75    895c241c
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086de79    8b5904
                         fld                st(0)                                         // 0x0086de7c    d9c0
                         fld                st(0)                                         // 0x0086de7e    d9c0
                         {disp8} mov        dword ptr [esp + 0x20], ebx                   // 0x0086de80    895c2420
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086de84    d84c241c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086de88    8b4908
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0086de8b    894c2424
                         lea                ecx, dword ptr [eax + eax * 0x2]              // 0x0086de8f    8d0c40
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086de92    d95c241c
                         {disp8} lea        ecx, dword ptr [edi + ecx * 0x8 + 0x0c]       // 0x0086de96    8d4ccf0c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086de9a    d9442420
                         lea                edx, dword ptr [edx + edx * 0x2]              // 0x0086de9e    8d1452
                         fmul               st, st(1)                                     // 0x0086dea1    d8c9
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086dea3    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dea7    d9442424
                         fmul               st, st(1)                                     // 0x0086deab    d8c9
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086dead    d95c2424
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086deb1    8b5904
                         {disp8} mov        dword ptr [esp + 0x14], ebx                   // 0x0086deb4    895c2414
                         fstp               st(0)                                         // 0x0086deb8    ddd8
                         fld                dword ptr [ecx]                               // 0x0086deba    d901
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086debc    8b4908
                         fmul               st, st(2)                                     // 0x0086debf    d8ca
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x0086dec1    894c2418
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086dec5    d9442414
                         lea                ecx, dword ptr [edi + edx * 0x8]              // 0x0086dec9    8d0cd7
                         fmul               st, st(3)                                     // 0x0086decc    d8cb
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086dece    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086ded2    d9442418
                         fmul               st, st(3)                                     // 0x0086ded6    d8cb
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086ded8    d95c2418
                         {disp8} fadd       dword ptr [esp + 0x1c]                        // 0x0086dedc    d844241c
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086dee0    d95c241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dee4    d9442420
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086dee8    d8442414
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086deec    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086def0    d9442424
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086def4    d8442418
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086def8    d95c2424
                         mov                edx, dword ptr [ecx]                          // 0x0086defc    8b11
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0086defe    89542428
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086df02    8b5104
                         fld                st(0)                                         // 0x0086df05    d9c0
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0086df07    d84c2428
                         {disp8} mov        dword ptr [esp + 0x2c], edx                   // 0x0086df0b    8954242c
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x0086df0f    8b4908
                         {disp8} mov        dword ptr [esp + 0x30], ecx                   // 0x0086df12    894c2430
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086df16    d95c2428
                         {disp8} lea        edx, dword ptr [eax + eax * 0x2 + 0x03]       // 0x0086df1a    8d544003
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086df1e    d944242c
                         lea                eax, dword ptr [edi + edx * 0x8]              // 0x0086df22    8d04d7
                         fmul               st, st(1)                                     // 0x0086df25    d8c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086df27    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086df2b    d9442430
                         fmul               st, st(1)                                     // 0x0086df2f    d8c9
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086df31    d95c2430
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086df35    8b4804
                         {disp8} mov        edx, dword ptr [eax + 0x08]                   // 0x0086df38    8b5008
                         fstp               st(0)                                         // 0x0086df3b    ddd8
                         {disp8} mov        dword ptr [esp + 0x14], ecx                   // 0x0086df3d    894c2414
                         fld                dword ptr [eax]                               // 0x0086df41    d900
                         {disp8} mov        dword ptr [esp + 0x18], edx                   // 0x0086df43    89542418
                         fmul               st, st(1)                                     // 0x0086df47    d8c9
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x0086df49    d9442414
                         fmul               st, st(2)                                     // 0x0086df4d    d8ca
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086df4f    d95c2414
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086df53    d9442418
                         fmul               st, st(2)                                     // 0x0086df57    d8ca
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086df59    d95c2418
                         {disp8} fld        dword ptr [esp + 0x28]                        // 0x0086df5d    d9442428
                         fadd               st, st(1)                                     // 0x0086df61    d8c1
                         fstp               st(2)                                         // 0x0086df63    ddda
                         fstp               st(0)                                         // 0x0086df65    ddd8
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086df67    d944242c
                         {disp8} fadd       dword ptr [esp + 0x14]                        // 0x0086df6b    d8442414
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086df6f    d95c242c
                         {disp8} mov        eax, dword ptr [esp + 0x2c]                   // 0x0086df73    8b44242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086df77    d9442430
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086df7b    89442410
                         {disp8} fadd       dword ptr [esp + 0x18]                        // 0x0086df7f    d8442418
                         {disp8} lea        edx, dword ptr [esp + 0x28]                   // 0x0086df83    8d542428
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                   // 0x0086df87    8d4c241c
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086df8b    d95c2430
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086df8f    d944241c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086df93    d9442420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086df97    d9442424
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0086df9b    d84e2c
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086df9e    d9442420
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086dfa2    d84e20
                         faddp              st(1), st                                     // 0x0086dfa5    dec1
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086dfa7    d944241c
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086dfab    d84e14
                         faddp              st(1), st                                     // 0x0086dfae    dec1
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x0086dfb0    d84638
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086dfb3    d95c241c
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dfb7    d9442424
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0086dfbb    d84e30
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086dfbe    d9442420
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086dfc2    d84e24
                         faddp              st(1), st                                     // 0x0086dfc5    dec1
                         fld                st(2)                                         // 0x0086dfc7    d9c2
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086dfc9    d84e18
                         faddp              st(1), st                                     // 0x0086dfcc    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086dfce    d8463c
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086dfd1    d95c2420
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086dfd5    d9442424
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x0086dfd9    d84e34
                         fxch               st(1)                                         // 0x0086dfdc    d9c9
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x0086dfde    d84e28
                         faddp              st(1), st                                     // 0x0086dfe1    dec1
                         fxch               st(1)                                         // 0x0086dfe3    d9c9
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086dfe5    d84e1c
                         faddp              st(1), st                                     // 0x0086dfe8    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x0086dfea    d84640
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086dfed    d95c2424
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x0086dff1    d9542438
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086dff5    d9442430
                         {disp8} fmul       dword ptr [esi + 0x2c]                        // 0x0086dff9    d84e2c
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086dffc    d944242c
                         {disp8} fmul       dword ptr [esi + 0x20]                        // 0x0086e000    d84e20
                         faddp              st(1), st                                     // 0x0086e003    dec1
                         fxch               st(1)                                         // 0x0086e005    d9c9
                         {disp8} fmul       dword ptr [esi + 0x14]                        // 0x0086e007    d84e14
                         faddp              st(1), st                                     // 0x0086e00a    dec1
                         {disp8} fadd       dword ptr [esi + 0x38]                        // 0x0086e00c    d84638
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086e00f    d95c2428
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086e013    d9442430
                         {disp8} fmul       dword ptr [esi + 0x30]                        // 0x0086e017    d84e30
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086e01a    d944242c
                         {disp8} fmul       dword ptr [esi + 0x24]                        // 0x0086e01e    d84e24
                         faddp              st(1), st                                     // 0x0086e021    dec1
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086e023    d9442438
                         {disp8} fmul       dword ptr [esi + 0x18]                        // 0x0086e027    d84e18
                         faddp              st(1), st                                     // 0x0086e02a    dec1
                         {disp8} fadd       dword ptr [esi + 0x3c]                        // 0x0086e02c    d8463c
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086e02f    d95c242c
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086e033    d9442430
                         {disp8} fmul       dword ptr [esi + 0x34]                        // 0x0086e037    d84e34
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086e03a    d9442410
                         {disp8} fmul       dword ptr [esi + 0x28]                        // 0x0086e03e    d84e28
                         faddp              st(1), st                                     // 0x0086e041    dec1
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086e043    d9442438
                         {disp8} fmul       dword ptr [esi + 0x1c]                        // 0x0086e047    d84e1c
                         faddp              st(1), st                                     // 0x0086e04a    dec1
                         {disp8} fadd       dword ptr [esi + 0x40]                        // 0x0086e04c    d84640
                         {disp8} fstp       dword ptr [esp + 0x30]                        // 0x0086e04f    d95c2430
                         call               ?UpdateCamera@LH3DTech@@SAXABULHPoint@@0@Z                               // 0x0086e053    e8c8b8faff
                         pop                edi                                           // 0x0086e058    5f
                         pop                esi                                           // 0x0086e059    5e
                         pop                ebp                                           // 0x0086e05a    5d
                         pop                ebx                                           // 0x0086e05b    5b
                         add                esp, 0x24                                     // 0x0086e05c    83c424
                         ret                0x0004                                        // 0x0086e05f    c20400
                         nop                                                              // 0x0086e062    90
                         nop                                                              // 0x0086e063    90
                         nop                                                              // 0x0086e064    90
                         nop                                                              // 0x0086e065    90
                         nop                                                              // 0x0086e066    90
                         nop                                                              // 0x0086e067    90
                         nop                                                              // 0x0086e068    90
                         nop                                                              // 0x0086e069    90
                         nop                                                              // 0x0086e06a    90
                         nop                                                              // 0x0086e06b    90
                         nop                                                              // 0x0086e06c    90
                         nop                                                              // 0x0086e06d    90
                         nop                                                              // 0x0086e06e    90
                         nop                                                              // 0x0086e06f    90
_globl_ct_0x0086e070:    {disp32} jmp       _jmp_addr_0x0086e080                          // 0x0086e070    e90b000000
                         nop                                                              // 0x0086e075    90
                         nop                                                              // 0x0086e076    90
                         nop                                                              // 0x0086e077    90
                         nop                                                              // 0x0086e078    90
                         nop                                                              // 0x0086e079    90
                         nop                                                              // 0x0086e07a    90
                         nop                                                              // 0x0086e07b    90
                         nop                                                              // 0x0086e07c    90
                         nop                                                              // 0x0086e07d    90
                         nop                                                              // 0x0086e07e    90
                         nop                                                              // 0x0086e07f    90
_jmp_addr_0x0086e080:    {disp32} fld       dword ptr [rdata_bytes + 0xfac00]             // 0x0086e080    d905003c9a00
                         {disp32} fmul      dword ptr [_abode_info_float_0x008a99f0]      // 0x0086e086    d80df0998a00
                         {disp32} fstp      dword ptr [data_bytes + 0x5df1cc]             // 0x0086e08c    d91dcc51fa00
                         ret                                                              // 0x0086e092    c3
                         nop                                                              // 0x0086e093    90
                         nop                                                              // 0x0086e094    90
                         nop                                                              // 0x0086e095    90
                         nop                                                              // 0x0086e096    90
                         nop                                                              // 0x0086e097    90
                         nop                                                              // 0x0086e098    90
                         nop                                                              // 0x0086e099    90
                         nop                                                              // 0x0086e09a    90
                         nop                                                              // 0x0086e09b    90
                         nop                                                              // 0x0086e09c    90
                         nop                                                              // 0x0086e09d    90
                         nop                                                              // 0x0086e09e    90
                         nop                                                              // 0x0086e09f    90
_globl_ct_0x0086e0a0:    {disp32} jmp       _jmp_addr_0x0086e0b0                          // 0x0086e0a0    e90b000000
                         nop                                                              // 0x0086e0a5    90
                         nop                                                              // 0x0086e0a6    90
                         nop                                                              // 0x0086e0a7    90
                         nop                                                              // 0x0086e0a8    90
                         nop                                                              // 0x0086e0a9    90
                         nop                                                              // 0x0086e0aa    90
                         nop                                                              // 0x0086e0ab    90
                         nop                                                              // 0x0086e0ac    90
                         nop                                                              // 0x0086e0ad    90
                         nop                                                              // 0x0086e0ae    90
                         nop                                                              // 0x0086e0af    90
_jmp_addr_0x0086e0b0:    {disp32} fld       dword ptr [rdata_bytes + 0xfac04]             // 0x0086e0b0    d905043c9a00
                         {disp32} fmul      dword ptr [_rdata_float0p5]                   // 0x0086e0b6    d80db4a38a00
                         {disp32} fstp      dword ptr [data_bytes + 0x5df1c8]             // 0x0086e0bc    d91dc851fa00
                         ret                                                              // 0x0086e0c2    c3
                         nop                                                              // 0x0086e0c3    90
                         nop                                                              // 0x0086e0c4    90
                         nop                                                              // 0x0086e0c5    90
                         nop                                                              // 0x0086e0c6    90
                         nop                                                              // 0x0086e0c7    90
                         nop                                                              // 0x0086e0c8    90
                         nop                                                              // 0x0086e0c9    90
                         nop                                                              // 0x0086e0ca    90
                         nop                                                              // 0x0086e0cb    90
                         nop                                                              // 0x0086e0cc    90
                         nop                                                              // 0x0086e0cd    90
                         nop                                                              // 0x0086e0ce    90
                         nop                                                              // 0x0086e0cf    90
??0RPlan@@QAE@XZ:
                         mov.s              eax, ecx                                      // 0x0086e0d0    8bc1
                         xor.s              ecx, ecx                                      // 0x0086e0d2    33c9
                         {disp8} mov        dword ptr [eax + 0x60], ecx                   // 0x0086e0d4    894860
                         {disp8} mov        dword ptr [eax + 0x64], ecx                   // 0x0086e0d7    894864
                         {disp8} mov        dword ptr [eax + 0x50], ecx                   // 0x0086e0da    894850
                         {disp8} mov        dword ptr [eax + 0x70], ecx                   // 0x0086e0dd    894870
                         {disp8} mov        dword ptr [eax + 0x6c], ecx                   // 0x0086e0e0    89486c
                         {disp8} mov        dword ptr [eax + 0x58], ecx                   // 0x0086e0e3    894858
                         {disp8} mov        dword ptr [eax + 0x54], ecx                   // 0x0086e0e6    894854
                         ret                                                              // 0x0086e0e9    c3
                         nop                                                              // 0x0086e0ea    90
                         nop                                                              // 0x0086e0eb    90
                         nop                                                              // 0x0086e0ec    90
                         nop                                                              // 0x0086e0ed    90
                         nop                                                              // 0x0086e0ee    90
                         nop                                                              // 0x0086e0ef    90
??_DRPlan@@QAEXXZ:       {disp32} jmp       ?FreeRoutes@RPlan@@QAEXXZ                     // 0x0086e0f0    e90b000000
                         nop                                                              // 0x0086e0f5    90
                         nop                                                              // 0x0086e0f6    90
                         nop                                                              // 0x0086e0f7    90
                         nop                                                              // 0x0086e0f8    90
                         nop                                                              // 0x0086e0f9    90
                         nop                                                              // 0x0086e0fa    90
                         nop                                                              // 0x0086e0fb    90
                         nop                                                              // 0x0086e0fc    90
                         nop                                                              // 0x0086e0fd    90
                         nop                                                              // 0x0086e0fe    90
                         nop                                                              // 0x0086e0ff    90
?FreeRoutes@RPlan@@QAEXXZ:
                         push               ebx                                           // 0x0086e100    53
                         push               ebp                                           // 0x0086e101    55
                         push               esi                                           // 0x0086e102    56
                         push               edi                                           // 0x0086e103    57
                         mov.s              edi, ecx                                      // 0x0086e104    8bf9
                         {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x0086e106    8b4760
                         xor.s              ebp, ebp                                      // 0x0086e109    33ed
                         cmp.s              eax, ebp                                      // 0x0086e10b    3bc5
                         {disp8} je         _jmp_addr_0x0086e132                          // 0x0086e10d    7423
_jmp_addr_0x0086e10f:    {disp8} mov        eax, dword ptr [edi + 0x60]                   // 0x0086e10f    8b4760
                         {disp8} mov        ebx, dword ptr [eax + 0x08]                   // 0x0086e112    8b5808
                         mov.s              esi, eax                                      // 0x0086e115    8bf0
                         cmp.s              esi, ebp                                      // 0x0086e117    3bf5
                         {disp8} je         _jmp_addr_0x0086e12b                          // 0x0086e119    7410
                         mov.s              ecx, esi                                      // 0x0086e11b    8bce
                         call               ??_DRoute@@QAEXXZ                             // 0x0086e11d    e80eb3ffff
                         push               esi                                           // 0x0086e122    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e123    e8700df4ff
                         add                esp, 0x04                                     // 0x0086e128    83c404
_jmp_addr_0x0086e12b:    cmp.s              ebx, ebp                                      // 0x0086e12b    3bdd
                         {disp8} mov        dword ptr [edi + 0x60], ebx                   // 0x0086e12d    895f60
                         {disp8} jne        _jmp_addr_0x0086e10f                          // 0x0086e130    75dd
_jmp_addr_0x0086e132:    {disp8} mov        esi, dword ptr [edi + 0x70]                   // 0x0086e132    8b7770
                         cmp.s              esi, ebp                                      // 0x0086e135    3bf5
                         {disp8} je         _jmp_addr_0x0086e14c                          // 0x0086e137    7413
                         mov.s              ecx, esi                                      // 0x0086e139    8bce
                         call               ??_DRoute@@QAEXXZ                             // 0x0086e13b    e8f0b2ffff
                         push               esi                                           // 0x0086e140    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e141    e8520df4ff
                         add                esp, 0x04                                     // 0x0086e146    83c404
                         {disp8} mov        dword ptr [edi + 0x70], ebp                   // 0x0086e149    896f70
_jmp_addr_0x0086e14c:    {disp8} mov        esi, dword ptr [edi + 0x6c]                   // 0x0086e14c    8b776c
                         cmp.s              esi, ebp                                      // 0x0086e14f    3bf5
                         {disp8} je         _jmp_addr_0x0086e166                          // 0x0086e151    7413
                         mov.s              ecx, esi                                      // 0x0086e153    8bce
                         call               ??_DRoute@@QAEXXZ                             // 0x0086e155    e8d6b2ffff
                         push               esi                                           // 0x0086e15a    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e15b    e8380df4ff
                         add                esp, 0x04                                     // 0x0086e160    83c404
                         {disp8} mov        dword ptr [edi + 0x6c], ebp                   // 0x0086e163    896f6c
_jmp_addr_0x0086e166:    {disp8} mov        esi, dword ptr [edi + 0x58]                   // 0x0086e166    8b7758
                         cmp.s              esi, ebp                                      // 0x0086e169    3bf5
                         {disp8} mov        dword ptr [edi + 0x64], ebp                   // 0x0086e16b    896f64
                         {disp8} mov        dword ptr [edi + 0x50], ebp                   // 0x0086e16e    896f50
                         {disp8} je         _jmp_addr_0x0086e1a4                          // 0x0086e171    7431
                         cmp                dword ptr [esi + 0x04], ebp                   // 0x0086e173    396e04
                         {disp8} je         _jmp_addr_0x0086e198                          // 0x0086e176    7420
_jmp_addr_0x0086e178:    {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086e178    8b4e04
                         {disp8} mov        ebx, dword ptr [ecx + 0x04]                   // 0x0086e17b    8b5904
                         mov.s              edx, ecx                                      // 0x0086e17e    8bd1
                         {disp8} mov        dword ptr [edx + 0x04], ebp                   // 0x0086e180    896a04
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086e183    8b4e04
                         cmp.s              ecx, ebp                                      // 0x0086e186    3bcd
                         {disp8} je         _jmp_addr_0x0086e191                          // 0x0086e188    7407
                         push               0x1                                           // 0x0086e18a    6a01
                         call               @__dt__10VisitBlockFv@9                       // 0x0086e18c    e81f000000
_jmp_addr_0x0086e191:    cmp.s              ebx, ebp                                      // 0x0086e191    3bdd
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x0086e193    895e04
                         {disp8} jne        _jmp_addr_0x0086e178                          // 0x0086e196    75e0
_jmp_addr_0x0086e198:    push               esi                                           // 0x0086e198    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e199    e8fa0cf4ff
                         add                esp, 0x04                                     // 0x0086e19e    83c404
                         {disp8} mov        dword ptr [edi + 0x58], ebp                   // 0x0086e1a1    896f58
_jmp_addr_0x0086e1a4:    {disp8} mov        dword ptr [edi + 0x54], ebp                   // 0x0086e1a4    896f54
                         pop                edi                                           // 0x0086e1a7    5f
                         pop                esi                                           // 0x0086e1a8    5e
                         pop                ebp                                           // 0x0086e1a9    5d
                         pop                ebx                                           // 0x0086e1aa    5b
                         ret                                                              // 0x0086e1ab    c3
                         nop                                                              // 0x0086e1ac    90
                         nop                                                              // 0x0086e1ad    90
                         nop                                                              // 0x0086e1ae    90
                         nop                                                              // 0x0086e1af    90
@__dt__10VisitBlockFv@9: push               esi                                           // 0x0086e1b0    56
                         mov.s              esi, ecx                                      // 0x0086e1b1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0086e1b3    8b4604
                         test               eax, eax                                      // 0x0086e1b6    85c0
                         {disp8} je         _jmp_addr_0x0086e1e0                          // 0x0086e1b8    7426
                         push               edi                                           // 0x0086e1ba    57
_jmp_addr_0x0086e1bb:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0086e1bb    8b4604
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0086e1be    8b7804
                         mov.s              ecx, eax                                      // 0x0086e1c1    8bc8
                         {disp8} mov        dword ptr [ecx + 0x04], 0x00000000            // 0x0086e1c3    c7410400000000
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086e1ca    8b4e04
                         test               ecx, ecx                                      // 0x0086e1cd    85c9
                         {disp8} je         _jmp_addr_0x0086e1d8                          // 0x0086e1cf    7407
                         push               0x1                                           // 0x0086e1d1    6a01
                         call               @__dt__10VisitBlockFv@9                       // 0x0086e1d3    e8d8ffffff
_jmp_addr_0x0086e1d8:    test               edi, edi                                      // 0x0086e1d8    85ff
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x0086e1da    897e04
                         {disp8} jne        _jmp_addr_0x0086e1bb                          // 0x0086e1dd    75dc
                         pop                edi                                           // 0x0086e1df    5f
_jmp_addr_0x0086e1e0:    test               byte ptr [esp + 0x08], 0x01                   // 0x0086e1e0    f644240801
                         {disp8} je         _jmp_addr_0x0086e1f0                          // 0x0086e1e5    7409
                         push               esi                                           // 0x0086e1e7    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e1e8    e8ab0cf4ff
                         add                esp, 0x04                                     // 0x0086e1ed    83c404
_jmp_addr_0x0086e1f0:    mov.s              eax, esi                                      // 0x0086e1f0    8bc6
                         pop                esi                                           // 0x0086e1f2    5e
                         ret                0x0004                                        // 0x0086e1f3    c20400
                         nop                                                              // 0x0086e1f6    90
                         nop                                                              // 0x0086e1f7    90
                         nop                                                              // 0x0086e1f8    90
                         nop                                                              // 0x0086e1f9    90
                         nop                                                              // 0x0086e1fa    90
                         nop                                                              // 0x0086e1fb    90
                         nop                                                              // 0x0086e1fc    90
                         nop                                                              // 0x0086e1fd    90
                         nop                                                              // 0x0086e1fe    90
                         nop                                                              // 0x0086e1ff    90
@SetStart__5RPlanFRC7Point2DfP8RPHolderiii@32:    push               esi                                           // 0x0086e200    56
                         mov.s              esi, ecx                                      // 0x0086e201    8bf1
                         call               ?FreeRoutes@RPlan@@QAEXXZ                     // 0x0086e203    e8f8feffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086e208    8b442410
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0086e20c    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x0086e210    8b542418
                         mov                dword ptr [esi], eax                          // 0x0086e214    8906
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0086e216    8b44241c
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x0086e21a    894e08
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0086e21d    8b4c240c
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0086e221    894610
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x0086e224    8b442408
                         {disp8} mov        dword ptr [esi + 0x04], ecx                   // 0x0086e228    894e04
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0086e22b    89560c
                         mov                edx, dword ptr [eax]                          // 0x0086e22e    8b10
                         {disp8} mov        dword ptr [esi + 0x34], edx                   // 0x0086e230    895634
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086e233    8b4004
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x0086e236    894638
                         mov.s              ecx, edx                                      // 0x0086e239    8bca
                         {disp8} mov        dword ptr [esi + 0x2c], ecx                   // 0x0086e23b    894e2c
                         {disp8} mov        edx, dword ptr [esi + 0x38]                   // 0x0086e23e    8b5638
                         {disp8} mov        dword ptr [esi + 0x30], edx                   // 0x0086e241    895630
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000001            // 0x0086e244    c7465001000000
                         pop                esi                                           // 0x0086e24b    5e
                         ret                0x0018                                        // 0x0086e24c    c21800
                         nop                                                              // 0x0086e24f    90
@SetDest__5RPlanFRC7Point2Dfffiifi@40:    {disp32} mov       eax, fs:[0x0]                                 // 0x0086e250    64a100000000
                         push               -0x1                                          // 0x0086e256    6aff
                         push               0x008a82f3                                    // 0x0086e258    68f3828a00
                         push               eax                                           // 0x0086e25d    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0086e25e    8b44241c
                         {disp32} mov       fs:[0x0], esp                                 // 0x0086e262    64892500000000
                         sub                esp, 0x10                                     // 0x0086e269    83ec10
                         push               ebx                                           // 0x0086e26c    53
                         push               ebp                                           // 0x0086e26d    55
                         push               esi                                           // 0x0086e26e    56
                         mov.s              esi, ecx                                      // 0x0086e26f    8bf1
                         push               edi                                           // 0x0086e271    57
                         xor.s              edi, edi                                      // 0x0086e272    33ff
                         {disp8} mov        dword ptr [esi + 0x48], eax                   // 0x0086e274    894648
                         cmp                dword ptr [esp + 0x4c], edi                   // 0x0086e277    397c244c
                         {disp8} mov        dword ptr [esi + 0x5c], edi                   // 0x0086e27b    897e5c
                         {disp8} je         _jmp_addr_0x0086e296                          // 0x0086e27e    7416
                         mov                edx, dword ptr [esi]                          // 0x0086e280    8b16
                         {disp8} lea        ecx, dword ptr [esi + 0x34]                   // 0x0086e282    8d4e34
                         {disp32} mov       dword ptr [edx + 0x00050004], ecx             // 0x0086e285    898a04000500
                         mov                ecx, dword ptr [esi]                          // 0x0086e28b    8b0e
                         {disp8} lea        eax, dword ptr [esi + 0x2c]                   // 0x0086e28d    8d462c
                         {disp32} mov       dword ptr [ecx + 0x00050008], eax             // 0x0086e290    898108000500
_jmp_addr_0x0086e296:    mov.s              ecx, esi                                      // 0x0086e296    8bce
                         call               ?FreeRoutes@RPlan@@QAEXXZ                     // 0x0086e298    e863feffff
                         push               0x10                                          // 0x0086e29d    6a10
                         call               ??2@YAPAXI@Z                                  // 0x0086e29f    e84a82f5ff
                         add                esp, 0x04                                     // 0x0086e2a4    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e2a7    8944243c
                         cmp.s              eax, edi                                      // 0x0086e2ab    3bc7
                         {disp8} mov        dword ptr [esp + 0x28], edi                   // 0x0086e2ad    897c2428
                         {disp8} je         _jmp_addr_0x0086e2bc                          // 0x0086e2b1    7409
                         mov.s              ecx, eax                                      // 0x0086e2b3    8bc8
                         call               ??0Route@@QAE@XZ                              // 0x0086e2b5    e8c6b0ffff
                         {disp8} jmp        _jmp_addr_0x0086e2be                          // 0x0086e2ba    eb02
_jmp_addr_0x0086e2bc:    xor.s              eax, eax                                      // 0x0086e2bc    33c0
_jmp_addr_0x0086e2be:    {disp8} mov        ecx, dword ptr [esp + 0x34]                   // 0x0086e2be    8b4c2434
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0086e2c2    894660
                         {disp8} mov        dword ptr [esi + 0x68], eax                   // 0x0086e2c5    894668
                         {disp8} mov        eax, dword ptr [esp + 0x30]                   // 0x0086e2c8    8b442430
                         mov                edx, dword ptr [eax]                          // 0x0086e2cc    8b10
                         {disp8} mov        dword ptr [esi + 0x34], edx                   // 0x0086e2ce    895634
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086e2d1    8b4004
                         {disp8} mov        edx, dword ptr [esp + 0x38]                   // 0x0086e2d4    8b542438
                         {disp8} lea        ebx, dword ptr [esi + 0x34]                   // 0x0086e2d8    8d5e34
                         {disp8} mov        dword ptr [ebx + 0x04], eax                   // 0x0086e2db    894304
                         {disp8} mov        eax, dword ptr [esp + 0x40]                   // 0x0086e2de    8b442440
                         cmp                eax, -0x01                                    // 0x0086e2e2    83f8ff
                         {disp8} mov        dword ptr [esi + 0x3c], ecx                   // 0x0086e2e5    894e3c
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0086e2e8    8b4c2444
                         {disp8} mov        dword ptr [esi + 0x40], edx                   // 0x0086e2ec    895640
                         {disp8} mov        edx, dword ptr [esp + 0x48]                   // 0x0086e2ef    8b542448
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x0086e2f3    c7442428ffffffff
                         {disp8} mov        dword ptr [esi + 0x14], eax                   // 0x0086e2fb    894614
                         {disp8} mov        dword ptr [esi + 0x18], ecx                   // 0x0086e2fe    894e18
                         {disp8} mov        dword ptr [esi + 0x44], edx                   // 0x0086e301    895644
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000002            // 0x0086e304    c7465002000000
                         {disp8} lea        edi, dword ptr [esi + 0x2c]                   // 0x0086e30b    8d7e2c
                         {disp8} jne        _jmp_addr_0x0086e363                          // 0x0086e30e    7553
                         push               ebx                                           // 0x0086e310    53
                         push               edi                                           // 0x0086e311    57
                         mov.s              ecx, esi                                      // 0x0086e312    8bce
                         call               _jmp_addr_0x0086f460                          // 0x0086e314    e847110000
                         mov                ebp, dword ptr [esi]                          // 0x0086e319    8b2e
                         {disp32} mov       eax, dword ptr [ebp + 0x00050000]             // 0x0086e31b    8b8500000500
                         test               eax, eax                                      // 0x0086e321    85c0
                         {disp8} mov        dword ptr [esp + 0x3c], 0x00000000            // 0x0086e323    c744243c00000000
                         {disp8} jle        _jmp_addr_0x0086e375                          // 0x0086e32b    7e48
_jmp_addr_0x0086e32d:    {disp8} mov        eax, dword ptr [esi + 0x40]                   // 0x0086e32d    8b4640
                         push               eax                                           // 0x0086e330    50
                         push               ebx                                           // 0x0086e331    53
                         mov.s              ecx, ebp                                      // 0x0086e332    8bcd
                         call               @PointIsTotallyInside__7RPAvoidFRC7Point2Df@16// 0x0086e334    e867adffff
                         test               al, al                                        // 0x0086e339    84c0
                         {disp8} jne        _jmp_addr_0x0086e357                          // 0x0086e33b    751a
                         {disp8} mov        eax, dword ptr [esp + 0x3c]                   // 0x0086e33d    8b44243c
                         mov                ecx, dword ptr [esi]                          // 0x0086e341    8b0e
                         {disp32} mov       edx, dword ptr [ecx + 0x00050000]             // 0x0086e343    8b9100000500
                         add                ebp, 0x14                                     // 0x0086e349    83c514
                         inc                eax                                           // 0x0086e34c    40
                         cmp.s              eax, edx                                      // 0x0086e34d    3bc2
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e34f    8944243c
                         {disp8} jl         _jmp_addr_0x0086e32d                          // 0x0086e353    7cd8
                         {disp8} jmp        _jmp_addr_0x0086e375                          // 0x0086e355    eb1e
_jmp_addr_0x0086e357:    {disp8} mov        dword ptr [esi + 0x50], 0x00000003            // 0x0086e357    c7465003000000
                         {disp32} jmp       _jmp_addr_0x0086e7a2                          // 0x0086e35e    e93f040000
_jmp_addr_0x0086e363:    lea                edx, dword ptr [eax + eax * 0x4]              // 0x0086e363    8d1480
                         mov                eax, dword ptr [esi]                          // 0x0086e366    8b06
                         {disp8} lea        ecx, dword ptr [eax + edx * 0x4 + 0x08]       // 0x0086e368    8d4c9008
                         push               ecx                                           // 0x0086e36c    51
                         push               edi                                           // 0x0086e36d    57
                         mov.s              ecx, esi                                      // 0x0086e36e    8bce
                         call               _jmp_addr_0x0086f460                          // 0x0086e370    e8eb100000
_jmp_addr_0x0086e375:    {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0086e375    8b4614
                         cmp                eax, -0x01                                    // 0x0086e378    83f8ff
                         mov                ebp, 0x00000001                               // 0x0086e37b    bd01000000
                         {disp32} jne       _jmp_addr_0x0086e40a                          // 0x0086e380    0f8584000000
                         mov                edx, dword ptr [ebx]                          // 0x0086e386    8b13
                         {disp8} mov        eax, dword ptr [ebx + 0x04]                   // 0x0086e388    8b4304
                         {disp8} mov        dword ptr [esp + 0x10], edx                   // 0x0086e38b    89542410
                         {disp8} mov        dword ptr [esp + 0x14], eax                   // 0x0086e38f    89442414
_jmp_addr_0x0086e393:    {disp8} mov        eax, dword ptr [esi + 0x3c]                   // 0x0086e393    8b463c
                         push               eax                                           // 0x0086e396    50
                         {disp8} lea        ecx, dword ptr [esp + 0x50]                   // 0x0086e397    8d4c2450
                         push               ecx                                           // 0x0086e39b    51
                         mov                ecx, dword ptr [esi]                          // 0x0086e39c    8b0e
                         {disp8} lea        edx, dword ptr [esp + 0x20]                   // 0x0086e39e    8d542420
                         push               edx                                           // 0x0086e3a2    52
                         push               -0x1                                          // 0x0086e3a3    6aff
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0086e3a5    8d442420
                         push               eax                                           // 0x0086e3a9    50
                         push               edi                                           // 0x0086e3aa    57
                         call               @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32                          // 0x0086e3ab    e8b0d7fcff
                         mov.s              ebx, eax                                      // 0x0086e3b0    8bd8
                         cmp                ebx, -0x01                                    // 0x0086e3b2    83fbff
                         {disp32} jne       _jmp_addr_0x0086e4ba                          // 0x0086e3b5    0f85ff000000
                         {disp8} mov        eax, dword ptr [esi + 0x14]                   // 0x0086e3bb    8b4614
                         cmp.s              eax, ebx                                      // 0x0086e3be    3bc3
                         {disp8} je         _jmp_addr_0x0086e438                          // 0x0086e3c0    7476
                         mov                edx, dword ptr [esi]                          // 0x0086e3c2    8b16
                         lea                ecx, dword ptr [eax + eax * 0x4]              // 0x0086e3c4    8d0c80
                         {disp8} fld        dword ptr [edx + ecx * 0x4 + 0x0c]            // 0x0086e3c7    d9448a0c
                         lea                eax, dword ptr [edx + ecx * 0x4]              // 0x0086e3cb    8d048a
                         {disp8} fsub       dword ptr [esi + 0x28]                        // 0x0086e3ce    d86628
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086e3d1    d94008
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x0086e3d4    d86624
                         {disp8} fld        dword ptr [edi + 0x04]                        // 0x0086e3d7    d94704
                         {disp8} fsub       dword ptr [esi + 0x28]                        // 0x0086e3da    d86628
                         fld                dword ptr [edi]                               // 0x0086e3dd    d907
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x0086e3df    d86624
                         fmul               st, st(2)                                     // 0x0086e3e2    d8ca
                         fxch               st(1)                                         // 0x0086e3e4    d9c9
                         fmul               st, st(3)                                     // 0x0086e3e6    d8cb
                         faddp              st(1), st                                     // 0x0086e3e8    dec1
                         {disp8} fdiv       dword ptr [eax + 0x10]                        // 0x0086e3ea    d87010
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                 // 0x0086e3ed    d81db0a38a00
                         fnstsw             ax                                            // 0x0086e3f3    dfe0
                         fstp               st(0)                                         // 0x0086e3f5    ddd8
                         test               ah, 0x01                                      // 0x0086e3f7    f6c401
                         fstp               st(0)                                         // 0x0086e3fa    ddd8
                         {disp8} je         _jmp_addr_0x0086e438                          // 0x0086e3fc    743a
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000004            // 0x0086e3fe    c7465004000000
                         {disp32} jmp       _jmp_addr_0x0086e7a2                          // 0x0086e405    e998030000
_jmp_addr_0x0086e40a:    {disp8} mov        edx, dword ptr [esi + 0x18]                   // 0x0086e40a    8b5618
                         xor.s              ecx, ecx                                      // 0x0086e40d    33c9
                         cmp.s              edx, ebp                                      // 0x0086e40f    3bd5
                         sete               cl                                            // 0x0086e411    0f94c1
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0086e414    8d542410
                         inc                ecx                                           // 0x0086e418    41
                         push               ecx                                           // 0x0086e419    51
                         mov                ecx, dword ptr [esi]                          // 0x0086e41a    8b0e
                         push               edx                                           // 0x0086e41c    52
                         push               edi                                           // 0x0086e41d    57
                         push               eax                                           // 0x0086e41e    50
                         call               @GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di@24                          // 0x0086e41f    e83cd4fcff
                         test               eax, eax                                      // 0x0086e424    85c0
                         {disp32} jne       _jmp_addr_0x0086e393                          // 0x0086e426    0f8567ffffff
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000004            // 0x0086e42c    c7465004000000
                         {disp32} jmp       _jmp_addr_0x0086e7a2                          // 0x0086e433    e96a030000
_jmp_addr_0x0086e438:    push               0x2c                                          // 0x0086e438    6a2c
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000005            // 0x0086e43a    c7465005000000
                         call               ??2@YAPAXI@Z                                  // 0x0086e441    e8a880f5ff
                         add                esp, 0x04                                     // 0x0086e446    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e449    8944243c
                         test               eax, eax                                      // 0x0086e44d    85c0
                         {disp8} mov        dword ptr [esp + 0x28], ebp                   // 0x0086e44f    896c2428
                         {disp8} je         _jmp_addr_0x0086e46c                          // 0x0086e453    7417
                         push               0x0                                           // 0x0086e455    6a00
                         push               -0x1                                          // 0x0086e457    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0086e459    8d4c2418
                         push               ecx                                           // 0x0086e45d    51
                         push               edi                                           // 0x0086e45e    57
                         push               0x0                                           // 0x0086e45f    6a00
                         push               0x0                                           // 0x0086e461    6a00
                         mov.s              ecx, eax                                      // 0x0086e463    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e465    e8e6acffff
                         {disp8} jmp        _jmp_addr_0x0086e46e                          // 0x0086e46a    eb02
_jmp_addr_0x0086e46c:    xor.s              eax, eax                                      // 0x0086e46c    33c0
_jmp_addr_0x0086e46e:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e46e    8b5660
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086e471    894204
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e474    8b4e60
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0086e477    8d542410
                         mov                dword ptr [ecx], eax                          // 0x0086e47b    8901
                         push               edx                                           // 0x0086e47d    52
                         mov.s              ecx, edi                                      // 0x0086e47e    8bcf
                         {disp8} mov        dword ptr [esp + 0x2c], 0xffffffff            // 0x0086e480    c744242cffffffff
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e488    e833190000
                         {disp8} fadd       dword ptr [esi + 0x48]                        // 0x0086e48d    d84648
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086e490    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e493    8b4804
                         {disp8} fstp       dword ptr [ecx + 0x20]                        // 0x0086e496    d95920
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086e499    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e49c    8b4804
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0086e49f    8d542410
                         push               edx                                           // 0x0086e4a3    52
                         add                ecx, 0x8                                      // 0x0086e4a4    83c108
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e4a7    e814190000
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e4ac    8b4e60
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086e4af    8b5104
                         {disp8} fadd       dword ptr [edx + 0x20]                        // 0x0086e4b2    d84220
                         {disp32} jmp       _jmp_addr_0x0086e79f                          // 0x0086e4b5    e9e5020000
_jmp_addr_0x0086e4ba:    {disp32} mov       ecx, dword ptr [data_bytes + 0x5df1d0]        // 0x0086e4ba    8b0dd051fa00
                         test               ecx, ecx                                      // 0x0086e4c0    85c9
                         {disp8} je         _jmp_addr_0x0086e4dd                          // 0x0086e4c2    7419
                         mov                edx, dword ptr [esi]                          // 0x0086e4c4    8b16
                         lea                eax, dword ptr [ebx + ebx * 0x4]              // 0x0086e4c6    8d049b
                         mov                eax, dword ptr [edx + eax * 0x4]              // 0x0086e4c9    8b0482
                         cmp                eax, -0x01                                    // 0x0086e4cc    83f8ff
                         {disp8} je         _jmp_addr_0x0086e4dd                          // 0x0086e4cf    740c
                         push               eax                                           // 0x0086e4d1    50
                         {disp32} mov       eax, dword ptr [data_bytes + 0x5df1c4]        // 0x0086e4d2    a1c451fa00
                         push               eax                                           // 0x0086e4d7    50
                         call               ecx                                           // 0x0086e4d8    ffd1
                         add                esp, 0x08                                     // 0x0086e4da    83c408
_jmp_addr_0x0086e4dd:    cmp                dword ptr [esi + 0x08], ebx                   // 0x0086e4dd    395e08
                         {disp32} je        _jmp_addr_0x0086e62c                          // 0x0086e4e0    0f8446010000
                         cmp                dword ptr [esi + 0x0c], ebx                   // 0x0086e4e6    395e0c
                         {disp32} je        _jmp_addr_0x0086e62c                          // 0x0086e4e9    0f843d010000
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0086e4ef    8d4c2418
                         push               ecx                                           // 0x0086e4f3    51
                         mov.s              ecx, edi                                      // 0x0086e4f4    8bcf
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e4f6    e8c5180000
                         {disp8} fstp       dword ptr [esp + 0x3c]                        // 0x0086e4fb    d95c243c
                         push               0x2c                                          // 0x0086e4ff    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086e501    e8e87ff5ff
                         add                esp, 0x04                                     // 0x0086e506    83c404
                         {disp8} mov        dword ptr [esp + 0x30], eax                   // 0x0086e509    89442430
                         test               eax, eax                                      // 0x0086e50d    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000006            // 0x0086e50f    c744242806000000
                         {disp8} je         _jmp_addr_0x0086e53a                          // 0x0086e517    7421
                         {disp8} mov        ecx, dword ptr [esp + 0x4c]                   // 0x0086e519    8b4c244c
                         xor.s              edx, edx                                      // 0x0086e51d    33d2
                         cmp.s              ecx, ebp                                      // 0x0086e51f    3bcd
                         sete               dl                                            // 0x0086e521    0f94c2
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0086e524    8d4c2418
                         inc                edx                                           // 0x0086e528    42
                         push               edx                                           // 0x0086e529    52
                         push               ebx                                           // 0x0086e52a    53
                         push               ecx                                           // 0x0086e52b    51
                         push               edi                                           // 0x0086e52c    57
                         push               0x0                                           // 0x0086e52d    6a00
                         push               0x0                                           // 0x0086e52f    6a00
                         mov.s              ecx, eax                                      // 0x0086e531    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e533    e818acffff
                         {disp8} jmp        _jmp_addr_0x0086e53c                          // 0x0086e538    eb02
_jmp_addr_0x0086e53a:    xor.s              eax, eax                                      // 0x0086e53a    33c0
_jmp_addr_0x0086e53c:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e53c    8b5660
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0086e53f    d944243c
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086e543    894204
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e546    8b4e60
                         mov                dword ptr [ecx], eax                          // 0x0086e549    8901
                         {disp8} fadd       dword ptr [esi + 0x48]                        // 0x0086e54b    d84648
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e54e    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e551    8b4204
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086e554    d95820
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e557    8b5660
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0086e55a    8d4c2410
                         push               ecx                                           // 0x0086e55e    51
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0086e55f    8b4a04
                         or                 ebp, 0xffffffff                               // 0x0086e562    83cdff
                         add                ecx, 0x8                                      // 0x0086e565    83c108
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0086e568    896c242c
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e56c    e84f180000
                         {disp8} fst        dword ptr [esp + 0x30]                        // 0x0086e571    d9542430
                         {disp8} fcomp      dword ptr [esi + 0x40]                        // 0x0086e575    d85e40
                         fnstsw             ax                                            // 0x0086e578    dfe0
                         test               ah, 0x01                                      // 0x0086e57a    f6c401
                         {disp8} je         _jmp_addr_0x0086e598                          // 0x0086e57d    7419
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e57f    8b4e60
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086e582    d9442430
                         {disp8} mov        dword ptr [esi + 0x50], 0x00000005            // 0x0086e586    c7465005000000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086e58d    8b5104
                         {disp8} fadd       dword ptr [edx + 0x20]                        // 0x0086e590    d84220
                         {disp32} jmp       _jmp_addr_0x0086e79f                          // 0x0086e593    e907020000
_jmp_addr_0x0086e598:    push               0x10                                          // 0x0086e598    6a10
                         call               ??2@YAPAXI@Z                                  // 0x0086e59a    e84f7ff5ff
                         add                esp, 0x04                                     // 0x0086e59f    83c404
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0086e5a2    89442434
                         test               eax, eax                                      // 0x0086e5a6    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000007            // 0x0086e5a8    c744242807000000
                         {disp8} je         _jmp_addr_0x0086e5bb                          // 0x0086e5b0    7409
                         mov.s              ecx, eax                                      // 0x0086e5b2    8bc8
                         call               ??0Route@@QAE@XZ                              // 0x0086e5b4    e8c7adffff
                         {disp8} jmp        _jmp_addr_0x0086e5bd                          // 0x0086e5b9    eb02
_jmp_addr_0x0086e5bb:    xor.s              eax, eax                                      // 0x0086e5bb    33c0
_jmp_addr_0x0086e5bd:    {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e5bd    8b4e60
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0086e5c0    894808
                         push               0x2c                                          // 0x0086e5c3    6a2c
                         {disp8} mov        dword ptr [esp + 0x2c], ebp                   // 0x0086e5c5    896c242c
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0086e5c9    894660
                         call               ??2@YAPAXI@Z                                  // 0x0086e5cc    e81d7ff5ff
                         add                esp, 0x04                                     // 0x0086e5d1    83c404
                         {disp8} mov        dword ptr [esp + 0x34], eax                   // 0x0086e5d4    89442434
                         test               eax, eax                                      // 0x0086e5d8    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000008            // 0x0086e5da    c744242808000000
                         {disp8} je         _jmp_addr_0x0086e5fd                          // 0x0086e5e2    7419
                         {disp8} mov        edx, dword ptr [esp + 0x4c]                   // 0x0086e5e4    8b54244c
                         push               edx                                           // 0x0086e5e8    52
                         push               ebx                                           // 0x0086e5e9    53
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0086e5ea    8d4c2420
                         push               ecx                                           // 0x0086e5ee    51
                         push               edi                                           // 0x0086e5ef    57
                         push               0x0                                           // 0x0086e5f0    6a00
                         push               0x0                                           // 0x0086e5f2    6a00
                         mov.s              ecx, eax                                      // 0x0086e5f4    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e5f6    e855abffff
                         {disp8} jmp        _jmp_addr_0x0086e5ff                          // 0x0086e5fb    eb02
_jmp_addr_0x0086e5fd:    xor.s              eax, eax                                      // 0x0086e5fd    33c0
_jmp_addr_0x0086e5ff:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e5ff    8b5660
                         {disp8} fld        dword ptr [esp + 0x3c]                        // 0x0086e602    d944243c
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086e606    894204
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e609    8b4e60
                         mov                dword ptr [ecx], eax                          // 0x0086e60c    8901
                         {disp8} fadd       dword ptr [esi + 0x48]                        // 0x0086e60e    d84648
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e611    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e614    8b4204
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086e617    d95820
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e61a    8b4e60
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                   // 0x0086e61d    8b5104
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086e620    d9442430
                         {disp8} fadd       dword ptr [edx + 0x20]                        // 0x0086e624    d84220
                         {disp32} jmp       _jmp_addr_0x0086e79f                          // 0x0086e627    e973010000
_jmp_addr_0x0086e62c:    cmp                dword ptr [esi + 0x0c], -0x01                 // 0x0086e62c    837e0cff
                         push               0x2c                                          // 0x0086e630    6a2c
                         {disp8} jne        _jmp_addr_0x0086e69a                          // 0x0086e632    7566
                         call               ??2@YAPAXI@Z                                  // 0x0086e634    e8b57ef5ff
                         add                esp, 0x04                                     // 0x0086e639    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e63c    8944243c
                         test               eax, eax                                      // 0x0086e640    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000002            // 0x0086e642    c744242802000000
                         {disp8} je         _jmp_addr_0x0086e66b                          // 0x0086e64a    741f
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x0086e64c    8b5610
                         xor.s              ecx, ecx                                      // 0x0086e64f    33c9
                         cmp.s              edx, ebp                                      // 0x0086e651    3bd5
                         {disp8} mov        edx, dword ptr [esi + 0x08]                   // 0x0086e653    8b5608
                         sete               cl                                            // 0x0086e656    0f94c1
                         inc                ecx                                           // 0x0086e659    41
                         push               ecx                                           // 0x0086e65a    51
                         push               edx                                           // 0x0086e65b    52
                         push               edi                                           // 0x0086e65c    57
                         push               edi                                           // 0x0086e65d    57
                         push               0x0                                           // 0x0086e65e    6a00
                         push               0x0                                           // 0x0086e660    6a00
                         mov.s              ecx, eax                                      // 0x0086e662    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e664    e8e7aaffff
                         {disp8} jmp        _jmp_addr_0x0086e66d                          // 0x0086e669    eb02
_jmp_addr_0x0086e66b:    xor.s              eax, eax                                      // 0x0086e66b    33c0
_jmp_addr_0x0086e66d:    {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e66d    8b4e60
                         {disp8} mov        dword ptr [ecx + 0x04], eax                   // 0x0086e670    894104
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e673    8b5660
                         mov                dword ptr [edx], eax                          // 0x0086e676    8902
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086e678    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e67b    8b4804
                         {disp8} mov        edx, dword ptr [esi + 0x48]                   // 0x0086e67e    8b5648
                         {disp8} mov        dword ptr [ecx + 0x20], edx                   // 0x0086e681    895120
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086e684    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e687    8b4804
                         {disp8} mov        dword ptr [esp + 0x28], 0xffffffff            // 0x0086e68a    c7442428ffffffff
                         {disp8} mov        dword ptr [ecx + 0x18], ebp                   // 0x0086e692    896918
                         {disp32} jmp       _jmp_addr_0x0086e783                          // 0x0086e695    e9e9000000
_jmp_addr_0x0086e69a:    call               ??2@YAPAXI@Z                                  // 0x0086e69a    e84f7ef5ff
                         add                esp, 0x04                                     // 0x0086e69f    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e6a2    8944243c
                         test               eax, eax                                      // 0x0086e6a6    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000003            // 0x0086e6a8    c744242803000000
                         {disp8} je         _jmp_addr_0x0086e6d1                          // 0x0086e6b0    741f
                         {disp8} mov        ebx, dword ptr [esi + 0x10]                   // 0x0086e6b2    8b5e10
                         {disp8} mov        ecx, dword ptr [esi + 0x08]                   // 0x0086e6b5    8b4e08
                         xor.s              edx, edx                                      // 0x0086e6b8    33d2
                         cmp.s              ebx, ebp                                      // 0x0086e6ba    3bdd
                         sete               dl                                            // 0x0086e6bc    0f94c2
                         inc                edx                                           // 0x0086e6bf    42
                         push               edx                                           // 0x0086e6c0    52
                         push               ecx                                           // 0x0086e6c1    51
                         push               edi                                           // 0x0086e6c2    57
                         push               edi                                           // 0x0086e6c3    57
                         push               0x0                                           // 0x0086e6c4    6a00
                         push               0x0                                           // 0x0086e6c6    6a00
                         mov.s              ecx, eax                                      // 0x0086e6c8    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e6ca    e881aaffff
                         {disp8} jmp        _jmp_addr_0x0086e6d3                          // 0x0086e6cf    eb02
_jmp_addr_0x0086e6d1:    xor.s              eax, eax                                      // 0x0086e6d1    33c0
_jmp_addr_0x0086e6d3:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e6d3    8b5660
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086e6d6    894204
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e6d9    8b4e60
                         mov                dword ptr [ecx], eax                          // 0x0086e6dc    8901
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e6de    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e6e1    8b4204
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x0086e6e4    8b4e48
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x0086e6e7    894820
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e6ea    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e6ed    8b4204
                         or                 ebx, 0xffffffff                               // 0x0086e6f0    83cbff
                         push               0x10                                          // 0x0086e6f3    6a10
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x0086e6f5    895c242c
                         {disp8} mov        dword ptr [eax + 0x18], ebp                   // 0x0086e6f9    896818
                         call               ??2@YAPAXI@Z                                  // 0x0086e6fc    e8ed7df5ff
                         add                esp, 0x04                                     // 0x0086e701    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e704    8944243c
                         test               eax, eax                                      // 0x0086e708    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000004            // 0x0086e70a    c744242804000000
                         {disp8} je         _jmp_addr_0x0086e71d                          // 0x0086e712    7409
                         mov.s              ecx, eax                                      // 0x0086e714    8bc8
                         call               ??0Route@@QAE@XZ                              // 0x0086e716    e865acffff
                         {disp8} jmp        _jmp_addr_0x0086e71f                          // 0x0086e71b    eb02
_jmp_addr_0x0086e71d:    xor.s              eax, eax                                      // 0x0086e71d    33c0
_jmp_addr_0x0086e71f:    {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e71f    8b4e60
                         {disp8} mov        dword ptr [eax + 0x08], ecx                   // 0x0086e722    894808
                         push               0x2c                                          // 0x0086e725    6a2c
                         {disp8} mov        dword ptr [esp + 0x2c], ebx                   // 0x0086e727    895c242c
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0086e72b    894660
                         call               ??2@YAPAXI@Z                                  // 0x0086e72e    e8bb7df5ff
                         add                esp, 0x04                                     // 0x0086e733    83c404
                         {disp8} mov        dword ptr [esp + 0x3c], eax                   // 0x0086e736    8944243c
                         test               eax, eax                                      // 0x0086e73a    85c0
                         {disp8} mov        dword ptr [esp + 0x28], 0x00000005            // 0x0086e73c    c744242805000000
                         {disp8} je         _jmp_addr_0x0086e75d                          // 0x0086e744    7417
                         {disp8} mov        edx, dword ptr [esi + 0x10]                   // 0x0086e746    8b5610
                         {disp8} mov        ecx, dword ptr [esi + 0x0c]                   // 0x0086e749    8b4e0c
                         push               edx                                           // 0x0086e74c    52
                         push               ecx                                           // 0x0086e74d    51
                         push               edi                                           // 0x0086e74e    57
                         push               edi                                           // 0x0086e74f    57
                         push               0x0                                           // 0x0086e750    6a00
                         push               0x0                                           // 0x0086e752    6a00
                         mov.s              ecx, eax                                      // 0x0086e754    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086e756    e8f5a9ffff
                         {disp8} jmp        _jmp_addr_0x0086e75f                          // 0x0086e75b    eb02
_jmp_addr_0x0086e75d:    xor.s              eax, eax                                      // 0x0086e75d    33c0
_jmp_addr_0x0086e75f:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e75f    8b5660
                         {disp8} mov        dword ptr [edx + 0x04], eax                   // 0x0086e762    894204
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086e765    8b4e60
                         mov                dword ptr [ecx], eax                          // 0x0086e768    8901
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e76a    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e76d    8b4204
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x0086e770    8b4e48
                         {disp8} mov        dword ptr [eax + 0x20], ecx                   // 0x0086e773    894820
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e776    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086e779    8b4204
                         {disp8} mov        dword ptr [esp + 0x28], ebx                   // 0x0086e77c    895c2428
                         {disp8} mov        dword ptr [eax + 0x18], ebp                   // 0x0086e780    896818
_jmp_addr_0x0086e783:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086e783    8b5660
                         {disp8} lea        ecx, dword ptr [esp + 0x10]                   // 0x0086e786    8d4c2410
                         push               ecx                                           // 0x0086e78a    51
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0086e78b    8b4a04
                         add                ecx, 0x8                                      // 0x0086e78e    83c108
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e791    e82a160000
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086e796    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e799    8b4804
                         {disp8} fadd       dword ptr [ecx + 0x20]                        // 0x0086e79c    d84120
_jmp_addr_0x0086e79f:    {disp8} fstp       dword ptr [esi + 0x4c]                        // 0x0086e79f    d95e4c
_jmp_addr_0x0086e7a2:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086e7a2    8b4c2420
                         pop                edi                                           // 0x0086e7a6    5f
                         pop                esi                                           // 0x0086e7a7    5e
                         pop                ebp                                           // 0x0086e7a8    5d
                         pop                ebx                                           // 0x0086e7a9    5b
                         {disp32} mov       fs:[0x0], ecx                                 // 0x0086e7aa    64890d00000000
                         add                esp, 0x1c                                     // 0x0086e7b1    83c41c
                         ret                0x0020                                        // 0x0086e7b4    c22000
                         nop                                                              // 0x0086e7b7    90
                         nop                                                              // 0x0086e7b8    90
                         nop                                                              // 0x0086e7b9    90
                         nop                                                              // 0x0086e7ba    90
                         nop                                                              // 0x0086e7bb    90
                         nop                                                              // 0x0086e7bc    90
                         nop                                                              // 0x0086e7bd    90
                         nop                                                              // 0x0086e7be    90
                         nop                                                              // 0x0086e7bf    90
_jmp_addr_0x0086e7c0:    push               esi                                           // 0x0086e7c0    56
                         mov.s              esi, ecx                                      // 0x0086e7c1    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086e7c3    8b4668
                         test               eax, eax                                      // 0x0086e7c6    85c0
                         {disp8} je         _jmp_addr_0x0086e7ea                          // 0x0086e7c8    7420
                         {disp8} lea        ecx, dword ptr [esi + 0x34]                   // 0x0086e7ca    8d4e34
                         push               ecx                                           // 0x0086e7cd    51
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e7ce    8b4804
                         add                ecx, 0x8                                      // 0x0086e7d1    83c108
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e7d4    e8e7150000
                         {disp8} fcomp      dword ptr [esi + 0x40]                        // 0x0086e7d9    d85e40
                         fnstsw             ax                                            // 0x0086e7dc    dfe0
                         test               ah, 0x01                                      // 0x0086e7de    f6c401
                         {disp8} je         _jmp_addr_0x0086e7ea                          // 0x0086e7e1    7407
                         mov.s              ecx, esi                                      // 0x0086e7e3    8bce
                         call               _jmp_addr_0x0086e7f0                          // 0x0086e7e5    e806000000
_jmp_addr_0x0086e7ea:    pop                esi                                           // 0x0086e7ea    5e
                         ret                                                              // 0x0086e7eb    c3
                         nop                                                              // 0x0086e7ec    90
                         nop                                                              // 0x0086e7ed    90
                         nop                                                              // 0x0086e7ee    90
                         nop                                                              // 0x0086e7ef    90
_jmp_addr_0x0086e7f0:    push               ebx                                           // 0x0086e7f0    53
                         push               ebp                                           // 0x0086e7f1    55
                         push               esi                                           // 0x0086e7f2    56
                         push               edi                                           // 0x0086e7f3    57
                         mov.s              edi, ecx                                      // 0x0086e7f4    8bf9
                         {disp8} mov        esi, dword ptr [edi + 0x60]                   // 0x0086e7f6    8b7760
                         xor.s              ebp, ebp                                      // 0x0086e7f9    33ed
                         cmp.s              esi, ebp                                      // 0x0086e7fb    3bf5
                         {disp8} je         _jmp_addr_0x0086e821                          // 0x0086e7fd    7422
_jmp_addr_0x0086e7ff:    cmp                esi, dword ptr [edi + 0x68]                   // 0x0086e7ff    3b7768
                         {disp8} mov        ebx, dword ptr [esi + 0x08]                   // 0x0086e802    8b5e08
                         {disp8} je         _jmp_addr_0x0086e81b                          // 0x0086e805    7414
                         cmp.s              esi, ebp                                      // 0x0086e807    3bf5
                         {disp8} je         _jmp_addr_0x0086e81b                          // 0x0086e809    7410
                         mov.s              ecx, esi                                      // 0x0086e80b    8bce
                         call               ??_DRoute@@QAEXXZ                             // 0x0086e80d    e81eacffff
                         push               esi                                           // 0x0086e812    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e813    e88006f4ff
                         add                esp, 0x04                                     // 0x0086e818    83c404
_jmp_addr_0x0086e81b:    cmp.s              ebx, ebp                                      // 0x0086e81b    3bdd
                         mov.s              esi, ebx                                      // 0x0086e81d    8bf3
                         {disp8} jne        _jmp_addr_0x0086e7ff                          // 0x0086e81f    75de
_jmp_addr_0x0086e821:    {disp8} mov        eax, dword ptr [edi + 0x68]                   // 0x0086e821    8b4768
                         {disp8} mov        dword ptr [edi + 0x60], eax                   // 0x0086e824    894760
                         {disp8} mov        dword ptr [edi + 0x64], 0x00000001            // 0x0086e827    c7476401000000
                         {disp8} mov        dword ptr [eax + 0x08], ebp                   // 0x0086e82e    896808
                         {disp8} mov        eax, dword ptr [edi + 0x68]                   // 0x0086e831    8b4768
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086e834    8b4804
                         {disp8} mov        edx, dword ptr [ecx + 0x20]                   // 0x0086e837    8b5120
                         {disp8} mov        esi, dword ptr [edi + 0x58]                   // 0x0086e83a    8b7758
                         cmp.s              esi, ebp                                      // 0x0086e83d    3bf5
                         {disp8} mov        dword ptr [edi + 0x4c], edx                   // 0x0086e83f    89574c
                         {disp8} mov        dword ptr [edi + 0x50], 0x00000005            // 0x0086e842    c7475005000000
                         {disp8} je         _jmp_addr_0x0086e87c                          // 0x0086e849    7431
                         cmp                dword ptr [esi + 0x04], ebp                   // 0x0086e84b    396e04
                         {disp8} je         _jmp_addr_0x0086e870                          // 0x0086e84e    7420
_jmp_addr_0x0086e850:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0086e850    8b4604
                         {disp8} mov        ebx, dword ptr [eax + 0x04]                   // 0x0086e853    8b5804
                         mov.s              ecx, eax                                      // 0x0086e856    8bc8
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x0086e858    896904
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086e85b    8b4e04
                         cmp.s              ecx, ebp                                      // 0x0086e85e    3bcd
                         {disp8} je         _jmp_addr_0x0086e869                          // 0x0086e860    7407
                         push               0x1                                           // 0x0086e862    6a01
                         call               @__dt__10VisitBlockFv@9                       // 0x0086e864    e847f9ffff
_jmp_addr_0x0086e869:    cmp.s              ebx, ebp                                      // 0x0086e869    3bdd
                         {disp8} mov        dword ptr [esi + 0x04], ebx                   // 0x0086e86b    895e04
                         {disp8} jne        _jmp_addr_0x0086e850                          // 0x0086e86e    75e0
_jmp_addr_0x0086e870:    push               esi                                           // 0x0086e870    56
                         call               ??3@YAXPAX@Z                                  // 0x0086e871    e82206f4ff
                         add                esp, 0x04                                     // 0x0086e876    83c404
                         {disp8} mov        dword ptr [edi + 0x58], ebp                   // 0x0086e879    896f58
_jmp_addr_0x0086e87c:    {disp8} mov        dword ptr [edi + 0x54], ebp                   // 0x0086e87c    896f54
                         pop                edi                                           // 0x0086e87f    5f
                         pop                esi                                           // 0x0086e880    5e
                         pop                ebp                                           // 0x0086e881    5d
                         pop                ebx                                           // 0x0086e882    5b
                         ret                                                              // 0x0086e883    c3
                         nop                                                              // 0x0086e884    90
                         nop                                                              // 0x0086e885    90
                         nop                                                              // 0x0086e886    90
                         nop                                                              // 0x0086e887    90
                         nop                                                              // 0x0086e888    90
                         nop                                                              // 0x0086e889    90
                         nop                                                              // 0x0086e88a    90
                         nop                                                              // 0x0086e88b    90
                         nop                                                              // 0x0086e88c    90
                         nop                                                              // 0x0086e88d    90
                         nop                                                              // 0x0086e88e    90
                         nop                                                              // 0x0086e88f    90
_jmp_addr_0x0086e890:    {disp8} fld        dword ptr [esp + 0x08]                        // 0x0086e890    d9442408
                         sub                esp, 0x08                                     // 0x0086e894    83ec08
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0086e897    d85c2414
                         push               ebx                                           // 0x0086e89b    53
                         push               ebp                                           // 0x0086e89c    55
                         push               esi                                           // 0x0086e89d    56
                         push               edi                                           // 0x0086e89e    57
                         fnstsw             ax                                            // 0x0086e89f    dfe0
                         mov.s              ebp, ecx                                      // 0x0086e8a1    8be9
                         test               ah, 0x41                                      // 0x0086e8a3    f6c441
                         {disp8} jne        _jmp_addr_0x0086e8b7                          // 0x0086e8a6    750f
                         pop                edi                                           // 0x0086e8a8    5f
                         pop                esi                                           // 0x0086e8a9    5e
                         pop                ebp                                           // 0x0086e8aa    5d
                         mov                eax, 0x00000001                               // 0x0086e8ab    b801000000
                         pop                ebx                                           // 0x0086e8b0    5b
                         add                esp, 0x08                                     // 0x0086e8b1    83c408
                         ret                0x000c                                        // 0x0086e8b4    c20c00
_jmp_addr_0x0086e8b7:    {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x0086e8b7    8b5c241c
                         fld                dword ptr [ebx]                               // 0x0086e8bb    d903
                         {disp8} mov        edi, dword ptr [ebp + 0x58]                   // 0x0086e8bd    8b7d58
                         test               edi, edi                                      // 0x0086e8c0    85ff
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x0086e8c2    d825b0a38a00
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086e8c8    d95c2424
                         fld                dword ptr [ebx]                               // 0x0086e8cc    d903
                         {disp32} fadd      dword ptr [_rdata_float0p001]                 // 0x0086e8ce    d805b0a38a00
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086e8d4    d95c241c
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0086e8d8    d94304
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x0086e8db    d825b0a38a00
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0086e8e1    d95c2410
                         {disp8} fld        dword ptr [ebx + 0x04]                        // 0x0086e8e5    d94304
                         {disp32} fadd      dword ptr [_rdata_float0p001]                 // 0x0086e8e8    d805b0a38a00
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086e8ee    d95c2414
                         {disp8} je         _jmp_addr_0x0086e944                          // 0x0086e8f2    7450
_jmp_addr_0x0086e8f4:    mov                esi, dword ptr [edi]                          // 0x0086e8f4    8b37
                         xor.s              edx, edx                                      // 0x0086e8f6    33d2
                         test               esi, esi                                      // 0x0086e8f8    85f6
                         {disp8} lea        ecx, dword ptr [edi + 0x08]                   // 0x0086e8fa    8d4f08
                         {disp8} jle        _jmp_addr_0x0086e93d                          // 0x0086e8fd    7e3e
_jmp_addr_0x0086e8ff:    fld                dword ptr [ecx]                               // 0x0086e8ff    d901
                         {disp8} fcomp      dword ptr [esp + 0x24]                        // 0x0086e901    d85c2424
                         fnstsw             ax                                            // 0x0086e905    dfe0
                         test               ah, 0x41                                      // 0x0086e907    f6c441
                         {disp8} jne        _jmp_addr_0x0086e935                          // 0x0086e90a    7529
                         fld                dword ptr [ecx]                               // 0x0086e90c    d901
                         {disp8} fcomp      dword ptr [esp + 0x1c]                        // 0x0086e90e    d85c241c
                         fnstsw             ax                                            // 0x0086e912    dfe0
                         test               ah, 0x01                                      // 0x0086e914    f6c401
                         {disp8} je         _jmp_addr_0x0086e935                          // 0x0086e917    741c
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0086e919    d94104
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x0086e91c    d85c2410
                         fnstsw             ax                                            // 0x0086e920    dfe0
                         test               ah, 0x41                                      // 0x0086e922    f6c441
                         {disp8} jne        _jmp_addr_0x0086e935                          // 0x0086e925    750e
                         {disp8} fld        dword ptr [ecx + 0x04]                        // 0x0086e927    d94104
                         {disp8} fcomp      dword ptr [esp + 0x14]                        // 0x0086e92a    d85c2414
                         fnstsw             ax                                            // 0x0086e92e    dfe0
                         test               ah, 0x01                                      // 0x0086e930    f6c401
                         {disp8} jne        _jmp_addr_0x0086e964                          // 0x0086e933    752f
_jmp_addr_0x0086e935:    add                ecx, 0xc                                      // 0x0086e935    83c10c
                         inc                edx                                           // 0x0086e938    42
                         cmp.s              edx, esi                                      // 0x0086e939    3bd6
                         {disp8} jl         _jmp_addr_0x0086e8ff                          // 0x0086e93b    7cc2
_jmp_addr_0x0086e93d:    {disp8} mov        edi, dword ptr [edi + 0x04]                   // 0x0086e93d    8b7f04
                         test               edi, edi                                      // 0x0086e940    85ff
                         {disp8} jne        _jmp_addr_0x0086e8f4                          // 0x0086e942    75b0
_jmp_addr_0x0086e944:    {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086e944    8b4c2420
                         push               ecx                                           // 0x0086e948    51
                         push               ebx                                           // 0x0086e949    53
                         mov.s              ecx, ebp                                      // 0x0086e94a    8bcd
                         call               _jmp_addr_0x0086fb80                          // 0x0086e94c    e82f120000
                         {disp8} mov        eax, dword ptr [ebp + 0x54]                   // 0x0086e951    8b4554
                         pop                edi                                           // 0x0086e954    5f
                         inc                eax                                           // 0x0086e955    40
                         pop                esi                                           // 0x0086e956    5e
                         {disp8} mov        dword ptr [ebp + 0x54], eax                   // 0x0086e957    894554
                         pop                ebp                                           // 0x0086e95a    5d
                         xor.s              eax, eax                                      // 0x0086e95b    33c0
                         pop                ebx                                           // 0x0086e95d    5b
                         add                esp, 0x08                                     // 0x0086e95e    83c408
                         ret                0x000c                                        // 0x0086e961    c20c00
_jmp_addr_0x0086e964:    {disp32} mov       eax, dword ptr [data_bytes + 0x5df1d0]        // 0x0086e964    a1d051fa00
                         test               eax, eax                                      // 0x0086e969    85c0
                         {disp8} je         _jmp_addr_0x0086e982                          // 0x0086e96b    7415
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086e96d    d9442420
                         {disp8} fcomp      dword ptr [ebp + 0x5c]                        // 0x0086e971    d85d5c
                         fnstsw             ax                                            // 0x0086e974    dfe0
                         test               ah, 0x41                                      // 0x0086e976    f6c441
                         {disp8} jne        _jmp_addr_0x0086e982                          // 0x0086e979    7507
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x0086e97b    8b442420
                         {disp8} mov        dword ptr [ebp + 0x5c], eax                   // 0x0086e97f    89455c
_jmp_addr_0x0086e982:    pop                edi                                           // 0x0086e982    5f
                         pop                esi                                           // 0x0086e983    5e
                         pop                ebp                                           // 0x0086e984    5d
                         mov                eax, 0x00000001                               // 0x0086e985    b801000000
                         pop                ebx                                           // 0x0086e98a    5b
                         add                esp, 0x08                                     // 0x0086e98b    83c408
                         ret                0x000c                                        // 0x0086e98e    c20c00
                         nop                                                              // 0x0086e991    90
                         nop                                                              // 0x0086e992    90
                         nop                                                              // 0x0086e993    90
                         nop                                                              // 0x0086e994    90
                         nop                                                              // 0x0086e995    90
                         nop                                                              // 0x0086e996    90
                         nop                                                              // 0x0086e997    90
                         nop                                                              // 0x0086e998    90
                         nop                                                              // 0x0086e999    90
                         nop                                                              // 0x0086e99a    90
                         nop                                                              // 0x0086e99b    90
                         nop                                                              // 0x0086e99c    90
                         nop                                                              // 0x0086e99d    90
                         nop                                                              // 0x0086e99e    90
                         nop                                                              // 0x0086e99f    90
@GameTurnUpdate__5RPlanFi@12:    {disp32} mov       eax, fs:[0x0]                                 // 0x0086e9a0    64a100000000
                         push               -0x1                                          // 0x0086e9a6    6aff
                         push               0x008a836e                                    // 0x0086e9a8    686e838a00
                         push               eax                                           // 0x0086e9ad    50
                         {disp32} mov       fs:[0x0], esp                                 // 0x0086e9ae    64892500000000
                         sub                esp, 0x44                                     // 0x0086e9b5    83ec44
                         push               ebx                                           // 0x0086e9b8    53
                         push               ebp                                           // 0x0086e9b9    55
                         push               esi                                           // 0x0086e9ba    56
                         mov.s              esi, ecx                                      // 0x0086e9bb    8bf1
                         cmp                dword ptr [esi + 0x50], 0x02                  // 0x0086e9bd    837e5002
                         push               edi                                           // 0x0086e9c1    57
                         {disp32} jne       _jmp_addr_0x0086f1ca                          // 0x0086e9c2    0f8502080000
                         {disp8} mov        edi, dword ptr [esi + 0x60]                   // 0x0086e9c8    8b7e60
                         {disp8} mov        dword ptr [esi + 0x68], edi                   // 0x0086e9cb    897e68
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0086e9ce    8b4f04
                         {disp8} lea        ebp, dword ptr [esi + 0x34]                   // 0x0086e9d1    8d6e34
                         push               ebp                                           // 0x0086e9d4    55
                         add                ecx, 0x8                                      // 0x0086e9d5    83c108
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e9d8    e8e3130000
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0086e9dd    8b4704
                         {disp8} fadd       dword ptr [eax + 0x20]                        // 0x0086e9e0    d84020
                         {disp8} fstp       dword ptr [esi + 0x4c]                        // 0x0086e9e3    d95e4c
                         {disp8} mov        edi, dword ptr [edi + 0x08]                   // 0x0086e9e6    8b7f08
                         test               edi, edi                                      // 0x0086e9e9    85ff
                         {disp8} mov        dword ptr [esi + 0x64], 0x00000001            // 0x0086e9eb    c7466401000000
                         {disp8} je         _jmp_addr_0x0086ea2e                          // 0x0086e9f2    743a
_jmp_addr_0x0086e9f4:    {disp8} inc        dword ptr [esi + 0x64]                        // 0x0086e9f4    ff4664
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0086e9f7    8b4f04
                         push               ebp                                           // 0x0086e9fa    55
                         add                ecx, 0x8                                      // 0x0086e9fb    83c108
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086e9fe    e8bd130000
                         {disp8} mov        ecx, dword ptr [edi + 0x04]                   // 0x0086ea03    8b4f04
                         {disp8} fadd       dword ptr [ecx + 0x20]                        // 0x0086ea06    d84120
                         {disp8} fld        dword ptr [esi + 0x4c]                        // 0x0086ea09    d9464c
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x0086ea0c    d825b0a38a00
                         fld                st(1)                                         // 0x0086ea12    d9c1
                         fcompp                                                           // 0x0086ea14    ded9
                         fnstsw             ax                                            // 0x0086ea16    dfe0
                         test               ah, 0x01                                      // 0x0086ea18    f6c401
                         {disp8} je         _jmp_addr_0x0086ea25                          // 0x0086ea1b    7408
                         {disp8} fstp       dword ptr [esi + 0x4c]                        // 0x0086ea1d    d95e4c
                         {disp8} mov        dword ptr [esi + 0x68], edi                   // 0x0086ea20    897e68
                         {disp8} jmp        _jmp_addr_0x0086ea27                          // 0x0086ea23    eb02
_jmp_addr_0x0086ea25:    fstp               st(0)                                         // 0x0086ea25    ddd8
_jmp_addr_0x0086ea27:    {disp8} mov        edi, dword ptr [edi + 0x08]                   // 0x0086ea27    8b7f08
                         test               edi, edi                                      // 0x0086ea2a    85ff
                         {disp8} jne        _jmp_addr_0x0086e9f4                          // 0x0086ea2c    75c6
_jmp_addr_0x0086ea2e:    {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086ea2e    8b4668
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0086ea31    8b7804
                         {disp8} mov        edx, dword ptr [edi + 0x10]                   // 0x0086ea34    8b5710
                         cmp                edx, -0x01                                    // 0x0086ea37    83faff
                         {disp8} jne        _jmp_addr_0x0086ea43                          // 0x0086ea3a    7507
                         push               0x1                                           // 0x0086ea3c    6a01
                         {disp32} jmp       _jmp_addr_0x0086f1c2                          // 0x0086ea3e    e97f070000
_jmp_addr_0x0086ea43:    mov                eax, dword ptr [esi]                          // 0x0086ea43    8b06
                         lea                ecx, dword ptr [edx + edx * 0x4]              // 0x0086ea45    8d0c92
                         lea                ebx, dword ptr [eax + ecx * 0x4]              // 0x0086ea48    8d1c88
                         {disp8} mov        ecx, dword ptr [ebx + 0x04]                   // 0x0086ea4b    8b4b04
                         test               ecx, ecx                                      // 0x0086ea4e    85c9
                         {disp32} je        _jmp_addr_0x0086f1bd                          // 0x0086ea50    0f8467070000
                         {disp8} mov        ecx, dword ptr [esi + 0x14]                   // 0x0086ea56    8b4e14
                         cmp                ecx, -0x01                                    // 0x0086ea59    83f9ff
                         {disp8} jne        _jmp_addr_0x0086ea8a                          // 0x0086ea5c    752c
                         {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0086ea5e    8b5500
                         {disp8} mov        ecx, dword ptr [ebp + 0x04]                   // 0x0086ea61    8b4d04
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0086ea64    894c2438
                         {disp8} mov        dword ptr [esp + 0x34], edx                   // 0x0086ea68    89542434
                         {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x0086ea6c    8b5714
                         push               edx                                           // 0x0086ea6f    52
                         {disp8} mov        edx, dword ptr [edi + 0x10]                   // 0x0086ea70    8b5710
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0086ea73    8d4c2430
                         push               ecx                                           // 0x0086ea77    51
                         push               ebp                                           // 0x0086ea78    55
                         push               edx                                           // 0x0086ea79    52
                         mov.s              ecx, eax                                      // 0x0086ea7a    8bc8
                         call               @GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di@24                          // 0x0086ea7c    e8dfcdfcff
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086ea81    89442418
                         {disp32} jmp       _jmp_addr_0x0086eb48                          // 0x0086ea85    e9be000000
_jmp_addr_0x0086ea8a:    cmp.s              edx, ecx                                      // 0x0086ea8a    3bd1
                         {disp32} je        _jmp_addr_0x0086f1bd                          // 0x0086ea8c    0f842b070000
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0086ea92    8b4714
                         cmp                eax, dword ptr [esi + 0x18]                   // 0x0086ea95    3b4618
                         {disp8} je         _jmp_addr_0x0086eadc                          // 0x0086ea98    7442
                         mov                eax, dword ptr [esi]                          // 0x0086ea9a    8b06
                         lea                ebp, dword ptr [ecx + ecx * 0x4]              // 0x0086ea9c    8d2c89
                         {disp8} fld        dword ptr [eax + ebp * 0x4 + 0x10]            // 0x0086ea9f    d944a810
                         lea                eax, dword ptr [eax + ebp * 0x4]              // 0x0086eaa3    8d04a8
                         {disp8} fadd       dword ptr [ebx + 0x10]                        // 0x0086eaa6    d84310
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0086eaa9    d94308
                         {disp8} fsub       dword ptr [eax + 0x08]                        // 0x0086eaac    d86008
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x0086eaaf    d9430c
                         {disp8} fsub       dword ptr [eax + 0x0c]                        // 0x0086eab2    d8600c
                         fld                st(0)                                         // 0x0086eab5    d9c0
                         fmul               st, st(1)                                     // 0x0086eab7    d8c9
                         fld                st(2)                                         // 0x0086eab9    d9c2
                         fmul               st, st(3)                                     // 0x0086eabb    d8cb
                         faddp              st(1), st                                     // 0x0086eabd    dec1
                         fld                st(3)                                         // 0x0086eabf    d9c3
                         fmul               st, st(4)                                     // 0x0086eac1    d8cc
                         {disp32} fadd      dword ptr [_rdata_float0p001]                 // 0x0086eac3    d805b0a38a00
                         fcompp                                                           // 0x0086eac9    ded9
                         fstp               st(0)                                         // 0x0086eacb    ddd8
                         fnstsw             ax                                            // 0x0086eacd    dfe0
                         fstp               st(0)                                         // 0x0086eacf    ddd8
                         test               ah, 0x41                                      // 0x0086ead1    f6c441
                         fstp               st(0)                                         // 0x0086ead4    ddd8
                         {disp32} je        _jmp_addr_0x0086f1bd                          // 0x0086ead6    0f84e1060000
_jmp_addr_0x0086eadc:    {disp8} lea        eax, dword ptr [esp + 0x34]                   // 0x0086eadc    8d442434
                         push               eax                                           // 0x0086eae0    50
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0086eae1    8b4618
                         push               eax                                           // 0x0086eae4    50
                         {disp8} mov        eax, dword ptr [edi + 0x14]                   // 0x0086eae5    8b4714
                         push               ecx                                           // 0x0086eae8    51
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0086eae9    8d4c2438
                         push               ecx                                           // 0x0086eaed    51
                         mov                ecx, dword ptr [esi]                          // 0x0086eaee    8b0e
                         push               eax                                           // 0x0086eaf0    50
                         push               edx                                           // 0x0086eaf1    52
                         call               _jmp_addr_0x0083b9e0                          // 0x0086eaf2    e8e9cefcff
                         test               eax, eax                                      // 0x0086eaf7    85c0
                         {disp32} je        _jmp_addr_0x0086f1bd                          // 0x0086eaf9    0f84be060000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086eaff    d9442438
                         {disp8} fsub       dword ptr [edi + 0x0c]                        // 0x0086eb03    d8670c
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0086eb06    d9442434
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x0086eb0a    d86708
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x0086eb0d    d9430c
                         {disp8} fsub       dword ptr [edi + 0x0c]                        // 0x0086eb10    d8670c
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0086eb13    d94308
                         {disp8} fsub       dword ptr [edi + 0x08]                        // 0x0086eb16    d86708
                         fmul               st, st(2)                                     // 0x0086eb19    d8ca
                         fxch               st(1)                                         // 0x0086eb1b    d9c9
                         fmul               st, st(3)                                     // 0x0086eb1d    d8cb
                         faddp              st(1), st                                     // 0x0086eb1f    dec1
                         {disp8} fdiv       dword ptr [ebx + 0x10]                        // 0x0086eb21    d87310
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                 // 0x0086eb24    d81db0a38a00
                         fnstsw             ax                                            // 0x0086eb2a    dfe0
                         fstp               st(0)                                         // 0x0086eb2c    ddd8
                         test               ah, 0x01                                      // 0x0086eb2e    f6c401
                         fstp               st(0)                                         // 0x0086eb31    ddd8
                         {disp8} je         _jmp_addr_0x0086eb40                          // 0x0086eb33    740b
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x0086eb35    8b5668
                         push               0x1                                           // 0x0086eb38    6a01
                         push               edx                                           // 0x0086eb3a    52
                         {disp32} jmp       _jmp_addr_0x0086f1c3                          // 0x0086eb3b    e983060000
_jmp_addr_0x0086eb40:    {disp8} mov        dword ptr [esp + 0x18], 0x00000001            // 0x0086eb40    c744241801000000
_jmp_addr_0x0086eb48:    {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x0086eb48    8b5714
                         {disp8} lea        eax, dword ptr [esp + 0x10]                   // 0x0086eb4b    8d442410
                         push               eax                                           // 0x0086eb4f    50
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0086eb50    8b4710
                         {disp8} lea        ebp, dword ptr [edi + 0x08]                   // 0x0086eb53    8d6f08
                         push               ebp                                           // 0x0086eb56    55
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0086eb57    8d4c2434
                         push               ecx                                           // 0x0086eb5b    51
                         mov                ecx, dword ptr [esi]                          // 0x0086eb5c    8b0e
                         push               edx                                           // 0x0086eb5e    52
                         push               eax                                           // 0x0086eb5f    50
                         call               _jmp_addr_0x0083c2d0                          // 0x0086eb60    e86bd7fcff
                         test               eax, eax                                      // 0x0086eb65    85c0
                         {disp32} je        _jmp_addr_0x0086ec36                          // 0x0086eb67    0f84c9000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5df1d0]        // 0x0086eb6d    8b0dd051fa00
                         test               ecx, ecx                                      // 0x0086eb73    85c9
                         {disp8} je         _jmp_addr_0x0086eb95                          // 0x0086eb75    741e
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086eb77    8b442410
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0086eb7b    8d1480
                         mov                eax, dword ptr [esi]                          // 0x0086eb7e    8b06
                         mov                eax, dword ptr [eax + edx * 0x4]              // 0x0086eb80    8b0490
                         cmp                eax, -0x01                                    // 0x0086eb83    83f8ff
                         {disp8} je         _jmp_addr_0x0086eb95                          // 0x0086eb86    740d
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5df1c4]        // 0x0086eb88    8b15c451fa00
                         push               eax                                           // 0x0086eb8e    50
                         push               edx                                           // 0x0086eb8f    52
                         call               ecx                                           // 0x0086eb90    ffd1
                         add                esp, 0x08                                     // 0x0086eb92    83c408
_jmp_addr_0x0086eb95:    push               0x2c                                          // 0x0086eb95    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086eb97    e85279f5ff
                         add                esp, 0x04                                     // 0x0086eb9c    83c404
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086eb9f    89442420
                         test               eax, eax                                      // 0x0086eba3    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000000            // 0x0086eba5    c744245c00000000
                         {disp8} je         _jmp_addr_0x0086ebca                          // 0x0086ebad    741b
                         {disp8} mov        ecx, dword ptr [edi + 0x14]                   // 0x0086ebaf    8b4f14
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086ebb2    8b542410
                         push               ecx                                           // 0x0086ebb6    51
                         push               edx                                           // 0x0086ebb7    52
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0086ebb8    8d4c2434
                         push               ecx                                           // 0x0086ebbc    51
                         push               ebp                                           // 0x0086ebbd    55
                         push               0x1                                           // 0x0086ebbe    6a01
                         push               edi                                           // 0x0086ebc0    57
                         mov.s              ecx, eax                                      // 0x0086ebc1    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086ebc3    e888a5ffff
                         {disp8} jmp        _jmp_addr_0x0086ebcc                          // 0x0086ebc8    eb02
_jmp_addr_0x0086ebca:    xor.s              eax, eax                                      // 0x0086ebca    33c0
_jmp_addr_0x0086ebcc:    {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086ebcc    894724
                         mov                edx, dword ptr [esi]                          // 0x0086ebcf    8b16
                         push               edx                                           // 0x0086ebd1    52
                         mov.s              ecx, eax                                      // 0x0086ebd2    8bc8
                         {disp8} mov        dword ptr [esp + 0x60], 0xffffffff            // 0x0086ebd4    c7442460ffffffff
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086ebdc    e8dfa5ffff
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086ebe1    d84720
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x0086ebe4    8b4724
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086ebe7    d95820
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086ebea    8b4e68
                         {disp8} mov        edx, dword ptr [edi + 0x24]                   // 0x0086ebed    8b5724
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0086ebf0    895104
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x0086ebf3    8b4724
                         {disp8} mov        ecx, dword ptr [esi + 0x44]                   // 0x0086ebf6    8b4e44
                         {disp8} mov        edx, dword ptr [eax + 0x20]                   // 0x0086ebf9    8b5020
                         push               ecx                                           // 0x0086ebfc    51
                         push               edx                                           // 0x0086ebfd    52
                         add                eax, 0x08                                     // 0x0086ebfe    83c008
                         push               eax                                           // 0x0086ec01    50
                         mov.s              ecx, esi                                      // 0x0086ec02    8bce
                         call               _jmp_addr_0x0086e890                          // 0x0086ec04    e887fcffff
                         test               eax, eax                                      // 0x0086ec09    85c0
                         {disp32} jne       _jmp_addr_0x0086f1bd                          // 0x0086ec0b    0f85ac050000
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086ec11    8b4e68
                         {disp8} mov        edx, dword ptr [edi + 0x18]                   // 0x0086ec14    8b5718
                         {disp8} mov        eax, dword ptr [esp + 0x64]                   // 0x0086ec17    8b442464
                         {disp8} mov        dword ptr [ecx + 0x0c], edx                   // 0x0086ec1b    89510c
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086ec1e    8b4e68
                         push               eax                                           // 0x0086ec21    50
                         push               ecx                                           // 0x0086ec22    51
                         mov.s              ecx, esi                                      // 0x0086ec23    8bce
                         call               _jmp_addr_0x0086f560                          // 0x0086ec25    e836090000
                         mov.s              ecx, esi                                      // 0x0086ec2a    8bce
                         call               _jmp_addr_0x0086e7c0                          // 0x0086ec2c    e88ffbffff
                         {disp32} jmp       _jmp_addr_0x0086f1ca                          // 0x0086ec31    e994050000
_jmp_addr_0x0086ec36:    {disp8} mov        edx, dword ptr [esi + 0x3c]                   // 0x0086ec36    8b563c
                         push               edx                                           // 0x0086ec39    52
                         {disp8} mov        edx, dword ptr [edi + 0x10]                   // 0x0086ec3a    8b5710
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0086ec3d    8d442420
                         push               eax                                           // 0x0086ec41    50
                         {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x0086ec42    8d4c244c
                         push               ecx                                           // 0x0086ec46    51
                         push               edx                                           // 0x0086ec47    52
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x0086ec48    8d442444
                         push               eax                                           // 0x0086ec4c    50
                         {disp8} lea        ecx, dword ptr [esp + 0x40]                   // 0x0086ec4d    8d4c2440
                         push               ecx                                           // 0x0086ec51    51
                         mov                ecx, dword ptr [esi]                          // 0x0086ec52    8b0e
                         call               @GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif@32                          // 0x0086ec54    e807cffcff
                         mov.s              edx, eax                                      // 0x0086ec59    8bd0
                         cmp                edx, -0x02                                    // 0x0086ec5b    83fafe
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0086ec5e    89542414
                         {disp8} jne        _jmp_addr_0x0086ec6f                          // 0x0086ec62    750b
                         {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x0086ec64    8b5668
                         push               0x1                                           // 0x0086ec67    6a01
                         push               edx                                           // 0x0086ec69    52
                         {disp32} jmp       _jmp_addr_0x0086f1c3                          // 0x0086ec6a    e954050000
_jmp_addr_0x0086ec6f:    cmp                edx, -0x01                                    // 0x0086ec6f    83faff
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0086ec72    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x44]                   // 0x0086ec76    8b4c2444
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086ec7a    89442420
                         {disp8} mov        eax, dword ptr [esp + 0x48]                   // 0x0086ec7e    8b442448
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                   // 0x0086ec82    894c244c
                         {disp8} mov        dword ptr [esp + 0x50], eax                   // 0x0086ec86    89442450
                         {disp32} jne       _jmp_addr_0x0086edfd                          // 0x0086ec8a    0f856d010000
                         {disp8} mov        edx, dword ptr [esi + 0x14]                   // 0x0086ec90    8b5614
                         cmp                edx, -0x01                                    // 0x0086ec93    83faff
                         {disp32} je        _jmp_addr_0x0086ed1c                          // 0x0086ec96    0f8480000000
                         mov                ecx, dword ptr [esi]                          // 0x0086ec9c    8b0e
                         lea                eax, dword ptr [edx + edx * 0x4]              // 0x0086ec9e    8d0492
                         {disp8} fld        dword ptr [ecx + eax * 0x4 + 0x0c]            // 0x0086eca1    d944810c
                         lea                eax, dword ptr [ecx + eax * 0x4]              // 0x0086eca5    8d0481
                         {disp8} fsub       dword ptr [esi + 0x28]                        // 0x0086eca8    d86628
                         {disp8} fld        dword ptr [eax + 0x08]                        // 0x0086ecab    d94008
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x0086ecae    d86624
                         {disp8} fld        dword ptr [esp + 0x30]                        // 0x0086ecb1    d9442430
                         {disp8} fsub       dword ptr [esi + 0x28]                        // 0x0086ecb5    d86628
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086ecb8    d944242c
                         {disp8} fsub       dword ptr [esi + 0x24]                        // 0x0086ecbc    d86624
                         fmul               st, st(2)                                     // 0x0086ecbf    d8ca
                         fxch               st(1)                                         // 0x0086ecc1    d9c9
                         fmul               st, st(3)                                     // 0x0086ecc3    d8cb
                         faddp              st(1), st                                     // 0x0086ecc5    dec1
                         {disp8} fdiv       dword ptr [eax + 0x10]                        // 0x0086ecc7    d87010
                         {disp32} fcomp     dword ptr [_rdata_float0p001]                 // 0x0086ecca    d81db0a38a00
                         fnstsw             ax                                            // 0x0086ecd0    dfe0
                         fstp               st(0)                                         // 0x0086ecd2    ddd8
                         test               ah, 0x01                                      // 0x0086ecd4    f6c401
                         fstp               st(0)                                         // 0x0086ecd7    ddd8
                         {disp8} je         _jmp_addr_0x0086ece6                          // 0x0086ecd9    740b
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086ecdb    8b4e68
                         push               0x1                                           // 0x0086ecde    6a01
                         push               ecx                                           // 0x0086ece0    51
                         {disp32} jmp       _jmp_addr_0x0086f1c3                          // 0x0086ece1    e9dd040000
_jmp_addr_0x0086ece6:    {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x0086ece6    8b4624
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0086ece9    89442424
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0086eced    8b4628
                         {disp8} mov        dword ptr [esp + 0x28], eax                   // 0x0086ecf0    89442428
                         {disp8} lea        eax, dword ptr [esp + 0x20]                   // 0x0086ecf4    8d442420
                         push               eax                                           // 0x0086ecf8    50
                         {disp8} lea        eax, dword ptr [esp + 0x38]                   // 0x0086ecf9    8d442438
                         push               eax                                           // 0x0086ecfd    50
                         {disp8} lea        eax, dword ptr [esp + 0x2c]                   // 0x0086ecfe    8d44242c
                         push               eax                                           // 0x0086ed02    50
                         {disp8} mov        eax, dword ptr [esi + 0x18]                   // 0x0086ed03    8b4618
                         push               eax                                           // 0x0086ed06    50
                         push               edx                                           // 0x0086ed07    52
                         call               _jmp_addr_0x0083c2d0                          // 0x0086ed08    e8c3d5fcff
                         test               eax, eax                                      // 0x0086ed0d    85c0
                         {disp8} je         _jmp_addr_0x0086ed1c                          // 0x0086ed0f    740b
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086ed11    8b4e68
                         push               0x1                                           // 0x0086ed14    6a01
                         push               ecx                                           // 0x0086ed16    51
                         {disp32} jmp       _jmp_addr_0x0086f1c3                          // 0x0086ed17    e9a7040000
_jmp_addr_0x0086ed1c:    {disp8} mov        edx, dword ptr [esi + 0x68]                   // 0x0086ed1c    8b5668
                         {disp8} mov        eax, dword ptr [edi + 0x18]                   // 0x0086ed1f    8b4718
                         push               0x2c                                          // 0x0086ed22    6a2c
                         {disp8} mov        dword ptr [edx + 0x0c], eax                   // 0x0086ed24    89420c
                         call               ??2@YAPAXI@Z                                  // 0x0086ed27    e8c277f5ff
                         add                esp, 0x04                                     // 0x0086ed2c    83c404
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086ed2f    89442420
                         test               eax, eax                                      // 0x0086ed33    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000001            // 0x0086ed35    c744245c01000000
                         {disp8} je         _jmp_addr_0x0086ed55                          // 0x0086ed3d    7416
                         push               0x0                                           // 0x0086ed3f    6a00
                         push               -0x1                                          // 0x0086ed41    6aff
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0086ed43    8d4c2434
                         push               ecx                                           // 0x0086ed47    51
                         push               ebp                                           // 0x0086ed48    55
                         push               0x1                                           // 0x0086ed49    6a01
                         push               edi                                           // 0x0086ed4b    57
                         mov.s              ecx, eax                                      // 0x0086ed4c    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086ed4e    e8fda3ffff
                         {disp8} jmp        _jmp_addr_0x0086ed57                          // 0x0086ed53    eb02
_jmp_addr_0x0086ed55:    xor.s              eax, eax                                      // 0x0086ed55    33c0
_jmp_addr_0x0086ed57:    {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086ed57    894724
                         mov                edx, dword ptr [esi]                          // 0x0086ed5a    8b16
                         or                 ebx, 0xffffffff                               // 0x0086ed5c    83cbff
                         push               edx                                           // 0x0086ed5f    52
                         mov.s              ecx, eax                                      // 0x0086ed60    8bc8
                         {disp8} mov        dword ptr [esp + 0x60], ebx                   // 0x0086ed62    895c2460
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086ed66    e855a4ffff
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086ed6b    d84720
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x0086ed6e    8b4724
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086ed71    d95820
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0086ed74    8b442418
                         test               eax, eax                                      // 0x0086ed78    85c0
                         {disp8} je         _jmp_addr_0x0086edd8                          // 0x0086ed7a    745c
                         {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x0086ed7c    8b7f24
                         push               0x2c                                          // 0x0086ed7f    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086ed81    e86877f5ff
                         add                esp, 0x04                                     // 0x0086ed86    83c404
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086ed89    89442420
                         test               eax, eax                                      // 0x0086ed8d    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000002            // 0x0086ed8f    c744245c02000000
                         {disp8} je         _jmp_addr_0x0086edb2                          // 0x0086ed97    7419
                         push               0x0                                           // 0x0086ed99    6a00
                         push               ebx                                           // 0x0086ed9b    53
                         {disp8} lea        ecx, dword ptr [esp + 0x3c]                   // 0x0086ed9c    8d4c243c
                         push               ecx                                           // 0x0086eda0    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0086eda1    8d542438
                         push               edx                                           // 0x0086eda5    52
                         push               0x0                                           // 0x0086eda6    6a00
                         push               edi                                           // 0x0086eda8    57
                         mov.s              ecx, eax                                      // 0x0086eda9    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086edab    e8a0a3ffff
                         {disp8} jmp        _jmp_addr_0x0086edb4                          // 0x0086edb0    eb02
_jmp_addr_0x0086edb2:    xor.s              eax, eax                                      // 0x0086edb2    33c0
_jmp_addr_0x0086edb4:    push               eax                                           // 0x0086edb4    50
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x0086edb5    8d4808
                         {disp8} mov        dword ptr [esp + 0x60], ebx                   // 0x0086edb8    895c2460
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086edbc    894724
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086edbf    e8fc0f0000
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086edc4    d84720
                         {disp8} mov        eax, dword ptr [edi + 0x24]                   // 0x0086edc7    8b4724
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086edca    d95820
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086edcd    8b4e68
                         {disp8} mov        edx, dword ptr [edi + 0x24]                   // 0x0086edd0    8b5724
                         {disp8} mov        dword ptr [ecx + 0x04], edx                   // 0x0086edd3    895104
                         {disp8} jmp        _jmp_addr_0x0086ede1                          // 0x0086edd6    eb09
_jmp_addr_0x0086edd8:    {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086edd8    8b4668
                         {disp8} mov        ecx, dword ptr [edi + 0x24]                   // 0x0086eddb    8b4f24
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0086edde    894804
_jmp_addr_0x0086ede1:    {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x0086ede1    8b542464
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086ede5    8b4668
                         push               edx                                           // 0x0086ede8    52
                         push               eax                                           // 0x0086ede9    50
                         mov.s              ecx, esi                                      // 0x0086edea    8bce
                         call               _jmp_addr_0x0086f560                          // 0x0086edec    e86f070000
                         mov.s              ecx, esi                                      // 0x0086edf1    8bce
                         call               _jmp_addr_0x0086e7f0                          // 0x0086edf3    e8f8f9ffff
                         {disp32} jmp       _jmp_addr_0x0086f1ca                          // 0x0086edf8    e9cd030000
_jmp_addr_0x0086edfd:    {disp32} mov       eax, dword ptr [data_bytes + 0x5df1d0]        // 0x0086edfd    a1d051fa00
                         test               eax, eax                                      // 0x0086ee02    85c0
                         {disp8} je         _jmp_addr_0x0086ee28                          // 0x0086ee04    7422
                         mov                eax, dword ptr [esi]                          // 0x0086ee06    8b06
                         lea                ecx, dword ptr [edx + edx * 0x4]              // 0x0086ee08    8d0c92
                         mov                eax, dword ptr [eax + ecx * 0x4]              // 0x0086ee0b    8b0488
                         cmp                eax, -0x01                                    // 0x0086ee0e    83f8ff
                         {disp8} je         _jmp_addr_0x0086ee28                          // 0x0086ee11    7415
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5df1c4]        // 0x0086ee13    8b0dc451fa00
                         push               eax                                           // 0x0086ee19    50
                         push               ecx                                           // 0x0086ee1a    51
                         call               dword ptr [data_bytes + 0x5df1d0]             // 0x0086ee1b    ff15d051fa00
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x0086ee21    8b54241c
                         add                esp, 0x08                                     // 0x0086ee25    83c408
_jmp_addr_0x0086ee28:    mov                ecx, dword ptr [esi]                          // 0x0086ee28    8b0e
                         lea                edx, dword ptr [edx + edx * 0x4]              // 0x0086ee2a    8d1492
                         {disp8} fld        dword ptr [ecx + edx * 0x4 + 0x10]            // 0x0086ee2d    d9449110
                         lea                eax, dword ptr [ecx + edx * 0x4]              // 0x0086ee31    8d0491
                         {disp8} fadd       dword ptr [ebx + 0x10]                        // 0x0086ee34    d84310
                         {disp8} fld        dword ptr [ebx + 0x08]                        // 0x0086ee37    d94308
                         {disp8} fsub       dword ptr [eax + 0x08]                        // 0x0086ee3a    d86008
                         {disp8} fld        dword ptr [ebx + 0x0c]                        // 0x0086ee3d    d9430c
                         {disp8} fsub       dword ptr [eax + 0x0c]                        // 0x0086ee40    d8600c
                         fld                st(0)                                         // 0x0086ee43    d9c0
                         fmul               st, st(1)                                     // 0x0086ee45    d8c9
                         fld                st(2)                                         // 0x0086ee47    d9c2
                         fmul               st, st(3)                                     // 0x0086ee49    d8cb
                         faddp              st(1), st                                     // 0x0086ee4b    dec1
                         fld                st(3)                                         // 0x0086ee4d    d9c3
                         fmul               st, st(4)                                     // 0x0086ee4f    d8cc
                         fcompp                                                           // 0x0086ee51    ded9
                         fstp               st(0)                                         // 0x0086ee53    ddd8
                         fnstsw             ax                                            // 0x0086ee55    dfe0
                         fstp               st(0)                                         // 0x0086ee57    ddd8
                         test               ah, 0x41                                      // 0x0086ee59    f6c441
                         fstp               st(0)                                         // 0x0086ee5c    ddd8
                         {disp32} jne       _jmp_addr_0x0086ef3d                          // 0x0086ee5e    0f85d9000000
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086ee64    8b4668
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x0086ee67    8b4f18
                         push               0x2c                                          // 0x0086ee6a    6a2c
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0086ee6c    89480c
                         call               ??2@YAPAXI@Z                                  // 0x0086ee6f    e87a76f5ff
                         add                esp, 0x04                                     // 0x0086ee74    83c404
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086ee77    89442420
                         test               eax, eax                                      // 0x0086ee7b    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000003            // 0x0086ee7d    c744245c03000000
                         {disp8} je         _jmp_addr_0x0086ee9d                          // 0x0086ee85    7416
                         push               0x0                                           // 0x0086ee87    6a00
                         push               -0x1                                          // 0x0086ee89    6aff
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0086ee8b    8d542434
                         push               edx                                           // 0x0086ee8f    52
                         push               ebp                                           // 0x0086ee90    55
                         push               0x1                                           // 0x0086ee91    6a01
                         push               edi                                           // 0x0086ee93    57
                         mov.s              ecx, eax                                      // 0x0086ee94    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086ee96    e8b5a2ffff
                         {disp8} jmp        _jmp_addr_0x0086ee9f                          // 0x0086ee9b    eb02
_jmp_addr_0x0086ee9d:    xor.s              eax, eax                                      // 0x0086ee9d    33c0
_jmp_addr_0x0086ee9f:    {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086ee9f    894724
                         mov                ecx, dword ptr [esi]                          // 0x0086eea2    8b0e
                         push               ecx                                           // 0x0086eea4    51
                         mov.s              ecx, eax                                      // 0x0086eea5    8bc8
                         {disp8} mov        dword ptr [esp + 0x60], 0xffffffff            // 0x0086eea7    c7442460ffffffff
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086eeaf    e80ca3ffff
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086eeb4    d84720
                         {disp8} mov        edx, dword ptr [edi + 0x24]                   // 0x0086eeb7    8b5724
                         push               0x2c                                          // 0x0086eeba    6a2c
                         {disp8} fstp       dword ptr [edx + 0x20]                        // 0x0086eebc    d95a20
                         {disp8} mov        ebx, dword ptr [edi + 0x14]                   // 0x0086eebf    8b5f14
                         {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x0086eec2    8b7f24
                         call               ??2@YAPAXI@Z                                  // 0x0086eec5    e82476f5ff
                         add                esp, 0x04                                     // 0x0086eeca    83c404
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086eecd    89442420
                         test               eax, eax                                      // 0x0086eed1    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000004            // 0x0086eed3    c744245c04000000
                         {disp8} je         _jmp_addr_0x0086eef9                          // 0x0086eedb    741c
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0086eedd    8b4c2414
                         push               ebx                                           // 0x0086eee1    53
                         push               ecx                                           // 0x0086eee2    51
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x0086eee3    8d54244c
                         push               edx                                           // 0x0086eee7    52
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0086eee8    8d4c2438
                         push               ecx                                           // 0x0086eeec    51
                         push               0x0                                           // 0x0086eeed    6a00
                         push               edi                                           // 0x0086eeef    57
                         mov.s              ecx, eax                                      // 0x0086eef0    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086eef2    e859a2ffff
                         {disp8} jmp        _jmp_addr_0x0086eefb                          // 0x0086eef7    eb02
_jmp_addr_0x0086eef9:    xor.s              eax, eax                                      // 0x0086eef9    33c0
_jmp_addr_0x0086eefb:    push               eax                                           // 0x0086eefb    50
                         {disp8} lea        ecx, dword ptr [eax + 0x08]                   // 0x0086eefc    8d4808
                         {disp8} mov        dword ptr [esp + 0x60], 0xffffffff            // 0x0086eeff    c7442460ffffffff
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086ef07    894724
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086ef0a    e8b10e0000
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086ef0f    d84720
                         {disp8} mov        edx, dword ptr [edi + 0x24]                   // 0x0086ef12    8b5724
                         {disp8} fstp       dword ptr [edx + 0x20]                        // 0x0086ef15    d95a20
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086ef18    8b4668
                         {disp8} mov        ecx, dword ptr [edi + 0x24]                   // 0x0086ef1b    8b4f24
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x0086ef1e    8b542464
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0086ef22    894804
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086ef25    8b4668
                         push               edx                                           // 0x0086ef28    52
                         push               eax                                           // 0x0086ef29    50
                         mov.s              ecx, esi                                      // 0x0086ef2a    8bce
                         call               _jmp_addr_0x0086f560                          // 0x0086ef2c    e82f060000
                         mov.s              ecx, esi                                      // 0x0086ef31    8bce
                         call               _jmp_addr_0x0086e7c0                          // 0x0086ef33    e888f8ffff
                         {disp32} jmp       _jmp_addr_0x0086f1ca                          // 0x0086ef38    e98d020000
_jmp_addr_0x0086ef3d:    {disp8} mov        eax, dword ptr [edi + 0x28]                   // 0x0086ef3d    8b4728
                         test               eax, eax                                      // 0x0086ef40    85c0
                         {disp8} je         _jmp_addr_0x0086ef47                          // 0x0086ef42    7403
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0086ef44    8b5010
_jmp_addr_0x0086ef47:    {disp8} mov        edx, dword ptr [ebp + 0x00]                   // 0x0086ef47    8b5500
                         {disp8} mov        dword ptr [esp + 0x3c], edx                   // 0x0086ef4a    8954243c
                         {disp8} mov        eax, dword ptr [ebp + 0x04]                   // 0x0086ef4e    8b4504
                         {disp8} lea        edx, dword ptr [esp + 0x10]                   // 0x0086ef51    8d542410
                         push               edx                                           // 0x0086ef55    52
                         {disp8} mov        dword ptr [esp + 0x44], eax                   // 0x0086ef56    89442444
                         {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x0086ef5a    8b5714
                         push               ebp                                           // 0x0086ef5d    55
                         {disp8} lea        eax, dword ptr [esp + 0x44]                   // 0x0086ef5e    8d442444
                         push               eax                                           // 0x0086ef62    50
                         {disp8} mov        eax, dword ptr [edi + 0x10]                   // 0x0086ef63    8b4710
                         push               edx                                           // 0x0086ef66    52
                         push               eax                                           // 0x0086ef67    50
                         call               _jmp_addr_0x0083c2d0                          // 0x0086ef68    e863d3fcff
                         test               eax, eax                                      // 0x0086ef6d    85c0
                         {disp32} je        _jmp_addr_0x0086f07d                          // 0x0086ef6f    0f8408010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x5df1d0]        // 0x0086ef75    8b0dd051fa00
                         test               ecx, ecx                                      // 0x0086ef7b    85c9
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086ef7d    8b442410
                         mov.s              ebx, eax                                      // 0x0086ef81    8bd8
                         {disp8} je         _jmp_addr_0x0086ef9f                          // 0x0086ef83    741a
                         lea                edx, dword ptr [eax + eax * 0x4]              // 0x0086ef85    8d1480
                         mov                eax, dword ptr [esi]                          // 0x0086ef88    8b06
                         mov                eax, dword ptr [eax + edx * 0x4]              // 0x0086ef8a    8b0490
                         cmp                eax, -0x01                                    // 0x0086ef8d    83f8ff
                         {disp8} je         _jmp_addr_0x0086ef9f                          // 0x0086ef90    740d
                         {disp32} mov       edx, dword ptr [data_bytes + 0x5df1c4]        // 0x0086ef92    8b15c451fa00
                         push               eax                                           // 0x0086ef98    50
                         push               edx                                           // 0x0086ef99    52
                         call               ecx                                           // 0x0086ef9a    ffd1
                         add                esp, 0x08                                     // 0x0086ef9c    83c408
_jmp_addr_0x0086ef9f:    push               0x10                                          // 0x0086ef9f    6a10
                         call               ??2@YAPAXI@Z                                  // 0x0086efa1    e84875f5ff
                         add                esp, 0x04                                     // 0x0086efa6    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086efa9    89442418
                         test               eax, eax                                      // 0x0086efad    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000005            // 0x0086efaf    c744245c05000000
                         {disp8} je         _jmp_addr_0x0086efc6                          // 0x0086efb7    740d
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086efb9    8b4e68
                         push               ecx                                           // 0x0086efbc    51
                         mov.s              ecx, eax                                      // 0x0086efbd    8bc8
                         call               @__ct__5RouteFP5Route@12                      // 0x0086efbf    e8dca3ffff
                         {disp8} jmp        _jmp_addr_0x0086efc8                          // 0x0086efc4    eb02
_jmp_addr_0x0086efc6:    xor.s              eax, eax                                      // 0x0086efc6    33c0
_jmp_addr_0x0086efc8:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086efc8    8b5660
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0086efcb    895008
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0086efce    894660
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x0086efd1    8b4f18
                         push               0x2c                                          // 0x0086efd4    6a2c
                         {disp8} mov        dword ptr [esp + 0x60], 0xffffffff            // 0x0086efd6    c7442460ffffffff
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0086efde    89480c
                         call               ??2@YAPAXI@Z                                  // 0x0086efe1    e80875f5ff
                         add                esp, 0x04                                     // 0x0086efe6    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086efe9    89442418
                         test               eax, eax                                      // 0x0086efed    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000006            // 0x0086efef    c744245c06000000
                         {disp8} je         _jmp_addr_0x0086f018                          // 0x0086eff7    741f
                         {disp8} mov        edx, dword ptr [edi + 0x14]                   // 0x0086eff9    8b5714
                         push               edx                                           // 0x0086effc    52
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086effd    8b5660
                         push               ebx                                           // 0x0086f000    53
                         {disp8} lea        ecx, dword ptr [esp + 0x44]                   // 0x0086f001    8d4c2444
                         push               ecx                                           // 0x0086f005    51
                         {disp8} mov        ecx, dword ptr [edx + 0x04]                   // 0x0086f006    8b4a04
                         push               ebp                                           // 0x0086f009    55
                         push               0x1                                           // 0x0086f00a    6a01
                         push               ecx                                           // 0x0086f00c    51
                         mov.s              ecx, eax                                      // 0x0086f00d    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086f00f    e83ca1ffff
                         mov.s              ebx, eax                                      // 0x0086f014    8bd8
                         {disp8} jmp        _jmp_addr_0x0086f01a                          // 0x0086f016    eb02
_jmp_addr_0x0086f018:    xor.s              ebx, ebx                                      // 0x0086f018    33db
_jmp_addr_0x0086f01a:    mov                edx, dword ptr [esi]                          // 0x0086f01a    8b16
                         push               edx                                           // 0x0086f01c    52
                         mov.s              ecx, ebx                                      // 0x0086f01d    8bcb
                         {disp8} mov        dword ptr [esp + 0x60], 0xffffffff            // 0x0086f01f    c7442460ffffffff
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086f027    e894a1ffff
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086f02c    8b4660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086f02f    8b4804
                         {disp8} fadd       dword ptr [ecx + 0x20]                        // 0x0086f032    d84120
                         {disp8} fstp       dword ptr [ebx + 0x20]                        // 0x0086f035    d95b20
                         {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086f038    8b5660
                         {disp8} mov        eax, dword ptr [edx + 0x04]                   // 0x0086f03b    8b4204
                         {disp8} mov        dword ptr [eax + 0x24], ebx                   // 0x0086f03e    895824
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086f041    8b4e60
                         {disp8} mov        dword ptr [ecx + 0x04], ebx                   // 0x0086f044    895904
                         {disp8} mov        edx, dword ptr [esi + 0x44]                   // 0x0086f047    8b5644
                         {disp8} mov        eax, dword ptr [ebx + 0x20]                   // 0x0086f04a    8b4320
                         push               edx                                           // 0x0086f04d    52
                         push               eax                                           // 0x0086f04e    50
                         add                ebx, 0x08                                     // 0x0086f04f    83c308
                         push               ebx                                           // 0x0086f052    53
                         mov.s              ecx, esi                                      // 0x0086f053    8bce
                         call               _jmp_addr_0x0086e890                          // 0x0086f055    e836f8ffff
                         test               eax, eax                                      // 0x0086f05a    85c0
                         {disp8} je         _jmp_addr_0x0086f06d                          // 0x0086f05c    740f
                         {disp8} mov        ecx, dword ptr [esi + 0x60]                   // 0x0086f05e    8b4e60
                         push               0x0                                           // 0x0086f061    6a00
                         push               ecx                                           // 0x0086f063    51
                         mov.s              ecx, esi                                      // 0x0086f064    8bce
                         call               _jmp_addr_0x0086f390                          // 0x0086f066    e825030000
                         {disp8} jmp        _jmp_addr_0x0086f07d                          // 0x0086f06b    eb10
_jmp_addr_0x0086f06d:    {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x0086f06d    8b542464
                         {disp8} mov        eax, dword ptr [esi + 0x60]                   // 0x0086f071    8b4660
                         push               edx                                           // 0x0086f074    52
                         push               eax                                           // 0x0086f075    50
                         mov.s              ecx, esi                                      // 0x0086f076    8bce
                         call               _jmp_addr_0x0086f560                          // 0x0086f078    e8e3040000
_jmp_addr_0x0086f07d:    {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086f07d    8b4668
                         test               eax, eax                                      // 0x0086f080    85c0
                         {disp32} je        _jmp_addr_0x0086f1ca                          // 0x0086f082    0f8442010000
                         {disp8} mov        ecx, dword ptr [edi + 0x18]                   // 0x0086f088    8b4f18
                         push               0x2c                                          // 0x0086f08b    6a2c
                         {disp8} mov        dword ptr [eax + 0x0c], ecx                   // 0x0086f08d    89480c
                         call               ??2@YAPAXI@Z                                  // 0x0086f090    e85974f5ff
                         add                esp, 0x04                                     // 0x0086f095    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086f098    89442418
                         test               eax, eax                                      // 0x0086f09c    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000007            // 0x0086f09e    c744245c07000000
                         {disp8} je         _jmp_addr_0x0086f0c0                          // 0x0086f0a6    7418
                         push               0x0                                           // 0x0086f0a8    6a00
                         or                 ebx, 0xffffffff                               // 0x0086f0aa    83cbff
                         push               ebx                                           // 0x0086f0ad    53
                         {disp8} lea        edx, dword ptr [esp + 0x34]                   // 0x0086f0ae    8d542434
                         push               edx                                           // 0x0086f0b2    52
                         push               ebp                                           // 0x0086f0b3    55
                         push               0x1                                           // 0x0086f0b4    6a01
                         push               edi                                           // 0x0086f0b6    57
                         mov.s              ecx, eax                                      // 0x0086f0b7    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086f0b9    e892a0ffff
                         {disp8} jmp        _jmp_addr_0x0086f0c5                          // 0x0086f0be    eb05
_jmp_addr_0x0086f0c0:    xor.s              eax, eax                                      // 0x0086f0c0    33c0
                         or                 ebx, 0xffffffff                               // 0x0086f0c2    83cbff
_jmp_addr_0x0086f0c5:    {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086f0c5    894724
                         mov                ecx, dword ptr [esi]                          // 0x0086f0c8    8b0e
                         push               ecx                                           // 0x0086f0ca    51
                         mov.s              ecx, eax                                      // 0x0086f0cb    8bc8
                         {disp8} mov        dword ptr [esp + 0x60], ebx                   // 0x0086f0cd    895c2460
                         call               @GetArcLength__9RouteNodeFP7RPAvoid@12        // 0x0086f0d1    e8eaa0ffff
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086f0d6    d84720
                         {disp8} mov        edx, dword ptr [edi + 0x24]                   // 0x0086f0d9    8b5724
                         {disp8} fstp       dword ptr [edx + 0x20]                        // 0x0086f0dc    d95a20
                         {disp8} mov        ecx, dword ptr [edi + 0x24]                   // 0x0086f0df    8b4f24
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086f0e2    8b4668
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0086f0e5    894804
                         {disp8} mov        edi, dword ptr [edi + 0x24]                   // 0x0086f0e8    8b7f24
                         {disp8} lea        edx, dword ptr [esp + 0x4c]                   // 0x0086f0eb    8d54244c
                         push               edx                                           // 0x0086f0ef    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x0086f0f0    8d4c2430
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086f0f4    e8c70c0000
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086f0f9    d95c2418
                         push               0x2c                                          // 0x0086f0fd    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086f0ff    e8ea73f5ff
                         add                esp, 0x04                                     // 0x0086f104    83c404
                         {disp8} mov        dword ptr [esp + 0x24], eax                   // 0x0086f107    89442424
                         test               eax, eax                                      // 0x0086f10b    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000008            // 0x0086f10d    c744245c08000000
                         {disp8} je         _jmp_addr_0x0086f140                          // 0x0086f115    7429
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0086f117    8b542420
                         xor.s              ecx, ecx                                      // 0x0086f11b    33c9
                         cmp                edx, 0x01                                     // 0x0086f11d    83fa01
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0086f120    8b542414
                         sete               cl                                            // 0x0086f124    0f94c1
                         inc                ecx                                           // 0x0086f127    41
                         push               ecx                                           // 0x0086f128    51
                         push               edx                                           // 0x0086f129    52
                         {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x0086f12a    8d4c2454
                         push               ecx                                           // 0x0086f12e    51
                         {disp8} lea        edx, dword ptr [esp + 0x38]                   // 0x0086f12f    8d542438
                         push               edx                                           // 0x0086f133    52
                         push               0x0                                           // 0x0086f134    6a00
                         push               edi                                           // 0x0086f136    57
                         mov.s              ecx, eax                                      // 0x0086f137    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086f139    e812a0ffff
                         {disp8} jmp        _jmp_addr_0x0086f142                          // 0x0086f13e    eb02
_jmp_addr_0x0086f140:    xor.s              eax, eax                                      // 0x0086f140    33c0
_jmp_addr_0x0086f142:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086f142    d9442418
                         {disp8} mov        edx, dword ptr [esp + 0x64]                   // 0x0086f146    8b542464
                         {disp8} fadd       dword ptr [edi + 0x20]                        // 0x0086f14a    d84720
                         {disp8} mov        dword ptr [edi + 0x24], eax                   // 0x0086f14d    894724
                         push               edx                                           // 0x0086f150    52
                         {disp8} mov        dword ptr [esp + 0x60], ebx                   // 0x0086f151    895c2460
                         {disp8} fstp       dword ptr [eax + 0x20]                        // 0x0086f155    d95820
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086f158    8b4668
                         {disp8} mov        ecx, dword ptr [edi + 0x24]                   // 0x0086f15b    8b4f24
                         {disp8} mov        dword ptr [eax + 0x04], ecx                   // 0x0086f15e    894804
                         {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086f161    8b4668
                         push               eax                                           // 0x0086f164    50
                         mov.s              ecx, esi                                      // 0x0086f165    8bce
                         call               _jmp_addr_0x0086f560                          // 0x0086f167    e8f4030000
                         push               0x10                                          // 0x0086f16c    6a10
                         call               ??2@YAPAXI@Z                                  // 0x0086f16e    e87b73f5ff
                         add                esp, 0x04                                     // 0x0086f173    83c404
                         {disp8} mov        dword ptr [esp + 0x64], eax                   // 0x0086f176    89442464
                         test               eax, eax                                      // 0x0086f17a    85c0
                         {disp8} mov        dword ptr [esp + 0x5c], 0x00000009            // 0x0086f17c    c744245c09000000
                         {disp8} je         _jmp_addr_0x0086f193                          // 0x0086f184    740d
                         {disp8} mov        ecx, dword ptr [esi + 0x68]                   // 0x0086f186    8b4e68
                         push               ecx                                           // 0x0086f189    51
                         mov.s              ecx, eax                                      // 0x0086f18a    8bc8
                         call               @__ct__5RouteFP5Route@12                      // 0x0086f18c    e80fa2ffff
                         {disp8} jmp        _jmp_addr_0x0086f195                          // 0x0086f191    eb02
_jmp_addr_0x0086f193:    xor.s              eax, eax                                      // 0x0086f193    33c0
_jmp_addr_0x0086f195:    {disp8} mov        edx, dword ptr [esi + 0x60]                   // 0x0086f195    8b5660
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                   // 0x0086f198    8b4804
                         {disp8} mov        dword ptr [eax + 0x08], edx                   // 0x0086f19b    895008
                         {disp8} mov        dword ptr [esp + 0x5c], ebx                   // 0x0086f19e    895c245c
                         {disp8} mov        ebx, dword ptr [ecx + 0x14]                   // 0x0086f1a2    8b5914
                         xor.s              edx, edx                                      // 0x0086f1a5    33d2
                         cmp                ebx, 0x01                                     // 0x0086f1a7    83fb01
                         sete               dl                                            // 0x0086f1aa    0f94c2
                         inc                edx                                           // 0x0086f1ad    42
                         {disp8} mov        dword ptr [ecx + 0x14], edx                   // 0x0086f1ae    895114
                         mov.s              ecx, esi                                      // 0x0086f1b1    8bce
                         {disp8} mov        dword ptr [esi + 0x60], eax                   // 0x0086f1b3    894660
                         call               _jmp_addr_0x0086e7c0                          // 0x0086f1b6    e805f6ffff
                         {disp8} jmp        _jmp_addr_0x0086f1ca                          // 0x0086f1bb    eb0d
_jmp_addr_0x0086f1bd:    {disp8} mov        eax, dword ptr [esi + 0x68]                   // 0x0086f1bd    8b4668
                         push               0x1                                           // 0x0086f1c0    6a01
_jmp_addr_0x0086f1c2:    push               eax                                           // 0x0086f1c2    50
_jmp_addr_0x0086f1c3:    mov.s              ecx, esi                                      // 0x0086f1c3    8bce
                         call               _jmp_addr_0x0086f390                          // 0x0086f1c5    e8c6010000
_jmp_addr_0x0086f1ca:    {disp8} mov        ecx, dword ptr [esp + 0x54]                   // 0x0086f1ca    8b4c2454
                         pop                edi                                           // 0x0086f1ce    5f
                         pop                esi                                           // 0x0086f1cf    5e
                         pop                ebp                                           // 0x0086f1d0    5d
                         pop                ebx                                           // 0x0086f1d1    5b
                         {disp32} mov       fs:[0x0], ecx                                 // 0x0086f1d2    64890d00000000
                         add                esp, 0x50                                     // 0x0086f1d9    83c450
                         ret                0x0004                                        // 0x0086f1dc    c20400
                         nop                                                              // 0x0086f1df    90
                         sub                esp, 0x20                                     // 0x0086f1e0    83ec20
                         {disp8} mov        eax, dword ptr [esp + 0x28]                   // 0x0086f1e3    8b442428
                         fld                dword ptr [eax]                               // 0x0086f1e7    d900
                         push               ebx                                           // 0x0086f1e9    53
                         push               ebp                                           // 0x0086f1ea    55
                         {disp8} mov        ebp, dword ptr [esp + 0x2c]                   // 0x0086f1eb    8b6c242c
                         {disp8} fsub       dword ptr [ebp + 0x00]                        // 0x0086f1ef    d86500
                         push               esi                                           // 0x0086f1f2    56
                         mov.s              ebx, ecx                                      // 0x0086f1f3    8bd9
                         push               edi                                           // 0x0086f1f5    57
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086f1f6    d95c2418
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0086f1fa    d94004
                         {disp8} lea        ecx, dword ptr [esp + 0x18]                   // 0x0086f1fd    8d4c2418
                         {disp8} fsub       dword ptr [ebp + 0x04]                        // 0x0086f201    d86504
                         {disp8} fstp       dword ptr [esp + 0x1c]                        // 0x0086f204    d95c241c
                         call               _jmp_addr_0x0086fe80                          // 0x0086f208    e8730c0000
                         {disp8} fstp       dword ptr [esp + 0x34]                        // 0x0086f20d    d95c2434
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x0086f211    d944241c
                         mov                eax, dword ptr [ebx]                          // 0x0086f215    8b03
                         {disp32} mov       ecx, dword ptr [eax + 0x00050000]             // 0x0086f217    8b8800000500
                         fchs                                                             // 0x0086f21d    d9e0
                         {disp8} fstp       dword ptr [esp + 0x28]                        // 0x0086f21f    d95c2428
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x0086f223    d9442418
                         xor.s              edi, edi                                      // 0x0086f227    33ff
                         test               ecx, ecx                                      // 0x0086f229    85c9
                         {disp8} fstp       dword ptr [esp + 0x2c]                        // 0x0086f22b    d95c242c
                         {disp32} jle       _jmp_addr_0x0086f36b                          // 0x0086f22f    0f8e36010000
                         {disp8} lea        esi, dword ptr [eax + 0x10]                   // 0x0086f235    8d7010
_jmp_addr_0x0086f238:    {disp8} fld        dword ptr [esi + -0x08]                       // 0x0086f238    d946f8
                         {disp8} fsub       dword ptr [ebp + 0x00]                        // 0x0086f23b    d86500
                         {disp8} fstp       dword ptr [esp + 0x20]                        // 0x0086f23e    d95c2420
                         {disp8} fld        dword ptr [esi + -0x04]                       // 0x0086f242    d946fc
                         {disp8} fsub       dword ptr [ebp + 0x04]                        // 0x0086f245    d86504
                         {disp8} fstp       dword ptr [esp + 0x24]                        // 0x0086f248    d95c2424
                         {disp8} fld        dword ptr [esp + 0x2c]                        // 0x0086f24c    d944242c
                         {disp8} fmul       dword ptr [esp + 0x24]                        // 0x0086f250    d84c2424
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086f254    d9442420
                         {disp8} fmul       dword ptr [esp + 0x28]                        // 0x0086f258    d84c2428
                         faddp              st(1), st                                     // 0x0086f25c    dec1
                         {disp32} fld       dword ptr [_rdata_float0p001]                 // 0x0086f25e    d905b0a38a00
                         fsub               dword ptr [esi]                               // 0x0086f264    d826
                         fld                st(1)                                         // 0x0086f266    d9c1
                         fcompp                                                           // 0x0086f268    ded9
                         fnstsw             ax                                            // 0x0086f26a    dfe0
                         test               ah, 0x41                                      // 0x0086f26c    f6c441
                         {disp32} jne       _jmp_addr_0x0086f355                          // 0x0086f26f    0f85e0000000
                         fld                dword ptr [esi]                               // 0x0086f275    d906
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x0086f277    d825b0a38a00
                         fxch               st(1)                                         // 0x0086f27d    d9c9
                         fcompp                                                           // 0x0086f27f    ded9
                         fnstsw             ax                                            // 0x0086f281    dfe0
                         test               ah, 0x01                                      // 0x0086f283    f6c401
                         {disp32} je        _jmp_addr_0x0086f357                          // 0x0086f286    0f84cb000000
                         {disp8} fld        dword ptr [esp + 0x20]                        // 0x0086f28c    d9442420
                         {disp8} fmul       dword ptr [esp + 0x18]                        // 0x0086f290    d84c2418
                         {disp8} fld        dword ptr [esp + 0x24]                        // 0x0086f294    d9442424
                         {disp8} fmul       dword ptr [esp + 0x1c]                        // 0x0086f298    d84c241c
                         faddp              st(1), st                                     // 0x0086f29c    dec1
                         {disp8} fst        dword ptr [esp + 0x38]                        // 0x0086f29e    d9542438
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f2a2    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f2a8    dfe0
                         test               ah, 0x41                                      // 0x0086f2aa    f6c441
                         {disp32} jne       _jmp_addr_0x0086f357                          // 0x0086f2ad    0f85a4000000
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0086f2b3    d9442434
                         fadd               dword ptr [esi]                               // 0x0086f2b7    d806
                         {disp8} fcomp      dword ptr [esp + 0x38]                        // 0x0086f2b9    d85c2438
                         fnstsw             ax                                            // 0x0086f2bd    dfe0
                         test               ah, 0x41                                      // 0x0086f2bf    f6c441
                         {disp32} jne       _jmp_addr_0x0086f357                          // 0x0086f2c2    0f858f000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086f2c8    d9442438
                         {disp8} fcomp      dword ptr [esp + 0x34]                        // 0x0086f2cc    d85c2434
                         fnstsw             ax                                            // 0x0086f2d0    dfe0
                         test               ah, 0x01                                      // 0x0086f2d2    f6c401
                         {disp32} jne       _jmp_addr_0x0086f37a                          // 0x0086f2d5    0f859f000000
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086f2db    d9442438
                         mov                eax, dword ptr [esi]                          // 0x0086f2df    8b06
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1ece0]             // 0x0086f2e1    d80de07c8c00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                   // 0x0086f2e7    8d4c2420
                         {disp8} mov        dword ptr [esp + 0x10], eax                   // 0x0086f2eb    89442410
                         {disp8} fstp       dword ptr [esp + 0x38]                        // 0x0086f2ef    d95c2438
                         {disp8} fld        dword ptr [esp + 0x38]                        // 0x0086f2f3    d9442438
                         {disp8} fmul       dword ptr [esp + 0x38]                        // 0x0086f2f7    d84c2438
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x0086f2fb    d95c2414
                         call               @GetNormSq__7Point2DFv2@4                     // 0x0086f2ff    e89c0a0000
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086f304    d9442410
                         {disp8} fmul       dword ptr [esp + 0x10]                        // 0x0086f308    d84c2410
                         fsubp              st(1), st                                     // 0x0086f30c    dee9
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2418]              // 0x0086f30e    d80d18b48a00
                         {disp8} fsubr      dword ptr [esp + 0x14]                        // 0x0086f314    d86c2414
                         {disp32} fcom      dword ptr [_rdata_float0p0]                   // 0x0086f318    d81598a38a00
                         fnstsw             ax                                            // 0x0086f31e    dfe0
                         test               ah, 0x01                                      // 0x0086f320    f6c401
                         {disp8} jne        _jmp_addr_0x0086f355                          // 0x0086f323    7530
                         fsqrt                                                            // 0x0086f325    d9fa
                         {disp8} fadd       dword ptr [esp + 0x38]                        // 0x0086f327    d8442438
                         {disp32} fmul      dword ptr [rdata_bytes + 0x25fcc]             // 0x0086f32b    d80dccef8c00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x826bc]             // 0x0086f331    d815bcb69200
                         fnstsw             ax                                            // 0x0086f337    dfe0
                         test               ah, 0x41                                      // 0x0086f339    f6c441
                         {disp8} jne        _jmp_addr_0x0086f355                          // 0x0086f33c    7517
                         {disp8} fld        dword ptr [esp + 0x34]                        // 0x0086f33e    d9442434
                         {disp32} fsub      dword ptr [_rdata_float0p001]                 // 0x0086f342    d825b0a38a00
                         fxch               st(1)                                         // 0x0086f348    d9c9
                         fcompp                                                           // 0x0086f34a    ded9
                         fnstsw             ax                                            // 0x0086f34c    dfe0
                         test               ah, 0x01                                      // 0x0086f34e    f6c401
                         {disp8} jne        _jmp_addr_0x0086f37a                          // 0x0086f351    7527
                         {disp8} jmp        _jmp_addr_0x0086f357                          // 0x0086f353    eb02
_jmp_addr_0x0086f355:    fstp               st(0)                                         // 0x0086f355    ddd8
_jmp_addr_0x0086f357:    mov                ecx, dword ptr [ebx]                          // 0x0086f357    8b0b
                         {disp32} mov       eax, dword ptr [ecx + 0x00050000]             // 0x0086f359    8b8100000500
                         add                esi, 0x14                                     // 0x0086f35f    83c614
                         inc                edi                                           // 0x0086f362    47
                         cmp.s              edi, eax                                      // 0x0086f363    3bf8
                         {disp32} jl        _jmp_addr_0x0086f238                          // 0x0086f365    0f8ccdfeffff
_jmp_addr_0x0086f36b:    pop                edi                                           // 0x0086f36b    5f
                         pop                esi                                           // 0x0086f36c    5e
                         pop                ebp                                           // 0x0086f36d    5d
                         mov                eax, 0x00000001                               // 0x0086f36e    b801000000
                         pop                ebx                                           // 0x0086f373    5b
                         add                esp, 0x20                                     // 0x0086f374    83c420
                         ret                0x0008                                        // 0x0086f377    c20800
_jmp_addr_0x0086f37a:    pop                edi                                           // 0x0086f37a    5f
                         pop                esi                                           // 0x0086f37b    5e
                         pop                ebp                                           // 0x0086f37c    5d
                         xor.s              eax, eax                                      // 0x0086f37d    33c0
                         pop                ebx                                           // 0x0086f37f    5b
                         add                esp, 0x20                                     // 0x0086f380    83c420
                         ret                0x0008                                        // 0x0086f383    c20800
                         nop                                                              // 0x0086f386    90
                         nop                                                              // 0x0086f387    90
                         nop                                                              // 0x0086f388    90
                         nop                                                              // 0x0086f389    90
                         nop                                                              // 0x0086f38a    90
                         nop                                                              // 0x0086f38b    90
                         nop                                                              // 0x0086f38c    90
                         nop                                                              // 0x0086f38d    90
                         nop                                                              // 0x0086f38e    90
                         nop                                                              // 0x0086f38f    90
_jmp_addr_0x0086f390:    push               ebx                                           // 0x0086f390    53
                         push               ebp                                           // 0x0086f391    55
                         mov.s              ebx, ecx                                      // 0x0086f392    8bd9
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0086f394    8b4c240c
                         {disp8} mov        eax, dword ptr [ebx + 0x68]                   // 0x0086f398    8b4368
                         push               esi                                           // 0x0086f39b    56
                         xor.s              ebp, ebp                                      // 0x0086f39c    33ed
                         cmp.s              eax, ecx                                      // 0x0086f39e    3bc1
                         push               edi                                           // 0x0086f3a0    57
                         {disp8} jne        _jmp_addr_0x0086f3a6                          // 0x0086f3a1    7503
                         {disp8} mov        dword ptr [ebx + 0x68], ebp                   // 0x0086f3a3    896b68
_jmp_addr_0x0086f3a6:    {disp8} mov        esi, dword ptr [ebx + 0x60]                   // 0x0086f3a6    8b7360
                         cmp.s              ecx, esi                                      // 0x0086f3a9    3bce
                         {disp8} jne        _jmp_addr_0x0086f41b                          // 0x0086f3ab    756e
                         {disp8} mov        edi, dword ptr [ebx + 0x60]                   // 0x0086f3ad    8b7b60
                         cmp.s              edi, ebp                                      // 0x0086f3b0    3bfd
                         {disp8} mov        esi, dword ptr [esi + 0x08]                   // 0x0086f3b2    8b7608
                         {disp8} je         _jmp_addr_0x0086f3c7                          // 0x0086f3b5    7410
                         mov.s              ecx, edi                                      // 0x0086f3b7    8bcf
                         call               ??_DRoute@@QAEXXZ                             // 0x0086f3b9    e872a0ffff
                         push               edi                                           // 0x0086f3be    57
                         call               ??3@YAXPAX@Z                                  // 0x0086f3bf    e8d4faf3ff
                         add                esp, 0x04                                     // 0x0086f3c4    83c404
_jmp_addr_0x0086f3c7:    cmp.s              esi, ebp                                      // 0x0086f3c7    3bf5
                         {disp8} mov        dword ptr [ebx + 0x60], esi                   // 0x0086f3c9    897360
                         {disp32} jne       _jmp_addr_0x0086f453                          // 0x0086f3cc    0f8581000000
                         {disp8} mov        esi, dword ptr [ebx + 0x58]                   // 0x0086f3d2    8b7358
                         cmp.s              esi, ebp                                      // 0x0086f3d5    3bf5
                         {disp8} mov        dword ptr [ebx + 0x50], 0x00000004            // 0x0086f3d7    c7435004000000
                         {disp8} je         _jmp_addr_0x0086f411                          // 0x0086f3de    7431
                         cmp                dword ptr [esi + 0x04], ebp                   // 0x0086f3e0    396e04
                         {disp8} je         _jmp_addr_0x0086f405                          // 0x0086f3e3    7420
_jmp_addr_0x0086f3e5:    {disp8} mov        eax, dword ptr [esi + 0x04]                   // 0x0086f3e5    8b4604
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0086f3e8    8b7804
                         mov.s              ecx, eax                                      // 0x0086f3eb    8bc8
                         {disp8} mov        dword ptr [ecx + 0x04], ebp                   // 0x0086f3ed    896904
                         {disp8} mov        ecx, dword ptr [esi + 0x04]                   // 0x0086f3f0    8b4e04
                         cmp.s              ecx, ebp                                      // 0x0086f3f3    3bcd
                         {disp8} je         _jmp_addr_0x0086f3fe                          // 0x0086f3f5    7407
                         push               0x1                                           // 0x0086f3f7    6a01
                         call               @__dt__10VisitBlockFv@9                       // 0x0086f3f9    e8b2edffff
_jmp_addr_0x0086f3fe:    cmp.s              edi, ebp                                      // 0x0086f3fe    3bfd
                         {disp8} mov        dword ptr [esi + 0x04], edi                   // 0x0086f400    897e04
                         {disp8} jne        _jmp_addr_0x0086f3e5                          // 0x0086f403    75e0
_jmp_addr_0x0086f405:    push               esi                                           // 0x0086f405    56
                         call               ??3@YAXPAX@Z                                  // 0x0086f406    e88dfaf3ff
                         add                esp, 0x04                                     // 0x0086f40b    83c404
                         {disp8} mov        dword ptr [ebx + 0x58], ebp                   // 0x0086f40e    896b58
_jmp_addr_0x0086f411:    pop                edi                                           // 0x0086f411    5f
                         pop                esi                                           // 0x0086f412    5e
                         {disp8} mov        dword ptr [ebx + 0x54], ebp                   // 0x0086f413    896b54
                         pop                ebp                                           // 0x0086f416    5d
                         pop                ebx                                           // 0x0086f417    5b
                         ret                0x0008                                        // 0x0086f418    c20800
_jmp_addr_0x0086f41b:    {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0086f41b    8b4608
                         cmp.s              eax, ebp                                      // 0x0086f41e    3bc5
                         {disp8} je         _jmp_addr_0x0086f453                          // 0x0086f420    7431
_jmp_addr_0x0086f422:    cmp.s              eax, ecx                                      // 0x0086f422    3bc1
                         {disp8} je         _jmp_addr_0x0086f436                          // 0x0086f424    7410
                         mov.s              esi, eax                                      // 0x0086f426    8bf0
                         {disp8} mov        eax, dword ptr [esi + 0x08]                   // 0x0086f428    8b4608
                         cmp.s              eax, ebp                                      // 0x0086f42b    3bc5
                         {disp8} jne        _jmp_addr_0x0086f422                          // 0x0086f42d    75f3
                         pop                edi                                           // 0x0086f42f    5f
                         pop                esi                                           // 0x0086f430    5e
                         pop                ebp                                           // 0x0086f431    5d
                         pop                ebx                                           // 0x0086f432    5b
                         ret                0x0008                                        // 0x0086f433    c20800
_jmp_addr_0x0086f436:    {disp8} mov        edi, dword ptr [esi + 0x08]                   // 0x0086f436    8b7e08
                         cmp.s              edi, ebp                                      // 0x0086f439    3bfd
                         {disp8} mov        ebx, dword ptr [edi + 0x08]                   // 0x0086f43b    8b5f08
                         {disp8} je         _jmp_addr_0x0086f450                          // 0x0086f43e    7410
                         mov.s              ecx, edi                                      // 0x0086f440    8bcf
                         call               ??_DRoute@@QAEXXZ                             // 0x0086f442    e8e99fffff
                         push               edi                                           // 0x0086f447    57
                         call               ??3@YAXPAX@Z                                  // 0x0086f448    e84bfaf3ff
                         add                esp, 0x04                                     // 0x0086f44d    83c404
_jmp_addr_0x0086f450:    {disp8} mov        dword ptr [esi + 0x08], ebx                   // 0x0086f450    895e08
_jmp_addr_0x0086f453:    pop                edi                                           // 0x0086f453    5f
                         pop                esi                                           // 0x0086f454    5e
                         pop                ebp                                           // 0x0086f455    5d
                         pop                ebx                                           // 0x0086f456    5b
                         ret                0x0008                                        // 0x0086f457    c20800
                         nop                                                              // 0x0086f45a    90
                         nop                                                              // 0x0086f45b    90
                         nop                                                              // 0x0086f45c    90
                         nop                                                              // 0x0086f45d    90
                         nop                                                              // 0x0086f45e    90
                         nop                                                              // 0x0086f45f    90
_jmp_addr_0x0086f460:    ret                0x0008                                        // 0x0086f460    c20800
                         nop                                                              // 0x0086f463    90
                         nop                                                              // 0x0086f464    90
                         nop                                                              // 0x0086f465    90
                         nop                                                              // 0x0086f466    90
                         nop                                                              // 0x0086f467    90
                         nop                                                              // 0x0086f468    90
                         nop                                                              // 0x0086f469    90
                         nop                                                              // 0x0086f46a    90
                         nop                                                              // 0x0086f46b    90
                         nop                                                              // 0x0086f46c    90
                         nop                                                              // 0x0086f46d    90
                         nop                                                              // 0x0086f46e    90
                         nop                                                              // 0x0086f46f    90
                         sub                esp, 0x08                                     // 0x0086f470    83ec08
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086f473    8b442410
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0086f477    d94004
                         {disp8} mov        ecx, dword ptr [esp + 0x0c]                   // 0x0086f47a    8b4c240c
                         fchs                                                             // 0x0086f47e    d9e0
                         {disp8} fstp       dword ptr [esp + 0x00]                        // 0x0086f480    d95c2400
                         fld                dword ptr [eax]                               // 0x0086f484    d900
                         {disp8} fstp       dword ptr [esp + 0x04]                        // 0x0086f486    d95c2404
                         fld                dword ptr [eax]                               // 0x0086f48a    d900
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086f48c    d84904
                         fld                dword ptr [ecx]                               // 0x0086f48f    d901
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086f491    d84804
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x0086f494    8b442414
                         fsubp              st(1), st                                     // 0x0086f498    dee9
                         fld                dword ptr [eax]                               // 0x0086f49a    d900
                         {disp8} fmul       dword ptr [ecx + 0x04]                        // 0x0086f49c    d84904
                         {disp8} fld        dword ptr [eax + 0x04]                        // 0x0086f49f    d94004
                         fmul               dword ptr [ecx]                               // 0x0086f4a2    d809
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x0086f4a4    8b4c2418
                         cmp                ecx, 0x01                                     // 0x0086f4a8    83f901
                         fsubp              st(1), st                                     // 0x0086f4ab    dee9
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x0086f4ad    d95c2410
                         {disp8} fld        dword ptr [esp + 0x04]                        // 0x0086f4b1    d9442404
                         {disp8} fmul       dword ptr [eax + 0x04]                        // 0x0086f4b5    d84804
                         {disp8} fld        dword ptr [esp + 0x00]                        // 0x0086f4b8    d9442400
                         fmul               dword ptr [eax]                               // 0x0086f4bc    d808
                         faddp              st(1), st                                     // 0x0086f4be    dec1
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f4c0    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f4c6    dfe0
                         {disp8} jne        _jmp_addr_0x0086f512                          // 0x0086f4c8    7548
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f4ca    d81d98a38a00
                         test               ah, 0x01                                      // 0x0086f4d0    f6c401
                         fnstsw             ax                                            // 0x0086f4d3    dfe0
                         {disp8} je         _jmp_addr_0x0086f4f3                          // 0x0086f4d5    741c
                         test               ah, 0x41                                      // 0x0086f4d7    f6c441
                         {disp8} je         _jmp_addr_0x0086f4ed                          // 0x0086f4da    7411
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086f4dc    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f4e0    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f4e6    dfe0
                         test               ah, 0x01                                      // 0x0086f4e8    f6c401
                         {disp8} je         _jmp_addr_0x0086f509                          // 0x0086f4eb    741c
_jmp_addr_0x0086f4ed:    xor.s              eax, eax                                      // 0x0086f4ed    33c0
                         add                esp, 0x08                                     // 0x0086f4ef    83c408
                         ret                                                              // 0x0086f4f2    c3
_jmp_addr_0x0086f4f3:    test               ah, 0x41                                      // 0x0086f4f3    f6c441
                         {disp8} jne        _jmp_addr_0x0086f509                          // 0x0086f4f6    7511
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086f4f8    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f4fc    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f502    dfe0
                         test               ah, 0x01                                      // 0x0086f504    f6c401
                         {disp8} jne        _jmp_addr_0x0086f4ed                          // 0x0086f507    75e4
_jmp_addr_0x0086f509:    mov                eax, 0x00000001                               // 0x0086f509    b801000000
                         add                esp, 0x08                                     // 0x0086f50e    83c408
                         ret                                                              // 0x0086f511    c3
_jmp_addr_0x0086f512:    {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f512    d81d98a38a00
                         test               ah, 0x41                                      // 0x0086f518    f6c441
                         fnstsw             ax                                            // 0x0086f51b    dfe0
                         {disp8} jne        _jmp_addr_0x0086f53b                          // 0x0086f51d    751c
                         test               ah, 0x01                                      // 0x0086f51f    f6c401
                         {disp8} jne        _jmp_addr_0x0086f4ed                          // 0x0086f522    75c9
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086f524    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f528    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f52e    dfe0
                         test               ah, 0x41                                      // 0x0086f530    f6c441
                         {disp8} jne        _jmp_addr_0x0086f551                          // 0x0086f533    751c
                         xor.s              eax, eax                                      // 0x0086f535    33c0
                         add                esp, 0x08                                     // 0x0086f537    83c408
                         ret                                                              // 0x0086f53a    c3
_jmp_addr_0x0086f53b:    test               ah, 0x01                                      // 0x0086f53b    f6c401
                         {disp8} je         _jmp_addr_0x0086f551                          // 0x0086f53e    7411
                         {disp8} fld        dword ptr [esp + 0x10]                        // 0x0086f540    d9442410
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x0086f544    d81d98a38a00
                         fnstsw             ax                                            // 0x0086f54a    dfe0
                         test               ah, 0x41                                      // 0x0086f54c    f6c441
                         {disp8} je         _jmp_addr_0x0086f4ed                          // 0x0086f54f    749c
_jmp_addr_0x0086f551:    mov                eax, 0x00000001                               // 0x0086f551    b801000000
                         add                esp, 0x08                                     // 0x0086f556    83c408
                         ret                                                              // 0x0086f559    c3
                         nop                                                              // 0x0086f55a    90
                         nop                                                              // 0x0086f55b    90
                         nop                                                              // 0x0086f55c    90
                         nop                                                              // 0x0086f55d    90
                         nop                                                              // 0x0086f55e    90
                         nop                                                              // 0x0086f55f    90
_jmp_addr_0x0086f560:    push               -0x1                                          // 0x0086f560    6aff
                         push               0x008a83c0                                    // 0x0086f562    68c0838a00
                         {disp32} mov       eax, fs:[0x0]                                 // 0x0086f567    64a100000000
                         push               eax                                           // 0x0086f56d    50
                         {disp32} mov       fs:[0x0], esp                                 // 0x0086f56e    64892500000000
                         sub                esp, 0x00000098                               // 0x0086f575    81ec98000000
                         push               ebx                                           // 0x0086f57b    53
                         push               ebp                                           // 0x0086f57c    55
                         push               esi                                           // 0x0086f57d    56
                         push               edi                                           // 0x0086f57e    57
                         {disp32} mov       edi, dword ptr [esp + 0x000000b8]             // 0x0086f57f    8bbc24b8000000
                         {disp8} mov        eax, dword ptr [edi + 0x0c]                   // 0x0086f586    8b470c
                         xor.s              ebp, ebp                                      // 0x0086f589    33ed
                         cmp.s              eax, ebp                                      // 0x0086f58b    3bc5
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x0086f58d    894c2410
                         {disp32} jne       _jmp_addr_0x0086fb26                          // 0x0086f591    0f858f050000
                         cmp                dword ptr [esp + 0x000000bc], 0x02            // 0x0086f597    83bc24bc00000002
                         {disp8} jle        _jmp_addr_0x0086f5ad                          // 0x0086f59f    7e0c
                         {disp8} mov        dword ptr [edi + 0x0c], 0x00000001            // 0x0086f5a1    c7470c01000000
                         {disp32} jmp       _jmp_addr_0x0086fb26                          // 0x0086f5a8    e979050000
_jmp_addr_0x0086f5ad:    {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0086f5ad    8d4c2434
                         call               ??0RPlan@@QAE@XZ                              // 0x0086f5b1    e81aebffff
                         {disp8} mov        eax, dword ptr [edi + 0x04]                   // 0x0086f5b6    8b4704
                         {disp8} mov        ecx, dword ptr [eax + 0x1c]                   // 0x0086f5b9    8b481c
                         mov                edx, 0x00000001                               // 0x0086f5bc    ba01000000
                         cmp.s              ecx, edx                                      // 0x0086f5c1    3bca
                         {disp32} mov       dword ptr [esp + 0x000000b0], ebp             // 0x0086f5c3    89ac24b0000000
                         mov.s              ebx, eax                                      // 0x0086f5ca    8bd8
                         {disp8} je         _jmp_addr_0x0086f5d1                          // 0x0086f5cc    7403
                         {disp8} mov        ebx, dword ptr [eax + 0x28]                   // 0x0086f5ce    8b5828
_jmp_addr_0x0086f5d1:    cmp.s              ebx, ebp                                      // 0x0086f5d1    3bdd
                         {disp8} jne        _jmp_addr_0x0086f5dd                          // 0x0086f5d3    7508
                         {disp8} mov        dword ptr [edi + 0x0c], edx                   // 0x0086f5d5    89570c
                         {disp32} jmp       _jmp_addr_0x0086fb12                          // 0x0086f5d8    e935050000
_jmp_addr_0x0086f5dd:    cmp                dword ptr [ebx + 0x1c], edx                   // 0x0086f5dd    39531c
                         {disp8} je         _jmp_addr_0x0086f5ea                          // 0x0086f5e0    7408
                         {disp8} mov        dword ptr [edi + 0x0c], edx                   // 0x0086f5e2    89570c
                         {disp32} jmp       _jmp_addr_0x0086fb12                          // 0x0086f5e5    e928050000
_jmp_addr_0x0086f5ea:    {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x0086f5ea    8b4b28
                         mov.s              esi, ecx                                      // 0x0086f5ed    8bf1
                         cmp.s              esi, ebp                                      // 0x0086f5ef    3bf5
                         {disp8} jne        _jmp_addr_0x0086f5fb                          // 0x0086f5f1    7508
                         {disp8} mov        dword ptr [edi + 0x0c], edx                   // 0x0086f5f3    89570c
                         {disp32} jmp       _jmp_addr_0x0086fb12                          // 0x0086f5f6    e917050000
_jmp_addr_0x0086f5fb:    mov                eax, dword ptr [edi]                          // 0x0086f5fb    8b07
                         cmp.s              esi, eax                                      // 0x0086f5fd    3bf0
                         {disp8} je         _jmp_addr_0x0086f611                          // 0x0086f5ff    7410
_jmp_addr_0x0086f601:    cmp                dword ptr [esi + 0x1c], edx                   // 0x0086f601    39561c
                         {disp8} je         _jmp_addr_0x0086f611                          // 0x0086f604    740b
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x0086f606    8b7628
                         cmp.s              esi, ebp                                      // 0x0086f609    3bf5
                         {disp8} je         _jmp_addr_0x0086f61b                          // 0x0086f60b    740e
                         cmp.s              esi, eax                                      // 0x0086f60d    3bf0
                         {disp8} jne        _jmp_addr_0x0086f601                          // 0x0086f60f    75f0
_jmp_addr_0x0086f611:    cmp                dword ptr [esi + 0x1c], edx                   // 0x0086f611    39561c
                         {disp8} je         _jmp_addr_0x0086f623                          // 0x0086f614    740d
                         cmp                dword ptr [esi + 0x14], ebp                   // 0x0086f616    396e14
                         {disp8} jne        _jmp_addr_0x0086f623                          // 0x0086f619    7508
_jmp_addr_0x0086f61b:    {disp8} mov        dword ptr [edi + 0x0c], edx                   // 0x0086f61b    89570c
                         {disp32} jmp       _jmp_addr_0x0086fb12                          // 0x0086f61e    e9ef040000
_jmp_addr_0x0086f623:    cmp.s              esi, ebp                                      // 0x0086f623    3bf5
                         {disp8} mov        eax, dword ptr [ecx + 0x10]                   // 0x0086f625    8b4110
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x0086f628    89442420
                         {disp8} mov        dword ptr [esp + 0x2c], 0x00000000            // 0x0086f62c    c744242c00000000
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000000            // 0x0086f634    c744243000000000
                         {disp8} mov        dword ptr [esp + 0x14], ebp                   // 0x0086f63c    896c2414
                         {disp32} je        _jmp_addr_0x0086fb04                          // 0x0086f640    0f84be040000
_jmp_addr_0x0086f646:    {disp8} mov        eax, dword ptr [ebx + 0x1c]                   // 0x0086f646    8b431c
                         mov                edi, 0x00000001                               // 0x0086f649    bf01000000
                         cmp.s              eax, edi                                      // 0x0086f64e    3bc7
                         {disp8} jne        _jmp_addr_0x0086f673                          // 0x0086f650    7521
                         {disp8} mov        ecx, dword ptr [ebx + 0x28]                   // 0x0086f652    8b4b28
                         {disp8} mov        edx, dword ptr [ecx + 0x14]                   // 0x0086f655    8b5114
                         {disp8} mov        eax, dword ptr [ebx + 0x10]                   // 0x0086f658    8b4310
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086f65b    8b4c2420
                         push               edx                                           // 0x0086f65f    52
                         push               eax                                           // 0x0086f660    50
                         {disp8} mov        eax, dword ptr [esp + 0x18]                   // 0x0086f661    8b442418
                         mov                edx, dword ptr [eax]                          // 0x0086f665    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086f667    8b4004
                         push               ecx                                           // 0x0086f66a    51
                         push               edx                                           // 0x0086f66b    52
                         push               eax                                           // 0x0086f66c    50
                         {disp8} lea        ecx, dword ptr [ebx + 0x08]                   // 0x0086f66d    8d4b08
                         push               ecx                                           // 0x0086f670    51
                         {disp8} jmp        _jmp_addr_0x0086f692                          // 0x0086f671    eb1f
_jmp_addr_0x0086f673:    {disp8} mov        edx, dword ptr [ebx + 0x28]                   // 0x0086f673    8b5328
                         {disp8} mov        eax, dword ptr [edx + 0x28]                   // 0x0086f676    8b4228
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0086f679    8b4814
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086f67c    8b442410
                         {disp8} mov        edx, dword ptr [ebx + 0x10]                   // 0x0086f680    8b5310
                         push               ecx                                           // 0x0086f683    51
                         mov                ecx, dword ptr [eax]                          // 0x0086f684    8b08
                         push               -0x1                                          // 0x0086f686    6aff
                         push               edx                                           // 0x0086f688    52
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x0086f689    8b5004
                         push               ecx                                           // 0x0086f68c    51
                         push               edx                                           // 0x0086f68d    52
                         {disp8} lea        eax, dword ptr [ebx + 0x08]                   // 0x0086f68e    8d4308
                         push               eax                                           // 0x0086f691    50
_jmp_addr_0x0086f692:    {disp8} lea        ecx, dword ptr [esp + 0x4c]                   // 0x0086f692    8d4c244c
                         call               @SetStart__5RPlanFRC7Point2DfP8RPHolderiii@32 // 0x0086f696    e865ebffff
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0086f69b    8b461c
                         test               eax, eax                                      // 0x0086f69e    85c0
                         {disp8} jne        _jmp_addr_0x0086f6bb                          // 0x0086f6a0    7519
                         {disp8} mov        ecx, dword ptr [ebx + 0x20]                   // 0x0086f6a2    8b4b20
                         push               0x0                                           // 0x0086f6a5    6a00
                         mov.s              edx, ecx                                      // 0x0086f6a7    8bd1
                         push               edx                                           // 0x0086f6a9    52
                         push               0x0                                           // 0x0086f6aa    6a00
                         push               -0x1                                          // 0x0086f6ac    6aff
                         push               0x0                                           // 0x0086f6ae    6a00
                         push               0x0                                           // 0x0086f6b0    6a00
                         push               0x0                                           // 0x0086f6b2    6a00
                         {disp8} mov        dword ptr [esp + 0x38], ecx                   // 0x0086f6b4    894c2438
                         push               esi                                           // 0x0086f6b8    56
                         {disp8} jmp        _jmp_addr_0x0086f71d                          // 0x0086f6b9    eb62
_jmp_addr_0x0086f6bb:    {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0086f6bb    8b4628
                         test               eax, eax                                      // 0x0086f6be    85c0
                         {disp32} je        _jmp_addr_0x0086fb41                          // 0x0086f6c0    0f847b040000
                         {disp8} fld        dword ptr [ebx + 0x20]                        // 0x0086f6c6    d94320
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0086f6c9    8b5010
                         cmp                edx, -0x01                                    // 0x0086f6cc    83faff
                         {disp8} fsub       dword ptr [eax + 0x20]                        // 0x0086f6cf    d86020
                         {disp8} fstp       dword ptr [esp + 0x18]                        // 0x0086f6d2    d95c2418
                         {disp32} je        _jmp_addr_0x0086fb4d                          // 0x0086f6d6    0f8471040000
                         {disp8} mov        edi, dword ptr [eax + 0x14]                   // 0x0086f6dc    8b7814
                         xor.s              ecx, ecx                                      // 0x0086f6df    33c9
                         cmp                edi, 0x01                                     // 0x0086f6e1    83ff01
                         mov                edi, dword ptr [eax]                          // 0x0086f6e4    8b38
                         sete               cl                                            // 0x0086f6e6    0f94c1
                         {disp8} mov        dword ptr [esp + 0x50], edi                   // 0x0086f6e9    897c2450
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086f6ed    8b4004
                         {disp8} mov        dword ptr [esp + 0x54], eax                   // 0x0086f6f0    89442454
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0086f6f4    8b4628
                         {disp8} mov        edi, dword ptr [eax + 0x08]                   // 0x0086f6f7    8b7808
                         push               0x0                                           // 0x0086f6fa    6a00
                         inc                ecx                                           // 0x0086f6fc    41
                         add                eax, 0x08                                     // 0x0086f6fd    83c008
                         {disp8} mov        dword ptr [esp + 0x5c], edi                   // 0x0086f700    897c245c
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086f704    8b4004
                         {disp8} mov        dword ptr [esp + 0x60], eax                   // 0x0086f707    89442460
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0086f70b    8b44241c
                         push               eax                                           // 0x0086f70f    50
                         push               ecx                                           // 0x0086f710    51
                         push               edx                                           // 0x0086f711    52
                         push               0x0                                           // 0x0086f712    6a00
                         push               0x0                                           // 0x0086f714    6a00
                         push               0x0                                           // 0x0086f716    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x48]                   // 0x0086f718    8d4c2448
                         push               ecx                                           // 0x0086f71c    51
_jmp_addr_0x0086f71d:    {disp8} lea        ecx, dword ptr [esp + 0x54]                   // 0x0086f71d    8d4c2454
                         call               @SetDest__5RPlanFRC7Point2Dfffiifi@40         // 0x0086f721    e82aebffff
                         mov                edi, 0x00000001                               // 0x0086f726    bf01000000
                         xor.s              ebp, ebp                                      // 0x0086f72b    33ed
_jmp_addr_0x0086f72d:    cmp                ebp, 0x10                                     // 0x0086f72d    83fd10
                         {disp8} jge        _jmp_addr_0x0086f763                          // 0x0086f730    7d31
                         {disp32} mov       edx, dword ptr [esp + 0x00000084]             // 0x0086f732    8b942484000000
                         {disp8} lea        eax, dword ptr [edx + -0x02]                  // 0x0086f739    8d42fe
                         cmp                eax, 0x03                                     // 0x0086f73c    83f803
                         {disp8} ja         _jmp_addr_0x0086f75e                          // 0x0086f73f    771d
                         jmp                dword ptr [eax*4 + 0x86fb6c]                  // 0x0086f741    ff24856cfb8600
                         {disp32} mov       eax, dword ptr [esp + 0x000000bc]             // 0x0086f748    8b8424bc000000
                         inc                eax                                           // 0x0086f74f    40
                         push               eax                                           // 0x0086f750    50
                         {disp8} lea        ecx, dword ptr [esp + 0x38]                   // 0x0086f751    8d4c2438
                         call               @GameTurnUpdate__5RPlanFi@12                  // 0x0086f755    e846f2ffff
                         {disp8} jmp        _jmp_addr_0x0086f75e                          // 0x0086f75a    eb02
                         xor.s              edi, edi                                      // 0x0086f75c    33ff
_jmp_addr_0x0086f75e:    inc                ebp                                           // 0x0086f75e    45
                         test               edi, edi                                      // 0x0086f75f    85ff
                         {disp8} jne        _jmp_addr_0x0086f72d                          // 0x0086f761    75ca
_jmp_addr_0x0086f763:    cmp                dword ptr [esp + 0x00000084], 0x05            // 0x0086f763    83bc248400000005
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x0086f76b    8b4628
                         {disp8} je         _jmp_addr_0x0086f7c0                          // 0x0086f76e    7450
                         {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x0086f770    8b742414
                         inc                esi                                           // 0x0086f774    46
                         xor.s              ecx, ecx                                      // 0x0086f775    33c9
                         cmp                esi, 0x04                                     // 0x0086f777    83fe04
                         setge              cl                                            // 0x0086f77a    0f9dc1
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x0086f77d    89742414
                         dec                ecx                                           // 0x0086f781    49
                         and.s              ecx, eax                                      // 0x0086f782    23c8
                         mov.s              esi, ecx                                      // 0x0086f784    8bf1
                         {disp32} je        _jmp_addr_0x0086fb04                          // 0x0086f786    0f8478030000
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0086f78c    8b461c
                         test               eax, eax                                      // 0x0086f78f    85c0
                         {disp32} jne       _jmp_addr_0x0086f646                          // 0x0086f791    0f85affeffff
                         {disp32} mov       edx, dword ptr [esp + 0x000000b8]             // 0x0086f797    8b9424b8000000
                         cmp                esi, dword ptr [edx]                          // 0x0086f79e    3b32
                         {disp32} je        _jmp_addr_0x0086f646                          // 0x0086f7a0    0f84a0feffff
                         {disp8} mov        esi, dword ptr [esi + 0x28]                   // 0x0086f7a6    8b7628
                         test               esi, esi                                      // 0x0086f7a9    85f6
                         {disp32} je        _jmp_addr_0x0086fb59                          // 0x0086f7ab    0f84a8030000
                         cmp                dword ptr [esi + 0x1c], 0x01                  // 0x0086f7b1    837e1c01
                         {disp32} jne       _jmp_addr_0x0086fb59                          // 0x0086f7b5    0f859e030000
                         {disp32} jmp       _jmp_addr_0x0086f646                          // 0x0086f7bb    e986feffff
_jmp_addr_0x0086f7c0:    {disp32} mov       eax, dword ptr [esp + 0x000000b8]             // 0x0086f7c0    8b8424b8000000
                         {disp8} mov        eax, dword ptr [eax + 0x04]                   // 0x0086f7c7    8b4004
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0086f7ca    8b4814
                         {disp8} mov        edx, dword ptr [eax + 0x10]                   // 0x0086f7cd    8b5010
                         {disp8} mov        dword ptr [esp + 0x20], ecx                   // 0x0086f7d0    894c2420
                         {disp8} mov        ecx, dword ptr [eax + 0x08]                   // 0x0086f7d4    8b4808
                         {disp8} mov        dword ptr [esp + 0x24], ecx                   // 0x0086f7d7    894c2424
                         {disp8} mov        dword ptr [esp + 0x14], edx                   // 0x0086f7db    89542414
                         {disp8} mov        edx, dword ptr [eax + 0x0c]                   // 0x0086f7df    8b500c
                         {disp32} mov       eax, dword ptr [esp + 0x0000009c]             // 0x0086f7e2    8b84249c000000
                         {disp8} mov        dword ptr [esp + 0x28], edx                   // 0x0086f7e9    89542428
                         {disp8} mov        edi, dword ptr [eax + 0x04]                   // 0x0086f7ed    8b7804
                         {disp8} mov        eax, dword ptr [esi + 0x1c]                   // 0x0086f7f0    8b461c
                         test               eax, eax                                      // 0x0086f7f3    85c0
                         {disp8} jne        _jmp_addr_0x0086f875                          // 0x0086f7f5    757e
                         {disp8} mov        eax, dword ptr [edi + 0x1c]                   // 0x0086f7f7    8b471c
                         {disp8} mov        dword ptr [esp + 0x1c], esi                   // 0x0086f7fa    8974241c
                         xor.s              esi, esi                                      // 0x0086f7fe    33f6
                         cmp                eax, 0x01                                     // 0x0086f800    83f801
                         {disp32} jne       _jmp_addr_0x0086f8f1                          // 0x0086f803    0f85e8000000
                         push               0x2c                                          // 0x0086f809    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086f80b    e8de6cf5ff
                         add                esp, 0x04                                     // 0x0086f810    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086f813    89442418
                         test               eax, eax                                      // 0x0086f817    85c0
                         {disp32} mov       byte ptr [esp + 0x000000b0], 0x01             // 0x0086f819    c68424b000000001
                         {disp8} je         _jmp_addr_0x0086f84b                          // 0x0086f821    7428
                         {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x0086f823    8b5728
                         {disp8} mov        ebx, dword ptr [edx + 0x14]                   // 0x0086f826    8b5a14
                         {disp8} mov        edx, dword ptr [edx + 0x10]                   // 0x0086f829    8b5210
                         xor.s              ecx, ecx                                      // 0x0086f82c    33c9
                         cmp                ebx, 0x01                                     // 0x0086f82e    83fb01
                         sete               cl                                            // 0x0086f831    0f94c1
                         {disp8} lea        esi, dword ptr [edi + 0x08]                   // 0x0086f834    8d7708
                         inc                ecx                                           // 0x0086f837    41
                         push               ecx                                           // 0x0086f838    51
                         push               edx                                           // 0x0086f839    52
                         push               esi                                           // 0x0086f83a    56
                         push               esi                                           // 0x0086f83b    56
                         push               0x0                                           // 0x0086f83c    6a00
                         push               0x0                                           // 0x0086f83e    6a00
                         mov.s              ecx, eax                                      // 0x0086f840    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086f842    e80999ffff
                         mov.s              esi, eax                                      // 0x0086f847    8bf0
                         {disp8} jmp        _jmp_addr_0x0086f84d                          // 0x0086f849    eb02
_jmp_addr_0x0086f84b:    xor.s              esi, esi                                      // 0x0086f84b    33f6
_jmp_addr_0x0086f84d:    {disp32} mov       eax, dword ptr [esp + 0x000000b8]             // 0x0086f84d    8b8424b8000000
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x0086f854    8d4e08
                         push               ecx                                           // 0x0086f857    51
                         mov.s              ecx, esi                                      // 0x0086f858    8bce
                         {disp32} mov       byte ptr [esp + 0x000000b4], 0x00             // 0x0086f85a    c68424b400000000
                         mov                dword ptr [eax], esi                          // 0x0086f862    8930
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086f864    e857050000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086f869    8b542410
                         {disp8} fadd       dword ptr [edx + 0x48]                        // 0x0086f86d    d84248
                         {disp8} fstp       dword ptr [esi + 0x20]                        // 0x0086f870    d95e20
                         {disp8} jmp        _jmp_addr_0x0086f8f1                          // 0x0086f873    eb7c
_jmp_addr_0x0086f875:    {disp8} mov        eax, dword ptr [edi + 0x1c]                   // 0x0086f875    8b471c
                         test               eax, eax                                      // 0x0086f878    85c0
                         {disp8} jne        _jmp_addr_0x0086f8ae                          // 0x0086f87a    7532
                         {disp8} mov        eax, dword ptr [esi + 0x24]                   // 0x0086f87c    8b4624
                         {disp8} mov        ecx, dword ptr [edi + 0x08]                   // 0x0086f87f    8b4f08
                         {disp8} mov        dword ptr [esi + 0x08], ecx                   // 0x0086f882    894e08
                         {disp8} mov        edx, dword ptr [edi + 0x0c]                   // 0x0086f885    8b570c
                         {disp8} mov        dword ptr [esi + 0x0c], edx                   // 0x0086f888    89560c
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0086f88b    8944241c
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086f88f    8b442410
                         xor.s              ebx, ebx                                      // 0x0086f893    33db
                         {disp8} mov        dword ptr [esi + 0x10], 0xffffffff            // 0x0086f895    c74610ffffffff
                         {disp8} mov        dword ptr [esi + 0x14], ebx                   // 0x0086f89c    895e14
                         mov                ecx, dword ptr [eax]                          // 0x0086f89f    8b08
                         push               ecx                                           // 0x0086f8a1    51
                         mov.s              ecx, esi                                      // 0x0086f8a2    8bce
                         call               _jmp_addr_0x00869330                          // 0x0086f8a4    e8879affff
                         {disp8} mov        dword ptr [esi + 0x24], ebx                   // 0x0086f8a9    895e24
                         {disp8} jmp        _jmp_addr_0x0086f8f1                          // 0x0086f8ac    eb43
_jmp_addr_0x0086f8ae:    {disp8} mov        edx, dword ptr [esi + 0x24]                   // 0x0086f8ae    8b5624
                         {disp8} mov        eax, dword ptr [edi + 0x08]                   // 0x0086f8b1    8b4708
                         {disp8} mov        dword ptr [esi + 0x08], eax                   // 0x0086f8b4    894608
                         {disp8} mov        ecx, dword ptr [edi + 0x0c]                   // 0x0086f8b7    8b4f0c
                         {disp8} mov        dword ptr [esi + 0x0c], ecx                   // 0x0086f8ba    894e0c
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x0086f8bd    8954241c
                         {disp8} mov        edx, dword ptr [edi + 0x28]                   // 0x0086f8c1    8b5728
                         {disp8} mov        eax, dword ptr [edx + 0x10]                   // 0x0086f8c4    8b4210
                         {disp8} mov        dword ptr [esi + 0x10], eax                   // 0x0086f8c7    894610
                         {disp8} mov        ecx, dword ptr [edi + 0x28]                   // 0x0086f8ca    8b4f28
                         {disp8} mov        ebx, dword ptr [ecx + 0x14]                   // 0x0086f8cd    8b5914
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086f8d0    8b442410
                         xor.s              edx, edx                                      // 0x0086f8d4    33d2
                         cmp                ebx, 0x01                                     // 0x0086f8d6    83fb01
                         sete               dl                                            // 0x0086f8d9    0f94c2
                         inc                edx                                           // 0x0086f8dc    42
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x0086f8dd    895614
                         mov                ecx, dword ptr [eax]                          // 0x0086f8e0    8b08
                         push               ecx                                           // 0x0086f8e2    51
                         mov.s              ecx, esi                                      // 0x0086f8e3    8bce
                         call               _jmp_addr_0x00869330                          // 0x0086f8e5    e8469affff
                         {disp8} mov        dword ptr [esi + 0x24], 0x00000000            // 0x0086f8ea    c7462400000000
_jmp_addr_0x0086f8f1:    test               edi, edi                                      // 0x0086f8f1    85ff
                         {disp32} je        _jmp_addr_0x0086fac8                          // 0x0086f8f3    0f84cf010000
                         {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x0086f8f9    8b5c2418
_jmp_addr_0x0086f8fd:    {disp8} mov        eax, dword ptr [edi + 0x28]                   // 0x0086f8fd    8b4728
                         test               eax, eax                                      // 0x0086f900    85c0
                         {disp32} je        _jmp_addr_0x0086f9ca                          // 0x0086f902    0f84c2000000
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0086f908    8b4f1c
                         test               ecx, ecx                                      // 0x0086f90b    85c9
                         {disp8} jne        _jmp_addr_0x0086f93b                          // 0x0086f90d    752c
_jmp_addr_0x0086f90f:    {disp8} mov        eax, dword ptr [eax + 0x28]                   // 0x0086f90f    8b4028
                         {disp8} mov        ecx, dword ptr [eax + 0x14]                   // 0x0086f912    8b4814
                         sub                ecx, 0x00                                     // 0x0086f915    83e900
                         {disp8} je         _jmp_addr_0x0086f934                          // 0x0086f918    741a
                         dec                ecx                                           // 0x0086f91a    49
                         {disp8} je         _jmp_addr_0x0086f92a                          // 0x0086f91b    740d
                         dec                ecx                                           // 0x0086f91d    49
                         {disp8} jne        _jmp_addr_0x0086f936                          // 0x0086f91e    7516
                         {disp8} mov        ebp, dword ptr [eax + 0x10]                   // 0x0086f920    8b6810
                         mov                ebx, 0x00000001                               // 0x0086f923    bb01000000
                         {disp8} jmp        _jmp_addr_0x0086f946                          // 0x0086f928    eb1c
_jmp_addr_0x0086f92a:    {disp8} mov        ebp, dword ptr [eax + 0x10]                   // 0x0086f92a    8b6810
                         mov                ebx, 0x00000002                               // 0x0086f92d    bb02000000
                         {disp8} jmp        _jmp_addr_0x0086f946                          // 0x0086f932    eb12
_jmp_addr_0x0086f934:    xor.s              ebx, ebx                                      // 0x0086f934    33db
_jmp_addr_0x0086f936:    {disp8} mov        ebp, dword ptr [eax + 0x10]                   // 0x0086f936    8b6810
                         {disp8} jmp        _jmp_addr_0x0086f946                          // 0x0086f939    eb0b
_jmp_addr_0x0086f93b:    cmp                dword ptr [eax + 0x1c], 0x01                  // 0x0086f93b    83781c01
                         {disp8} je         _jmp_addr_0x0086f90f                          // 0x0086f93f    74ce
                         xor.s              ebx, ebx                                      // 0x0086f941    33db
                         or                 ebp, 0xffffffff                               // 0x0086f943    83cdff
_jmp_addr_0x0086f946:    push               0x2c                                          // 0x0086f946    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086f948    e8a16bf5ff
                         add                esp, 0x04                                     // 0x0086f94d    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086f950    89442418
                         test               eax, eax                                      // 0x0086f954    85c0
                         {disp32} mov       byte ptr [esp + 0x000000b0], 0x02             // 0x0086f956    c68424b000000002
                         {disp8} je         _jmp_addr_0x0086f977                          // 0x0086f95e    7417
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0086f960    8b4f1c
                         push               ebx                                           // 0x0086f963    53
                         push               ebp                                           // 0x0086f964    55
                         push               edi                                           // 0x0086f965    57
                         {disp8} lea        edx, dword ptr [edi + 0x08]                   // 0x0086f966    8d5708
                         push               edx                                           // 0x0086f969    52
                         push               ecx                                           // 0x0086f96a    51
                         push               esi                                           // 0x0086f96b    56
                         mov.s              ecx, eax                                      // 0x0086f96c    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086f96e    e8dd97ffff
                         mov.s              ebp, eax                                      // 0x0086f973    8be8
                         {disp8} jmp        _jmp_addr_0x0086f979                          // 0x0086f975    eb02
_jmp_addr_0x0086f977:    xor.s              ebp, ebp                                      // 0x0086f977    33ed
_jmp_addr_0x0086f979:    test               esi, esi                                      // 0x0086f979    85f6
                         {disp32} mov       byte ptr [esp + 0x000000b0], 0x00             // 0x0086f97b    c68424b000000000
                         {disp8} je         _jmp_addr_0x0086f99a                          // 0x0086f983    7415
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086f985    8b542410
                         {disp8} mov        dword ptr [esi + 0x24], ebp                   // 0x0086f989    896e24
                         mov                eax, dword ptr [edx]                          // 0x0086f98c    8b02
                         push               eax                                           // 0x0086f98e    50
                         mov.s              ecx, ebp                                      // 0x0086f98f    8bcd
                         mov.s              esi, ebp                                      // 0x0086f991    8bf5
                         call               _jmp_addr_0x00869330                          // 0x0086f993    e89899ffff
                         {disp8} jmp        _jmp_addr_0x0086f9ba                          // 0x0086f998    eb20
_jmp_addr_0x0086f99a:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]             // 0x0086f99a    8b8c24b8000000
                         {disp8} lea        edx, dword ptr [ebp + 0x08]                   // 0x0086f9a1    8d5508
                         mov                dword ptr [ecx], ebp                          // 0x0086f9a4    8929
                         push               edx                                           // 0x0086f9a6    52
                         mov.s              ecx, ebp                                      // 0x0086f9a7    8bcd
                         mov.s              esi, ebp                                      // 0x0086f9a9    8bf5
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086f9ab    e810040000
                         {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x0086f9b0    8b442410
                         {disp8} fadd       dword ptr [eax + 0x48]                        // 0x0086f9b4    d84048
                         {disp8} fstp       dword ptr [ebp + 0x20]                        // 0x0086f9b7    d95d20
_jmp_addr_0x0086f9ba:    {disp8} mov        edi, dword ptr [edi + 0x28]                   // 0x0086f9ba    8b7f28
                         test               edi, edi                                      // 0x0086f9bd    85ff
                         {disp32} je        _jmp_addr_0x0086fac8                          // 0x0086f9bf    0f8403010000
                         {disp32} jmp       _jmp_addr_0x0086f8fd                          // 0x0086f9c5    e933ffffff
_jmp_addr_0x0086f9ca:    {disp8} fld        dword ptr [edi + 0x08]                        // 0x0086f9ca    d94708
                         {disp8} lea        ebp, dword ptr [edi + 0x08]                   // 0x0086f9cd    8d6f08
                         {disp8} fcomp      dword ptr [esp + 0x24]                        // 0x0086f9d0    d85c2424
                         fnstsw             ax                                            // 0x0086f9d4    dfe0
                         test               ah, 0x40                                      // 0x0086f9d6    f6c440
                         {disp32} je        _jmp_addr_0x0086fa62                          // 0x0086f9d9    0f8483000000
                         {disp8} fld        dword ptr [edi + 0x0c]                        // 0x0086f9df    d9470c
                         {disp8} fcomp      dword ptr [esp + 0x28]                        // 0x0086f9e2    d85c2428
                         fnstsw             ax                                            // 0x0086f9e6    dfe0
                         test               ah, 0x40                                      // 0x0086f9e8    f6c440
                         {disp8} je         _jmp_addr_0x0086fa62                          // 0x0086f9eb    7475
                         test               esi, esi                                      // 0x0086f9ed    85f6
                         {disp8} je         _jmp_addr_0x0086fa04                          // 0x0086f9ef    7413
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0086f9f1    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0086f9f5    8b542420
                         {disp8} mov        dword ptr [esi + 0x10], ecx                   // 0x0086f9f9    894e10
                         {disp8} mov        dword ptr [esi + 0x14], edx                   // 0x0086f9fc    895614
                         {disp32} jmp       _jmp_addr_0x0086fac8                          // 0x0086f9ff    e9c4000000
_jmp_addr_0x0086fa04:    push               0x2c                                          // 0x0086fa04    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086fa06    e8e36af5ff
                         add                esp, 0x04                                     // 0x0086fa0b    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086fa0e    89442418
                         test               eax, eax                                      // 0x0086fa12    85c0
                         {disp32} mov       byte ptr [esp + 0x000000b0], 0x03             // 0x0086fa14    c68424b000000003
                         {disp8} je         _jmp_addr_0x0086fa3d                          // 0x0086fa1c    741f
                         {disp8} mov        ecx, dword ptr [esp + 0x20]                   // 0x0086fa1e    8b4c2420
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0086fa22    8b542414
                         push               ecx                                           // 0x0086fa26    51
                         push               edx                                           // 0x0086fa27    52
                         {disp8} mov        edx, dword ptr [edi + 0x1c]                   // 0x0086fa28    8b571c
                         {disp8} lea        ecx, dword ptr [esp + 0x2c]                   // 0x0086fa2b    8d4c242c
                         push               ecx                                           // 0x0086fa2f    51
                         push               ebp                                           // 0x0086fa30    55
                         push               edx                                           // 0x0086fa31    52
                         push               0x0                                           // 0x0086fa32    6a00
                         mov.s              ecx, eax                                      // 0x0086fa34    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086fa36    e81597ffff
                         {disp8} jmp        _jmp_addr_0x0086fa3f                          // 0x0086fa3b    eb02
_jmp_addr_0x0086fa3d:    xor.s              eax, eax                                      // 0x0086fa3d    33c0
_jmp_addr_0x0086fa3f:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]             // 0x0086fa3f    8b8c24b8000000
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086fa46    8b542410
                         mov                dword ptr [ecx], eax                          // 0x0086fa4a    8901
                         mov                ecx, dword ptr [edx]                          // 0x0086fa4c    8b0a
                         push               ecx                                           // 0x0086fa4e    51
                         mov.s              ecx, eax                                      // 0x0086fa4f    8bc8
                         {disp32} mov       byte ptr [esp + 0x000000b4], 0x00             // 0x0086fa51    c68424b400000000
                         mov.s              esi, eax                                      // 0x0086fa59    8bf0
                         call               _jmp_addr_0x00869330                          // 0x0086fa5b    e8d098ffff
                         {disp8} jmp        _jmp_addr_0x0086fac8                          // 0x0086fa60    eb66
_jmp_addr_0x0086fa62:    push               0x2c                                          // 0x0086fa62    6a2c
                         call               ??2@YAPAXI@Z                                  // 0x0086fa64    e8856af5ff
                         add                esp, 0x04                                     // 0x0086fa69    83c404
                         {disp8} mov        dword ptr [esp + 0x18], eax                   // 0x0086fa6c    89442418
                         test               eax, eax                                      // 0x0086fa70    85c0
                         {disp32} mov       byte ptr [esp + 0x000000b0], 0x04             // 0x0086fa72    c68424b000000004
                         {disp8} je         _jmp_addr_0x0086fa9c                          // 0x0086fa7a    7420
                         {disp8} mov        edx, dword ptr [esp + 0x20]                   // 0x0086fa7c    8b542420
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x0086fa80    8b4c2414
                         push               edx                                           // 0x0086fa84    52
                         push               ecx                                           // 0x0086fa85    51
                         {disp8} mov        ecx, dword ptr [edi + 0x1c]                   // 0x0086fa86    8b4f1c
                         {disp8} lea        edx, dword ptr [esp + 0x2c]                   // 0x0086fa89    8d54242c
                         push               edx                                           // 0x0086fa8d    52
                         push               ebp                                           // 0x0086fa8e    55
                         push               ecx                                           // 0x0086fa8f    51
                         push               esi                                           // 0x0086fa90    56
                         mov.s              ecx, eax                                      // 0x0086fa91    8bc8
                         call               @__ct__9RouteNodeFP9RouteNodeiRC7Point2DRC7Point2Dii@32                          // 0x0086fa93    e8b896ffff
                         mov.s              edi, eax                                      // 0x0086fa98    8bf8
                         {disp8} jmp        _jmp_addr_0x0086fa9e                          // 0x0086fa9a    eb02
_jmp_addr_0x0086fa9c:    xor.s              edi, edi                                      // 0x0086fa9c    33ff
_jmp_addr_0x0086fa9e:    {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x0086fa9e    8b542410
                         mov                eax, dword ptr [edx]                          // 0x0086faa2    8b02
                         push               eax                                           // 0x0086faa4    50
                         mov.s              ecx, edi                                      // 0x0086faa5    8bcf
                         {disp32} mov       byte ptr [esp + 0x000000b4], 0x00             // 0x0086faa7    c68424b400000000
                         call               _jmp_addr_0x00869330                          // 0x0086faaf    e87c98ffff
                         test               esi, esi                                      // 0x0086fab4    85f6
                         {disp8} je         _jmp_addr_0x0086fabd                          // 0x0086fab6    7405
                         {disp8} mov        dword ptr [esi + 0x24], edi                   // 0x0086fab8    897e24
                         {disp8} jmp        _jmp_addr_0x0086fac6                          // 0x0086fabb    eb09
_jmp_addr_0x0086fabd:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]             // 0x0086fabd    8b8c24b8000000
                         mov                dword ptr [ecx], edi                          // 0x0086fac4    8939
_jmp_addr_0x0086fac6:    mov.s              esi, edi                                      // 0x0086fac6    8bf7
_jmp_addr_0x0086fac8:    {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x0086fac8    8b7c2410
                         {disp32} mov       edx, dword ptr [esp + 0x000000b8]             // 0x0086facc    8b9424b8000000
                         {disp8} lea        eax, dword ptr [edi + 0x34]                   // 0x0086fad3    8d4734
                         push               eax                                           // 0x0086fad6    50
                         {disp8} lea        ecx, dword ptr [esi + 0x08]                   // 0x0086fad7    8d4e08
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x0086fada    897204
                         call               @GetRange__7Point2DCFRC7Point2D@12            // 0x0086fadd    e8de020000
                         {disp8} fadd       dword ptr [esi + 0x20]                        // 0x0086fae2    d84620
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x0086fae5    8b44241c
                         test               eax, eax                                      // 0x0086fae9    85c0
                         {disp8} fstp       dword ptr [edi + 0x4c]                        // 0x0086faeb    d95f4c
                         {disp8} je         _jmp_addr_0x0086fb04                          // 0x0086faee    7414
                         mov.s              esi, eax                                      // 0x0086faf0    8bf0
_jmp_addr_0x0086faf2:    mov.s              eax, esi                                      // 0x0086faf2    8bc6
                         {disp8} mov        esi, dword ptr [esi + 0x24]                   // 0x0086faf4    8b7624
                         push               eax                                           // 0x0086faf7    50
                         call               ??3@YAXPAX@Z                                  // 0x0086faf8    e89bf3f3ff
                         add                esp, 0x04                                     // 0x0086fafd    83c404
                         test               esi, esi                                      // 0x0086fb00    85f6
                         {disp8} jne        _jmp_addr_0x0086faf2                          // 0x0086fb02    75ee
_jmp_addr_0x0086fb04:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]             // 0x0086fb04    8b8c24b8000000
                         {disp8} mov        dword ptr [ecx + 0x0c], 0x00000001            // 0x0086fb0b    c7410c01000000
_jmp_addr_0x0086fb12:    {disp8} lea        ecx, dword ptr [esp + 0x34]                   // 0x0086fb12    8d4c2434
                         {disp32} mov       dword ptr [esp + 0x000000b0], 0xffffffff      // 0x0086fb16    c78424b0000000ffffffff
                         call               ??_DRPlan@@QAEXXZ                             // 0x0086fb21    e8cae5ffff
_jmp_addr_0x0086fb26:    {disp32} mov       ecx, dword ptr [esp + 0x000000a8]             // 0x0086fb26    8b8c24a8000000
                         pop                edi                                           // 0x0086fb2d    5f
                         pop                esi                                           // 0x0086fb2e    5e
                         pop                ebp                                           // 0x0086fb2f    5d
                         pop                ebx                                           // 0x0086fb30    5b
                         {disp32} mov       fs:[0x0], ecx                                 // 0x0086fb31    64890d00000000
                         add                esp, 0x000000a4                               // 0x0086fb38    81c4a4000000
                         ret                0x0008                                        // 0x0086fb3e    c20800
_jmp_addr_0x0086fb41:    {disp32} mov       ecx, dword ptr [esp + 0x000000b8]             // 0x0086fb41    8b8c24b8000000
                         {disp8} mov        dword ptr [ecx + 0x0c], edi                   // 0x0086fb48    89790c
                         {disp8} jmp        _jmp_addr_0x0086fb12                          // 0x0086fb4b    ebc5
_jmp_addr_0x0086fb4d:    {disp32} mov       edx, dword ptr [esp + 0x000000b8]             // 0x0086fb4d    8b9424b8000000
                         {disp8} mov        dword ptr [edx + 0x0c], edi                   // 0x0086fb54    897a0c
                         {disp8} jmp        _jmp_addr_0x0086fb12                          // 0x0086fb57    ebb9
_jmp_addr_0x0086fb59:    {disp32} mov       eax, dword ptr [esp + 0x000000b8]             // 0x0086fb59    8b8424b8000000
                         {disp8} mov        dword ptr [eax + 0x0c], 0x00000001            // 0x0086fb60    c7400c01000000
                         {disp8} jmp        _jmp_addr_0x0086fb12                          // 0x0086fb67    eba9

// Snippet: db, [0x0086fb69, 0x0086fb6c)
.byte 0x8d, 0x49, 0x00            // 0x0086fb69

// Snippet: jmptbl, [0x0086fb6c, 0x0086fb7c)
.byte 0x48, 0xf7, 0x86, 0x00      // 0x0086fb6c
.byte 0x5c, 0xf7, 0x86, 0x00      // 0x0086fb70
.byte 0x5c, 0xf7, 0x86, 0x00      // 0x0086fb74
.byte 0x5c, 0xf7, 0x86, 0x00      // 0x0086fb78

// Snippet: db, [0x0086fb7c, 0x0086fb80)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0086fb7c

